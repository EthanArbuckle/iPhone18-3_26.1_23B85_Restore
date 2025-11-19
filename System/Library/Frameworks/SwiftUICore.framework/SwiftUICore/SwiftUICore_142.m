uint64_t static GlassContainerTintConfigModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  *v43 = a2[2];
  *&v43[16] = v5;
  *&v43[32] = a2[4];
  *&v43[48] = *(a2 + 20);
  v6 = v42;
  v7 = *v43;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v41, &v38);
  Strong = swift_weakLoadStrong();
  v9 = outlined destroy of WeakBox<GlassContainerCache>(&v38);
  if (Strong)
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    swift_beginAccess();
    v11 = *(v6 + 16);
    type metadata accessor for PropertyList.Tracker();
    v12 = swift_allocObject();
    _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = MEMORY[0x1E69E7CC8];
    *(v13 + 24) = 0;
    *(v13 + 32) = v14;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 40) = v14;
    *(v13 + 48) = v15;
    *(v13 + 56) = 0;
    *(v12 + 16) = v13;
    *&v38 = __PAIR64__(v11, OffsetAttribute2);
    *(&v38 + 1) = Strong;
    *&v39 = v12;
    *(&v39 + 1) = v15;
    LODWORD(v40[0]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig();

    v16 = Attribute.init<A>(body:value:flags:update:)();

    v17 = *(&v42 + 1);
    v34 = *&v43[4];
    v35 = *&v43[20];
    v36 = *&v43[36];
    v37 = v41;
    *&v32[0] = __PAIR64__(*(v6 + 16), v16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(&v41, &v38);
    lazy protocol witness table accessor for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v15);
    _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v15;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 256;
    *(v20 + 88) = v19;

    *&v30 = v20;
    *(&v30 + 1) = v17;
    LODWORD(v31[0]) = v7 | 0x20;
    *(&v31[2] + 4) = v36;
    *(&v31[1] + 4) = v35;
    *(v31 + 4) = v34;
    v25 = v31[0];
    v26 = v31[1];
    v27 = v31[2];
    v29 = v37;
    v28 = HIDWORD(v36);
    v23 = v37;
    v24 = v30;
    v21 = outlined init with copy of _ViewInputs(&v29, &v38);
    a3(v21, &v23);

    v32[2] = v25;
    v32[3] = v26;
    v32[4] = v27;
    v33 = v28;
    v32[0] = v23;
    v32[1] = v24;
    outlined destroy of _ViewInputs(v32);
    v38 = v37;
    *&v39 = v20;
    *(&v39 + 1) = v17;
    LODWORD(v40[0]) = v7 | 0x20;
    *(v40 + 4) = v34;
    *(&v40[1] + 4) = v35;
    *(&v40[2] + 4) = v36;
    return outlined destroy of _ViewInputs(&v38);
  }

  else
  {
    v40[0] = *v43;
    v40[1] = *&v43[16];
    v40[2] = *&v43[32];
    LODWORD(v40[3]) = *&v43[48];
    v38 = v41;
    v39 = v42;
    return (a3)(v9, &v38);
  }
}

uint64_t GlassContainerResolvedTintConfig.updateValue()()
{
  v1 = v0;
  v35 = *MEMORY[0x1E69E9840];
  ++*(v0 + 32);
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;

  v6 = AGGraphGetValue();
  v8 = v7;
  v9 = *v6;
  v10 = v6[1];
  if (v4)
  {

    v11 = swift_retain_n();
    v12 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v11);
  }

  else
  {

    if ((v8 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v12 = 1;
  }

  v13 = *(v1 + 16);
  PropertyList.Tracker.reset()();
  if (v9)
  {
    v14 = *(v9 + 64);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v13 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v15 + 16));
  *(v15 + 24) = v14;
  os_unfair_lock_unlock((v15 + 16));

  v10 = v13;
LABEL_10:
  v33 = 0;
  v34 = MEMORY[0x1E69E7CD0];

  specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(v5, v9, v10, v1, &v33);

  v16 = v34;

  specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(v5, v16, v9, v10, v1);
  swift_bridgeObjectRelease_n();

  GlassContainerResolvedTintConfig.collectUnusedTints()();
  specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(v5, v1);

  v17 = *(v1 + 24);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v31 = v12;
    v32 = v4;
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = 0;
    v19 = v34;
    v21 = *(v34 + 16);
    v22 = 32 * v21;
    do
    {
      v23 = *(v17 + v20 + 32);
      v24 = *(v17 + v20 + 40);
      v25 = *(v17 + v20 + 56);
      v34 = v19;
      v26 = *(v19 + 24);
      v27 = v21 + 1;
      if (v21 >= v26 >> 1)
      {
        v30 = v24;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v21 + 1, 1);
        v24 = v30;
        v19 = v34;
      }

      *(v19 + 16) = v27;
      v28 = v19 + v22 + v20;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      *(v28 + 56) = v25;
      v20 += 32;
      v21 = v27;
      --v18;
    }

    while (v18);
    v4 = v32;
    v12 = v31;
  }

  if ((v4 | v12))
  {
    swift_beginAccess();
    specialized SeedValues.collect()();
    swift_endAccess();
    v34 = v19;
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

void GlassContainerResolvedTintConfig.collectUnusedTints()()
{
  v1 = v0;
  v3 = *(v0 + 24);
  v2 = (v0 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 32);
    v6 = (32 * v4) | 0x1C;
    while (v4 <= *(*v2 + 2))
    {
      v7 = v4 - 1;
      if (*&(*v2)[v6] != v5)
      {
        specialized Array.remove(at:)(v4 - 1, v18);
      }

      if (v4 >= 65)
      {
        specialized Array.remove(at:)(v4 - 1, v18);
      }

      v6 -= 32;
      --v4;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_10:
    v8 = *v2;
    v9 = *(*v2 + 2);
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      }

      if (v9 > *(v8 + 2))
      {
        __break(1u);
        return;
      }

      if (v9 == 1)
      {
        v10 = 0;
      }

      else
      {
        v11 = 0;
        v10 = v9 & 0x7FFFFFFFFFFFFFFELL;
        v12 = (v8 + 64);
        do
        {
          v13 = 1 << (v11 + 1);
          if ((v11 + 64) >= 0x80)
          {
            v14 = 0;
          }

          else
          {
            v14 = 1 << (v11 & 0x3E);
          }

          if ((v11 + 65) >= 0x80)
          {
            v13 = 0;
          }

          *(v12 - 4) = v14;
          *v12 = v13;
          v12 += 8;
          v11 += 2;
        }

        while (v10 != v11);
        if (v9 == v10)
        {
          goto LABEL_29;
        }
      }

      v15 = &v8[32 * v10 + 32];
      do
      {
        v16 = v10 + 1;
        if ((v10 + 64) >= 0x80)
        {
          v17 = 0;
        }

        else
        {
          v17 = 1 << v10;
        }

        *v15 = v17;
        v15 += 4;
        v10 = v16;
      }

      while (v9 != v16);
LABEL_29:
      *v2 = v8;
    }
  }
}

uint64_t closure #1 in GlassContainerResolvedTintConfig.updateRemainingTints(resolved:updatedIDs:env:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(result + 16);
  v42[0] = *result;
  v42[1] = v12;
  v43 = *(result + 32);
  v13 = *(result + 64);
  if (!v13)
  {
    return result;
  }

  if ((specialized Set.contains(_:)(v42, a2) & 1) == 0)
  {
    v32[0] = a3;
    v32[1] = a4;
    (*(*v13 + 120))(&v33, v32);
    v18 = *(a5 + 24);
    v19 = *(v18 + 2);
    if (v19 >= 0x40)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1 << v19;
    }

    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(&v33 + 1);
    LODWORD(v7) = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
    if (!v19)
    {
LABEL_31:
      v24 = *(a5 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 24) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        *(a5 + 24) = v18;
      }

      v27 = *(v18 + 2);
      v26 = *(v18 + 3);
      if (v27 >= v26 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v18);
        *(a5 + 24) = v18;
      }

      *(v18 + 2) = v27 + 1;
      v28 = &v18[32 * v27];
      *(v28 + 4) = v20;
      *(v28 + 10) = v7;
      *(v28 + 11) = v8;
      *(v28 + 12) = v9;
      *(v28 + 13) = v10;
      *(v28 + 14) = v11;
      *(v28 + 15) = v24;
LABEL_36:
      v29 = *(a5 + 8);
      swift_beginAccess();
      v30 = *(v29 + 192);
      *&v37 = v20;
      *(&v37 + 1) = __PAIR64__(LODWORD(v8), LODWORD(v7));
      v38 = v9;
      v39 = v10;
      v40 = v11;
      v41 = v30;

      outlined init with copy of GlassContainer.Entry.ModelID(v42, v32);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v32[0] = *(v29 + 184);
      *(v29 + 184) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v37, v42, v31);
      outlined destroy of GlassContainer.Entry.ModelID(v42);
      *(v29 + 184) = v32[0];
      swift_endAccess();
    }

    a3 = 0;
    v5 = 0;
    while (1)
    {
      v21 = &v18[a3];
      if (*&v18[a3 + 40] == v7)
      {
        v22 = v21[11] == v8 && v21[12] == v9;
        v23 = v22 && v21[13] == v10;
        if (v23 && v21[14] == v11)
        {
          break;
        }
      }

LABEL_13:
      ++v5;
      a3 += 32;
      if (v19 == v5)
      {
        goto LABEL_31;
      }
    }

    if (v5 <= 0x3F)
    {
      v20 = 1 << v5;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(a5 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 24) = v18;
      if (result)
      {
LABEL_29:
        if (v5 >= *(v18 + 2))
        {
          __break(1u);
          return result;
        }

        *&v18[a3 + 60] = v6;
        goto LABEL_36;
      }
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
    v18 = result;
    *(a5 + 24) = result;
    goto LABEL_29;
  }
}

float GlassEffectContainerTintConfiguration.Element.init(tags:color:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a2 + 16);
  *a3 = a1;
  *(a3 + 8) = *a2;
  *(a3 + 24) = result;
  return result;
}

uint64_t EnvironmentValues.glassEffectContainerTintConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v1, v2);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v3, *v1);
  }
}

uint64_t protocol witness for Rule.value.getter in conformance GlassContainerTintEnvironment@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v5 = *AGGraphGetValue();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(a1, v5);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v4, *a1);
  }
}

float GlassEffectContainerTintConfiguration.Element.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 GlassEffectContainerTintConfiguration.Element.color.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = a1[1].n128_u32[0];
  return result;
}

uint64_t GlassEffectContainerTintConfiguration.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EnvironmentValues.glassEffectContainerTintConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v2, a1);
}

uint64_t key path getter for EnvironmentValues.glassEffectContainerTintConfiguration : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.glassEffectContainerTintConfiguration : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v4, *a2);
  }
}

void (*EnvironmentValues.glassEffectContainerTintConfiguration.modify(uint64_t **a1))(uint64_t **a1, char a2)
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
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE037GlassEffectContainerTintConfigurationI033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt1g5(v5, v4);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>();
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE037GlassEffectContainerTintConfigurationV033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt0B5(v5, v10);
    if (v8)
    {
      *v4 = v8[9];
    }

    else
    {
      *v4 = MEMORY[0x1E69E7CC0];
    }
  }

  return EnvironmentValues.glassEffectContainerTintConfiguration.modify;
}

void EnvironmentValues.glassEffectContainerTintConfiguration.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

float MaterialEffectContainerTintConfiguration.Element.init(tags:color:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a2 + 16);
  *a3 = a1;
  *(a3 + 8) = *a2;
  *(a3 + 24) = result;
  return result;
}

uint64_t (*MaterialEffectContainerTintConfiguration.Element.tags.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Text.LineStyle.nsUnderlineStyle.modify;
}

float (*MaterialEffectContainerTintConfiguration.Element.color.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  return MaterialEffectContainerTintConfiguration.Element.color.modify;
}

float MaterialEffectContainerTintConfiguration.Element.color.modify(uint64_t *a1)
{
  v1 = *a1;
  result = *(a1 + 6);
  *(v1 + 8) = *(a1 + 1);
  *(v1 + 24) = result;
  return result;
}

uint64_t EnvironmentValues.materialEffectContainerTintConfiguration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = 0;
    v5 = v17;
    v6 = *(v17 + 16);
    v7 = 32 * v6;
    do
    {
      v8 = *(v2 + v4 + 32);
      v9 = *(v2 + v4 + 40);
      v10 = *(v2 + v4 + 56);
      v11 = *(v17 + 24);
      v12 = v6 + 1;
      if (v6 >= v11 >> 1)
      {
        v16 = *(v2 + v4 + 40);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v6 + 1, 1);
        v9 = v16;
      }

      *(v17 + 16) = v12;
      v13 = v17 + v7 + v4;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      *(v13 + 56) = v10;
      v4 += 32;
      v6 = v12;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE037GlassEffectContainerTintConfigurationF033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Tt2B5(v1, v5);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE037GlassEffectContainerTintConfigurationK033_EC08899B622ECCACC85E95BA1EEBE316LLVG_Ttg5(v14, *v1);
  }
}

uint64_t (*EnvironmentValues.materialEffectContainerTintConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  EnvironmentValues.materialEffectContainerTintConfiguration.getter(a1);
  return EnvironmentValues.materialEffectContainerTintConfiguration.modify;
}

uint64_t EnvironmentValues.materialEffectContainerTintConfiguration.modify(uint64_t *a1, char a2)
{
  if (a2)
  {
    v3 = *a1;

    EnvironmentValues.materialEffectContainerTintConfiguration.setter(&v3);
  }

  else
  {
    v3 = *a1;
    return EnvironmentValues.materialEffectContainerTintConfiguration.setter(&v3);
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.GlassEffectContainerTintConfigurationKey>);
    }
  }
}

BOOL specialized static MaterialEffectContainerTintConfiguration.Element.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = ~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 8), *(a2 + 8)), xmmword_18DDA9F30)) & 0xF;
  v3 = *a1 == *a2 && v2 == 0;
  return v3 && *(a1 + 24) == *(a2 + 24);
}

unint64_t lazy protocol witness table accessor for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig()
{
  result = lazy protocol witness table cache variable for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig;
  if (!lazy protocol witness table cache variable for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment()
{
  result = lazy protocol witness table cache variable for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment;
  if (!lazy protocol witness table cache variable for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment);
  }

  return result;
}

uint64_t outlined destroy of SeedValue<GlassContainer.EntryState>(uint64_t a1)
{
  _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_0(0, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for GlassContainerResolvedTintConfig()
{
}

uint64_t initializeWithCopy for GlassContainerResolvedTintConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for GlassContainerResolvedTintConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for GlassContainerResolvedTintConfig(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainerResolvedTintConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for GlassContainerResolvedTintConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassContainerResolvedTintConfig(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassContainerResolvedTintConfig and conformance GlassContainerResolvedTintConfig();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassContainerTintEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassContainerTintEnvironment and conformance GlassContainerTintEnvironment();
  *(a1 + 8) = result;
  return result;
}

uint64_t _ContentShapeKindModifier.init(shape:eoFill:kind:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _ContentShapeKindModifier();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = *a3;
  return result;
}

uint64_t _ContentShapeKindModifier.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  Shape.effectivePath(in:)(*(a3 + 16), *(a3 + 24), v9, a5);
  Path.contains(points:eoFill:origin:)(a1, a2, a4, 0.0, 0.0);
  return outlined destroy of Path(v9);
}

void _ContentShapeKindModifier.contentPath(size:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(v3 + *(a1 + 40)))
  {
    Shape.effectivePath(in:)(*(a1 + 16), *(a1 + 24), v8, a3);
    v5 = v8[0];
    v7 = v8[1];
    v6 = v9;
  }

  else
  {
    v5 = 0uLL;
    v6 = 6;
    v7 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
}

void _ContentShapeKindModifier.contentPath(size:kind:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if ((*(v4 + *(a2 + 40)) & *a1) != 0)
  {
    Shape.effectivePath(in:)(*(a2 + 16), *(a2 + 24), v9, a4);
    v6 = v9[0];
    v7 = v9[1];
    v8 = v10;
  }

  else
  {
    v6 = 0uLL;
    v8 = 6;
    v7 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v8;
}

double protocol witness for ContentResponder.contentPath(size:) in conformance _ContentShapeKindModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  _ContentShapeKindModifier.contentPath(size:)(a1, v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

double protocol witness for ContentResponder.contentPath(size:kind:) in conformance _ContentShapeKindModifier<A>@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  _ContentShapeKindModifier.contentPath(size:kind:)(a1, a2, v7, a4);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t ContentShapeKindResponder.hitTestPolicy(options:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *a1;
  result = MultiViewResponder.hitTestPolicy(options:)(&v6);
  v5 = v7;
  if (v7 != 1 && (*(v2 + 216) & 1) != 0)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t ContentShapeKindResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v19[0] = *a3;
  ContentShapeKindResponder.hitTestPolicy(options:)(v19, v18);
  if (LOBYTE(v18[0]) == 1)
  {
    swift_beginAccess();
    v9 = *(v4 + 40);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = v9;
  }

  if ((*(v4 + 216) & 1) == 0)
  {
    v19[0] = v8;
    return MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | ((HIDWORD(a2) & 1) << 32), v19, a4);
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = HIDWORD(a2) & 1;
  if (byte_1ED53C51C == 1)
  {
    v13 = -1.0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = -1.0;
  if (static Semantics.forced >= v11)
  {
LABEL_13:
    v17[0] = v8;
    MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | (v12 << 32), v17, v18);
    v13 = v18[1];
  }

LABEL_14:
  *&v18[3] = v8;
  swift_beginAccess();
  v14 = *(v4 + 40);
  swift_beginAccess();
  type metadata accessor for _ContentShapeKindModifier();
  v15 = type metadata accessor for ContentResponderHelper();

  ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)(a1, a2 | (v12 << 32), v14, v15, a4);
  swift_endAccess();

  v16 = *(a4 + 8);
  if (v16 <= v13)
  {
    v16 = v13;
  }

  *(a4 + 8) = v16;
  return result;
}

uint64_t ContentShapeKindResponder.addContentPath(to:kind:in:observer:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = v5;
  v10 = result;
  v11 = *v5;
  v12 = *a2;
  if ((v5[27] & *a2) != 0)
  {
    v27[0] = v5[27] & *a2;
    v13 = *(v11 + 424);
    swift_beginAccess();
    type metadata accessor for _ContentShapeKindModifier();
    v14 = type metadata accessor for ContentResponderHelper();
    v5 = (Strong + v13);
    ContentResponderHelper.addContentPath(to:kind:in:observer:)(v10, v27, a3, a4, a5, v14);
    result = swift_endAccess();
    v15 = Strong[27];
    if ((v15 & v12) != 0)
    {
      v16 = ~v15;
    }

    else
    {
      v16 = -1;
    }

    v12 &= v16;
  }

  if (v12)
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v26 = Strong;
    v5 = Strong[10];
    v17 = v5[2];
    if (!v17)
    {
LABEL_15:
      v27[1] = a5;
      swift_unknownObjectWeakInit();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      Strong = v26;
      v26[10] = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v18 = 0;
    v19 = (v5 + 4);
    while (1)
    {
      if (v18 >= v5[2])
      {
        __break(1u);
        goto LABEL_31;
      }

      outlined init with copy of ContentPathObservers.Observer(v19, v27);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of ContentPathObservers.Observer(v27);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a4)
        {
          break;
        }
      }

      ++v18;
      v19 += 16;
      if (v17 == v18)
      {
        goto LABEL_15;
      }
    }

    for (Strong = v26; ; Strong[10] = v5)
    {
      swift_endAccess();
LABEL_20:
      result = swift_beginAccess();
      v18 = Strong[5];
      if (v18 >> 62)
      {
LABEL_31:
        result = __CocoaSet.count.getter();
        v23 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          return result;
        }
      }

      if (v23 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_34:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      Strong[10] = v5;
LABEL_16:
      v22 = v5[2];
      v21 = v5[3];
      if (v22 >= v21 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v5);
      }

      v5[2] = v22 + 1;
      outlined init with take of ContentPathObservers.Observer(v27, &v5[2 * v22 + 4]);
    }

    v24 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AC03C0](v24, v18);
      }

      else
      {
        v25 = *(v18 + 8 * v24 + 32);
      }

      ++v24;
      v27[0] = v12;
      (*(*v25 + 192))(v10, v27, a3, a4, a5);
    }

    while (v23 != v24);
  }

  return result;
}

unint64_t ContentShapeKindResponder.descriptionName.getter()
{
  swift_beginAccess();
  _StringGuts.grow(_:)(41);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  v1 = ContentShapeKinds.description.getter();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](10272, 0xE200000000000000);
  v2 = Double.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](8745, 0xE200000000000000);
  return 0xD00000000000001ALL;
}

uint64_t ContentShapeKindResponder.extendPrintTree(string:)()
{
  v1 = *v0;
  type metadata accessor for _ContentShapeKindModifier();
  v2 = type metadata accessor for ContentResponderHelper();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  v6 = v0 + *(v1 + 424);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = ContentResponderHelper.globalPosition.getter(v2);
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x193ABEDD0](91, 0xE100000000000000);
  v10 = Double.description.getter();
  MEMORY[0x193ABEDD0](v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = Double.description.getter();
  MEMORY[0x193ABEDD0](v11);

  MEMORY[0x193ABEDD0](4202589, 0xE300000000000000);
  *&v13[1] = v7;
  v13[2] = v9;
  type metadata accessor for (CGFloat, CGFloat)();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](v14, v15);
}

uint64_t ContentShapeKindResponder.init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v5;
  v10[4] = *(a1 + 64);
  v11 = *(a1 + 80);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  *(v2 + 27) = 1;
  v7 = *(v4 + 424);
  v8 = type metadata accessor for _ContentShapeKindModifier();
  ContentResponderHelper.init()(v8, &v2[v7]);
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v10, a2);
}

uint64_t ContentShapeKindResponder.__ivar_destroyer()
{
  v1 = *(*v0 + 424);
  type metadata accessor for _ContentShapeKindModifier();
  v2 = type metadata accessor for ContentResponderHelper();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ContentShapeKindResponder.deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(*v0 + 424);
  type metadata accessor for _ContentShapeKindModifier();
  v2 = type metadata accessor for ContentResponderHelper();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContentShapeKindResponder.__deallocating_deinit()
{
  ContentShapeKindResponder.deinit();

  return swift_deallocClassInstance();
}

void *initializeBufferWithCopyOfBuffer for _ContentShapeKindModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    *(((v3 + v5) & 0xFFFFFFFFFFFFFFF8) + 8) = *(((a2 + v5) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  return v3;
}

uint64_t initializeWithCopy for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithCopy for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t initializeWithTake for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t assignWithTake for _ContentShapeKindModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  *((v7 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

__n128 specialized Array.append(_:)(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[9 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6[12] = *(a1 + 64);
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  *(v6 + 3) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[10 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = result;
  *(v6 + 4) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[10 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = result;
  *(v6 + 4) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[18 * v5];
  *(v6 + 2) = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  result = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  *(v6 + 9) = *(a1 + 112);
  *(v6 + 10) = v12;
  *(v6 + 7) = result;
  *(v6 + 8) = v11;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[11 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v6[14] = *(a1 + 80);
  *(v6 + 5) = v9;
  *(v6 + 6) = v10;
  *(v6 + 4) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[12 * v5];
  v7 = *(a1 + 16);
  *(v6 + 2) = *a1;
  *(v6 + 3) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  *(v6 + 6) = *(a1 + 64);
  *(v6 + 7) = v10;
  *(v6 + 4) = result;
  *(v6 + 5) = v9;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[7 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v6[10] = *(a1 + 48);
  *(v6 + 3) = v8;
  *(v6 + 4) = v9;
  *(v6 + 2) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[10 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = result;
  *(v6 + 4) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[17 * v5];
  *(v6 + 2) = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  result = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v6[20] = *(a1 + 128);
  *(v6 + 8) = v11;
  *(v6 + 9) = v12;
  *(v6 + 7) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[18 * v5];
  *(v6 + 2) = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  *(v6 + 5) = *(a1 + 48);
  *(v6 + 6) = v9;
  *(v6 + 3) = v7;
  *(v6 + 4) = v8;
  result = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  *(v6 + 9) = *(a1 + 112);
  *(v6 + 10) = v12;
  *(v6 + 7) = result;
  *(v6 + 8) = v11;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[9 * v5];
  *(v6 + 2) = *a1;
  result = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6[12] = *(a1 + 64);
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  *(v6 + 3) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[8 * v5];
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  *(v6 + 4) = *(a1 + 32);
  *(v6 + 5) = v9;
  *(v6 + 2) = result;
  *(v6 + 3) = v8;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[48 * v5];
  result = *a1;
  v8 = *(a1 + 32);
  *(v6 + 3) = *(a1 + 16);
  *(v6 + 4) = v8;
  *(v6 + 2) = result;
  *v1 = v3;
  return result;
}

__n128 specialized Array.append(_:)(__int128 *a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[16 * v5];
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  *(v6 + 4) = a1[2];
  *(v6 + 5) = v9;
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  result = a1[4];
  v11 = a1[5];
  v12 = a1[7];
  *(v6 + 8) = a1[6];
  *(v6 + 9) = v12;
  *(v6 + 6) = result;
  *(v6 + 7) = v11;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[21 * v5];
  v7 = *a1;
  v8 = a1[2];
  *(v6 + 3) = a1[1];
  *(v6 + 4) = v8;
  *(v6 + 2) = v7;
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  *(v6 + 7) = a1[5];
  *(v6 + 8) = v11;
  *(v6 + 5) = v9;
  *(v6 + 6) = v10;
  result = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  v6[24] = *(a1 + 20);
  *(v6 + 10) = v13;
  *(v6 + 11) = v14;
  *(v6 + 9) = result;
  *v1 = v3;
  return result;
}

{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[112 * v5];
  v7 = *a1;
  v8 = a1[2];
  *(v6 + 3) = a1[1];
  *(v6 + 4) = v8;
  *(v6 + 2) = v7;
  result = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  *(v6 + 7) = a1[5];
  *(v6 + 8) = v11;
  *(v6 + 5) = result;
  *(v6 + 6) = v10;
  *v1 = v3;
  return result;
}

void *specialized Array.append(_:)(const void *a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  result = memcpy(&v3[37 * v5 + 4], a1, 0x128uLL);
  *v1 = v3;
  return result;
}

void *specialized Animation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *v30 = a4;
  *&v30[1] = a5;
  *&v30[2] = a6;
  *&v30[3] = a7;
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  if (v16 == MEMORY[0x1E69E63B0])
  {
    *v29 = a4;
    result = (*(*a2 + 120))(&v31, v29, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a8);
    v22 = v31;
    v24 = v32;
  }

  else
  {
    v17 = v16;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v17 == v18)
    {
      v25 = v18;
      *v29 = a4;
      *&v29[1] = a5;
      *&v29[2] = a6;
      *&v29[3] = a7;
      v26 = *(*a2 + 120);
      v27 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      result = v26(&v31, v29, a1, v25, v27, a8);
    }

    else
    {
      v19 = *(*a2 + 120);
      v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
      result = v19(&v31, v30, a1, v17, v20, a8);
    }

    v22 = v31;
    v23 = v33;
    v24 = v34;
  }

  v28 = v32;
  *a3 = v22;
  *(a3 + 8) = v28;
  *(a3 + 16) = v23;
  *(a3 + 32) = v24 & 1;
  return result;
}

uint64_t specialized Animation.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *v23 = a3;
  *&v23[1] = a4;
  *&v23[2] = a5;
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *v21 = a3;
    (*(*a2 + 120))(&v22, v21, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a6);
    return v22;
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v18 = v14;
      *v21 = a3;
      *&v21[1] = a4;
      *&v21[2] = a5;
      v19 = *(*a2 + 120);
      v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v19(&v22, v21, a1, v18, v20, a6);
    }

    else
    {
      v15 = *(*a2 + 120);
      v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
      v15(&v22, v23, a1, v13, v16, a6);
    }

    return v22;
  }
}

{
  *v23 = a3;
  *&v23[1] = a4;
  *&v23[2] = a5;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *v21 = a3;
    (*(*a2 + 120))(&v22, v21, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a6);
    return v22;
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v18 = v14;
      *v21 = a3;
      *&v21[1] = a4;
      *&v21[2] = a5;
      v19 = *(*a2 + 120);
      v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v19(&v22, v21, a1, v18, v20, a6);
    }

    else
    {
      v15 = *(*a2 + 120);
      v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
      v15(&v22, v23, a1, v13, v16, a6);
    }

    return v22;
  }
}

{
  *v23 = a3;
  *&v23[1] = a4;
  *&v23[2] = a5;
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *v21 = a3;
    (*(*a2 + 120))(&v22, v21, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a6);
    return v22;
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v18 = v14;
      *v21 = a3;
      *&v21[1] = a4;
      *&v21[2] = a5;
      v19 = *(*a2 + 120);
      v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v19(&v22, v21, a1, v18, v20, a6);
    }

    else
    {
      v15 = *(*a2 + 120);
      v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
      v15(&v22, v23, a1, v13, v16, a6);
    }

    return v22;
  }
}

uint64_t specialized Animation.animate<A>(value:time:context:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, double a7)
{
  *&v21 = __PAIR64__(LODWORD(a4), LODWORD(a3));
  *(&v21 + 1) = __PAIR64__(LODWORD(a6), LODWORD(a5));
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
  if (v10 == MEMORY[0x1E69E63B0])
  {
    *&v19[0] = v21;
    (*(*a2 + 120))(&v20, v19, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, a7);
    return v20;
  }

  else
  {
    v11 = v10;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v11 == v12)
    {
      v16 = v12;
      v19[0] = v21;
      v17 = *(*a2 + 120);
      v18 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v17(&v20, v19, a1, v16, v18, a7);
    }

    else
    {
      v13 = *(*a2 + 120);
      v14 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
      v13(&v20, &v21, a1, v11, v14, a7);
    }

    return v20;
  }
}

uint64_t specialized Animation.animate<A>(value:time:context:)(__int128 *a1, uint64_t a2, uint64_t a3, double a4)
{
  v19 = *a1;
  LODWORD(v20) = *(a1 + 4);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
  if (v7 == MEMORY[0x1E69E63B0])
  {
    *&v16 = v19;
    (*(*a3 + 120))(&v18, &v16, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    return v18;
  }

  else
  {
    v8 = v7;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v8 == v9)
    {
      v13 = v9;
      v16 = v19;
      v17 = v20;
      v14 = *(*a3 + 120);
      v15 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v14(&v18, &v16, a2, v13, v15, a4);
    }

    else
    {
      v10 = *(*a3 + 120);
      v11 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
      v10(&v18, &v19, a2, v8, v11, a4);
    }

    return v18;
  }
}

{
  v19 = *a1;
  v20 = *(a1 + 2);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
  if (v7 == MEMORY[0x1E69E63B0])
  {
    *&v16 = v19;
    (*(*a3 + 120))(&v18, &v16, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    return v18;
  }

  else
  {
    v8 = v7;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v8 == v9)
    {
      v13 = v9;
      v16 = v19;
      v17 = v20;
      v14 = *(*a3 + 120);
      v15 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v14(&v18, &v16, a2, v13, v15, a4);
    }

    else
    {
      v10 = *(*a3 + 120);
      v11 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
      v10(&v18, &v19, a2, v8, v11, a4);
    }

    return v18;
  }
}

{
  v19 = *a1;
  v20 = *(a1 + 2);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  if (v7 == MEMORY[0x1E69E63B0])
  {
    *&v16 = v19;
    (*(*a3 + 120))(&v18, &v16, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a4);
    return v18;
  }

  else
  {
    v8 = v7;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v8 == v9)
    {
      v13 = v9;
      v16 = v19;
      v17 = v20;
      v14 = *(*a3 + 120);
      v15 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v14(&v18, &v16, a2, v13, v15, a4);
    }

    else
    {
      v10 = *(*a3 + 120);
      v11 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
      v10(&v18, &v19, a2, v8, v11, a4);
    }

    return v18;
  }
}

void *specialized Animation.animate<A>(value:time:context:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  v27 = *(a1 + 4);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
  if (v10 == MEMORY[0x1E69E63B0])
  {
    *&v24[0] = v25;
    result = (*(*a3 + 120))(v28, v24, a2, MEMORY[0x1E69E63B0], &protocol witness table for Double, a5);
    v16 = v28[0];
  }

  else
  {
    v11 = v10;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v11 == v12)
    {
      v18 = v12;
      v24[0] = v25;
      v24[1] = v26;
      v19 = *(*a3 + 120);
      v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      result = v19(v28, v24, a2, v18, v20, a5);
    }

    else
    {
      v13 = *(*a3 + 120);
      v14 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
      result = v13(v28, &v25, a2, v11, v14, a5);
    }

    v16 = v28[0];
    v17 = v29;
  }

  v21 = v28[1];
  v22 = v30;
  v23 = v31;
  *a4 = v16;
  *(a4 + 8) = v21;
  *(a4 + 16) = v17;
  *(a4 + 32) = v22;
  *(a4 + 40) = v23;
  return result;
}

unint64_t *AnimatorState.__allocating_init(animation:interval:at:in:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = specialized AnimatorState.__allocating_init(animation:interval:at:in:)(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a2);
  return v6;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(void *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 89) <= 1u)
  {
    if (!*(v3 + 89))
    {
      *(v3 + 48) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 89) = v10;
      goto LABEL_11;
    }

    *(v3 + 89) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 64) = v8 - *(v3 + 48) + a3;
    *(v3 + 48) = a3;
LABEL_19:
    swift_beginAccess();
    v34 = *(v3 + 72);
    v35 = *(v4 + 80);

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v34, v35);

    swift_beginAccess();
    v36 = *(v4 + 32);
    v37 = *(v4 + 40);

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v36, v37);

    return 0;
  }

  if (*(v3 + 89) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 48))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 48) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 48);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 112);

  v43[0] = v14;
  v43[1] = AGCreateWeakAttribute();
  v44 = 0;
  v45 = v15;
  v16 = *(v4 + 120);
  if (v16)
  {
    v17 = *(v4 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>, MEMORY[0x1E69E6720]);
    v38[3] = v20;
    v38[0] = v16;
    v38[1] = v17;
    specialized Dictionary.subscript.setter(v38, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 40);
  v41 = *(v4 + 32);
  v42 = v22;
  v23 = *(*v21 + 120);
  type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);

  v23(&v39, &v41, v43, v25, v26, v13);

  v27 = v39;
  if (!v39)
  {

    return 1;
  }

  v28 = v40;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v45, a2 | ((HIDWORD(a2) & 1) << 32), v13);
  *(v4 + 24) = v43[0];

  v29 = v28 & 1;
  _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v27, v28 & 1);
  v30 = *(v4 + 32);
  v31 = *(v4 + 40);

  _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(a1, v30, v31);

  swift_beginAccess();
  *(v4 + 72) = v27;
  *(v4 + 80) = v29;

  *(v4 + 64) = a3;
  v32 = *(v4 + 56);
  if (v32 > 0.0)
  {
    *(v4 + 64) = v32 * (round(a3 / v32) + 1.0);
  }

  return 0;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(uint64_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    swift_beginAccess();
    v11 = *(v3 + 80);
    v200 = a1;
    *&v216 = *a1;
    v222 = *(a1 + 1);
    v214[0] = v11;
    v220 = *(v3 + 88);
    v199 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v191 = v186;
    v12 = MEMORY[0x1E69E7DE0];
    v13 = *(MEMORY[0x1E69E7DE0] - 8);
    v14 = v13[8];
    v15 = MEMORY[0x1EEE9AC00](v199);
    v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
    v192 = v14;
    v193 = v16;
    v17 = v13[2];
    v18 = v17(v186 - v16, &v216, v12, v15);
    v194 = v17;
    v195 = (v13 + 2);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v197 = v4;
    v17(v186 - v16, v214, v12, v19);
    v196 = *(v199 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v20 = v13[1];
    v198 = (v13 + 1);
    v199 = v20;
    v20(v186 - v16, v12);
    v20(v186 - v16, v12);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    v22 = v21;
    v23 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v187 = v186;
    v24 = *(v22 - 8);
    v25 = v24[8];
    v26 = MEMORY[0x1EEE9AC00](v23);
    v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    v189 = v25;
    v190 = v27;
    v28 = v24[2];
    v29 = v28(v186 - v27, &v222, v22, v26);
    v188 = v28;
    v30 = MEMORY[0x1EEE9AC00](v29);
    v31(v186 - v27, &v220, v22, v30);
    v191 = *(v23 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v32 = v24[1];
    v32(v186 - v27, v22);
    v32(v186 - v27, v22);
    v33 = v218;
    v34 = v223;
    v35 = v224;
    v32(&v223, v22);
    v36 = MEMORY[0x1E69E7DE0];
    (v199)(&v218, MEMORY[0x1E69E7DE0]);
    v37 = v200;
    *v200 = v33;
    v37[1] = v34;
    v37[2] = v35;
    v38 = v197;
    v39 = swift_beginAccess();
    v187 = v186;
    v40 = v38[4];
    v210[0] = v33;
    v201[0] = v34;
    v201[1] = v35;
    *&v208 = v40;
    v225 = *(v38 + 5);
    v41 = MEMORY[0x1EEE9AC00](v39);
    v42 = v193;
    v43 = v186 - v193;
    v44 = v36;
    v45 = v194;
    v46 = (v194)(v186 - v193, v210, v44, v41);
    v197 = v186;
    v47 = MEMORY[0x1EEE9AC00](v46);
    v48 = v186 - v42;
    v49 = v186 - v42;
    v50 = MEMORY[0x1E69E7DE0];
    v45(v49, &v208, MEMORY[0x1E69E7DE0], v47);
    v51 = v50;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v52 = v50;
    v53 = v199;
    (v199)(v48, v52);
    v54 = v53(v43, v51);
    v197 = v186;
    v55 = MEMORY[0x1EEE9AC00](v54);
    v56 = v190;
    v57 = v186 - v190;
    v58 = v188;
    v59 = (v188)(v186 - v190, v201, v22, v55);
    v60 = MEMORY[0x1EEE9AC00](v59);
    v58(v186 - v56, &v225, v22, v60);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v32(v186 - v56, v22);
    v32(v57, v22);
    v61 = v212[0];
    v62 = v206;
    v63 = v207;
    v32(&v206, v22);
    v64 = v212;
    goto LABEL_6;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_12:
      *(v3 + 109) = v10;
      goto LABEL_13;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_13;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
    swift_beginAccess();
    v139 = *(v3 + 80);
    v200 = a1;
    v214[0] = *a1;
    v222 = *(a1 + 1);
    v212[0] = v139;
    v220 = *(v3 + 88);
    v199 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v140 = MEMORY[0x1E69E7DE0];
    v141 = *(MEMORY[0x1E69E7DE0] - 8);
    v142 = v141[8];
    v143 = MEMORY[0x1EEE9AC00](v199);
    v144 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
    v193 = v142;
    v194 = v144;
    v145 = v141[2];
    v146 = v145(v186 - v144, v214, v140, v143);
    v195 = v145;
    v196 = v141 + 2;
    v192 = v186;
    v147 = MEMORY[0x1EEE9AC00](v146);
    v148(v186 - v144, v212, v140, v147);
    v197 = *(v199 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v149 = v141[1];
    v198 = (v141 + 1);
    v199 = v149;
    v149(v186 - v144, v140);
    v149(v186 - v144, v140);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    v151 = v150;
    v152 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v188 = v186;
    v153 = *(v151 - 8);
    v154 = v153[8];
    v155 = MEMORY[0x1EEE9AC00](v152);
    v156 = v186 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    v190 = v154;
    v191 = ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = v153[2];
    v158 = v157(v156, &v222, v151, v155);
    v189 = v157;
    v159 = MEMORY[0x1EEE9AC00](v158);
    v160(v156, &v220, v151, v159);
    v192 = *(v152 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v161 = v153[1];
    v161(v156, v151);
    v161(v156, v151);
    v162 = v216;
    v163 = v223;
    v164 = v224;
    v161(&v223, v151);
    v165 = MEMORY[0x1E69E7DE0];
    (v199)(&v216, MEMORY[0x1E69E7DE0]);
    v166 = v200;
    *v200 = v162;
    v166[1] = v163;
    v166[2] = v164;
    v167 = swift_beginAccess();
    v188 = v186;
    v168 = *(v4 + 32);
    *&v208 = v162;
    *&v225 = v163;
    *(&v225 + 1) = v164;
    v219[0] = v168;
    v218 = *(v4 + 40);
    v169 = MEMORY[0x1EEE9AC00](v167);
    v170 = v194;
    v171 = v195;
    v172 = (v186 - v194);
    v173 = (v195)(v186 - v194, &v208, v165, v169);
    v187 = v186;
    v174 = MEMORY[0x1EEE9AC00](v173);
    v175 = (v186 - v170);
    v176 = (v186 - v170);
    v177 = MEMORY[0x1E69E7DE0];
    v171(v176, v219, MEMORY[0x1E69E7DE0], v174);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v178 = v199;
    (v199)(v175, v177);
    v179 = v178(v172, v177);
    v197 = v186;
    v180 = MEMORY[0x1EEE9AC00](v179);
    v181 = v191;
    v182 = (v186 - v191);
    v183 = v189;
    v184 = (v189)(v186 - v191, &v225, v151, v180);
    v185 = MEMORY[0x1EEE9AC00](v184);
    v183(v186 - v181, &v218, v151, v185);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v161((v186 - v181), v151);
    v161(v182, v151);
    v61 = v210[0];
    v62 = v206;
    v63 = v207;
    v161(&v206, v151);
    v64 = v210;
LABEL_6:
    (v199)(v64, MEMORY[0x1E69E7DE0]);
    result = 0;
    v66 = v200;
    *v200 = v61;
    v66[1] = v62;
    v66[2] = v63;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v67 = fmax(v7, 0.0166666667);
    v68 = v67 + v67;
    if (v67 + v67 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v68;
      }
    }

    v10 = 3;
    goto LABEL_12;
  }

LABEL_13:
  v69 = a3 - *(v3 + 56);
  swift_beginAccess();
  v70 = *(v3 + 24);
  v71 = *(v4 + 128);

  *&v225 = v70;
  *(&v225 + 1) = AGCreateWeakAttribute();
  v226 = 0;
  v227 = v71;
  v72 = *(v4 + 136);
  if (v72)
  {
    v73 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
    v75 = v74;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>, MEMORY[0x1E69E6720]);
    v205 = v76;
    v202 = v72;
    v203 = v73;
    specialized Dictionary.subscript.setter(&v202, v75);
  }

  swift_beginAccess();
  v77 = *(v4 + 16);
  swift_beginAccess();
  v78 = *(v4 + 48);
  v220 = *(v4 + 32);
  v221 = v78;
  v79 = *(*v77 + 120);
  type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
  v81 = v80;
  v82 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);

  v79(&v202, &v220, &v225, v81, v82, v69);

  if (v205)
  {

    return 1;
  }

  else
  {
    v84 = v203;
    v83 = v204;
    v85 = v202;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v227, a2 | ((HIDWORD(a2) & 1) << 32), v69);
    *(v4 + 24) = v225;

    v200 = a1;
    v217 = *a1;
    v216 = *(a1 + 1);
    v214[1] = v83;
    v215 = v85;
    v214[0] = v84;
    v199 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v86 = MEMORY[0x1E69E7DE0];
    v87 = *(MEMORY[0x1E69E7DE0] - 8);
    v88 = v87[8];
    v89 = MEMORY[0x1EEE9AC00](v199);
    v90 = v186 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    v192 = v88;
    v193 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
    v91 = v87[2];
    v92 = v91(v90, &v217, v86, v89);
    v194 = v91;
    v195 = (v87 + 2);
    v197 = v186;
    v93 = MEMORY[0x1EEE9AC00](v92);
    v94(v90, &v215, v86, v93);
    v196 = *(v199 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v95 = v87[1];
    v198 = v95;
    v199 = (v87 + 1);
    v95(v90, v86);
    v95(v90, v86);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    v97 = v96;
    v197 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v187 = v186;
    v98 = *(v97 - 8);
    v99 = v98[8];
    v100 = MEMORY[0x1EEE9AC00](v197);
    v101 = v186 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    v189 = v99;
    v190 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
    v102 = v98[2];
    v103 = v102(v101, &v216, v97, v100);
    v188 = v102;
    v104 = MEMORY[0x1EEE9AC00](v103);
    v102(v101, v214, v97, v104);
    v191 = v197[1];
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v197 = v4;
    v105 = v98[1];
    v105(v101, v97);
    v105(v101, v97);
    v107 = *(&v218 + 1);
    v106 = v219[0];
    v108 = v218;
    v105(&v218, v97);
    v109 = MEMORY[0x1E69E7DE0];
    v110 = v198(v219, MEMORY[0x1E69E7DE0]);
    v187 = v186;
    v111 = v200;
    *v200 = v106;
    v111[1] = v108;
    v111[2] = v107;
    v112 = v197[4];
    v210[1] = v107;
    v211 = v106;
    v209 = v112;
    v210[0] = v108;
    v208 = *(v197 + 5);
    v113 = MEMORY[0x1EEE9AC00](v110);
    v114 = v193;
    v115 = v186 - v193;
    v116 = v109;
    v117 = v194;
    v118 = (v194)(v186 - v193, &v211, v116, v113);
    v186[1] = v186;
    v119 = MEMORY[0x1EEE9AC00](v118);
    v120 = v186 - v114;
    v121 = v186 - v114;
    v122 = MEMORY[0x1E69E7DE0];
    v117(v121, &v209, MEMORY[0x1E69E7DE0], v119);
    v123 = v122;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v124 = v122;
    v125 = v198;
    v198(v120, v124);
    v126 = v125(v115, v123);
    v196 = v186;
    v127 = MEMORY[0x1EEE9AC00](v126);
    v128 = v190;
    v129 = v186 - v190;
    v130 = v188;
    v131 = (v188)(v186 - v190, v210, v97, v127);
    v132 = MEMORY[0x1EEE9AC00](v131);
    v130(v186 - v128, &v208, v97, v132);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v105(v186 - v128, v97);
    v105(v129, v97);
    v134 = v212[1];
    v133 = v213;
    v135 = v212[0];
    v105(v212, v97);
    v136 = v197;
    v198(&v213, MEMORY[0x1E69E7DE0]);
    v137 = v200;
    *v200 = v133;
    v137[1] = v135;
    v137[2] = v134;
    swift_beginAccess();
    *(v136 + 11) = v84;
    *(v136 + 12) = v83;
    v136[9] = a3;
    *(v136 + 10) = v85;
    v138 = v136[8];
    if (v138 > 0.0)
    {
      v136[9] = v138 * (round(a3 / v138) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    swift_beginAccess();
    v11 = *(v3 + 80);
    v12 = *(v3 + 88);
    v13 = *(v3 + 96);
    v14 = a1[1];
    v15 = a1[2];
    v200[0] = *a1;
    v215 = v15;
    v216[0] = v14;
    v213 = v12;
    v214 = v11;
    v212 = v13;
    v191 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v187 = v182;
    v16 = MEMORY[0x1E69E7DE0];
    v17 = *(MEMORY[0x1E69E7DE0] - 8);
    v18 = v17[8];
    v19 = MEMORY[0x1EEE9AC00](v191);
    v189 = v4;
    v186 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v20 = v17[2];
    v21 = v20(v182 - v186, v200, v16, v19);
    v190 = a1;
    v22 = MEMORY[0x1EEE9AC00](v21);
    v23 = v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20(v23, &v214, v16, v22);
    v188 = v17 + 2;
    v24 = v20;
    v191 = *(v191 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v25 = v17[1];
    v25(v23, v16);
    v26 = (v25)(v23, v16);
    v187 = v182;
    v27 = MEMORY[0x1EEE9AC00](v26);
    v28 = v186;
    v29 = v24(v182 - v186, v216, v16, v27);
    v184 = v182;
    v30 = MEMORY[0x1EEE9AC00](v29);
    v24(v182 - v28, &v213, v16, v30);
    v31 = v24;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v25(v182 - v28, v16);
    v32 = (v25)(v182 - v28, v16);
    v187 = v182;
    v33 = MEMORY[0x1EEE9AC00](v32);
    v34 = v28;
    v35 = v31(v182 - v28, &v215, v16, v33);
    v184 = v182;
    v36 = MEMORY[0x1EEE9AC00](v35);
    v31(v182 - v28, &v212, v16, v36);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v25(v182 - v28, v16);
    v25(v182 - v28, v16);
    v37 = v199[0];
    v38 = v194[0];
    v39 = v192[0];
    v25(v192, v16);
    v25(v194, v16);
    v25(v199, v16);
    v41 = v189;
    v40 = v190;
    *v190 = v37;
    v40[1] = v38;
    v40[2] = v39;
    v42 = swift_beginAccess();
    v187 = v182;
    v43 = v41[4];
    v44 = v41[5];
    v45 = v41[6];
    v207 = v38;
    v208 = v37;
    v205 = v43;
    v206 = v39;
    v203 = v45;
    v204 = v44;
    v185 = v18;
    v46 = MEMORY[0x1EEE9AC00](v42);
    v47 = v31(v182 - v34, &v208, v16, v46);
    v189 = v182;
    v48 = MEMORY[0x1EEE9AC00](v47);
    v31(v182 - v34, &v205, v16, v48);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25(v182 - v34, v16);
    v49 = (v25)(v182 - v34, v16);
    v189 = v182;
    v50 = MEMORY[0x1EEE9AC00](v49);
    v51 = v31(v182 - v34, &v207, v16, v50);
    v187 = v182;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v31(v182 - v34, &v204, v16, v52);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25(v182 - v34, v16);
    v53 = (v25)(v182 - v34, v16);
    v189 = v182;
    v54 = MEMORY[0x1EEE9AC00](v53);
    v55 = v31(v182 - v34, &v206, v16, v54);
    v56 = MEMORY[0x1EEE9AC00](v55);
    v31(v182 - v34, &v203, v16, v56);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25(v182 - v34, v16);
    v25(v182 - v34, v16);
    v58 = v210;
    v57 = v211;
    v59 = v209;
    v25(&v209, v16);
    v25(&v210, v16);
    v60 = &v211;
    goto LABEL_6;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_12:
      *(v3 + 109) = v10;
      goto LABEL_13;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_13;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
    swift_beginAccess();
    v138 = *(v3 + 80);
    v139 = *(v3 + 88);
    v140 = *(v3 + 96);
    v141 = *a1;
    v142 = a1[2];
    v215 = a1[1];
    v216[0] = v141;
    v213 = v138;
    v214 = v142;
    v212 = v139;
    v211 = v140;
    v191 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v187 = v182;
    v16 = MEMORY[0x1E69E7DE0];
    v143 = *(MEMORY[0x1E69E7DE0] - 8);
    v144 = v143[8];
    v145 = MEMORY[0x1EEE9AC00](v191);
    v189 = v4;
    v186 = (v144 + 15) & 0xFFFFFFFFFFFFFFF0;
    v146 = v143[2];
    v147 = v146(v182 - v186, v216, v16, v145);
    v190 = a1;
    v148 = MEMORY[0x1EEE9AC00](v147);
    v149 = v182 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
    v146(v149, &v213, v16, v148);
    v188 = v143 + 2;
    v150 = v146;
    v191 = *(v191 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v25 = v143[1];
    v25(v149, v16);
    v151 = (v25)(v149, v16);
    v187 = v182;
    v152 = MEMORY[0x1EEE9AC00](v151);
    v153 = v186;
    v154 = v150(v182 - v186, &v215, v16, v152);
    v184 = v182;
    v155 = MEMORY[0x1EEE9AC00](v154);
    v150(v182 - v153, &v212, v16, v155);
    v156 = v150;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v25(v182 - v153, v16);
    v157 = (v25)(v182 - v153, v16);
    v187 = v182;
    v158 = MEMORY[0x1EEE9AC00](v157);
    v159 = v153;
    v160 = v156(v182 - v153, &v214, v16, v158);
    v184 = v182;
    v161 = MEMORY[0x1EEE9AC00](v160);
    v156(v182 - v153, &v211, v16, v161);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v25(v182 - v153, v16);
    v25(v182 - v153, v16);
    v162 = v199[0];
    v163 = v194[0];
    v164 = v200[0];
    v25(v200, v16);
    v25(v194, v16);
    v25(v199, v16);
    v166 = v189;
    v165 = v190;
    *v190 = v162;
    v165[1] = v163;
    v165[2] = v164;
    v167 = swift_beginAccess();
    v187 = v182;
    v168 = v166[4];
    v169 = v166[5];
    v170 = v166[6];
    v206 = v163;
    v207 = v162;
    v205 = v164;
    v203 = v169;
    v204 = v168;
    v198[0] = v170;
    v185 = v144;
    v171 = MEMORY[0x1EEE9AC00](v167);
    v172 = v156(v182 - v159, &v207, v16, v171);
    v189 = v182;
    v173 = MEMORY[0x1EEE9AC00](v172);
    v156(v182 - v159, &v204, v16, v173);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25(v182 - v159, v16);
    v174 = (v25)(v182 - v159, v16);
    v189 = v182;
    v175 = MEMORY[0x1EEE9AC00](v174);
    v176 = v156(v182 - v159, &v206, v16, v175);
    v187 = v182;
    v177 = MEMORY[0x1EEE9AC00](v176);
    v156(v182 - v159, &v203, v16, v177);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25(v182 - v159, v16);
    v178 = (v25)(v182 - v159, v16);
    v189 = v182;
    v179 = MEMORY[0x1EEE9AC00](v178);
    v180 = v156(v182 - v159, &v205, v16, v179);
    v181 = MEMORY[0x1EEE9AC00](v180);
    v156(v182 - v159, v198, v16, v181);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25(v182 - v159, v16);
    v25(v182 - v159, v16);
    v58 = v209;
    v57 = v210;
    v59 = v208;
    v25(&v208, v16);
    v25(&v209, v16);
    v60 = &v210;
LABEL_6:
    v25(v60, v16);
    result = 0;
    v62 = v190;
    *v190 = v57;
    v62[1] = v58;
    v62[2] = v59;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v63 = fmax(v7, 0.0166666667);
    v64 = v63 + v63;
    if (v63 + v63 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v64;
      }
    }

    v10 = 3;
    goto LABEL_12;
  }

LABEL_13:
  v65 = a3 - *(v3 + 56);
  swift_beginAccess();
  v66 = *(v3 + 24);
  v67 = *(v4 + 128);

  v200[0] = v66;
  v200[1] = AGCreateWeakAttribute();
  v201 = 0;
  v202 = v67;
  v68 = *(v4 + 136);
  if (v68)
  {
    v69 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>();
    v71 = v70;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    v193[3] = v72;
    v193[0] = v68;
    v193[1] = v69;
    specialized Dictionary.subscript.setter(v193, v71);
  }

  swift_beginAccess();
  v73 = *(v4 + 16);
  swift_beginAccess();
  v74 = *(v4 + 32);
  v75 = *(v4 + 40);
  v76 = *(v4 + 48);

  v77 = specialized Animation.animate<A>(value:time:context:)(v200, v73, v74, v75, v76, v65);
  v79 = v78;
  v81 = v80;
  v83 = v82;

  if (v83)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v202, a2 | ((HIDWORD(a2) & 1) << 32), v65);
    *(v4 + 24) = v200[0];

    v84 = *a1;
    v85 = a1[2];
    v212 = a1[1];
    v213 = v84;
    v211 = v85;
    v209 = v79;
    v210 = v77;
    v208 = v81;
    v188 = v77;
    v191 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v185 = v182;
    v86 = MEMORY[0x1E69E7DE0];
    v87 = *(MEMORY[0x1E69E7DE0] - 8);
    v189 = v4;
    v88 = v87;
    v89 = *(v87 + 64);
    v90 = MEMORY[0x1EEE9AC00](v191);
    v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
    v187 = v81;
    v92 = *(v88 + 16);
    v93 = v92(v182 - v91, &v213, v86, v90);
    v190 = a1;
    v183 = v182;
    v94 = MEMORY[0x1EEE9AC00](v93);
    v186 = v79;
    v92(v182 - v91, &v210, v86, v94);
    v191 = *(v191 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v95 = *(v88 + 8);
    v95(v182 - v91, v86);
    v96 = (v95)(v182 - v91, v86);
    v185 = v182;
    v97 = MEMORY[0x1EEE9AC00](v96);
    v98 = v92(v182 - v91, &v212, v86, v97);
    v183 = v182;
    v99 = MEMORY[0x1EEE9AC00](v98);
    v92(v182 - v91, &v209, v86, v99);
    v184 = v92;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v95(v182 - v91, v86);
    v100 = (v95)(v182 - v91, v86);
    v185 = v182;
    v101 = MEMORY[0x1EEE9AC00](v100);
    v102 = v92(v182 - v91, &v211, v86, v101);
    v183 = v182;
    v103 = MEMORY[0x1EEE9AC00](v102);
    v92(v182 - v91, &v208, v86, v103);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v95(v182 - v91, v86);
    v95(v182 - v91, v86);
    v105 = v215;
    v104 = v216[0];
    v106 = v214;
    v95(&v214, v86);
    v95(&v215, v86);
    v107 = (v95)(v216, v86);
    v185 = v182;
    v108 = v189;
    v109 = v190;
    *v190 = v104;
    v109[1] = v105;
    v109[2] = v106;
    v110 = v108[4];
    v111 = v189[5];
    v112 = v189[6];
    v203 = v105;
    v204 = v104;
    v197 = v110;
    v198[0] = v106;
    v195 = v112;
    v196 = v111;
    v113 = MEMORY[0x1EEE9AC00](v107);
    v182[0] = v91;
    v114 = v182 - v91;
    v115 = v182 - v91;
    v116 = v184;
    v117 = (v184)(v115, &v204, v86, v113);
    v183 = v182;
    v118 = MEMORY[0x1EEE9AC00](v117);
    v119 = v182 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116(v119, &v197, v86, v118);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v95(v119, v86);
    v120 = (v95)(v114, v86);
    v185 = v182;
    v121 = MEMORY[0x1EEE9AC00](v120);
    v122 = v182[0];
    v123 = v182 - v182[0];
    v182[1] = v88 + 16;
    v124 = (v116)(v182 - v182[0], &v203, v86, v121);
    v183 = v182;
    v125 = MEMORY[0x1EEE9AC00](v124);
    v116(v182 - v122, &v196, v86, v125);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v95(v182 - v122, v86);
    v126 = (v95)(v123, v86);
    v185 = v182;
    v127 = MEMORY[0x1EEE9AC00](v126);
    v128 = (v116)(v182 - v122, v198, v86, v127);
    v129 = MEMORY[0x1EEE9AC00](v128);
    v116(v182 - v122, &v195, v86, v129);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v95(v182 - v122, v86);
    v95(v182 - v122, v86);
    v131 = v206;
    v130 = v207;
    v132 = v205;
    v95(&v205, v86);
    v95(&v206, v86);
    v95(&v207, v86);
    v134 = v189;
    v133 = v190;
    *v190 = v130;
    v133[1] = v131;
    v133[2] = v132;
    swift_beginAccess();
    v136 = v186;
    v135 = v187;
    *(v134 + 10) = v188;
    *(v134 + 11) = v136;
    *(v134 + 12) = v135;
    v134[9] = a3;
    v137 = v134[8];
    if (v137 > 0.0)
    {
      v134[9] = v137 * (round(a3 / v137) + 1.0);
    }

    return 0;
  }
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float32x4_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_25;
  }

  if (*(v3 + 105) <= 1u)
  {
    if (!*(v3 + 105))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 105) = v10;
      goto LABEL_11;
    }

    *(v3 + 105) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_25:
    swift_beginAccess();
    if (a1[1].f32[0] > *(v3 + 96))
    {
      v45 = a1[1].f32[0];
    }

    else
    {
      v45 = *(v3 + 96);
    }

    v48 = vaddq_f32(*(v3 + 80), *a1);
    *a1 = v48;
    a1[1].f32[0] = v45;
    swift_beginAccess();
    result = 0;
    v46 = *(v3 + 48);
    *a1 = vsubq_f32(v48, *(v3 + 32));
    if (v45 > v46)
    {
      v47 = v45;
    }

    else
    {
      v47 = v46;
    }

    a1[1].f32[0] = v47;
    return result;
  }

  if (*(v3 + 105) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v57[0] = v14;
  v57[1] = AGCreateWeakAttribute();
  v58 = 0;
  v59 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    v49[3] = v20;
    v49[0] = v16;
    v49[1] = v17;
    specialized Dictionary.subscript.setter(v49, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 48);
  v55 = *(v4 + 32);
  v56 = v22;
  v23 = *(*v21 + 120);
  v24 = lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();

  v23(&v50, &v55, v57, &type metadata for Color.ResolvedHDR._Animatable, v24, v13);

  if (v54)
  {

    return 1;
  }

  else
  {
    v27 = v50;
    v26 = HIDWORD(v50);
    v29 = v51;
    v28 = v52;
    v30 = v53;
    v31 = v50;
    v32 = v51;
    v33 = v52;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v59, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v57[0];

    v34 = a1->f32[0] + *&v31;
    v35 = a1->f32[1] + *(&v31 + 1);
    a1->f32[0] = v34;
    a1->f32[1] = v35;
    v36 = a1->f32[2] + v32;
    v37 = a1->f32[3] + v33;
    a1->f32[2] = v36;
    a1->f32[3] = v37;
    v38 = a1[1].f32[0];
    if (v38 <= v30)
    {
      v38 = v30;
    }

    a1[1].f32[0] = v38;
    v39 = *(v4 + 36);
    v40 = *(v4 + 40);
    v41 = *(v4 + 44);
    v42 = *(v4 + 48);
    a1->f32[0] = v34 - *(v4 + 32);
    a1->f32[1] = v35 - v39;
    a1->f32[2] = v36 - v40;
    a1->f32[3] = v37 - v41;
    if (v38 > v42)
    {
      v43 = v38;
    }

    else
    {
      v43 = v42;
    }

    a1[1].f32[0] = v43;
    swift_beginAccess();
    *(v4 + 80) = v27;
    *(v4 + 84) = v26;
    *(v4 + 88) = v29;
    *(v4 + 92) = v28;
    *(v4 + 96) = v30;
    *(v4 + 72) = a3;
    v44 = *(v4 + 64);
    if (v44 > 0.0)
    {
      *(v4 + 72) = v44 * (round(a3 / v44) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 93) <= 1u)
  {
    if (!*(v3 + 93))
    {
      *(v3 + 48) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 93) = v10;
      goto LABEL_11;
    }

    *(v3 + 93) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 64) = v8 - *(v3 + 48) + a3;
    *(v3 + 48) = a3;
LABEL_20:
    swift_beginAccess();
    v38 = vaddq_f32(*(v3 + 72), *a1);
    swift_beginAccess();
    result = 0;
    *a1 = vsubq_f32(v38, *(v3 + 32));
    return result;
  }

  if (*(v3 + 93) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 48))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 48) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 48);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 112);

  v40[0] = v14;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v15;
  v16 = *(v4 + 120);
  if (v16)
  {
    v17 = *(v4 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v39[3] = v20;
    v39[0] = v16;
    v39[1] = v17;
    specialized Dictionary.subscript.setter(v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 32);
  v23 = *(v4 + 36);
  v24 = *(v4 + 40);
  v25 = *(v4 + 44);

  v26 = specialized Animation.animate<A>(value:time:context:)(v40, v21, v22, v23, v24, v25, v13);
  v28 = v27;
  v30 = v29;

  if (v30)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v42, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v40[0];

    v32 = a1->f32[2] + *&v28;
    v33 = a1->f32[3] + *(&v28 + 1);
    v34 = *(v4 + 40);
    v35 = *(v4 + 44);
    v36 = (a1->f32[1] + *(&v26 + 1)) - *(v4 + 36);
    a1->f32[0] = (a1->f32[0] + *&v26) - *(v4 + 32);
    a1->f32[1] = v36;
    a1->f32[2] = v32 - v34;
    a1->f32[3] = v33 - v35;
    swift_beginAccess();
    *(v4 + 72) = v26;
    *(v4 + 80) = v28;
    *(v4 + 64) = a3;
    v37 = *(v4 + 56);
    if (v37 > 0.0)
    {
      *(v4 + 64) = v37 * (round(a3 / v37) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 105) <= 1u)
  {
    if (!*(v3 + 105))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 105) = v10;
      goto LABEL_11;
    }

    *(v3 + 105) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v36 = *(v3 + 96) + a1[1].f32[0];
    v38 = vaddq_f32(*(v3 + 80), *a1);
    swift_beginAccess();
    result = 0;
    v37 = *(v3 + 48);
    *a1 = vsubq_f32(v38, *(v3 + 32));
    a1[1].f32[0] = v36 - v37;
    return result;
  }

  if (*(v3 + 105) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v40[0] = v14;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, MEMORY[0x1E69E6720]);
    v39[3] = v20;
    v39[0] = v16;
    v39[1] = v17;
    specialized Dictionary.subscript.setter(v39, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v43 = *(v4 + 32);
  v44 = *(v4 + 48);

  v22 = specialized Animation.animate<A>(value:time:context:)(&v43, v40, v21, v13);
  v24 = v23;
  v26 = v25;

  if ((v26 & 0x100000000) != 0)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v42, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v40[0];

    v27 = a1->f32[2] + *&v24;
    v28 = a1->f32[3] + *(&v24 + 1);
    v29 = a1[1].f32[0] + *&v26;
    v30 = *(v4 + 40);
    v31 = *(v4 + 44);
    v32 = *(v4 + 48);
    v33 = (a1->f32[1] + *(&v22 + 1)) - *(v4 + 36);
    a1->f32[0] = (a1->f32[0] + *&v22) - *(v4 + 32);
    a1->f32[1] = v33;
    a1->f32[2] = v27 - v30;
    a1->f32[3] = v28 - v31;
    a1[1].f32[0] = v29 - v32;
    swift_beginAccess();
    *(v4 + 80) = v22;
    *(v4 + 88) = v24;
    *(v4 + 96) = v26;
    *(v4 + 72) = a3;
    v34 = *(v4 + 64);
    if (v34 > 0.0)
    {
      *(v4 + 72) = v34 * (round(a3 / v34) + 1.0);
    }

    return 0;
  }
}

uint64_t specialized AnimatorState.update(_:at:environment:)(char **a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 77) <= 1u)
  {
    if (!*(v3 + 77))
    {
      *(v3 + 40) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 77) = v10;
      goto LABEL_11;
    }

    *(v3 + 77) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 56) = v8 - *(v3 + 40) + a3;
    *(v3 + 40) = a3;
LABEL_19:
    swift_beginAccess();
    v34[0] = *(v3 + 64);

    specialized static ShaderVectorData.+= infix(_:_:)(a1, v34);

    swift_beginAccess();
    v29 = *(v3 + 32);

    specialized static ShaderVectorData.-= infix(_:_:)(a1, &v29);

    return 0;
  }

  if (*(v3 + 77) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 40))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 40) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 40);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 96);

  v31[0] = v14;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v33 = v15;
  v16 = *(v4 + 104);
  if (v16)
  {
    v17 = *(v4 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    v26[3] = v20;
    v26[0] = v16;
    v26[1] = v17;
    specialized Dictionary.subscript.setter(v26, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v28 = *(v4 + 32);
  v22 = *(*v21 + 120);
  v23 = lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();

  v22(v27, &v28, v31, &type metadata for ShaderVectorData, v23, v13);

  if (!v27[0])
  {

    return 1;
  }

  v30 = v27[0];
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v33, a2 | ((HIDWORD(a2) & 1) << 32), v13);
  *(v4 + 24) = v31[0];

  specialized static ShaderVectorData.+= infix(_:_:)(a1, &v30);
  v27[0] = *(v4 + 32);

  specialized static ShaderVectorData.-= infix(_:_:)(a1, v27);

  swift_beginAccess();
  *(v4 + 64) = v30;

  *(v4 + 56) = a3;
  v24 = *(v4 + 48);
  if (v24 > 0.0)
  {
    *(v4 + 56) = (round(a3 / v24) + 1.0) * v24;
  }

  return 0;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float32x2_t *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 < a3)
  {
    if (*(v3 + 137) > 1u)
    {
      if (*(v3 + 137) != 2)
      {
        goto LABEL_11;
      }

      v11 = fmax(v7, 0.0166666667);
      v12 = v11 + v11;
      if (v11 + v11 < a3 - *(v3 + 72))
      {
        swift_beginAccess();
        if ((static CoreTesting.isRunning & 1) == 0)
        {
          *(v3 + 72) = a3 - v12;
        }
      }

      v10 = 3;
      goto LABEL_10;
    }

    if (!*(v3 + 137))
    {
      *(v3 + 72) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 137) = v10;
      goto LABEL_11;
    }

    *(v3 + 137) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_11:
      v13 = *(v3 + 72);
      swift_beginAccess();
      v14 = *(v3 + 24);
      v15 = *(v4 + 160);

      v88[0] = v14;
      v88[1] = AGCreateWeakAttribute();
      v89 = 0;
      v90 = v15;
      v16 = *(v4 + 168);
      if (v16)
      {
        v17 = *(v4 + 176);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>();
        v19 = v18;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>, MEMORY[0x1E69E6720]);
        *(&v86 + 1) = v20;
        *&v85 = v16;
        *(&v85 + 1) = v17;
        specialized Dictionary.subscript.setter(&v85, v19);
      }

      v21 = a3 - v13;
      swift_beginAccess();
      v22 = *(v4 + 16);
      swift_beginAccess();
      v23 = *(v4 + 32);
      v24 = *(v4 + 40);
      v25 = *(v4 + 64);
      v82[0] = v23;
      v82[1] = v24;
      v83 = *(v4 + 48);
      v84 = v25;
      type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
      if (v26 == MEMORY[0x1E69E63B0])
      {
        v78[0] = v23;
        v54 = *(*v22 + 120);

        v54(v80, v78, v88, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
        v31 = *&v80[0];
        *&v85 = *&v80[0];
        BYTE8(v85) = BYTE8(v80[0]);

        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v27 = v26;
        type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
        if (v27 == v28)
        {
          v68 = v28;
          v78[0] = v23;
          v78[1] = v24;
          v79 = v83;
          v69 = *(*v22 + 120);
          v70 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

          v69(v80, v78, v88, v68, v70, v21);
          v77 = *&v80[0];
          v85 = v80[0];
          v86 = v80[1];
          LOBYTE(v87) = v81;

          v31 = v77;
          if (v77)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v29 = *(*v22 + 120);
          v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

          v29(&v85, v82, v88, v27, v30, v21);

          v31 = v85;
          if (v85)
          {
LABEL_16:
            v32 = *(&v85 + 1);
            v33 = v86;
            v34 = DWORD2(v86);
            v35 = v87;
            v36 = *&v86;
            v73 = DWORD1(v86);
            v37 = *(&v86 + 4);
            v38 = HIDWORD(*(&v86 + 1));
            v39 = *(&v86 + 3);
            v40 = v87;
            specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v90, a2 | ((HIDWORD(a2) & 1) << 32), v21);
            *(v4 + 24) = v88[0];

            _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(a1, v31);
            _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v32);
            v41 = a1[2].f32[0] + v36;
            v42 = a1[2].f32[1] + *&v37;
            a1[2].f32[0] = v41;
            a1[2].f32[1] = v42;
            v43 = a1[3].f32[0] + *(&v37 + 1);
            v44 = a1[3].f32[1] + v39;
            a1[3].f32[0] = v43;
            a1[3].f32[1] = v44;
            if (a1[4].f32[0] > v40)
            {
              v45 = a1[4].f32[0];
            }

            else
            {
              v45 = v40;
            }

            a1[4].f32[0] = v45;
            v46 = *(v4 + 32);
            v47 = *(v4 + 40);
            v48 = *(v4 + 48);
            v49 = *(v4 + 52);
            v71 = *(v4 + 56);
            v72 = *(v4 + 60);
            v75 = a3;
            v50 = *(v4 + 64);

            _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(a1, v46);
            _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v47);

            a1[2].f32[0] = v41 - v48;
            a1[2].f32[1] = v42 - v49;
            a1[3].f32[0] = v43 - v71;
            a1[3].f32[1] = v44 - v72;
            if (v45 > v50)
            {
              v51 = v45;
            }

            else
            {
              v51 = v50;
            }

            a1[4].f32[0] = v51;
            swift_beginAccess();
            *(v4 + 96) = v31;
            *(v4 + 104) = v32;
            *(v4 + 112) = v33;
            *(v4 + 116) = v73;
            *(v4 + 120) = v34;
            *(v4 + 124) = v38;
            *(v4 + 128) = v35;

            *(v4 + 88) = v75;
            v52 = *(v4 + 80);
            if (v52 <= 0.0)
            {
              outlined consume of ScrapeableContent?(v31);
            }

            else
            {
              v53 = round(v75 / v52);
              outlined consume of ScrapeableContent?(v31);
              *(v4 + 88) = (v53 + 1.0) * *(v4 + 80);
            }

            return 0;
          }
        }
      }

      outlined consume of ScrapeableContent?(v85);
      return 1;
    }

    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
  }

  swift_beginAccess();
  v56 = *(v3 + 96);
  v57 = *(v4 + 104);
  v58 = *(v4 + 128);

  v59 = *(v4 + 112);
  v60 = *(v4 + 120);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(a1, v56);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v57);

  *&v61 = vadd_f32(v59, a1[2]);
  v74 = v61;
  v76 = vadd_f32(v60, a1[3]);
  *(&v61 + 1) = v76;
  *a1[2].f32 = v61;
  if (a1[4].f32[0] > v58)
  {
    v58 = a1[4].f32[0];
  }

  a1[4].f32[0] = v58;
  swift_beginAccess();
  v62 = *(v4 + 32);
  v63 = *(v4 + 40);
  v64 = *(v4 + 48);
  v65 = *(v4 + 56);
  v66 = *(v4 + 64);

  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(a1, v62);
  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&a1[1], v63);

  result = 0;
  a1[2] = vsub_f32(v74, v64);
  a1[3] = vsub_f32(v76, v65);
  if (v58 > v66)
  {
    v67 = v58;
  }

  else
  {
    v67 = v66;
  }

  a1[4].f32[0] = v67;
  return result;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(double a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  if (v7 + v6 * -0.5 < a1)
  {
    if (*(v3 + 105) > 1u)
    {
      if (*(v3 + 105) != 2)
      {
        goto LABEL_11;
      }

      v10 = fmax(v6, 0.0166666667);
      v11 = v10 + v10;
      if (v10 + v10 < a1 - *(v3 + 56))
      {
        swift_beginAccess();
        if ((static CoreTesting.isRunning & 1) == 0)
        {
          *(v3 + 56) = a1 - v11;
        }
      }

      v9 = 3;
      goto LABEL_10;
    }

    if (!*(v3 + 105))
    {
      *(v3 + 56) = a1;
      v9 = 1;
LABEL_10:
      *(v3 + 105) = v9;
      goto LABEL_11;
    }

    *(v3 + 105) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
LABEL_11:
      v12 = *(v3 + 56);
      swift_beginAccess();
      v13 = *(v3 + 24);
      v14 = *(v4 + 128);

      v62[0] = v13;
      v62[1] = AGCreateWeakAttribute();
      v63 = 0;
      v64 = v14;
      v15 = *(v4 + 136);
      if (v15)
      {
        v16 = *(v4 + 144);
        type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimationFinishingDefinitionKey);
        v18 = v17;
        type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
        *(&v51 + 1) = v19;
        *&v50 = v15;
        *(&v50 + 1) = v16;
        specialized Dictionary.subscript.setter(&v50, v18);
      }

      v20 = a1 - v12;
      swift_beginAccess();
      v21 = *(v4 + 16);
      swift_beginAccess();
      v22 = *(v4 + 32);
      v23 = *(v4 + 40);
      v24 = *(v4 + 44);
      v25 = *(v4 + 48);
      v53 = v22;
      LOBYTE(v54) = v23;
      DWORD1(v54) = v24;
      BYTE8(v54) = v25;
      type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
      if (v26 == &type metadata for ResolvedGradientVector)
      {
        v47 = v22;
        v48 = v54;
        v49 = v55;
        v37 = *(*v21 + 120);
        v38 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

        v37(&v50, &v47, v62, &type metadata for ResolvedGradientVector, v38, v20);
        v46 = v50;
        v56 = v50;
        v57 = v51;
        LOBYTE(v58) = v52;

        v29 = v46;
        if (v46)
        {
LABEL_15:
          v31 = BYTE8(v56);
          v30 = HIDWORD(v56);
          v32 = v57;
          specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v64, a3 | ((HIDWORD(a3) & 1) << 32), v20);
          *(v4 + 24) = v62[0];

          *&v50 = v29;
          BYTE8(v50) = v31;
          HIDWORD(v50) = v30;
          LOBYTE(v51) = v32 & 1;
          ResolvedGradientVector.add(_:scaledBy:)(&v50, 1.0);
          v33 = *(v4 + 40);
          v34 = *(v4 + 44);
          v35 = *(v4 + 48);
          *&v50 = *(v4 + 32);
          BYTE8(v50) = v33;
          HIDWORD(v50) = v34;
          LOBYTE(v51) = v35;
          ResolvedGradientVector.add(_:scaledBy:)(&v50, -1.0);
          swift_beginAccess();
          *(v4 + 80) = v29;
          *(v4 + 88) = v31;
          *(v4 + 92) = v30;
          *(v4 + 96) = v32 & 1;

          *(v4 + 72) = a1;
          v36 = *(v4 + 64);

          if (v36 > 0.0)
          {
            *(v4 + 72) = (round(a1 / v36) + 1.0) * *(v4 + 64);
          }

          return 0;
        }
      }

      else
      {
        v27 = *(*v21 + 120);
        v28 = lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();

        v27(&v56, &v53, v62, &type metadata for ResolvedGradientVector, v28, v20);

        v29 = v56;
        if (v56)
        {
          goto LABEL_15;
        }
      }

      return 1;
    }

    *(v3 + 72) = v7 - *(v3 + 56) + a1;
    *(v3 + 56) = a1;
  }

  swift_beginAccess();
  v40 = *(v3 + 88);
  v41 = *(v3 + 92);
  v42 = *(v3 + 96);
  v47 = *(v3 + 80);
  LOBYTE(v48) = v40;
  DWORD1(v48) = v41;
  BYTE8(v48) = v42;
  ResolvedGradientVector.add(_:scaledBy:)(&v47, 1.0);
  swift_beginAccess();
  v43 = *(v3 + 40);
  v44 = *(v3 + 44);
  v45 = *(v3 + 48);
  v58 = *(v3 + 32);
  v59 = v43;
  v60 = v44;
  v61 = v45;
  ResolvedGradientVector.add(_:scaledBy:)(&v58, -1.0);
  return 0;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(float *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 169) > 1u)
  {
    if (*(v3 + 169) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 88))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 88) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 169))
  {
    *(v3 + 88) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 169) = v10;
    goto LABEL_11;
  }

  *(v3 + 169) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 104) = v8 - *(v3 + 88) + a3;
    *(v3 + 88) = a3;
LABEL_19:
    swift_beginAccess();
    v33 = *(v3 + 152);
    v34 = *(v3 + 160);
    *v66 = *(v3 + 112);
    v35 = *(v3 + 136);
    *&v66[8] = *(v3 + 120);
    *&v66[24] = v35;
    v67 = v33;
    v36 = *v66 + *a1;
    v68 = v34;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)((a1 + 2), &v66[8]);
    swift_beginAccess();
    v37 = *(v3 + 72);
    v38 = *(v3 + 80);
    *v66 = *(v3 + 32);
    v39 = *(v3 + 56);
    *&v66[8] = *(v3 + 40);
    *&v66[24] = v39;
    v67 = v37;
    v68 = v38;
    *a1 = v36 - *v66;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)((a1 + 2), &v66[8]);
    return 0;
  }

LABEL_11:
  v13 = *(v3 + 88);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 192);

  v70[0] = v14;
  v70[1] = AGCreateWeakAttribute();
  v71 = 0;
  v72 = v15;
  v16 = *(v4 + 200);
  if (v16)
  {
    v17 = *(v4 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, MEMORY[0x1E69E6720]);
    *&v66[24] = v20;
    *v66 = v16;
    *&v66[8] = v17;
    specialized Dictionary.subscript.setter(v66, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 40);
  v24 = *(v4 + 48);
  v25 = *(v4 + 72);
  v26 = *(v4 + 80);
  LODWORD(v62[0]) = *(v4 + 32);
  v62[1] = v23;
  v62[2] = v24;
  v57 = *(v4 + 56);
  v63 = v57;
  v64 = v25;
  v65 = v26;
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
  if (v27 == MEMORY[0x1E69E63B0])
  {
    v58[0] = v62[0];
    v32 = *(*v22 + 120);

    v32(v59, v58, v70, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *v66 = *v59;
    v66[8] = v59[8];
  }

  else
  {
    v28 = v27;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v28 == v29)
    {
      v41 = v29;
      v58[0] = v62[0];
      v58[1] = v23;
      v58[2] = v24;
      v58[3] = v57;
      v42 = *(*v22 + 120);
      v43 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

      v42(v59, v58, v70, v41, v43, v21);
      *v66 = *v59;
      *&v66[16] = *&v59[16];
      v66[32] = v59[32];
    }

    else
    {
      v30 = *(*v22 + 120);
      v31 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);

      v30(v66, v62, v70, v28, v31, v21);
    }
  }

  if ((v69 & 1) == 0)
  {
    v44 = *v66;
    v45 = *&v66[8];
    v46 = *&v66[16];
    v47 = *&v66[24];
    v48 = *&v66[32];
    v49 = v67;
    v50 = HIDWORD(a2) & 1;
    v51 = a2;
    v52 = v68;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v72, v51 | (v50 << 32), v21);
    *(v4 + 24) = v70[0];

    *v59 = v44;
    *&v59[8] = v45;
    *&v59[16] = v46;
    *&v59[24] = v47;
    *&v59[32] = v48;
    v60 = v49;
    v52 &= 1u;
    v61 = v52;
    v53 = v44 + *a1;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)((a1 + 2), &v59[8]);
    v54 = *(v4 + 72);
    v55 = *(v4 + 80);
    *v59 = *(v4 + 32);
    *&v59[8] = *(v4 + 40);
    *&v59[24] = *(v4 + 56);
    v60 = v54;
    v61 = v55;
    *a1 = v53 - *v59;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)((a1 + 2), &v59[8]);
    swift_beginAccess();
    *(v4 + 112) = v44;
    *(v4 + 120) = v45;
    *(v4 + 128) = v46;
    *(v4 + 136) = v47;
    *(v4 + 144) = v48;
    *(v4 + 152) = v49;
    *(v4 + 160) = v52;
    *(v4 + 104) = a3;
    v56 = *(v4 + 96);
    if (v56 > 0.0)
    {
      *(v4 + 104) = v56 * (round(a3 / v56) + 1.0);
    }

    return 0;
  }

  return 1;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(__int128 *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 136);
  v8 = *(v3 + 144);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 253) <= 1u)
  {
    if (!*(v3 + 253))
    {
      *(v3 + 128) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 253) = v10;
      goto LABEL_11;
    }

    *(v3 + 253) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 144) = v8 - *(v3 + 128) + a3;
    *(v3 + 128) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 200);
    v419 = *(v3 + 184);
    v420 = v32;
    v33 = *(v3 + 232);
    v421 = *(v3 + 216);
    v422 = v33;
    v34 = *(v3 + 168);
    v417 = *(v3 + 152);
    v418 = v34;
    v35 = a1[3];
    v425 = a1[2];
    v426 = v35;
    v36 = a1[5];
    v427 = a1[4];
    v428 = v36;
    v37 = a1[1];
    v423 = *a1;
    v424 = v37;
    v356 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v348 = &v346;
    v38 = MEMORY[0x1E69E7DE0];
    v39 = *(MEMORY[0x1E69E7DE0] - 8);
    v40 = v39[8];
    v41 = MEMORY[0x1EEE9AC00](v356);
    v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
    v43 = v39[2];
    v44 = v43(&v346 - v42, &v423, v38, v41);
    v351 = (v39 + 2);
    v352 = v4;
    v45 = MEMORY[0x1EEE9AC00](v44);
    v350 = a1;
    v43(&v346 - v42, &v417, v38, v45);
    v355 = *(v356 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46 = v39[1];
    v46(&v346 - v42, v38);
    v47 = (v46)(&v346 - v42, v38);
    v348 = &v346;
    *&v435 = &v429;
    v357 = v40;
    v48 = MEMORY[0x1EEE9AC00](v47);
    v353 = v42;
    v49 = v43(&v346 - v42, (&v423 + 8), v38, v48);
    v347 = &v346;
    v50 = MEMORY[0x1EEE9AC00](v49);
    v43(&v346 - v42, (&v417 + 8), v38, v50);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v42, v38);
    v51 = (v46)(&v346 - v42, v38);
    v348 = &v346;
    *(&v435 + 1) = &v429 + 8;
    v346 = &v430;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v53 = v353;
    v349 = v43;
    v54 = v43(&v346 - v353, &v424, v38, v52);
    v347 = &v346;
    v55 = MEMORY[0x1EEE9AC00](v54);
    v43(&v346 - v53, &v418, v38, v55);
    v56 = v346;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v354 = v39 + 1;
    v46(&v346 - v53, v38);
    v57 = (v46)(&v346 - v53, v38);
    v348 = &v346;
    *&v436 = v56;
    v58 = MEMORY[0x1EEE9AC00](v57);
    v59 = v349;
    v60 = (v349)(&v346 - v53, &v424 + 8, v38, v58);
    v347 = &v346;
    v61 = MEMORY[0x1EEE9AC00](v60);
    v59(&v346 - v53, &v418 + 8, v38, v61);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v53, v38);
    v62 = (v46)(&v346 - v53, v38);
    v348 = &v346;
    *(&v436 + 1) = &v430 + 8;
    v63 = MEMORY[0x1EEE9AC00](v62);
    v64 = (v59)(&v346 - v53, &v425, v38, v63);
    v65 = MEMORY[0x1EEE9AC00](v64);
    v59(&v346 - v53, &v419, v38, v65);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v53, v38);
    v66 = (v46)(&v346 - v53, v38);
    v348 = &v346;
    *&v437 = &v431;
    v67 = MEMORY[0x1EEE9AC00](v66);
    v68 = v353;
    v69 = &v346 - v353;
    v70 = (v59)(&v346 - v353, &v425 + 8, v38, v67);
    v347 = &v346;
    v71 = MEMORY[0x1EEE9AC00](v70);
    v59(&v346 - v68, &v419 + 8, v38, v71);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v68, v38);
    v72 = (v46)(v69, v38);
    v348 = &v346;
    *(&v437 + 1) = &v431 + 8;
    v73 = MEMORY[0x1EEE9AC00](v72);
    v74 = v353;
    v75 = &v346 - v353;
    v76 = (v59)(&v346 - v353, &v426, v38, v73);
    v347 = &v346;
    v77 = MEMORY[0x1EEE9AC00](v76);
    v59(&v346 - v74, &v420, v38, v77);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v74, v38);
    v78 = (v46)(v75, v38);
    v348 = &v346;
    *&v438 = &v432;
    v79 = MEMORY[0x1EEE9AC00](v78);
    v80 = v353;
    v81 = (v59)(&v346 - v353, &v426 + 8, v38, v79);
    v347 = &v346;
    v82 = MEMORY[0x1EEE9AC00](v81);
    v59(&v346 - v80, &v420 + 8, v38, v82);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v80, v38);
    v83 = (v46)(&v346 - v80, v38);
    v348 = &v346;
    *(&v438 + 1) = &v432 + 8;
    v84 = MEMORY[0x1EEE9AC00](v83);
    v85 = v353;
    v86 = (v59)(&v346 - v353, &v427, v38, v84);
    v347 = &v346;
    v87 = MEMORY[0x1EEE9AC00](v86);
    v59(&v346 - v85, &v421, v38, v87);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v85, v38);
    v88 = (v46)(&v346 - v85, v38);
    v348 = &v346;
    *&v439 = &v433;
    v89 = MEMORY[0x1EEE9AC00](v88);
    v90 = (v59)(&v346 - v85, &v427 + 8, v38, v89);
    v347 = &v346;
    v91 = MEMORY[0x1EEE9AC00](v90);
    v59(&v346 - v85, &v421 + 8, v38, v91);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v85, v38);
    v92 = (v46)(&v346 - v85, v38);
    v348 = &v346;
    *(&v439 + 1) = &v433 + 8;
    v93 = MEMORY[0x1EEE9AC00](v92);
    v94 = v349;
    v95 = (v349)(&v346 - v85, &v428, v38, v93);
    v347 = &v346;
    v96 = MEMORY[0x1EEE9AC00](v95);
    v94(&v346 - v85, &v422, v38, v96);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v46(&v346 - v85, v38);
    v97 = (v46)(&v346 - v85, v38);
    v348 = &v346;
    *&v440 = &v434;
    v98 = MEMORY[0x1EEE9AC00](v97);
    v99 = v353;
    v100 = &v346 - v353;
    v101 = (v94)(&v346 - v353, &v428 + 8, v38, v98);
    v347 = &v346;
    v102 = MEMORY[0x1EEE9AC00](v101);
    v103 = &v346 - v99;
    v94(v103, (&v422 + 8), v38, v102);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v356 = v46;
    v46(v103, v38);
    v46(v100, v38);
    *(&v440 + 1) = &v434 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v435, &v370);
    v104 = v373;
    v105 = v350;
    v350[2] = v372;
    v105[3] = v104;
    v106 = v375;
    v105[4] = v374;
    v105[5] = v106;
    v107 = v371;
    *v105 = v370;
    v105[1] = v107;
    v108 = v105;
    v109 = v352;
    v110 = swift_beginAccess();
    v348 = &v346;
    v111 = *(v109 + 5);
    v395 = *(v109 + 4);
    v396 = v111;
    v112 = *(v109 + 7);
    v397 = *(v109 + 6);
    v398 = v112;
    v113 = *(v109 + 3);
    v393 = *(v109 + 2);
    v394 = v113;
    v114 = v108[3];
    v401 = v108[2];
    v402 = v114;
    v115 = v108[5];
    v403 = v108[4];
    v404 = v115;
    v116 = v108[1];
    v399 = *v108;
    v400 = v116;
    v117 = MEMORY[0x1EEE9AC00](v110);
    v118 = v353;
    v119 = v349;
    v120 = (v349)(&v346 - v353, &v399, v38, v117);
    v121 = MEMORY[0x1EEE9AC00](v120);
    v119(&v346 - v118, &v393, v38, v121);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v122 = v356;
    (v356)(&v346 - v118, v38);
    v123 = v122(&v346 - v118, v38);
    v352 = &v346;
    *&v411 = &v405;
    v124 = MEMORY[0x1EEE9AC00](v123);
    v125 = v119;
    v126 = (v119)(&v346 - v118, &v399 + 8, v38, v124);
    v348 = &v346;
    v127 = MEMORY[0x1EEE9AC00](v126);
    v119(&v346 - v118, (&v393 + 8), v38, v127);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v128 = v356;
    (v356)(&v346 - v118, v38);
    v129 = v128(&v346 - v118, v38);
    v352 = &v346;
    *(&v411 + 1) = &v405 + 8;
    v130 = MEMORY[0x1EEE9AC00](v129);
    v131 = v353;
    v132 = (v119)(&v346 - v353, &v400, v38, v130);
    v348 = &v346;
    v133 = MEMORY[0x1EEE9AC00](v132);
    v119(&v346 - v131, &v394, v38, v133);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v134 = v356;
    (v356)(&v346 - v131, v38);
    v135 = v134(&v346 - v131, v38);
    v352 = &v346;
    *&v412 = &v406;
    v136 = MEMORY[0x1EEE9AC00](v135);
    v137 = v125(&v346 - v131, &v400 + 8, v38, v136);
    v348 = &v346;
    v138 = MEMORY[0x1EEE9AC00](v137);
    v125(&v346 - v131, &v394 + 8, v38, v138);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v139 = v356;
    (v356)(&v346 - v131, v38);
    v140 = v139(&v346 - v131, v38);
    v352 = &v346;
    *(&v412 + 1) = &v406 + 8;
    v141 = MEMORY[0x1EEE9AC00](v140);
    v142 = v125(&v346 - v131, &v401, v38, v141);
    v348 = &v346;
    v143 = MEMORY[0x1EEE9AC00](v142);
    v125(&v346 - v131, &v395, v38, v143);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v144 = v356;
    (v356)(&v346 - v131, v38);
    v145 = v144(&v346 - v131, v38);
    v352 = &v346;
    *&v413 = &v407;
    v146 = MEMORY[0x1EEE9AC00](v145);
    v147 = v125(&v346 - v131, &v401 + 8, v38, v146);
    v348 = &v346;
    v148 = MEMORY[0x1EEE9AC00](v147);
    v125(&v346 - v131, &v395 + 8, v38, v148);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v149 = v356;
    (v356)(&v346 - v131, v38);
    v150 = v149(&v346 - v131, v38);
    v352 = &v346;
    *(&v413 + 1) = &v407 + 8;
    v151 = MEMORY[0x1EEE9AC00](v150);
    v152 = v125(&v346 - v131, &v402, v38, v151);
    v348 = &v346;
    v153 = MEMORY[0x1EEE9AC00](v152);
    v125(&v346 - v131, &v396, v38, v153);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v154 = v356;
    (v356)(&v346 - v131, v38);
    v155 = v154(&v346 - v131, v38);
    v352 = &v346;
    *&v414 = &v408;
    v156 = MEMORY[0x1EEE9AC00](v155);
    v157 = v125(&v346 - v131, &v402 + 8, v38, v156);
    v348 = &v346;
    v158 = MEMORY[0x1EEE9AC00](v157);
    v125(&v346 - v131, &v396 + 8, v38, v158);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v159 = v356;
    (v356)(&v346 - v131, v38);
    v160 = v159(&v346 - v131, v38);
    v352 = &v346;
    *(&v414 + 1) = &v408 + 8;
    v161 = MEMORY[0x1EEE9AC00](v160);
    v162 = v125(&v346 - v131, &v403, v38, v161);
    v348 = &v346;
    v163 = MEMORY[0x1EEE9AC00](v162);
    v125(&v346 - v131, &v397, v38, v163);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v164 = v356;
    (v356)(&v346 - v131, v38);
    v165 = v164(&v346 - v131, v38);
    v352 = &v346;
    *&v415 = &v409;
    v166 = MEMORY[0x1EEE9AC00](v165);
    v167 = v125(&v346 - v131, &v403 + 8, v38, v166);
    v348 = &v346;
    v168 = MEMORY[0x1EEE9AC00](v167);
    v125(&v346 - v131, &v397 + 8, v38, v168);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v169 = v356;
    (v356)(&v346 - v131, v38);
    v170 = v169(&v346 - v131, v38);
    v352 = &v346;
    *(&v415 + 1) = &v409 + 8;
    v171 = MEMORY[0x1EEE9AC00](v170);
    v172 = v125(&v346 - v131, &v404, v38, v171);
    v348 = &v346;
    v173 = MEMORY[0x1EEE9AC00](v172);
    v125(&v346 - v131, &v398, v38, v173);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v174 = v356;
    (v356)(&v346 - v131, v38);
    v175 = v174(&v346 - v131, v38);
    v352 = &v346;
    *&v416 = &v410;
    v176 = MEMORY[0x1EEE9AC00](v175);
    v177 = v125(&v346 - v131, &v404 + 8, v38, v176);
    v348 = &v346;
    v178 = MEMORY[0x1EEE9AC00](v177);
    v125(&v346 - v131, &v398 + 8, v38, v178);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v174(&v346 - v131, v38);
    v174(&v346 - v131, v38);
    *(&v416 + 1) = &v410 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v411, &v383);
    result = 0;
    v180 = v386;
    v181 = v350;
    v350[2] = v385;
    v181[3] = v180;
    v182 = v388;
    v181[4] = v387;
    v181[5] = v182;
    v183 = v384;
    *v181 = v383;
    v181[1] = v183;
    return result;
  }

  if (*(v3 + 253) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 128))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 128) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 128);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 272);

  v390[0] = v14;
  v390[1] = AGCreateWeakAttribute();
  v391 = 0;
  v392 = v15;
  v16 = *(v4 + 280);
  if (v16)
  {
    v17 = *(v4 + 288);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    *(&v384 + 1) = v20;
    *&v383 = v16;
    *(&v383 + 1) = v17;
    specialized Dictionary.subscript.setter(&v383, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 80);
  v437 = *(v4 + 64);
  v438 = v23;
  v24 = *(v4 + 112);
  v439 = *(v4 + 96);
  v440 = v24;
  v25 = *(v4 + 48);
  v435 = *(v4 + 32);
  v436 = v25;
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v429 = v435;
    v31 = *(*v22 + 120);

    v31(&v370, &v429, v390, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v383 = v370;
    BYTE8(v383) = BYTE8(v370);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v184 = v28;
      v429 = v435;
      v430 = v436;
      v185 = *(*v22 + 120);
      v186 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

      v185(&v370, &v429, v390, v184, v186, v21);
      v383 = v370;
      v384 = v371;
      LOBYTE(v385) = v372;
    }

    else
    {
      v29 = *(*v22 + 120);
      v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);

      v29(&v383, &v435, v390, v27, v30, v21);
    }
  }

  if (v389)
  {

    return 1;
  }

  else
  {
    v374 = v387;
    v375 = v388;
    v376 = v389;
    v370 = v383;
    v371 = v384;
    v372 = v385;
    v373 = v386;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v392, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v390[0];

    v187 = a1[3];
    v413 = a1[2];
    v414 = v187;
    v188 = a1[5];
    v415 = a1[4];
    v416 = v188;
    v189 = a1[1];
    v411 = *a1;
    v412 = v189;
    v407 = v372;
    v408 = v373;
    v409 = v374;
    v410 = v375;
    v405 = v370;
    v406 = v371;
    v357 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v348 = &v346;
    v190 = MEMORY[0x1E69E7DE0];
    v191 = *(MEMORY[0x1E69E7DE0] - 8);
    v192 = v191[8];
    v193 = MEMORY[0x1EEE9AC00](v357);
    v356 = v192;
    v194 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
    v195 = v191[2];
    v196 = v195(&v346 - v194, &v411, v190, v193);
    v352 = v4;
    v197 = MEMORY[0x1EEE9AC00](v196);
    v350 = a1;
    v195(&v346 - v194, &v405, v190, v197);
    v198 = v191 + 2;
    v357 = *(v357 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199 = v191[1];
    v354 = v191 + 1;
    v199(&v346 - v194, v190);
    v200 = (v199)(&v346 - v194, v190);
    v348 = &v346;
    *&v423 = &v417;
    v201 = MEMORY[0x1EEE9AC00](v200);
    v349 = v194;
    v202 = v195(&v346 - v194, (&v411 + 8), v190, v201);
    v347 = &v346;
    v203 = MEMORY[0x1EEE9AC00](v202);
    v195(&v346 - v194, (&v405 + 8), v190, v203);
    v351 = v195;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199(&v346 - v194, v190);
    v204 = (v199)(&v346 - v194, v190);
    v348 = &v346;
    *(&v423 + 1) = &v417 + 8;
    v205 = MEMORY[0x1EEE9AC00](v204);
    v206 = v349;
    v207 = v195((&v346 - v349), &v412, v190, v205);
    v347 = &v346;
    v208 = MEMORY[0x1EEE9AC00](v207);
    v195((&v346 - v206), &v406, v190, v208);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v206), v190);
    v209 = (v199)(&v346 - v206, v190);
    v348 = &v346;
    *&v424 = &v418;
    v210 = MEMORY[0x1EEE9AC00](v209);
    v211 = (&v346 - v206);
    v212 = v206;
    v213 = (&v346 - v206);
    v214 = v351;
    v215 = (v351)(v213, &v412 + 8, v190, v210);
    v347 = &v346;
    v216 = MEMORY[0x1EEE9AC00](v215);
    v214(&v346 - v212, &v406 + 8, v190, v216);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v212), v190);
    v217 = (v199)(v211, v190);
    v348 = &v346;
    *(&v424 + 1) = &v418 + 8;
    v218 = MEMORY[0x1EEE9AC00](v217);
    v219 = (v214)(&v346 - v212, &v413, v190, v218);
    v347 = &v346;
    v220 = MEMORY[0x1EEE9AC00](v219);
    v214(&v346 - v212, &v407, v190, v220);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v212), v190);
    v221 = (v199)(&v346 - v212, v190);
    v348 = &v346;
    *&v425 = &v419;
    v222 = MEMORY[0x1EEE9AC00](v221);
    v223 = v349;
    v224 = (&v346 - v349);
    v225 = (v214)(&v346 - v349, &v413 + 8, v190, v222);
    v347 = &v346;
    v226 = MEMORY[0x1EEE9AC00](v225);
    v227 = (&v346 - v223);
    v214(v227, &v407 + 8, v190, v226);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199(v227, v190);
    v228 = (v199)(v224, v190);
    v348 = &v346;
    *(&v425 + 1) = &v419 + 8;
    v229 = MEMORY[0x1EEE9AC00](v228);
    v230 = v349;
    v231 = (&v346 - v349);
    v232 = (v214)(&v346 - v349, &v414, v190, v229);
    v347 = &v346;
    v233 = MEMORY[0x1EEE9AC00](v232);
    v214(&v346 - v230, &v408, v190, v233);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v230), v190);
    v234 = (v199)(v231, v190);
    v348 = &v346;
    *&v426 = &v420;
    v235 = MEMORY[0x1EEE9AC00](v234);
    v236 = v349;
    v353 = v198;
    v237 = (v214)(&v346 - v349, &v414 + 8, v190, v235);
    v347 = &v346;
    v238 = MEMORY[0x1EEE9AC00](v237);
    v214(&v346 - v236, &v408 + 8, v190, v238);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v236), v190);
    v239 = (v199)(&v346 - v236, v190);
    v348 = &v346;
    *(&v426 + 1) = &v420 + 8;
    v240 = MEMORY[0x1EEE9AC00](v239);
    v241 = (v214)(&v346 - v236, &v415, v190, v240);
    v347 = &v346;
    v242 = MEMORY[0x1EEE9AC00](v241);
    v214(&v346 - v236, &v409, v190, v242);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v236), v190);
    v243 = (v199)(&v346 - v236, v190);
    v348 = &v346;
    *&v427 = &v421;
    v244 = MEMORY[0x1EEE9AC00](v243);
    v245 = (v214)(&v346 - v236, &v415 + 8, v190, v244);
    v347 = &v346;
    v246 = MEMORY[0x1EEE9AC00](v245);
    v214(&v346 - v236, &v409 + 8, v190, v246);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v236), v190);
    v247 = (v199)(&v346 - v236, v190);
    v348 = &v346;
    *(&v427 + 1) = &v421 + 8;
    v248 = MEMORY[0x1EEE9AC00](v247);
    v249 = (v214)(&v346 - v236, &v416, v190, v248);
    v347 = &v346;
    v250 = MEMORY[0x1EEE9AC00](v249);
    v214(&v346 - v236, &v410, v190, v250);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v199((&v346 - v236), v190);
    v251 = (v199)(&v346 - v236, v190);
    v348 = &v346;
    *&v428 = &v422;
    v252 = MEMORY[0x1EEE9AC00](v251);
    v253 = (v214)(&v346 - v236, &v416 + 8, v190, v252);
    v347 = &v346;
    v254 = MEMORY[0x1EEE9AC00](v253);
    v214(&v346 - v236, &v410 + 8, v190, v254);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v355 = v199;
    v199((&v346 - v236), v190);
    v199((&v346 - v236), v190);
    *(&v428 + 1) = &v422 + 8;
    v255 = _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v423, &v377);
    v348 = &v346;
    v256 = v380;
    v257 = v379;
    v258 = v380;
    v259 = v350;
    v350[2] = v379;
    v259[3] = v256;
    v260 = v382;
    v261 = v381;
    v262 = v382;
    v259[4] = v381;
    v259[5] = v260;
    v263 = v378;
    v264 = v377;
    v265 = v378;
    *v259 = v377;
    v259[1] = v263;
    v266 = *(v352 + 5);
    v360 = *(v352 + 4);
    v361 = v266;
    v267 = *(v352 + 7);
    v362 = *(v352 + 6);
    v363 = v267;
    v268 = *(v352 + 3);
    v358 = *(v352 + 2);
    v359 = v268;
    v366 = v257;
    v367 = v258;
    v368 = v261;
    v369[0] = v262;
    v364 = v264;
    v365 = v265;
    v269 = MEMORY[0x1EEE9AC00](v255);
    v270 = (v214)(&v346 - v236, &v364, v190, v269);
    v271 = MEMORY[0x1EEE9AC00](v270);
    v214(&v346 - v236, &v358, v190, v271);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v272 = v355;
    v355(&v346 - v236, v190);
    v273 = v272(&v346 - v236, v190);
    v348 = &v346;
    *&v399 = &v393;
    v274 = MEMORY[0x1EEE9AC00](v273);
    v275 = (v214)(&v346 - v236, &v364 + 8, v190, v274);
    v347 = &v346;
    v276 = MEMORY[0x1EEE9AC00](v275);
    v214(&v346 - v236, &v358 + 8, v190, v276);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v277 = v355;
    v355(&v346 - v236, v190);
    v278 = v277(&v346 - v236, v190);
    v348 = &v346;
    *(&v399 + 1) = &v393 + 8;
    v279 = MEMORY[0x1EEE9AC00](v278);
    v280 = (v214)(&v346 - v236, &v365, v190, v279);
    v347 = &v346;
    v281 = MEMORY[0x1EEE9AC00](v280);
    v214(&v346 - v236, &v359, v190, v281);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v282 = v355;
    v355(&v346 - v236, v190);
    v283 = v282(&v346 - v236, v190);
    v348 = &v346;
    *&v400 = &v394;
    v284 = MEMORY[0x1EEE9AC00](v283);
    v285 = v351;
    v286 = (v351)(&v346 - v236, &v365 + 8, v190, v284);
    v347 = &v346;
    v287 = MEMORY[0x1EEE9AC00](v286);
    v285(&v346 - v236, &v359 + 8, v190, v287);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v288 = v355;
    v355(&v346 - v236, v190);
    v289 = v288(&v346 - v236, v190);
    v348 = &v346;
    *(&v400 + 1) = &v394 + 8;
    v290 = MEMORY[0x1EEE9AC00](v289);
    v291 = v351;
    v292 = (v351)(&v346 - v236, &v366, v190, v290);
    v347 = &v346;
    v293 = MEMORY[0x1EEE9AC00](v292);
    v291(&v346 - v236, &v360, v190, v293);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v294 = v355;
    v355(&v346 - v236, v190);
    v295 = v294(&v346 - v236, v190);
    v348 = &v346;
    *&v401 = &v395;
    v296 = MEMORY[0x1EEE9AC00](v295);
    v297 = v351;
    v298 = (v351)(&v346 - v236, &v366 + 8, v190, v296);
    v347 = &v346;
    v299 = MEMORY[0x1EEE9AC00](v298);
    v297(&v346 - v236, &v360 + 8, v190, v299);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v300 = v355;
    v355(&v346 - v236, v190);
    v301 = v300(&v346 - v236, v190);
    v348 = &v346;
    *(&v401 + 1) = &v395 + 8;
    v302 = MEMORY[0x1EEE9AC00](v301);
    v303 = (&v346 - v236);
    v304 = v351;
    v305 = (v351)(&v346 - v236, &v367, v190, v302);
    v347 = &v346;
    v306 = MEMORY[0x1EEE9AC00](v305);
    v304(&v346 - v236, &v361, v190, v306);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v307 = (&v346 - v236);
    v308 = v355;
    v355(v307, v190);
    v309 = v308(v303, v190);
    v348 = &v346;
    *&v402 = &v396;
    v310 = MEMORY[0x1EEE9AC00](v309);
    v311 = v349;
    v312 = (v304)(&v346 - v349, &v367 + 8, v190, v310);
    v347 = &v346;
    v313 = MEMORY[0x1EEE9AC00](v312);
    v304(&v346 - v311, (&v361 + 8), v190, v313);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v314 = v355;
    v355(&v346 - v311, v190);
    v315 = v314(&v346 - v311, v190);
    v348 = &v346;
    *(&v402 + 1) = &v396 + 8;
    v316 = MEMORY[0x1EEE9AC00](v315);
    v317 = (v304)(&v346 - v311, &v368, v190, v316);
    v347 = &v346;
    v318 = MEMORY[0x1EEE9AC00](v317);
    v304(&v346 - v311, &v362, v190, v318);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v319 = v355;
    v355(&v346 - v311, v190);
    v320 = v319(&v346 - v311, v190);
    v348 = &v346;
    *&v403 = &v397;
    v321 = MEMORY[0x1EEE9AC00](v320);
    v322 = v349;
    v323 = v351;
    v324 = (v351)(&v346 - v349, &v368 + 8, v190, v321);
    v347 = &v346;
    v325 = MEMORY[0x1EEE9AC00](v324);
    v323(&v346 - v322, &v362 + 8, v190, v325);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v326 = v355;
    v355(&v346 - v322, v190);
    v327 = v326(&v346 - v322, v190);
    v348 = &v346;
    *(&v403 + 1) = &v397 + 8;
    v328 = MEMORY[0x1EEE9AC00](v327);
    v329 = v351;
    v330 = (v351)(&v346 - v322, v369, v190, v328);
    v347 = &v346;
    v331 = MEMORY[0x1EEE9AC00](v330);
    v329(&v346 - v322, &v363, v190, v331);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v332 = v355;
    v355(&v346 - v322, v190);
    v333 = v332(&v346 - v322, v190);
    v348 = &v346;
    *&v404 = &v398;
    v334 = MEMORY[0x1EEE9AC00](v333);
    v335 = (v329)(&v346 - v322, v369 + 8, v190, v334);
    v347 = &v346;
    v336 = MEMORY[0x1EEE9AC00](v335);
    v329(&v346 - v322, (&v363 + 8), v190, v336);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v332(&v346 - v322, v190);
    v332(&v346 - v322, v190);
    v337 = v352;
    *(&v404 + 1) = &v398 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v399, &v429);
    v338 = v432;
    v339 = v350;
    v350[2] = v431;
    v339[3] = v338;
    v340 = v434;
    v339[4] = v433;
    v339[5] = v340;
    v341 = v430;
    *v339 = v429;
    v339[1] = v341;
    swift_beginAccess();
    v342 = v373;
    *(v337 + 23) = v372;
    *(v337 + 25) = v342;
    v343 = v375;
    *(v337 + 27) = v374;
    *(v337 + 29) = v343;
    v344 = v371;
    *(v337 + 19) = v370;
    *(v337 + 21) = v344;
    v345 = *(v337 + 17);
    *(v337 + 18) = a3;
    if (v345 > 0.0)
    {
      *(v337 + 18) = v345 * (round(a3 / v345) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 168);
  v8 = *(v3 + 176);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 317) <= 1u)
  {
    if (!*(v3 + 317))
    {
      *(v3 + 160) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 317) = v10;
      goto LABEL_11;
    }

    *(v3 + 317) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 176) = v8 - *(v3 + 160) + a3;
    *(v3 + 160) = a3;
LABEL_22:
    swift_beginAccess();
    v53 = *(v3 + 264);
    v54 = *(v3 + 280);
    v100 = *(v3 + 248);
    v101 = v53;
    v55 = *(v3 + 296);
    v102 = v54;
    v103 = v55;
    v56 = *(v3 + 200);
    v96 = *(v3 + 184);
    v97 = v56;
    v57 = *(v3 + 232);
    v98 = *(v3 + 216);
    v99 = v57;
    v58 = a1[5];
    v83 = a1[4];
    v84 = v58;
    v59 = a1[7];
    v85 = a1[6];
    v86 = v59;
    v60 = a1[1];
    v79 = *a1;
    v80 = v60;
    v61 = a1[3];
    v81 = a1[2];
    v82 = v61;
    static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(a1, &v79, &v96);
    swift_beginAccess();
    v62 = *(v3 + 112);
    v100 = *(v3 + 96);
    v101 = v62;
    v63 = *(v3 + 144);
    v102 = *(v3 + 128);
    v103 = v63;
    v64 = *(v3 + 48);
    v96 = *(v3 + 32);
    v97 = v64;
    v65 = *(v3 + 80);
    v98 = *(v3 + 64);
    v99 = v65;
    v66 = a1[5];
    v83 = a1[4];
    v84 = v66;
    v67 = a1[7];
    v85 = a1[6];
    v86 = v67;
    v68 = a1[1];
    v79 = *a1;
    v80 = v68;
    v69 = a1[3];
    v81 = a1[2];
    v82 = v69;
    static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(a1, &v79, &v96);
    return 0;
  }

  if (*(v3 + 317) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 160))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 160) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 160);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 336);

  v113[0] = v14;
  v113[1] = AGCreateWeakAttribute();
  v114 = 0;
  v115 = v15;
  v16 = *(v4 + 344);
  if (v16)
  {
    v17 = *(v4 + 352);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    *(&v97 + 1) = v20;
    *&v96 = v16;
    *(&v96 + 1) = v17;
    specialized Dictionary.subscript.setter(&v96, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 112);
  v92 = *(v4 + 96);
  v93 = v23;
  v24 = *(v4 + 144);
  v94 = *(v4 + 128);
  v95 = v24;
  v25 = *(v4 + 48);
  v88 = *(v4 + 32);
  v89 = v25;
  v26 = *(v4 + 80);
  v90 = *(v4 + 64);
  v91 = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for RoundedRectangularShapeCorners.AnimatableData)
  {
    v71 = v88;
    v72 = v89;
    v30 = *(*v22 + 120);
    v31 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

    v30(&v79, &v71, v113, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v31, v21);
    v96 = v79;
    v97 = v80;
    LOBYTE(v98) = v81;
  }

  else
  {
    v28 = *(*v22 + 120);
    v29 = lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();

    v28(&v96, &v88, v113, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v29, v21);
  }

  v85 = v102;
  v86 = v103;
  v87 = v104;
  v81 = v98;
  v82 = v99;
  v83 = v100;
  v84 = v101;
  v79 = v96;
  v80 = v97;
  if (_s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(&v79) == 1)
  {

    return 1;
  }

  v109 = v100;
  v110 = v101;
  v111 = v102;
  v112 = v103;
  v105 = v96;
  v106 = v97;
  v107 = v98;
  v108 = v99;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v115, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v113[0];

  v33 = a1[5];
  v75 = a1[4];
  v76 = v33;
  v34 = a1[7];
  v77 = a1[6];
  v78 = v34;
  v35 = a1[1];
  v71 = *a1;
  v72 = v35;
  v36 = a1[3];
  v73 = a1[2];
  v74 = v36;
  static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(a1, &v71, &v105);
  v37 = *(v4 + 96);
  v38 = *(v4 + 128);
  v39 = *(v4 + 144);
  v76 = *(v4 + 112);
  v77 = v38;
  v78 = v39;
  v40 = *(v4 + 32);
  v41 = *(v4 + 64);
  v42 = *(v4 + 80);
  v72 = *(v4 + 48);
  v73 = v41;
  v74 = v42;
  v75 = v37;
  v43 = a1[5];
  v70[4] = a1[4];
  v70[5] = v43;
  v44 = a1[7];
  v70[6] = a1[6];
  v70[7] = v44;
  v71 = v40;
  v45 = a1[1];
  v70[0] = *a1;
  v70[1] = v45;
  v46 = a1[3];
  v70[2] = a1[2];
  v70[3] = v46;
  static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(a1, v70, &v71);
  swift_beginAccess();
  v47 = v110;
  *(v4 + 248) = v109;
  v48 = v111;
  v49 = v112;
  *(v4 + 264) = v47;
  *(v4 + 280) = v48;
  *(v4 + 296) = v49;
  v50 = v106;
  *(v4 + 184) = v105;
  *(v4 + 200) = v50;
  v51 = v108;
  *(v4 + 216) = v107;
  *(v4 + 232) = v51;
  v52 = *(v4 + 168);
  *(v4 + 176) = a3;
  if (v52 > 0.0)
  {
    *(v4 + 176) = v52 * (round(a3 / v52) + 1.0);
  }

  return 0;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, char a3, void *a4, double a5)
{
  v6 = v5;
  if (*(v5 + 89))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v37 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v37)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = a2;
    *(v5 + 40) = a3 & 1;

    goto LABEL_8;
  }

LABEL_2:
  v12 = a5 - *(v5 + 48);
  swift_beginAccess();
  v13 = *(v5 + 24);
  v14 = *(v5 + 112);

  v41[0] = v13;
  v41[1] = AGCreateWeakAttribute();
  v42 = 0;
  v43 = v14;
  v15 = *(v5 + 120);
  if (v15)
  {
    v16 = *(v6 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>, MEMORY[0x1E69E6720]);
    v38[3] = v19;
    v38[0] = v15;
    v38[1] = v16;
    specialized Dictionary.subscript.setter(v38, v18);
  }

  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  swift_beginAccess();
  v22 = *(v6 + 32);
  v23 = *(v6 + 40);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23);

  *(v6 + 112) = 0;
  v24 = *(v6 + 16);
  v25 = *(v6 + 40);
  v39 = *(v6 + 32);
  v40 = v25;
  v26 = *(*a1 + 136);
  type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);

  LOBYTE(v28) = v26(v24, &v39, v41, v28, v29, v12);

  if (v28)
  {
    *(v6 + 24) = v41[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v30 = *(v6 + 32);
    v31 = *(v6 + 40);
    swift_beginAccess();
    swift_beginAccess();

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v30, v31, a1, a2, a3 & 1, v12);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(v6 + 32, a2, a3 & 1);
  swift_endAccess();
  *(v6 + 64) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    if (v34 >= *(v6 + 56))
    {
      v34 = *(v6 + 56);
    }

    *(v6 + 56) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v36 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 84);
        v36 = *(v6 + 88);
      }

      else
      {
        v36 = 0;
      }
    }

    *(v6 + 84) = result;
    *(v6 + 88) = v36;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v6 = v5;
  if (*(v5 + 93))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v35 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v35)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    goto LABEL_8;
  }

LABEL_2:
  v10 = a5 - *(v5 + 48);
  swift_beginAccess();
  v11 = *(v5 + 24);
  v12 = *(v5 + 112);

  v40[0] = v11;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v12;
  v13 = *(v5 + 120);
  if (v13)
  {
    v14 = *(v6 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>, MEMORY[0x1E69E6720]);
    v38[3] = v17;
    v38[0] = v13;
    v38[1] = v14;
    specialized Dictionary.subscript.setter(v38, v16);
  }

  swift_beginAccess();
  v18 = *(v6 + 16);
  v19 = *(v6 + 24);
  swift_beginAccess();
  v20 = *(v6 + 32);
  v21 = *(v6 + 40);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, v20, v21);

  *(v6 + 112) = 0;
  v39 = *(v6 + 32);
  v22 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v24 = v23;
  v25 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);

  LOBYTE(v24) = v22(v26, &v39, v40, v24, v25, v10);

  if (v24)
  {
    *(v6 + 24) = v40[0];

    *(v6 + 16) = a1;
  }

  else
  {

    v27 = *(v6 + 32);
    v28 = *(v6 + 40);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), a1, v27, v28, v10, a3, a4);
    swift_endAccess();
    swift_endAccess();
  }

  v29.f64[0] = a3;
  v29.f64[1] = a4;
  *(v6 + 32) = vaddq_f64(*(v6 + 32), v29);
  *(v6 + 64) = a5;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v31 & 1) == 0)
  {
    v32 = 0.0;
    if (*&result > 0.0)
    {
      v33 = log2(*&result * 240.0);
      v32 = exp2(floor(v33 + 0.01)) * 0.00416666667;
    }

    if (v32 >= *(v6 + 56))
    {
      v32 = *(v6 + 56);
    }

    *(v6 + 56) = v32;
    if (v32 >= 0.0166666667)
    {
      *&result = 0.0;
      v34 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 88);
        v34 = *(v6 + 92);
      }

      else
      {
        v34 = 0;
      }
    }

    *(v6 + 88) = result;
    *(v6 + 92) = v34;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 77))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v30 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v30)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    *(v4 + 32) = a3;
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 40);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 96);

  v33[0] = v11;
  v33[1] = AGCreateWeakAttribute();
  v34 = 0;
  v35 = v12;
  v13 = *(v4 + 104);
  if (v13)
  {
    v14 = *(v5 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
    v16 = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>?();
    v31[3] = v17;
    v31[0] = v13;
    v31[1] = v14;
    specialized Dictionary.subscript.setter(v31, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, v20);

  *(v5 + 96) = 0;
  v32[0] = *(v5 + 32);
  v21 = *(*a1 + 136);

  v23 = v21(v22, v32, v33, MEMORY[0x1E69E63B0], &protocol witness table for Double, v10);

  if (v23)
  {
    *(v5 + 24) = v33[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v24 = *(v5 + 32);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), a1, v24, v10, a3);
    swift_endAccess();
    swift_endAccess();
  }

  *(v5 + 32) = *(v5 + 32) + a3;
  *(v5 + 56) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 48))
    {
      v27 = *(v5 + 48);
    }

    *(v5 + 48) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 72);
        v29 = *(v5 + 76);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 72) = result;
    *(v5 + 76) = v29;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 77))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v30 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v30)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    *(v4 + 32) = a3;
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 40);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 96);

  v33[0] = v11;
  v33[1] = AGCreateWeakAttribute();
  v34 = 0;
  v35 = v12;
  v13 = *(v4 + 104);
  if (v13)
  {
    v14 = *(v5 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
    v16 = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?();
    v31[3] = v17;
    v31[0] = v13;
    v31[1] = v14;
    specialized Dictionary.subscript.setter(v31, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, v20);

  *(v5 + 96) = 0;
  v32[0] = *(v5 + 32);
  v21 = *(*a1 + 136);
  v22 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

  LOBYTE(v22) = v21(v23, v32, v33, MEMORY[0x1E69E7DE0], v22, v10);

  if (v22)
  {
    *(v5 + 24) = v33[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v24 = *(v5 + 32);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), a1, v24, v10, a3);
    swift_endAccess();
    swift_endAccess();
  }

  *(v5 + 32) = *(v5 + 32) + a3;
  *(v5 + 56) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 48))
    {
      v27 = *(v5 + 48);
    }

    *(v5 + 48) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 72);
        v29 = *(v5 + 76);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 72) = result;
    *(v5 + 76) = v29;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  if (*(v6 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v63 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v63)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    *(v6 + 48) = a5;
    goto LABEL_8;
  }

LABEL_2:
  v68 = a2;
  v14 = a6 - *(v6 + 56);
  swift_beginAccess();
  v15 = *(v6 + 24);
  v16 = *(v6 + 128);

  v78[0] = v15;
  v78[1] = AGCreateWeakAttribute();
  v79 = 0;
  v80 = v16;
  v17 = *(v6 + 136);
  if (v17)
  {
    v18 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
    v20 = v19;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>, MEMORY[0x1E69E6720]);
    v69[3] = v21;
    v69[0] = v17;
    v69[1] = v18;
    specialized Dictionary.subscript.setter(v69, v20);
  }

  swift_beginAccess();
  v22 = *(v7 + 16);
  v23 = *(v7 + 24);
  swift_beginAccess();
  v24 = *(v7 + 32);
  v25 = *(v7 + 40);
  v26 = *(v7 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v22, v23, v24, v25, v26);

  *(v7 + 128) = 0;
  v27 = *(v7 + 48);
  v76 = *(v7 + 32);
  v77 = v27;
  v28 = *(*a1 + 136);
  type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
  v30 = v29;
  v31 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);

  LOBYTE(v30) = v28(v32, &v76, v78, v30, v31, v14);

  if (v30)
  {
    *(v7 + 24) = v78[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v33 = *(v7 + 32);
    v34 = *(v7 + 40);
    v35 = *(v7 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), a1, v33, v34, v35, v14, a3, a4, a5);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  v73 = *(v7 + 32);
  v72 = *(v7 + 40);
  *&v70[1] = a5;
  v71 = a3;
  *v70 = a4;
  v66 = &v64;
  v67 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v36 = MEMORY[0x1E69E7DE0];
  v37 = *(MEMORY[0x1E69E7DE0] - 8);
  v38 = v37[8];
  v39 = MEMORY[0x1EEE9AC00](v67);
  v40 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v37[2];
  v42 = v41(v40, &v73, v36, v39);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v41(v40, &v71, v36, v43);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v44 = v37[1];
  v67 = v44;
  v44(v40, v36);
  v44(v40, v36);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v46 = v45;
  v65 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  v66 = &v64;
  v47 = *(v46 - 8);
  v48 = v47[8];
  v49 = MEMORY[0x1EEE9AC00](v65);
  v50 = &v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v47[2];
  v52 = v51(v50, &v72, v46, v49);
  v64 = &v64;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v51(v50, v70, v46, v53);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v54 = v47[1];
  v54(v50, v46);
  v54(v50, v46);
  v55 = v74;
  v56 = v75[0];
  v57 = v75[1];
  v54(v75, v46);
  v67(&v74, MEMORY[0x1E69E7DE0]);
  *(v7 + 32) = v55;
  *(v7 + 40) = v56;
  *(v7 + 48) = v57;
  swift_endAccess();
  *(v7 + 72) = a6;
  a2 = v68;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v59 & 1) == 0)
  {
    v60 = 0.0;
    if (*&result > 0.0)
    {
      v61 = log2(*&result * 240.0);
      v60 = exp2(floor(v61 + 0.01)) * 0.00416666667;
    }

    if (v60 >= *(v7 + 64))
    {
      v60 = *(v7 + 64);
    }

    *(v7 + 64) = v60;
    if (v60 >= 0.0166666667)
    {
      *&result = 0.0;
      v62 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 104);
        v62 = *(v7 + 108);
      }

      else
      {
        v62 = 0;
      }
    }

    *(v7 + 104) = result;
    *(v7 + 108) = v62;
  }

  return result;
}

{
  v7 = v6;
  if (*(v6 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v40 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v40)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    *(v6 + 48) = a5;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a6 - *(v6 + 56);
  swift_beginAccess();
  v13 = *(v6 + 24);
  v14 = *(v6 + 128);

  v46[0] = v13;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v14;
  v15 = *(v6 + 136);
  if (v15)
  {
    v16 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v43[3] = v19;
    v43[0] = v15;
    v43[1] = v16;
    specialized Dictionary.subscript.setter(v43, v18);
  }

  swift_beginAccess();
  v20 = *(v7 + 16);
  v21 = *(v7 + 24);
  swift_beginAccess();
  v22 = *(v7 + 32);
  v23 = *(v7 + 40);
  v24 = *(v7 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24);

  *(v7 + 128) = 0;
  v25 = *(v7 + 48);
  v44 = *(v7 + 32);
  v45 = v25;
  v26 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);

  LOBYTE(v28) = v26(v30, &v44, v46, v28, v29, v12);

  if (v28)
  {
    *(v7 + 24) = v46[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v31 = *(v7 + 32);
    v32 = *(v7 + 40);
    v33 = *(v7 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), a1, v31, v32, v33, v12, a3, a4, a5);
    swift_endAccess();
    swift_endAccess();
  }

  v34.f64[0] = a3;
  v34.f64[1] = a4;
  *(v7 + 32) = vaddq_f64(*(v7 + 32), v34);
  *(v7 + 48) = *(v7 + 48) + a5;
  *(v7 + 72) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v36 & 1) == 0)
  {
    v37 = 0.0;
    if (*&result > 0.0)
    {
      v38 = log2(*&result * 240.0);
      v37 = exp2(floor(v38 + 0.01)) * 0.00416666667;
    }

    if (v37 >= *(v7 + 64))
    {
      v37 = *(v7 + 64);
    }

    *(v7 + 64) = v37;
    if (v37 >= 0.0166666667)
    {
      *&result = 0.0;
      v39 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 104);
        v39 = *(v7 + 108);
      }

      else
      {
        v39 = 0;
      }
    }

    *(v7 + 104) = result;
    *(v7 + 108) = v39;
  }

  return result;
}

{
  v7 = v6;
  if (*(v6 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v40 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v40)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    *(v6 + 48) = a5;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a6 - *(v6 + 56);
  swift_beginAccess();
  v13 = *(v6 + 24);
  v14 = *(v6 + 128);

  v46[0] = v13;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v14;
  v15 = *(v6 + 136);
  if (v15)
  {
    v16 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v43[3] = v19;
    v43[0] = v15;
    v43[1] = v16;
    specialized Dictionary.subscript.setter(v43, v18);
  }

  swift_beginAccess();
  v20 = *(v7 + 16);
  v21 = *(v7 + 24);
  swift_beginAccess();
  v22 = *(v7 + 32);
  v23 = *(v7 + 40);
  v24 = *(v7 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24);

  *(v7 + 128) = 0;
  v25 = *(v7 + 48);
  v44 = *(v7 + 32);
  v45 = v25;
  v26 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);

  LOBYTE(v28) = v26(v30, &v44, v46, v28, v29, v12);

  if (v28)
  {
    *(v7 + 24) = v46[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v31 = *(v7 + 32);
    v32 = *(v7 + 40);
    v33 = *(v7 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), a1, v31, v32, v33, v12, a3, a4, a5);
    swift_endAccess();
    swift_endAccess();
  }

  v34.f64[0] = a3;
  v34.f64[1] = a4;
  *(v7 + 32) = vaddq_f64(*(v7 + 32), v34);
  *(v7 + 48) = *(v7 + 48) + a5;
  *(v7 + 72) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v36 & 1) == 0)
  {
    v37 = 0.0;
    if (*&result > 0.0)
    {
      v38 = log2(*&result * 240.0);
      v37 = exp2(floor(v38 + 0.01)) * 0.00416666667;
    }

    if (v37 >= *(v7 + 64))
    {
      v37 = *(v7 + 64);
    }

    *(v7 + 64) = v37;
    if (v37 >= 0.0166666667)
    {
      *&result = 0.0;
      v39 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 104);
        v39 = *(v7 + 108);
      }

      else
      {
        v39 = 0;
      }
    }

    *(v7 + 104) = result;
    *(v7 + 108) = v39;
  }

  return result;
}

{
  v7 = v6;
  if (*(v6 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v40 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v40)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    *(v6 + 48) = a5;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a6 - *(v6 + 56);
  swift_beginAccess();
  v13 = *(v6 + 24);
  v14 = *(v6 + 128);

  v46[0] = v13;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v14;
  v15 = *(v6 + 136);
  if (v15)
  {
    v16 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, MEMORY[0x1E69E6720]);
    v43[3] = v19;
    v43[0] = v15;
    v43[1] = v16;
    specialized Dictionary.subscript.setter(v43, v18);
  }

  swift_beginAccess();
  v20 = *(v7 + 16);
  v21 = *(v7 + 24);
  swift_beginAccess();
  v22 = *(v7 + 32);
  v23 = *(v7 + 40);
  v24 = *(v7 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24);

  *(v7 + 128) = 0;
  v25 = *(v7 + 48);
  v44 = *(v7 + 32);
  v45 = v25;
  v26 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);

  LOBYTE(v28) = v26(v30, &v44, v46, v28, v29, v12);

  if (v28)
  {
    *(v7 + 24) = v46[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v31 = *(v7 + 32);
    v32 = *(v7 + 40);
    v33 = *(v7 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), a1, v31, v32, v33, v12, a3, a4, a5);
    swift_endAccess();
    swift_endAccess();
  }

  v34.f64[0] = a3;
  v34.f64[1] = a4;
  *(v7 + 32) = vaddq_f64(*(v7 + 32), v34);
  *(v7 + 48) = *(v7 + 48) + a5;
  *(v7 + 72) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v36 & 1) == 0)
  {
    v37 = 0.0;
    if (*&result > 0.0)
    {
      v38 = log2(*&result * 240.0);
      v37 = exp2(floor(v38 + 0.01)) * 0.00416666667;
    }

    if (v37 >= *(v7 + 64))
    {
      v37 = *(v7 + 64);
    }

    *(v7 + 64) = v37;
    if (v37 >= 0.0166666667)
    {
      *&result = 0.0;
      v39 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 104);
        v39 = *(v7 + 108);
      }

      else
      {
        v39 = 0;
      }
    }

    *(v7 + 104) = result;
    *(v7 + 108) = v39;
  }

  return result;
}

{
  v7 = v6;
  if (*(v6 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v70 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v70)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    *(v6 + 48) = a5;
    goto LABEL_8;
  }

LABEL_2:
  v75 = a2;
  v14 = a6 - *(v6 + 56);
  swift_beginAccess();
  v15 = *(v6 + 24);
  v16 = *(v6 + 128);

  v90[0] = v15;
  v90[1] = AGCreateWeakAttribute();
  v91 = 0;
  v92 = v16;
  v17 = *(v6 + 136);
  if (v17)
  {
    v18 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>();
    v20 = v19;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    v78[3] = v21;
    v78[0] = v17;
    v78[1] = v18;
    specialized Dictionary.subscript.setter(v78, v20);
  }

  swift_beginAccess();
  v22 = *(v7 + 16);
  v23 = *(v7 + 24);
  swift_beginAccess();
  v24 = *(v7 + 32);
  v25 = *(v7 + 40);
  v26 = *(v7 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v22, v23, v24, v25, v26);

  *(v7 + 128) = 0;
  v27 = *(v7 + 48);
  v88 = *(v7 + 32);
  v89 = v27;
  v28 = *(*a1 + 136);
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
  v30 = v29;
  v31 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);

  LOBYTE(v30) = v28(v32, &v88, v90, v30, v31, v14);

  if (v30)
  {
    *(v7 + 24) = v90[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v33 = *(v7 + 32);
    v34 = *(v7 + 40);
    v35 = *(v7 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), a1, v33, v34, v35, v14, a3, a4, a5);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  v36 = *(v7 + 32);
  v37 = *(v7 + 48);
  v83 = *(v7 + 40);
  v84 = v36;
  v81 = a3;
  v82 = v37;
  v79 = a5;
  v80 = a4;
  v77 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v74 = v71;
  v38 = MEMORY[0x1E69E7DE0];
  v39 = *(MEMORY[0x1E69E7DE0] - 8);
  v40 = v39[8];
  v41 = MEMORY[0x1EEE9AC00](v77);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = v39[2];
  v44 = v43(v71 - v42, &v84, v38, v41);
  v76 = v43;
  v73 = v71;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v46(v71 - v42, &v81, v38, v45);
  v77 = *(v77 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v47 = v39[1];
  v47(v71 - v42, v38);
  v48 = (v47)(v71 - v42, v38);
  v74 = v71;
  v71[1] = v40;
  v49 = MEMORY[0x1EEE9AC00](v48);
  v50 = v71 - v42;
  v51 = v42;
  v72 = v42;
  v52 = v71 - v42;
  v53 = v76;
  v54 = (v76)(v52, &v83, v38, v49);
  v73 = v71;
  v55 = MEMORY[0x1EEE9AC00](v54);
  v53(v71 - v51, &v80, v38, v55);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v47(v71 - v51, v38);
  v56 = (v47)(v50, v38);
  v74 = v71;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v58 = v72;
  v59 = v76;
  v60 = (v76)(v71 - v72, &v82, v38, v57);
  v73 = v71;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v59(v71 - v58, &v79, v38, v61);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v47(v71 - v58, v38);
  v47(v71 - v58, v38);
  v63 = v86;
  v62 = v87[0];
  v64 = v85;
  v47(&v85, v38);
  v47(&v86, v38);
  v47(v87, v38);
  *(v7 + 32) = v62;
  *(v7 + 40) = v63;
  *(v7 + 48) = v64;
  swift_endAccess();
  *(v7 + 72) = a6;
  a2 = v75;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v66 & 1) == 0)
  {
    v67 = 0.0;
    if (*&result > 0.0)
    {
      v68 = log2(*&result * 240.0);
      v67 = exp2(floor(v68 + 0.01)) * 0.00416666667;
    }

    if (v67 >= *(v7 + 64))
    {
      v67 = *(v7 + 64);
    }

    *(v7 + 64) = v67;
    if (v67 >= 0.0166666667)
    {
      *&result = 0.0;
      v69 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 104);
        v69 = *(v7 + 108);
      }

      else
      {
        v69 = 0;
      }
    }

    *(v7 + 104) = result;
    *(v7 + 108) = v69;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, unint64_t a2, char a3, void *a4, double a5, double a6)
{
  v7 = v6;
  if (*(v6 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v42 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v42)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a2;
    *(v6 + 40) = a3 & 1;
    *(v6 + 48) = a5;

    goto LABEL_8;
  }

LABEL_2:
  v14 = a6 - *(v6 + 56);
  swift_beginAccess();
  v15 = *(v6 + 24);
  v16 = *(v6 + 128);

  v47[0] = v15;
  v47[1] = AGCreateWeakAttribute();
  v48 = 0;
  v49 = v16;
  v17 = *(v6 + 136);
  if (v17)
  {
    v18 = *(v7 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>();
    v20 = v19;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>, MEMORY[0x1E69E6720]);
    v43[3] = v21;
    v43[0] = v17;
    v43[1] = v18;
    specialized Dictionary.subscript.setter(v43, v20);
  }

  swift_beginAccess();
  v22 = *(v7 + 16);
  v23 = *(v7 + 24);
  swift_beginAccess();
  v24 = *(v7 + 32);
  v25 = *(v7 + 40);
  v26 = *(v7 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v22, v23, v24, v25, v26);

  *(v7 + 128) = 0;
  v27 = *(v7 + 16);
  v28 = *(v7 + 40);
  v29 = *(v7 + 48);
  v44 = *(v7 + 32);
  v45 = v28;
  v46 = v29;
  v30 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
  v32 = v31;
  v33 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);

  LOBYTE(v32) = v30(v27, &v44, v47, v32, v33, v14);

  if (v32)
  {
    *(v7 + 24) = v47[0];

    *(v7 + 16) = a1;
  }

  else
  {

    v34 = *(v7 + 32);
    v35 = *(v7 + 40);
    v36 = *(v7 + 48);
    swift_beginAccess();
    swift_beginAccess();

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), v34, v35, a1, a2, a3 & 1, v36, v14, a5);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(v7 + 32, a2, a3 & 1);
  *(v7 + 48) = *(v7 + 48) + a5;
  swift_endAccess();
  *(v7 + 72) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v38 & 1) == 0)
  {
    v39 = 0.0;
    if (*&result > 0.0)
    {
      v40 = log2(*&result * 240.0);
      v39 = exp2(floor(v40 + 0.01)) * 0.00416666667;
    }

    if (v39 >= *(v7 + 64))
    {
      v39 = *(v7 + 64);
    }

    *(v7 + 64) = v39;
    if (v39 >= 0.0166666667)
    {
      *&result = 0.0;
      v41 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 104);
        v41 = *(v7 + 108);
      }

      else
      {
        v41 = 0;
      }
    }

    *(v7 + 104) = result;
    *(v7 + 108) = v41;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, float64x2_t *a2, void *a3, double a4)
{
  v5 = v4;
  if (*(v4 + 189))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v38 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v38)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v39 = a2[1];
    *(v4 + 32) = *a2;
    *(v4 + 48) = v39;
    v40 = a2[3];
    *(v4 + 64) = a2[2];
    *(v4 + 80) = v40;
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 96);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 208);

  v41[0] = v11;
  v41[1] = AGCreateWeakAttribute();
  v42 = 0;
  v43 = v12;
  v13 = *(v4 + 216);
  if (v13)
  {
    v14 = *(v5 + 224);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>, MEMORY[0x1E69E6720]);
    *(&v49 + 1) = v17;
    *&v48 = v13;
    *(&v48 + 1) = v14;
    specialized Dictionary.subscript.setter(&v48, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v48 = *(v5 + 32);
  v49 = v20;
  v21 = *(v5 + 80);
  v50 = *(v5 + 64);
  v51 = v21;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v48);

  *(v5 + 208) = 0;
  v22 = *(v5 + 48);
  v44 = *(v5 + 32);
  v45 = v22;
  v23 = *(v5 + 80);
  v46 = *(v5 + 64);
  v47 = v23;
  v24 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
  v26 = v25;
  v27 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);

  LOBYTE(v26) = v24(v28, &v44, v41, v26, v27, v10);

  if (v26)
  {
    *(v5 + 24) = v41[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v29 = *(v5 + 48);
    v44 = *(v5 + 32);
    v45 = v29;
    v30 = *(v5 + 80);
    v46 = *(v5 + 64);
    v47 = v30;
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v44, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v31 = vaddq_f64(a2[1], *(v5 + 48));
  *(v5 + 32) = vaddq_f64(*a2, *(v5 + 32));
  *(v5 + 48) = v31;
  v32 = vaddq_f64(a2[3], *(v5 + 80));
  *(v5 + 64) = vaddq_f64(a2[2], *(v5 + 64));
  *(v5 + 80) = v32;
  *(v5 + 112) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v34 & 1) == 0)
  {
    v35 = 0.0;
    if (*&result > 0.0)
    {
      v36 = log2(*&result * 240.0);
      v35 = exp2(floor(v36 + 0.01)) * 0.00416666667;
    }

    if (v35 >= *(v5 + 104))
    {
      v35 = *(v5 + 104);
    }

    *(v5 + 104) = v35;
    if (v35 >= 0.0166666667)
    {
      *&result = 0.0;
      v37 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 184);
        v37 = *(v5 + 188);
      }

      else
      {
        v37 = 0;
      }
    }

    *(v5 + 184) = result;
    *(v5 + 188) = v37;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 141))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v37 = a2[1];
    *(v4 + 32) = *a2;
    *(v4 + 48) = v37;
    *(v4 + 64) = a2[2].f64[0];
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 72);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 160);

  v38[0] = v11;
  v38[1] = AGCreateWeakAttribute();
  v39 = 0;
  v40 = v12;
  v13 = *(v4 + 168);
  if (v13)
  {
    v14 = *(v5 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, MEMORY[0x1E69E6720]);
    *(&v45 + 1) = v17;
    *&v44 = v13;
    *(&v44 + 1) = v14;
    specialized Dictionary.subscript.setter(&v44, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v44 = *(v5 + 32);
  v45 = v20;
  v46 = *(v5 + 64);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v44);

  *(v5 + 160) = 0;
  v21 = *(v5 + 64);
  v22 = *(v5 + 48);
  v41 = *(v5 + 32);
  v42 = v22;
  v43 = v21;
  v23 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);

  LOBYTE(v25) = v23(v27, &v41, v38, v25, v26, v10);

  if (v25)
  {
    *(v5 + 24) = v38[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v28 = *(v5 + 48);
    v41 = *(v5 + 32);
    v42 = v28;
    v43 = *(v5 + 64);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v41, a1, a2->f64, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v29 = a2[2].f64[0];
  v30 = vaddq_f64(a2[1], *(v5 + 48));
  *(v5 + 32) = vaddq_f64(*a2, *(v5 + 32));
  *(v5 + 48) = v30;
  *(v5 + 64) = v29 + *(v5 + 64);
  *(v5 + 88) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v32 & 1) == 0)
  {
    v33 = 0.0;
    if (*&result > 0.0)
    {
      v34 = log2(*&result * 240.0);
      v33 = exp2(floor(v34 + 0.01)) * 0.00416666667;
    }

    if (v33 >= *(v5 + 80))
    {
      v33 = *(v5 + 80);
    }

    *(v5 + 80) = v33;
    if (v33 >= 0.0166666667)
    {
      *&result = 0.0;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 136);
        v35 = *(v5 + 140);
      }

      else
      {
        v35 = 0;
      }
    }

    *(v5 + 136) = result;
    *(v5 + 140) = v35;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, float32x4_t *a2, void *a3, double a4)
{
  v5 = v4;
  if (*(v4 + 105))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v30 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (static Semantics.forced < v30)
  {
LABEL_27:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    *(v4 + 32) = *a2;
    *(v4 + 48) = a2[1].i32[0];
    goto LABEL_10;
  }

LABEL_2:
  v10 = a4 - *(v4 + 56);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 128);

  v34[0] = v11;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v12;
  v13 = *(v4 + 136);
  if (v13)
  {
    v14 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimationFinishingDefinitionKey);
    v16 = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    v31[3] = v17;
    v31[0] = v13;
    v31[1] = v14;
    specialized Dictionary.subscript.setter(v31, v16);
  }

  swift_beginAccess();
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);
  swift_beginAccess();
  v39 = *(v4 + 32);
  v40 = *(v4 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v39);

  *(v4 + 128) = 0;
  v20 = *(v4 + 48);
  v32 = *(v4 + 32);
  v33 = v20;
  v21 = *(*a1 + 136);
  v22 = lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();

  LOBYTE(v22) = v21(v23, &v32, v34, &type metadata for Color.ResolvedHDR._Animatable, v22, v10);

  if (v22)
  {
    *(v5 + 24) = v34[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v37 = *(v5 + 32);
    v38 = *(v5 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v37, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v24 = a2[1].f32[0];
  *(v5 + 32) = vaddq_f32(*a2, *(v5 + 32));
  if (*(v5 + 48) > v24)
  {
    v24 = *(v5 + 48);
  }

  *(v5 + 48) = v24;
  *(v5 + 72) = a4;
LABEL_10:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 64))
    {
      v27 = *(v5 + 64);
    }

    *(v5 + 64) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 100);
        v29 = *(v5 + 104);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 100) = result;
    *(v5 + 104) = v29;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 105))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v32 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v32)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    *(v4 + 32) = *a2;
    *(v4 + 48) = a2[1].i32[0];
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 56);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 128);

  v36[0] = v11;
  v36[1] = AGCreateWeakAttribute();
  v37 = 0;
  v38 = v12;
  v13 = *(v4 + 136);
  if (v13)
  {
    v14 = *(v5 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, MEMORY[0x1E69E6720]);
    v33[3] = v17;
    v33[0] = v13;
    v33[1] = v14;
    specialized Dictionary.subscript.setter(v33, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v41 = *(v5 + 32);
  v42 = *(v5 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v41);

  *(v5 + 128) = 0;
  v20 = *(v5 + 48);
  v34 = *(v5 + 32);
  v35 = v20;
  v21 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
  v23 = v22;
  v24 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);

  LOBYTE(v23) = v21(v25, &v34, v36, v23, v24, v10);

  if (v23)
  {
    *(v5 + 24) = v36[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v39 = *(v5 + 32);
    v40 = *(v5 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v39, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v26 = a2[1].f32[0];
  *(v5 + 32) = vaddq_f32(*a2, *(v5 + 32));
  *(v5 + 48) = v26 + *(v5 + 48);
  *(v5 + 72) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v5 + 64))
    {
      v29 = *(v5 + 64);
    }

    *(v5 + 64) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 100);
        v31 = *(v5 + 104);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v5 + 100) = result;
    *(v5 + 104) = v31;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v37 = a2;
  if (*(v4 + 77))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v31 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v31)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    *(v5 + 32) = a2;

    goto LABEL_8;
  }

LABEL_2:
  v9 = a4 - *(v5 + 40);
  swift_beginAccess();
  v10 = *(v5 + 24);
  v11 = *(v5 + 96);

  v34[0] = v10;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v11;
  v12 = *(v5 + 104);
  if (v12)
  {
    v13 = *(v5 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimationFinishingDefinitionKey);
    v15 = v14;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    v32[3] = v16;
    v32[0] = v12;
    v32[1] = v13;
    specialized Dictionary.subscript.setter(v32, v15);
  }

  swift_beginAccess();
  v17 = *(v5 + 16);
  v18 = *(v5 + 24);
  swift_beginAccess();
  v19 = *(v5 + 32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v17, v18, v19);

  *(v5 + 96) = 0;
  v20 = *(v5 + 16);
  v33[0] = *(v5 + 32);
  v21 = *(*a1 + 136);
  v22 = lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();

  LOBYTE(v22) = v21(v20, v33, v34, &type metadata for ShaderVectorData, v22, v9);

  if (v22)
  {
    *(v5 + 24) = v34[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v23 = *(v5 + 32);
    swift_beginAccess();
    swift_beginAccess();
    v24 = v37;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v23, a1, v24, v9);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  specialized static ShaderVectorData.+= infix(_:_:)(v5 + 32, &v37);
  swift_endAccess();
  *(v5 + 56) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 48))
    {
      v27 = *(v5 + 48);
    }

    *(v5 + 48) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 72);
        v29 = *(v5 + 76);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 72) = result;
    *(v5 + 76) = v29;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 137))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v37 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (static Semantics.forced < v37)
  {
LABEL_27:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v48, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v38 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v38;
    *(v4 + 64) = *(a2 + 32);

    goto LABEL_10;
  }

LABEL_2:
  v39 = a3;
  v10 = a4 - *(v4 + 72);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 160);

  v42[0] = v11;
  v42[1] = AGCreateWeakAttribute();
  v43 = 0;
  v44 = v12;
  v13 = *(v4 + 168);
  if (v13)
  {
    v14 = *(v5 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>, MEMORY[0x1E69E6720]);
    *(&v49 + 1) = v17;
    *&v48 = v13;
    *(&v48 + 1) = v14;
    specialized Dictionary.subscript.setter(&v48, v16);
  }

  swift_beginAccess();
  v19 = *(v5 + 16);
  v18 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v48 = *(v5 + 32);
  v49 = v20;
  v50 = *(v5 + 64);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v48, &v45, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v18, &v48);

  outlined destroy of Slice<IndexSet>(&v48, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

  v21 = *(v5 + 40);
  *(v5 + 160) = 0;
  v22 = *(v5 + 16);
  v23 = *(v5 + 64);
  *&v45 = *(v5 + 32);
  *(&v45 + 1) = v21;
  v46 = *(v5 + 48);
  v47 = v23;
  v24 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
  v26 = v25;
  v27 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

  LOBYTE(v26) = v24(v22, &v45, v42, v26, v27, v10);

  if (v26)
  {
    *(v5 + 24) = v42[0];

    *(v5 + 16) = a1;

    v28 = a2;
    a3 = v39;
  }

  else
  {

    v29 = *(v5 + 48);
    v45 = *(v5 + 32);
    v46 = v29;
    v47 = *(v5 + 64);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v45, v41, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v28 = a2;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v45, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v45, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    a3 = v39;
  }

  swift_beginAccess();
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(v5 + 32, *v28);
  v30 = *(v28 + 32);
  v40 = *(v28 + 16);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(v5 + 40, *(v28 + 8));
  *(v5 + 48) = vaddq_f32(v40, *(v5 + 48));
  v31 = *(v5 + 64);
  if (v31 <= v30)
  {
    v31 = v30;
  }

  *(v5 + 64) = v31;
  swift_endAccess();
  *(v5 + 88) = a4;
LABEL_10:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v33 & 1) == 0)
  {
    v34 = 0.0;
    if (*&result > 0.0)
    {
      v35 = log2(*&result * 240.0);
      v34 = exp2(floor(v35 + 0.01)) * 0.00416666667;
    }

    if (v34 >= *(v5 + 80))
    {
      v34 = *(v5 + 80);
    }

    *(v5 + 80) = v34;
    if (v34 >= 0.0166666667)
    {
      *&result = 0.0;
      v36 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 132);
        v36 = *(v5 + 136);
      }

      else
      {
        v36 = 0;
      }
    }

    *(v5 + 132) = result;
    *(v5 + 136) = v36;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 141))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v37 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v37;
    *(v4 + 64) = *(a2 + 32);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 72);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 160);

  v38[0] = v11;
  v38[1] = AGCreateWeakAttribute();
  v39 = 0;
  v40 = v12;
  v13 = *(v4 + 168);
  if (v13)
  {
    v14 = *(v5 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    *(&v45 + 1) = v17;
    *&v44 = v13;
    *(&v44 + 1) = v14;
    specialized Dictionary.subscript.setter(&v44, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v44 = *(v5 + 32);
  v45 = v20;
  v46 = *(v5 + 64);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v44);

  *(v5 + 160) = 0;
  v21 = *(v5 + 64);
  v22 = *(v5 + 48);
  v41 = *(v5 + 32);
  v42 = v22;
  v43 = v21;
  v23 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);

  LOBYTE(v25) = v23(v27, &v41, v38, v25, v26, v10);

  if (v25)
  {
    *(v5 + 24) = v38[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v28 = *(v5 + 48);
    v41 = *(v5 + 32);
    v42 = v28;
    v43 = *(v5 + 64);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v41, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v29 = *(a2 + 32);
  v30 = vaddq_f64(*(a2 + 16), *(v5 + 48));
  *(v5 + 32) = vaddq_f32(*a2, *(v5 + 32));
  *(v5 + 48) = v30;
  *(v5 + 64) = v29 + *(v5 + 64);
  *(v5 + 88) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v32 & 1) == 0)
  {
    v33 = 0.0;
    if (*&result > 0.0)
    {
      v34 = log2(*&result * 240.0);
      v33 = exp2(floor(v34 + 0.01)) * 0.00416666667;
    }

    if (v33 >= *(v5 + 80))
    {
      v33 = *(v5 + 80);
    }

    *(v5 + 80) = v33;
    if (v33 >= 0.0166666667)
    {
      *&result = 0.0;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 136);
        v35 = *(v5 + 140);
      }

      else
      {
        v35 = 0;
      }
    }

    *(v5 + 136) = result;
    *(v5 + 140) = v35;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 169))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v37 = *(v4 + 48);
    v51 = *(v4 + 32);
    v52 = v37;
    v53 = *(v4 + 64);
    v54 = *(v4 + 80);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v38 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v38;
    *(v4 + 64) = *(a2 + 32);
    *(v4 + 80) = *(a2 + 48);
    outlined destroy of Slice<IndexSet>(&v51, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 88);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 192);

  v44[0] = v11;
  v44[1] = AGCreateWeakAttribute();
  v45 = 0;
  v46 = v12;
  v13 = *(v4 + 200);
  if (v13)
  {
    v14 = *(v5 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>, MEMORY[0x1E69E6720]);
    *(&v52 + 1) = v17;
    *&v51 = v13;
    *(&v51 + 1) = v14;
    specialized Dictionary.subscript.setter(&v51, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v51 = *(v5 + 32);
  v52 = v20;
  v53 = *(v5 + 64);
  v54 = *(v5 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v51, &v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v51);

  outlined destroy of Slice<IndexSet>(&v51, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

  v21 = *(v5 + 48);
  v42[0] = *(v5 + 32);
  v42[1] = v21;
  v23 = *(v5 + 32);
  v22 = *(v5 + 48);
  v42[2] = *(v5 + 64);
  *(v5 + 192) = 0;
  v24 = *(v5 + 16);
  v43 = *(v5 + 80);
  v47 = v23;
  v48 = v22;
  v49 = *(v5 + 64);
  v50 = *(v5 + 80);
  v25 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v42, v41, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
  v27 = v26;
  v28 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  LOBYTE(v27) = v25(v24, &v47, v44, v27, v28, v10);

  outlined destroy of Slice<IndexSet>(v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  if (v27)
  {
    *(v5 + 24) = v44[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v29 = *(v5 + 48);
    v47 = *(v5 + 32);
    v48 = v29;
    v49 = *(v5 + 64);
    v50 = *(v5 + 80);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v47, v41, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v47, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  }

  swift_beginAccess();
  v30 = vaddq_f64(*(a2 + 16), *(v5 + 48));
  *(v5 + 32) = vaddq_f64(*a2, *(v5 + 32));
  *(v5 + 48) = v30;
  v39 = *(a2 + 32);
  v40 = *(a2 + 48);
  ResolvedGradientVector.add(_:scaledBy:)(&v39, 1.0);
  swift_endAccess();
  *(v5 + 104) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v32 & 1) == 0)
  {
    v33 = 0.0;
    if (*&result > 0.0)
    {
      v34 = log2(*&result * 240.0);
      v33 = exp2(floor(v34 + 0.01)) * 0.00416666667;
    }

    if (v33 >= *(v5 + 96))
    {
      v33 = *(v5 + 96);
    }

    *(v5 + 96) = v33;
    if (v33 >= 0.0166666667)
    {
      *&result = 0.0;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 164);
        v35 = *(v5 + 168);
      }

      else
      {
        v35 = 0;
      }
    }

    *(v5 + 164) = result;
    *(v5 + 168) = v35;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 173))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v37 = *(v4 + 48);
    v51 = *(v4 + 32);
    v52 = v37;
    v53 = *(v4 + 64);
    v54 = *(v4 + 80);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    v38 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v38;
    *(v4 + 64) = *(a2 + 32);
    *(v4 + 80) = *(a2 + 48);
    outlined destroy of Slice<IndexSet>(&v51, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 88);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 192);

  v44[0] = v11;
  v44[1] = AGCreateWeakAttribute();
  v45 = 0;
  v46 = v12;
  v13 = *(v4 + 200);
  if (v13)
  {
    v14 = *(v5 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    *(&v52 + 1) = v17;
    *&v51 = v13;
    *(&v51 + 1) = v14;
    specialized Dictionary.subscript.setter(&v51, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v51 = *(v5 + 32);
  v52 = v20;
  v53 = *(v5 + 64);
  v54 = *(v5 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v51, &v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v51);

  outlined destroy of Slice<IndexSet>(&v51, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

  v21 = *(v5 + 48);
  v42[0] = *(v5 + 32);
  v42[1] = v21;
  v23 = *(v5 + 32);
  v22 = *(v5 + 48);
  v42[2] = *(v5 + 64);
  *(v5 + 192) = 0;
  v24 = *(v5 + 16);
  v43 = *(v5 + 80);
  v47 = v23;
  v48 = v22;
  v49 = *(v5 + 64);
  v50 = *(v5 + 80);
  v25 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v42, v41, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
  v27 = v26;
  v28 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  LOBYTE(v27) = v25(v24, &v47, v44, v27, v28, v10);

  outlined destroy of Slice<IndexSet>(v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  if (v27)
  {
    *(v5 + 24) = v44[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v29 = *(v5 + 48);
    v47 = *(v5 + 32);
    v48 = v29;
    v49 = *(v5 + 64);
    v50 = *(v5 + 80);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v47, v41, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v47, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  }

  swift_beginAccess();
  v30 = *a2;
  v39 = *(a2 + 16);
  v40 = *(a2 + 32);
  *(v5 + 32) = vaddq_f64(v30, *(v5 + 32));
  ResolvedGradientVector.add(_:scaledBy:)(&v39, 1.0);
  *(v5 + 72) = vaddq_f64(*(a2 + 40), *(v5 + 72));
  swift_endAccess();
  *(v5 + 104) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v32 & 1) == 0)
  {
    v33 = 0.0;
    if (*&result > 0.0)
    {
      v34 = log2(*&result * 240.0);
      v33 = exp2(floor(v34 + 0.01)) * 0.00416666667;
    }

    if (v33 >= *(v5 + 96))
    {
      v33 = *(v5 + 96);
    }

    *(v5 + 96) = v33;
    if (v33 >= 0.0166666667)
    {
      *&result = 0.0;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 168);
        v35 = *(v5 + 172);
      }

      else
      {
        v35 = 0;
      }
    }

    *(v5 + 168) = result;
    *(v5 + 172) = v35;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 173))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v37 = *(v4 + 48);
    v51 = *(v4 + 32);
    v52 = v37;
    v53 = *(v4 + 64);
    v54 = *(v4 + 80);
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    v38 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v38;
    *(v4 + 64) = *(a2 + 32);
    *(v4 + 80) = *(a2 + 48);
    outlined destroy of Slice<IndexSet>(&v51, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 88);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 192);

  v44[0] = v11;
  v44[1] = AGCreateWeakAttribute();
  v45 = 0;
  v46 = v12;
  v13 = *(v4 + 200);
  if (v13)
  {
    v14 = *(v5 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>, MEMORY[0x1E69E6720]);
    *(&v52 + 1) = v17;
    *&v51 = v13;
    *(&v51 + 1) = v14;
    specialized Dictionary.subscript.setter(&v51, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v51 = *(v5 + 32);
  v52 = v20;
  v53 = *(v5 + 64);
  v54 = *(v5 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v51, &v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v51);

  outlined destroy of Slice<IndexSet>(&v51, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

  v21 = *(v5 + 48);
  v42[0] = *(v5 + 32);
  v42[1] = v21;
  v23 = *(v5 + 32);
  v22 = *(v5 + 48);
  v42[2] = *(v5 + 64);
  *(v5 + 192) = 0;
  v24 = *(v5 + 16);
  v43 = *(v5 + 80);
  v47 = v23;
  v48 = v22;
  v49 = *(v5 + 64);
  v50 = *(v5 + 80);
  v25 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v42, v41, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
  v27 = v26;
  v28 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  LOBYTE(v27) = v25(v24, &v47, v44, v27, v28, v10);

  outlined destroy of Slice<IndexSet>(v42, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  if (v27)
  {
    *(v5 + 24) = v44[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v29 = *(v5 + 48);
    v47 = *(v5 + 32);
    v48 = v29;
    v49 = *(v5 + 64);
    v50 = *(v5 + 80);
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v47, v41, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v47, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v47, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  }

  swift_beginAccess();
  v30 = *a2;
  v39 = *(a2 + 16);
  v40 = *(a2 + 32);
  *(v5 + 32) = vaddq_f64(v30, *(v5 + 32));
  ResolvedGradientVector.add(_:scaledBy:)(&v39, 1.0);
  *(v5 + 72) = vaddq_f64(*(a2 + 40), *(v5 + 72));
  swift_endAccess();
  *(v5 + 104) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v32 & 1) == 0)
  {
    v33 = 0.0;
    if (*&result > 0.0)
    {
      v34 = log2(*&result * 240.0);
      v33 = exp2(floor(v34 + 0.01)) * 0.00416666667;
    }

    if (v33 >= *(v5 + 96))
    {
      v33 = *(v5 + 96);
    }

    *(v5 + 96) = v33;
    if (v33 >= 0.0166666667)
    {
      *&result = 0.0;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 168);
        v35 = *(v5 + 172);
      }

      else
      {
        v35 = 0;
      }
    }

    *(v5 + 168) = result;
    *(v5 + 172) = v35;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 269))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v49 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v49)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v50 = *(v4 + 112);
    v78 = *(v4 + 96);
    v79 = v50;
    v80 = *(v4 + 128);
    v51 = *(v4 + 48);
    v74 = *(v4 + 32);
    v75 = v51;
    v52 = *(v4 + 80);
    v76 = *(v4 + 64);
    v77 = v52;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, &v67, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v53 = *(a2 + 80);
    *(v4 + 96) = *(a2 + 64);
    *(v4 + 112) = v53;
    *(v4 + 128) = *(a2 + 96);
    v54 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v54;
    v55 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 32);
    *(v4 + 80) = v55;
    outlined destroy of Slice<IndexSet>(&v74, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 136);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 288);

  v64[0] = v11;
  v64[1] = AGCreateWeakAttribute();
  v65 = 0;
  v66 = v12;
  v13 = *(v4 + 296);
  if (v13)
  {
    v14 = *(v5 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, MEMORY[0x1E69E6720]);
    *(&v75 + 1) = v17;
    *&v74 = v13;
    *(&v74 + 1) = v14;
    specialized Dictionary.subscript.setter(&v74, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 112);
  v78 = *(v5 + 96);
  v79 = v20;
  v80 = *(v5 + 128);
  v21 = *(v5 + 48);
  v74 = *(v5 + 32);
  v75 = v21;
  v22 = *(v5 + 80);
  v76 = *(v5 + 64);
  v77 = v22;

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v74, &v67, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v74);

  outlined destroy of Slice<IndexSet>(&v74, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  v23 = *(v5 + 80);
  v24 = *(v5 + 112);
  v61 = *(v5 + 96);
  v62 = v24;
  v25 = *(v5 + 48);
  v58[0] = *(v5 + 32);
  v58[1] = v25;
  v26 = *(v5 + 80);
  v28 = *(v5 + 32);
  v27 = *(v5 + 48);
  v59 = *(v5 + 64);
  v29 = v59;
  v60 = v26;
  v30 = *(v5 + 112);
  v71 = v61;
  v72 = v30;
  v67 = v28;
  v68 = v27;
  *(v5 + 288) = 0;
  v31 = *(v5 + 16);
  v63 = *(v5 + 128);
  v73 = *(v5 + 128);
  v69 = v29;
  v70 = v23;
  v32 = *(*a1 + 136);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v58, v56, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
  v34 = v33;
  v35 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  LOBYTE(v34) = v32(v31, &v67, v64, v34, v35, v10);

  outlined destroy of Slice<IndexSet>(v58, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  if (v34)
  {
    *(v5 + 24) = v64[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v36 = *(v5 + 112);
    v71 = *(v5 + 96);
    v72 = v36;
    v73 = *(v5 + 128);
    v37 = *(v5 + 48);
    v67 = *(v5 + 32);
    v68 = v37;
    v38 = *(v5 + 80);
    v69 = *(v5 + 64);
    v70 = v38;
    swift_beginAccess();
    swift_beginAccess();
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v67, v56, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v67, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of Slice<IndexSet>(&v67, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  }

  swift_beginAccess();
  v39 = *(a2 + 88);
  v40 = *(a2 + 80);
  v56[4] = *(a2 + 64);
  v56[5] = v40;
  v57 = *(a2 + 96);
  v41 = *(a2 + 16);
  v56[0] = *a2;
  v56[1] = v41;
  v42 = *(a2 + 48);
  v56[2] = *(a2 + 32);
  v56[3] = v42;
  specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(v5 + 32, v56);
  v43 = v57;
  *(v5 + 120) = v39 + *(v5 + 120);
  _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(v5 + 128, v43);
  swift_endAccess();
  *(v5 + 152) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v45 & 1) == 0)
  {
    v46 = 0.0;
    if (*&result > 0.0)
    {
      v47 = log2(*&result * 240.0);
      v46 = exp2(floor(v47 + 0.01)) * 0.00416666667;
    }

    if (v46 >= *(v5 + 144))
    {
      v46 = *(v5 + 144);
    }

    *(v5 + 144) = v46;
    if (v46 >= 0.0166666667)
    {
      *&result = 0.0;
      v48 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 264);
        v48 = *(v5 + 268);
      }

      else
      {
        v48 = 0;
      }
    }

    *(v5 + 264) = result;
    *(v5 + 268) = v48;
  }

  return result;
}

{
  v5 = v4;
  v9 = *(a2 + 48);
  v58 = *(a2 + 32);
  v59 = v9;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v10 = *(a2 + 16);
  v56 = *a2;
  v57 = v10;
  if (*(v4 + 233))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v40 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v40)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v41 = *(a2 + 48);
    v66 = *(a2 + 32);
    v67 = v41;
    v68 = *(a2 + 64);
    v69 = *(a2 + 80);
    v42 = *(a2 + 16);
    v64 = *a2;
    v65 = v42;
    v43 = *(v5 + 80);
    v72 = *(v5 + 64);
    v73 = v43;
    v74 = *(v5 + 96);
    v75 = *(v5 + 112);
    v44 = *(v5 + 48);
    v70 = *(v5 + 32);
    v71 = v44;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v64, v62);
    v45 = v67;
    *(v5 + 64) = v66;
    *(v5 + 80) = v45;
    *(v5 + 96) = v68;
    *(v5 + 112) = v69;
    v46 = v65;
    *(v5 + 32) = v64;
    *(v5 + 48) = v46;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v70);
    goto LABEL_8;
  }

LABEL_2:
  v11 = a4 - *(v5 + 120);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 256);

  v53[0] = v12;
  v53[1] = AGCreateWeakAttribute();
  v54 = 0;
  v55 = v13;
  v14 = *(v5 + 264);
  if (v14)
  {
    v15 = *(v5 + 272);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v17 = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(&v71 + 1) = v18;
    *&v70 = v14;
    *(&v70 + 1) = v15;
    specialized Dictionary.subscript.setter(&v70, v17);
  }

  swift_beginAccess();
  v19 = *(v5 + 16);
  v20 = *(v5 + 24);
  swift_beginAccess();
  v21 = *(v5 + 80);
  v72 = *(v5 + 64);
  v73 = v21;
  v74 = *(v5 + 96);
  v75 = *(v5 + 112);
  v22 = *(v5 + 48);
  v70 = *(v5 + 32);
  v71 = v22;

  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v70, &v64);
  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, &v70);

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v70);

  v23 = *(v5 + 80);
  v24 = *(v5 + 48);
  v49 = *(v5 + 64);
  v50 = v23;
  v25 = *(v5 + 80);
  v51 = *(v5 + 96);
  v26 = *(v5 + 48);
  v48[0] = *(v5 + 32);
  v27 = v48[0];
  v48[1] = v26;
  v66 = v49;
  v67 = v25;
  v68 = *(v5 + 96);
  *(v5 + 256) = 0;
  v28 = *(v5 + 16);
  v52 = *(v5 + 112);
  v69 = *(v5 + 112);
  v64 = v27;
  v65 = v24;
  v29 = *(*a1 + 136);

  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v48, v62);
  v30 = lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
  v31 = v29(v28, &v64, v53, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v30, v11);

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v48);
  if (v31)
  {
    *(v5 + 24) = v53[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v32 = *(v5 + 80);
    v62[2] = *(v5 + 64);
    v62[3] = v32;
    v62[4] = *(v5 + 96);
    v63 = *(v5 + 112);
    v33 = *(v5 + 48);
    v62[0] = *(v5 + 32);
    v62[1] = v33;
    swift_beginAccess();
    swift_beginAccess();
    v66 = v58;
    v67 = v59;
    v68 = v60;
    v69 = v61;
    v64 = v56;
    v65 = v57;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v62, v47);
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v62, a1, &v64, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v62);
  }

  swift_beginAccess();
  specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(v5 + 32, &v56);
  swift_endAccess();
  *(v5 + 136) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v35 & 1) == 0)
  {
    v36 = 0.0;
    if (*&result > 0.0)
    {
      v37 = log2(*&result * 240.0);
      v36 = exp2(floor(v37 + 0.01)) * 0.00416666667;
    }

    if (v36 >= *(v5 + 128))
    {
      v36 = *(v5 + 128);
    }

    *(v5 + 128) = v36;
    if (v36 >= 0.0166666667)
    {
      *&result = 0.0;
      v38 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 228);
        v38 = *(v5 + 232);
      }

      else
      {
        v38 = 0;
      }
    }

    *(v5 + 228) = result;
    *(v5 + 232) = v38;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 169))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v37 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v37;
    *(v4 + 64) = *(a2 + 32);
    *(v4 + 80) = *(a2 + 48);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 88);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 192);

  v40[0] = v11;
  v40[1] = AGCreateWeakAttribute();
  v41 = 0;
  v42 = v12;
  v13 = *(v4 + 200);
  if (v13)
  {
    v14 = *(v5 + 208);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, MEMORY[0x1E69E6720]);
    *(&v46 + 1) = v17;
    *&v45 = v13;
    *(&v45 + 1) = v14;
    specialized Dictionary.subscript.setter(&v45, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 48);
  v45 = *(v5 + 32);
  v46 = v20;
  v47 = *(v5 + 64);
  v48 = *(v5 + 80);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v45);

  *(v5 + 192) = 0;
  v21 = *(v5 + 72);
  v22 = *(v5 + 80);
  v23 = *(v5 + 40);
  *v43 = *(v5 + 32);
  *&v43[8] = v23;
  *&v43[24] = *(v5 + 56);
  *&v43[40] = v21;
  v44 = v22;
  v24 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
  v26 = v25;
  v27 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);

  LOBYTE(v26) = v24(v28, v43, v40, v26, v27, v10);

  if (v26)
  {
    *(v5 + 24) = v40[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v29 = *(v5 + 48);
    *v43 = *(v5 + 32);
    *&v43[16] = v29;
    *&v43[32] = *(v5 + 64);
    v44 = *(v5 + 80);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v43, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v30 = *(a2 + 16);
  v38[0] = *a2;
  v38[1] = v30;
  v38[2] = *(a2 + 32);
  v39 = *(a2 + 48);
  *(v5 + 32) = *v38 + *(v5 + 32);
  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(v5 + 40, v38 + 8);
  *(v5 + 104) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v32 & 1) == 0)
  {
    v33 = 0.0;
    if (*&result > 0.0)
    {
      v34 = log2(*&result * 240.0);
      v33 = exp2(floor(v34 + 0.01)) * 0.00416666667;
    }

    if (v33 >= *(v5 + 96))
    {
      v33 = *(v5 + 96);
    }

    *(v5 + 96) = v33;
    if (v33 >= 0.0166666667)
    {
      *&result = 0.0;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 164);
        v35 = *(v5 + 168);
      }

      else
      {
        v35 = 0;
      }
    }

    *(v5 + 164) = result;
    *(v5 + 168) = v35;
  }

  return result;
}

{
  v5 = v4;
  v9 = *(a2 + 208);
  v93 = *(a2 + 192);
  v94 = v9;
  v10 = *(a2 + 240);
  v95 = *(a2 + 224);
  v96 = v10;
  v11 = *(a2 + 144);
  v89 = *(a2 + 128);
  v90 = v11;
  v12 = *(a2 + 176);
  v91 = *(a2 + 160);
  v92 = v12;
  v13 = *(a2 + 80);
  v85 = *(a2 + 64);
  v86 = v13;
  v14 = *(a2 + 112);
  v87 = *(a2 + 96);
  v88 = v14;
  v15 = *(a2 + 16);
  v81 = *a2;
  v82 = v15;
  v16 = *(a2 + 48);
  v83 = *(a2 + 32);
  v84 = v16;
  if (*(v4 + 573))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v68 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v68)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v69 = *(a2 + 208);
    *(v5 + 224) = *(a2 + 192);
    *(v5 + 240) = v69;
    v70 = *(a2 + 240);
    *(v5 + 256) = *(a2 + 224);
    *(v5 + 272) = v70;
    v71 = *(a2 + 144);
    *(v5 + 160) = *(a2 + 128);
    *(v5 + 176) = v71;
    v72 = *(a2 + 176);
    *(v5 + 192) = *(a2 + 160);
    *(v5 + 208) = v72;
    v73 = *(a2 + 80);
    *(v5 + 96) = *(a2 + 64);
    *(v5 + 112) = v73;
    v74 = *(a2 + 112);
    *(v5 + 128) = *(a2 + 96);
    *(v5 + 144) = v74;
    v75 = *(a2 + 16);
    *(v5 + 32) = *a2;
    *(v5 + 48) = v75;
    v76 = *(a2 + 48);
    *(v5 + 64) = *(a2 + 32);
    *(v5 + 80) = v76;
    goto LABEL_8;
  }

LABEL_2:
  v17 = a4 - *(v5 + 288);
  swift_beginAccess();
  v18 = *(v5 + 24);
  v19 = *(v5 + 592);

  v78[0] = v18;
  v78[1] = AGCreateWeakAttribute();
  v79 = 0;
  v80 = v19;
  v20 = *(v5 + 600);
  if (v20)
  {
    v21 = *(v5 + 608);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v23 = v22;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    *(&v115 + 1) = v24;
    *&v114 = v20;
    *(&v114 + 1) = v21;
    specialized Dictionary.subscript.setter(&v114, v23);
  }

  swift_beginAccess();
  v25 = *(v5 + 16);
  v26 = *(v5 + 24);
  swift_beginAccess();
  v27 = *(v5 + 240);
  v126 = *(v5 + 224);
  v127 = v27;
  v28 = *(v5 + 272);
  v128 = *(v5 + 256);
  v129 = v28;
  v29 = *(v5 + 176);
  v122 = *(v5 + 160);
  v123 = v29;
  v30 = *(v5 + 208);
  v124 = *(v5 + 192);
  v125 = v30;
  v31 = *(v5 + 112);
  v118 = *(v5 + 96);
  v119 = v31;
  v32 = *(v5 + 144);
  v120 = *(v5 + 128);
  v121 = v32;
  v33 = *(v5 + 48);
  v114 = *(v5 + 32);
  v115 = v33;
  v34 = *(v5 + 80);
  v116 = *(v5 + 64);
  v117 = v34;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v25, v26, &v114);

  *(v5 + 592) = 0;
  v35 = *(v5 + 240);
  v110 = *(v5 + 224);
  v111 = v35;
  v36 = *(v5 + 272);
  v112 = *(v5 + 256);
  v113 = v36;
  v37 = *(v5 + 176);
  v106 = *(v5 + 160);
  v107 = v37;
  v38 = *(v5 + 208);
  v108 = *(v5 + 192);
  v109 = v38;
  v39 = *(v5 + 112);
  v102 = *(v5 + 96);
  v103 = v39;
  v40 = *(v5 + 144);
  v104 = *(v5 + 128);
  v105 = v40;
  v41 = *(v5 + 48);
  v98 = *(v5 + 32);
  v99 = v41;
  v42 = *(v5 + 80);
  v100 = *(v5 + 64);
  v101 = v42;
  v43 = *(*a1 + 136);
  v44 = lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();

  LOBYTE(v44) = v43(v45, &v98, v78, &type metadata for ConcentricRectangle.AnimatableData, v44, v17);

  if (v44)
  {
    *(v5 + 24) = v78[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v46 = *(v5 + 240);
    v97[12] = *(v5 + 224);
    v97[13] = v46;
    v47 = *(v5 + 272);
    v97[14] = *(v5 + 256);
    v97[15] = v47;
    v48 = *(v5 + 176);
    v97[8] = *(v5 + 160);
    v97[9] = v48;
    v49 = *(v5 + 208);
    v97[10] = *(v5 + 192);
    v97[11] = v49;
    v50 = *(v5 + 112);
    v97[4] = *(v5 + 96);
    v97[5] = v50;
    v51 = *(v5 + 144);
    v97[6] = *(v5 + 128);
    v97[7] = v51;
    v52 = *(v5 + 48);
    v97[0] = *(v5 + 32);
    v97[1] = v52;
    v53 = *(v5 + 80);
    v97[2] = *(v5 + 64);
    v97[3] = v53;
    swift_beginAccess();
    swift_beginAccess();
    v110 = v93;
    v111 = v94;
    v112 = v95;
    v113 = v96;
    v106 = v89;
    v107 = v90;
    v108 = v91;
    v109 = v92;
    v102 = v85;
    v103 = v86;
    v104 = v87;
    v105 = v88;
    v98 = v81;
    v99 = v82;
    v100 = v83;
    v101 = v84;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v97, a1, v98.f64, v17);
    swift_endAccess();
    swift_endAccess();
  }

  v54 = *(v5 + 240);
  v77[12] = *(v5 + 224);
  v77[13] = v54;
  v55 = *(v5 + 272);
  v77[14] = *(v5 + 256);
  v77[15] = v55;
  v56 = *(v5 + 176);
  v77[8] = *(v5 + 160);
  v77[9] = v56;
  v57 = *(v5 + 208);
  v77[10] = *(v5 + 192);
  v77[11] = v57;
  v58 = *(v5 + 112);
  v77[4] = *(v5 + 96);
  v77[5] = v58;
  v59 = *(v5 + 144);
  v77[6] = *(v5 + 128);
  v77[7] = v59;
  v60 = *(v5 + 48);
  v77[0] = *(v5 + 32);
  v77[1] = v60;
  v61 = *(v5 + 80);
  v77[2] = *(v5 + 64);
  v77[3] = v61;
  static ConcentricRectangle.AnimatableData.+ infix(_:_:)(v77, &v81, (v5 + 32));
  *(v5 + 304) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v63 & 1) == 0)
  {
    v64 = 0.0;
    if (*&result > 0.0)
    {
      v65 = log2(*&result * 240.0);
      v64 = exp2(floor(v65 + 0.01)) * 0.00416666667;
    }

    if (v64 >= *(v5 + 296))
    {
      v64 = *(v5 + 296);
    }

    *(v5 + 296) = v64;
    if (v64 >= 0.0166666667)
    {
      *&result = 0.0;
      v66 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 568);
        v66 = *(v5 + 572);
      }

      else
      {
        v66 = 0;
      }
    }

    *(v5 + 568) = result;
    *(v5 + 572) = v66;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v30 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v30)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    *(v4 + 32) = *a2;
    *(v4 + 48) = *(a2 + 16);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 56);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 128);

  v34[0] = v11;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v12;
  v13 = *(v4 + 136);
  if (v13)
  {
    v14 = *(v5 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, MEMORY[0x1E69E6720]);
    v33 = v17;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    specialized Dictionary.subscript.setter(&v31, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v31 = *(v5 + 32);
  v32 = *(v5 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v31);

  *(v5 + 128) = 0;
  v37 = *(v5 + 32);
  v38 = *(v5 + 48);
  v20 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
  v22 = v21;
  v23 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);

  LOBYTE(v22) = v20(v24, &v37, v34, v22, v23, v10);

  if (v22)
  {
    *(v5 + 24) = v34[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v37 = *(v5 + 32);
    v38 = *(v5 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v37, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  *(v5 + 32) = vaddq_f32(*a2, *(v5 + 32));
  *(v5 + 48) = vadd_f32(*(a2 + 16), *(v5 + 48));
  *(v5 + 72) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 64))
    {
      v27 = *(v5 + 64);
    }

    *(v5 + 64) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 104);
        v29 = *(v5 + 108);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 104) = result;
    *(v5 + 108) = v29;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 269))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v135 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v135)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v136 = *(a2 + 80);
    *(v4 + 96) = *(a2 + 64);
    *(v4 + 112) = v136;
    *(v4 + 128) = *(a2 + 96);
    v137 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v137;
    v138 = *(a2 + 48);
    *(v4 + 64) = *(a2 + 32);
    *(v4 + 80) = v138;
    goto LABEL_8;
  }

LABEL_2:
  v143 = a3;
  v10 = a4 - *(v4 + 136);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 288);

  v179[0] = v11;
  v179[1] = AGCreateWeakAttribute();
  v180 = 0;
  v181 = v12;
  v13 = *(v4 + 296);
  if (v13)
  {
    v14 = *(v5 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>, MEMORY[0x1E69E6720]);
    *(&v185 + 1) = v17;
    *&v184 = v13;
    *(&v184 + 1) = v14;
    specialized Dictionary.subscript.setter(&v184, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v20 = *(v5 + 112);
  v188 = *(v5 + 96);
  v189 = v20;
  v190 = *(v5 + 128);
  v21 = *(v5 + 48);
  v184 = *(v5 + 32);
  v185 = v21;
  v22 = *(v5 + 80);
  v186 = *(v5 + 64);
  v187 = v22;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v184);

  *(v5 + 288) = 0;
  v23 = *(v5 + 112);
  v177[4] = *(v5 + 96);
  v177[5] = v23;
  v178 = *(v5 + 128);
  v24 = *(v5 + 48);
  v177[0] = *(v5 + 32);
  v177[1] = v24;
  v25 = *(v5 + 80);
  v177[2] = *(v5 + 64);
  v177[3] = v25;
  v26 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);

  LOBYTE(v28) = v26(v30, v177, v179, v28, v29, v10);

  if (v28)
  {
    *(v5 + 24) = v179[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v31 = *(v5 + 112);
    v182[4] = *(v5 + 96);
    v182[5] = v31;
    v183 = *(v5 + 128);
    v32 = *(v5 + 48);
    v182[0] = *(v5 + 32);
    v182[1] = v32;
    v33 = *(v5 + 80);
    v182[2] = *(v5 + 64);
    v182[3] = v33;
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v182, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  swift_beginAccess();
  *(v5 + 32) = *a2 + *(v5 + 32);
  v34 = *(a2 + 56);
  v153 = *(a2 + 40);
  v154 = v34;
  v35 = *(a2 + 88);
  v155 = *(a2 + 72);
  v156 = v35;
  v36 = *(a2 + 24);
  v151 = *(a2 + 8);
  v152 = v36;
  v37 = *(v5 + 88);
  v159 = *(v5 + 72);
  v160 = v37;
  v38 = *(v5 + 120);
  v161 = *(v5 + 104);
  v162 = v38;
  v39 = *(v5 + 56);
  v157 = *(v5 + 40);
  v158 = v39;
  v150 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v142 = &v139;
  v40 = MEMORY[0x1E69E7DE0];
  v41 = *(MEMORY[0x1E69E7DE0] - 8);
  v42 = v41[8];
  v43 = MEMORY[0x1EEE9AC00](v150);
  v148 = v42;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = v44;
  v45 = v41 + 2;
  v46 = v41[2];
  v47 = v46(&v139 - v44, &v157, v40, v43);
  v147 = v46;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49(&v139 - v44, &v151, v40, v48);
  v149 = *(v150 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v51 = v41 + 1;
  v50 = v41[1];
  v150 = v51;
  v50(&v139 - v44, v40);
  v52 = (v50)(&v139 - v44, v40);
  v142 = &v139;
  v175[0] = &v163;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = v146;
  v54 = v147;
  v145 = v45;
  v56 = (v147)(&v139 - v146, &v157 + 8, v40, v53);
  v141 = &v139;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v54(&v139 - v55, &v151 + 8, v40, v57);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(&v139 - v55, v40);
  v58 = (v50)(&v139 - v55, v40);
  v142 = &v139;
  v175[1] = &v164;
  v140 = &v165;
  v59 = MEMORY[0x1EEE9AC00](v58);
  v60 = &v139 - v55;
  v61 = v147;
  v62 = (v147)(&v139 - v55, &v158, v40, v59);
  v141 = &v139;
  v63 = MEMORY[0x1EEE9AC00](v62);
  v64 = &v139 - v55;
  v61(&v139 - v55, &v152, v40, v63);
  v65 = v140;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(v64, v40);
  v66 = (v50)(v60, v40);
  v142 = &v139;
  v175[2] = v65;
  v67 = MEMORY[0x1EEE9AC00](v66);
  v68 = v146;
  v69 = v147;
  v70 = &v139 - v146;
  v71 = (v147)(&v139 - v146, &v158 + 8, v40, v67);
  v141 = &v139;
  v72 = MEMORY[0x1EEE9AC00](v71);
  v69(&v139 - v68, &v152 + 8, v40, v72);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(&v139 - v68, v40);
  v73 = (v50)(v70, v40);
  v142 = &v139;
  v175[3] = &v166;
  v74 = MEMORY[0x1EEE9AC00](v73);
  v76 = v146;
  v75 = v147;
  v77 = (v147)(&v139 - v146, &v159, v40, v74);
  v141 = &v139;
  v78 = MEMORY[0x1EEE9AC00](v77);
  v75(&v139 - v76, &v153, v40, v78);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(&v139 - v76, v40);
  v79 = (v50)(&v139 - v76, v40);
  v142 = &v139;
  v175[4] = &v167;
  v80 = MEMORY[0x1EEE9AC00](v79);
  v81 = &v139 - v76;
  v82 = (v75)(&v139 - v76, &v159 + 8, v40, v80);
  v141 = &v139;
  v83 = MEMORY[0x1EEE9AC00](v82);
  v84 = &v139 - v76;
  v75(&v139 - v76, (&v153 + 8), v40, v83);
  v85 = v75;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(v84, v40);
  v86 = (v50)(v81, v40);
  v142 = &v139;
  v175[5] = &v168;
  v140 = &v169;
  v87 = MEMORY[0x1EEE9AC00](v86);
  v88 = v146;
  v89 = &v139 - v146;
  v90 = (v75)(&v139 - v146, &v160, v40, v87);
  v141 = &v139;
  v91 = MEMORY[0x1EEE9AC00](v90);
  v75(&v139 - v88, &v154, v40, v91);
  v92 = v140;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(&v139 - v88, v40);
  v93 = (v50)(v89, v40);
  v142 = &v139;
  v175[6] = v92;
  v94 = MEMORY[0x1EEE9AC00](v93);
  v95 = v146;
  v96 = v85(&v139 - v146, &v160 + 8, v40, v94);
  v141 = &v139;
  v97 = MEMORY[0x1EEE9AC00](v96);
  v85(&v139 - v95, &v154 + 8, v40, v97);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50(&v139 - v95, v40);
  v98 = (v50)(&v139 - v95, v40);
  v142 = &v139;
  v175[7] = &v170;
  v99 = MEMORY[0x1EEE9AC00](v98);
  v100 = v147;
  v101 = (v147)(&v139 - v95, &v161, v40, v99);
  v141 = &v139;
  v102 = MEMORY[0x1EEE9AC00](v101);
  v100(&v139 - v95, &v155, v40, v102);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v144 = v50;
  v50(&v139 - v95, v40);
  v103 = (v50)(&v139 - v95, v40);
  v142 = &v139;
  v175[8] = &v171;
  v104 = MEMORY[0x1EEE9AC00](v103);
  v105 = v146;
  v106 = v147;
  v107 = &v139 - v146;
  v108 = (v147)(&v139 - v146, &v161 + 8, v40, v104);
  v141 = &v139;
  v109 = MEMORY[0x1EEE9AC00](v108);
  v106(&v139 - v105, &v155 + 8, v40, v109);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v110 = &v139 - v105;
  v111 = v144;
  v144(v110, v40);
  v112 = v111(v107, v40);
  v142 = &v139;
  v175[9] = &v172;
  v113 = MEMORY[0x1EEE9AC00](v112);
  v115 = v146;
  v114 = v147;
  v116 = (v147)(&v139 - v146, &v162, v40, v113);
  v141 = &v139;
  v117 = MEMORY[0x1EEE9AC00](v116);
  v114(&v139 - v115, &v156, v40, v117);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v118 = v144;
  v144(&v139 - v115, v40);
  v119 = v118(&v139 - v115, v40);
  v142 = &v139;
  v175[10] = &v173;
  v120 = MEMORY[0x1EEE9AC00](v119);
  v121 = v146;
  v122 = &v139 - v146;
  v123 = v147;
  v124 = (v147)(&v139 - v146, &v162 + 8, v40, v120);
  v141 = &v139;
  v125 = MEMORY[0x1EEE9AC00](v124);
  v126 = &v139 - v121;
  v123(v126, &v156 + 8, v40, v125);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v118(v126, v40);
  v118(v122, v40);
  v175[11] = &v174;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v175, v176);
  v127 = v176[3];
  *(v5 + 72) = v176[2];
  *(v5 + 88) = v127;
  v128 = v176[5];
  *(v5 + 104) = v176[4];
  *(v5 + 120) = v128;
  v129 = v176[1];
  *(v5 + 40) = v176[0];
  *(v5 + 56) = v129;
  swift_endAccess();
  *(v5 + 152) = a4;
  a3 = v143;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v131 & 1) == 0)
  {
    v132 = 0.0;
    if (*&result > 0.0)
    {
      v133 = log2(*&result * 240.0);
      v132 = exp2(floor(v133 + 0.01)) * 0.00416666667;
    }

    if (v132 >= *(v5 + 144))
    {
      v132 = *(v5 + 144);
    }

    *(v5 + 144) = v132;
    if (v132 >= 0.0166666667)
    {
      *&result = 0.0;
      v134 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 264);
        v134 = *(v5 + 268);
      }

      else
      {
        v134 = 0;
      }
    }

    *(v5 + 264) = result;
    *(v5 + 268) = v134;
  }

  return result;
}

{
  v5 = v4;
  if (*(v4 + 109))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v30 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v30)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    *(v4 + 32) = *a2;
    *(v4 + 48) = *(a2 + 16);
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 56);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 128);

  v34[0] = v11;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v36 = v12;
  v13 = *(v4 + 136);
  if (v13)
  {
    v14 = *(v5 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v33 = v17;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    specialized Dictionary.subscript.setter(&v31, v16);
  }

  swift_beginAccess();
  v18 = *(v5 + 16);
  v19 = *(v5 + 24);
  swift_beginAccess();
  v31 = *(v5 + 32);
  v32 = *(v5 + 48);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v31);

  *(v5 + 128) = 0;
  v37 = *(v5 + 32);
  v38 = *(v5 + 48);
  v20 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  v22 = v21;
  v23 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);

  LOBYTE(v22) = v20(v24, &v37, v34, v22, v23, v10);

  if (v22)
  {
    *(v5 + 24) = v34[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v37 = *(v5 + 32);
    v38 = *(v5 + 48);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v37, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  *(v5 + 32) = vaddq_f32(*a2, *(v5 + 32));
  *(v5 + 48) = vadd_f32(*(a2 + 16), *(v5 + 48));
  *(v5 + 72) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v26 & 1) == 0)
  {
    v27 = 0.0;
    if (*&result > 0.0)
    {
      v28 = log2(*&result * 240.0);
      v27 = exp2(floor(v28 + 0.01)) * 0.00416666667;
    }

    if (v27 >= *(v5 + 64))
    {
      v27 = *(v5 + 64);
    }

    *(v5 + 64) = v27;
    if (v27 >= 0.0166666667)
    {
      *&result = 0.0;
      v29 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 104);
        v29 = *(v5 + 108);
      }

      else
      {
        v29 = 0;
      }
    }

    *(v5 + 104) = result;
    *(v5 + 108) = v29;
  }

  return result;
}