void protocol witness for Hashable.hash(into:) in conformance DisplayList.ViewUpdater.ViewCache.Key()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 17);
  v5 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.ViewUpdater.ViewCache.Key()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 17);
  v6 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void specialized thunk for @callee_guaranteed () -> (@owned DisplayList.ViewUpdater.ViewCache.AsyncValues)(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CD0];
  a1[1] = v1;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, double a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListV11ViewUpdaterC0M5CacheV3KeyVAN12AnimatorInfo33_A9949015C771FF99F7528BB7239FD006LLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl3V11mn4C0L5o2V3p6V_AO12q7Info33_stuvwX6LLVTG5ATxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyApSIsgnndzo_Tf1nc_n03_s7i4UI11kl3V11mn4C0E5o31V7reclaim4timeyAA4TimeV_tFSbAG3p10V3key_AG12q7Info33_stuvwX17LLV5valuet_tXEfU_AH4TimeVTf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x193AC4820](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v22 = result;
  v32 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 20 * v15;
    v17 = *(v16 + 16);
    v18 = *(v16 + 17);
    v23 = *v16;
    outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(*(a3 + 56) + 56 * v15, v31);
    v24[4] = v23;
    v25 = v17;
    v26 = v18;
    outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(v31, &v27);
    v24[2] = v29;
    v24[3] = v30;
    *(&v24[0] + 1) = v27;
    v24[1] = v28;
    v19 = *(&v30 + 1);
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(v24 + 8);
    result = outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(v31);
    if (v19 >= a4)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v32, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v32, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListV11ViewUpdaterC0M5CacheV3KeyVAN12AnimatorInfo33_A9949015C771FF99F7528BB7239FD006LLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl3V11mn4C0L5o2V3p6V_AO12q7Info33_stuvwX6LLVTG5ATxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyApSIsgnndzo_Tf1nc_n03_s7i4UI11kl3V11mn4C0E5o31V7reclaim4timeyAA4TimeV_tFSbAG3p10V3key_AG12q7Info33_stuvwX17LLV5valuet_tXEfU_AH4TimeVTf1nnc_n(void *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized static DisplayList.ViewUpdater.ViewCache.Key.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  if (a1[1].u8[0] == a2[1].u8[0])
  {
    return a1[1].u8[1] ^ a2[1].u8[1] ^ 1u;
  }

  return 0;
}

uint64_t outlined init with copy of DisplayList.ViewUpdater.ViewInfo?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisplayList.ViewUpdater.ViewInfo?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DisplayList.ViewUpdater.ViewInfo?()
{
  if (!lazy cache variable for type metadata for DisplayList.ViewUpdater.ViewInfo?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DisplayList.ViewUpdater.ViewInfo?);
    }
  }
}

uint64_t outlined destroy of DisplayList.ViewUpdater.ViewInfo?(uint64_t a1)
{
  type metadata accessor for DisplayList.ViewUpdater.ViewInfo?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.ViewCache.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewCache.Result(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 51) = *(a2 + 51);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.ViewCache.Result(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 51) = *(a2 + 51);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.Result(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.Result(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >= 2)
  {
    v1 = *result + 2;
  }

  if (v1 == 1)
  {
    return outlined consume of DisplayList.Effect(*result, *(result + 8), *(result + 12));
  }

  if (!v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

__n128 initializeWithCopy for DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 40);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    v8 = *(a2 + 12);
    outlined copy of DisplayList.Effect(*a2, v7, v8);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 12) = v8;
    *(a1 + 16) = a2[2];
    *(a1 + 40) = 1;
  }

  else if (v2)
  {
    v11 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v11;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v3 = *(a2 + 3);
    *(a1 + 24) = v3;
    (**(v3 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      outlined consume of DisplayList.Effect(*a1, *(a1 + 8), *(a1 + 12));
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 2);
      v9 = *(a2 + 12);
      outlined copy of DisplayList.Effect(*a2, v8, v9);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 12) = v9;
      *(a1 + 16) = a2[2];
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      *(a1 + 25) = *(a2 + 25);
      *a1 = v10;
      *(a1 + 16) = v11;
    }

    else
    {
      v6 = a2[3];
      *(a1 + 24) = v6;
      *(a1 + 32) = a2[4];
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  if (v3 == 1)
  {
    v4 = a1;
    outlined consume of DisplayList.Effect(*a1, *(a1 + 8), *(a1 + 12));
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_8:
    a1 = v4;
  }

  v5 = *(a2 + 40);
  if (v5 >= 2)
  {
    v5 = *a2 + 2;
  }

  if (v5 == 1)
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 40) = 1;
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    result = *a2;
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t initializeWithCopy for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  v6 = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t destroy for DisplayList.ViewUpdater.ViewCache.AnimatorInfo(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return outlined consume of DisplayList.Effect(*result, *(result + 8), *(result + 12));
  }

  if (!*(result + 40))
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for DisplayList.ViewUpdater.ViewCache.AnimatorInfo(uint64_t result, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 12);
    v8 = result;
    outlined copy of DisplayList.Effect(*a2, v6, v7);
    result = v8;
    *v8 = v5;
    *(v8 + 8) = v6;
    *(v8 + 12) = v7;
    *(v8 + 16) = *(a2 + 16);
    *(v8 + 40) = 1;
  }

  else if (*(a2 + 40))
  {
    v9 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v9;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    result = v4;
    *(v4 + 40) = 0;
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewCache.AnimatorInfo(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(a1);
    if (*(a2 + 40) == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 2);
      v7 = *(a2 + 12);
      outlined copy of DisplayList.Effect(*a2, v6, v7);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 12) = v7;
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 40) = 1;
    }

    else if (*(a2 + 40))
    {
      v8 = *a2;
      v9 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v8;
      *(a1 + 16) = v9;
    }

    else
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  *(a1 + 48) = *(a2 + 6);
  return a1;
}

double assignWithTake for DisplayList.ViewUpdater.ViewCache.AnimatorInfo(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    outlined destroy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo.State(a1);
    a1 = v3;
    v4 = *(a2 + 16);
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
  }

  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.AnimatorInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.AnimatorInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.Key(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewCache.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Tag and conformance DisplayList.ViewUpdater.ViewCache.Tag()
{
  result = lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Tag and conformance DisplayList.ViewUpdater.ViewCache.Tag;
  if (!lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Tag and conformance DisplayList.ViewUpdater.ViewCache.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.ViewUpdater.ViewCache.Tag and conformance DisplayList.ViewUpdater.ViewCache.Tag);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs13StrideThroughVySo9NSDecimalaG_So8NSNumberCs5NeverOTg5067_s7SwiftUI25AccessibilityValueStorageV21platformAllowedValuesSaySo8G26CGSgvgAFSo9NSDecimalaXEfU_Tf1cn_n(uint64_t a1)
{
  specialized StrideThrough.underestimatedCount.getter();
  v3 = v2;
  v43 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 8);
  v6 = HIWORD(v5);
  v38 = WORD2(v5);
  v39 = v5;
  v40 = WORD1(v5);
  v41 = HIWORD(*a1);
  v34 = WORD2(*a1);
  v7 = *a1;
  v8 = *(a1 + 16);
  v42 = *(a1 + 40);
  v36 = *(a1 + 28);
  v37 = *(a1 + 20);
  v9 = *(a1 + 36);
  if (!v3)
  {
    v35 = 0;
LABEL_13:
    v23 = v34;
    while (1)
    {
      v29 = MEMORY[0x193ABFC80](0);
      v30 = MEMORY[0x193ABFCA0](v29);
      v31 = v39 | (v40 << 16) | (v38 << 32);
      v32 = v31 | (v6 << 48);
      if (v30)
      {
        if (MEMORY[0x193ABFCA0](v7 | (v23 << 32) | (v41 << 48), v31 | (v6 << 48), v8, v37, v36, v9))
        {
          goto LABEL_14;
        }
      }

      else if (MEMORY[0x193ABFCA0](v37, v36, v9, v7 | (v23 << 32) | (v41 << 48), v31 | (v6 << 48), v8))
      {
LABEL_14:
        NSDecimal.advanced(by:)(v33, v42);
        v25 = v24;
        v23 = WORD2(v26);
        v40 = WORD1(v27);
        v41 = HIWORD(v26);
        v7 = v26;
        v28 = WORD2(v27);
        v38 = WORD2(v27);
        v39 = v27;
        v6 = HIWORD(v27);
        goto LABEL_15;
      }

      if (v35 & 1 | ((MEMORY[0x193ABFCB0](v7 | (v23 << 32) | (v41 << 48), v32, v8, v37, v36, v9) & 1) == 0))
      {
        return v43;
      }

      v28 = 1;
      v35 = 1;
      v25 = v8;
LABEL_15:
      NSDecimal._bridgeToObjectiveC()(v28);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v25;
    }
  }

  v35 = 0;
  v10 = *(a1 + 16);
  while (1)
  {
    v15 = v9;
    v16 = MEMORY[0x193ABFC80](0);
    v17 = MEMORY[0x193ABFCA0](v16);
    v18 = v39 | (v40 << 16) | (v38 << 32);
    v19 = v18 | (v6 << 48);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v20 = v36;
    v21 = v37;
    if ((MEMORY[0x193ABFCA0](v7 | (v34 << 32) | (v41 << 48), v18 | (v6 << 48), v10, v37, v36, v15) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_4:
    NSDecimal.advanced(by:)(v22, v42);
    v8 = v11;
    v34 = WORD2(v12);
    v40 = WORD1(v13);
    v41 = HIWORD(v12);
    v7 = v12;
    v14 = WORD2(v13);
    v38 = WORD2(v13);
    v39 = v13;
    v6 = HIWORD(v13);
    v9 = v15;
LABEL_5:
    NSDecimal._bridgeToObjectiveC()(v14);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v10 = v8;
    if (!--v3)
    {
      goto LABEL_13;
    }
  }

  v20 = v36;
  v21 = v37;
  if (MEMORY[0x193ABFCA0](v37, v36, v15, v7 | (v34 << 32) | (v41 << 48), v18 | (v6 << 48), v10))
  {
    goto LABEL_4;
  }

LABEL_10:
  result = MEMORY[0x193ABFCB0](v7 | (v34 << 32) | (v41 << 48), v19, v10, v21, v20, v15);
  if (!(v35 & 1 | ((result & 1) == 0)))
  {
    v9 = v15;
    v14 = 1;
    v35 = 1;
    v8 = v10;
    goto LABEL_5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t AnyAccessibilityValue.localizedDescription.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AccessibilityValue.minValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t AccessibilityValue<>.displayDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 48))(a1, a2, v6);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

{
  return (*(a2 + 32))();
}

uint64_t specialized AccessibilityValue<>.localizedNumericDescription.getter(uint64_t a1, char a2)
{
  v4 = 0.0;
  if ((a2 & 1) == 0)
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    v5.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    if (v5.super.super.isa)
    {
      v6 = v5.super.super.isa;
      isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
      [(objc_class *)isa doubleValue];
      v9 = v8;
      [(objc_class *)v6 doubleValue];
      v11 = v10;

      v4 = v9 - v11;
    }
  }

  if (a2)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = *&a1;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  v13.super.super.isa = NSNumber.init(floatLiteral:)(v12).super.super.isa;
  v14 = v13.super.super.isa;
  if (fabs(v4 + -100.0) >= 2.22044605e-16)
  {
    if (fabs(v4 + -1.0) >= 2.22044605e-16)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    [(objc_class *)v13.super.super.isa doubleValue];
    v15 = CGFloat._bridgeToObjectiveC()().super.super.isa;

    v16 = 3;
    v14 = v15;
  }

  v17 = [objc_opt_self() localizedStringFromNumber:v14 numberStyle:v16];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v18;
}

uint64_t specialized AccessibilityValue<>.localizedNumericDescription.getter(void *a1, void *a2, void *a3)
{
  v4 = 0.0;
  if (a2 && a3)
  {
    v6 = a2;
    v7 = a3;
    [v7 doubleValue];
    v9 = v8;
    [v6 doubleValue];
    v11 = v10;

    v4 = v9 - v11;
  }

  if (fabs(v4 + -100.0) >= 2.22044605e-16)
  {
    v15 = fabs(v4 + -1.0);
    v13.super.super.isa = a1;
    if (v15 >= 2.22044605e-16)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v12 = a1;
    [v12 doubleValue];
    v13.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;

    v14 = 3;
  }

  v16 = [objc_opt_self() localizedStringFromNumber:v13.super.super.isa numberStyle:v14];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v17;
}

uint64_t AccessibilityValue<>.localizedNumericDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v16);
  v4 = v16;
  if (v16)
  {
    v15 = v16;
    closure #1 in AccessibilityValue<>.localizedNumericDescription.getter(&v15, a1, a2, &v14);

    v5 = v14;
  }

  else
  {
    v5 = 0.0;
  }

  (*(a2 + 48))(&v16, a1, a2);
  if (fabs(v5 + -100.0) >= 2.22044605e-16)
  {
    if (fabs(v5 + -1.0) >= 2.22044605e-16)
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v6 = v16;
    [v16 doubleValue];
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;

    v16 = isa;
    v8 = 3;
  }

  v9 = objc_opt_self();
  v10 = v16;
  v11 = [v9 localizedStringFromNumber:v16 numberStyle:v8];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v12;
}

uint64_t specialized AccessibilityValue<>.localizedDescription.getter(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_self() localizedStringFromNumber:v1 numberStyle:1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void closure #1 in AccessibilityValue<>.localizedNumericDescription.getter(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v5 = *a1;
  (*(a3 + 64))(&v12, a2, a3);
  v6 = v12;
  if (v12)
  {
    [v12 doubleValue];
    v8 = v7;
    [v5 doubleValue];
    v10 = v9;

    v11 = v8 - v10;
  }

  else
  {
    v11 = 0.0;
  }

  *a4 = v11;
}

uint64_t AccessibilityValueByProxy.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t AccessibilityValueByProxy.displayDescription.getter(uint64_t a1, uint64_t a2)
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

uint64_t AccessibilityValueByProxy.value.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t AccessibilityValueByProxy.minValue.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t AccessibilityValueByProxy.maxValue.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t AccessibilityValueByProxy.step.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 32))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityEmptyValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityEmptyValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityEmptyValue.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys, &unk_1F008F1A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AccessibilityEmptyValue(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys, &unk_1F008F1A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v6, v3);
}

id AccessibilityBoundedNumber.number.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void AccessibilityBoundedNumber.number.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

id AccessibilityBoundedNumber.lowerBound.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

void AccessibilityBoundedNumber.lowerBound.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

id AccessibilityBoundedNumber.upperBound.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void AccessibilityBoundedNumber.upperBound.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

id AccessibilityBoundedNumber.stride.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return v2;
}

void AccessibilityBoundedNumber.stride.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
}

SwiftUI::AccessibilityBoundedNumber __swiftcall AccessibilityBoundedNumber.init(value:minValue:maxValue:step:)(SwiftUI::AccessibilityNumber value, SwiftUI::AccessibilityNumber_optional minValue, SwiftUI::AccessibilityNumber_optional maxValue, SwiftUI::AccessibilityNumber_optional step)
{
  v5 = *minValue.value.base.super.super.isa;
  v6 = *maxValue.value.base.super.super.isa;
  v7 = *step.value.base.super.super.isa;
  *v4 = *value.base.super.super.isa;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  result.stride = step;
  result.upperBound = maxValue;
  result.lowerBound = minValue;
  result.number = value;
  return result;
}

void *AccessibilityBoundedNumber.minValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AccessibilityBoundedNumber.maxValue.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *AccessibilityBoundedNumber.step.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AccessibilityBoundedNumber.CodingKeys()
{
  v1 = 0x7265626D756ELL;
  v2 = 0x756F427265707075;
  if (*v0 != 2)
  {
    v2 = 0x656469727473;
  }

  if (*v0)
  {
    v1 = 0x756F427265776F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityBoundedNumber.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AccessibilityBoundedNumber.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityBoundedNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityBoundedNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityBoundedNumber.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityBoundedNumber.CodingKeys>, lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys, &unk_1F008F180, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v21 = *(v1 + 16);
  v22 = v8;
  v20 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys();
  v11 = v9;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = v11;
  v24 = 0;
  lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber();
  v12 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v13 = v20;
    v14 = v21;

    v25 = v22;
    v24 = 1;
    v15 = v22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v25 = v14;
    v24 = 2;
    v16 = v14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v25 = v13;
    v24 = 3;
    v17 = v13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void AccessibilityBoundedNumber.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityBoundedNumber.CodingKeys>, lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys, &unk_1F008F180, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = v6;
    v23 = 0;
    lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber();
    v9 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v24;
    v23 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v24;
    v23 = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v24;
    v23 = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v8, v9);
    v13 = v24;
    v14 = v10;
    v15 = v22;
    *v22 = v14;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    v16 = v13;
    v17 = v14;
    v18 = v11;
    v19 = v12;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void AccessibilityBoundedNumber.init<A>(for:in:by:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v80 = a3;
  v82 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = type metadata accessor for Optional();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v70 - v10;
  v78 = type metadata accessor for ClosedRange();
  v11 = type metadata accessor for Optional();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v70 - v14;
  v73 = type metadata accessor for Optional();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v70 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v89 = a4;
  v90 = a5;
  v75 = a5;
  v24 = a1;
  v91 = a1;
  v87 = v11;
  v85 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AccessibilityBoundedNumber.init<A>(for:in:by:), v88, MEMORY[0x1E69E73E0], a4, v25, v16);
  v26 = *(v17 + 48);
  v27 = v26(v16, 1, a4);
  v83 = v24;
  if (v27 == 1)
  {
    v71 = v17;
    v28 = *(v17 + 16);
    v28(v23, v24, a4);
    if (v26(v16, 1, a4) != 1)
    {
      (*(v72 + 8))(v16, v73);
    }

    v29 = v85;
    v30 = v71;
  }

  else
  {
    (*(v17 + 32))(v23, v16, a4);
    v28 = *(v17 + 16);
    v29 = v85;
    v30 = v17;
  }

  v31 = v79;
  v28(v20, v23, a4);
  v32 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AccessibilityNumeric);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v81 + 8))(v80, v84);
    (*(v86 + 8))(v29, v87);
    v45 = *(v30 + 8);
    v45(v23, a4);
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    outlined destroy of AccessibilityNumeric?(&v93, type metadata accessor for AccessibilityNumeric?);
LABEL_12:
    v45(v83, a4);
    v46 = v82;
    *v82 = 0u;
    v46[1] = 0u;
    return;
  }

  v33 = *(&v94 + 1);
  v34 = v95;
  __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
  (*(v34 + 24))(&v92, v33, v34);
  v35 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v79 = v35;
  if (!v35)
  {
    (*(v81 + 8))(v80, v84);
    (*(v86 + 8))(v29, v87);
    v45 = *(v30 + 8);
    v45(v23, a4);
    goto LABEL_12;
  }

  v71 = v32;
  v73 = v23;
  v36 = v86;
  v37 = v87;
  v72 = *(v86 + 16);
  (v72)(v31, v29, v87);
  v38 = v31;
  v39 = v78;
  v40 = *(v78 - 8);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v78) == 1)
  {
    v42 = *(v36 + 8);
    v43 = v79;
    v42(v38, v37);
    v44 = 0;
  }

  else
  {
    v47 = v79;
    ClosedRange<>.minimumValue.getter(v39, &v93);
    (*(v40 + 8))(v38, v39);
    v44 = *(&v94 + 1);
    if (*(&v94 + 1))
    {
      v48 = v95;
      __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
      (*(v48 + 24))(&v92, v44, v48);
      v44 = v92;
      __swift_destroy_boxed_opaque_existential_1(&v93);
    }

    else
    {
      outlined destroy of AccessibilityNumeric?(&v93, type metadata accessor for AccessibilityNumeric?);
    }

    v37 = v87;
  }

  v49 = v85;
  v50 = v74;
  (v72)(v74, v85, v37);
  v51 = v78;
  if (v41(v50, 1, v78) == 1)
  {
    (*(v86 + 8))(v50, v37);
    v52 = 0;
    v54 = v80;
    v53 = v81;
    v55 = v77;
  }

  else
  {
    ClosedRange<>.maximumValue.getter(v51, &v93);
    (*(v40 + 8))(v50, v51);
    v56 = *(&v94 + 1);
    v55 = v77;
    v54 = v80;
    if (*(&v94 + 1))
    {
      v57 = v95;
      __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
      (*(v57 + 24))(&v92, v56, v57);
      v52 = v92;
      __swift_destroy_boxed_opaque_existential_1(&v93);
    }

    else
    {
      outlined destroy of AccessibilityNumeric?(&v93, type metadata accessor for AccessibilityNumeric?);
      v52 = 0;
    }

    v53 = v81;
  }

  v58 = v84;
  (*(v53 + 16))(v55, v54, v84);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v55, 1, AssociatedTypeWitness) == 1)
  {

    v59 = *(v53 + 8);
    v59(v54, v58);
    (*(v86 + 8))(v49, v87);
    v60 = *(v30 + 8);
    v60(v73, a4);
    v59(v55, v58);
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
LABEL_30:
    outlined destroy of AccessibilityNumeric?(&v93, type metadata accessor for AccessibilityNumeric?);
    v63 = 0;
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    goto LABEL_29;
  }

  v61 = *(&v94 + 1);
  if (!*(&v94 + 1))
  {
LABEL_29:

    (*(v53 + 8))(v54, v84);
    (*(v86 + 8))(v49, v87);
    v60 = *(v30 + 8);
    v60(v73, a4);
    goto LABEL_30;
  }

  v62 = v95;
  __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
  (*(v62 + 24))(&v92, v61, v62);

  (*(v53 + 8))(v54, v84);
  (*(v86 + 8))(v49, v87);
  v60 = *(v30 + 8);
  v60(v73, a4);
  v63 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v93);
LABEL_31:
  v64 = v82;
  v65 = v79;
  *v82 = v79;
  v64[1] = v44;
  v64[2] = v52;
  v64[3] = v63;
  v66 = v65;
  v67 = v44;
  v68 = v52;
  v69 = v63;
  v60(v83, a4);
}

SwiftUI::AccessibilityDisclosureValue_optional __swiftcall AccessibilityDisclosureValue.init(rawValue:)(SwiftUI::AccessibilityDisclosureValue_optional rawValue)
{
  if (rawValue.value == SwiftUI_AccessibilityDisclosureValue_expanded)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SwiftUI_AccessibilityDisclosureValue_collapsed)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

SwiftUI::AccessibilityToggleValue::State_optional __swiftcall AccessibilityToggleValue.State.init(rawValue:)(SwiftUI::AccessibilityToggleValue::State_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_AccessibilityToggleValue_State_unknownDefault)
  {
    value = SwiftUI_AccessibilityToggleValue_State_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

SwiftUI::AccessibilityToggleValue __swiftcall AccessibilityToggleValue.init(_:)(SwiftUI::AccessibilityToggleValue result)
{
  if (*result.state)
  {
    v2 = 2 * (*result.state != 1);
  }

  else
  {
    v2 = 1;
  }

  *v1 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityToggleValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityToggleValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityToggleValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityToggleValue.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityToggleValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys, &unk_1F008F0F0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[31] = v8;
  lazy protocol witness table accessor for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AccessibilityToggleValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = a2;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityToggleValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys, &unk_1F008F0F0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v12;
    lazy protocol witness table accessor for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AccessibilityStepperValue.localizedDescription.getter()
{
  v1 = [objc_opt_self() localizedStringFromNumber:*v0 numberStyle:1];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityStepperValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityStepperValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id AccessibilityStepperValue.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v9 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v4;
  v6 = v2;
  v7 = v3;

  return v9;
}

__n128 AccessibilityStepperValue.base.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  return result;
}

SwiftUI::AccessibilitySliderValue __swiftcall AccessibilitySliderValue.init(_:)(SwiftUI::AccessibilitySliderValue result)
{
  v2 = *(result.base.number.base.super.super.isa + 3);
  *v1 = *result.base.number.base.super.super.isa;
  *(v1 + 8) = *(result.base.number.base.super.super.isa + 8);
  *(v1 + 24) = v2;
  return result;
}

SwiftUI::AccessibilitySliderValue __swiftcall AccessibilitySliderValue.init(value:minValue:maxValue:)(SwiftUI::AccessibilityNumber value, SwiftUI::AccessibilityNumber_optional minValue, SwiftUI::AccessibilityNumber_optional maxValue)
{
  v4 = *minValue.value.base.super.super.isa;
  v5 = *maxValue.value.base.super.super.isa;
  *v3 = *value.base.super.super.isa;
  v3[1] = v4;
  v3[2] = v5;
  v3[3] = 0;
  result.base.upperBound = maxValue;
  result.base.lowerBound = minValue;
  result.base.number = value;
  return result;
}

uint64_t AccessibilitySliderValue.init<A>(value:minValue:maxValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, Class *a6@<X8>)
{
  v33 = a6;
  v34 = a3;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = *(a4 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v32 = a1;
  v22(v21, a1, a4, v19);
  v30 = a5;
  AccessibilityNumber.init<A>(floatingPoint:)(v21, a4, &v37);
  v31 = v37;
  v23 = *(v17 + 48);
  v35 = a2;
  v24 = 0;
  if (v23(a2, 1, a4) != 1)
  {
    (*(v11 + 16))(v16, v35, v10);
    result = v23(v16, 1, a4);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_10;
    }

    AccessibilityNumber.init<A>(floatingPoint:)(v16, a4, &v36);
    v24 = v36;
  }

  v26 = v34;
  if (v23(v34, 1, a4) == 1)
  {
    (*(v17 + 8))(v32, a4);
    v27 = 0;
LABEL_8:
    v28 = *(v11 + 8);
    v28(v26, v10);
    result = (v28)(v35, v10);
    v29 = v33;
    *v33 = v31;
    v29[1] = v24;
    v29[2] = v27;
    v29[3] = 0;
    return result;
  }

  (*(v11 + 16))(v13, v26, v10);
  result = v23(v13, 1, a4);
  if (result != 1)
  {
    AccessibilityNumber.init<A>(floatingPoint:)(v13, a4, &v36);
    (*(v17 + 8))(v32, a4);
    v27 = v36;
    goto LABEL_8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t AccessibilityNumber.init<A>(floatingPoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Class *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  (*(v6 + 16))(v8, a1, a2);
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  isa = NSNumber.init(floatLiteral:)(v11[1]).super.super.isa;
  result = (*(v6 + 8))(a1, a2);
  *a3 = isa;
  return result;
}

BOOL static AccessibilityStepperValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v29 = *a1;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v8;
  v28 = v7;
  v9 = v7;
  v10 = v29;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v17 = specialized static AccessibilityBoundedNumber.== infix(_:_:)(&v29, &v25);
  v18 = v26;
  v19 = v27;
  v20 = v28;

  v21 = v30;
  v22 = v31;
  v23 = v32;

  return v17;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityStepperValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilitySliderValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilitySliderValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityStepperValue.encode(to:)(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v25 = a5;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v26 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = *v5;
  v11 = *(v5 + 8);
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = a1[3];
  v24[2] = a1[4];
  v24[1] = __swift_project_boxed_opaque_existential_1(a1, v14);
  v25();
  v15 = v10;
  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v15;
  v28 = v11;
  v29 = v13;
  v30 = v12;
  lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v20 = v28;
  v21 = v29;
  v22 = v30;

  return (*(v31 + 8))(v9, v19);
}

uint64_t AccessibilityStepperValue.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v23 = a6;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v13 = v19;
    v14 = v23;
    lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v12, v10);
    v15 = v22;
    v16 = v21;
    *v14 = v20;
    *(v14 + 8) = v16;
    *(v14 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for AccessibilityValue.localizedDescription.getter in conformance AccessibilitySliderValue()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v2;
  v6 = v1;
  v7 = v3;
  v8 = specialized AccessibilityValue<>.localizedNumericDescription.getter(v5, v1, v3);

  return v8;
}

uint64_t AccessibilityProgressValue.percent.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

SwiftUI::AccessibilityProgressValue __swiftcall AccessibilityProgressValue.init(percent:)(SwiftUI::AccessibilityProgressValue percent)
{
  *v2 = *&percent.percent.is_nil;
  *(v2 + 8) = v1 & 1;
  return percent;
}

NSNumber AccessibilityProgressValue.value.getter()
{
  if (*(v0 + 8))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = *v0;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  return NSNumber.init(floatLiteral:)(v1);
}

Class AccessibilityProgressValue.minValue.getter(Swift::Int a1)
{
  if (*(v1 + 8))
  {
    return 0;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  return NSNumber.init(integerLiteral:)(a1).super.super.isa;
}

uint64_t AccessibilityProgressValue.localizedDescription.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return specialized AccessibilityValue<>.localizedNumericDescription.getter(*v0, 0);
  }
}

uint64_t static AccessibilityProgressValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityProgressValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityProgressValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityProgressValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityProgressValue.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityProgressValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys, &unk_1F008EF40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AccessibilityProgressValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityProgressValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys, &unk_1F008EF40, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v15;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    *(v9 + 8) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NSNumber protocol witness for AccessibilityValue.value.getter in conformance AccessibilityProgressValue@<X0>(NSNumber *a1@<X8>)
{
  if (*(v1 + 8))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *v1;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  result.super.super.isa = NSNumber.init(floatLiteral:)(v3).super.super.isa;
  a1->super.super.isa = result.super.super.isa;
  return result;
}

Class protocol witness for AccessibilityValue.minValue.getter in conformance AccessibilityProgressValue@<X0>(Swift::Int a1@<X2>, Class *a2@<X8>)
{
  if (*(v2 + 8))
  {
    result = 0;
  }

  else
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    result = NSNumber.init(integerLiteral:)(a1).super.super.isa;
  }

  *a2 = result;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AccessibilityProgressValue(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityProgressValue.CodingKeys>, lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys, &unk_1F008EF40, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int AccessibilityNumber.AccessibilityNumberArchiveError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](0);
  return Hasher._finalize()();
}

uint64_t AccessibilityNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    v5 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v5)
    {
      v7 = v5;
      outlined consume of Data._Representation(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
      *a2 = v7;
    }

    else
    {
      lazy protocol witness table accessor for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError();
      swift_allocError();
      swift_willThrow();
      outlined consume of Data._Representation(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AccessibilityNumber.encode(to:)(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v5, v7);
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

SwiftUI::AccessibilityNumber __swiftcall AccessibilityNumber.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v3 = v1;
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  result.base = NSNumber.init(integerLiteral:)(integerLiteral);
  v3->base.super.super.isa = result.base.super.super.isa;
  return result;
}

NSNumber protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance AccessibilityNumber@<X0>(Swift::Int *a1@<X0>, NSNumber *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  result.super.super.isa = NSNumber.init(integerLiteral:)(v3).super.super.isa;
  a2->super.super.isa = result.super.super.isa;
  return result;
}

SwiftUI::AccessibilityNumber __swiftcall AccessibilityNumber.init(floatLiteral:)(Swift::Double floatLiteral)
{
  v3 = v1;
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  result.base = NSNumber.init(floatLiteral:)(floatLiteral);
  v3->base.super.super.isa = result.base.super.super.isa;
  return result;
}

NSNumber protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance AccessibilityNumber@<X0>(double *a1@<X0>, NSNumber *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  result.super.super.isa = NSNumber.init(floatLiteral:)(v3).super.super.isa;
  a2->super.super.isa = result.super.super.isa;
  return result;
}

uint64_t AnyAccessibilityValue.ConcreteBase.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 48);
  v5 = *(a1 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v4(v5, v3);
}

uint64_t AnyAccessibilityValue.ConcreteBase.minValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v3 + 56))(v4, v3, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v7 + 8))(v10, v6);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AnyAccessibilityValue.ConcreteBase.maxValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v3 + 64))(v4, v3, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v7 + 8))(v10, v6);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AnyAccessibilityValue.ConcreteBase.step.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v3 + 72))(v4, v3, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v7 + 8))(v10, v6);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AnyAccessibilityValue.ConcreteBase.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v7, v8);
  v11 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
}

uint64_t AnyAccessibilityValue.ConcreteBase.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t AnyAccessibilityValue.ConcreteBase.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *(a2 + 32);
  v9[1] = v3;
  v9[2] = v3;
  v9[3] = v9[0];
  type metadata accessor for AnyAccessibilityValue.ConcreteBase.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEmptyValue.CodingKeys and conformance AccessibilityEmptyValue.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnyAccessibilityValue.ConcreteBase<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnyAccessibilityValue.ConcreteBase.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnyAccessibilityValue.ConcreteBase<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance _DisplayList_Identity.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyAccessibilityValue.ConcreteBase<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyAccessibilityValue.ConcreteBase<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AnyAccessibilityValue.displayDescription.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t AnyAccessibilityValue.value.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t AnyAccessibilityValue.minValue.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t AnyAccessibilityValue.maxValue.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t AnyAccessibilityValue.step.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t AnyAccessibilityValue.type.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t AnyAccessibilityValue.as<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  return (*(v8 + 80))(a2, a2, a3, v7, v8);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.localizedDescription.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.displayDescription.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.value.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.minValue.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.maxValue.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.step.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.type.getter in conformance AnyAccessibilityValue()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityValue.isEqual(to:) in conformance AnyAccessibilityValue(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized AnyAccessibilityValue.isEqual(to:)(v4, v1, v2, v3);
}

uint64_t AccessibilityValueStorage.Description.text.getter()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static AccessibilityValueStorage.Description.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityValueStorage.Description(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v15 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AccessibilityValueStorage.init<A>(_:description:), v20, MEMORY[0x1E69E73E0], &type metadata for AnyAccessibilityValue, v16, v24);
  *&v23 = 0;
  v21 = 0u;
  v22 = 0u;
  outlined assign with copy of AnyAccessibilityValue?(v24, &v21);
  if (a5)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18DDA6EB0;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    *(v17 + 48) = a4 & 1;
    *(v17 + 56) = a5;
    outlined copy of Text.Storage(a2, a3, a4 & 1);

    outlined consume of Text?(a2, a3, a4, a5);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  _sypSgWOhTm_11(v24, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  *(&v23 + 1) = v17;
  v18 = v22;
  *a9 = v21;
  a9[1] = v18;
  a9[2] = v23;
  return (*(*(v15 - 8) + 8))(a1, v15);
}

uint64_t closure #1 in AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProxyCodable();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - v13;
  (*(v8 + 16))(v10, a1, a2, v12);
  ProxyCodable.init(_:)(v10, a2, v14);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v16[3] = a3;
  swift_getWitnessTable();
  return AnyAccessibilityValue.init<A>(_:)(v14, v11, a4);
}

uint64_t AccessibilityValueStorage.init<A>(_:description:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  _sypSgWOhTm_11(a4, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  result = AnyAccessibilityValue.init<A>(_:)(a1, a3, a4);
  *(a4 + 40) = v7;
  return result;
}

double AccessibilityValueStorage.init(descriptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  _sypSgWOhTm_11(a2, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = a1;
  return result;
}

uint64_t AccessibilityValueStorage.valueDescription.getter()
{
  v1 = *(v0 + 40);
  if (v1 && *(v1 + 16))
  {
  }

  outlined init with copy of AnyAccessibilityValue?(v0, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 24))(v3, v4);
    v7 = v6;
    outlined destroy of AnyAccessibilityValue(v8);
    if (v7)
    {
      type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
      result = swift_allocObject();
      *(result + 16) = xmmword_18DDA6EB0;
      *(result + 32) = v5;
      *(result + 40) = v7;
      *(result + 48) = 0;
      *(result + 56) = MEMORY[0x1E69E7CC0];
      return result;
    }
  }

  else
  {
    _sypSgWOhTm_11(v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t AccessibilityValueStorage.valueDescription.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

void (*AccessibilityValueStorage.valueDescription.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  if (!v5 || !*(v5 + 16))
  {
    outlined init with copy of AnyAccessibilityValue?(v1, v4);
    v7 = v4[3];
    if (v7)
    {
      v8 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      v9 = (*(v8 + 24))(v7, v8);
      v11 = v10;
      outlined destroy of AnyAccessibilityValue(v4);
      if (v11)
      {
        type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_18DDA6EB0;
        *(v6 + 32) = v9;
        *(v6 + 40) = v11;
        *(v6 + 48) = 0;
        *(v6 + 56) = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

    else
    {
      _sypSgWOhTm_11(v4, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    }

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_12:
  v4[5] = v6;
  return AccessibilityValueStorage.valueDescription.modify;
}

void AccessibilityValueStorage.valueDescription.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {

    *(v4 + 40) = v3;
  }

  else
  {

    *(v4 + 40) = v3;
  }

  free(v2);
}

double AccessibilityValueStorage.platformMinValue.getter@<D0>(_OWORD *a1@<X8>)
{
  outlined init with copy of AnyAccessibilityValue?(v1, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 48))(v3, v4);
    outlined destroy of AnyAccessibilityValue(v6);
  }

  else
  {
    _sypSgWOhTm_11(v6, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double AccessibilityValueStorage.platformMaxValue.getter@<D0>(_OWORD *a1@<X8>)
{
  outlined init with copy of AnyAccessibilityValue?(v1, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 56))(v3, v4);
    outlined destroy of AnyAccessibilityValue(v6);
  }

  else
  {
    _sypSgWOhTm_11(v6, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t AccessibilityValueStorage.platformNumberValue.getter()
{
  outlined init with copy of AnyAccessibilityValue?(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 40))(v7, v1, v2);
    outlined destroy of AnyAccessibilityValue(v4);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
    if (swift_dynamicCast())
    {
      return v4[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _sypSgWOhTm_11(v4, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    return 0;
  }
}

uint64_t AccessibilityValueStorage.isBounded.getter()
{
  outlined init with copy of AnyAccessibilityValue?(v0, v8);
  v1 = v9;
  if (!v9)
  {
    _sypSgWOhTm_11(v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v11 = 0u;
    v12 = 0u;
LABEL_5:
    v4 = MEMORY[0x1E69E7CA0];
    _sypSgWOhTm_11(&v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    outlined init with copy of AnyAccessibilityValue?(v0, v8);
    v5 = v9;
    if (v9)
    {
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v6 + 56))(&v11, v5, v6);
      outlined destroy of AnyAccessibilityValue(v8);
      if (*(&v12 + 1))
      {
        v3 = 1;
LABEL_10:
        _sypSgWOhTm_11(&v11, &lazy cache variable for type metadata for Any?, v4 + 8);
        return v3;
      }
    }

    else
    {
      _sypSgWOhTm_11(v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
      v11 = 0u;
      v12 = 0u;
    }

    v3 = 0;
    goto LABEL_10;
  }

  v2 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 48))(&v11, v1, v2);
  outlined destroy of AnyAccessibilityValue(v8);
  if (!*(&v12 + 1))
  {
    goto LABEL_5;
  }

  _sypSgWOhTm_11(&v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  return 1;
}

uint64_t AccessibilityValueStorage.hasAllowedValues.getter()
{
  outlined init with copy of AnyAccessibilityValue?(v0, v11);
  v1 = v12;
  if (!v12)
  {
    _sypSgWOhTm_11(v11, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  v2 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v2 + 64))(&v14, v1, v2);
  outlined destroy of AnyAccessibilityValue(v11);
  if (!*(&v15 + 1))
  {
LABEL_9:
    v9 = MEMORY[0x1E69E7CA0] + 8;
    goto LABEL_12;
  }

  v3 = MEMORY[0x1E69E7CA0];
  _sypSgWOhTm_11(&v14, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  outlined init with copy of AnyAccessibilityValue?(v0, v11);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 48))(&v14, v4, v5);
    outlined destroy of AnyAccessibilityValue(v11);
    if (*(&v15 + 1))
    {
      _sypSgWOhTm_11(&v14, &lazy cache variable for type metadata for Any?, v3 + 8);
      outlined init with copy of AnyAccessibilityValue?(v0, v11);
      v6 = v12;
      if (v12)
      {
        v7 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v7 + 56))(&v14, v6, v7);
        outlined destroy of AnyAccessibilityValue(v11);
        if (*(&v15 + 1))
        {
          v8 = 1;
LABEL_16:
          _sypSgWOhTm_11(&v14, &lazy cache variable for type metadata for Any?, v3 + 8);
          return v8;
        }
      }

      else
      {
        _sypSgWOhTm_11(v11, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
        v14 = 0u;
        v15 = 0u;
      }

      v8 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    _sypSgWOhTm_11(v11, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v14 = 0u;
    v15 = 0u;
  }

  v9 = v3 + 8;
LABEL_12:
  _sypSgWOhTm_11(&v14, &lazy cache variable for type metadata for Any?, v9);
  return 0;
}

uint64_t AccessibilityValueStorage.platformAllowedValues.getter()
{
  outlined init with copy of AnyAccessibilityValue?(v0, &v37);
  v1 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {
    _sypSgWOhTm_11(&v37, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v28 = 0u;
    *v29 = 0u;
    goto LABEL_13;
  }

  v2 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  (*(v2 + 64))(&v28, v1, v2);
  outlined destroy of AnyAccessibilityValue(&v37);
  if (!*&v29[8])
  {
LABEL_13:
    v24 = &v28;
    v25 = MEMORY[0x1E69E7CA0] + 8;
LABEL_14:
    _sypSgWOhTm_11(v24, &lazy cache variable for type metadata for Any?, v25);
    return 0;
  }

  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  v3 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v37;
  outlined init with copy of AnyAccessibilityValue?(v0, &v37);
  v5 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {

    _sypSgWOhTm_11(&v37, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v28 = 0u;
    *v29 = 0u;
LABEL_19:
    v24 = &v28;
    v25 = v3 + 8;
    goto LABEL_14;
  }

  v6 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  (*(v6 + 48))(&v28, v5, v6);
  outlined destroy of AnyAccessibilityValue(&v37);
  if (!*&v29[8])
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v7 = v37;
  outlined init with copy of AnyAccessibilityValue?(v0, &v37);
  v8 = *(&v38 + 1);
  if (!*(&v38 + 1))
  {

    _sypSgWOhTm_11(&v37, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v35 = 0u;
    v36 = 0u;
LABEL_23:
    v24 = &v35;
    v25 = v3 + 8;
    goto LABEL_14;
  }

  v9 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  (*(v9 + 56))(&v35, v8, v9);
  outlined destroy of AnyAccessibilityValue(&v37);
  if (!*(&v36 + 1))
  {

    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v10 = v34;
  [v7 decimalValue];
  v26 = v10;
  [v10 decimalValue];
  [v4 decimalValue];
  v11 = v37;
  v12 = WORD2(v37);
  v27 = WORD3(v37);
  v13 = WORD4(v37);
  v14 = WORD5(v37);
  v15 = WORD6(v37);
  v16 = HIWORD(v37);
  v17 = v38;
  v18 = WORD1(v38);
  v19 = MEMORY[0x193ABFC80](0);
  result = MEMORY[0x193ABFCB0](v11 | (v12 << 32) | (v27 << 48), v13 | (v14 << 16) | (v15 << 32) | (v16 << 48), v17 | (v18 << 16), v19, v20, v21);
  if (result)
  {
    __break(1u);
  }

  else
  {
    *v29 = v31;
    *&v29[4] = v32;
    *&v29[20] = v33;
    v37 = v30;
    v38 = *v29;
    v39 = *&v29[16];
    v40 = v11;
    v41 = v12;
    v42 = v27;
    v43 = v13;
    v44 = v14;
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    v23 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs13StrideThroughVySo9NSDecimalaG_So8NSNumberCs5NeverOTg5067_s7SwiftUI25AccessibilityValueStorageV21platformAllowedValuesSaySo8G26CGSgvgAFSo9NSDecimalaXEfU_Tf1cn_n(&v37);

    return v23;
  }

  return result;
}

uint64_t AccessibilityValueStorage.merge(with:)(uint64_t a1)
{
  outlined init with copy of AnyAccessibilityValue?(v1, &v11);
  v3 = *(&v12 + 1);
  _sypSgWOhTm_11(&v11, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  if (!v3)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, &v8);
    if (*(&v9 + 1))
    {
      v11 = v8;
      v12 = v9;
      v13 = v10;
      _sypSgWOhTm_11(v1, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
      v6 = v12;
      *v1 = v11;
      *(v1 + 16) = v6;
      *(v1 + 32) = v13;
      result = 1;
      v5 = *(v1 + 40);
      if (!v5)
      {
        return result;
      }

      goto LABEL_6;
    }

    _sypSgWOhTm_11(&v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  }

  result = 0;
  v5 = *(v1 + 40);
  if (!v5)
  {
    return result;
  }

LABEL_6:
  if (!*(v5 + 16))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (*(v7 + 16))
      {

        *(v1 + 40) = v7;
        return 1;
      }
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnyAccessibilityValue.Keys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyAccessibilityValue.Keys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyAccessibilityValue.Keys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyAccessibilityValue.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AnyAccessibilityValue.Keys>, lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys, &unk_1F008EEB0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  (*(v11 + 72))(v14, v10, v11);
  v15 = 0;
  lazy protocol witness table accessor for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v15 = 1;
    KeyedEncodingContainer.superEncoder(forKey:)();
    dispatch thunk of Encodable.encode(to:)();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t CodableAccessibilityValueStorage.init(_:in:idiom:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 255;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 24) = 0u;
  v6 = a4 + 24;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *a2;
  v14 = *a3;
  *v15 = v9;

  AccessibilityText.init(texts:environment:optional:idiom:)(v8, v15, 0, &v14, v16);
  v10 = v16[0];
  v11 = v16[1];
  v12 = v17;
  outlined consume of AccessibilityText?(0, 0, 255);
  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  _sypSgWOhTm_11(v6, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  outlined init with copy of AnyAccessibilityValue?(a1, v6);

  return outlined destroy of AccessibilityValueStorage(a1);
}

uint64_t CodableAccessibilityValueStorage.accessibilityValue.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of AnyAccessibilityValue?(v1 + 24, v9);
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 16) == 0xFF)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    outlined copy of AccessibilityText?(v4, v3, v5);
    outlined assign with copy of AnyAccessibilityValue?(v9, a1);
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for AccessibilityTextStorage();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    *(v7 + 32) = v5 & 1;
    *(v7 + 33) = HIBYTE(v5) & 1;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
    outlined copy of AccessibilityText?(v4, v3, v5);
    outlined assign with copy of AnyAccessibilityValue?(v9, a1);
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18DDA6EB0;
    *(v6 + 32) = v7;
    *(v6 + 40) = 0;
    *(v6 + 48) = 1;
    *(v6 + 56) = MEMORY[0x1E69E7CC0];

    outlined consume of Text.Storage(v7, 0, 1);
  }

  result = _sypSgWOhTm_11(v9, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  *(a1 + 40) = v6;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityValueStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityValueStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableAccessibilityValueStorage.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityValueStorage.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v14 = *v3;
  v15 = v10;
  v16 = v11;
  v17 = 0;
  outlined copy of AccessibilityText?(v14, v10, v11);
  lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of AccessibilityText?(v14, v15, v16);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t specialized AnyAccessibilityValue.isEqual(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a3;
  v18[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of AnyTrackedValue(v18, v15);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityValue);
  if (swift_dynamicCast())
  {
    v16[0] = v12;
    v16[1] = v13;
    v17 = v14;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    v10 = (*(v9 + 88))(v16, v8, v9);
    outlined destroy of AnyAccessibilityValue(v16);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    _sypSgWOhTm_11(&v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v10 & 1;
}

void specialized StrideThrough.underestimatedCount.getter()
{
  v1 = v0;
  v2 = 0;
  v3 = 0;
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  by = v1[5];
  v7 = *(v1 + 20);
  v8 = *(v1 + 28);
  v9 = *(v1 + 9);
  while (1)
  {
    v10 = MEMORY[0x193ABFC80](0);
    if (MEMORY[0x193ABFCA0](v10))
    {
      if (MEMORY[0x193ABFCA0](v4, v5, v6, v7, v8, v9))
      {
        goto LABEL_7;
      }
    }

    else if (MEMORY[0x193ABFCA0](v7, v8, v9, v4, v5, v6))
    {
LABEL_7:
      NSDecimal.advanced(by:)(v11, by);
      v4 = v12;
      v5 = v13;
      v6 = v14;
      goto LABEL_8;
    }

    if (v3 & 1 | ((MEMORY[0x193ABFCB0](v4, v5, v6, v7, v8, v9) & 1) == 0))
    {
      return;
    }

    v3 = 1;
LABEL_8:
    if (__OFADD__(v2, 1))
    {
      break;
    }

    ++v2;
  }

  __break(1u);
}

BOOL specialized static AccessibilityBoundedNumber.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
  v10 = v2;
  v11 = v6;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v17 = 0;
    v3 = v7;
LABEL_13:
    v22 = v3;

LABEL_27:
    return 0;
  }

  if (!v7)
  {
    v17 = v3;
    goto LABEL_13;
  }

  v13 = v3;
  v14 = v7;
  v15 = v13;
  v16 = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    v17 = 0;
    v5 = v9;
    goto LABEL_21;
  }

  if (!v9)
  {
    v17 = v5;
LABEL_21:
    v27 = v5;

    goto LABEL_27;
  }

  v18 = v5;
  v19 = v9;
  v20 = v18;
  v21 = static NSObject.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (!v4)
  {
    if (!v8)
    {
      return 1;
    }

    v17 = 0;
    v4 = v8;
    goto LABEL_26;
  }

  if (!v8)
  {
    v17 = v4;
LABEL_26:
    v29 = v4;

    goto LABEL_27;
  }

  v23 = v4;
  v24 = v8;
  v25 = v23;
  v26 = static NSObject.== infix(_:_:)();

  return (v26 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber.CodingKeys and conformance AccessibilityBoundedNumber.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber()
{
  result = lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNumber and conformance AccessibilityNumber);
  }

  return result;
}

void type metadata accessor for AccessibilityNumeric?()
{
  if (!lazy cache variable for type metadata for AccessibilityNumeric?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AccessibilityNumeric);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityNumeric?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.CodingKeys and conformance AccessibilityToggleValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State()
{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State;
  if (!lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityToggleValue.State and conformance AccessibilityToggleValue.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue.CodingKeys and conformance AccessibilityStepperValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber()
{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber;
  if (!lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue.CodingKeys and conformance AccessibilitySliderValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressValue.CodingKeys and conformance AccessibilityProgressValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError()
{
  result = lazy protocol witness table cache variable for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError;
  if (!lazy protocol witness table cache variable for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError;
  if (!lazy protocol witness table cache variable for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityNumber.AccessibilityNumberArchiveError and conformance AccessibilityNumber.AccessibilityNumberArchiveError);
  }

  return result;
}

uint64_t specialized static AnyAccessibilityValue.== infix(_:_:)(void *a1, uint64_t a2)
{
  v14[3] = &type metadata for AnyAccessibilityValue;
  v14[4] = lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
  v14[0] = swift_allocObject();
  outlined init with copy of AnyAccessibilityValue(a2, v14[0] + 16);
  outlined init with copy of AnyTrackedValue(v14, v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityValue);
  if (swift_dynamicCast())
  {
    v12[0] = v8;
    v12[1] = v9;
    v13 = v10;
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 88))(v12, v4, v5);
    outlined destroy of AnyAccessibilityValue(v12);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    _sypSgWOhTm_11(&v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v6 & 1;
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>)
  {
    lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber();
    lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber();
    lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>)
  {
    lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber();
    lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber();
    lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue>)
  {
    lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
    lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
    lazy protocol witness table accessor for type AccessibilityProgressValue and conformance AccessibilityProgressValue();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue>)
  {
    lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue()
{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderValue and conformance AccessibilitySliderValue);
  }

  return result;
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue>)
  {
    lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
    lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
    lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue>)
  {
    lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
    lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
    lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue>)
  {
    lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
    lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
    lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<String>)
  {
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<String>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<Bool>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<Bool>)
  {
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<Bool>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<Double>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<Double>)
  {
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<Double>);
    }
  }
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<Int>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<Int>)
  {
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<Int>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for AccessibilityBoundedNumber(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityBoundedNumber and conformance AccessibilityBoundedNumber();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Never? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityDisclosureValue(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityStepperValue(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilitySliderValue(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type AccessibilitySliderValue and conformance AccessibilitySliderValue();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityNumber(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityNumber and conformance AccessibilityNumber();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> ProxyCodable<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *initializeWithCopy for AccessibilityBoundedNumber(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  a1[2] = v5;
  a1[3] = v6;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return a1;
}

uint64_t assignWithCopy for AccessibilityBoundedNumber(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  *(a1 + 24) = v14;
  v15 = v14;

  return a1;
}

uint64_t assignWithTake for AccessibilityBoundedNumber(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

uint64_t assignWithCopy for AccessibilityValueStorage(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24))
  {
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(a1);
      v5 = *(a2 + 4);
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v6;
      *(a1 + 32) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 4);
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  *(a1 + 40) = *(a2 + 5);

  return a1;
}

uint64_t assignWithTake for AccessibilityValueStorage(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(a1);
    }
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityValueStorage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16) != 0xFF)
  {
    if (v4 == 255)
    {
      outlined destroy of AccessibilityText(a1);
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 16) = v6;
      goto LABEL_9;
    }

    v10 = *a2;
    v11 = a2[1];
    v12 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v11, v4 & 1);
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    outlined consume of AccessibilityText.Storage(v13, v14, v15);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 8);
      *a1 = v5;
      goto LABEL_9;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v8, v4 & 1);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
  }

  *(a1 + 17) = *(a2 + 17);
LABEL_9:
  v16 = a2[6];
  if (*(a1 + 48))
  {
    v17 = (a1 + 24);
    if (v16)
    {
      __swift_assign_boxed_opaque_existential_1(v17, a2 + 3);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v17);
      v18 = a2[7];
      v19 = *(a2 + 5);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = v19;
      *(a1 + 56) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + 48) = v16;
    *(a1 + 56) = a2[7];
    (**(v16 - 8))(a1 + 24, (a2 + 3));
  }

  else
  {
    v20 = *(a2 + 3);
    v21 = *(a2 + 5);
    *(a1 + 56) = a2[7];
    *(a1 + 40) = v21;
    *(a1 + 24) = v20;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityValueStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != 255)
  {
    v5 = *(a2 + 16);
    if (*(a2 + 16) != 0xFF)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      *a1 = *a2;
      *(a1 + 16) = v5 & 1;
      outlined consume of AccessibilityText.Storage(v6, v7, v4 & 1);
      *(a1 + 17) = HIBYTE(v5) & 1;
      if (!*(a1 + 48))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of AccessibilityText(a1);
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (!*(a1 + 48))
  {
    goto LABEL_10;
  }

LABEL_7:
  if (*(a2 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue(a1 + 24);
  }

LABEL_10:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t specialized AccessibilityBoundedNumber.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F427265776F6CLL && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F427265707075 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656469727473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t outlined destroy of AccessibilityNumeric?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (AnyAccessibilityValue?, AnyAccessibilityValue?)()
{
  if (!lazy cache variable for type metadata for (AnyAccessibilityValue?, AnyAccessibilityValue?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyAccessibilityValue?, AnyAccessibilityValue?));
    }
  }
}

uint64_t BloomFilter.init<A>(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = dispatch thunk of Hashable.hashValue.getter();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = (1 << (v6 >> 4)) | (1 << (v6 >> 10)) | (1 << SBYTE2(v6));
  return result;
}

uint64_t static PreferenceVisualEffectModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, void, void)@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a7;
  v39 = a9;
  v70 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v35 - v17;
  v18 = a2[3];
  v19 = a2[1];
  v62 = a2[2];
  v63 = v18;
  v20 = a2[3];
  v64 = a2[4];
  v21 = a2[1];
  v60 = *a2;
  v61 = v21;
  v56 = v62;
  v57 = v20;
  v58 = a2[4];
  v38 = *a1;
  v65 = *(a2 + 20);
  v59 = *(a2 + 20);
  v54 = v60;
  v55 = v19;
  outlined init with copy of _ViewInputs(&v60, v68);
  PreferencesInputs.add<A>(_:)(a6, a6, a8);
  v66[2] = v56;
  v66[3] = v57;
  v66[4] = v58;
  v67 = v59;
  v66[0] = v54;
  v66[1] = v55;
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v22 = outlined init with copy of _ViewInputs(v66, v68);
  v40 = a3;
  v41 = a4;
  a3(v46, v22, &v48);
  v68[2] = v50;
  v68[3] = v51;
  v68[4] = v52;
  v69 = v53;
  v68[0] = v48;
  v68[1] = v49;
  outlined destroy of _ViewInputs(v68);
  v44 = *&v46[0];
  v45 = DWORD2(v46[0]);
  v23 = PreferencesOutputs.subscript.getter(a6, a6, a8);

  if ((v23 & 0x100000000) != 0)
  {
    v25 = v35;
    v26 = (*(a8 + 16))(a6, a8);
    MEMORY[0x1EEE9AC00](v26);
    v27 = v37;
    *(&v35 - 2) = v37;
    v28 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v25, partial apply for closure #1 in Attribute.init(value:), (&v35 - 4), v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
    v24 = (*(v36 + 8))(v25, v27);
    LODWORD(v23) = v48;
  }

  *&v46[0] = __PAIR64__(v23, v38);
  MEMORY[0x1EEE9AC00](v24);
  *(&v35 - 4) = a5;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  v30 = v42;
  *&v49 = v42;
  *(&v49 + 1) = a8;
  v31 = type metadata accessor for PreferenceVisualEffectModifier.Child();
  *(&v35 - 3) = v31;
  *(&v35 - 2) = swift_getWitnessTable();
  v32 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v46, partial apply for closure #1 in Attribute.init<A>(_:), (&v35 - 6), v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  _GraphValue.init(_:)(v48, v43);
  v46[2] = v62;
  v46[3] = v63;
  v46[4] = v64;
  v47 = v65;
  v46[0] = v60;
  v46[1] = v61;
  (*(v30 + 16))(v43, v46, v40, v41, a5, v30);
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  return outlined destroy of _ViewInputs(&v48);
}

uint64_t PreferenceVisualEffectModifier.Child.preferenceValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

uint64_t PreferenceVisualEffectModifier.Child.value.getter@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = v8 - v3;
  v5 = specialized PreferenceVisualEffectModifier.Child.modifier.getter();

  v6 = PreferenceVisualEffectModifier.Child.preferenceValue.getter(v4);
  v5(v6, v4);

  return (*(v2 + 8))(v4, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceVisualEffectModifier<A, B>.Child()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t View.visualEffectPreferenceValue<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = type metadata accessor for PreferenceVisualEffectModifier();
  return View.modifier<A>(_:)(v7, a4, v5);
}

uint64_t instantiation function for generic protocol witness table for PreferenceVisualEffectModifier<A, B>.Child(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Interpolatable<>.interpolatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[3] = a3;
  swift_getAssociatedTypeWitness();
  v18[1] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for InterpolatedVectorElement();
  v6 = type metadata accessor for ArrayWith2Inline();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_checkMetadataState();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v14 = static Array._adoptStorage(_:count:)();
  v16 = v15;
  (*(v9 + 16))(v12, v18[2], a1);
  (*(v9 + 32))(v16, v12, a1);
  *(v16 + *(type metadata accessor for InterpolatedVectorElement() + 44)) = 0x3FF0000000000000;
  _finalizeUninitializedArray<A>(_:)();
  ArrayWith2Inline.init(arrayLiteral:)(v14, v5);
  return (*(a2 + 48))(v8, v13, a2);
}

uint64_t key path setter for Interpolatable<>.interpolatableData : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return Interpolatable<>.interpolatableData.setter(v11, v5, v6, v7);
}

uint64_t Interpolatable<>.interpolatableData.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v70 = a1;
  v80 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for InterpolatedVectorElement();
  v6 = type metadata accessor for ArrayWith2Inline();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for LazyFilterSequence();
  v79 = swift_getWitnessTable();
  v81[1] = v79;
  v67 = swift_getWitnessTable();
  v8 = v7;
  v9 = type metadata accessor for DefaultIndices();
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60[2] = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = v60 - v12;
  v13 = swift_getWitnessTable();
  v72 = v9;
  v60[1] = v13;
  v64 = type metadata accessor for IndexingIterator();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v15 = v60 - v14;
  v76 = v5;
  v78 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v60 - v17;
  v68 = v6;
  v74 = type metadata accessor for LazySequence();
  MEMORY[0x1EEE9AC00](v74);
  v69 = v60 - v19;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v60 - v22;
  v24 = v8;
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v60 - v26;
  v28 = *(a4 + 56);
  v65 = swift_checkMetadataState();
  v28(v65, a4);
  v29 = v24;
  v30 = v68;
  MEMORY[0x193ABEFB0](v68, WitnessTable);
  (*(v20 + 8))(v23, v30);
  v31 = swift_allocObject();
  v32 = v75;
  v31[2] = v80;
  v31[3] = v32;
  v31[4] = a4;
  swift_getWitnessTable();
  LazySequenceProtocol.filter(_:)();

  v33 = Collection.count.getter();
  if (v33)
  {
    v34 = v33;
    v35 = *(v80 - 8);
    v36 = *(v35 + 8);
    v37 = v77;
    WitnessTable = v35 + 8;
    v74 = v36;
    (v36)(v77);
    if (v34 == 1)
    {
      v81[0] = 0;
      MEMORY[0x193AC0900](v81, v29, v79);
      (*(*(v65 - 8) + 8))(v70);
      (*(v66 + 8))(v27, v29);
      return (*(v35 + 32))(v37, v18, v80);
    }

    else
    {
      v81[0] = 0;
      v39 = v79;
      MEMORY[0x193AC0900](v81, v29, v79);
      v68 = *(v35 + 32);
      v69 = (v35 + 32);
      v68(v37, v18, v80);
      v81[0] = 0;
      MEMORY[0x193AC0900](v81, v29, v39);
      v40 = *&v18[*(v76 + 44)];
      v41 = *(v78 + 8);
      v78 += 8;
      v41(v18);
      v75 = v29;
      Collection<>.indices.getter();
      v42 = v61;
      v43 = v72;
      Collection.dropFirst(_:)();
      v44 = v62;
      (*(v62 + 16))(v15, v42, v43);
      v45 = *(v64 + 36);
      DefaultIndices.startIndex.getter();
      (*(v44 + 8))(v42, v43);
      DefaultIndices.endIndex.getter();
      v46 = *&v15[v45];
      if (v46 != v81[0])
      {
        v67 = AssociatedConformanceWitness + 8;
        do
        {
          DefaultIndices.formIndex(after:)();
          v81[0] = v46;
          v48 = v75;
          v49 = v79;
          MEMORY[0x193AC0900](v81, v75, v79);
          v50 = *&v18[*(v76 + 44)];
          v41(v18);
          v40 = v40 + v50;
          v51 = v50 / v40;
          if (v51 < 1.0)
          {
            v81[0] = v46;
            MEMORY[0x193AC0900](v81, v48, v49);
            v47 = v80;
            (*(AssociatedConformanceWitness + 8))(v18, v80, v51);
            v74(v18, v47);
          }

          else
          {
            v52 = v45;
            v53 = v15;
            v54 = v41;
            v55 = v77;
            v56 = v27;
            v57 = v80;
            v74(v77, v80);
            v81[0] = v46;
            MEMORY[0x193AC0900](v81, v48, v49);
            v58 = v55;
            v41 = v54;
            v15 = v53;
            v45 = v52;
            v59 = v57;
            v27 = v56;
            v68(v58, v18, v59);
          }

          DefaultIndices.endIndex.getter();
          v46 = *&v15[v45];
        }

        while (v46 != v81[0]);
      }

      (*(*(v65 - 8) + 8))(v70);
      (*(v63 + 8))(v15, v64);
      return (*(v66 + 8))(v27, v75);
    }
  }

  else
  {
    (*(*(v65 - 8) + 8))(v70);
    return (*(v66 + 8))(v27, v29);
  }
}

uint64_t InterpolatedVectorElement.init(key:amount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for InterpolatedVectorElement();
  *(a3 + *(result + 44)) = a4;
  return result;
}

BOOL closure #1 in Interpolatable<>.interpolatableData.setter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return *(a1 + *(type metadata accessor for InterpolatedVectorElement() + 44)) > 0.0;
}

void (*Interpolatable<>.interpolatableData.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Interpolatable<>.interpolatableData.getter(a2, a4, v15);
  return Interpolatable<>.interpolatableData.modify;
}

void Interpolatable<>.interpolatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = v2[2];
    v9 = *v2;
    v8 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);
    Interpolatable<>.interpolatableData.setter(v3, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Interpolatable<>.interpolatableData.setter((*a1)[7], *v2, v2[1], v2[2]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall InterpolatedVector.scale(by:)(Swift::Double by)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for InterpolatedVectorElement();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ArrayWith2Inline();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  (*(v5 + 56))(v6, v5, v13);
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  (*(v12 + 8))(v15, v11);
  v17 = v25;
  v16 = v26;
  if (v25 != v26)
  {
    if (v26 < v25)
    {
      __break(1u);
    }

    else if (v25 < v26)
    {
      v24 = v5;
      v22 = *(v5 + 72);
      v23 = v5 + 72;
      do
      {
        v18 = v16;
        v19 = v4;
        v20 = v22(&v25, v6, v24);
        ArrayWith2Inline.subscript.getter(v17, v11, v10);
        *&v10[*(v8 + 44)] = *&v10[*(v8 + 44)] * by;
        ArrayWith2Inline.subscript.setter(v10, v17, v11);
        v20(&v25, 0);
        v16 = v18;
        v4 = v19;
        ++v17;
      }

      while (v18 != v17);
      return;
    }

    __break(1u);
  }
}

double InterpolatedVector.magnitudeSquared.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for InterpolatedVectorElement();
  v4 = type metadata accessor for ArrayWith2Inline();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  (*(a2 + 56))(a1, a2, v6);
  v13 = 0;
  v11 = a1;
  v12 = a2;
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();
  (*(v5 + 8))(v8, v4);
  return v14;
}

double closure #1 in InterpolatedVector.magnitudeSquared.getter@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for InterpolatedVectorElement();
  result = v5 + *(a2 + *(v6 + 44)) * *(a2 + *(v6 + 44));
  *a3 = result;
  return result;
}

BOOL closure #1 in InterpolatedVector.merge(_:factor:)(uint64_t a1, double a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return fabs(*(a1 + *(type metadata accessor for InterpolatedVectorElement() + 44))) >= a2;
}

uint64_t static InterpolatedVector.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v55 = AssociatedTypeWitness;
  v58 = AssociatedConformanceWitness;
  v9 = type metadata accessor for InterpolatedVectorElement();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v52 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v65 = v50 - v15;
  v62 = v16;
  v17 = type metadata accessor for ArrayWith2Inline();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v50[1] = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v50 - v22;
  v24 = *(a4 + 56);
  v56 = a2;
  v60 = v24;
  (v24)(a3, a4, v21);
  swift_getWitnessTable();
  LOBYTE(a2) = Collection.isEmpty.getter();
  v25 = *(v18 + 8);
  result = v25(v23, v17);
  if (a2)
  {
    return result;
  }

  v60(a3, a4);
  v27 = Collection.isEmpty.getter();
  v25(v23, v17);
  if (v27)
  {
    v28 = *(a3 - 8);
    v29 = v61;
    (*(v28 + 8))(v61, a3);
    return (*(v28 + 16))(v29, v56, a3);
  }

  v64 = a4;
  v30 = v60;
  v60(a3, a4);
  v51 = Collection.count.getter();
  v25(v23, v17);
  v63 = a3;
  v59 = a4 + 56;
  v30(a3, v64);
  v31 = Collection.count.getter();
  result = v25(v23, v17);
  if (v31 < 0)
  {
    goto LABEL_22;
  }

  v32 = v60;
  v33 = v51;
  if (!v31)
  {
LABEL_19:
    v48 = v63;
    v47 = v64;
    v49 = v32(v63, v64);
    MEMORY[0x1EEE9AC00](v49);
    v50[-4] = v48;
    v50[-3] = v47;
    v50[-2] = 0x3EB0000000000000;
    swift_getWitnessTable();
    RangeReplaceableCollection.filter(_:)();
    return (*(v47 + 64))(v23, v48, v47);
  }

  v34 = 0;
  v35 = (v57 + 8);
  v50[0] = v57 + 16;
  v53 = v64 + 72;
  v54 = v31;
  while (1)
  {
    v32(v63, v64);
    v57 = v34;
    ArrayWith2Inline.subscript.getter(v34, v17, v65);
    result = v25(v23, v17);
    if (v33 < 0)
    {
      break;
    }

    v38 = v33;
    if (v33)
    {
      v39 = 0;
      v40 = *&v65[*(v62 + 44)];
      while (1)
      {
        v60(v63, v64);
        ArrayWith2Inline.subscript.getter(v39, v17, v13);
        v25(v23, v17);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          break;
        }

        ++v39;
        (*v35)(v13, v62);
        if (v38 == v39)
        {
          goto LABEL_7;
        }
      }

      v41 = v62;
      v42 = *(v62 + 44);
      v43 = v40 + *&v13[v42];
      *&v13[v42] = v43;
      if (fabs(v43) < 0.000000953674316)
      {
        v66 = v39;
        v51 = (*(v64 + 72))(v67, v63);
        swift_getWitnessTable();
        v44 = v52;
        RangeReplaceableCollection.remove(at:)();
        v45 = *v35;
        (*v35)(v44, v41);
        v51(v67, 0);
        v45(v13, v41);
        v45(v65, v41);
        v33 = v38 - 1;
        goto LABEL_9;
      }

      (*v50[0])(v52, v13, v41);
      v51 = (*(v64 + 72))(v67, v63);
      ArrayWith2Inline.subscript.setter(v52, v39, v17);
      v51(v67, 0);
      v46 = *v35;
      (*v35)(v13, v41);
      v46(v65, v41);
    }

    else
    {
LABEL_7:
      v36 = (*(v64 + 72))(v67, v63);
      v37 = v65;
      ArrayWith2Inline.append(_:)(v65, v17);
      v36(v67, 0);
      (*v35)(v37, v62);
    }

    v33 = v38;
LABEL_9:
    v34 = v57 + 1;
    v32 = v60;
    if (v57 + 1 == v54)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t static InterpolatedVector.-= infix(_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v55 = a2;
  v63 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v57 = AssociatedConformanceWitness;
  v7 = type metadata accessor for InterpolatedVectorElement();
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v64 = v13;
  v65 = &v47 - v14;
  v15 = type metadata accessor for ArrayWith2Inline();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v23 = a4 + 56;
  v22 = *(a4 + 56);
  v49 = a3;
  v50 = a4;
  v22(a3, a4, v19);
  swift_getWitnessTable();
  LOBYTE(AssociatedConformanceWitness) = Collection.isEmpty.getter();
  v26 = *(v16 + 8);
  v24 = v16 + 8;
  v25 = v26;
  result = (v26)(v21, v15);
  if ((AssociatedConformanceWitness & 1) == 0)
  {
    (v22)(v49, v50);
    v60 = Collection.count.getter();
    v25(v21, v15);
    v61 = v22;
    v62 = v23;
    (v22)(v49, v50);
    v28 = Collection.count.getter();
    result = (v25)(v21, v15);
    if (v28 < 0)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v58 = v24;
    v59 = v25;
    v29 = v49;
    v30 = v50;
    v31 = v61;
    if (v28)
    {
      v32 = 0;
      v33 = (v56 + 8);
      v48 = (v56 + 16);
      v53 = v50 + 72;
      v54 = v28;
      while (1)
      {
        v31(v29, v30);
        v36 = v65;
        v56 = v32;
        ArrayWith2Inline.subscript.getter(v32, v15, v65);
        result = v59(v21, v15);
        v37 = *(v64 + 44);
        v38 = *&v36[v37];
        *&v36[v37] = -v38;
        if (v60 < 0)
        {
          break;
        }

        if (v60)
        {
          v39 = 0;
          while (1)
          {
            v61(v29, v30);
            ArrayWith2Inline.subscript.getter(v39, v15, v11);
            v59(v21, v15);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            ++v39;
            (*v33)(v11, v64);
            if (v60 == v39)
            {
              goto LABEL_5;
            }
          }

          v40 = v64;
          v41 = *(v64 + 44);
          v42 = *&v11[v41];
          *&v11[v41] = v42 - v38;
          if (vabdd_f64(v42, v38) >= 0.000000953674316)
          {
            (*v48)(v52, v11, v40);
            v51 = (*(v30 + 72))(v67, v29, v30);
            ArrayWith2Inline.subscript.setter(v52, v39, v15);
            v51(v67, 0);
            v45 = *v33;
            (*v33)(v11, v40);
            v45(v65, v40);
          }

          else
          {
            v66 = v39;
            v51 = (*(v30 + 72))(v67, v29, v30);
            swift_getWitnessTable();
            v43 = v52;
            RangeReplaceableCollection.remove(at:)();
            v44 = *v33;
            (*v33)(v43, v40);
            v51(v67, 0);
            v44(v11, v40);
            v44(v65, v40);
            --v60;
          }
        }

        else
        {
LABEL_5:
          v34 = (*(v30 + 72))(v67, v29, v30);
          v35 = v65;
          ArrayWith2Inline.append(_:)(v65, v15);
          v34(v67, 0);
          (*v33)(v35, v64);
        }

        v32 = v56 + 1;
        v31 = v61;
        if (v56 + 1 == v54)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    v46 = (v31)(v29, v30);
    MEMORY[0x1EEE9AC00](v46);
    *(&v47 - 4) = v29;
    *(&v47 - 3) = v30;
    *(&v47 - 2) = 0x3EB0000000000000;
    swift_getWitnessTable();
    RangeReplaceableCollection.filter(_:)();
    return (*(v30 + 64))(v21, v29, v30);
  }

  return result;
}

BOOL static InterpolatedVectorElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for InterpolatedVectorElement();
  return *(a1 + *(v4 + 44)) == *(a2 + *(v4 + 44));
}

uint64_t type metadata completion function for InterpolatedVectorElement()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for InterpolatedVectorElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for InterpolatedVectorElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void (*EnvironmentValues.appearsActive.modify(void *a1))(uint64_t a1, char a2)
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

    active = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AppearsActiveI0VG_Tt1g5(v5);
  }

  else
  {
    active = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = active & 1;
  return EnvironmentValues.appearsActive.modify;
}

void (*EnvironmentValues.windowAppearsFocused.modify(void *a1))(uint64_t a1, char a2)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO14AppearsFocusedVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO14AppearsFocusedVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.windowAppearsFocused.modify;
}

void (*EnvironmentValues.windowAppearsMain.modify(void *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO11AppearsMainVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO11AppearsMainVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.windowAppearsMain.modify;
}

void (*EnvironmentValues.windowAppearsActive.modify(void *a1))(uint64_t a1, char a2)
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

    active = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO13AppearsActiveVG_Tt1g5(v5);
  }

  else
  {
    active = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = active & 1;
  return EnvironmentValues.windowAppearsActive.modify;
}

void (*EnvironmentValues.windowIsFocused.modify(void *a1))(uint64_t a1, char a2)
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

    IsFocusedVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO9IsFocusedVG_Tt1g5(v5);
  }

  else
  {
    IsFocusedVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO9IsFocusedVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = IsFocusedVG_Tt1g5 & 1;
  return EnvironmentValues.windowIsFocused.modify;
}

uint64_t key path getter for EnvironmentValues.appearsActive : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    v7 = result;
  }

  *a4 = v7 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.appearsActive : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

void (*EnvironmentValues.windowIsMain.modify(void *a1))(uint64_t a1, char a2)
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

    IsMainVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO6IsMainVG_Tt1g5(v5);
  }

  else
  {
    IsMainVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO6IsMainVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = IsMainVG_Tt1g5 & 1;
  return EnvironmentValues.windowIsMain.modify;
}

void EnvironmentValues.appearsActive.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void))
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

uint64_t outlined destroy of NonGestureEventType?(uint64_t a1)
{
  type metadata accessor for NonGestureEventType?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NonGestureEventType?()
{
  if (!lazy cache variable for type metadata for NonGestureEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for NonGestureEventType);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NonGestureEventType?);
    }
  }
}

void AlignmentKey.id.getter(unint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a1 < 2)
  {
    __break(1u);
  }

  else if (a1 >> 1 <= *(off_1ED537F58 + 2))
  {
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    return;
  }

  __break(1u);
}

uint64_t HorizontalAlignment.init(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v4 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a1, a2);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  return 2 * v4 + 2;
}

double static AlignmentID._combineExplicit(childValue:_:into:)(uint64_t a1, uint64_t a2, double a3)
{
  return static AlignmentID._combineExplicit(childValue:_:into:)(a1, a2, a3);
}

{
  if (!a1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 8))
  {
    __break(1u);
LABEL_4:
    *a2 = a3;
  }

  result = (*a2 * a1 + a3) / (a1 + 1.0);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t AlignmentKey.init(id:axis:)(uint64_t a1, uint64_t a2, char a3)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v6 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a1, a2);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  return (a3 & 1 | (2 * v6)) + 2;
}

void HorizontalAlignment.combineExplicit<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a2 < 2)
  {
    __break(1u);
  }

  else if (a2 >> 1 <= *(off_1ED537F58 + 2))
  {
    v6 = (off_1ED537F58 + 16 * (a2 >> 1) + 16);
    v7 = *v6;
    v8 = v6[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    static AlignmentID.combineExplicit<A>(_:)(a1, v7, a3, v8);
    return;
  }

  __break(1u);
}

double protocol witness for static AlignmentID._combineExplicit(childValue:_:into:) in conformance HorizontalAlignment.FormDetailLeading(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 8))
  {
    __break(1u);
LABEL_4:
    *a2 = a3;
  }

  result = (*a2 * a1 + a3) / (a1 + 1.0);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for static AlignmentID.defaultValue(in:) in conformance HorizontalAlignment.LeadingText(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  if (*a4 != -1)
  {
    v6 = a5;
    swift_once();
    a5 = v6;
  }

  return ViewDimensions.subscript.getter(*a5);
}

uint64_t _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      return *(*(v6 + 56) + 8 * v7);
    }
  }

  v10 = a1[1];
  v9 = *(v10 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  a1[1] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v16;
  return v9;
}

Swift::Int AlignmentKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

void specialized AlignmentGuide.viewDebugValue.getter(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a1 < 2)
  {
    __break(1u);
  }

  else if (a1 >> 1 <= *(off_1ED537F58 + 2))
  {
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v4 = _typeName(_:qualified:)();
    a2[3] = MEMORY[0x1E69E6158];
    *a2 = v4;
    a2[1] = v5;
    return;
  }

  __break(1u);
}

void AlignmentGuide.viewDebugValue.getter(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (v3 < 2)
  {
    __break(1u);
  }

  else if (v3 >> 1 <= *(off_1ED537F58 + 2))
  {
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v4 = _typeName(_:qualified:)();
    a2[3] = MEMORY[0x1E69E6158];
    *a2 = v4;
    a2[1] = v5;
    return;
  }

  __break(1u);
}

uint64_t CodableAlignment.base.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodableAlignment.VerticalCodingValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableAlignment.VerticalCodingValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1 + 1);
  return Hasher._finalize()();
}

uint64_t CodableAlignment.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  if (one-time initialization token for top != -1)
  {
    swift_once();
  }

  if (static VerticalAlignment.top != v4)
  {
    if (one-time initialization token for bottom != -1)
    {
      swift_once();
    }

    if (static VerticalAlignment.bottom != v4)
    {
      if (one-time initialization token for firstTextBaseline != -1)
      {
        swift_once();
      }

      if (static VerticalAlignment.firstTextBaseline != v4)
      {
        if (one-time initialization token for lastTextBaseline != -1)
        {
          swift_once();
        }

        if (static VerticalAlignment.lastTextBaseline != v4 && one-time initialization token for _firstTextLineCenter != -1)
        {
          swift_once();
        }
      }
    }
  }

  if (one-time initialization token for leading != -1)
  {
    swift_once();
  }

  if (static HorizontalAlignment.leading != v3)
  {
    if (one-time initialization token for trailing != -1)
    {
      swift_once();
    }

    if (static HorizontalAlignment.trailing != v3)
    {
      if (one-time initialization token for leadingText != -1)
      {
        swift_once();
      }

      if (static HorizontalAlignment.leadingText != v3)
      {
        if (one-time initialization token for formDetailLeading != -1)
        {
          swift_once();
        }

        if (static HorizontalAlignment.formDetailLeading != v3)
        {
          if (one-time initialization token for listRowSeparatorLeading != -1)
          {
            swift_once();
          }

          if (static HorizontalAlignment.listRowSeparatorLeading != v3 && one-time initialization token for listRowSeparatorTrailing != -1)
          {
            swift_once();
          }
        }
      }
    }
  }

  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  lazy protocol witness table accessor for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    lazy protocol witness table accessor for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t lazy protocol witness table accessor for type AlignmentKey and conformance AlignmentKey()
{
  result = lazy protocol witness table cache variable for type AlignmentKey and conformance AlignmentKey;
  if (!lazy protocol witness table cache variable for type AlignmentKey and conformance AlignmentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlignmentKey and conformance AlignmentKey);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CodableAlignment(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
  result = lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
  *(a1 + 16) = result;
  return result;
}

id GraphHost.rootSubgraph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double GraphHost.Data.time.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

uint64_t (*GraphHost.Data.updateSeed.modify(_DWORD *a1))(_DWORD *a1)
{
  a1[2] = *(v1 + 48);
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.updateSeed.modify;
}

uint64_t GraphHost.finishTransactionUpdate(in:postUpdate:id:)(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v6 = 0;
  do
  {
    v7 = *(v4 + 160);
    *(v4 + 160) = MEMORY[0x1E69E7CC0];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v9, v14);
        v10 = v15;
        v11 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        (*(v11 + 8))(v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v14);
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    ++v6;
    AGSubgraphUpdate();
    result = a2(*(*(v4 + 160) + 16) != 0);
  }

  while (v6 != 8 && *(*(v4 + 160) + 16));
  if ((a4 & 0x100000000) == 0)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      result = swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17748;
      LODWORD(v14[0]) = a4;
      result = AGGraphAddTraceEvent();
    }
  }

  *(v4 + 152) = 0;
  return result;
}

uint64_t GraphHost.deinit()
{
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of GraphHost.Data(v7);

    return v0;
  }

  return result;
}

uint64_t GraphHost.asyncTransaction<A>(_:id:setting:to:style:mayDeferUpdate:)(unint64_t a1, int *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, uint64_t a7)
{
  v23 = a6;
  v22 = a1;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AssignmentGraphMutation();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  LOBYTE(a5) = *a5;
  v25 = *a2;
  (*(v12 + 16))(v14, a4, a7, v17);
  *v19 = a3;
  v19[8] = 0;
  (*(v12 + 32))(&v19[*(v15 + 28)], v14, a7);
  v24 = a5;
  v20 = GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v22, &v25, v19, &v24, v23, v15, &protocol witness table for AssignmentGraphMutation<A>);
  (*(v16 + 8))(v19, v15);
  return v20;
}

uint64_t GraphHost.environment.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t GraphHost.setEnvironment(_:)()
{
  swift_beginAccess();

  AGGraphSetValue();
}

void GraphHost.removedState.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 169) = v2;
  GraphHost.updateRemovedState()();
}

void specialized GraphDelegate.beginTransaction()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = objc_opt_self();

  if ([v1 isMainThread])
  {

    specialized static NSRunLoop.addObserver(_:)(partial apply for specialized closure #1 in closure #1 in GraphDelegate.beginTransaction(), v0);
  }

  else
  {
    v2 = [objc_opt_self() mainRunLoop];
    type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18DDA6EB0;
    v4 = *MEMORY[0x1E695DA28];
    *(v3 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v5 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8[4] = partial apply for specialized closure #1 in GraphDelegate.beginTransaction();
    v8[5] = v0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_85;
    v7 = _Block_copy(v8);

    [v2 performInModes:isa block:v7];

    _Block_release(v7);
  }
}

id GraphHost.graph.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GraphHost.continueTransaction<A>(setting:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssignmentGraphMutation();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a2, a3, v11);
  *v13 = a1;
  v13[8] = 0;
  (*(v6 + 32))(&v13[*(v9 + 28)], v8, a3);
  GraphHost.continueTransaction<A>(_:)(v13, v9, &protocol witness table for AssignmentGraphMutation<A>);
  return (*(v10 + 8))(v13, v9);
}

uint64_t AGGraphRef.graphHost()()
{
  result = AGGraphGetContext();
  if (result)
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized GraphHost.continueTransaction<A>(_:)(__int128 *a1)
{
  v4 = v1;
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v34 = a1[2];
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
    v6 = v1[152];
    v7 = swift_retain_n();
    if (v6)
    {
      v8 = v1;
LABEL_11:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if ((*(static CustomEventTrace.enabledCategories + 116) & 1) != 0 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          *&v28 = v8;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v4 = *(v8 + 160);
        v9 = v4[2];
        if (v9)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 160) = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            *(v8 + 160) = v4;
          }

          if (v9 > v4[2])
          {
            __break(1u);
          }

          v11 = &v4[5 * v9];
          v12 = v11[2];
          v13 = v11[3];
          __swift_mutable_project_boxed_opaque_existential_1((v11 - 1), v12);
          v14 = *(v13 + 16);
          _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, &lazy cache variable for type metadata for AssignmentGraphMutation<EdgeInsets>, &type metadata for EdgeInsets, type metadata accessor for AssignmentGraphMutation);
          v16 = v14(&v32, v15, &protocol witness table for AssignmentGraphMutation<A>, v12, v13);
          *(v8 + 160) = v4;
          swift_endAccess();
          if (v16)
          {
          }
        }

        v2 = v32;
        v3 = BYTE8(v32);
        v26 = v34;
        v27 = v33;
        swift_beginAccess();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + 160) = v4;
        if (v17)
        {
LABEL_23:
          v19 = v4[2];
          v18 = v4[3];
          if (v19 >= v18 >> 1)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v4);
          }

          _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_4(0, &lazy cache variable for type metadata for AssignmentGraphMutation<EdgeInsets>, &type metadata for EdgeInsets, type metadata accessor for AssignmentGraphMutation);
          v29 = v20;
          v30 = &protocol witness table for AssignmentGraphMutation<A>;
          v21 = swift_allocObject();
          *&v28 = v21;
          *(v21 + 16) = v2;
          *(v21 + 24) = v3;
          *(v21 + 32) = v27;
          *(v21 + 48) = v26;
          v4[2] = v19 + 1;
          outlined init with take of AnyTrackedValue(&v28, &v4[5 * v19 + 4]);
          *(v8 + 160) = v4;
          swift_endAccess();
        }
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      *(v8 + 160) = v4;
      goto LABEL_23;
    }

    while (1)
    {
      v8 = (*(*v1 + 200))(v7);

      if (!v8)
      {
        break;
      }

      v3 = *(v8 + 152);

      v2 = v8;
      v1 = v8;
      if (v3)
      {
        goto LABEL_11;
      }
    }

    LOBYTE(v28) = 17;
    v23 = v32;
    v31 = BYTE8(v32);
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    *(v24 + 24) = v23;
    *(v24 + 32) = v31;
    v25 = v33;
    *(v24 + 56) = v34;
    *(v24 + 40) = v25;

    static Update.enqueueAction(reason:_:)(&v28, partial apply for specialized closure #1 in GraphHost.continueTransaction<A>(_:), v24);
  }

  return result;
}

uint64_t GraphHost.continueTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v36 = a1;
  v37[3] = *MEMORY[0x1E69E9840];
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
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
    v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = a3;
    v15 = *(v6 + 152);
    v16 = swift_retain_n();
    if (v15)
    {
      v17 = v6;
LABEL_12:
      if (one-time initialization token for enabledCategories != -1)
      {
        swift_once();
      }

      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        v4 = v14;
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 17236;
          v37[0] = v17;
          type metadata accessor for GraphHost();
          AGGraphAddTraceEvent();
        }

        swift_beginAccess();
        v6 = *(v17 + 160);
        v19 = v6[2];
        v20 = v36;
        if (v19)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v17 + 160) = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            *(v17 + 160) = v6;
          }

          if (v19 > v6[2])
          {
            __break(1u);
          }

          v22 = &v6[5 * v19];
          v23 = v22[2];
          v24 = v22[3];
          __swift_mutable_project_boxed_opaque_existential_1((v22 - 1), v23);
          v25 = (*(v24 + 16))(v20, a2, v4, v23, v24);
          *(v17 + 160) = v6;
          swift_endAccess();
          if (v25)
          {
          }
        }

        v5 = *(v9 + 16);
        v5(v13, v20, a2);
        swift_beginAccess();
        v26 = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 160) = v6;
        if (v26)
        {
LABEL_24:
          v28 = v6[2];
          v27 = v6[3];
          if (v28 >= v27 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v6);
            *(v17 + 160) = v6;
          }

          v29 = v35;
          v5(v35, v13, a2);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v28, v29, (v17 + 160), a2, v4);
          (*(v9 + 8))(v13, a2);
          *(v17 + 160) = v6;
          swift_endAccess();
        }
      }

      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *(v17 + 160) = v6;
      goto LABEL_24;
    }

    v18 = v6;
    while (1)
    {
      v17 = (*(*v18 + 200))(v16);

      if (!v17)
      {
        break;
      }

      v4 = *(v17 + 152);

      v5 = v17;
      v18 = v17;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v37[0]) = 17;
    v31 = v35;
    (*(v9 + 16))(v35, v36, a2);
    v32 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = a2;
    *(v33 + 3) = v14;
    *(v33 + 4) = v6;
    (*(v9 + 32))(&v33[v32], v31, a2);

    static Update.enqueueAction(reason:_:)(v37, partial apply for closure #1 in GraphHost.continueTransaction<A>(_:), v33);
  }

  return result;
}

uint64_t specialized closure #1 in GraphDelegate.beginTransaction()(uint64_t a1)
{

  specialized static NSRunLoop.addObserver(_:)(closure #1 in closure #1 in GraphDelegate.beginTransaction()specialized partial apply, a1);
}

uint64_t specialized closure #1 in closure #1 in GraphDelegate.beginTransaction()()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v0 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  specialized closure #1 in closure #1 in closure #1 in GraphDelegate.beginTransaction()();
  static Update.end()();

  return _MovableLockUnlock(v0);
}

uint64_t closure #1 in closure #1 in GraphDelegate.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in closure #1 in closure #1 in GraphDelegate.beginTransaction()(a1, a2, a3);
  static Update.end()();

  return _MovableLockUnlock(v6);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in GraphDelegate.beginTransaction()()
{
  v17 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    specialized static Update.begin()();
    AGGraphClearUpdate();
    v2 = swift_beginAccess();
    v3 = *(v1 + 24);
    if (*(v1 + 24))
    {
      MEMORY[0x1EEE9AC00](v2);
      v10[8] = v3;
      v11 = v1;
      v12 = &protocol witness table for EmptyViewRendererHost;
      v13 = v1;
      v4 = objc_opt_self();

      if ([v4 isMainThread])
      {
        specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(v3);
      }

      else
      {
        v5 = swift_allocObject();
        *(v5 + 16) = partial apply for specialized closure #1 in ViewGraphRootValueUpdater.updateGraph();
        *(v5 + 24) = v10;
        v6 = AGSubgraphGetCurrent();
        CurrentAttribute = AGGraphGetCurrentAttribute();
        v14[0] = partial apply for thunk for @callee_guaranteed () -> ();
        v14[1] = v5;
        v15 = v6;
        v16 = CurrentAttribute;
        v8 = one-time initialization token for _lock;

        if (v8 != -1)
        {
          swift_once();
        }

        _MovableLockSyncMain(static Update._lock, v14, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
        v9 = v15;

        LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

        if (v9)
        {
          __break(1u);
        }
      }
    }

    GraphHost.flushTransactions()();
    AGGraphSetUpdate();
    static Update.end()();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in GraphDelegate.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a3 + 8))(closure #1 in closure #1 in closure #1 in closure #1 in GraphDelegate.beginTransaction(), 0, MEMORY[0x1E69E7CA8] + 8, a2, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

id GraphHost.Data.graph.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t (*GraphHost.Data.time.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 28);
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.time.modify;
}

_DWORD *(*GraphHost.Data.$time.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 28);
  return _ViewInputs.transaction.modify;
}

uint64_t GraphHost.Data.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t key path getter for GraphHost.Data.environment : GraphHost.Data@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t GraphHost.Data.environment.setter()
{
  AGGraphSetValue();
}

void (*GraphHost.Data.environment.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x24uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 32);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  *v4 = v7;
  v4[1] = v6;

  return GraphHost.Data.environment.modify;
}

void GraphHost.Data.environment.modify(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v1[2] = **a1;
  v1[3] = v2;
  AGGraphSetValue();

  free(v1);
}

_DWORD *(*GraphHost.Data.$environment.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return _ViewInputs.changedDebugProperties.modify;
}

_DWORD *GraphHost.Data.phase.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*GraphHost.Data.phase.modify(_DWORD *a1))(_DWORD *a1)
{
  a1[2] = *(v1 + 36);
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.phase.modify;
}

_DWORD *(*GraphHost.Data.$phase.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 36);
  return GraphHost.Data.$phase.modify;
}

uint64_t GraphHost.Data.hostPreferenceKeys.getter@<X0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();
}

uint64_t (*GraphHost.Data.hostPreferenceKeys.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 40);
  *a1 = *AGGraphGetValue();

  return GraphHost.Data.hostPreferenceKeys.modify;
}

_DWORD *(*GraphHost.Data.$hostPreferenceKeys.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return StyledTextResponder.$view.modify;
}

uint64_t GraphHost.Data.transaction.getter()
{
  AGGraphGetValue();
}

uint64_t (*GraphHost.Data.transaction.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 44);
  *a1 = *AGGraphGetValue();

  return GraphHost.Data.transaction.modify;
}

uint64_t GraphHost.Data.transaction.modify(void *a1)
{
  a1[1] = *a1;
  AGGraphSetValue();
}

_DWORD *(*GraphHost.Data.$transaction.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 44);
  return StyledTextResponder.$styles.modify;
}

_DWORD *(*GraphHost.Data.$updateSeed.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48);
  return GraphHost.Data.$updateSeed.modify;
}

uint64_t (*GraphHost.Data.transactionSeed.modify(_DWORD *a1))()
{
  a1[2] = *(v1 + 52);
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.transactionSeed.modify;
}

_DWORD *(*GraphHost.Data.$transactionSeed.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 52);
  return GraphHost.Data.$transactionSeed.modify;
}

uint64_t GraphHost.Data.inputs.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 72);
  v6[0] = *(v1 + 56);
  v6[1] = v2;
  v7 = *(v1 + 88);
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

__n128 GraphHost.Data.inputs.setter(uint64_t a1)
{
  v3 = *(v1 + 72);
  v6[0] = *(v1 + 56);
  v6[1] = v3;
  v6[2] = *(v1 + 88);
  outlined destroy of _GraphInputs(v6);
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  result = *(a1 + 32);
  *(v1 + 88) = result;
  return result;
}

Swift::Void __swiftcall GraphHost.Data.invalidate()()
{
  if (*v0)
  {
    v1 = *v0;
    specialized static Update.begin()();
    AGSubgraphInvalidate();
    AGGraphSetContext();
    AGGraphInvalidate();

    *v0 = 0;
    static Update.end()();
  }
}

uint64_t GraphHost.data.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v4 = *(v1 + 96);
  v14 = *(v1 + 80);
  v3 = v14;
  v15 = v4;
  v16 = *(v1 + 112);
  v5 = v16;
  v6 = *(v1 + 32);
  v11[0] = *(v1 + 16);
  v11[1] = v6;
  v7 = *(v1 + 64);
  v12 = *(v1 + 48);
  v8 = v12;
  v13 = v7;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  return outlined init with copy of GraphHost.Data(v11, &v10);
}

uint64_t GraphHost.data.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v10[4] = *(v1 + 80);
  v10[5] = v3;
  v11 = *(v1 + 112);
  v4 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v4;
  v5 = *(v1 + 64);
  v10[2] = *(v1 + 48);
  v10[3] = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  v7 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v7;
  v8 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v8;
  *(v1 + 112) = *(a1 + 96);
  return outlined destroy of GraphHost.Data(v10);
}

uint64_t GraphHost.graphInputs.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  v7[0] = *(v1 + 72);
  v7[1] = v3;
  v8 = *(v1 + 104);
  v4 = v8;
  *a1 = v7[0];
  a1[1] = v3;
  a1[2] = v4;
  return outlined init with copy of _GraphInputs(v7, v6);
}

id GraphHost.globalSubgraph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t GraphHost.hostPreferenceValues.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 132) = a1;
  return result;
}

uint64_t GraphHost.lastHostPreferencesSeed.getter@<X0>(_DWORD *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 140);
  return result;
}

uint64_t GraphHost.lastHostPreferencesSeed.setter(int *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 140) = v2;
  return result;
}

uint64_t GraphHost.removedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 169);
  return result;
}

void (*GraphHost.removedState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return GraphHost.removedState.modify;
}

void GraphHost.removedState.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    GraphHost.updateRemovedState()();
  }
}

uint64_t GraphHost.__allocating_init(data:)(__int128 *a1)
{
  v2 = swift_allocObject();
  GraphHost.init(data:)(a1);
  return v2;
}

uint64_t GraphHost.__deallocating_deinit()
{
  GraphHost.invalidate()();
  if (one-time initialization token for blockedGraphHosts != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v1 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&blockedGraphHosts, v0);

  v2 = *(blockedGraphHosts._rawValue + 2);
  if (v2 < v1)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v1, v2);
    swift_endAccess();
    v3 = *(v0 + 96);
    v7[4] = *(v0 + 80);
    v7[5] = v3;
    v8 = *(v0 + 112);
    v4 = *(v0 + 32);
    v7[0] = *(v0 + 16);
    v7[1] = v4;
    v5 = *(v0 + 64);
    v7[2] = *(v0 + 48);
    v7[3] = v5;
    outlined destroy of GraphHost.Data(v7);

    return swift_deallocClassInstance();
  }

  return result;
}

BOOL static GraphHost.isUpdating.getter()
{
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  return AGGraphGetCounter() != 0;
}

uint64_t GraphHost.isUpdating.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return AGGraphGetCounter() != 0;
  }

  return result;
}

SwiftUI::GraphHost::ConstantID_optional __swiftcall GraphHost.ConstantID.init(rawValue:)(SwiftUI::GraphHost::ConstantID_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_GraphHost_ConstantID_unknownDefault)
  {
    value = SwiftUI_GraphHost_ConstantID_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t GraphHost.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for Mirror.DisplayStyle?, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v11 = v0;
  v10 = MEMORY[0x1E69E7CC0];
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for GraphHost();
  type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for [(label: String?, value: Any)], type metadata accessor for (label: String?, value: Any), MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();

  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance GraphHost()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for Mirror.DisplayStyle?, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for GraphHost();
  type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for [(label: String?, value: Any)], type metadata accessor for (label: String?, value: Any), MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();

  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

Swift::Void __swiftcall GraphHost.setTime(_:)(SwiftUI::Time a1)
{
  v3 = *v1;
  swift_beginAccess();
  if (*AGGraphGetValue() != v3)
  {
    v4 = AGGraphSetValue();
    (*(*v2 + 224))(v4);
  }
}

uint64_t CustomGraphMutation.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AssignmentGraphMutation.init(_:newValue:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  v8 = type metadata accessor for AssignmentGraphMutation();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

unint64_t specialized closure #1 in GraphHost.continueTransaction<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = _threadTransactionID();
  result = specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v3, a2, 1, 1);
  if (one-time initialization token for enabledCategories != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20052;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

{
  v3 = _threadTransactionID();
  result = specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v3, a2, 1, 1);
  if (one-time initialization token for enabledCategories != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20052;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

unint64_t specialized closure #1 in GraphHost.continueTransaction<A>(_:)(uint64_t a1, __int128 *a2)
{
  v3 = _threadTransactionID();
  result = specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v3, a2, 1, 1);
  if (one-time initialization token for enabledCategories != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20052;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

uint64_t closure #1 in GraphHost.continueTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(&v11);
  default argument 3 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(&v10);
  v9 = v10;
  result = GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, &v11, a2, &v9, 1, a3, a4);
  if (one-time initialization token for enabledCategories != -1)
  {
    v8 = result;
    swift_once();
    result = v8;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 116) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20052;
      v11 = result;
      return AGGraphAddTraceEvent();
    }
  }

  return result;
}

void GraphHost.runTransaction(_:do:id:)(unint64_t a1, void (*a2)(void), uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v27 = *MEMORY[0x1E69E9840];
  GraphHost.instantiateIfNeeded()();
  if (a1 >= 2)
  {
    swift_beginAccess();
    v24[0] = a1;
    AGGraphSetValue();
  }

  v22 = a4;
  v23 = a1;
  v9 = a4 | ((HIDWORD(a4) & 1) << 32);
  GraphHost.startTransactionUpdate(id:)(v9);
  a2();
  swift_beginAccess();
  v10 = *(v4 + 24);
  swift_beginAccess();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = *(v4 + 160);
    *(v4 + 160) = v12;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;
      do
      {
        outlined init with copy of AnyTrackedValue(v15, v24);
        v16 = v25;
        v17 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v17 + 8))(v16, v17);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    ++v11;
    AGSubgraphUpdate();
  }

  while (v11 != 8 && *(*(v4 + 160) + 16));
  if ((v22 & 0x100000000) != 0)
  {

    v18 = v23;
  }

  else
  {
    v18 = v23;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
    {
      __break(1u);
    }

    if (*(static CustomEventTrace.enabledCategories + 116))
    {
      v19 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 17748;
        v20 = *(v19 + 16);
        LODWORD(v24[0]) = v22;

        v21 = v20;
        AGGraphAddTraceEvent();
      }
    }
  }

  *(v5 + 152) = 0;
  if (v18 > 1)
  {
    v24[0] = 0;
    AGGraphSetValue();
  }
}

uint64_t static GraphHost.globalTransaction<A>(_:id:mutation:hostProvider:)(unint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a5;
  v12 = *a2;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v13 = static Update._lock;
  _MovableLockLock(static Update._lock);
  if (one-time initialization token for pendingGlobalTransactions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static GraphHost.pendingGlobalTransactions;
  v15 = *(static GraphHost.pendingGlobalTransactions + 2);
  v48 = v13;
  if (!v15)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  static GraphHost.pendingGlobalTransactions = v14;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    v14 = result;
    static GraphHost.pendingGlobalTransactions = result;
  }

  if (v15 <= *(v14 + 2))
  {
    v17 = &v14[40 * v15];
    v19 = *(v17 - 1);
    v18 = v17 - 8;
    if (v19 == a4 && *(v18 + 6) == v12)
    {
      v20 = *(v18 + 2);
      if (v20)
      {
        if (a1)
        {
          v53[0] = MEMORY[0x1E69E7CC0];

          LODWORD(v46) = compareLists(_:_:ignoredTypes:)(v20, a1, v53);
          v45 = v53[0];

          if (v46)
          {
            goto LABEL_14;
          }
        }
      }

      else if (!a1)
      {
LABEL_14:
        AsyncTransaction.append<A>(_:)(a3, a6, a7);
        static GraphHost.pendingGlobalTransactions = v14;
        swift_endAccess();
        v21 = v48;
        return _MovableLockUnlock(v21);
      }
    }

    static GraphHost.pendingGlobalTransactions = v14;
    swift_endAccess();
LABEL_17:
    if (!*(v14 + 2))
    {
      if ([objc_opt_self() isMainThread])
      {
        specialized static NSRunLoop.addObserver(_:)(implicit closure #1 in closure #1 in static GraphHost.globalTransaction<A>(_:id:mutation:hostProvider:), 0);
      }

      else
      {
        v46 = [objc_opt_self() mainRunLoop];
        type metadata accessor for AGGraphRef?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_18DDA6EB0;
        v23 = *MEMORY[0x1E695DA28];
        *(v22 + 32) = *MEMORY[0x1E695DA28];
        type metadata accessor for NSRunLoopMode(0);
        v24 = v23;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v51 = closure #1 in static GraphHost.globalTransaction<A>(_:id:mutation:hostProvider:);
        v52 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        v50 = &block_descriptor_17;
        v26 = _Block_copy(aBlock);

        [v46 performInModes:isa block:v26];
        _Block_release(v26);
      }
    }

    v50 = a6;
    v51 = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
    (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a3, a6);
    v54 = a1;
    LODWORD(v55) = v12;
    swift_beginAccess();
    v28 = (static AsyncTransaction.nextTraceID >> 1) + 1;

    atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
    swift_endAccess();
    HIDWORD(v55) = v28;
    outlined init with copy of AnyTrackedValue(aBlock, v53);
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v56 = v29;
    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
      v56 = v29;
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v53, v53[3]);
    v33 = MEMORY[0x1EEE9AC00](v32);
    v35 = &v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v35, v33);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v31, v35, &v56, a6, a7);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v37 = v54;
    v38 = v55;
    swift_beginAccess();
    v39 = static GraphHost.pendingGlobalTransactions;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    static GraphHost.pendingGlobalTransactions = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
      static GraphHost.pendingGlobalTransactions = v39;
    }

    v41 = v47;
    v21 = v48;
    v43 = *(v39 + 2);
    v42 = *(v39 + 3);
    if (v43 >= v42 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v39);
    }

    *(v39 + 2) = v43 + 1;
    v44 = &v39[40 * v43];
    *(v44 + 4) = a4;
    *(v44 + 5) = v41;
    *(v44 + 6) = v37;
    *(v44 + 7) = v38;
    *(v44 + 8) = v29;
    static GraphHost.pendingGlobalTransactions = v39;
    swift_endAccess();
    return _MovableLockUnlock(v21);
  }

  __break(1u);
  return result;
}

Swift::Int _GraphMutation_Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Void __swiftcall AssignmentGraphMutation.apply()()
{
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = v0;
    Attribute = AGWeakAttributeGetAttribute();
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      MEMORY[0x1EEE9AC00](Attribute);
      v8 = *(v2 + 16);
      v9 = v4;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v1 + v5, partial apply for closure #1 in Attribute.setValue(_:), &v7, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v6);
    }
  }
}

uint64_t AssignmentGraphMutation.combine<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, a1, a3, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v10, 0, 1, a2);
    (*(v14 + 32))(v18, v10, a2);
    if (*(v3 + 8))
    {
      if (v18[8])
      {
        v22 = *(a2 + 16);
LABEL_8:
        (*(*(v22 - 8) + 40))(v3 + *(a2 + 28), &v18[*(a2 + 28)], v22);
        return 1;
      }
    }

    else if ((v18[8] & 1) == 0)
    {
      v22 = *(a2 + 16);
      if (static WeakAttribute.== infix(_:_:)())
      {
        goto LABEL_8;
      }
    }

    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v10, 1, 1, a2);
    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

Swift::Void __swiftcall __previewThunksHaveFinishedLoading()()
{
  if (one-time initialization token for waitingForPreviewThunks != -1)
  {
    swift_once();
  }

  if (waitingForPreviewThunks)
  {
    waitingForPreviewThunks = 0;
    if (one-time initialization token for blockedGraphHosts != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    rawValue = blockedGraphHosts._rawValue;
    blockedGraphHosts._rawValue = MEMORY[0x1E69E7CC0];
    v1 = rawValue[2];
    if (v1)
    {
      v2 = (rawValue + 4);
      do
      {
        v3 = *(**v2 + 192);

        v5 = v3(v4);
        v7 = v6;

        if (v5)
        {
          ObjectType = swift_getObjectType();
          (*(v7 + 16))(ObjectType, v7);
          swift_unknownObjectRelease();
        }

        v2 += 8;
        --v1;
      }

      while (v1);
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConstantKey()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double one-time initialization function for threadAssertionTrace()
{
  v0 = swift_slowAlloc();
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
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
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 24) = @objc closure #1 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 40) = @objc closure #2 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 56) = @objc closure #3 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 72) = @objc closure #4 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 88) = @objc closure #5 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 288) = @objc closure #6 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 136) = @objc closure #7 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 144) = @objc closure #8 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 152) = @objc closure #9 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 160) = @objc closure #10 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 168) = @objc closure #11 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 192) = @objc closure #12 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 240) = @objc closure #13 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 248) = @objc closure #14 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 256) = @objc closure #15 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 264) = @objc closure #16 in closure #1 in variable initialization expression of threadAssertionTrace;
  *(v0 + 272) = @objc closure #17 in closure #1 in variable initialization expression of threadAssertionTrace;
  threadAssertionTrace = v0;
  return result;
}

void @objc closure #1 in closure #1 in variable initialization expression of threadAssertionTrace()
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void @objc closure #6 in closure #1 in variable initialization expression of threadAssertionTrace()
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void @objc closure #13 in closure #1 in variable initialization expression of threadAssertionTrace()
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t specialized ViewGraphRootValueUpdater.updateGraph()()
{
  v16 = *MEMORY[0x1E69E9840];
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  if (*(v0 + 24))
  {
    MEMORY[0x1EEE9AC00](result);
    v9[8] = v2;
    v10 = v0;
    v11 = &protocol witness table for EmptyViewRendererHost;
    v12 = v0;
    v3 = objc_opt_self();

    if ([v3 isMainThread])
    {
      specialized closure #1 in ViewGraphRootValueUpdater.updateGraph()(v2);
    }

    else
    {
      v4 = swift_allocObject();
      *(v4 + 16) = closure #1 in ViewGraphRootValueUpdater.updateGraph()specialized partial apply;
      *(v4 + 24) = v9;
      v5 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v13[0] = thunk for @callee_guaranteed () -> ()partial apply;
      v13[1] = v4;
      v14 = v5;
      v15 = CurrentAttribute;
      v7 = one-time initialization token for _lock;

      if (v7 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, v13, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v8 = v14;

      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(int a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 < 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    dispatch thunk of static AttributedStringKey.name.getter();
  }

  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    (*(*a2 + 120))(v8);
    MEMORY[0x193AC11A0](a3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v6);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  v3 = Hasher._finalize()();

  return a2(a1, v3);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v6 = a2;
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
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v9, v6 & 1, a1, v19);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2, v21);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
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
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
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
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v19, a3);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 24 * result);
    *v24 = a1;
    v24[1] = a2;
    v24[2] = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a4, a1, a2, a3, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 48 * v14;

  return outlined assign with take of NamedImage.DecodedInfo(a1, v21);
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * result);
    v21 = a1[1];
    *v20 = *a1;
    v20[1] = v21;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
    return outlined init with copy of GlassContainer.Entry.ModelID(a2, v22);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v21);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    *(v19[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

void *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
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
    return outlined assign with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1, v19[7] + 640 * v9, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2, v21);
    return outlined init with copy of ResolvedIDs.Key(a3, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = result;
      a4();
      result = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 4 * result) = a1;
  }

  else
  {

    return a6(result, a2, a1, v24);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of AnyTrackedValue(a1, v22);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of AnyTrackedValue(a1, v22);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for AGAttribute(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1, a4, a5 & 1);
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
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 1, a4, a5 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a3 & 1, a4, a5 & 1, a1, v25);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, Swift::UInt32 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
    v20 = (v19[7] + 80 * result);
    v21 = a1[3];
    v20[2] = a1[2];
    v20[3] = v21;
    v20[4] = a1[4];
    v22 = a1[1];
    *v20 = *a1;
    v20[1] = v22;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 >= v20 && (a2 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * result);
    *v26 = a3;
    v26[1] = a4;
    v26[2] = a5;
    v26[3] = a6;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1 & 1, v25, a3, a4, a5, a6);
  }

  return result;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);

    return outlined copy of AttributedString.AnyAttribute(a2, a3);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * result);
    *v22 = a3;
    v22[1] = a4;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v21, a3, a4);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, char a2, char a3)
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
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for AGSubgraphRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}