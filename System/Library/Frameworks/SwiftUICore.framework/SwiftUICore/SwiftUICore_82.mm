void (*EnvironmentValues.hoverEffectContext.modify(uint64_t **a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x108uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[30] = v1;
  v5 = *v1;
  v3[31] = *v1;
  v6 = *(v1 + 8);
  v3[32] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v5, v4 + 14);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v5, v17);
    if (v8)
    {
      v10 = v8[9];
      v9 = v8[10];
      v11 = v8[11];
      v12 = v8[12];
      v13 = v8[13];
      v14 = v8[14];
      v15 = v8[15];
      v4[14] = v10;
      v4[15] = v9;
      v4[16] = v11;
      v4[17] = v12;
      v4[18] = v13;
      v4[19] = v14;
      v4[20] = v15;
      outlined copy of HoverEffectContext?(v10, v9, v11, v12, v13, v14, v15);
    }

    else
    {
      *(v4 + 8) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 7) = 0u;
      v4[20] = 1;
    }
  }

  return EnvironmentValues.hoverEffectContext.modify;
}

void EnvironmentValues.hoverEffectContext.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 30);
  if (a2)
  {
    v5 = *(v2 + 8);
    *v2 = *(v2 + 7);
    *(v2 + 1) = v5;
    *(v2 + 2) = *(v2 + 9);
    *(v2 + 6) = *(v2 + 20);

    outlined init with copy of HoverEffectContext?(v2, (v2 + 168));

    outlined init with copy of HoverEffectContext?(v2, (v2 + 168));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v4, v2);

    outlined destroy of HoverEffectContext?(v2);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(*(v2 + 31), **(v2 + 30));
    }

    outlined destroy of HoverEffectContext?(v2);
    outlined consume of HoverEffectContext?(*(v2 + 14), *(v2 + 15), *(v2 + 16), *(v2 + 17), *(v2 + 18), *(v2 + 19), *(v2 + 20));
  }

  else
  {
    v6 = *(v2 + 8);
    *(v2 + 56) = *(v2 + 7);
    *(v2 + 72) = v6;
    *(v2 + 88) = *(v2 + 9);
    *(v2 + 13) = *(v2 + 20);
    swift_retain_n();
    outlined init with copy of HoverEffectContext?((v2 + 56), (v2 + 168));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v4, (v2 + 56));

    outlined destroy of HoverEffectContext?((v2 + 56));
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(*(v2 + 31), **(v2 + 30));
    }

    outlined destroy of HoverEffectContext?((v2 + 56));
  }

  free(v2);
}

uint64_t EnvironmentValues.hoverEffectState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v2, a1);
}

double key path getter for EnvironmentValues.hoverEffectState : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v5);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(*a1, v5);
  }

  *a2 = v5[0];
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.hoverEffectState : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a2, v3, v4, v5);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v6, *a2);
  }
}

uint64_t EnvironmentValues.hoverEffectState.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v2, v3, v4, v5);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v6, *v2);
  }
}

void (*EnvironmentValues.hoverEffectState.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5] = v1;
  v5 = *v1;
  v3[6] = *v1;
  v6 = *(v1 + 8);
  v3[7] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v5, v4);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v5, v14);
    if (v8)
    {
      v9 = *(v8 + 72);
      v11 = v8[10];
      v10 = v8[11];
      *v4 = v9;
      *(v4 + 8) = v11;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v12 = qword_1EAB144B0;
      v10 = qword_1EAB144B8;
      *v4 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
      *(v4 + 8) = v12;
    }

    *(v4 + 16) = v10;
  }

  return EnvironmentValues.hoverEffectState.modify;
}

void EnvironmentValues.hoverEffectState.modify(char **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 1);
  v6 = *(*a1 + 2);

  v7 = *(v3 + 7);
  v8 = *(v3 + 5);
  if (a2)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v8, v4, v5, v6);

    if (v7)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(*(v3 + 6), **(v3 + 5));
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v8, v4, v5, v6);

    if (v7)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(*(v3 + 6), **(v3 + 5));
    }
  }

  free(v3);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.HoverEffectStateKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAB144B0;
  v2 = qword_1EAB144B8;
  *a1 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t EnvironmentValues.isHoverEffectEnabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v1, &v6);

    v2 = v6;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>);
    BloomFilter.init(hashValue:)(v3);
    v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v1, v6);
    if (v4)
    {
      v2 = *(v4 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
    }
  }

  return v2 ^ 1u;
}

uint64_t key path getter for EnvironmentValues.isHoverEffectEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v6);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(*a1, v6);
  }

  v4 = v6[0];

  *a2 = (v4 & 1) == 0;
  return result;
}

uint64_t EnvironmentValues.isHoverEffectEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v4, &v15);

    v6 = v15;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v4, v15);
    if (v8)
    {
      v6 = *(v8 + 72);
      v10 = v8[10];
      v9 = v8[11];
      v16 = v10;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
      v9 = qword_1EAB144B8;
      v16 = qword_1EAB144B0;
    }

    v17 = v9;
  }

  v11 = v6 | ~a1;
  v12 = v16;
  v13 = v17;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v2, v11 & 1, v12, v13);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE016HoverEffectStateK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *v2);
  }
}

uint64_t (*EnvironmentValues.isHoverEffectEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, &v8);

    v4 = v8;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>);
    BloomFilter.init(hashValue:)(v5);
    v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v3, v8);
    if (v6)
    {
      v4 = *(v6 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
    }
  }

  *(a1 + 8) = v4 ^ 1;
  return EnvironmentValues.isHoverEffectEnabled.modify;
}

uint64_t one-time initialization function for isHoverEffectEnabled()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.isHoverEffectEnabled = result;
  return result;
}

uint64_t one-time initialization function for hoverEffectContext()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.hoverEffectContext = result;
  return result;
}

uint64_t _GraphInputs.isHoverEffectEnabled.getter()
{
  if (one-time initialization token for isHoverEffectEnabled != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.isHoverEffectEnabled;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.isHoverEffectEnabled.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, &v9);

    v4 = v9;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>);
    BloomFilter.init(hashValue:)(v5);

    v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016HoverEffectStateV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v6, v9);
    if (v7)
    {
      v4 = *(v7 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static EnvironmentValues.HoverEffectStateKey.defaultValue;
    }
  }

  *a2 = v4 ^ 1;
  return result;
}

uint64_t _GraphInputs.hoverEffectContext.getter()
{
  if (one-time initialization token for hoverEffectContext != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.hoverEffectContext;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.hoverEffectContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v15);

    v5 = v15[1];
    v6 = v15[0];
    v7 = v16;
    v8 = v17;
    v9 = v18;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>);
    BloomFilter.init(hashValue:)(v10);

    v12 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v11, *&v15[0]);
    if (v12)
    {
      v7 = v12[13];
      v8 = v12[14];
      v9 = v12[15];
      v13 = *(v12 + 11);
      v14 = *(v12 + 9);
      outlined copy of HoverEffectContext?(v12[9], *(&v14 + 1), v13, *(&v13 + 1), v7, v8, v9);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v13 = 0u;
      v14 = 0u;
      v9 = 1;
    }

    v5 = v13;
    v6 = v14;
  }

  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t static DisableRemoteEffects.cachedValue.setter(char a1)
{
  result = swift_beginAccess();
  static DisableRemoteEffects.cachedValue = a1;
  return result;
}

uint64_t static DisableRemoteEffects.defaultFeatureValue.setter(char a1)
{
  result = swift_beginAccess();
  static DisableRemoteEffects.defaultFeatureValue = a1;
  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance DisableRemoteEffects(char a1)
{
  result = swift_beginAccess();
  static DisableRemoteEffects.cachedValue = a1;
  return result;
}

void specialized CustomHoverEffect.bodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined destroy of HoverEffectContext?(uint64_t a1)
{
  type metadata accessor for HoverEffectContext?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style()
{
  result = lazy protocol witness table cache variable for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style;
  if (!lazy protocol witness table cache variable for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemHoverEffect.Style and conformance SystemHoverEffect.Style);
  }

  return result;
}

uint64_t assignWithCopy for _CustomHoverEffectInputs(uint64_t a1, uint64_t a2)
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
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
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

uint64_t assignWithTake for _CustomHoverEffectInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for _CustomHoverEffectInputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t storeEnumTagSinglePayload for _CustomHoverEffectInputs(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t assignWithCopy for _CustomHoverEffectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t default associated conformance accessor for InternalCustomHoverEffect.InternalCustomHoverEffect.WrappedEffectType: InternalCustomHoverEffect()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t getEnumTagSinglePayload for SystemHoverEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemHoverEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UpdateEnvironmentCustomHoverEffectContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ClearCustomHoverEffectContextFromEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t type metadata accessor for CVarArg()
{
  result = lazy cache variable for type metadata for CVarArg;
  if (!lazy cache variable for type metadata for CVarArg)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CVarArg);
  }

  return result;
}

uint64_t AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(a1, a2);

  return v2;
}

uint64_t specialized AttributeInvalidatingSubscriber.receive(completion:)()
{
  swift_beginAccess();
  v1 = type metadata accessor for AttributeInvalidatingSubscriber.StateType();
  v2 = *(v1 - 8);
  (*(v2 + 16))(v5, v0 + 32, v1);
  v3 = v6;
  result = (*(v2 + 8))(v5, v1);
  if (v3 >= 2)
  {
    memset(v5, 0, sizeof(v5));
    v6 = xmmword_18DD85500;
    swift_beginAccess();
    (*(v2 + 40))(v0 + 32, v5, v1);
    swift_endAccess();
    return AttributeInvalidatingSubscriber.invalidateAttribute()();
  }

  return result;
}

__n128 assignWithCopy for AttributeInvalidatingSubscriber.StateType(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 24) = v2;
      *(a1 + 32) = *(a2 + 32);
      (**(v2 - 8))();
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v6;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(a1, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeInvalidatingSubscriber.StateType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributeInvalidatingSubscriber.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for AttributeInvalidatingSubscriber.StateType(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t ColorView.draw(path:style:in:bounds:)(double *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(v3 + 16);
  v17 = *v3;
  LODWORD(v18) = v9;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v17);
  v15[8] = v25;
  v15[9] = v26;
  v16 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v23;
  v15[7] = v24;
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v13 = v7;
  v14 = v8;
  return GraphicsContext.draw(_:with:style:)(a1, v15, v12, a3);
}

float *ColorView.encode(to:)(float *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v9 = *(v3 + 1);
    v10 = v9 + 4;
    if (__OFADD__(v9, 4))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (*(v3 + 2) < v10)
    {
      goto LABEL_33;
    }

    *(v3 + 1) = v10;
    result = (*v3 + v9);
    goto LABEL_8;
  }

  if (v4 != 0.0)
  {
    goto LABEL_9;
  }

  while (v7 != 0.0)
  {
LABEL_13:
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v12 = *(v3 + 1);
    v10 = v12 + 4;
    if (!__OFADD__(v12, 4))
    {
      if (*(v3 + 2) < v10)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v10);
      }

      else
      {
        *(v3 + 1) = v10;
        result = (*v3 + v12);
      }

      *result = v7;
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_33:
      result = ProtobufEncoder.growBufferSlow(to:)(v10);
LABEL_8:
      *result = v5;
      if (v4 == 0.0)
      {
        break;
      }

LABEL_9:
      ProtobufEncoder.encodeVarint(_:)(0x15uLL);
      v11 = *(v3 + 1);
      v10 = v11 + 4;
      if (!__OFADD__(v11, 4))
      {
        if (*(v3 + 2) >= v10)
        {
          *(v3 + 1) = v10;
          result = (*v3 + v11);
          goto LABEL_12;
        }

        goto LABEL_35;
      }

LABEL_31:
      __break(1u);
    }
  }

  while (v6 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v13 = *(v3 + 1);
    v10 = v13 + 4;
    if (!__OFADD__(v13, 4))
    {
      if (*(v3 + 2) < v10)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v10);
      }

      else
      {
        *(v3 + 1) = v10;
        result = (*v3 + v13);
      }

      *result = v6;
      break;
    }

    __break(1u);
LABEL_35:
    result = ProtobufEncoder.growBufferSlow(to:)(v10);
LABEL_12:
    *result = v4;
    if (v7 != 0.0)
    {
      goto LABEL_13;
    }
  }

  if (v8 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2DuLL);
    v14 = *(v3 + 1);
    v15 = v14 + 4;
    if (__OFADD__(v14, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= v15)
    {
      *(v3 + 1) = v15;
      result = (*v3 + v14);
LABEL_26:
      *result = v8;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v15);
    goto LABEL_26;
  }

  return result;
}

uint64_t BidirectionalCollection<>.insertionSort()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a4;
  v50 = a3;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v42 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v47 = a1;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(after:)();
    v24 = v56 + 8;
    v25 = *(v56 + 8);
    v25(v19, v13);
    v53 = (v63 + 16);
    v58 = (v24 + 8);
    v60 = (v63 + 8);
    v48 = (v24 + 24);
    v64 = v6;
    v44 = v4;
    v42 = v10;
    v56 = v24;
    v46 = v22;
    v54 = v13;
    v55 = v25;
    for (i = v19; ; v19 = i)
    {
      dispatch thunk of Collection.endIndex.getter();
      v61 = *(swift_getAssociatedConformanceWitness() + 8);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v19, v13);
      if (v26)
      {
        break;
      }

      v27 = dispatch thunk of Collection.subscript.read();
      v28 = *v53;
      (*v53)(v62);
      v27(v67, 0);
      v29 = v66;
      v57 = *v58;
      v57(v66, v22, v13);
      v30 = v42;
      v31 = v43;
      v63 = v28;
      while (1)
      {
        dispatch thunk of BidirectionalCollection.index(before:)();
        v32 = dispatch thunk of Collection.subscript.read();
        v28(v30);
        v32(v67, 0);
        if (dispatch thunk of static Comparable.>= infix(_:_:)())
        {
          break;
        }

        v33 = i;
        v34 = v54;
        v57(i, v29, v54);
        v35 = AssociatedTypeWitness;
        (v63)(v49, v30, AssociatedTypeWitness);
        dispatch thunk of MutableCollection.subscript.setter();
        v36 = *v60;
        (*v60)(v30, v35);
        v37 = v55;
        v55(v29, v34);
        (*v48)(v66, v31, v34);
        dispatch thunk of Collection.startIndex.getter();
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v39 = v34;
        v28 = v63;
        v37(v33, v39);
        v29 = v66;
        if (v38)
        {
          v40 = v55;
          v41 = v54;
          goto LABEL_10;
        }
      }

      v36 = *v60;
      (*v60)(v30, AssociatedTypeWitness);
      v41 = v54;
      v40 = v55;
      v55(v31, v54);
LABEL_10:
      v45 = v36;
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v57(i, v29, v41);
        (v28)(v49, v62, AssociatedTypeWitness);
        dispatch thunk of MutableCollection.subscript.setter();
      }

      v13 = v41;
      dispatch thunk of Collection.formIndex(after:)();
      v22 = v46;
      v40(v29, v41);
      v45(v62, AssociatedTypeWitness);
      v25 = v40;
    }

    return (v55)(v22, v13);
  }

  return result;
}

uint64_t BidirectionalCollection<>.insertionSort(by:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v54 = a1;
  v55 = a2;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v46 - v13;
  v64 = swift_getAssociatedTypeWitness();
  v14 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v50 = v5;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v61 = AssociatedTypeWitness;
    v62 = v16;
    v66 = a4;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.index(after:)();
    v26 = *(v14 + 8);
    v24 = v14 + 8;
    v25 = v26;
    v26(v19, v64);
    v68 = (v67 + 16);
    v58 = (v67 + 8);
    v59 = (v24 + 8);
    v65 = v7;
    v51 = v24;
    v47 = v22;
    v49 = v19;
    v60 = v26;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v27 = v64;
      v57 = *(swift_getAssociatedConformanceWitness() + 8);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v19, v27);
      if (v28)
      {
        return v60(v22, v64);
      }

      v29 = dispatch thunk of Collection.subscript.read();
      v67 = *v68;
      v67(v63);
      v29(v69, 0);
      v56 = *v59;
      v56(v62, v22, v64);
      v30 = v48;
      v31 = v49;
      v32 = v60;
      while (1)
      {
        dispatch thunk of BidirectionalCollection.index(before:)();
        v33 = dispatch thunk of Collection.subscript.read();
        v34 = v61;
        v67(v30);
        v33(v69, 0);
        v35 = v64;
        v32(v31, v64);
        v36 = v70;
        v37 = v54(v63, v30);
        v38 = v30;
        v70 = v36;
        if (v36)
        {
          v43 = v34;
          v56(v31, v62, v35);
          v44 = v63;
          (v67)(v52, v63, v43);
          dispatch thunk of MutableCollection.subscript.setter();
          swift_willThrow();
          v45 = *v58;
          (*v58)(v38, v43);
          v32(v62, v35);
          v45(v44, v43);
          return (v32)(v47, v35);
        }

        if ((v37 & 1) == 0)
        {
          break;
        }

        v56(v31, v62, v35);
        (v67)(v52, v30, v34);
        dispatch thunk of MutableCollection.subscript.setter();
        dispatch thunk of BidirectionalCollection.formIndex(before:)();
        v39 = v34;
        v40 = *v58;
        (*v58)(v30, v39);
        dispatch thunk of Collection.startIndex.getter();
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = v60;
        v60(v31, v35);
        if (v41)
        {
          v46 = v40;
          v34 = v61;
          goto LABEL_11;
        }
      }

      v46 = *v58;
      (v46)(v30);
LABEL_11:
      v42 = v62;
      v22 = v47;
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v56(v49, v42, v64);
        (v67)(v52, v63, v34);
        dispatch thunk of MutableCollection.subscript.setter();
      }

      dispatch thunk of Collection.formIndex(after:)();
      v25 = v60;
      v60(v42, v64);
      v46(v63, v34);
      v19 = v49;
    }
  }

  return result;
}

uint64_t Gesture.exclusively<A>(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ExclusiveGesture.init(_:_:)(v14, v10, a2, a3, a4);
}

uint64_t ExclusiveGesture.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ExclusiveGesture();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

double static ExclusiveGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v123 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[5];
  v120 = a2[4];
  v121 = v13;
  *v122 = a2[6];
  *&v122[12] = *(a2 + 108);
  v14 = a2[1];
  v116 = *a2;
  v117 = v14;
  v15 = a2[3];
  v118 = a2[2];
  v119 = v15;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v97 = a6;
  LODWORD(v81) = v12;
  v93 = v12;
  *&v109 = a3;
  *(&v109 + 1) = a4;
  *&v110 = a5;
  *(&v110 + 1) = a6;
  v16 = type metadata accessor for ExclusiveGesture();
  v76 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ExclusiveGesture._makeGesture(gesture:inputs:), a3, &v98);
  v113 = v120;
  v114 = v121;
  v115[0] = *v122;
  *(v115 + 12) = *&v122[12];
  v109 = v116;
  v110 = v117;
  v111 = v118;
  v112 = v119;
  (*(a5 + 32))(v91, &v98, &v109, a3, a5);
  v18 = *&v122[24];
  v82 = a4;
  v83 = a3;
  v71 = a7;
  v80 = a6;
  v68 = v16;
  v74 = *&v122[24];
  if ((v122[24] & 8) != 0)
  {
    if (swift_conformsToProtocol2() && a3)
    {
      LODWORD(v73) = 0;
      v19 = v18;
    }

    else
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v98.i8[0] = v20;
      v113 = v120;
      v114 = v121;
      v115[0] = *v122;
      *(v115 + 12) = *&v122[12];
      v109 = v116;
      v110 = v117;
      v111 = v118;
      v112 = v119;
      swift_getAssociatedTypeWitness();
      type metadata accessor for _GestureOutputs();
      v21 = _GestureOutputs.debugData.getter();
      LOBYTE(v89[0]) = 1;
      _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a3, &v98, 0x100000000, &v109, v21 | ((HIDWORD(v21) & 1) << 32), 0x100000000);
      v19 = *&v122[24];
      LODWORD(v73) = (v122[24] & 8) == 0;
    }
  }

  else
  {
    LODWORD(v73) = 1;
    v19 = *&v122[24];
  }

  *&v17 = v91[0];
  v84 = v17;
  v78 = v91[1];
  v22 = *&v122[20];
  v108 = *&v122[16];
  v77 = v92;
  v105 = v120;
  v106 = v121;
  v107 = *v122;
  v101 = v116;
  v102 = v117;
  v103 = v118;
  v104 = v119;
  v23 = v83;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v98 = __PAIR64__(v84, v22);
  v75 = v84;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = a5;
  v67 = v26;
  v65 = type metadata accessor for ExclusiveState();
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _GestureInputs(&v116, &v109);
  type metadata accessor for Attribute<_GestureInputs.InheritedPhase>();
  v29 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v98, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_1, &v63, v65, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  v69 = 0;
  v30 = v109;
  MEMORY[0x1EEE9AC00](v29);
  v63 = v23;
  v64 = v82;
  v79 = v25;
  v65 = v25;
  v31 = v82;
  v32 = v80;
  WitnessTable = v80;
  LODWORD(v89[0]) = v81;
  _GraphValue.subscript.getter(partial apply for closure #2 in static ExclusiveGesture._makeGesture(gesture:inputs:), v82, v86);
  v113 = v105;
  v114 = v106;
  v115[0] = v107;
  v109 = v101;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  *&v115[1] = __PAIR64__(v30, v108);
  v72 = v30;
  DWORD2(v115[1]) = v19;
  v33 = (*(v32 + 32))(&v98, v86, &v109, v31, v32);
  if ((v73 & 1) == 0)
  {
    v33 = swift_conformsToProtocol2();
    if (!v33 || !v31)
    {
      _gestureModifierProtocolDescriptor();
      if (swift_conformsToProtocol())
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      LOBYTE(v86[0]) = v35;
      v113 = v105;
      v114 = v106;
      v115[0] = v107;
      v109 = v101;
      v110 = v102;
      v111 = v103;
      v112 = v104;
      *&v115[1] = __PAIR64__(v72, v108);
      DWORD2(v115[1]) = v19;
      swift_getAssociatedTypeWitness();
      type metadata accessor for _GestureOutputs();
      v36 = _GestureOutputs.debugData.getter();
      v88[0] = 1;
      v33 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v31, v86, 0x100000000, &v109, v36 | ((HIDWORD(v36) & 1) << 32), 0x100000000);
    }
  }

  v70 = v19;
  *&v34 = v98;
  v81 = v99;
  LODWORD(v76) = v100;
  v73 = v34;
  v98 = vzip1_s32(*&v84, v98);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v83;
  *&v109 = v83;
  *(&v109 + 1) = v31;
  v38 = v79;
  *&v110 = v79;
  *(&v110 + 1) = v32;
  type metadata accessor for ExclusiveGesture.Value();
  v63 = type metadata accessor for GesturePhase();
  *&v109 = v37;
  *(&v109 + 1) = v31;
  *&v110 = v38;
  *(&v110 + 1) = v32;
  v39 = type metadata accessor for ExclusivePhase();
  v64 = v39;
  v65 = swift_getWitnessTable();
  v40 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v98, partial apply for closure #1 in Attribute.init<A>(_:), v62, v39, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
  _GestureOutputs.init(phase:)(v109, v89);
  v42 = v78;
  if ((v74 & 8) != 0)
  {
    v88[0] = 4;
    v113 = v120;
    v114 = v121;
    v115[0] = *v122;
    *(v115 + 12) = *&v122[12];
    v109 = v116;
    v110 = v117;
    v111 = v118;
    v112 = v119;
    v98 = v84;
    v99 = v78;
    v100 = v77;
    type metadata accessor for _GestureOutputs();
    v43 = _GestureOutputs.debugData.getter();
    v86[0] = v73;
    v86[1] = v81;
    v87 = v76;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v44 = _GestureOutputs.debugData.getter();
    type metadata accessor for _GestureOutputs();
    v85 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v68, v88, 0x100000000, &v109, v43 | ((HIDWORD(v43) & 1) << 32), v44 | ((HIDWORD(v44) & 1) << 32));
  }

  v45 = *(*v122 + 16);
  v69 = *v122;
  if (v45)
  {
    v74 = *MEMORY[0x1E698D3F8];
    v46 = ( + 40);
    do
    {
      v48 = *(v46 - 1);
      v47 = *v46;
      *&v109 = v42;
      DWORD2(v109) = v77;
      v49 = PreferencesOutputs.subscript.getter(v48, v48, v47);
      v50 = v74;
      if ((v49 & 0x100000000) != 0)
      {
        v51 = v74;
      }

      else
      {
        v51 = v49;
      }

      *&v109 = v81;
      DWORD2(v109) = v76;
      v52 = PreferencesOutputs.subscript.getter(v48, v48, v47);
      *&v84 = &v67;
      if ((v52 & 0x100000000) != 0)
      {
        v53 = v50;
      }

      else
      {
        v53 = v52;
      }

      v98 = __PAIR64__(v53, v51);
      v99 = __PAIR64__(v73, v75);
      MEMORY[0x1EEE9AC00](v52);
      v63 = swift_getAssociatedTypeWitness();
      *&v109 = v83;
      *(&v109 + 1) = v82;
      *&v110 = v48;
      *(&v110 + 1) = v79;
      *&v111 = v80;
      *(&v111 + 1) = v47;
      v54 = type metadata accessor for ExclusivePreference();
      v64 = v54;
      v65 = swift_getWitnessTable();
      v42 = v78;
      v55 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v98, closure #1 in Attribute.init<A>(_:)partial apply, v62, v54, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);
      v57 = v109;
      swift_beginAccess();
      v98.i8[0] = 0;
      PreferencesOutputs.subscript.setter(v57, v48, v48, v47);
      swift_endAccess();
      v46 += 2;
      --v45;
    }

    while (v45);
  }

  else
  {
  }

  v113 = v105;
  v114 = v106;
  v115[0] = v107;
  v109 = v101;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  *&v115[1] = __PAIR64__(v72, v108);
  DWORD2(v115[1]) = v70;
  outlined destroy of _GestureInputs(&v109);

  swift_beginAccess();
  v58 = v89[1];
  v59 = v90;
  result = *v89;
  v61 = v71;
  *v71 = v89[0];
  v61[1] = v58;
  *(v61 + 4) = v59;
  return result;
}

uint64_t closure #1 in static ExclusiveGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for ExclusiveGesture();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t closure #2 in static ExclusiveGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for ExclusiveGesture();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t static ExclusiveGesture.Value<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a8;
  v47 = a1;
  v48 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v39 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v39 - v15;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v16 = type metadata accessor for ExclusiveGesture.Value();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v39 - v25;
  v28 = *(v27 + 48);
  v29 = *(v17 + 16);
  v29(&v39 - v25, v47, v16, v24);
  (v29)(&v26[v28], v48, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v29)(v22, v26, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v44;
      v36 = v39;
      (*(v44 + 32))(v39, &v26[v28], v14);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v35 + 8);
      v37(v36, v14);
      v37(v22, v14);
      goto LABEL_9;
    }

    (*(v44 + 8))(v22, v14);
    goto LABEL_7;
  }

  (v29)(v19, v26, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v45 + 8))(v19, v46);
LABEL_7:
    v33 = 0;
    v17 = v43;
    v16 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v31 = v45;
  v30 = v46;
  v32 = v40;
  (*(v45 + 32))(v40, &v26[v28], v46);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v31 + 8);
  v34(v32, v30);
  v34(v19, v30);
LABEL_9:
  (*(v17 + 8))(v26, v16);
  return v33 & 1;
}

uint64_t ExclusiveState.phase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t ExclusiveState.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = *AGGraphGetValue();
  ExclusiveState.phase.getter(v5);
  v7 = GesturePhase.isFailed.getter(v2);
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFFELL;
  }

  ExclusiveState.phase.getter(v5);
  v10 = GesturePhase.isActive.getter(v2);
  result = (v8)(v5, v2);
  if (v10 && (v9 & 2) == 0)
  {
    v12 = v9 | 2;
  }

  else
  {
    v12 = v9;
  }

  *a1 = v12;
  return result;
}

uint64_t ExclusivePhase.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v73 = a3;
  v74 = a4;
  v71 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for GesturePhase();
  v65 = swift_getAssociatedTypeWitness();
  v67 = v7;
  v68 = type metadata accessor for GesturePhase();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v58 - v9;
  v72 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v58 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  SimultaneousPhase.phase1.getter(&v58 - v26);
  v69 = a1;
  v70 = a2;
  SimultaneousPhase.phase2.getter(v17);
  v62 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = v67;
  (*(v18 + 32))(v10, v27, v67);
  v30 = v17;
  v31 = v29;
  v32 = v68;
  (*(v72 + 32))(&v10[v28], v30, v68);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v34 = v63;
        (*(v18 + 16))(v63, v10, v29);
        v35 = AssociatedTypeWitness;
        v36 = *(AssociatedTypeWitness - 8);
        v37 = (*(v36 + 48))(v34, 1, AssociatedTypeWitness);
        v38 = v65;
        if (v37 == 1)
        {
          v39 = type metadata accessor for Optional();
          (*(*(v39 - 8) + 8))(v34, v39);
          goto LABEL_14;
        }

        v52 = v71;
        (*(v36 + 32))(v71, v34, v35);
        v75 = v69;
        v76 = v70;
        v77 = v73;
        v78 = v74;
        v53 = type metadata accessor for ExclusiveGesture.Value();
        swift_storeEnumTagMultiPayload();
        (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
        type metadata accessor for GesturePhase();
        swift_storeEnumTagMultiPayload();
        (*(v72 + 8))(&v10[v28], v32);
        return (*(v18 + 8))(v10, v31);
      }

      goto LABEL_11;
    }

LABEL_7:
    v40 = v64;
    (*(v18 + 16))(v64, v10, v31);
    (*(*(AssociatedTypeWitness - 8) + 32))(v71, v40);
    v75 = v69;
    v76 = v70;
    v77 = v73;
    v78 = v74;
    type metadata accessor for ExclusiveGesture.Value();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GesturePhase();
    swift_storeEnumTagMultiPayload();
    (*(v72 + 8))(&v10[v28], v32);
    return (*(v18 + 8))(v10, v31);
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  v42 = swift_getEnumCaseMultiPayload();
  if (v42 == 1)
  {
LABEL_11:
    (*(*(v65 - 8) + 32))(v71, &v10[v28]);
    v75 = v69;
    v76 = v70;
    v77 = v73;
    v78 = v74;
    type metadata accessor for ExclusiveGesture.Value();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GesturePhase();
    goto LABEL_12;
  }

  v38 = v65;
  v35 = AssociatedTypeWitness;
  if (v42 == 2)
  {
    (*(*(v65 - 8) + 32))(v71, &v10[v28], v65);
    v75 = v69;
    v76 = v70;
    v77 = v73;
    v78 = v74;
    type metadata accessor for ExclusiveGesture.Value();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GesturePhase();
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return (*(v18 + 8))(v10, v31);
  }

LABEL_14:
  v43 = swift_getEnumCaseMultiPayload();
  v44 = v72;
  if (v43)
  {
    goto LABEL_17;
  }

  v45 = v60;
  (*(v72 + 16))(v60, &v10[v28], v32);
  v46 = *(v38 - 8);
  if ((*(v46 + 48))(v45, 1, v38) != 1)
  {
    v54 = v45;
    v55 = v71;
    (*(v46 + 32))(v71, v54, v38);
    v75 = v69;
    v76 = v70;
    v77 = v73;
    v78 = v74;
    v56 = type metadata accessor for ExclusiveGesture.Value();
    swift_storeEnumTagMultiPayload();
    (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
    type metadata accessor for GesturePhase();
    swift_storeEnumTagMultiPayload();
    (*(v44 + 8))(&v10[v28], v32);
    return (*(v18 + 8))(v10, v31);
  }

  v47 = type metadata accessor for Optional();
  (*(*(v47 - 8) + 8))(v45, v47);
LABEL_17:
  if (!swift_getEnumCaseMultiPayload())
  {
    v48 = v58;
    (*(v18 + 16))(v58, v10, v31);
    if ((*(*(v35 - 8) + 48))(v48, 1, v35) == 1)
    {
LABEL_22:
      (*(v44 + 8))(&v10[v28], v32);
      (*(v18 + 8))(v10, v31);
      v75 = v69;
      v76 = v70;
      v77 = v73;
      v78 = v74;
      v51 = type metadata accessor for ExclusiveGesture.Value();
      (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
      type metadata accessor for GesturePhase();
      return swift_storeEnumTagMultiPayload();
    }

    v49 = type metadata accessor for Optional();
    (*(*(v49 - 8) + 8))(v48, v49);
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    v50 = v59;
    (*(v44 + 16))(v59, &v10[v28], v32);
    if ((*(*(v38 - 8) + 48))(v50, 1, v38) == 1)
    {
      goto LABEL_22;
    }

    v57 = type metadata accessor for Optional();
    (*(*(v57 - 8) + 8))(v59, v57);
  }

  v75 = v69;
  v76 = v70;
  v77 = v73;
  v78 = v74;
  type metadata accessor for ExclusiveGesture.Value();
  type metadata accessor for GesturePhase();
  swift_storeEnumTagMultiPayload();
  return (*(v61 + 8))(v10, v62);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ExclusivePhase<A, B>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ExclusiveGesture.Value();
  v2 = type metadata accessor for GesturePhase();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t ExclusivePreference.value.getter@<X0>(unint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, char *a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v130 = a7;
  v131 = a4;
  v117 = a1;
  v122 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v102 - v17;
  v119 = v18;
  v112 = type metadata accessor for Optional();
  v128 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v104 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v102 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v102 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v102 - v27;
  v114 = swift_getAssociatedTypeWitness();
  v28 = type metadata accessor for GesturePhase();
  v115 = swift_getAssociatedTypeWitness();
  v29 = v28;
  v123 = type metadata accessor for GesturePhase();
  v124 = v28;
  v30 = v123;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v110 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v125 = &v102 - v31;
  v129 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v109 = &v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v102 - v35;
  v132 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v108 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v113 = &v102 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v102 - v42;
  SimultaneousPreference.phase1.getter(&v102 - v42);
  v126 = a2;
  v44 = a3;
  v45 = v129;
  v121 = a5;
  v118 = a6;
  v47 = v123;
  v46 = v124;
  SimultaneousPreference.phase2.getter(v36);
  v48 = *(TupleTypeMetadata2 + 48);
  v49 = v125;
  v50 = v43;
  v51 = v128;
  (*(v132 + 32))(v125, v50, v46);
  v52 = v36;
  v53 = v49;
  (*(v45 + 32))(&v49[v48], v52, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    goto LABEL_2;
  }

  v62 = v115;
  if (!EnumCaseMultiPayload)
  {
    v63 = v113;
    (*(v132 + 16))(v113, v49, v46);
    if ((*(*(v114 - 8) + 48))(v63, 1, v114) != 1)
    {
      v75 = type metadata accessor for Optional();
      (*(*(v75 - 8) + 8))(v63, v75);
      v51 = v128;
      v45 = v129;
LABEL_2:
      (*(v45 + 8))(&v49[v48], v47);
      goto LABEL_3;
    }

    v64 = swift_getEnumCaseMultiPayload();
    v51 = v128;
    if (v64 == 3)
    {
LABEL_3:
      (*(v132 + 8))(v49, v46);
      v55 = v116;
      v57 = v130;
      v56 = v131;
      SimultaneousPreference.value1.getter(v117, v116);
      v58 = v119;
      v59 = v120;
      v60 = *(v120 + 48);
      if (v60(v55, 1, v119) != 1)
      {
        return (*(v59 + 32))(v122, v55, v58);
      }

      (*(v57 + 16))(v56, v57);
      result = (v60)(v55, 1, v58);
      if (result != 1)
      {
        return (*(v51 + 8))(v55, v112);
      }

      return result;
    }
  }

  v65 = swift_getEnumCaseMultiPayload();
  if ((v65 - 1) < 2)
  {
    goto LABEL_10;
  }

  if (v65)
  {
LABEL_28:
    (*(v130 + 16))();
    return (*(v110 + 8))(v53, TupleTypeMetadata2);
  }

  v72 = &v49[v48];
  v73 = v109;
  (*(v129 + 16))(v109, v72, v47);
  if ((*(*(v62 - 1) + 48))(v73, 1, v62) != 1)
  {
    v76 = type metadata accessor for Optional();
    (*(*(v76 - 8) + 8))(v73, v76);
    goto LABEL_10;
  }

  v74 = swift_getEnumCaseMultiPayload();
  if (v74)
  {
    if (v74 != 3)
    {
      goto LABEL_28;
    }

LABEL_10:
    (*(v129 + 8))(&v53[v48], v47);
    (*(v132 + 8))(v53, v46);
    v66 = v111;
    v68 = v130;
    v67 = v131;
    SimultaneousPreference.value2.getter(v117, v111);
    v69 = v119;
    v70 = v120;
    v71 = *(v120 + 48);
    if (v71(v66, 1, v119) != 1)
    {
      return (*(v70 + 32))(v122, v66, v69);
    }

    (*(v68 + 16))(v67, v68);
    result = (v71)(v66, 1, v69);
    if (result != 1)
    {
      return (*(v51 + 8))(v66, v112);
    }

    return result;
  }

  v77 = v108;
  (*(v132 + 16))(v108, v53, v46);
  if ((*(*(v114 - 8) + 48))(v77, 1, v114) != 1)
  {
    v90 = type metadata accessor for Optional();
    (*(*(v90 - 8) + 8))(v77, v90);
    goto LABEL_28;
  }

  v116 = v48;
  v78 = v105;
  v79 = v117;
  v80 = v118;
  v81 = v130;
  v82 = v131;
  SimultaneousPreference.value1.getter(v117, v105);
  v84 = v119;
  v83 = v120;
  TupleTypeMetadata2 = v44;
  v115 = *(v120 + 48);
  if ((v115)(v78, 1, v119) == 1)
  {
    v85 = v78;
    v86 = *(v128 + 8);
    v86(v85, v112);
    v87 = v104;
    SimultaneousPreference.value2.getter(v79, v104);
    if ((v115)(v87, 1, v84) == 1)
    {
      v86(v87, v112);
      v88 = v106;
      (*(v81 + 16))(v82, v81);
      v89 = *(v83 + 32);
    }

    else
    {
      v89 = *(v83 + 32);
      v88 = v106;
      v89(v106, v87, v84);
    }

    v94 = v125;
    v95 = v129;
    v96 = v116;
  }

  else
  {
    v91 = v78;
    v89 = *(v83 + 32);
    v89(v107, v91, v84);
    v92 = v79;
    v93 = v103;
    SimultaneousPreference.value2.getter(v92, v103);
    if ((v115)(v93, 1, v84) == 1)
    {
      (*(v128 + 8))(v93, v112);
    }

    else
    {
      v97 = v102;
      v98 = (v89)(v102, v93, v84);
      v99 = MEMORY[0x1EEE9AC00](v98);
      v100 = TupleTypeMetadata2;
      *(&v102 - 8) = v126;
      *(&v102 - 7) = v100;
      v101 = v121;
      *(&v102 - 6) = v131;
      *(&v102 - 5) = v101;
      *(&v102 - 4) = v80;
      *(&v102 - 3) = v81;
      *(&v102 - 2) = v97;
      (*(v81 + 24))(v107, partial apply for closure #1 in SimultaneousPreference.mergedValue(), v99);
      (*(v120 + 8))(v97, v84);
    }

    v94 = v125;
    v95 = v129;
    v96 = v116;
    v88 = v106;
    v89(v106, v107, v84);
  }

  v89(v122, v88, v84);
  (*(v95 + 8))(&v94[v96], v123);
  return (*(v132 + 8))(v94, v124);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance ExclusivePreference<A, B, C>(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  static SimultaneousPreference.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = a2;
  v17[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v17[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

void type metadata accessor for Attribute<_GestureInputs.InheritedPhase>()
{
  if (!lazy cache variable for type metadata for Attribute<_GestureInputs.InheritedPhase>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<_GestureInputs.InheritedPhase>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for ExclusiveGesture<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ExclusiveGesture.Value()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ExclusiveGesture.Value(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  if (*(v8 + 64) <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(*(v7 - 8) + 64);
  }

  v10 = (*(v8 + 80) | *(v5 + 80));
  if (v10 > 7 || v9 + 1 > 0x18 || ((*(v8 + 80) | *(v5 + 80)) & 0x100000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v10 + 16) & ~v10));

    return a1;
  }

  v14 = *(a2 + v9);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v9 <= 3)
    {
      v16 = v9;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
      }

      else if (v16 == 3)
      {
        v17 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v17 = *a2;
      }

LABEL_24:
      v18 = (v17 | (v15 << (8 * v9))) + 2;
      v14 = v17 + 2;
      if (v9 < 4)
      {
        v14 = v18;
      }

      goto LABEL_26;
    }

    if (v16)
    {
      v17 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v14 == 1)
  {
    (*(v8 + 16))(a1, a2, v7);
    *(a1 + v9) = 1;
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v9) = 0;
  }

  return a1;
}

uint64_t destroy for ExclusiveGesture.Value(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(*(v5 - 8) + 64);
  if (v6 <= v4)
  {
    v6 = v4;
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_17:
  if (v7 == 1)
  {
    v12 = *(v5 - 8);
  }

  else
  {
    v12 = v3;
  }

  if (v7 == 1)
  {
    v13 = v5;
  }

  else
  {
    v13 = AssociatedTypeWitness;
  }

  v14 = *(v12 + 8);

  return v14(a1, v13);
}

uint64_t initializeWithCopy for ExclusiveGesture.Value(uint64_t a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a2[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_18;
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
      goto LABEL_18;
    }

    v14 = *a2;
  }

  else if (v13 == 2)
  {
    v14 = *a2;
  }

  else if (v13 == 3)
  {
    v14 = *a2 | (a2[2] << 16);
  }

  else
  {
    v14 = *a2;
  }

  v15 = (v14 | (v12 << (8 * v10))) + 2;
  v11 = v14 + 2;
  if (v10 < 4)
  {
    v11 = v15;
  }

LABEL_18:
  v16 = v11 == 1;
  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v9 = v5;
    v17 = AssociatedTypeWitness;
  }

  (*(v9 + 16))(a1, v8, v17);
  *(a1 + v10) = v16;
  return a1;
}

unsigned __int8 *assignWithCopy for ExclusiveGesture.Value(unsigned __int8 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = v7;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
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
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  if (v11 == 1)
  {
    v16 = *(v7 - 8);
  }

  else
  {
    v16 = v5;
  }

  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v16 + 8))(a1, v17);
  v18 = *(a2 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
      }

      else if (v20 == 3)
      {
        v21 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v21 = *a2;
      }

LABEL_37:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v21 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v23 = v18 == 1;
  if (v18 == 1)
  {
    v24 = v9;
  }

  else
  {
    v24 = v5;
  }

  if (v18 == 1)
  {
    v25 = v8;
  }

  else
  {
    v25 = AssociatedTypeWitness;
  }

  (*(v24 + 16))(a1, a2, v25);
  a1[v10] = v23;
  return a1;
}

uint64_t initializeWithTake for ExclusiveGesture.Value(uint64_t a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a2[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_18;
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
      goto LABEL_18;
    }

    v14 = *a2;
  }

  else if (v13 == 2)
  {
    v14 = *a2;
  }

  else if (v13 == 3)
  {
    v14 = *a2 | (a2[2] << 16);
  }

  else
  {
    v14 = *a2;
  }

  v15 = (v14 | (v12 << (8 * v10))) + 2;
  v11 = v14 + 2;
  if (v10 < 4)
  {
    v11 = v15;
  }

LABEL_18:
  v16 = v11 == 1;
  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v9 = v5;
    v17 = AssociatedTypeWitness;
  }

  (*(v9 + 32))(a1, v8, v17);
  *(a1 + v10) = v16;
  return a1;
}

unsigned __int8 *assignWithTake for ExclusiveGesture.Value(unsigned __int8 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = v7;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
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
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  if (v11 == 1)
  {
    v16 = *(v7 - 8);
  }

  else
  {
    v16 = v5;
  }

  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v16 + 8))(a1, v17);
  v18 = *(a2 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
      }

      else if (v20 == 3)
      {
        v21 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v21 = *a2;
      }

LABEL_37:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v21 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v23 = v18 == 1;
  if (v18 == 1)
  {
    v24 = v9;
  }

  else
  {
    v24 = v5;
  }

  if (v18 == 1)
  {
    v25 = v8;
  }

  else
  {
    v25 = AssociatedTypeWitness;
  }

  (*(v24 + 32))(a1, a2, v25);
  a1[v10] = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for ExclusiveGesture.Value(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_15:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void storeEnumTagSinglePayload for ExclusiveGesture.Value(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for ExclusiveGesture.Value(unsigned __int8 *a1)
{
  v2 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v3 <= v2)
  {
    v3 = v2;
  }

  result = a1[v3];
  if (result >= 2)
  {
    if (v3 <= 3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return result;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | ((result - 2) << (8 * v3))) + 2;
    v8 = v6 + 2;
    if (v3 >= 4)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

void destructiveInjectEnumTag for ExclusiveGesture.Value(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  if (a2 > 1)
  {
    v7 = *(v4 + 64);
    v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = a2 - 2;
    if (v9 < 4)
    {
      a1[v9] = (v10 >> (8 * v9)) + 2;
      if (v9)
      {
        v11 = v10 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v11;
          a1[2] = BYTE2(v11);
        }

        else if (v9 == 2)
        {
          *a1 = v11;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      a1[v9] = 2;
      bzero(a1, v9);
      *a1 = v10;
    }
  }

  else
  {
    v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v6 <= *(v5 + 64))
    {
      v6 = *(v5 + 64);
    }

    a1[v6] = a2;
  }
}

CGFloat _RotationEffect.Data.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  CGAffineTransformMakeTranslation(&v10, v4, v5);
  CGAffineTransformRotate(&v9, &v10, v3);
  v10 = v9;
  CGAffineTransformTranslate(&v9, &v10, -v4, -v5);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a1 = *&v9.a;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

SwiftUI::_RotationEffect::Data __swiftcall _RotationEffect.Data.init()()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  return result;
}

double _RotationEffect.Data.init(_:size:layoutDirection:)@<D0>(_BYTE *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = a4 * a6;
  v8 = a6 - v7;
  if (*a1)
  {
    v7 = v8;
    a3 = (a3 * -128.0 + 0.0) * 0.0078125;
  }

  *a2 = a3;
  result = a5 * a7;
  a2[1] = v7;
  a2[2] = a5 * a7;
  return result;
}

CGFloat _RotationEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  CGAffineTransformMakeTranslation(&v16, a2 * a5, a3 * a6);
  CGAffineTransformRotate(&v15, &v16, a4);
  v16 = v15;
  CGAffineTransformTranslate(&v15, &v16, -(a2 * a5), -(a3 * a6));
  result = v15.a;
  v13 = *&v15.c;
  v14 = *&v15.tx;
  *a1 = *&v15.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v13;
  *(a1 + 40) = 0;
  *(a1 + 48) = v14;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

float64x2_t _RotationEffect.animatableData.setter(float64x2_t a1, float64_t a2, double a3)
{
  a1.f64[1] = a2;
  result = vmulq_f64(a1, vdupq_n_s64(0x3F80000000000000uLL));
  *v3 = result;
  v3[1].f64[0] = a3 * 0.0078125;
  return result;
}

double (*_RotationEffect.animatableData.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  v2 = v1[1].f64[0] * 128.0;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  *(a1 + 16) = v2;
  return _RotationEffect.animatableData.modify;
}

double _RotationEffect.animatableData.modify(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *(a1 + 16) * 0.0078125;
  *v1 = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v1[1].f64[0] = result;
  return result;
}

BOOL static _RotationEffect.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a2 == a5;
  if (a3 != a6)
  {
    v6 = 0;
  }

  return a1 == a4 && v6;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _RotationEffect@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  _RotationEffect.effectValue(size:)(v7, a2, a3, *v3, v3[1], v3[2]);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _RotationEffect(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t static _RotationEffect.resolve(effect:origin:size:layoutDirection:)@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v8 = a4 * a6;
  v9 = a6 - v8;
  if (*a1)
  {
    v10 = (a3 * -128.0 + 0.0) * 0.0078125;
  }

  else
  {
    v10 = a3;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = a5 * a7;
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v11;
  *(result + 32) = v12;
  *(result + 88) = 2;
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 12) = 9;
  return result;
}

float64_t protocol witness for Animatable.animatableData.getter in conformance _RotationEffect@<D0>(float64x2_t *a1@<X8>)
{
  result = v1[1].f64[0] * 128.0;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  a1[1].f64[0] = result;
  return result;
}

float64_t protocol witness for Animatable.animatableData.setter in conformance _RotationEffect(float64x2_t *a1)
{
  result = a1[1].f64[0] * 0.0078125;
  *v1 = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v1[1].f64[0] = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _RotationEffect(uint64_t a1))()
{
  *(a1 + 24) = v1;
  v2 = v1[1].f64[0] * 128.0;
  *a1 = vmulq_f64(*v1, vdupq_n_s64(0x4060000000000000uLL));
  *(a1 + 16) = v2;
  return protocol witness for Animatable.animatableData.modify in conformance _RotationEffect;
}

uint64_t View.rotationEffect(_:anchor:)(uint64_t a1, double a2, double a3, double a4)
{
  *v5 = a2;
  *&v5[1] = a3;
  *&v5[2] = a4;
  return View.modifier<A>(_:)(v5, a1, &type metadata for _RotationEffect);
}

int64_t _RotationEffect.encode(to:)(int64_t result, double a2, double a3, double a4)
{
  v7 = result;
  if (a2 != 0.0)
  {
    v4 = a2;
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v8 = *(v7 + 8);
    result = v8 + 8;
    if (__OFADD__(v8, 8))
    {
      goto LABEL_17;
    }

    if (*(v7 + 16) < result)
    {
      goto LABEL_18;
    }

    *(v7 + 8) = result;
    *(*v7 + v8) = v4;
  }

  while (a3 != 0.5 || a4 != 0.5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v10 = *(v7 + 8);
    v11 = *(v7 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v13 + 1;
    *(v11 + 8 * v13 + 32) = v10;
    *(v7 + 24) = v11;
    if (!__OFADD__(v10, 1))
    {
      *(v7 + 8) = v10 + 1;
      UnitPoint.encode(to:)(v7, a3, a4);
      return ProtobufEncoder.endLengthDelimited()();
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v4;
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance _RotationEffect@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized _RotationEffect.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

uint64_t VisualEffect.rotationEffect(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *v10 = a4;
  *&v10[1] = a5;
  *&v10[2] = a6;
  lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
  return VisualEffect.geometryEffect<A>(_:)(v10, a1, &type metadata for _RotationEffect, a2, a3);
}

int64_t _RotationEffect.Data.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v7 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v7 + 8;
    if (__OFADD__(v7, 8))
    {
      goto LABEL_12;
    }

    if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    *(a1 + 8) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v7) = v5;
  }

  while (1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(a1 + 24) = v10;
    if (!__OFADD__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v5;
  }

  *(a1 + 8) = v9 + 1;
  CGPoint.encode(to:)(a1, v4, v6);
  return ProtobufEncoder.endLengthDelimited()();
}

unint64_t _RotationEffect.Data.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
LABEL_54:
    v8 = 0;
    v9 = 0;
LABEL_55:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    return result;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_56;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_56:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v11 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v22 = v3[1] + result;
          if (v6 < v22)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_56;
          }

          v22 = v3[1] + 4;
          if (v6 < v22)
          {
            goto LABEL_56;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v22 = v3[1] + 8;
        if (v6 < v22)
        {
          goto LABEL_56;
        }
      }

      v3[1] = v22;
      goto LABEL_4;
    }

    if (v11 == 5)
    {
      v23 = v3[1];
      if (v6 < (v23 + 1))
      {
        goto LABEL_56;
      }

      v24 = *v23;
      v3[1] = v23 + 1;
      v7 = v24;
    }

    else
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        v12 = v3[1];
        if (v6 < v12 + result)
        {
          goto LABEL_56;
        }

        v3[3] = 9;
        v3[4] = v12 + result;
      }

      else
      {
        if (v11 != 1)
        {
          goto LABEL_56;
        }

        v12 = v3[1];
      }

      if (v6 < (v12 + 1))
      {
        goto LABEL_56;
      }

      v7 = *v12;
      v3[1] = v12 + 1;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if (v11 != 2)
  {
    goto LABEL_56;
  }

  v13 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = v6;
  v3[5] = v13;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v16 = v3[1] + result;
    if (v6 < v16)
    {
      goto LABEL_56;
    }

    v3[2] = v16;
    specialized CGPoint.init(from:)(v3);
    v19 = v3[5];
    if (!*(v19 + 16))
    {
      goto LABEL_60;
    }

    v8 = v17;
    v9 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
      v20 = *(result + 16);
      if (!v20)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v21 = v20 - 1;
    v6 = *(v19 + 8 * v21 + 32);
    *(v19 + 16) = v21;
    v3[5] = v19;
    v3[2] = v6;
    goto LABEL_4;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v27 = *(result + 16);
  if (v27)
  {
    v25 = v27 - 1;
    v26 = *(result + 8 * v25 + 32);
    *(result + 16) = v25;
    v3[5] = result;
    v3[2] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized static _RotationEffect.shouldFinishEarly(in:)(double *a1)
{
  result = 0;
  if (fabs(*a1 * 0.0078125 * (*a1 * 0.0078125) + a1[3] * 0.0078125 * (a1[3] * 0.0078125)) < 0.0001 && a1[1] == 0.0)
  {
    return a1[2] == 0.0;
  }

  return result;
}

unint64_t specialized _RotationEffect.init(from:)(unint64_t result)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
LABEL_54:
    v3[3] = 0;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v6 = v3[4];
      if (v4 < v6)
      {
        goto LABEL_11;
      }

      if (v6 < v4)
      {
        goto LABEL_55;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_55:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v7 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }

          v14 = v3[1] + result;
          if (v5 < v14)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_55;
          }

          v14 = v3[1] + 4;
          if (v5 < v14)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v7 != 1)
        {
          goto LABEL_55;
        }

        v14 = v3[1] + 8;
        if (v5 < v14)
        {
          goto LABEL_55;
        }
      }

      v3[1] = v14;
      goto LABEL_4;
    }

    if (v7 == 5)
    {
      v15 = v3[1];
      if (v5 < v15 + 4)
      {
        goto LABEL_55;
      }

      v3[1] = v15 + 4;
    }

    else
    {
      if (v7 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v8 = v3[1];
        if (v5 < v8 + result)
        {
          goto LABEL_55;
        }

        v3[3] = 9;
        v3[4] = v8 + result;
      }

      else
      {
        if (v7 != 1)
        {
          goto LABEL_55;
        }

        v8 = v3[1];
      }

      if (v5 < v8 + 8)
      {
        goto LABEL_55;
      }

      v3[1] = v8 + 8;
    }

LABEL_4:
    v4 = v3[1];
    if (v4 >= v5)
    {
      goto LABEL_54;
    }
  }

  if (v7 != 2)
  {
    goto LABEL_55;
  }

  v1 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
  }

  v10 = *(v1 + 2);
  v9 = *(v1 + 3);
  if (v10 >= v9 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v1);
  }

  *(v1 + 2) = v10 + 1;
  *&v1[8 * v10 + 32] = v5;
  v3[5] = v1;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v11 = v3[1] + result;
    if (v5 < v11)
    {
      goto LABEL_55;
    }

    v3[2] = v11;
    specialized CGPoint.init(from:)(v3);
    v1 = v3[5];
    if (!*(v1 + 2))
    {
      goto LABEL_59;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v12 = *(v1 + 2);
      if (!v12)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
      v12 = *(result + 16);
      if (!v12)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v13 = v12 - 1;
    v5 = *&v1[8 * v13 + 32];
    *(v1 + 2) = v13;
    v3[5] = v1;
    v3[2] = v5;
    goto LABEL_4;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  v18 = *(result + 16);
  if (v18)
  {
    v16 = v18 - 1;
    v17 = *(result + 8 * v16 + 32);
    *(result + 16) = v16;
    v3[5] = result;
    v3[2] = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for GeometryVisualEffect<_RotationEffect>()
{
  if (!lazy cache variable for type metadata for GeometryVisualEffect<_RotationEffect>)
  {
    lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect();
    v0 = type metadata accessor for GeometryVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryVisualEffect<_RotationEffect>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AnyGradient.provider.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AnyGradient.init(_:)(uint64_t a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for GradientBox<Gradient>, lazy protocol witness table accessor for type Gradient and conformance Gradient, &type metadata for Gradient, type metadata accessor for GradientBox);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient and conformance Gradient()
{
  result = lazy protocol witness table cache variable for type Gradient and conformance Gradient;
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient and conformance Gradient;
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient and conformance Gradient;
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }

  return result;
}

uint64_t AnyGradient._apply(to:)(uint64_t a1)
{

  specialized Paint._apply(to:)(a1);
}

uint64_t AnyGradientBox.apply(to:)(uint64_t a1)
{

  specialized Paint._apply(to:)(a1);
}

uint64_t static AnyGradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 88))(a2) & 1;
  }
}

Swift::Int AnyGradient.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 128))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyGradient()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 128))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyGradient()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 128))(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for ShapeStyle._apply(to:) in conformance AnyGradient(uint64_t a1)
{

  specialized Paint._apply(to:)(a1);
}

uint64_t _AnyLinearGradient.init(gradient:startPoint:endPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t static GradientBox.deserialize(from:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v1 + 144) + 16) + 16))(v3);
  if (!v2)
  {
    return GradientBox.__allocating_init(_:)(v5);
  }

  return result;
}

uint64_t GradientBox.resolve(in:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 144) + 32))(&v4, *(v2 + 136));
}

uint64_t GradientBox.fallbackColor(in:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 144) + 40))(&v4, *(v2 + 136));
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance GradientBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static GradientBox.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t _AnyRadialGradient.init(gradient:center:startRadius:endRadius:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t _AnyLinearGradient.gradient.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 _AnyLinearGradient.resolvePaint(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = *v2;
  v15[0] = *a1;
  v15[1] = v6;
  (*(*v7 + 112))(&v16, v15);
  v8 = 0;
  v9 = v16;
  v10 = v17;
  v11 = HIDWORD(v17);
  v12 = v18;
  if ((v18 & 1) == 0 && *(&v17 + 1) > 1.0)
  {
    v16 = v5;
    v17 = v6;
    v14 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v14, v15);
    v8 = v15[0];
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = *(v3 + 1);
  result = *(v3 + 3);
  *(a2 + 40) = result;
  *(a2 + 56) = v8;
  return result;
}

__int128 *EitherGradient.resolve(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = *v2;
  if (*(v2 + 8))
  {
    *&v6 = *a1;
    *(&v6 + 1) = v3;
    return (*(*v4 + 112))(&v6);
  }

  else
  {
    *&v6 = *a1;
    *(&v6 + 1) = v3;
    return Gradient.resolve(in:)(&v6, v4, a2);
  }
}

uint64_t EitherGradient.fallbackColor(in:)(__int128 *a1)
{
  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

uint64_t EitherGradient.constantColor.getter()
{
  if (v0[8])
  {
    return 0;
  }

  v1 = *(*v0 + 16);
  if (v1 != 1)
  {
    if (!v1)
    {
      if (one-time initialization token for clear != -1)
      {
        swift_once();
      }
    }

    return 0;
  }
}

uint64_t EitherGradient.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    return (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);

    return specialized Array<A>.hash(into:)(a1, v3);
  }
}

Swift::Int EitherGradient.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v4);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v4, v1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EitherGradient()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v4);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v4, v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EitherGradient(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    return (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);

    return specialized Array<A>.hash(into:)(a1, v3);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EitherGradient()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*(v0 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v3);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v3, v1);
  }

  return Hasher._finalize()();
}

uint64_t specialized AnyCodableBox.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(*v3 + 104);
  v11(v14, v10);
  LOBYTE(v15) = 0;
  lazy protocol witness table accessor for type Gradient.ProviderTag and conformance Gradient.ProviderTag();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    outlined consume of Gradient.ProviderTag(v14[0]);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v13 = outlined consume of Gradient.ProviderTag(v14[0]);
    v11(&v15, v13);
    v14[0] = v15;
    Gradient.ProviderTag.type.getter();
    static GradientProvider.box.getter();
    outlined consume of Gradient.ProviderTag(v15);
    v14[3] = type metadata accessor for AnyGradientBox();
    v14[0] = v3;

    static CodableBox.encode(_:to:)(v14, v9);
    (*(v7 + 8))(v9, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }
}

{
  v3 = v1;
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(*v3 + 80);
  v11(v14, v10);
  LOBYTE(v15) = 0;
  lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag();
  v12 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v11(&v15, v12);
  Font.ProviderTag.box.getter();
  v14[3] = type metadata accessor for AnyFontBox();
  v14[0] = v3;

  static CodableBox.encode(_:to:)(v14, v9);
  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

{
  v3 = v1;
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(*v3 + 104);
  v11(v14, v10);
  LOBYTE(v15) = 0;
  lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    outlined consume of Color.ProviderTag(v14[0]);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v13 = outlined consume of Color.ProviderTag(v14[0]);
    v11(&v15, v13);
    v14[0] = v15;
    Color.ProviderTag.type.getter();
    static ColorProvider.box.getter();
    outlined consume of Color.ProviderTag(v15);
    v14[3] = type metadata accessor for AnyColorBox();
    v14[0] = v3;

    static CodableBox.encode(_:to:)(v14, v9);
    (*(v7 + 8))(v9, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }
}

uint64_t _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c8GradientE0C_Tt1g5(void *a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  result = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v13[0]) = 0;
    lazy protocol witness table accessor for type Gradient.ProviderTag and conformance Gradient.ProviderTag();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v14;
    Gradient.ProviderTag.type.getter();
    v9 = static GradientProvider.box.getter();
    static CodableBox.decode(from:)(v9, v10, v13);
    (*(v5 + 8))(v7, v4);
    outlined consume of Gradient.ProviderTag(v14);
    type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(0, &lazy cache variable for type metadata for any CodableBox<Self.AnyCodableBox.Box == AnyGradientBox>, v11, type metadata accessor for AnyGradientBox);
    type metadata accessor for AnyGradientBox();
    swift_dynamicCast();
    return v15;
  }

  return result;
}

uint64_t _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c4FontE0C_Tt1g5(void *a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  result = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v12[0]) = 0;
    lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = Font.ProviderTag.box.getter();
    static CodableBox.decode(from:)(v9, v10, v12);
    (*(v5 + 8))(v7, v4);
    type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(0, &lazy cache variable for type metadata for any CodableBox<Self.AnyCodableBox.Box == AnyFontBox>, 255, type metadata accessor for AnyFontBox);
    type metadata accessor for AnyFontBox();
    swift_dynamicCast();
    return v12[6];
  }

  return result;
}

uint64_t _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c5ColorE0C_Tt1g5(void *a1)
{
  type metadata accessor for GradientBox<Gradient>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys, &type metadata for CodableBoxCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  result = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v12[0]) = 0;
    lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v13;
    Color.ProviderTag.type.getter();
    v9 = static ColorProvider.box.getter();
    static CodableBox.decode(from:)(v9, v10, v12);
    (*(v5 + 8))(v7, v4);
    outlined consume of Color.ProviderTag(v13);
    type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(0, &lazy cache variable for type metadata for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>, 255, type metadata accessor for AnyColorBox);
    type metadata accessor for AnyColorBox();
    swift_dynamicCast();
    return v14;
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance AnyGradient@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c8GradientE0C_Tt1g5(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AC11A0](v4);
  if (v4)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      v9 = v8;
      v10 = *(*v7 + 152);

      v10(a1);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v9;
      }

      MEMORY[0x193AC11E0](*&v11);

      --v4;
    }

    while (v4);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AC11A0](v4);
  if (v4)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      v9 = v8;
      v10 = *(*v7 + 112);

      v10(a1);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v9;
      }

      MEMORY[0x193AC11E0](*&v11);

      --v4;
    }

    while (v4);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    MEMORY[0x193AC11A0](v8);
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x193AC11A0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      MEMORY[0x193AC03C0](v4++, a2);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
      _CFObject.hash(into:)();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef();
    do
    {
      v6 = *v5++;
      v7 = v6;
      _CFObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t specialized static EitherGradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (*(a2 + 8))
    {
      if (v2 == v4)
      {
        outlined copy of EitherGradient(*a1, 1);
        outlined copy of EitherGradient(v2, 1);
        outlined consume of EitherGradient(v2, 1);
        outlined consume of EitherGradient(v2, 1);
        return 1;
      }

      v10 = *(*v2 + 88);
      outlined copy of EitherGradient(*a2, 1);
      outlined copy of EitherGradient(v2, 1);
      v7 = v10(v4);
      outlined consume of EitherGradient(v2, 1);
      v8 = v4;
      v9 = 1;
      goto LABEL_9;
    }

LABEL_6:
    outlined copy of EitherGradient(*a2, *(a2 + 8));
    outlined copy of EitherGradient(v2, v3);
    outlined consume of EitherGradient(v2, v3);
    outlined consume of EitherGradient(v4, v5);
    return 0;
  }

  if (*(a2 + 8))
  {
    goto LABEL_6;
  }

  outlined copy of EitherGradient(*a2, 0);
  outlined copy of EitherGradient(v2, 0);
  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8GradientV4StopV_Tt1g5(v2, v4);
  outlined consume of EitherGradient(v2, 0);
  v8 = v4;
  v9 = 0;
LABEL_9:
  outlined consume of EitherGradient(v8, v9);
  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type AnyGradient and conformance AnyGradient()
{
  result = lazy protocol witness table cache variable for type AnyGradient and conformance AnyGradient;
  if (!lazy protocol witness table cache variable for type AnyGradient and conformance AnyGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGradient and conformance AnyGradient);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Gradient(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Gradient and conformance Gradient();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag and conformance Gradient.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag and conformance Gradient.ProviderTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EitherGradient and conformance EitherGradient()
{
  result = lazy protocol witness table cache variable for type EitherGradient and conformance EitherGradient;
  if (!lazy protocol witness table cache variable for type EitherGradient and conformance EitherGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EitherGradient and conformance EitherGradient);
  }

  return result;
}

uint64_t initializeWithCopy for _AnyLinearGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for _AnyLinearGradient(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t assignWithTake for _AnyLinearGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t outlined copy of EitherGradient(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t assignWithCopy for EitherGradient(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of EitherGradient(v5, v6);
  return a1;
}

uint64_t assignWithTake for EitherGradient(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of EitherGradient(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for EitherGradient(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EitherGradient(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t instantiation function for generic protocol witness table for GradientBox<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef()
{
  result = lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef;
  if (!lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef)
  {
    type metadata accessor for CFDictionaryRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys;
  if (!lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag and conformance Color.ProviderTag);
  }

  return result;
}

unint64_t outlined consume of Color.ProviderTag(unint64_t result)
{
  if (result >= 0x19)
  {
  }

  return result;
}

void type metadata accessor for GradientBox<Gradient>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag and conformance Font.ProviderTag);
  }

  return result;
}

uint64_t type metadata accessor for any CodableBox<Self.AnyCodableBox.Box == AnyColorBox>(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t closure #1 in static ViewModifierContentProvider.providerMakeViewList(view:inputs:)(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v11[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return a2(a1, v11, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for static GraphReusable.isTriviallyReusable.getter in conformance BodyInputElement()
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v0;
  }
}

void closure #1 in _GraphInputs.containsNonEmptyBodyStack.getter(uint64_t a1, uint64_t *a2, BOOL *a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-1] - v8;
  v10 = *a2;
  *a3 = *a2 != 0;
  if (v10)
  {
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      v22[0] = a1;
      AGGraphAddTraceEvent();
    }

    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v7, static Log.graphReuse);
    outlined init with copy of Logger?(v11, v9);
    v12 = type metadata accessor for Logger();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      outlined destroy of Logger?(v9);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v22[0] = v17;
        *v16 = 136315138;
        v18 = _typeName(_:qualified:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v22);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_18D018000, v14, v15, "Input %s is preventing reuse", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x193AC4820](v17, -1, -1);
        MEMORY[0x193AC4820](v16, -1, -1);
      }

      (*(v13 + 8))(v9, v12);
    }
  }
}

void static BodyCountInput.defaultValue.getter(void *a1@<X8>)
{
  type metadata accessor for (_:)();

  Stack.init()(a1);
}

void specialized static ViewModifier._makeView(modifier:inputs:body:)()
{
  static DynamicPropertyCache.fields(of:)(v0, v1);
  AGTypeGetKind();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized static ViewModifier._makeViewList(modifier:inputs:body:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, v24);
  v11 = v24[0];
  v10 = v24[1];
  v12 = v25;
  v13 = v26;
  outlined init with copy of _ViewListInputs(a2, v24);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v20) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v24, v11, v10, v12 | (v13 << 32), a1, &v20);
    v14 = v20;
    v17 = v22;
    v18 = v21;
    v15 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateW033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, TranslationKickModifier<Int>>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v14, v24, a5);
      AGSubgraphEndTreeElement();
      if ((v15 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v20) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, v10, v12, v18, v17);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v24);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0O21AppearanceScaleEffectATLLVGAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGTt2B5(v14, v24, a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v24);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v27 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, v24);
  v11 = v24[0];
  v10 = v24[1];
  v12 = v25;
  v13 = v26;
  outlined init with copy of _ViewListInputs(a2, v24);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v20) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v24, v11, v10, v12 | (v13 << 32), a1, &v20);
    v14 = v20;
    v17 = v22;
    v18 = v21;
    v15 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_P0VyAA0lm5LocalQ008_3DF70D9T23D7473F4D189A049B764CFEFLLVGAA0lmnQ0AULLVGG_Tt2B5(v14, v24, a5);
      AGSubgraphEndTreeElement();
      if ((v15 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v20) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, v10, v12, v18, v17);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v24);
      }
    }

    else
    {
      _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_P0VyAA0lm5LocalQ008_3DF70D9T23D7473F4D189A049B764CFEFLLVGAA0lmnQ0AULLVGG_Tt2B5(v14, v24, a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v24);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

{
  v25 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v22);
  v10 = v22;
  v11 = v23;
  v12 = v24;
  outlined init with copy of _ViewListInputs(a2, &v22);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v18) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v22, v10, *(&v10 + 1), v11 | (v12 << 32), a1, &v18);
    v15 = v20;
    v16 = v19;
    v13 = v21;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0o5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5(&v22, a5);
      AGSubgraphEndTreeElement();
      if ((v13 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v18) = v11;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), v11, v16, v15);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v22);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA015FlexInteractionF0VG_AA0o5StateF033_404CBE866CEDD57705E9BEB28E77402CLLVTt2B5(&v22, a5);
      if ((v13 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v22);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<Color, _FrameLayout>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  static DynamicPropertyCache.fields(of:)(v9, v25);
  v11 = v25[0];
  v10 = v25[1];
  v12 = v26;
  v13 = v27;
  outlined init with copy of _ViewListInputs(a2, v25);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v21) = v12;
    v19 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v25, v11, v10, v12 | (v13 << 32), a1, &v21);
    v14 = v21;
    v15 = v23;
    v18 = v22;
    v16 = v24;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickW033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>, type metadata accessor for ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0pF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      AGSubgraphEndTreeElement();
      if ((v16 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v21) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v11, v10, ((v13 << 32) | v12), v18, v15);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v25);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAA0pF0ATLLVG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v25);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<Color, _FrameLayout>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  static DynamicPropertyCache.fields(of:)(v9, v23);
  v11 = v23[0];
  v10 = v23[1];
  v12 = v24;
  v13 = v25;
  outlined init with copy of _ViewListInputs(a2, v23);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v19) = v12;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v23, v11, v10, v12 | (v13 << 32), a1, &v19);
    v14 = v21;
    v17 = v20;
    v15 = v22;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationW033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ScheduledAnimationModifier<Int>>, _ValueActionModifier2<Int>>, type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, type metadata accessor for _ValueActionModifier2);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_M15ActionModifier2VySiGTt2B5(v23, a5);
      AGSubgraphEndTreeElement();
      if ((v15 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v19) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v11, v10, ((v13 << 32) | v12), v17, v14);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v23);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AA01_M15ActionModifier2VySiGTt2B5(v23, a5);
      if ((v15 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v23);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(&type metadata for KickModifier, &v21);
  v9 = v21;
  v10 = v22;
  v11 = v23;
  outlined init with copy of _ViewListInputs(a2, &v21);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v17) = v10;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v21, v9, *(&v9 + 1), v10 | (v11 << 32), a1, &v17);
    v14 = v19;
    v15 = v18;
    v12 = v20;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickW033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v21, a5);
      AGSubgraphEndTreeElement();
      if ((v12 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v17) = v10;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v9, *(&v9 + 1), v10, v15, v14);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(&v21);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA04KickF033_02B8A9C041E17C70E13F37D6E2D14302LLVG_AA16_TransformEffectVTt2B5(&v21, a5);
      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(&v21);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE04makeC4List8modifier6inputs4bodyAA01_cF7OutputsVAA11_GraphValueVyxG_AA01_cF6InputsVAiA01_K0V_ANtctFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<Color, _FrameLayout>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  static DynamicPropertyCache.fields(of:)(v9, v25);
  v11 = v25[0];
  v10 = v25[1];
  v12 = v26;
  v13 = v27;
  outlined init with copy of _ViewListInputs(a2, v25);
  if (AGTypeGetKind() - 2 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    LOBYTE(v21) = v12;
    v19 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v25, v11, v10, v12 | (v13 << 32), a1, &v21);
    v14 = v21;
    v15 = v23;
    v18 = v22;
    v16 = v24;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseW033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier);
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYGAA05_BlurZ0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      AGSubgraphEndTreeElement();
      if ((v16 & 1) == 0)
      {
LABEL_4:
        LOBYTE(v21) = v12;
        specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v19, v11, v10, ((v13 << 32) | v12), v18, v15);
        outlined consume of DynamicPropertyCache.Fields.Layout();
        return outlined destroy of _ViewListInputs(v25);
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0oP6EffectATLLVGAYGAYGAYGAA05_BlurZ0VG_AA018ScheduledAnimationF033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGTt2B5(v14, v25, a5);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    outlined destroy of _ViewListInputs(v25);
    return outlined consume of DynamicPropertyCache.Fields.Layout();
  }

  return result;
}

uint64_t specialized static ViewModifier.makeViewList(modifier:inputs:body:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, &v20);
  v10 = v20;
  v11 = v21;
  v12 = v22;
  outlined init with copy of _ViewListInputs(a2, &v20);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ContentCaptureProtectionViewModifier>, ContentCaptureProtectionPreferenceWriter>();
    LOBYTE(v18[0]) = v11;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v20, v10, *(&v10 + 1), v11 | (v12 << 32), a1, v18);
    v15 = v18[2];
    v16 = v18[1];
    v13 = v19;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0x17CaptureProtectionvW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0doP16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5(&v20, a5);
      AGSubgraphEndTreeElement();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZAA01_ef1_D0VyAA0d17CaptureProtectioneF0VG_AA0doP16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVTt2B5(&v20, a5);
      if (v13)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v20);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v18[0]) = v11;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v10, *(&v10 + 1), v11, v16, v15);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x193ABEDD0](0xD000000000000024, 0x800000018DD779C0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v27 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v5, v24);
  v10 = v24[0];
  v11 = v24[1];
  v12 = v25;
  v13 = v26;
  outlined init with copy of _ViewListInputs(a2, v24);
  if (AGTypeGetKind() - 2 < 4)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<FlexibleButtonFrameLayout>, _ViewModifier_Content<FlexibleButtonFrameModifier>>();
    LOBYTE(v22[0]) = v12;
    v14 = v12 | (v13 << 32);
    v15 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(v24, v10, v11, v14, a1, v22);
    v16 = v22[0];
    v19 = v22[2];
    v20 = v22[1];
    v17 = v23;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameO0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTt2B5(v16, v24, a5);
      AGSubgraphEndTreeElement();
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameO0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTt2B5(v16, v24, a5);
      if (v17)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(v24);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v22[0]) = v12;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v15, v10, v11, v12, v20, v19);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD779A0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static ViewModifier.makeViewList(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v21);
  v9 = v21;
  v10 = v22;
  v11 = v23;
  outlined init with copy of _ViewListInputs(a2, &v21);
  if (AGTypeGetKind() - 2 < 4)
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
    LOBYTE(v19[0]) = v10;
    v12 = v10 | (v11 << 32);
    v13 = a1;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v21, v9, *(&v9 + 1), v12, a1, v19);
    v14 = LODWORD(v19[0]);
    v17 = v19[2];
    v18 = v19[1];
    v15 = v20;
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingW0VGG_AA0kG7ElementANLLOTt0g5(a3, a4, 1);
    if (AGSubgraphShouldRecordTree())
    {
      AGSubgraphBeginTreeElement();
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5(v14, &v21);
      AGSubgraphEndTreeElement();
      if (v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE4List4view6inputsAA01_eH7OutputsVAA11_GraphValueVyACyxq_GG_AA01_eH6InputsVtFZACyACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_GA1_G_A1_Tt2B5(v14, &v21);
      if (v15)
      {
LABEL_7:
        outlined destroy of _ViewListInputs(&v21);
        return outlined consume of DynamicPropertyCache.Fields.Layout();
      }
    }

    LOBYTE(v19[0]) = v10;
    specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v13, v9, *(&v9 + 1), v10, v18, v17);
    goto LABEL_7;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD77980);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA020GlassTransitionStateD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA020GlassTransitionStateN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015TranslationKickD033_02B8A9C041E17C70E13F37D6E2D14302LLVySiG_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>();
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015TranslationKickN033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>();
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA018ScheduledAnimationN033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA018ScheduledAnimationI033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA018ScheduledAnimationI033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA04KickN033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA04KickI033_02B8A9C041E17C70E13F37D6E2D14302LLVG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA04KickI033_02B8A9C041E17C70E13F37D6E2D14302LLVG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>();
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA010ScalePulseN033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiG_Tt1B5(&v45, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), 0);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA016GlassEffectShapeD033_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectShapeN033_62A32D59B8A902A88963544196023CF7LLVGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectShapeI033_62A32D59B8A902A88963544196023CF7LLVG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectShapeI033_62A32D59B8A902A88963544196023CF7LLVG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA015FlexInteractionD0V_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015FlexInteractionN0VGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015FlexInteractionI0VG_TtB5();
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015FlexInteractionI0VG_TtB5();
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA016GlassEffectLocalD008_3DF70D9O23D7473F4D189A049B764CFEFLLV_Tt1B5(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content);
  v8 = v7;
  v9 = a1[3];
  v42 = a1[2];
  v43 = v9;
  v44 = a1[4];
  v10 = a1[1];
  v40 = *a1;
  v41 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = thunk for @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(v11 + 24) = v6;

  outlined init with copy of _ViewListCountInputs(a1, &v45);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectLocalN008_3DF70D9T23D7473F4D189A049B764CFEFLLVGG_SiSgACcTt0g5(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?), v11);

  if (*(&v41 + 1))
  {
    v24 = v42;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v40;
    v27[0] = v8;
    v27[1] = 0;
    v28 = 256;
    v29 = *(&v41 + 1);
    v25 = v43;
    v26 = BYTE8(v43) & 1;
    v23 = v27;
    v30 = v40;
    v31 = v41;
    v12 = *a1;
    if (*a1)
    {
      v12 = *(v12 + 64);
    }

    v17 = v12;
    CustomViewCountCache.updateOptions(inputs:previousID:)(&v30, &v17);
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v18 = v30;
    v19 = v31;
    outlined init with copy of _ViewListCountInputs(&v35, &v45);
    outlined destroy of _ViewListCountInputs(&v18);
    v42 = v24;
    *(&v41 + 1) = v23;
    *&v43 = v25;
    BYTE8(v43) = v26;
    v45 = v40;
    v46 = v41;
    v47 = v24;
    v48 = v43;
    v49 = v44;
    v13 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_M0VyAA0ij5LocalN008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAA0ijkN0APLLVGG_Tt0B5(&v45);
  }

  else
  {
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v18 = v8;
    LOWORD(v19) = 256;
    *(&v19 + 1) = 0;
    v14 = v40;
    if (v40)
    {
      v14 = *(v35 + 64);
    }

    *(&v41 + 1) = &v18;
    *&v42 = *(&v35 + 1);
    *(&v42 + 1) = v36;
    *&v43 = v14;
    BYTE8(v43) = 0;
    v45 = v40;
    v46 = v41;
    v48 = v43;
    v49 = v44;
    v47 = v42;
    outlined init with copy of _ViewListCountInputs(&v35, &v30);
    outlined init with copy of _ViewListCountInputs(&v45, &v30);
    v13 = _s7SwiftUI4ViewPAAE14_viewListCount6inputsSiSgAA01_ceF6InputsV_tFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_M0VyAA0ij5LocalN008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAA0ijkN0APLLVGG_Tt0B5(&v45);
    outlined destroy of _ViewListCountInputs(&v45);
    outlined destroy of _ViewListCountInputs(&v35);
  }

  v37 = v42;
  v38 = v43;
  v39 = v44;
  v35 = v40;
  v36 = v41;
  outlined destroy of _ViewListCountInputs(&v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return v13;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContentCaptureProtectionViewModifier@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GlassEffectLocalModifier@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FlexibleButtonFrameModifier@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA011GlassEffectO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO5EntryVGA2_8StableIDVAA15ModifiedContentVyA7_yAA6ZStackVyAA0p14EntryContainerD0AVLLVGAA21_TraitWritingModifierVyAA01_O5TraitVyAW3KeyVGGGA14_yAA18TransitionTraitKeyVGGGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of _ViewListInputs(a2, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v11, 0);

  AGGraphCreateOffsetAttribute2();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 20) = v8;
  *(v9 + 24) = partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:);
  *(v9 + 32) = v5;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA011GlassEffectL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5(v11, _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2G5TA, v9, a3);

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA010GlassEntryO033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0P9ContainerO4ItemVGA2_2IDVAA0p4ItemD0AVLLVGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of _ViewListInputs(a2, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v11, 0);

  AGGraphCreateOffsetAttribute2();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 20) = v8;
  *(v9 + 24) = partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:);
  *(v9 + 32) = v5;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA010GlassEntryL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5(v11, _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2G5TA, v9, a3);

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD4List4view6inputsAA01_dH7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_dH6InputsVtFZAA07_LayoutF0VyAA019FlexibleButtonFrameO0VG_AA01_D16Modifier_ContentVyAA0pqrS0VGTt2B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of _ViewListInputs(a2, v11);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(v11, 0);

  AGGraphCreateOffsetAttribute2();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 20) = v8;
  *(v9 + 24) = partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:);
  *(v9 + 32) = v5;

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA019FlexibleButtonFrameL0VG_Tt0t3g5(v11, _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA019FlexibleButtonFrameP0VG_Tt2G5TA, v9, a3);

  return outlined destroy of _ViewListInputs(v11);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a1, v14);
  v8 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v8, v13);
  if (v9)
  {
    v10 = *(v9 + 72);
  }

  else
  {
    v10 = 0;
  }

  v15 |= v10;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    a4(0);
    AGSubgraphBeginTreeElement();
    a5(OffsetAttribute2, v14);
    AGSubgraphEndTreeElement();
  }

  else
  {
    a5(OffsetAttribute2, v14);
  }

  return outlined destroy of _ViewListInputs(v14);
}

uint64_t specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _ViewListInputs(a1, v9);
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v4, v8);
  if (v5)
  {
    v6 = *(v5 + 72);
  }

  else
  {
    v6 = 0;
  }

  v10 |= v6;
  type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA019FlexibleButtonFrameD0VG_Tt0t2g5(v9, a2);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC4List4view6inputsAA01_cS7OutputsVAA11_GraphValueVyxG_AA01_cS6InputsVtFZAA01_cd1_E0VyAA019FlexibleButtonFrameD0VG_Tt0t2g5(v9, a2);
  }

  return outlined destroy of _ViewListInputs(v9);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance FlexInteractionModifier@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance GlassEffectLocalModifier(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v9[4] = a1[4];
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  return a6(v9);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GlassTransitionStateModifier@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SafeAreaPaddingModifier@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static ViewModifier.makeView(modifier:inputs:body:)(v5, v9, a3, a4, a5);
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance ContentCaptureProtectionViewModifier(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, _OWORD *))
{
  v12 = a1[3];
  v17[2] = a1[2];
  v17[3] = v12;
  v17[4] = a1[4];
  v13 = a1[1];
  v17[0] = *a1;
  v17[1] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = a8(a7, v14, v17);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if ((a3 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1)
{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiG_Tt1B5);
}

{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:), _s7SwiftUI12ViewModifierPAAE13viewListCount6inputs4bodySiSgAA01_cfG6InputsV_AgIXEtFZAA04KickD033_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5);
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, void))
{
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return a3(v6, a2, 0);
}

uint64_t specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015TranslationKickI033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_TtB5, a3, a4, a5, a6, a7, a8);
}

{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA020GlassTransitionStateI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_TtB5, a3, a4, a5, a6, a7, a8);
}

{
  return specialized closure #1 in static ModifiedContent<>._viewListCount(inputs:)(a1, _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA010ScalePulseI033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_TtB5, a3, a4, a5, a6, a7, a8);
}

uint64_t _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA011GlassEffectP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2G5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t (*a5)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v11;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 80);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a6 = MEMORY[0x1E69E7CC0];
    *(a6 + 8) = 0;
    *(a6 + 12) = result;
  }

  else
  {

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    return a5(OffsetAttribute2, v15, a4, a2, a3);
  }

  return result;
}

uint64_t _s7SwiftUI019_VariadicView_UnaryD4RootPAAE05_makeD4List4root6inputs4bodyAA01_dH7OutputsVAA11_GraphValueVyxG_AA01_dH6InputsVAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AA07_LayoutF0VyAA019FlexibleButtonFrameP0VG_Tt2G5@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 8) = 0;
    *(a3 + 12) = result;
  }

  else
  {

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA019FlexibleButtonFrameC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_du29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_y4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n(OffsetAttribute2, v9, a2, a3);
  }

  return result;
}

uint64_t specialized static BodyInputElement.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      type metadata accessor for (_:_:)();
      return AGCompareValues();
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for (_:_:)();
  return AGCompareValues();
}

uint64_t assignWithCopy for BodyInputElement(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of BodyInputElement();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of BodyInputElement();
  return a1;
}

uint64_t assignWithTake for BodyInputElement(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of BodyInputElement();
  return a1;
}

uint64_t getEnumTagSinglePayload for BodyInputElement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized BodyInputElement.tryToReuse(by:indirectMap:testOnly:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    if (one-time initialization token for v5 != -1)
    {
      swift_once();
    }

    v8 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        return 1;
      }
    }

    else if (static Semantics.forced >= v8)
    {
      return 1;
    }

    type metadata accessor for (_:_:)();
    return AGCompareValues();
  }

  if (a3)
  {
    if (one-time initialization token for v5 != -1)
    {
      swift_once();
    }

    v6 = static Semantics.v5;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (static Semantics.forced < v6)
    {
LABEL_22:
      type metadata accessor for (_:_:)();
      return AGCompareValues();
    }

    return 1;
  }

LABEL_11:
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    AGGraphAddTraceEvent();
  }

  return 0;
}

void _s7SwiftUI15ModifiedContentVyACyACyACyAA014_ViewModifier_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGAPGAPGAPGMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>();
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t *a2)
{
  return specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(a2, *(v2 + 16), 88, type metadata accessor for ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO5EntryVG_AS8StableIDVAA15ModifiedContentVyAXyAA6ZStackVyAA0npoE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA21_TraitWritingModifierVyAA12_LayoutTraitVyAA0N12EffectLayoutA0_LLV3KeyVGGGA4_yAA18TransitionTraitKeyVGGTt2B5);
}

{
  return specialized closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(a2, *(v2 + 16), 488, type metadata accessor for ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSayAA14GlassContainerO4ItemVG_AS2IDVAA0npE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVTt2B5);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ModifiedContent<Color, _FrameLayout>(255, a4, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], a5);
    v8 = type metadata accessor for ModifiedContent();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Color, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

SwiftUI::AccessibilityVisibility::Resolved_optional __swiftcall AccessibilityVisibility.Resolved.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityVisibility.Resolved()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityVisibility()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  return Hasher._finalize()();
}

uint64_t AccessibilityNullableOptionSet<>.resolvesToHidden.getter()
{
  if ((*v0 & 4) != 0)
  {
    return 1;
  }

  if ((*(v0 + 4) & 4) != 0)
  {
    return 0;
  }

  return (*v0 >> 3) & 1;
}

void AccessibilityNullableOptionSet<>.resolved.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 4) != 0 || (v2 & 8) != 0 && (v1[1] & 4) == 0)
  {
    *a1 = 3;
  }

  else
  {
    LOBYTE(v3) = 2;
    if ((v2 & 0x10) == 0)
    {
      if ((v2 & 2) != 0)
      {
        LOBYTE(v3) = 2;
      }

      else
      {
        LOBYTE(v3) = 4;
      }

      if (v2)
      {
        v3 = (*v1 & 2u) >> 1;
      }

      if ((v2 & 0x40) != 0)
      {
        LOBYTE(v3) = 0;
      }
    }

    *a1 = v3;
  }
}

uint64_t AccessibilityNullableOptionSet<>.shouldApplyPlatformElementOverride.getter()
{
  v1 = v0[1];
  if (((*v0 | v1) & 0xC) != 0)
  {
    if (*v0 & 3 | v0[1] & 1)
    {
      return 257;
    }

    if ((v1 & 2) == 0)
    {
      return ((v0[1] & 4) == 0) & (*v0 >> 3) | ((*v0 & 4u) >> 2) | 0x100;
    }

    v3 = 256;
  }

  else
  {
    if (*v0 & 3 | v0[1] & 1)
    {
      return 1;
    }

    v3 = 0;
    if ((v1 & 2) == 0)
    {
      return 0;
    }
  }

  return v3 | 1u;
}

uint64_t View.accessibilityDisabled()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  View.modifier<A>(_:)(v8, a1, &type metadata for DisableAccessibilityNodesModifier);
  KeyPath = swift_getKeyPath();
  v13 = 0;
  v12[1] = a2;
  v12[2] = &protocol witness table for DisableAccessibilityNodesModifier;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)(KeyPath, &v13, v4, WitnessTable);

  return (*(v5 + 8))(v7, v4);
}

uint64_t key path getter for EnvironmentValues.accessibilityEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(*a1);
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

uint64_t key path setter for EnvironmentValues.accessibilityEnabled : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020AccessibilityEnabledF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA020AccessibilityEnabledK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v4, *a2);
  }
}

uint64_t key path setter for _ViewInputs.accessibilityPreferenceProvider : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(a2, v3, v4);
}

uint64_t _ViewInputs.accessibilityPreferenceProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v2, a1, a2);
}

void (*_ViewInputs.accessibilityPreferenceProvider.modify(uint64_t *a1))(uint64_t **a1)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.accessibilityPreferenceProvider.modify;
}

void _ViewInputs.accessibilityPreferenceProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance DisableAccessibilityNodesModifier(uint64_t a1, uint64_t *a2)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(*a2);
  if (result)
  {
    return PreferenceKeys.remove(_:)(result);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility.Resolved and conformance AccessibilityVisibility.Resolved);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>);
    }
  }
}

uint64_t ViewGraphHost.updateDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ViewGraphHost.updateDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.updateDelegate.modify;
}

void ViewGraphHost.updateDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ViewGraphHost.renderDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ViewGraphHost.renderDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.renderDelegate.modify;
}

void ViewGraphHost.renderDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ViewGraphHost.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ViewGraphHost.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return ViewGraphHost.delegate.modify;
}

void ViewGraphHost.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ViewGraphHost.idiom.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 64);
  return result;
}

uint64_t ViewGraphHost.idiom.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t ViewGraphHost.initialInheritedEnvironment.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = v3;
  a1[1] = v4;
  return outlined copy of EnvironmentValues?(v3);
}

uint64_t ViewGraphHost.initialInheritedEnvironment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 72);
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return outlined consume of EnvironmentValues?(v4);
}

double ViewGraphHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

uint64_t ViewGraphHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 104) = v2;
  return result;
}

uint64_t ViewGraphHost.valuesNeedingUpdate.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t ViewGraphHost.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 114);
  return result;
}

uint64_t ViewGraphHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 114) = v2;
  return result;
}

uint64_t ViewGraphHost.externalUpdateCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t ViewGraphHost.parentPhase.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 132);
  *a1 = *(v1 + 128);
  *(a1 + 4) = v4;
  return result;
}

uint64_t ViewGraphHost.parentPhase.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = swift_beginAccess();
  *(v1 + 128) = v2;
  *(v1 + 132) = v3;
  return result;
}

uint64_t ViewGraphHost.__allocating_init<A>(rootViewType:outputs:viewDefinition:)(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ViewGraphHost.init<A>(rootViewType:outputs:viewDefinition:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ViewGraphHost.accessibilityEnabled.getter()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  return *(v1 + 360);
}

uint64_t ViewGraphHost.accessibilityEnabled.setter(char a1)
{
  v3 = *(v1 + 88);
  result = swift_beginAccess();
  *(v3 + 360) = a1;
  return result;
}

void (*ViewGraphHost.accessibilityEnabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 88);
  *(v3 + 24) = v5;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 360);
  return ViewGraphHost.accessibilityEnabled.modify;
}

void ViewGraphHost.accessibilityEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + 360) = *(v1 + 32);
  free(v1);
}

uint64_t ViewGraphHost.updateRequiredMainThread.getter()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return AGGraphGetCounter() != *(v1 + 368);
  }

  __break(1u);
  return result;
}

BOOL ViewGraphHost.mayDeferUpdate.getter()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  if (*(v1 + 168) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 136);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate);
  return v3 > INFINITY || v3 < INFINITY;
}

uint64_t ViewGraphHost.environment.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t ViewGraphHost.updateRootView(transaction:)(unint64_t a1)
{
  v3 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v3 + 24) = *(v1 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();

  v4 = _threadTransactionID();
  specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(a1, v4, partial apply for closure #1 in ViewGraphHost.updateRootView(transaction:), v3, 1, 1);
}

uint64_t closure #1 in ViewGraphHost.updateRootView(transaction:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ViewGraphHost.setEnvironment(_:wrapper:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL ViewGraphHost.setSafeAreaInsets(_:keyboardHeight:cornerInsets:)(int8x16_t *a1, uint64_t a2, char a3, __int128 *a4)
{
  v42 = *a1;
  v44 = a1[1];
  swift_beginAccess();
  AGGraphGetValue();
  EnvironmentValues.pixelLength.getter();
  v9 = a1[2].i8[0];
  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  v46 = vbicq_s8(v42, v11);
  v47 = vbicq_s8(v44, v11);
  EdgeInsets.round(toMultipleOf:)(v8);
  v12 = 0uLL;
  v13 = 1;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  if ((a4[4] & 1) == 0)
  {
    v13 = 0;
    v15 = a4[2];
    v16 = a4[3];
    v12 = *a4;
    v14 = a4[1];
  }

  v39 = v14;
  v40 = v15;
  v41 = v12;
  v43 = v16;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if ((v9 & 1) == 0)
  {
    v20 = *&v46.i64[1];
    v21 = *v46.i64;
    v18 = *&v47.i64[1];
    v19 = *v47.i64;
  }

  v45 = v21;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if ((a3 & 1) == 0)
  {
    v17 = *&a2;
    v22 = *&a2 - *v47.i64;
    v38 = v20;
    v26 = v18;
    if (Edge.Set.contains(_:)(SwiftUI_Edge_top))
    {
      v27 = *&a2 - *v47.i64;
    }

    else
    {
      v27 = 0.0;
    }

    if (Edge.Set.contains(_:)(SwiftUI_Edge_leading))
    {
      v23 = *&a2 - *v47.i64;
    }

    else
    {
      v23 = 0.0;
    }

    if (Edge.Set.contains(_:)(SwiftUI_Edge_bottom))
    {
      v25 = *&a2 - *v47.i64;
    }

    else
    {
      v25 = 0.0;
    }

    if (!Edge.Set.contains(_:)(SwiftUI_Edge_trailing))
    {
      v22 = 0.0;
    }

    v24 = v27;
    v18 = v26;
    v20 = v38;
  }

  if (v25 >= 0.0)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  if (v25 < 0.0)
  {
    v19 = -v25;
  }

  else
  {
    v17 = v25;
  }

  if (v45 != 0.0 || v20 != 0.0 || v19 != 0.0 || v18 != 0.0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[112 * v31];
    *(v32 + 4) = 1;
    *(v32 + 5) = v45;
    *(v32 + 6) = v20;
    *(v32 + 7) = v19;
    *(v32 + 8) = v18;
    *(v32 + 72) = v41;
    *(v32 + 88) = v39;
    *(v32 + 104) = v40;
    *(v32 + 120) = v43;
    v32[136] = v13;
    if (v24 != 0.0)
    {
      goto LABEL_39;
    }

LABEL_36:
    if (v23 == 0.0 && v17 == 0.0 && v22 == 0.0)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (v24 == 0.0)
  {
    goto LABEL_36;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  }

  v34 = *(v29 + 2);
  v33 = *(v29 + 3);
  if (v34 >= v33 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v29);
  }

  *(v29 + 2) = v34 + 1;
  v35 = &v29[112 * v34];
  *(v35 + 4) = v28;
  *(v35 + 5) = v24;
  *(v35 + 6) = v23;
  *(v35 + 7) = v17;
  *(v35 + 8) = v22;
  *(v35 + 72) = 0u;
  *(v35 + 88) = 0u;
  *(v35 + 104) = 0u;
  *(v35 + 120) = 0u;
  v35[136] = 1;
LABEL_44:
  v36 = ViewGraph.setSafeAreaInsets(_:)(v29);

  return v36;
}

Swift::Void __swiftcall ViewGraphHost.invalidateRootContainerShape()()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  ViewGraph.invalidateRootContainerShape()();

  _MovableLockUnlock(v0);
}

void *_GraphInputs.viewGraphHostIdiom.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v3, v8);
  if (result && (v5 = result, (result = result[9]) != 0))
  {
    result = (*(v5[10] + 8))(&v7);
    v6 = v7;
  }

  else
  {
    v6 = 13;
  }

  *a1 = v6;
  return result;
}

uint64_t _GraphInputs.viewGraphHostIdiom.setter(char *a1)
{
  v2 = 0;
  v3 = 0;
  if (*a1 != 13)
  {
    v5 = *a1;
    AnyInterfaceIdiom.init(idiom:)(&v5, v6);
    v2 = v6[0];
    v3 = v6[1];
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19InterfaceIdiomInputV_Tt2B5(v1, v2, v3);
}

void (*_GraphInputs.viewGraphHostIdiom.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = v5;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v5, v8);
  if (v6 && *(v6 + 72))
  {
    (*(*(v6 + 80) + 8))();
  }

  else
  {
    *(v4 + 32) = 13;
  }

  return _GraphInputs.viewGraphHostIdiom.modify;
}

void _GraphInputs.viewGraphHostIdiom.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3 == 13)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v3 != 13)
  {
LABEL_5:
    v8[0] = *(*a1 + 32);
    AnyInterfaceIdiom.init(idiom:)(v8, v7);
    v4 = v7[0];
    v5 = v7[1];
    goto LABEL_7;
  }

  v4 = 0;
  v5 = 0;
LABEL_7:
  v6 = v2[2];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA19InterfaceIdiomInputV_Tt2B5(v6, v4, v5);

  free(v2);
}

uint64_t key path setter for _GraphInputs.updateCycleUseSetNeedsLayout : _GraphInputs(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(a2, v3);
}

uint64_t _GraphInputs.updateCycleUseSetNeedsLayout.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v1, a1);
}

void (*_GraphInputs.updateCycleUseSetNeedsLayout.modify(uint64_t *a1))(uint64_t ***a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.updateCycleUseSetNeedsLayout.modify;
}

void _GraphInputs.updateCycleUseSetNeedsLayout.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.UpdateCycleUseSetNeedsLayoutKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v7;
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
    result = static Semantics.forced >= v2;
  }

  *a1 = result;
  return result;
}

BOOL static ViewGraphHostUpdate.isOwner.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  return _MovableLockIsOwner(static Update._lock);
}

uint64_t ViewGraphHost.addPreference<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    ViewGraphRootValueUpdater._addPreference<A>(_:)(a1, ObjectType, a2, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

double ViewGraphHost.rootContentPath(kind:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  specialized static Update.begin()();
  v5 = static Update.dispatchDepth;
  static Update.dispatchDepth = static Update.depth;
  swift_beginAccess();
  v6 = static Update.Action.nextActionID;
  atomic_fetch_add_explicit(&static Update.Action.nextActionID, 2u, memory_order_relaxed);
  swift_endAccess();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
  }

  v7 = (v6 >> 1) + 1;
  if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
    *&v11[0] = v7;
    BYTE8(v11[0]) = 1;
    type metadata accessor for (UInt32, UInt32?)();
    AGGraphAddTraceEvent();
  }

  closure #1 in ViewGraphHost.rootContentPath(kind:)(v2, v4, v11);
  $defer #3 <A>() in static Update.dispatchImmediately<A>(reason:_:)(v7);
  static Update.dispatchDepth = v5;
  static Update.end()();
  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v8;
  return result;
}

uint64_t closure #1 in ViewGraphHost.rootContentPath(kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  v6 = 6;
  v20 = 6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v10 = ViewGraphRootValueUpdater.responderNode.getter(ObjectType, v8);
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_6:
    v6 = 6;
LABEL_7:
    v12 = 0uLL;
    v13 = 0uLL;
    goto LABEL_8;
  }

  type metadata accessor for ViewResponder();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    goto LABEL_6;
  }

  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v16 = 2;
  (*(*v11 + 192))(&v18, &v17, v14, 0, 0);

  result = outlined destroy of CoordinateSpace(v14);
  v13 = v18;
  v12 = v19;
  v6 = v20;
LABEL_8:
  *a3 = v13;
  *(a3 + 16) = v12;
  *(a3 + 32) = v6;
  return result;
}

uint64_t ViewGraphHost.observeSizeThatFitsChanges(proposal:handler:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 88);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 2;
  *(v15 + 56) = partial apply for closure #1 in ViewGraphHost.observeSizeThatFitsChanges(proposal:handler:);
  *(v15 + 64) = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v13 + 352);
  *(v13 + 352) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a1, a2 & 1, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  *(v13 + 352) = v18;
  swift_endAccess();
}

uint64_t ViewGraphHost.stopObservingSizeThatFitsChanges(proposal:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  specialized ViewGraphGeometryObservers.stopObserving(proposal:)(a1, a2 & 1, a3, a4 & 1);
  return swift_endAccess();
}

unint64_t specialized ViewGraphGeometryObservers.stopObserving(proposal:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1, a3, a4 & 1);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v4;
    v11 = *v5;
    *v5 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v11;
    }

    specialized _NativeDictionary._delete(at:)(v8, v10);

    *v5 = v10;
  }

  return result;
}

Swift::Int ViewGraphHost.Idiom.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ViewGraphHost.LayoutInvalidator.viewGraph.setter()
{
  swift_weakAssign();
}

uint64_t (*ViewGraphHost.LayoutInvalidator.viewGraph.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return ViewGraphHost.LayoutInvalidator.viewGraph.modify;
}

uint64_t ViewGraphHost.LayoutInvalidator.viewGraph.modify()
{
  swift_weakAssign();
}

uint64_t ViewGraphHost.LayoutInvalidator.init(viewGraph:layoutComputer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *(a2 + 8) = a1;
  return result;
}

uint64_t key path getter for ViewGraphHostEnvironmentWrapper.environment : ViewGraphHostEnvironmentWrapper@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for ViewGraphHostEnvironmentWrapper.environment : ViewGraphHostEnvironmentWrapper(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t ViewGraphHostEnvironmentWrapper.phase.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id ViewGraphHostEnvironmentWrapper.init()()
{
  EnvironmentValues.init()(&v0[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment]);
  *&v0[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewGraphHostEnvironmentWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ViewGraphHostEnvironmentWrapper.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  EnvironmentValues.init()(&v3[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment]);

  *&v3[OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase] = 0;

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t ViewGraphHostEnvironmentWrapper.init(coder:)(void *a1)
{
  EnvironmentValues.init()((v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment));

  *(v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase) = 0;

  type metadata accessor for ViewGraphHostEnvironmentWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

id ViewGraphHostEnvironmentWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewGraphHostEnvironmentWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ViewGraphOwner.currentTimestamp.setter in conformance ViewGraphHost(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 104) = v2;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.externalUpdateCount.setter in conformance ViewGraphHost(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

id ViewGraphDisplayLink.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewGraphDisplayLink.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for (UInt32, UInt32?)()
{
  if (!lazy cache variable for type metadata for (UInt32, UInt32?))
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for UInt32?);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UInt32, UInt32?));
    }
  }
}

void type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer()
{
  if (!lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer)
  {
    lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer();
    v0 = type metadata accessor for ViewGraphGeometryObservers.Observer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom()
{
  result = lazy protocol witness table cache variable for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom;
  if (!lazy protocol witness table cache variable for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphHost.Idiom and conformance ViewGraphHost.Idiom);
  }

  return result;
}

uint64_t assignWithCopy for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  result = swift_weakCopyAssign();
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

double assignWithTake for ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeAssign();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName()
{
  result = lazy protocol witness table cache variable for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName;
  if (!lazy protocol witness table cache variable for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphDisplayLink.ThreadName and conformance ViewGraphDisplayLink.ThreadName);
  }

  return result;
}

uint64_t outlined init with copy of ViewGraphHost.LayoutInvalidator(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t *PairwisePreferenceCombinerVisitor.init(outputs:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 2);
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a3 + 32) = MEMORY[0x1E69E7CC0];
  *(a3 + 40) = 0;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t PreferenceCombiner.attributes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PreferenceCombiner.init()@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for WeakAttribute();
  result = Array.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PreferenceCombiner<A>(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  static PreferenceCombiner.initialValue.getter(v4, v3);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = a2;
  v17[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, closure #1 in static Rule._updateDefault(_:)partial apply, &v17[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t static PreferenceCombiner.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance PairPreferenceCombiner<A>(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  static PreferenceCombiner.initialValue.getter(v3, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v14);
  v16[-2] = a2;
  v16[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in static Rule._updateDefault(_:), &v16[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t PairwisePreferenceCombinerVisitor.outputs.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *a2 = v4;
  *(a2 + 8) = v5;
}

uint64_t PairwisePreferenceCombinerVisitor.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t PairwisePreferenceCombinerVisitor.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MultiPreferenceCombinerVisitor.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t MultiPreferenceCombinerVisitor.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t MultiPreferenceCombinerVisitor.init(outputs:result:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t specialized PreferenceCombiner.description.getter()
{
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 548047074;
}

uint64_t destroy for PairwisePreferenceCombinerVisitor()
{
}

uint64_t initializeWithCopy for PairwisePreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for PairwisePreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for PairwisePreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for MultiPreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for MultiPreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for MultiPreferenceCombinerVisitor(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for MultiPreferenceCombinerVisitor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t storeEnumTagSinglePayload for MultiPreferenceCombinerVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for HostPreferencesCombiner(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithTake for HostPreferencesCombiner(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

unint64_t instantiation function for generic protocol witness table for HostPreferencesCombiner(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HostPreferencesCombiner and conformance HostPreferencesCombiner();
  *(a1 + 8) = result;
  return result;
}

double ContentStyle.MaterialStyle.resolveColor(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = 1.0;
  if ((*(v1 + 12) & 1) == 0)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  *(a1 + 4) = v2;
  *(a1 + 8) = v2;
  result = 2.24711695e307;
  *(a1 + 12) = 0x7FC000003F800000;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Material.Layer>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>);
    }
  }
}

uint64_t SpeedAnimation.shouldMerge<A, B>(base:previous:previousBase:value:time:context:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3 != a1)
  {
    return 0;
  }

  specialized Animation.init<A>(_:)(a5, a9);
  v14 = (*(a11 + 32))(a2 * a3);

  return v14 & 1;
}

uint64_t protocol witness for CustomAnimationModifier.function(base:) in conformance SpeedAnimation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *a2 = v11;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 8;

  return outlined copy of Animation.Function(v5, v6, v7, v8, v9, v10);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpeedAnimation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpeedAnimation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

void *protocol witness for ProtobufEncodableMessage.encode(to:) in conformance SpeedAnimation(void *result)
{
  v2 = *v1;
  if (*v1 != 0.0)
  {
    v3 = result;
    ProtobufEncoder.encodeVarint(_:)(0x31uLL);
    v4 = v3[1];
    v5 = v4 + 8;
    if (__OFADD__(v4, 8))
    {
      __break(1u);
    }

    else if (v3[2] >= v5)
    {
      v3[1] = v5;
      result = (*v3 + v4);
LABEL_5:
      *result = v2;
      return result;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(v5);
    goto LABEL_5;
  }

  return result;
}

uint64_t outlined copy of Animation.Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 7u)
  {
    if (a6 == 8 || a6 == 9)
    {
    }
  }

  else if (a6 == 6 || a6 == 7)
  {
  }

  return result;
}

uint64_t KeyframeTrack.init<>(content:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  v3 = type metadata accessor for KeyframeTrack();
  return a1(v3, v4, v5);
}

uint64_t KeyframeTrack.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for KeyframeTrack();

  a2(v4);
}

uint64_t KeyframeTrack._resolve(into:initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v33 = a1;
  v7 = *(a4 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v29 = a4;
  v12 = *(a4 + 24);
  v13 = type metadata accessor for Optional();
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v4;
  v20 = *v4;
  swift_getAtKeyPath();
  v21 = a3;
  v22 = v8;
  (*(v9 + 16))(v11, v21, v8);
  v23 = *(v7 - 8);
  if ((*(v23 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v22);
    (*(v16 + 56))(v15, 1, 1, v12);
  }

  else
  {
    swift_getAtKeyPath();
    (*(v16 + 56))(v15, 0, 1, v12);
    (*(v23 + 8))(v11, v7);
  }

  v24 = KeyframeTrack.resolve(initialValue:initialVelocity:)(v19, v15, v29);
  (*(v30 + 8))(v15, v31);
  (*(v16 + 8))(v19, v12);
  v25 = type metadata accessor for _ResolvedKeyframes();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _ResolvedKeyframes.append<A>(keyPath:path:)(v20, v24, v25, AssociatedConformanceWitness);
}

uint64_t KeyframeTrack.resolve(initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  swift_getAssociatedConformanceWitness();
  _ResolvedKeyframeTrackContent.init()(&v6);
  (*(*(&v3 + 1) + 48))(&v6, v3, *(&v3 + 1));
  v4 = AnimationPath.init(_:)(partial apply for closure #1 in KeyframeTrack.resolve(initialValue:initialVelocity:));

  return v4;
}

uint64_t closure #1 in KeyframeTrack.resolve(initialValue:initialVelocity:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v413 = a6;
  v376 = a4;
  v338 = a3;
  v412 = a1;
  v416 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v328 = &v313 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v381 = type metadata accessor for CubicKeyframeHelper.Connection();
  v398 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381);
  v363 = &v313 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v373 = (&v313 - v11);
  v385 = type metadata accessor for CubicKeyframeHelper();
  v392 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v388 = &v313 - v12;
  v402 = type metadata accessor for _ResolvedKeyframeTrackContent.Cubic();
  v390 = *(v402 - 8);
  MEMORY[0x1EEE9AC00](v402);
  v329 = &v313 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v325 = &v313 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v401 = &v313 - v17;
  v18 = type metadata accessor for HermiteCurve();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v384 = &v313 - v19;
  v386 = type metadata accessor for _ResolvedKeyframeTrackContent.Linear();
  v405 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v323 = &v313 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v330 = &v313 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v383 = &v313 - v24;
  v337 = type metadata accessor for Optional();
  v391 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v332 = &v313 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v362 = &v313 - v27;
  v28 = type metadata accessor for AnimationPath.Element();
  v379 = type metadata accessor for Optional();
  v407 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v361 = &v313 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v360 = &v313 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v359 = &v313 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v343 = &v313 - v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v404 = type metadata accessor for Optional();
  v394 = *(v404 - 8);
  MEMORY[0x1EEE9AC00](v404);
  v322 = &v313 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v321 = &v313 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v358 = &v313 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v313 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v357 = &v313 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v372 = &v313 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v371 = &v313 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v370 = &v313 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v336 = &v313 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v349 = &v313 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v374 = &v313 - v58;
  v395 = type metadata accessor for _ResolvedKeyframeTrackContent._Spring();
  v380 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v320 = &v313 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v400 = &v313 - v61;
  v411 = v28;
  v408 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v399 = &v313 - v63;
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v65);
  v319 = &v313 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v318 = &v313 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v342 = &v313 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v317 = &v313 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v331 = &v313 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v341 = &v313 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v313 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v356 = &v313 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v355 = &v313 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v354 = &v313 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v369 = &v313 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v368 = &v313 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v382 = &v313 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v345 = &v313 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v397 = &v313 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v409 = &v313 - v97;
  v98 = type metadata accessor for _ResolvedKeyframeTrackContent.Segment();
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v340 = &v313 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v339 = &v313 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v324 = &v313 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v344 = &v313 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v415 = &v313 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v414 = &v313 - v110;
  v420 = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = RandomAccessCollection<>.indices.getter();
  if (v417 != *(&v417 + 1))
  {
    if (*(&v417 + 1) < v417)
    {
      __break(1u);
    }

    else if (v417 < *(&v417 + 1))
    {
      v403 = (v99 + 16);
      v367 = (v405 + 4);
      v396 = (v408 + 6);
      ++v408;
      v406 = (v64 + 32);
      v377 = (v407 + 1);
      v378 = AssociatedConformanceWitness + 24;
      v407 = (v64 + 48);
      v389 = (v394 + 1);
      v393 = (v64 + 8);
      v366 = (v405 + 1);
      v405 = (v99 + 8);
      v352 = (v380 + 4);
      v394 += 2;
      v335 = (v391 + 2);
      v334 = (v416 + 48);
      v327 = (v416 + 8);
      v326 = (v391 + 1);
      v391 = (v64 + 16);
      v112 = (v64 + 56);
      v351 = (v380 + 1);
      v365 = (v390 + 32);
      v375 = (v398 + 8);
      v316 = (v416 + 32);
      v333 = (v398 + 40);
      v364 = (v390 + 8);
      v113 = v417 - 2;
      v398 = -*(&v417 + 1);
      v348 = (v392 + 8);
      v390 = v79;
      v392 = v98;
      v380 = v112;
      v387 = a2;
      v410 = AssociatedConformanceWitness;
      v315 = v44;
      while (1)
      {
        v416 = v113;
        v132 = v113 + 2;
        v133 = v414;
        Array.subscript.getter();
        v134 = *v403;
        (*v403)(v415, v133, v98);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 2)
          {
            (*v367)(v383, v415, v386);
            v161 = v411;
            *&v417 = *v412;
            type metadata accessor for Array();
            swift_getWitnessTable();
            v162 = v360;
            BidirectionalCollection.last.getter();
            v163 = (*v396)(v162, 1, v161);
            v164 = v410;
            v165 = v356;
            v166 = v406;
            if (v163 == 1)
            {
              (*v377)(v162, v379);
              v167 = v371;
              (*v112)(v371, 1, 1, AssociatedTypeWitness);
              (*(v164 + 24))(v413, v164);
              if ((*v407)(v167, 1, AssociatedTypeWitness) != 1)
              {
                (*v389)(v371, v404);
              }
            }

            else
            {
              v190 = v371;
              AnimationPath.Element.end.getter(v161, v371);
              (*v408)(v162, v161);
              (*v112)(v190, 0, 1, AssociatedTypeWitness);
              (*v166)(v165, v190, AssociatedTypeWitness);
            }

            v191 = v384;
            v192 = v165;
            v193 = v383;
            static HermiteCurve.linear(start:end:)(v165, v383, v164, v384);
            v194 = v386;
            v195 = *(v193 + *(v386 + 36));
            v196 = v193 + *(v386 + 40);
            v197 = *(v196 + 32);
            v198 = *(v196 + 16);
            v417 = *v196;
            v418 = v198;
            v419 = v197;
            v199 = v399;
            AnimationPath.CurveElement.init(curve:duration:constantVelocity:timingCurve:)(v191, 0, &v417, v399, v195);
            v200 = v411;
            swift_storeEnumTagMultiPayload();
            type metadata accessor for AnimationPath();
            AnimationPath.append(_:)(v199);
            (*v408)(v199, v200);
            (*v393)(v192, AssociatedTypeWitness);
            (*v366)(v193, v194);
            v98 = v392;
            result = (*v405)(v414, v392);
            v79 = v390;
            goto LABEL_9;
          }

          v139 = v400;
          v140 = v395;
          (*v352)(v400, v415, v395);
          v141 = &v139[*(v140 + 40)];
          v142 = v374;
          v143 = v404;
          (*v394)(v374, v141, v404);
          v144 = *v407;
          v145 = (*v407)(v142, 1, AssociatedTypeWitness);
          v146 = v410;
          v147 = v362;
          v148 = v406;
          if (v145 == 1)
          {
            v353 = v144;
            v350 = *v389;
            v350(v374, v143);
            v149 = v411;
            *&v417 = *v412;
            type metadata accessor for Array();
            swift_getWitnessTable();
            v150 = v343;
            BidirectionalCollection.last.getter();
            if ((*v396)(v150, 1, v149) == 1)
            {
              (*v377)(v150, v379);
              v151 = *v112;
              (*v112)(v349, 1, 1, AssociatedTypeWitness);
              v152 = v337;
              (*v335)(v147, v338, v337);
              v153 = v413;
              if ((*v334)(v147, 1, v413) == 1)
              {
                (*v326)(v147, v152);
                v154 = v336;
                v151(v336, 1, 1, AssociatedTypeWitness);
                swift_getAssociatedConformanceWitness();
                v142 = v345;
                dispatch thunk of static AdditiveArithmetic.zero.getter();
                v144 = v353;
                v155 = (v353)(v154, 1, AssociatedTypeWitness);
                v156 = v404;
                if (v155 != 1)
                {
                  v350(v336, v404);
                }
              }

              else
              {
                v211 = v336;
                (*(v410 + 24))(v153);
                (*v327)(v147, v153);
                v151(v211, 0, 1, AssociatedTypeWitness);
                v142 = v345;
                (*v148)(v345, v211, AssociatedTypeWitness);
                v156 = v404;
                v144 = v353;
              }

              v212 = (v144)(v349, 1, AssociatedTypeWitness);
              v146 = v410;
              if (v212 != 1)
              {
                v350(v349, v156);
                v142 = v345;
              }
            }

            else
            {
              v204 = v349;
              AnimationPath.Element.endVelocity.getter(v149, v349);
              (*v408)(v150, v149);
              (*v112)(v204, 0, 1, AssociatedTypeWitness);
              v205 = v345;
              (*v148)(v345, v204, AssociatedTypeWitness);
              v142 = v205;
              v144 = v353;
            }
          }

          v213 = *v148;
          (*v148)(v397, v142, AssociatedTypeWitness);
          v214 = v411;
          *&v417 = *v412;
          type metadata accessor for Array();
          swift_getWitnessTable();
          v215 = v359;
          BidirectionalCollection.last.getter();
          if ((*v396)(v215, 1, v214) == 1)
          {
            (*v377)(v215, v379);
            v216 = v370;
            (*v112)(v370, 1, 1, AssociatedTypeWitness);
            v217 = v382;
            (*(v146 + 24))(v413, v146);
            v218 = (v144)(v216, 1, AssociatedTypeWitness);
            v219 = v409;
            if (v218 != 1)
            {
              (*v389)(v370, v404);
            }
          }

          else
          {
            v220 = v370;
            AnimationPath.Element.end.getter(v214, v370);
            (*v408)(v215, v214);
            (*v112)(v220, 0, 1, AssociatedTypeWitness);
            v217 = v382;
            v213(v382, v220, AssociatedTypeWitness);
            v219 = v409;
          }

          v221 = v395;
          v222 = v400;
          v223 = &v400[*(v395 + 44)];
          v224 = v393;
          if (v223[8])
          {
            v114 = &v400[*(v395 + 36)];
            v115 = *(v114 + 2);
            v417 = *v114;
            *&v418 = v115;
            v116 = swift_getAssociatedConformanceWitness();
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v117 = Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(v219, 0.0001, v397, AssociatedTypeWitness, v116);
            (*v224)(v219, AssociatedTypeWitness);
          }

          else
          {
            v117 = *v223;
            v116 = swift_getAssociatedConformanceWitness();
          }

          v118 = v224;
          v119 = &v222[*(v221 + 36)];
          v120 = *(v119 + 2);
          v417 = *v119;
          *&v418 = v120;
          v121 = v369;
          dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
          v122 = v368;
          v123 = v116;
          v124 = v397;
          Spring.value<A>(target:initialVelocity:time:)(v121, v117, v397, AssociatedTypeWitness, v123);
          v125 = *v118;
          (*v118)(v121, AssociatedTypeWitness);
          dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
          v125(v122, AssociatedTypeWitness);
          v126 = *(v119 + 2);
          v417 = *v119;
          *&v418 = v126;
          v127 = *v391;
          (*v391)(v122, v217, AssociatedTypeWitness);
          v127(v121, v400, AssociatedTypeWitness);
          v128 = v354;
          v127(v354, v124, AssociatedTypeWitness);
          v129 = v355;
          v127(v355, v409, AssociatedTypeWitness);
          v130 = v399;
          AnimationPath.SpringElement.init(spring:from:to:initialVelocity:end:duration:)(&v417, v122, v121, v128, v129, v399, v117);
          v131 = v411;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for AnimationPath();
          AnimationPath.append(_:)(v130);
          (*v408)(v130, v131);
          v125(v409, AssociatedTypeWitness);
          v125(v382, AssociatedTypeWitness);
          v125(v397, AssociatedTypeWitness);
          (*v351)(v400, v395);
          v98 = v392;
          result = (*v405)(v414, v392);
          goto LABEL_8;
        }

        if (!EnumCaseMultiPayload)
        {
          v136 = v409;
          (*v406)(v409, v415, AssociatedTypeWitness);
          v137 = v399;
          (*v391)(v399, v136, AssociatedTypeWitness);
          v138 = v411;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for AnimationPath();
          AnimationPath.append(_:)(v137);
          (*v408)(v137, v138);
          (*v393)(v136, AssociatedTypeWitness);
          result = (*v405)(v414, v98);
          goto LABEL_9;
        }

        v353 = v134;
        v350 = *v365;
        (v350)(v401, v415, v402);
        v347 = *v412;
        *&v417 = v347;
        v157 = v411;
        type metadata accessor for Array();
        swift_getWitnessTable();
        v158 = v361;
        BidirectionalCollection.last.getter();
        if ((*v396)(v158, 1, v157) == 1)
        {
          (*v377)(v158, v379);
          v159 = v372;
          (*v112)(v372, 1, 1, AssociatedTypeWitness);
          (*(v410 + 24))(v413);
          v160 = v79;
          if ((*v407)(v159, 1, AssociatedTypeWitness) != 1)
          {
            (*v389)(v372, v404);
          }
        }

        else
        {
          v168 = v372;
          AnimationPath.Element.end.getter(v157, v372);
          (*v408)(v158, v157);
          (*v112)(v168, 0, 1, AssociatedTypeWitness);
          (*v406)(v79, v168, AssociatedTypeWitness);
          v160 = v79;
        }

        v169 = v409;
        v170 = v401;
        v346 = *v391;
        v346(v409, v401, AssociatedTypeWitness);
        v171 = v402;
        v172 = *&v170[*(v402 + 44)];
        v173 = v373;
        v174 = v381;
        swift_storeEnumTagMultiPayload();
        v175 = v363;
        swift_storeEnumTagMultiPayload();
        v176 = v388;
        CubicKeyframeHelper.init(from:to:duration:start:end:)(v160, v169, v173, v175, v388, v172);
        v177 = *v394;
        v178 = &v170[*(v171 + 36)];
        v179 = v357;
        v180 = v404;
        (*v394)(v357, v178, v404);
        v181 = *v407;
        if ((*v407)(v179, 1, AssociatedTypeWitness) != 1)
        {
          v201 = *v406;
          v202 = v341;
          (*v406)(v341, v179, AssociatedTypeWitness);
          v203 = *(v385 + 44);
          (*v375)(v176 + v203, v174);
          v201(v176 + v203, v202, AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          v185 = v176;
          v186 = v402;
          v187 = v174;
          v98 = v392;
          goto LABEL_61;
        }

        v182 = *v389;
        (*v389)(v179, v180);
        v183 = v385;
        if (v132 <= 0)
        {
          break;
        }

        v98 = v392;
        Array.subscript.getter();
        v184 = swift_getEnumCaseMultiPayload();
        v185 = v388;
        v186 = v402;
        v187 = v381;
        if (v184 <= 1)
        {
          if (!v184)
          {
            swift_getAssociatedConformanceWitness();
            v188 = v373;
            dispatch thunk of static AdditiveArithmetic.zero.getter();
            swift_storeEnumTagMultiPayload();
            v189 = v188;
            v185 = v388;
            (*v333)(v388 + *(v183 + 44), v189, v187);
LABEL_39:
            (*v405)(v344, v98);
            goto LABEL_61;
          }

          v227 = v325;
          (v350)(v325, v344, v402);
          v228 = v413;
          if (v416 == -1)
          {
            swift_getTupleTypeMetadata2();
            v237 = *&v227[v186[11]];
            v238 = v227;
            v239 = v373;
            *v373 = v237;
            (*(v410 + 24))(v228);
            v240 = v238;
            v187 = v381;
            (*v364)(v240, v186);
            swift_storeEnumTagMultiPayload();
            v241 = v239;
            v185 = v388;
            (*v333)(v388 + *(v183 + 44), v241, v187);
            goto LABEL_61;
          }

          v229 = v315;
          v177(v315, &v227[v186[10]], v404);
          if ((v181)(v229, 1, AssociatedTypeWitness) == 1)
          {
            v182(v229, v404);
            v230 = *(swift_getTupleTypeMetadata2() + 48);
            v231 = *&v227[v186[11]];
            v232 = v227;
            v226 = v373;
            *v373 = v231;
            v233 = v324;
            Array.subscript.getter();
            _ResolvedKeyframeTrackContent.Segment.end.getter(v98, v226 + v230);
            (*v405)(v233, v98);
            v234 = v232;
            v187 = v381;
            (*v364)(v234, v186);
            goto LABEL_53;
          }

          (*v364)(v227, v186);
          v256 = *v406;
          v257 = v317;
          (*v406)(v317, v229, AssociatedTypeWitness);
          v258 = v256;
          v259 = *(v183 + 44);
          v260 = v388;
          (*v375)(v388 + v259, v187);
          v258(v260 + v259, v257, AssociatedTypeWitness);
          v185 = v260;
          v186 = v402;
          goto LABEL_60;
        }

        if (v184 == 2)
        {
          v210 = v373;
          AnimationPath.currentVelocity.getter(v347, v373);
          swift_storeEnumTagMultiPayload();
          (*v333)(v185 + *(v183 + 44), v210, v187);
          goto LABEL_39;
        }

        (*v367)(v330, v344, v386);
        v314 = v181;
        if (v416 == -1)
        {
          (*(v410 + 24))(v413, v410);
        }

        else
        {
          v236 = v324;
          Array.subscript.getter();
          _ResolvedKeyframeTrackContent.Segment.end.getter(v98, v331);
          (*v405)(v236, v98);
        }

        v242 = swift_getAssociatedConformanceWitness();
        v243 = AssociatedTypeWitness;
        v244 = v369;
        v245 = v330;
        dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
        v246 = v386;
        v247 = v368;
        VectorArithmetic.scaled(by:)(v243, v242, v368, 1.0 / *&v245[*(v386 + 36)]);
        v248 = *v393;
        v249 = v244;
        AssociatedTypeWitness = v243;
        (*v393)(v249, v243);
        v250 = &v245[*(v246 + 40)];
        v251 = v250[32];
        v252 = *(v250 + 1);
        v417 = *v250;
        v418 = v252;
        v419 = v251;
        v253 = UnitCurve.velocity(at:)(1.0);
        v254 = v409;
        VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v242, v409, v253);
        v248(v247, AssociatedTypeWitness);
        v248(v331, AssociatedTypeWitness);
        (*v366)(v245, v246);
        v255 = *(v385 + 44);
        v185 = v388;
        v187 = v381;
        (*v375)(v388 + v255, v381);
        (*v406)(v185 + v255, v254, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        v98 = v392;
        v186 = v402;
        v181 = v314;
LABEL_61:
        v261 = v358;
        v262 = v404;
        v177(v358, &v401[v186[10]], v404);
        if ((v181)(v261, 1, AssociatedTypeWitness) == 1)
        {
          v263 = v261;
          v264 = v416 + 3;
          v265 = *v389;
          (*v389)(v263, v262);
          v266 = MEMORY[0x193ABF270](v387, v98);
          v267 = v385;
          if (v264 >= v266)
          {
            v185 = v388;
            (*v375)(v388 + *(v385 + 48), v187);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v268 = v339;
            Array.subscript.getter();
            (v353)(v340, v268, v98);
            v269 = swift_getEnumCaseMultiPayload();
            if (v269 > 1)
            {
              if (v269 == 2)
              {
                (*v405)(v339, v98);
                v281 = v181;
                v282 = v320;
                v283 = v395;
                (*v352)(v320, v340, v395);
                v284 = &v282[*(v283 + 40)];
                v285 = v321;
                v286 = v404;
                v177(v321, v284, v404);
                if ((v281)(v285, 1, AssociatedTypeWitness) == 1)
                {
                  v265(v285, v286);
                  v185 = v388;
                  v287 = (v388 + *(v267 + 48));
                  (*v375)(v287, v381);
                  v288 = *(swift_getTupleTypeMetadata2() + 48);
                  *v287 = v172;
                  v346(v287 + v288, v282, AssociatedTypeWitness);
                  (*v351)(v282, v395);
LABEL_78:
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_68;
                }

                (*v351)(v282, v395);
                v310 = *v406;
                v311 = v318;
                (*v406)(v318, v285, AssociatedTypeWitness);
LABEL_77:
                v312 = *(v267 + 48);
                v185 = v388;
                (*v375)(v388 + v312, v381);
                v310(v185 + v312, v311, AssociatedTypeWitness);
                goto LABEL_78;
              }

              v297 = v323;
              v298 = v386;
              (*v367)(v323, v340, v386);
              v299 = swift_getAssociatedConformanceWitness();
              v300 = v369;
              dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
              v301 = v368;
              VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v299, v368, 1.0 / *&v297[*(v298 + 36)]);
              v353 = *v393;
              v353(v300, AssociatedTypeWitness);
              v302 = &v297[*(v298 + 40)];
              v303 = v302[32];
              v304 = *(v302 + 1);
              v417 = *v302;
              v418 = v304;
              v419 = v303;
              v305 = UnitCurve.velocity(at:)(0.0);
              v306 = v409;
              VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v299, v409, v305);
              v307 = v301;
              v267 = v385;
              v353(v307, AssociatedTypeWitness);
              v308 = v297;
              v98 = v392;
              (*v366)(v308, v298);
              (*v405)(v339, v98);
              v309 = *(v267 + 48);
              v185 = v388;
              (*v375)(v388 + v309, v381);
              (*v406)(v185 + v309, v306, AssociatedTypeWitness);
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              if (v269)
              {
                (*v405)(v339, v98);
                v289 = v329;
                (v350)(v329, v340, v186);
                v290 = &v289[v186[9]];
                v291 = v181;
                v292 = v322;
                v293 = v404;
                v177(v322, v290, v404);
                if ((v291)(v292, 1, AssociatedTypeWitness) == 1)
                {
                  v265(v292, v293);
                  v185 = v388;
                  v294 = (v388 + *(v267 + 48));
                  (*v375)(v294, v381);
                  v295 = *(swift_getTupleTypeMetadata2() + 48);
                  v296 = v329;
                  *v294 = *&v329[v186[11]];
                  v346(v294 + v295, v296, AssociatedTypeWitness);
                  (*v364)(v296, v186);
                  goto LABEL_78;
                }

                (*v364)(v329, v186);
                v310 = *v406;
                v311 = v319;
                (*v406)(v319, v292, AssociatedTypeWitness);
                goto LABEL_77;
              }

              swift_getAssociatedConformanceWitness();
              v270 = v373;
              dispatch thunk of static AdditiveArithmetic.zero.getter();
              v271 = *v405;
              (*v405)(v339, v98);
              v272 = v381;
              swift_storeEnumTagMultiPayload();
              v273 = v270;
              v185 = v388;
              (*v333)(v388 + *(v267 + 48), v273, v272);
              v271(v340, v98);
            }
          }
        }

        else
        {
          v274 = *v406;
          v275 = v342;
          (*v406)(v342, v261, AssociatedTypeWitness);
          v267 = v385;
          v276 = *(v385 + 48);
          (*v375)(v185 + v276, v187);
          v274(v185 + v276, v275, AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
        }

LABEL_68:
        v277 = v384;
        CubicKeyframeHelper.curve.getter(v267, v384);
        v278 = *(v185 + *(v267 + 40));
        v417 = 0u;
        v418 = 0u;
        v419 = 1;
        v279 = v399;
        AnimationPath.CurveElement.init(curve:duration:constantVelocity:timingCurve:)(v277, 0, &v417, v399, v278);
        v280 = v411;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for AnimationPath();
        AnimationPath.append(_:)(v279);
        (*v408)(v279, v280);
        (*v364)(v401, v402);
        (*v405)(v414, v98);
        result = (*v348)(v185, v267);
LABEL_8:
        v79 = v390;
        v112 = v380;
LABEL_9:
        v113 = v416 + 1;
        if (v398 + v416 + 1 == -2)
        {
          return result;
        }
      }

      v206 = v332;
      v207 = v337;
      (*v335)(v332, v338, v337);
      v208 = v413;
      v209 = (*v334)(v206, 1, v413);
      v186 = v402;
      v187 = v381;
      v98 = v392;
      if (v209 != 1)
      {
        v225 = v328;
        (*v316)(v328, v206, v208);
        v226 = v373;
        (*(v410 + 24))(v208);
        (*v327)(v225, v208);
LABEL_53:
        swift_storeEnumTagMultiPayload();
        v235 = v226;
        v185 = v388;
        (*v333)(v388 + *(v183 + 44), v235, v187);
        goto LABEL_61;
      }

      (*v326)(v206, v207);
      v185 = v388;
      (*v375)(v388 + *(v183 + 44), v187);
LABEL_60:
      swift_storeEnumTagMultiPayload();
      goto LABEL_61;
    }

    __break(1u);
  }

  return result;
}