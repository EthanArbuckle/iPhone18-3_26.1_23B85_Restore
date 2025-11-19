uint64_t _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC17RealityFoundation22MeshInstancesComponentV4PartVSg_Tt1B5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 96;
      do
      {
        outlined init with copy of [String : String](v3, v14, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 64;
        --v9;
      }

      while (v9);
    }

    outlined init with copy of [String : String](v3, v14, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
    return v5;
  }

  return result;
}

uint64_t specialized AnimationLibraryDefinition.unkeyedResources.getter(unint64_t a1, unint64_t a2, Swift::Int a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    if (a1)
    {
      v7 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v6 = v7;
  }

  v8 = *(v6 + 16);
  swift_bridgeObjectRetain_n();

  if (v8)
  {
    if (!v4)
    {
      if (a1)
      {
        v6 = a1;
        v9 = AnimationLibraryResource.keyedResources.getter();
      }

      else
      {
        v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      v4 = v9;
    }

    v34[0] = MEMORY[0x1E69E7CD0];
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_25:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v6 = v34;
      specialized Set._Variant.insert(_:)(&v35, *(*(*(v4 + 56) + ((v16 << 9) | (8 * v17))) + 16));
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        v4 = v34[0];
        if (a3)
        {
          v6 = a3;
        }

        else if (a1)
        {
          v6 = AnimationLibraryResource.resourceArray.getter();
        }

        else
        {
          v6 = MEMORY[0x1E69E7CC0];
        }

        v35 = MEMORY[0x1E69E7CC0];
        if (!(v6 >> 62))
        {
          v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:

          if (!v18)
          {
            a3 = MEMORY[0x1E69E7CC0];
            goto LABEL_53;
          }

          v19 = 0;
          v20 = v6 & 0xC000000000000001;
          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          v33 = v6;
          v22 = v6 + 32;
          v23 = v4 + 56;
          while (1)
          {
            if (v20)
            {
              v25 = MEMORY[0x1C68F41F0](v19, v33);
              v26 = __OFADD__(v19++, 1);
              if (v26)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v19 >= *(v21 + 16))
              {
                goto LABEL_57;
              }

              v25 = *(v22 + 8 * v19);

              v26 = __OFADD__(v19++, 1);
              if (v26)
              {
LABEL_50:
                __break(1u);
LABEL_51:
                a3 = v35;
LABEL_53:

                return a3;
              }
            }

            if (!*(v4 + 16))
            {
              goto LABEL_36;
            }

            v27 = *(v25 + 16);
            v28 = *(v4 + 40);
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](v27);
            v6 = v34;
            v29 = Hasher._finalize()();
            v30 = -1 << *(v4 + 32);
            v31 = v29 & ~v30;
            if ((*(v23 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
            {
              v32 = ~v30;
              while (*(*(v4 + 48) + 8 * v31) != v27)
              {
                v31 = (v31 + 1) & v32;
                if (((*(v23 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              if (v19 == v18)
              {
                goto LABEL_51;
              }
            }

            else
            {
LABEL_36:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v24 = *(v35 + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v6 = &v35;
              specialized ContiguousArray._endMutation()();
              if (v19 == v18)
              {
                goto LABEL_51;
              }
            }
          }
        }

LABEL_58:
        v18 = __CocoaSet.count.getter();
        goto LABEL_34;
      }

      v13 = *(v4 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (a3)
  {

    return a3;
  }

  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return AnimationLibraryResource.resourceArray.getter();
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v12) + 16) != *(a4 + 16))
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v5, a3);
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

    if (v6 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10RealityKit17AnimationResourceCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_SS_10i5Kit17kL4CTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAJIsgnndzo_Tf1nc_n04_s17i12Foundation26k39LibraryDefinitionV9removeAllyy0A3Kit0C8L27CFSbSS3key_AG5valuet_tXEfU_AJTf1nnc_n(v14, v8, a1, a2);
      MEMORY[0x1C6902A30](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = specialized closure #1 in _NativeDictionary.filter(_:)((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = *(MEMORY[0x1C68F41F0](v11, v7) + 16);
    v20 = *(a2 + 16);
    swift_unknownObjectRelease();
    if (v19 != v20)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1C68F41F0](v10, v7);
        v16 = MEMORY[0x1C68F41F0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (*(v16 + 16) != *(a2 + 16))
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1C68F41F0](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1C68F41F0](v10, v7);
        v16 = MEMORY[0x1C68F41F0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t specialized AnimationLibraryDefinition.defaultResourceKey.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (a4 == 1)
  {
    if (!a1)
    {
      return 0;
    }

    v6 = a3;
    v7 = a1;
    v8 = *(a1 + 16);
    if (!REAnimationLibraryAssetGetDefaultEntryKey())
    {
      return 0;
    }

    v9 = String.init(cString:)();
    v11 = v10;
    a1 = v7;
    a3 = v6;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = a3;
    v11 = a4;
    if (!a2)
    {
LABEL_6:
      if (a1)
      {
        v12 = *(a1 + 16);
        v13 = a3;
        String.utf8CString.getter();
        outlined copy of String??(v13, a4);
        EntryIndexFromKey = REAnimationLibraryAssetGetEntryIndexFromKey();

        if (EntryIndexFromKey)
        {
          AnimationLibraryResource.resource(_:)(*EntryIndexFromKey);

          return v9;
        }
      }

      else
      {
        outlined copy of String??(a3, a4);
      }

      goto LABEL_15;
    }
  }

  v15 = *(a2 + 16);
  outlined copy of String??(a3, a4);
  if (!v15 || (specialized __RawDictionaryStorage.find<A>(_:)(v9, v11), (v16 & 1) == 0))
  {
LABEL_15:

    return 0;
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index()
{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Index and conformance AnimationLibraryComponent.AnimationCollection.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection()
{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection and conformance AnimationLibraryComponent.AnimationCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator;
  if (!lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationLibraryComponent.AnimationCollection.Iterator and conformance AnimationLibraryComponent.AnimationCollection.Iterator);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  result = a3(*a2, a2[1]);
  *a4 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for AnimationLibraryComponent.AnimationCollection.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimationLibraryComponent.AnimationCollection.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationLibraryComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnimationLibraryComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __RERelease(_:)(uint64_t result)
{
  if (result)
  {
    return RERelease();
  }

  return result;
}

uint64_t __RERetain(_:)(uint64_t result)
{
  if (result)
  {
    return RERetain();
  }

  return result;
}

uint64_t specialized static StateMachineParametersCreator.createBoundParameters(from:)()
{
  v38 = type metadata accessor for Logger();
  v0 = *(v38 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  result = REStateMachineComponentGetBoundParameterCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v37 = "Scope";
      v35 = v6;
      v36 = (v0 + 8);
      v32 = "hineParameterType";
      v33 = v3;
      v31 = "hineParameter type";
      v11 = MEMORY[0x1E69E7CC0];
      *&v8 = 136315138;
      v34 = v8;
      while (1)
      {
        BoundParameterTypeAtIndex = REStateMachineComponentGetBoundParameterTypeAtIndex();
        REStateMachineComponentGetBoundParameterNameAtIndex();
        v13 = String.init(cString:)();
        v15 = v14;
        REStateMachineComponentGetBoundParameterBindTargetAtIndex();
        v16 = String.init(cString:)();
        static InternalBindPath.targetFromPath(_:)(v16, v17, v40);

        v18 = v40[0];
        v19 = v40[1];
        v20 = v41;
        if (BoundParameterTypeAtIndex <= 1)
        {
          if (BoundParameterTypeAtIndex)
          {
            if (BoundParameterTypeAtIndex == 1)
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySiGMd, &_s17RealityFoundation21StateMachineParameterVySiGMR);
              v43 = &protocol witness table for StateMachineParameter<A>;
              v21 = swift_allocObject();
              v40[0] = v21;
              *(v21 + 32) = 0;
              *(v21 + 40) = 0;
              *(v21 + 48) = -1;
              *(v21 + 56) = 0;
              *(v21 + 64) = 1;
LABEL_19:
              *(v21 + 16) = v13;
              *(v21 + 24) = v15;
              outlined consume of BindTarget?(0, 0, 0xFFu);
              *(v21 + 32) = v18;
              *(v21 + 40) = v19;
              *(v21 + 48) = v20;
              outlined init with copy of __REAssetService(v40, v39);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
              }

              v29 = v11[2];
              v28 = v11[3];
              if (v29 >= v28 >> 1)
              {
                v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v11);
              }

              v11[2] = v29 + 1;
              outlined init with take of ForceEffectBase(v39, &v11[5 * v29 + 4]);
              __swift_destroy_boxed_opaque_existential_1(v40);
              goto LABEL_6;
            }

LABEL_24:

            outlined consume of BindTarget(v18, v19, v20);
            v22 = v33;
            Logger.init(subsystem:category:)();
            v23 = Logger.logObject.getter();
            v24 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_5;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v40[0] = v26;
            *v25 = v34;
            v27 = v31;
            goto LABEL_4;
          }
        }

        else
        {
          if (BoundParameterTypeAtIndex == 2)
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySfGMd, &_s17RealityFoundation21StateMachineParameterVySfGMR);
            v43 = &protocol witness table for StateMachineParameter<A>;
            v21 = swift_allocObject();
            v40[0] = v21;
            *(v21 + 32) = 0;
            *(v21 + 40) = 0;
            *(v21 + 48) = -1;
            *(v21 + 52) = 0;
            *(v21 + 56) = 1;
            goto LABEL_19;
          }

          if (BoundParameterTypeAtIndex == 3)
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
            v43 = &protocol witness table for StateMachineParameter<A>;
            v21 = swift_allocObject();
            v40[0] = v21;
            *(v21 + 32) = 0;
            *(v21 + 40) = 0;
            *(v21 + 48) = 767;
            goto LABEL_19;
          }

          if (BoundParameterTypeAtIndex != 4)
          {
            goto LABEL_24;
          }
        }

        outlined consume of BindTarget(v18, v19, v20);
        v22 = v35;
        Logger.init(subsystem:category:)();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_5;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40[0] = v26;
        *v25 = v34;
        v27 = v32;
LABEL_4:
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, v27 | 0x8000000000000000, v40);
        _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1C6902A30](v26, -1, -1);
        MEMORY[0x1C6902A30](v25, -1, -1);
LABEL_5:

        (*v36)(v22, v38);
LABEL_6:
        if (v9 == ++v10)
        {
          return v11;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized static StateMachineParametersCreator.syncUp(parameters:with:)(uint64_t result, uint64_t a2)
{
  v40 = *(a2 + 24);
  v45 = result;
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      outlined init with copy of __REAssetService(v5, &v56);
      v7 = v57;
      v8 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, v57);
      (*(v8 + 16))(&v52, v7, v8);
      if (v53 == 255)
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        outlined consume of BindTarget?(v52, *(&v52 + 1), v53);
        outlined init with take of ForceEffectBase(&v56, &v52);
        *&v49 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1);
          v6 = v49;
        }

        v10 = v6[2];
        v9 = v6[3];
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = v49;
        }

        v6[2] = v10 + 1;
        result = outlined init with take of ForceEffectBase(&v52, &v6[5 * v10 + 4]);
      }

      ++v4;
      v5 += 40;
    }

    while (v3 != v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *v45 = v6;
  v11 = v40;
  v12 = *(v40 + 16);
  if (!v12)
  {
    return result;
  }

  v13 = 0;
  v14 = v40 + 32;
  v38 = *(v40 + 16);
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      goto LABEL_52;
    }

    v15 = *(v14 + 72 * v13 + 64);
    v42 = *(v15 + 16);
    if (v42)
    {
      break;
    }

LABEL_46:
    if (++v13 == v12)
    {
      return result;
    }
  }

  v39 = v13;
  v43 = v15 + 32;

  v16 = 0;
  v41 = v15;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_51;
    }

    outlined init with copy of __REAssetService(v43 + 40 * v16, &v56);
    v17 = v57;
    v18 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v19 = (*(v18 + 8))(v17, v18);
    result = __swift_destroy_boxed_opaque_existential_1(&v56);
    v48 = *(v19 + 16);
    if (v48)
    {
      break;
    }

LABEL_19:
    if (++v16 == v42)
    {

      v13 = v39;
      v11 = v40;
      v14 = v40 + 32;
      v12 = v38;
      goto LABEL_46;
    }
  }

  v44 = v16;
  v20 = 0;
  v46 = v19;
  v47 = v19 + 32;
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
      goto LABEL_49;
    }

    result = outlined init with copy of __REAssetService(v47 + 40 * v20, &v52);
    v21 = v6[2];
    if (v21)
    {
      break;
    }

LABEL_40:
    outlined init with copy of __REAssetService(&v52, &v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v6);
    }

    v19 = v46;
    v6[2] = v37 + 1;
    outlined init with take of ForceEffectBase(&v49, &v6[5 * v37 + 4]);
    *v45 = v6;
LABEL_24:
    ++v20;
    result = __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v20 == v48)
    {

      v15 = v41;
      v16 = v44;
      goto LABEL_19;
    }
  }

  v22 = 0;
  v23 = (v6 + 4);
  while (v22 < v6[2])
  {
    outlined init with copy of __REAssetService(v23, &v49);
    v24 = v50;
    v25 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v26 = (*(v25 + 8))(v24, v25);
    v28 = v27;
    v29 = v54;
    v30 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    if (v26 == (*(v30 + 8))(v29, v30) && v28 == v31)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v49);
        goto LABEL_29;
      }
    }

    __swift_project_boxed_opaque_existential_1(&v49, v50);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v35 = swift_getDynamicType();
    result = __swift_destroy_boxed_opaque_existential_1(&v49);
    if (DynamicType == v35)
    {
      v19 = v46;
      goto LABEL_24;
    }

LABEL_29:
    ++v22;
    v23 += 40;
    if (v21 == v22)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t specialized static StateMachineParametersCreator.updateInCoreComponent(coreComponent:from:)(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for Logger();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = REStateMachineComponentRemoveAllBoundParameters();
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + 32;
    v31 = (v3 + 8);
    v32 = "Scope";
    v30 = "ourceCache";
    *&v8 = 136315138;
    v29 = v8;
    v11 = v6;
    do
    {
      outlined init with copy of __REAssetService(v10, v42);
      v17 = v43;
      v18 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      (*(v18 + 16))(v34, v17, v18);
      v19 = v35;
      if (v35 != 255)
      {
        v21 = v34[0];
        v20 = v34[1];
        specialized static InternalBindPath.pathFromTarget(_:_:)(v34, 1);
        outlined consume of BindTarget?(v21, v20, v19);
        outlined init with copy of __REAssetService(v42, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation29StateMachineParameterProtocol_pMd, &_s17RealityFoundation29StateMachineParameterProtocol_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySiGMd, &_s17RealityFoundation21StateMachineParameterVySiGMR);
        if (swift_dynamicCast() || (outlined init with copy of __REAssetService(v42, v38), __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySfGMd, &_s17RealityFoundation21StateMachineParameterVySfGMR), swift_dynamicCast()))
        {
          v12 = v35;
          v13 = v36;
          v14 = v37;

          outlined consume of BindTarget?(v12, v13, v14);
        }

        else
        {
          outlined init with copy of __REAssetService(v42, v34);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
          if ((swift_dynamicCast() & 1) == 0)
          {

            Logger.init(subsystem:category:)();
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              v34[0] = v28;
              *v27 = v29;
              *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, v30 | 0x8000000000000000, v34);
              _os_log_impl(&dword_1C1358000, v25, v26, "%s", v27, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v28);
              MEMORY[0x1C6902A30](v28, -1, -1);
              MEMORY[0x1C6902A30](v27, -1, -1);
            }

            (*v31)(v6, v33);
            goto LABEL_5;
          }

          v22 = v39;
          v23 = v40;
          v24 = v41;

          outlined consume of BindTarget?(v22, v23, v24);
        }

        v15 = v43;
        v16 = v44;
        __swift_project_boxed_opaque_existential_1(v42, v43);
        (*(v16 + 8))(v15, v16);
        String.utf8CString.getter();

        String.utf8CString.getter();

        REStateMachineComponentAddBoundParameter();

        v6 = v11;
      }

LABEL_5:
      result = __swift_destroy_boxed_opaque_existential_1(v42);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t objectdestroyTm_4(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 48);
  if (v4 != 255)
  {
    outlined consume of BindTarget(*(v1 + 32), *(v1 + 40), v4);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t static VideoComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  VideoAsset = REVideoComponentGetVideoAsset();
  type metadata accessor for __VideoResource();
  v22[0] = VideoAsset;
  v5 = static __VideoResource.__fromCore(_:)(v22);

  MaterialAsset = REVideoComponentGetMaterialAsset();
  v7 = REMaterialParameterBlockValueCreate();
  v8 = _s17RealityFoundation16LoadableResourcePAAE8fromCore8assetRefxSgs13OpaquePointerV_tFZ0A3Kit010__MaterialD0C_Tt1g5(MaterialAsset);
  if (v8)
  {
    v9 = v8;
    v22[3] = &type metadata for AnyMaterial;
    v22[4] = &protocol witness table for AnyMaterial;
    v10 = swift_allocObject();
    v22[0] = v10;
    v11 = MEMORY[0x1E69E7CC0];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = v7;
    *a2 = v5;
    outlined init with copy of __REAssetService(v22, (a2 + 1));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of static VideoComponent.__fromCore(_:));

    v12 = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    Entity = REComponentGetEntity();
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v14 = swift_dynamicCastClassUnconditional();
      goto LABEL_4;
    }

    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      v16 = specialized static Entity.entityInfoType(_:)();
      if (v16)
      {
        v17 = (*(v16 + 232))();
        v18 = *(v17 + 16);

        MEMORY[0x1C68F9740](v18, 0);
        *(v17 + 16) = Entity;
        MEMORY[0x1C68F9740](Entity, v17);

        v15 = v17;
        goto LABEL_8;
      }

      v14 = makeEntity(for:)(Entity);
LABEL_4:
      v15 = v14;
LABEL_8:
      __VideoResource.addEntity(_:)(v15);
      LOBYTE(v22[0]) = 2 * (REVideoComponentGetDesiredViewingMode() != 1);
      __VideoResource.preferredViewingMode.setter(v22);

      REVideoComponentGetFadeThreshold();
      v20 = v19;

      a2[6] = v20;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance VideoComponent(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(*v1 + 16);
  REVideoComponentSetVideoAsset();
  v5 = v1[4];
  v6 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  swift_beginAccess();
  v8 = *(v7 + 16);

  REVideoComponentSetMaterialAsset();
  v9 = v2[6];
  REVideoComponentSetFadeThreshold();
  REVideoComponentAddRealityKitDefaultAttachmentsOnAllMaterials();
  return RENetworkMarkComponentDirty();
}

int64_t _Proto_SkeletonDefinition_v1.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {

    v7 = MEMORY[0x1E69E7CC0];
    v5 = 0xE500000000000000;
    v3 = 0x7974706D65;
LABEL_26:
    *a2 = v3;
    a2[1] = v5;
    a2[2] = v7;
    return result;
  }

  if (RESkeletonAssetGetName())
  {
    v3 = String.init(cString:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  result = RESkeletonAssetGetJointCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = result;
    if (result)
    {
      v29 = v3;
      v30 = a2;
      v31 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v9 = 0;
      v7 = v31;
      do
      {
        if (RESkeletonAssetGetJointName())
        {
          v10 = String.init(cString:)();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0xE000000000000000;
        }

        JointParentIndex = RESkeletonAssetGetJointParentIndex();
        v14 = JointParentIndex;
        if (JointParentIndex)
        {
          v15 = *JointParentIndex;
        }

        else
        {
          v15 = 0;
        }

        JointLocalRestTransform = RESkeletonAssetGetJointLocalRestTransform();
        if (JointLocalRestTransform)
        {
          v18 = *JointLocalRestTransform;
          v17 = JointLocalRestTransform[1];
          v19 = JointLocalRestTransform[2];
          if (one-time initialization token for identity != -1)
          {
            v25 = JointLocalRestTransform[2];
            v27 = JointLocalRestTransform[1];
            v23 = *JointLocalRestTransform;
            swift_once();
            v18 = v23;
            v19 = v25;
            v17 = v27;
          }
        }

        else
        {
          if (one-time initialization token for identity != -1)
          {
            swift_once();
          }

          v17 = static simd_quatf.identity;
          v19 = 0uLL;
          v18 = xmmword_1C1887620;
        }

        v21 = *(v31 + 16);
        v20 = *(v31 + 24);
        if (v21 >= v20 >> 1)
        {
          v26 = v19;
          v28 = v17;
          v24 = v18;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v18 = v24;
          v19 = v26;
          v17 = v28;
        }

        ++v9;
        *(v31 + 16) = v21 + 1;
        v22 = v31 + 80 * v21;
        *(v22 + 32) = v10;
        *(v22 + 40) = v12;
        *(v22 + 48) = v15;
        *(v22 + 56) = v14 == 0;
        *(v22 + 64) = v18;
        *(v22 + 80) = v17;
        *(v22 + 96) = v19;
      }

      while (v8 != v9);

      a2 = v30;
      v3 = v29;
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t _Proto_SkeletonDefinition_v1.Joint.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _Proto_SkeletonDefinition_v1.Joint.parentIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t _Proto_SkeletonDefinition_v1.Joint.parentIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

__n128 _Proto_SkeletonDefinition_v1.Joint.localTransform.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  return result;
}

void _Proto_SkeletonDefinition_v1.Joint.localTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

uint64_t _Proto_SkeletonDefinition_v1.Joint.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _Proto_SkeletonDefinition_v1.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _Proto_SkeletonDefinition_v1.joints.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

RealityFoundation::_Proto_SkeletonDefinition_v1 __swiftcall _Proto_SkeletonDefinition_v1.init(named:withJoints:)(Swift::String named, Swift::OpaquePointer withJoints)
{
  *v2 = named;
  *(v2 + 16) = withJoints;
  result.name = named;
  result.joints = withJoints;
  return result;
}

Swift::Bool __swiftcall _Proto_SkeletonDefinition_v1.equivalent(to:compareEnrolment:)(RealityFoundation::_Proto_SkeletonDefinition_v1 to, Swift::Bool compareEnrolment)
{
  v3 = *(to.name._countAndFlagsBits + 16);
  v4 = *(v2 + 16);
  v5 = v4[1].u64[0];
  if (v5 != v3[1].i64[0])
  {
    v19 = 0;
LABEL_33:
    LOBYTE(v8) = v19;
    return v8;
  }

  object = to.name._object;
  v7 = *(v2 + 16);

  if (!v5)
  {
LABEL_21:
    if (object)
    {
      v20 = 0;
      v21 = v4[1].u64[0];
      v22 = v3 + 6;
      v23 = v4 + 6;
      while (v21 != v20)
      {
        if (v20 >= v21)
        {
          goto LABEL_36;
        }

        v24 = v3[1].u64[0];
        if (v20 == v24)
        {
          break;
        }

        if (v20++ >= v24)
        {
          goto LABEL_37;
        }

        v19 = 0;
        v25 = vmovn_s32(vceqq_f32(*v23, *v22));
        if (v25.i8[0] & 1) != 0 && (v25.i8[2])
        {
          v22 += 5;
          v23 += 5;
          if (v25.i8[4])
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

    v19 = 1;
LABEL_32:

    goto LABEL_33;
  }

  v9 = 0;
  v10 = &v4[3].i8[8];
  v11 = &v3[3].u8[8];
  while (v9 < v5)
  {
    v13 = v3[1].u64[0];
    if (v9 == v13)
    {
      goto LABEL_21;
    }

    if (v9 >= v13)
    {
      goto LABEL_35;
    }

    v8 = *(v10 - 3);
    v14 = *(v10 - 1);
    v15 = *v10;
    v16 = *(v11 - 1);
    v17 = *v11;
    if (v8 != *(v11 - 3) || *(v10 - 2) != *(v11 - 2))
    {
      LOBYTE(v8) = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((v8 & 1) == 0)
      {
LABEL_19:
        v19 = 0;
        goto LABEL_32;
      }
    }

    if (v15)
    {
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v14 == v16)
      {
        v12 = v17;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_19;
      }
    }

    ++v9;
    v5 = v4[1].u64[0];
    v10 += 80;
    v11 += 80;
    if (v9 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return v8;
}

BOOL static _Proto_SkeletonDefinition_v1.== infix(_:_:)@<W0>(RealityFoundation::_Proto_SkeletonDefinition_v1 a1@<0:X0, 8:X1, 16:X2>, Swift::Bool a2@<W3>)
{
  v2 = *a1.name._object;
  v6 = *a1.name._countAndFlagsBits;
  v7 = *(a1.name._countAndFlagsBits + 8);
  v4 = v2;
  v5 = *(a1.name._object + 8);
  a1.name._countAndFlagsBits = &v4;
  a1.name._object = 1;
  return _Proto_SkeletonDefinition_v1.equivalent(to:compareEnrolment:)(a1, a2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _Proto_SkeletonDefinition_v1@<W0>(RealityFoundation::_Proto_SkeletonDefinition_v1 a1@<0:X0, 8:X1, 16:X2>, Swift::Bool a2@<W3>)
{
  v2 = *a1.name._object;
  v6 = *a1.name._countAndFlagsBits;
  v7 = *(a1.name._countAndFlagsBits + 8);
  v4 = v2;
  v5 = *(a1.name._object + 8);
  a1.name._countAndFlagsBits = &v4;
  a1.name._object = 1;
  return _Proto_SkeletonDefinition_v1.equivalent(to:compareEnrolment:)(a1, a2);
}

uint64_t _Proto_SkeletonDefinition_v1.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _Proto_SkeletonDefinition_v1.subTreeIndices(under:inclusive:)(unint64_t a1, int a2)
{
  v5 = *(v2 + 16);
  result = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(MEMORY[0x1E69E7CC0], *(v5 + 16));
  v7 = result;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v5 + 56;
    v11 = v8 - 1;
LABEL_3:
    v12 = (v10 + 80 * v9);
    v13 = v9;
    while (v13 < *(v5 + 16))
    {
      v9 = v13 + 1;
      if ((*v12 & 1) == 0)
      {
        v14 = *(v12 - 1);
        v33 = *(v12 - 2);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v7 = result;
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }
        }

        if (v14 >= v7[2])
        {
          goto LABEL_42;
        }

        v30 = v11;
        v31 = v10;
        v15 = v7 + 4;
        v16 = v7[v14 + 4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v7[v14 + 4] = v16;
        v32 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          v15[v14] = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          v15[v14] = v16;
        }

        v10 = v31;
        *(v16 + 2) = v19 + 1;
        *&v16[8 * v19 + 32] = v13;

        v11 = v30;
        a2 = v32;
        if (v30 != v13)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }

      v12 += 80;
      ++v13;
      if (v8 == v9)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_40;
  }

LABEL_19:
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1887600;
    *(v20 + 32) = a1;
    v21 = 1;
LABEL_24:
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = *(v20 + 32);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      if (!v24 || (v21 - 1) > *(v20 + 24) >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v21, 1, v20);
      }

      v25 = *(v20 + 16);
      memmove((v20 + 32), (v20 + 40), 8 * v25 - 8);
      *(v20 + 16) = v25 - 1;
      v34 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 16) = v27 + 1;
      *(v22 + 8 * v27 + 32) = v23;
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v23 >= v7[2])
      {
        goto LABEL_39;
      }

      v28 = v7[v23 + 4];

      specialized Array.append<A>(contentsOf:)(v29);
      v20 = v34;
      v21 = *(v34 + 16);
      if (!v21)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v7[2] <= a1)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v20 = v7[a1 + 4];
  v21 = *(v20 + 16);

  if (v21)
  {
    goto LABEL_24;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_37:

  return v22;
}

uint64_t _Proto_SkeletonDefinition_v1.adjustParenting(_:)(uint64_t a1)
{
  v2 = a1;
  v34 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v39 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = 0;
    v6 = v39;
    v37 = v2;
    v7 = (v2 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v39 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);

      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v39;
      }

      *(v6 + 16) = v11 + 1;
      v12 = (v6 + 24 * v11);
      v12[5] = v8;
      v12[6] = v5;
      v12[4] = v9;
      v7 += 10;
      ++v5;
    }

    while (v3 != v5);
    v2 = v37;
    v4 = MEMORY[0x1E69E7CC0];
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v13 = MEMORY[0x1E69E7CC8];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v13 = static _DictionaryStorage.allocate(capacity:)();
LABEL_9:
  v39 = v13;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v14, 1, &v39);

  v15 = v39;
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v39 = v4;
  v33 = v15;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v16 = v33;
  v17 = v39;
  for (i = (v2 + 48); ; i += 10)
  {
    v20 = *(i - 2);
    v19 = *(i - 1);
    v21 = *i;
    v36 = *(i + 2);
    v38 = *(i + 1);
    v35 = *(i + 3);
    if (i[1])
    {

      goto LABEL_20;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v34 + 16))
    {
      goto LABEL_29;
    }

    if (!*(v16 + 16))
    {

LABEL_19:
      v21 = 0;
LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    v22 = (v34 + 32 + 80 * v21);
    v23 = *v22;
    v24 = v22[1];

    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_19;
    }

    v28 = 0;
    v21 = *(*(v16 + 56) + 8 * v25);
LABEL_21:
    v39 = v17;
    v30 = *(v17 + 16);
    v29 = *(v17 + 24);
    if (v30 >= v29 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      v16 = v33;
      v17 = v39;
    }

    *(v17 + 16) = v30 + 1;
    v31 = v17 + 80 * v30;
    *(v31 + 32) = v20;
    *(v31 + 40) = v19;
    *(v31 + 48) = v21;
    *(v31 + 56) = v28;
    *(v31 + 64) = v38;
    *(v31 + 80) = v36;
    *(v31 + 96) = v35;
    if (!--v3)
    {

      return v17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

RealityFoundation::_Proto_SkeletonDefinition_v1 __swiftcall _Proto_SkeletonDefinition_v1.subTree(fromRoot:named:)(Swift::String fromRoot, Swift::String_optional named)
{
  object = fromRoot._object;
  countAndFlagsBits = fromRoot._countAndFlagsBits;
  v39 = v2;
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v9 = named.value._object;
  if (!named.value._object)
  {

    named.value._countAndFlagsBits = v7;
    v9 = v10;
  }

  v37 = v9;
  v38 = named.value._countAndFlagsBits;

  v11 = MEMORY[0x1C68F3410](countAndFlagsBits, object);
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = 0;
    v42 = v8 + 32;
    v16 = (v8 + 40);
    while (1)
    {
      if (v15 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      if (*(v16 - 1) == countAndFlagsBits && *v16 == object)
      {
        break;
      }

      v18 = *(v16 - 1);
      v19 = *v16;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      v21 = String.hasSuffix(_:)(v20);

      if (v21)
      {
        break;
      }

      ++v15;
      v16 += 10;
      if (v14 == v15)
      {
        goto LABEL_13;
      }
    }

    v23 = _Proto_SkeletonDefinition_v1.subTreeIndices(under:inclusive:)(v15, 1);
    v24 = *(v23 + 16);
    if (v24)
    {
      v46 = MEMORY[0x1E69E7CC0];
      v25 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v11 = v25;
      v26 = 32;
      v27 = v46;
      v40 = v25;
      v41 = v8;
      while (1)
      {
        v28 = *(v11 + v26);
        if ((v28 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v28 >= *(v8 + 16))
        {
          goto LABEL_26;
        }

        v29 = (v42 + 80 * v28);
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = *(v29 + 24);
        v44 = *(v29 + 3);
        v45 = *(v29 + 2);
        v43 = *(v29 + 4);
        v34 = *(v46 + 16);
        v35 = *(v46 + 24);

        if (v34 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v34 + 1, 1);
        }

        *(v46 + 16) = v34 + 1;
        v36 = v46 + 80 * v34;
        *(v36 + 32) = v30;
        *(v36 + 40) = v31;
        *(v36 + 48) = v32;
        *(v36 + 56) = v33;
        *(v36 + 64) = v45;
        *(v36 + 80) = v44;
        *(v36 + 96) = v43;
        v26 += 8;
        --v24;
        v11 = v40;
        v8 = v41;
        if (!v24)
        {

          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v22 = _Proto_SkeletonDefinition_v1.adjustParenting(_:)(v27);
  }

  else
  {
LABEL_13:

    v22 = MEMORY[0x1E69E7CC0];
  }

  *v39 = v38;
  v39[1] = v37;
  v39[2] = v22;
LABEL_28:
  result.joints._rawValue = v13;
  result.name._object = v12;
  result.name._countAndFlagsBits = v11;
  return result;
}

RealityFoundation::_Proto_SkeletonDefinition_v1 __swiftcall _Proto_SkeletonDefinition_v1.removingChildren(of:named:)(Swift::String of, Swift::String_optional named)
{
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  v63 = v2;
  v64 = v3[1];
  v65 = *v3;
  v6 = v3[2];
  v7 = named.value._object;
  if (!named.value._object)
  {

    named.value._countAndFlagsBits = v65;
    v7 = v8;
  }

  v61 = v7;
  v62 = named.value._countAndFlagsBits;
  v68._countAndFlagsBits = 47;
  v68._object = 0xE100000000000000;

  MEMORY[0x1C68F3410](countAndFlagsBits, object);
  v9 = *(v6 + 16);

  if (v9)
  {
    v13 = 0;
    v14 = (v6 + 40);
    while (1)
    {
      if (v13 >= *(v6 + 16))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (*(v14 - 1) == countAndFlagsBits && *v14 == object)
      {
        break;
      }

      v16 = *(v14 - 1);
      v17 = *v14;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v18 = String.hasSuffix(_:)(v68);

      if (v18)
      {
        break;
      }

      ++v13;
      v14 += 10;
      if (v9 == v13)
      {
        goto LABEL_39;
      }
    }

    v68._countAndFlagsBits = v65;
    v68._object = v64;
    *&v69 = v6;
    v19 = _Proto_SkeletonDefinition_v1.subTreeIndices(under:inclusive:)(v13, 0);
    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v19);

    v21 = 0;
    v22 = v20 + 56;
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v24 = v21;
      while (1)
      {
        if (v24 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v25 = v6 + 32 + 80 * v24;
        v21 = v24 + 1;
        v27 = *(v25 + 48);
        v26 = *(v25 + 64);
        v28 = *(v25 + 32);
        v29 = *(v25 + 24);
        v31 = *(v25 + 8);
        v30 = *(v25 + 16);
        v32 = *v25;
        LOBYTE(v67) = v29;
        v68._countAndFlagsBits = v24;
        *&v69 = v32;
        *(&v69 + 1) = v31;
        *&v70 = v30;
        BYTE8(v70) = v29;
        v71 = v28;
        v72 = v27;
        v73 = v26;
        if (!*(v20 + 16))
        {
          break;
        }

        v33 = MEMORY[0x1C68F4BF0](*(v20 + 40), v24);
        v34 = -1 << *(v20 + 32);
        v35 = v33 & ~v34;
        if (((*(v22 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          break;
        }

        v36 = ~v34;
        while (*(*(v20 + 48) + 8 * v35) != v24)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v22 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        isUniquelyReferenced_nonNull_native = outlined destroy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(&v68);
        ++v24;
        if (v21 == v9)
        {
          goto LABEL_30;
        }
      }

LABEL_25:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66[0] = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
        v23 = v66[0];
      }

      v38 = *(v23 + 16);
      v37 = *(v23 + 24);
      if (v38 >= v37 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v23 = v66[0];
      }

      *(v23 + 16) = v38 + 1;
      v39 = v23 + 96 * v38;
      v40 = v69;
      *(v39 + 32) = v68;
      *(v39 + 48) = v40;
      v41 = v70;
      v42 = v71;
      v43 = v73;
      *(v39 + 96) = v72;
      *(v39 + 112) = v43;
      *(v39 + 64) = v41;
      *(v39 + 80) = v42;
    }

    while (v21 != v9);
LABEL_30:

    v44 = *(v23 + 16);
    if (v44)
    {
      v67 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
      v45 = v67;
      v46 = v44 - 1;
      for (i = 32; ; i += 96)
      {
        v48 = *(v23 + i + 16);
        v68 = *(v23 + i);
        v69 = v48;
        v49 = *(v23 + i + 32);
        v50 = *(v23 + i + 48);
        v51 = *(v23 + i + 80);
        v72 = *(v23 + i + 64);
        v73 = v51;
        v70 = v49;
        v71 = v50;
        outlined init with copy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(&v68, v66);
        v67 = v45;
        v53 = *(v45 + 16);
        v52 = *(v45 + 24);
        if (v53 >= v52 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
          v45 = v67;
        }

        v54 = v69;
        v55 = v70;
        v56 = BYTE8(v70);
        v57 = v71;
        v58 = v72;
        v59 = v73;
        *(v45 + 16) = v53 + 1;
        v60 = v45 + 80 * v53;
        *(v60 + 32) = v54;
        *(v60 + 48) = v55;
        *(v60 + 56) = v56;
        *(v60 + 64) = v57;
        *(v60 + 80) = v58;
        *(v60 + 96) = v59;
        if (!v46)
        {
          break;
        }

        --v46;
      }
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v68._countAndFlagsBits = v65;
    v68._object = v64;
    *&v69 = v6;
    v6 = _Proto_SkeletonDefinition_v1.adjustParenting(_:)(v45);
  }

LABEL_39:

  *v63 = v62;
  v63[1] = v61;
  v63[2] = v6;
LABEL_42:
  result.joints._rawValue = v12;
  result.name._object = v11;
  result.name._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t outlined destroy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMd, &_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (offset: Int, element: _Proto_SkeletonDefinition_v1.Joint)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMd, &_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for _Proto_SkeletonDefinition_v1.Joint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for _Proto_SkeletonDefinition_v1.Joint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __RKTimerTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKTimerTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t specialized HasTransform.scale.setter(__n128 a1)
{
  v2 = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v10);
  if ((v15 & 1) == 0)
  {
    v3 = v11;
    v4 = v12;
    v5 = v13;
    v6 = v14;
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = *(&xmmword_1EBEB2BB0 + 1);
    v3 = xmmword_1EBEB2BB0;
    v6 = *(&xmmword_1EBEB2BC0 + 1);
    v5 = xmmword_1EBEB2BC0;
LABEL_5:
    v16 = a1;
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v20 = v6;
    v21 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(&v16);
    v7 = *(v2 + 16);

    if (v7 == *(v2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t specialized HasTransform.orientation.setter(__n128 a1)
{
  v2 = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v10);
  if ((v11 & 1) == 0)
  {
    v3 = v10[0];
    v4 = v10[1];
    v5 = v10[4];
    v6 = v10[5];
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = *(&static Transform.identity + 1);
    v3 = static Transform.identity;
    v6 = *(&xmmword_1EBEB2BC0 + 1);
    v5 = xmmword_1EBEB2BC0;
LABEL_5:
    v12[0] = v3;
    v12[1] = v4;
    v13 = a1;
    v14 = v5;
    v15 = v6;
    v16 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v12);
    v7 = *(v2 + 16);

    if (v7 == *(v2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t Entity.ComponentSet.subscript.getter@<X0>(uint64_t *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v10 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();
  Entity.ComponentSet.subscript.getter(a2, a3, a4);
}

uint64_t Entity.access<A>(keyPath:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *(v0 + 16);
  ObservationRegistrar = REEntityGetOrCreateObservationRegistrar();
  outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v7);
  outlined init with copy of ObservationRegistrar?(v7, v5);
  v10 = type metadata accessor for ObservationRegistrar();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of ObservationRegistrar?(v7);
    return outlined destroy of ObservationRegistrar?(v5);
  }

  else
  {
    v13[1] = v0;
    lazy protocol witness table accessor for type Entity and conformance Entity();
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    outlined destroy of ObservationRegistrar?(v7);
    return (*(v11 + 8))(v5, v10);
  }
}

Swift::Int HashableMetatype.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableMetatype<A>()
{
  Hasher.init(_seed:)();
  HashableMetatype.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*Entity.observable.modify(void *a1))()
{
  *a1 = v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Entity.Observable.name.getter(uint64_t a1)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v2 = *(a1 + 16);
  REEntityGetName();

  return String.init(cString:)();
}

uint64_t (*Entity.Observable.name.modify(uint64_t *a1))()
{
  v3 = *v1;
  a1[2] = v3;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v4 = *(v3 + 16);
  REEntityGetName();
  *a1 = String.init(cString:)();
  a1[1] = v5;
  return Entity.Observable.name.modify;
}

uint64_t Entity.Observable.isEnabled.getter(uint64_t a1)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v2 = *(a1 + 16);
  return REEntityGetSelfEnabled();
}

uint64_t key path getter for Entity.Observable.isEnabled : Entity.Observable@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v4 = *(v3 + 16);
  result = REEntityGetSelfEnabled();
  *a2 = result;
  return result;
}

uint64_t Entity.Observable.isEnabled.setter(char a1)
{
  v2 = *v1;
  MEMORY[0x1C68F9730](*(*v1 + 16), a1 & 1);
  v3 = *(v2 + 16);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t key path getter for Entity.isEnabled : Entity@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEntityGetSelfEnabled();
  *a2 = result;
  return result;
}

uint64_t key path setter for Entity.isEnabled : Entity(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  MEMORY[0x1C68F9730](*(*a2 + 16), *a1);
  v3 = *(v2 + 16);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t (*Entity.Observable.isEnabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  v3 = *v1;
  *a1 = v3;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v4 = *(v3 + 16);
  *(a1 + 8) = REEntityGetSelfEnabled();
  return Entity.Observable.isEnabled.modify;
}

uint64_t Entity.Observable.isEnabled.modify(unsigned __int8 *a1)
{
  v1 = *a1;
  MEMORY[0x1C68F9730](*(*a1 + 16), a1[8]);
  v2 = *(v1 + 16);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t Entity.Observable.children.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  *a2 = a1;
}

uint64_t key path setter for Entity.components : Entity(uint64_t result, uint64_t a2)
{
  if (*(*result + 16) != *(*a2 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.Observable.children.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v3;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  *a1 = v3;

  return Entity.Observable.children.modify;
}

double Entity.Observable.transform.getter(uint64_t a1)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(a1, v3);
  if ((v4 & 1) == 0)
  {
    return v3[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t (*Entity.Observable.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4 + 128);
  if (*(v4 + 176))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
    v7 = xmmword_1EBEB2BB0;
    v8 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 128);
    v7 = *(v4 + 144);
    v8 = *(v4 + 160);
  }

  *(v4 + 192) = v6;
  *(v4 + 208) = v7;
  *(v4 + 224) = v8;
  return Entity.Observable.transform.modify;
}

double Entity.Observable.position.getter(uint64_t a1)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(a1, v3);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BC0;
}

void (*Entity.Observable.position.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  *(v4 + 64) = v6;
  return Entity.Observable.position.modify;
}

double Entity.Observable.scale.getter(uint64_t a1)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(a1, v3);
  if ((v4 & 1) == 0)
  {
    return v3[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

void (*Entity.Observable.scale.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
  }

  else
  {
    v6 = *v4;
  }

  *(v4 + 64) = v6;
  return Entity.Observable.scale.modify;
}

double Entity.Observable.orientation.getter(uint64_t a1)
{
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(a1, v3);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BB0;
}

void (*Entity.Observable.orientation.modify(uint64_t *a1))(__n128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BB0;
  }

  else
  {
    v6 = *(v4 + 16);
  }

  *(v4 + 64) = v6;
  return Entity.Observable.orientation.modify;
}

uint64_t (*Entity.Observable.components.modify(void *a1))(uint64_t *a1)
{
  *a1 = *v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
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
  v17 = *v4;
  Entity.Observable.Components.subscript.getter(v15, a3, a4);
  return Entity.Observable.Components.subscript.modify;
}

uint64_t Entity.Observable.Components.subscript.getter@<X0>(uint64_t *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v10[0] = *a1;
  v10[1] = v8;

  Entity.ComponentSet.subscript.getter(v10, a2, a3, a4);
}

uint64_t Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized Entity.Observable.Components.subscript.setter(a1, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

{
  specialized Entity.Observable.Components.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Entity.Observable.Components.subscript.modify(void *a1, uint64_t *a2, ValueMetadata *a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Optional();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[6] = v15;
  v16 = *v4;
  v18[0] = *a2;
  v18[1] = v16;
  Entity.Observable.Components.subscript.getter(v18, a3, a4, v15);
  return Entity.Observable.Components.subscript.modify;
}

uint64_t (*Entity.proto_observable.modify(void *a1))()
{
  *a1 = v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Entity.Proto_Observable.name.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v2 = *(v1 + 16);
  REEntityGetName();

  return String.init(cString:)();
}

uint64_t key path getter for Entity.Observable.name : Entity.Observable@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v4 = *(v3 + 16);
  REEntityGetName();
  result = String.init(cString:)();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t (*Entity.Proto_Observable.name.modify(uint64_t *a1))()
{
  v3 = *v1;
  a1[2] = v3;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  v4 = *(v3 + 16);
  REEntityGetName();
  *a1 = String.init(cString:)();
  a1[1] = v5;
  return Entity.Proto_Observable.name.modify;
}

uint64_t Entity.Observable.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    Entity.name.setter();
  }

  else
  {
    v7 = *a1;
    return Entity.name.setter();
  }
}

uint64_t Entity.Proto_Observable.children.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  *a1 = v3;
}

uint64_t key path getter for Entity.Observable.children : Entity.Observable@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  *a2 = v3;
}

uint64_t Entity.Observable.children.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*a1 + 16);

  if (v3 != *(v2 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.Proto_Observable.children.modify(void *a1))()
{
  v3 = *v1;
  a1[1] = v3;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  *a1 = v3;

  return Entity.Proto_Observable.children.modify;
}

uint64_t Entity.Observable.children.modify(uint64_t *a1, char a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = *(result + 16);
  if ((a2 & 1) == 0)
  {

    if (v5 == *(v4 + 16))
    {
      return result;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  if (v5 != *(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }
}

double Entity.Proto_Observable.transform.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v3);
  if ((v4 & 1) == 0)
  {
    return v3[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t key path getter for Entity.Observable.transform : Entity.Observable@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3, v8);
  if (v9)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = static Transform.identity;
    v6 = xmmword_1EBEB2BB0;
    v7 = xmmword_1EBEB2BC0;
  }

  else
  {
    v5 = v8[0];
    v6 = v8[1];
    v7 = v8[2];
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t key path setter for Entity.Observable.transform : Entity.Observable(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *a2;
  v8[0] = *a1;
  v8[1] = v2;
  v9 = v4;
  v10 = v3;
  v11 = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v8);
  v6 = *(v5 + 16);

  if (v6 != *(v5 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t Entity.Observable.transform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v4 = *v3;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v7);
  v5 = *(v4 + 16);

  if (v5 != *(v4 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.Proto_Observable.transform.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4 + 128);
  if (*(v4 + 176))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
    v7 = xmmword_1EBEB2BB0;
    v8 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 128);
    v7 = *(v4 + 144);
    v8 = *(v4 + 160);
  }

  *(v4 + 192) = v6;
  *(v4 + 208) = v7;
  *(v4 + 224) = v8;
  return Entity.Proto_Observable.transform.modify;
}

void Entity.Observable.transform.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 192);
  v5 = *(*a1 + 200);
  v4 = *(*a1 + 208);
  v7 = *(*a1 + 216);
  v6 = *(*a1 + 224);
  v8 = *(*a1 + 232);
  v9 = *(*a1 + 56);
  if (a2)
  {
    *v2 = v3;
    v2[1] = v5;
    v2[2] = v4;
    v2[3] = v7;
    v2[4] = v6;
    v2[5] = v8;
    *(v2 + 48) = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v2);
    v10 = *(v9 + 16);

    v8 = *(v9 + 16);
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v2[8] = v3;
  v2[9] = v5;
  v2[10] = v4;
  v2[11] = v7;
  v2[12] = v6;
  v2[13] = v8;
  *(v2 + 112) = 0;

  _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5((v2 + 8));
  v11 = *(v9 + 16);

  if (v11 != *(v9 + 16))
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

double Entity.Proto_Observable.position.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v3);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BC0;
}

uint64_t key path getter for Entity.Observable.position : Entity.Observable@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3, v6);
  if (v8)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = xmmword_1EBEB2BC0;
  }

  else
  {
    v5 = v7;
  }

  *a2 = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BC0;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  *(v4 + 64) = v6;
  return Entity.Proto_Observable.position.modify;
}

double Entity.Proto_Observable.scale.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v3);
  if ((v4 & 1) == 0)
  {
    return v3[0];
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&static Transform.identity;
}

uint64_t key path getter for Entity.Observable.scale : Entity.Observable@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3, v6);
  if (v7)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = static Transform.identity;
  }

  else
  {
    v5 = v6[0];
  }

  *a2 = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.scale.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = static Transform.identity;
  }

  else
  {
    v6 = *v4;
  }

  *(v4 + 64) = v6;
  return Entity.Proto_Observable.scale.modify;
}

double Entity.Proto_Observable.orientation.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v3);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBEB2BB0;
}

uint64_t key path getter for Entity.Observable.orientation : Entity.Observable@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  result = _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v3, v6);
  if (v8)
  {
    if (one-time initialization token for identity != -1)
    {
      result = swift_once();
    }

    v5 = xmmword_1EBEB2BB0;
  }

  else
  {
    v5 = v7;
  }

  *a2 = v5;
  return result;
}

uint64_t (*Entity.Proto_Observable.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 56) = v5;
  MEMORY[0x1EEE9AC00](v3);
  swift_getKeyPath();
  Entity.access<A>(keyPath:)();

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v5, v4);
  if (*(v4 + 48))
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v6 = xmmword_1EBEB2BB0;
  }

  else
  {
    v6 = *(v4 + 16);
  }

  *(v4 + 64) = v6;
  return Entity.Proto_Observable.orientation.modify;
}

void Entity.Observable.position.modify(__n128 **a1, uint64_t a2, void (*a3)(__n128))
{
  v3 = *a1;
  v4 = (*a1)[3].n128_u64[1];
  a3((*a1)[4]);

  free(v3);
}

uint64_t (*Entity.Proto_Observable.components.modify(void *a1))()
{
  *a1 = *v1;

  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t Entity.Observable.Components.subscript.getter@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v9[0] = a1;
  v9[1] = v7;

  Entity.ComponentSet.subscript.getter(v9, a1, a2, a3);
}

uint64_t (*Entity.Proto_Observable.Components.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
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
  v17 = *v4;
  Entity.Observable.Components.subscript.getter(v15, a3, a4);
  return Entity.Proto_Observable.Components.subscript.modify;
}

BOOL key path index equality operator for <A>(HashableMetatype<A>)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = v2;
  return static HashableMetatype.== infix(_:_:)(&v5, &v4);
}

uint64_t key path getter for Entity.ComponentSet.subscript<A>(_:) : <A>Entity.ComponentSetA@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v6 = *a1;
  v8[0] = *a2;
  v8[1] = v6;
  return Entity.ComponentSet.subscript.getter(v8, v5, v4, a4);
}

uint64_t Entity.withMutation<A, B>(keyPath:_:)@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v20 - v10;
  v12 = *(v4 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v11);
    v14 = type metadata accessor for ObservationRegistrar();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v11, 1, v14) != 1)
    {
      v20[3] = v4;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();
      v16 = (*(v15 + 8))(v11, v14);
      goto LABEL_6;
    }
  }

  else
  {
    v17 = type metadata accessor for ObservationRegistrar();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  v16 = outlined destroy of ObservationRegistrar?(v11);
LABEL_6:
  v18 = v20[1];
  a1(v16);
  if (!v18)
  {
    (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return $defer #1 <A, B>() in Entity.withMutation<A, B>(keyPath:_:)(v4);
}

uint64_t $defer #1 <A, B>() in Entity.withMutation<A, B>(keyPath:_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - v4;
  v6 = *(a1 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v5);
    v8 = type metadata accessor for ObservationRegistrar();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) != 1)
    {
      v12[1] = a1;
      lazy protocol witness table accessor for type Entity and conformance Entity();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
      return (*(v9 + 8))(v5, v8);
    }
  }

  else
  {
    v11 = type metadata accessor for ObservationRegistrar();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  return outlined destroy of ObservationRegistrar?(v5);
}

uint64_t Entity.withMutation<A, B>(componentType:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v23 - v15;
  v17 = *(v6 + 16);
  ObservationRegistrar = REEntityGetObservationRegistrar();
  if (ObservationRegistrar)
  {
    outlined init with copy of ObservationRegistrar?(ObservationRegistrar, v16);
    v19 = type metadata accessor for ObservationRegistrar();
    if ((*(*(v19 - 8) + 48))(v16, 1, v19) != 1)
    {
      outlined destroy of ObservationRegistrar?(v16);
      v23[0] = a3;
      v23[1] = a5;
      v23[2] = a1;
      swift_getKeyPath();
      Entity.withMutation<A, B>(keyPath:_:)(a2, v24, a6);
    }
  }

  else
  {
    v21 = type metadata accessor for ObservationRegistrar();
    (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  }

  v22 = outlined destroy of ObservationRegistrar?(v16);
  result = (a2)(v22);
  if (!v7)
  {
    return (*(*(v24 - 8) + 56))(a6, 0, 1);
  }

  return result;
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v10 = *v3;

  specialized Entity.ComponentSet.subscript.setter(a1, a2, a2, a3);
  v8 = *(v10 + 16);

  if (v8 != *(v7 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Entity.Observable.Components.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v11 = *v4;

  specialized Entity.ComponentSet.subscript.setter(a1, a3, a3, a4);
  v9 = *(v11 + 16);

  if (v9 != *(v8 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t keypath_get_11Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v6 = *a1;
  v8[0] = *a2;
  v8[1] = v6;
  return a4(v8, v5, v4);
}

uint64_t keypath_set_21Tm(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return Entity.name.setter();
}

uint64_t type metadata instantiation function for HashableMetatype()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined destroy of ObservationRegistrar?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ObservationRegistrar?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Observation0A9RegistrarVSgMd, &_s11Observation0A9RegistrarVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *specialized static EmphasizeAnimations.createEmphasizeFloatAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 375, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulFloatAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 404, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildFloatAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 318, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicFloatAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

uint64_t QueryPredicate.makeInternal()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t QueryPredicate.enumerate(using:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t static QueryPredicateProtocol.everything.getter@<X0>(uint64_t a1@<X1>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 8);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for QueryPredicates.Constant();
  WitnessTable = swift_getWitnessTable();
  return QueryPredicateProtocol.eraseToQueryPredicate()(v4, WitnessTable, a2);
}

uint64_t QueryPredicate.performNativeEntityQuery(for:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 56);

  v5 = v2(a1);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2);
  return v5;
}

uint64_t QueryPredicate.evaluate(value:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1() & 1;
}

uint64_t QueryPredicate.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = implicit closure #1 in QueryPredicate.init<A>(_:)(v14, v15, v16, v17);
  v20 = v19;
  v21 = implicit closure #3 in QueryPredicate.init<A>(_:)(a1, a2, a3, a4);
  v23 = v22;
  (*(v10 + 16))(v13, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19QueryInternalizable_pMd, &_s17RealityFoundation19QueryInternalizable_pMR);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a3);
    outlined init with take of ForceEffectBase(v30, v32);
    outlined init with copy of __REAssetService(v32, v30);
    v24 = swift_allocObject();
    outlined init with take of ForceEffectBase(v30, v24 + 16);
    outlined init with take of ForceEffectBase(v32, v30);
    v25 = swift_allocObject();
    result = outlined init with take of ForceEffectBase(v30, v25 + 16);
    v27 = partial apply for implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:);
    v28 = partial apply for implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:);
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    outlined destroy of BodyTrackingComponent?(v30, &_s17RealityFoundation19QueryInternalizable_pSgMd, &_s17RealityFoundation19QueryInternalizable_pSgMR);
    v28 = makeCustomPredicate<A>(predicate:)(a1, a3, a4);
    v24 = v29;
    result = (*(v10 + 8))(a1, a3);
    v27 = 0;
    v25 = 0;
  }

  *a5 = v18;
  a5[1] = v20;
  a5[2] = v28;
  a5[3] = v24;
  a5[4] = v21;
  a5[5] = v23;
  a5[6] = v27;
  a5[7] = v25;
  return result;
}

uint64_t (*implicit closure #1 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
}

uint64_t (*implicit closure #3 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:);
}

uint64_t implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Entity();
  if (swift_dynamicCastMetatype())
  {
    (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v14 = (v13 + v12);
    v15 = partial apply for closure #1 in makeCustomPredicate<A>(predicate:);
LABEL_8:
    v21 = v15;
    (*(v6 + 32))(v14, v8, a2);
    return v21;
  }

  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = AssociatedTypeWitness == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v18 = v16;
    (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
    v19 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = AssociatedTypeWitness;
    v20[5] = v18;
    v14 = v20 + v19;
    v15 = partial apply for closure #2 in makeCustomPredicate<A>(predicate:);
    goto LABEL_8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicate<A>@<X0>(_BYTE *a1@<X8>)
{
  result = QueryPredicate.evaluate(value:)();
  *a1 = result & 1;
  return result;
}

uint64_t QueryPredicateProtocol.eraseToQueryPredicate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  v12 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return QueryPredicate.init<A>(_:)(v10, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t instantiation function for generic protocol witness table for QueryPredicate<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for QueryPredicate()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for QueryPredicates.Constant()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Constant<A>@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = specialized QueryPredicates.Constant.evaluate(value:)(*v2);
  *a2 = result & 1;
  return result;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Constant<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t thunk #1 (_:) in createEntityPredicate(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v12[3] = MEMORY[0x1E69E6B70];
  v12[0] = a1;
  outlined init with copy of Any(v12, v11);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v3 = swift_dynamicCastClassUnconditional();
    goto LABEL_3;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v6 = specialized static Entity.entityInfoType(_:)();
    if (v6)
    {
      v7 = (*(v6 + 232))();
      v8 = *(v7 + 16);

      MEMORY[0x1C68F9740](v8, 0);
      *(v7 + 16) = v10;
      MEMORY[0x1C68F9740](v10, v7);

      v4 = v7;
      goto LABEL_7;
    }

    v3 = makeEntity(for:)(v10);
LABEL_3:
    v4 = v3;
LABEL_7:
    v9 = a2(v4);

    return v9 & 1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:)(a1, a2, a3);
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v5;
  v8[5] = v7;
  v17 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool);
  v18 = v8;
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10RealityKit6EntityCcMd, &_sSb10RealityKit6EntityCcMR);
  swift_dynamicCast();
  v10 = swift_allocObject();
  *(v10 + 16) = v16;
  v11 = swift_allocObject();
  *(v11 + 16) = _s10RealityKit6EntityCSbIegnr_ACSbIeggd_TRTA_0;
  *(v11 + 24) = v10;
  v15[4] = partial apply for thunk #1 (_:) in createEntityPredicate(_:);
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  v15[3] = &block_descriptor_32;
  v12 = _Block_copy(v15);

  CustomEntityPredicate = REQueryCreateCustomEntityPredicate();

  _Block_release(v12);
  return CustomEntityPredicate;
}

uint64_t (*implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3))()
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
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:);
}

uint64_t closure #2 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v13, v14, v11);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  (*(v9 + 32))(&v16[v15], v12, a4);
  aBlock[4] = partial apply for thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_35;
  v17 = _Block_copy(aBlock);

  CustomComponentPredicate = REQueryCreateCustomComponentPredicate();
  _Block_release(v17);
  return CustomComponentPredicate;
}

uint64_t thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17[-v14];
  closure #1 in thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:)(a2, a3, a1, v19);
  outlined init with copy of Component?(v19, &v17[8]);
  if (*&v17[32])
  {
    outlined init with take of ForceEffectBase(&v17[8], v18);
    outlined init with copy of __REAssetService(v18, &v17[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
    swift_dynamicCast();
    (*(v10 + 24))(&v17[7], v15, a5, v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
    outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    return v17[7];
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v19, &_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
    outlined destroy of BodyTrackingComponent?(&v17[8], &_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
    return 0;
  }
}

uint64_t closure #1 in thunk #1 <A>(_:) in closure #2 in makeCustomPredicate<A>(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(a2 + 80))(v17);
  if (LODWORD(v17[0]) != 36)
  {
    v17[0] = a3;
    v10 = *(a2 + 64);
    a4[3] = a1;
    a4[4] = a2;
    __swift_allocate_boxed_opaque_existential_1(a4);
    return v10(v17, a1, a2);
  }

  Entity = REComponentGetEntity();
  v17[3] = MEMORY[0x1E69E6B70];
  v17[0] = Entity;
  outlined init with copy of Any(v17, v16);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v9 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
      return result;
    }

    v12 = specialized static Entity.entityInfoType(_:)();
    if (v12)
    {
      v13 = (*(v12 + 232))();
      v14 = *(v13 + 16);

      MEMORY[0x1C68F9740](v14, 0);
      *(v13 + 16) = v15;
      MEMORY[0x1C68F9740](v15, v13);

      v9 = v13;
    }

    else
    {
      v9 = makeEntity(for:)(v15);
    }
  }

  v17[0] = v9;
  Entity.ComponentSet.existentialBox(for:)(a1, a2, a4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.QueryEvaluable.Value) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #1 in makeCustomPredicate<A>(predicate:)()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  (*(*(v1 + 8) + 24))(&v4);
  return v4;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with copy of Component?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pSgMd, &_s10RealityKit9Component_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t partial apply for implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:)()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80));
  return (*(*(v1 + 8) + 32))();
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:)()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80));
  (*(*(v1 + 8) + 24))(&v4);
  return v4;
}

uint64_t AudioFileResource.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AudioFileResource.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v7[0] = *(v1 + 40);
  v7[1] = v2;
  v8[0] = *(v1 + 72);
  v3 = v8[0];
  *(v8 + 13) = *(v1 + 85);
  v4 = *(v8 + 13);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 45) = v4;
  return outlined init with copy of AudioFileResource.Configuration(v7, &v6);
}

uint64_t AudioFileResource.init(fromCore:)(uint64_t a1)
{
  v3 = REAssetCopyDescription();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v20[0] = 47;
  *(&v20[0] + 1) = 0xE100000000000000;
  v19[2] = v20;
  v7 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, _sSlsSQ7ElementRpzrlE5split9separator9maxSplits25omittingEmptySubsequencesSay11SubSequenceQzGAB_SiSbtFSbABXEfU_SS_TG5TA_0, v19, v4, v6, v20);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    swift_bridgeObjectRetain_n();

    v14 = MEMORY[0x1C68F3380](v10, v11, v12, v13);
    v16 = v15;
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *(v1 + 24) = v14;
  *(v1 + 32) = v16;
  if ((REAssetHandleIsLoaded() & 1) == 0)
  {
    REAssetHandleLoadNow();
  }

  AudioFileResource.Configuration.init(from:)(v20);
  v17 = v20[1];
  *(v1 + 40) = v20[0];
  *(v1 + 56) = v17;
  *(v1 + 72) = v21[0];
  *(v1 + 85) = *(v21 + 13);
  return AudioResource.init(fromCore:)(a1);
}

uint64_t AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, char *a6)
{
  v7 = v6;
  v12 = a5[1];
  v79 = *a5;
  v80 = v12;
  v81[0] = a5[2];
  *(v81 + 13) = *(a5 + 45);
  v13 = *a6;
  if (!REAudioFileAssetIsCompletelyLoaded())
  {
    v17 = 0;
    v16 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  AudioFileResource.Configuration.init(from:)(&v73);
  v76 = v73;
  v77 = v74;
  v78[0] = v75[0];
  *(v78 + 13) = *(v75 + 13);
  InputMode = REAudioFileAssetGetInputMode();
  v73 = v79;
  v74 = v80;
  v75[0] = v81[0];
  *(v75 + 13) = *(v81 + 13);
  v71[0] = v76;
  v71[1] = v77;
  v72[0] = v78[0];
  *(v72 + 13) = *(v78 + 13);
  v15 = specialized static AudioFileResource.Configuration.== infix(_:_:)(&v73, v71);
  outlined destroy of AudioFileResource.Configuration(&v76);
  if (v15 && InputMode == (0x20001u >> (8 * v13)))
  {
    v16 = 0;
    v17 = 1;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v69 = a2;
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.audio);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C1358000, v34, v35, "[API/RealityKit] AudioFileResource initialized with different CreateOptions. Cloning the internal asset.", v36, 2u);
    MEMORY[0x1C6902A30](v36, -1, -1);
  }

  v37 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v37 + 120, &v73);
  v38 = *(&v74 + 1);
  v39 = *&v75[0];
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  (*(v39 + 32))(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v73 = v79;
  v74 = v80;
  v75[0] = v81[0];
  *(v75 + 13) = *(v81 + 13);
  type metadata accessor for REAudioFileAssetConfigurationWrapper();
  swift_initStackObject();
  outlined init with copy of AudioFileResource.Configuration(&v79, v71);
  v40 = REAudioFileAssetConfigurationWrapper.init(configuration:)(&v73);
  v41 = *(v40 + 16);
  REAudioFileAssetConfigurationSetInputMode();
  v42 = *(v40 + 16);
  v16 = REAudioFileAssetCloneWithConfiguration();

  v17 = 0;
  if (v16)
  {
    a1 = v16;
  }

  a2 = v69;
  if (!a4)
  {
LABEL_7:
    a3 = URL.lastPathComponent.getter();
    a4 = v18;
  }

LABEL_8:
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v19 = v80;
  *(v7 + 40) = v79;
  *(v7 + 56) = v19;
  *(v7 + 72) = v81[0];
  *(v7 + 85) = *(v81 + 13);
  outlined init with copy of AudioFileResource.Configuration(&v79, &v76);
  v20 = AudioResource.init(fromCore:)(a1);
  if (v16)
  {
    RERelease();
  }

  if (v17)
  {
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(a2, v21);
    outlined destroy of AudioFileResource.Configuration(&v79);
  }

  else
  {
    if ((REAssetHandleIsLoaded() & 1) != 0 || (REAssetHandleLoadNow(), !REAssetHandleLoadFailed()))
    {
      v43 = 0xE900000000000067;
      v44 = 0x6E696D6165727473;
      if (v79)
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of AudioFileResource.Configuration(&v79);
        if ((v45 & 1) == 0)
        {
          v44 = 0x6564616F6C657270;
          v43 = 0xE900000000000064;
        }
      }

      else
      {

        outlined destroy of AudioFileResource.Configuration(&v79);
      }

      v70 = a2;
      if (one-time initialization token for audio != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.audio);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v76 = v50;
        *v49 = 136315906;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, &v76);

        *(v49 + 4) = v51;
        *(v49 + 12) = 2080;
        v52 = *(v20 + 24);
        v53 = *(v20 + 32);

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v76);

        *(v49 + 14) = v54;
        *(v49 + 22) = 2048;
        *(v49 + 24) = REAudioFileAssetGetAudioAssetID();
        *(v49 + 32) = 2048;
        *(v49 + 34) = REAssetGetAssetId();
        _os_log_impl(&dword_1C1358000, v47, v48, "[API/RealityKit] Loading %s AudioFileResource %s with audioAssetID: %llu and REAssetID: %llu", v49, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v50, -1, -1);
        MEMORY[0x1C6902A30](v49, -1, -1);
      }

      else
      {
      }

      v55 = REAudioFileGetAVAudioFormat();
      if (v55)
      {
        v56 = v55;
        AVAudioFormat.validateAudioFormatSupportsMultiChannel()();
        if (v57)
        {
          v58 = type metadata accessor for URL();
          (*(*(v58 - 8) + 8))(v70, v58);

          return v20;
        }

        v60 = [objc_opt_self() defaultManager];
        v61 = URL.path.getter();
        v62 = MEMORY[0x1C68F3280](v61);

        v63 = [v60 isReadableFileAtPath_];

        if (v63)
        {
          v64 = type metadata accessor for URL();
          (*(*(v64 - 8) + 8))(v70, v64);

          return v20;
        }

        v65 = URL.path(percentEncoded:)(1);
        lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error();
        swift_allocError();
        *v66 = v65;
        *(v66 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        lazy protocol witness table accessor for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError();
        swift_allocError();
        *v59 = 1;
        swift_willThrow();
      }

      v67 = type metadata accessor for URL();
      (*(*(v67 - 8) + 8))(v70, v67);
      return v20;
    }

    outlined destroy of AudioFileResource.Configuration(&v79);
    v22 = REAssetCopyDescription();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    FailedMessage = REAssetHandleCopyLoadFailedMessage();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *&v76 = v23;
    *(&v76 + 1) = v25;

    MEMORY[0x1C68F3410](8250, 0xE200000000000000);

    MEMORY[0x1C68F3410](v27, v29);

    v30 = v76;
    lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
    swift_allocError();
    *v31 = v30;
    swift_willThrow();

    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 8))(a2, v32);
  }

  return v20;
}

uint64_t key path setter for AudioFileResource.loadingStrategy : AudioFileResource(_BYTE *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (*a1)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v3 = 1;
  }

  return MEMORY[0x1EEDFA838](v2, v3 & 1);
}

uint64_t AudioFileResource.loadingStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = REAudioFileAssetGetStreaming();
  *a1 = result ^ 1;
  return result;
}

uint64_t AudioFileResource.loadingStrategy.setter(_BYTE *a1)
{
  v2 = *(v1 + 16);
  if (*a1)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v3 = 1;
  }

  return MEMORY[0x1EEDFA838](v2, v3 & 1);
}

uint64_t (*AudioFileResource.loadingStrategy.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REAudioFileAssetGetStreaming() ^ 1;
  return AudioFileResource.loadingStrategy.modify;
}

uint64_t AudioFileResource.loadingStrategy.modify(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v2 = 1;
  }

  v3 = *a1;

  return MEMORY[0x1EEDFA838](v3, v2 & 1);
}

uint64_t (*AudioFileResource.shouldLoop.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = REAudioFileAssetGetLoopCount() == -1;
  return AudioFileResource.shouldLoop.modify;
}

uint64_t AudioFileResource.shouldLoop.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return REAudioFileAssetSetLoopCount();
}

uint64_t AudioFileResource.__ivar_destroyer()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 88);
}

void *AudioFileResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = v1[2];
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = v1[2];
  REAssetSetSwiftObject();
  v8 = v1[2];
  RERelease();
  v9 = v1[4];

  v10 = v1[11];

  return v1;
}

uint64_t AudioFileResource.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = v1[2];
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = v1[2];
  REAssetSetSwiftObject();
  v8 = v1[2];
  RERelease();
  v9 = v1[4];

  v10 = v1[11];

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for AudioResource.__allocating_init(fromCore:) dispatching to AudioFileResource.__allocating_init(fromCore:)(uint64_t a1)
{
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  return AudioFileResource.init(fromCore:)(a1);
}

Swift::Int AudioFileResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t AudioFileResource.duration.getter()
{
  v1 = *(v0 + 16);
  REAudioFileAssetGetLengthInSeconds();

  return static Duration.seconds(_:)();
}

uint64_t AudioFileResource.init(named:in:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v5 + 96) = a3;
  *(v5 + 104) = v4;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 120) = v8;
  v9 = *(v8 - 8);
  *(v5 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  v11 = a4[1];
  *(v5 + 16) = *a4;
  *(v5 + 32) = v11;
  *(v5 + 48) = a4[2];
  *(v5 + 61) = *(a4 + 45);
  type metadata accessor for MainActor();
  *(v5 + 152) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 160) = v13;
  *(v5 + 168) = v12;

  return MEMORY[0x1EEE6DFA0](AudioFileResource.init(named:in:configuration:), v13, v12);
}

uint64_t AudioFileResource.init(named:in:configuration:)()
{
  v51 = v0;
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v1 = 0;
  }

  *(v0 + 176) = v1;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = v1;
  static AudioFileResource.url(forAssetNamed:in:)(v8, v7, v2, v6);

  if ((*(v4 + 48))(v6, 1, v3) == 1)
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 112);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    outlined destroy of AudioFileResource.Configuration(v0 + 16);

    outlined destroy of URL?(v11);
    lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = v12;
    *(v14 + 16) = 0;
    swift_willThrow();

    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v39 = *(v0 + 112);

    v40 = *(v0 + 8);

    return v40();
  }

  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 112), *(v0 + 120));
  v17 = URL.pathExtension.getter();
  v19 = v18;
  v20 = MEMORY[0x1C68F3280](v16, v15);
  v21 = [v20 pathExtension];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v17 == v22 && v19 == v24)
  {

LABEL_10:
    v26 = *(v0 + 88);

    v27 = *(v0 + 80);
    goto LABEL_12;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_10;
  }

  v28 = *(v0 + 144);
  v29 = *(v0 + 88);
  *&v48[0] = *(v0 + 80);
  *(&v48[0] + 1) = v29;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v30 = URL.pathExtension.getter();
  v32 = v31;

  MEMORY[0x1C68F3410](v30, v32);

  v26 = *(&v48[0] + 1);
  v27 = *&v48[0];
LABEL_12:
  v33 = *(v0 + 96);
  v34 = *(v0 + 104);
  v35 = *(v0 + 32);
  v48[0] = *(v0 + 16);
  v48[1] = v35;
  v49[0] = *(v0 + 48);
  *(v49 + 13) = *(v0 + 61);
  v50[0] = 1;
  v36 = static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(v33, v27, v26, v48, v50);
  *(v0 + 184) = v36;
  v42 = *(v0 + 144);
  v43 = v36;

  v44 = URL.absoluteString.getter();
  v46 = v45;
  *(v0 + 192) = v45;
  v47 = swift_task_alloc();
  *(v0 + 200) = v47;
  *v47 = v0;
  v47[1] = AudioFileResource.init(named:in:configuration:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v43, v44, v46);
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v10 = *v1;
  *(*v1 + 208) = v0;

  v4 = v2[24];
  if (v0)
  {
    v5 = v2[11];

    outlined destroy of AudioFileResource.Configuration((v2 + 2));

    v6 = v2[20];
    v7 = v2[21];
    v8 = AudioFileResource.init(named:in:configuration:);
  }

  else
  {

    v6 = v2[20];
    v7 = v2[21];
    v8 = AudioFileResource.init(named:in:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v30 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  (*(v6 + 16))(v5, v4, v7);
  v10 = *(v0 + 32);
  v27[0] = *(v0 + 16);
  v27[1] = v10;
  v28[0] = *(v0 + 48);
  *(v28 + 13) = *(v0 + 61);
  v29[0] = 1;
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  v11 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v2, v5, v9, v8, v27, v29);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 144);
  if (v1)
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    RERelease();

    (*(v16 + 8))(v14, v15);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 112);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    RERelease();

    (*(v23 + 8))(v14, v24);

    v26 = *(v0 + 8);

    return v26(v11);
  }
}

{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = v0[16];

  RERelease();

  (*(v6 + 8))(v4, v5);
  v7 = v0[26];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t AudioFileResource.init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x1EEE6DFA0](AudioFileResource.init(named:from:in:), v8, v7);
}

uint64_t AudioFileResource.init(named:from:in:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v9 = v0[4];
  v10 = v0[5];

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](v4, v3);

  v0[11] = v10;
  static LoadableResource.getAssetRefFromRealityFileInBundle(named:in:)(v9, v10, v2);
  v6 = *(v5 + 16);
  v0[12] = v6;
  RERetain();

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = AudioFileResource.init(named:from:in:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v6, v9, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[11];
  if (v0)
  {
    v6 = v2[5];
    v7 = v2[3];

    v8 = v2[9];
    v9 = v2[10];
    v10 = AudioFileResource.init(named:from:in:);
  }

  else
  {

    v8 = v2[9];
    v9 = v2[10];
    v10 = AudioFileResource.init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

{
  v24 = v0;
  v1 = v0[8];

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.audio);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v9 = v0[4];
    v8 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315906;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v23);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2048;
    *(v12 + 14) = REAudioFileAssetGetAudioAssetID();
    *(v12 + 22) = 2048;
    *(v12 + 24) = REAssetGetAssetId();
    *(v12 + 32) = 2080;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v23);

    *(v12 + 34) = v15;
    _os_log_impl(&dword_1C1358000, v5, v6, "[API/RealityKit] Loading AudioFileResource %s with audioAssetID: %llu and REAssetID: %llu from scene: %s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {
    v16 = v0[5];
    v17 = v0[3];
  }

  v18 = v0[12];
  v19 = v0[6];
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  v20 = AudioFileResource.init(fromCore:)(v18);
  RERelease();

  v21 = v0[1];

  return v21(v20);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  RERelease();
  v3 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AudioFileResource.init(contentsOf:withName:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = a3;
  *(v4 + 80) = a1;
  v6 = type metadata accessor for URL();
  *(v4 + 104) = v6;
  v7 = *(v6 - 8);
  *(v4 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  *(v4 + 48) = a4[2];
  *(v4 + 61) = *(a4 + 45);
  type metadata accessor for MainActor();
  *(v4 + 128) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 136) = v11;
  *(v4 + 144) = v10;

  return MEMORY[0x1EEE6DFA0](AudioFileResource.init(contentsOf:withName:configuration:), v11, v10);
}

uint64_t AudioFileResource.init(contentsOf:withName:configuration:)()
{
  v16 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v4;
  *v14 = *(v0 + 48);
  *&v14[13] = *(v0 + 61);
  v15[0] = 1;
  v5 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(v3, v1, v2, v13, v15);
  *(v0 + 152) = v5;
  v6 = *(v0 + 80);
  v7 = v5;
  v8 = URL.absoluteString.getter();
  v10 = v9;
  *(v0 + 160) = v9;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = AudioFileResource.init(contentsOf:withName:configuration:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v7, v8, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 176) = v0;

  v4 = v2[20];
  if (v0)
  {
    v5 = v2[12];

    outlined destroy of AudioFileResource.Configuration((v2 + 2));

    v6 = v2[17];
    v7 = v2[18];
    v8 = AudioFileResource.init(contentsOf:withName:configuration:);
  }

  else
  {

    v6 = v2[17];
    v7 = v2[18];
    v8 = AudioFileResource.init(contentsOf:withName:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v31 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);

  (*(v4 + 16))(v2, v6, v3);
  if (v5)
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
  }

  else
  {
    v9 = *(v0 + 80);
    v7 = URL.lastPathComponent.getter();
    v8 = v10;
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 120);
  v14 = *(v0 + 32);
  v28[0] = *(v0 + 16);
  v28[1] = v14;
  *v29 = *(v0 + 48);
  *&v29[13] = *(v0 + 61);
  v30[0] = 1;
  type metadata accessor for AudioFileResource();
  swift_allocObject();
  v15 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v12, v13, v7, v8, v28, v30);
  v16 = *(v0 + 152);
  if (v11)
  {
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);
    v19 = *(v0 + 80);
    RERelease();
    (*(v18 + 8))(v19, v17);
    v20 = *(v0 + 120);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    RERelease();
    (*(v24 + 8))(v26, v25);

    v27 = *(v0 + 8);

    return v27(v15);
  }
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[10];

  RERelease();
  (*(v4 + 8))(v5, v3);
  v6 = v0[22];
  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t AudioFileResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23[-v9 - 8];
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FD0;
  *(v11 + 32) = 1701667182;
  *(v11 + 40) = 0xE400000000000000;
  v12 = *(v1 + 32);
  v13 = MEMORY[0x1E69E6158];
  *(v11 + 48) = *(v1 + 24);
  *(v11 + 56) = v12;
  *(v11 + 72) = v13;
  strcpy((v11 + 80), "configuration");
  *(v11 + 94) = -4864;
  v14 = *(v1 + 56);
  v25[0] = *(v1 + 40);
  v25[1] = v14;
  v26[0] = *(v1 + 72);
  *(v26 + 13) = *(v1 + 85);
  *(v11 + 120) = &type metadata for AudioFileResource.Configuration;
  v15 = swift_allocObject();
  *(v11 + 96) = v15;
  v16 = *(v1 + 56);
  v15[1] = *(v1 + 40);
  v15[2] = v16;
  v15[3] = *(v1 + 72);
  *(v15 + 61) = *(v1 + 85);
  *(v11 + 128) = 0x6E6F697461727564;
  *(v11 + 136) = 0xE800000000000000;
  v17 = *(v1 + 16);

  outlined init with copy of AudioFileResource.Configuration(v25, v23);
  REAudioFileAssetGetLengthInSeconds();
  v18 = static Duration.seconds(_:)();
  *(v11 + 168) = MEMORY[0x1E69E7B30];
  *(v11 + 144) = v18;
  *(v11 + 152) = v19;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for AudioFileResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t _sSlsSQ7ElementRpzrlE5split9separator9maxSplits25omittingEmptySubsequencesSay11SubSequenceQzGAB_SiSbtFSbABXEfU_SS_TG5TA_0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized static AudioFileResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  AudioFileResource.CreateOptions.init(from:)(v9);
  AudioFileResource.CreateOptions.init(from:)(v11);
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v8 = v10;
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v6 = v12;
  v3 = specialized static AudioFileResource.CreateOptions.== infix(_:_:)(v7, v5);
  outlined destroy of AudioFileResource.CreateOptions(v11);
  outlined destroy of AudioFileResource.CreateOptions(v9);
  if (v3)
  {
    return REAudioFileAssetIsEqual();
  }

  else
  {
    return 0;
  }
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AudioFileResource and conformance AudioResource()
{
  result = lazy protocol witness table cache variable for type AudioFileResource and conformance AudioResource;
  if (!lazy protocol witness table cache variable for type AudioFileResource and conformance AudioResource)
  {
    type metadata accessor for AudioFileResource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource and conformance AudioResource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError()
{
  result = lazy protocol witness table cache variable for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError;
  if (!lazy protocol witness table cache variable for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioFormat.ValidationError and conformance AVAudioFormat.ValidationError);
  }

  return result;
}

uint64_t RKChangeSceneActionBasicTechnique.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RKChangeSceneActionBasicTechnique()
{
  result = type metadata singleton initialization cache for RKChangeSceneActionBasicTechnique;
  if (!type metadata singleton initialization cache for RKChangeSceneActionBasicTechnique)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RKChangeSceneActionBasicTechnique()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int LowLevelMesh.VertexSemantic.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

_BYTE *LowLevelMesh.Attribute.init(semantic:format:layoutIndex:offset:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4;
  *(a5 + 24) = a3;
  return result;
}

RealityFoundation::LowLevelMesh::Layout __swiftcall LowLevelMesh.Layout.init(bufferIndex:bufferOffset:bufferStride:)(Swift::Int bufferIndex, Swift::Int bufferOffset, Swift::Int bufferStride)
{
  *v3 = bufferIndex;
  v3[1] = bufferOffset;
  v3[2] = bufferStride;
  result.bufferStride = bufferStride;
  result.bufferOffset = bufferOffset;
  result.bufferIndex = bufferIndex;
  return result;
}

uint64_t LowLevelMesh.Descriptor.init(vertexCapacity:vertexAttributes:vertexLayouts:indexCapacity:indexType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v9 = a2;
  v10 = a1;
  v12 = *(a3 + 16);
  if (v12)
  {
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = v36;
    v16 = (a3 + 32);
    v17 = v36[2];
    do
    {
      v19 = *v16;
      v16 += 3;
      v18 = v19;
      v37 = v15;
      v20 = v15[3];
      v21 = v17 + 1;
      if (v17 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
        v15 = v37;
      }

      v15[2] = v21;
      v15[v17++ + 4] = v18;
      --v12;
    }

    while (v12);
    v6 = a5;
    v7 = a4;
    v10 = a1;
    v9 = a2;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v21)
    {
      v22 = 0;
      goto LABEL_20;
    }
  }

  v22 = v15[4];
  v23 = v21 - 1;
  if (v21 != 1)
  {
    if (v21 >= 5)
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v25 = vdupq_n_s64(v22);
      v26 = (v15 + 7);
      v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = v25;
      do
      {
        v25 = vbslq_s8(vcgtq_s64(v25, v26[-1]), v25, v26[-1]);
        v28 = vbslq_s8(vcgtq_s64(v28, *v26), v28, *v26);
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      v29 = vbslq_s8(vcgtq_s64(v25, v28), v25, v28);
      v30 = vextq_s8(v29, v29, 8uLL).u64[0];
      v22 = vbsl_s8(vcgtd_s64(v29.i64[0], v30), *v29.i8, v30);
      if (v23 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v24 = 1;
    }

    v31 = v21 - v24;
    v32 = 8 * v24 + 32;
    do
    {
      if (v22 <= *(v15 + v32))
      {
        v22 = *(v15 + v32);
      }

      v32 += 8;
      --v31;
    }

    while (v31);
  }

LABEL_20:

  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    *a6 = v22 + 1;
    a6[1] = v10;
    a6[2] = v9;
    a6[3] = a3;
    a6[4] = v7;
    a6[5] = v6;
  }

  return result;
}

int64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t LowLevelMesh.Descriptor.vertexAttributes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void LowLevelMesh.Descriptor.vertexLayouts.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;

  LowLevelMesh.Descriptor.vertexLayouts.didset();
}

void LowLevelMesh.Descriptor.vertexLayouts.didset()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (!v3)
  {
    v15 = 0;
LABEL_18:
    *v1 = v15;
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = 0;
  v5 = v28;
  v6 = (v2 + 32);
  v7 = v28[2];
  do
  {
    v9 = *v6;
    v6 += 3;
    v8 = v9;
    v29 = v5;
    v10 = v5[3];
    if (v7 + v4 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + v4 + 1, 1);
      v5 = v29;
    }

    v11 = v4 + 1;
    v5[2] = v7 + v4 + 1;
    v5[v7 + 4 + v4] = v8;
    v4 = v11;
  }

  while (v3 != v11);
  v12 = v5[4];
  if (v7 + v11 != 1)
  {
    v13 = v3 + v7;
    if ((v3 + v7) >= 5)
    {
      v16 = v13 - 1;
      v17 = (v13 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v14 = v17 | 1;
      v18 = vdupq_n_s64(v12);
      v19 = (v5 + 7);
      v20 = v17;
      v21 = v18;
      do
      {
        v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v18, v19[-1]);
        v21 = vbslq_s8(vcgtq_s64(v21, *v19), v21, *v19);
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      v22 = vbslq_s8(vcgtq_s64(v18, v21), v18, v21);
      v23 = vextq_s8(v22, v22, 8uLL).u64[0];
      v12 = vbsl_s8(vcgtd_s64(v22.i64[0], v23), *v22.i8, v23);
      if (v16 == v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 1;
    }

    v24 = v7 - v14 + v11;
    v25 = &v5[v14 + 4];
    do
    {
      v27 = *v25++;
      v26 = v27;
      if (v12 <= v27)
      {
        v12 = v26;
      }

      --v24;
    }

    while (v24);
  }

LABEL_17:

  v15 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_18;
  }

  __break(1u);
}

void LowLevelMesh.Descriptor.vertexLayouts.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *a1;
    LowLevelMesh.Descriptor.vertexLayouts.didset();
  }
}

unint64_t LowLevelMesh.Part.init(indexOffset:indexCount:topology:materialIndex:bounds:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  a5->n128_u64[0] = result;
  a5->n128_u64[1] = a2;
  a5[1].n128_u64[0] = a3;
  a5[1].n128_u64[1] = a4;
  a5[2] = a6;
  a5[3] = a7;
  return result;
}

__n128 LowLevelMesh.Part.bounds.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  return result;
}

uint64_t LowLevelMesh.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v1 + 56);
}

void (*LowLevelMesh.parts.modify(void *a1))(id *a1)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = v2;
  return destroy for CustomMaterial.ResourceStorage;
}

id LowLevelMesh.parts.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t LowLevelMesh.__allocating_init(descriptor:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LowLevelMesh.init(descriptor:)(a1);
  return v2;
}

void LowLevelMesh.init(descriptor:)(uint64_t *a1)
{
  v2 = v1;
  v64 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = a1[3];
  v56 = *a1;
  v57 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v7 = DRMeshDescriptorCreate();
  v54 = v5;
  DRMeshDescriptorSetIndexCapacity();
  v53 = v6;
  DRMeshDescriptorSetIndexType();
  v55 = v3;
  DRMeshDescriptorSetVertexCapacity();
  v8 = v4[2];
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v2;
    v60[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v60[0];
    v11 = v4 + 4;
    v12 = *(v60[0] + 16);
    do
    {
      v14 = *v11;
      v11 += 3;
      v13 = v14;
      v60[0] = v9;
      v15 = v9[3];
      v16 = v12 + 1;
      if (v12 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v12 + 1, 1);
        v9 = v60[0];
      }

      v9[2] = v16;
      v9[v12++ + 4] = v13;
      --v8;
    }

    while (v8);
    v2 = v10;
  }

  else
  {
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
      v18 = 0;
      v17 = v57;
      goto LABEL_20;
    }
  }

  v17 = v57;
  v18 = v9[4];
  v19 = v16 - 1;
  if (v16 != 1)
  {
    if (v16 < 5)
    {
      v20 = 1;
      goto LABEL_14;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v21 = vdupq_n_s64(v18);
    v22 = (v9 + 7);
    v23 = v19 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v21;
    do
    {
      v21 = vbslq_s8(vcgtq_s64(v21, v22[-1]), v21, v22[-1]);
      v24 = vbslq_s8(vcgtq_s64(v24, *v22), v24, *v22);
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    v25 = vbslq_s8(vcgtq_s64(v21, v24), v21, v24);
    v26 = vextq_s8(v25, v25, 8uLL).u64[0];
    v18 = vbsl_s8(vcgtd_s64(v25.i64[0], v26), *v25.i8, v26);
    if (v19 != (v19 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v27 = v16 - v20;
      v28 = 8 * v20 + 32;
      do
      {
        if (v18 <= *(v9 + v28))
        {
          v18 = *(v9 + v28);
        }

        v28 += 8;
        --v27;
      }

      while (v27);
    }
  }

LABEL_20:

  if (__OFADD__(v18, 1))
  {
    goto LABEL_41;
  }

  DRMeshDescriptorSetVertexBufferCount();
  v29 = *(v17 + 16);
  DRMeshDescriptorSetVertexAttributeCount();
  v30 = v4[2];
  DRMeshDescriptorSetVertexLayoutCount();
  v31 = *(v17 + 16);
  if (!v31)
  {
    goto LABEL_26;
  }

  v32 = 0;
  v33 = (v17 + 56);
  do
  {
    if (((*v33 | *(v33 - 1)) & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v34 = v33 + 4;
    v35 = dword_1C18C0F6C[*(v33 - 24)];
    v36 = v32 + 1;
    v37 = *(v33 - 2);
    DRMeshDescriptorSetVertexAttributeFormat();
    v33 = v34;
    v32 = v36;
  }

  while (v31 != v36);

LABEL_26:
  v38 = v4[2];
  if (v38)
  {

    v39 = 0;
    v40 = v4 + 6;
    do
    {
      if (((*(v40 - 1) | *(v40 - 2) | *v40) & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      v40 += 3;
      v41 = v39 + 1;
      DRMeshDescriptorSetVertexLayout();
      v39 = v41;
    }

    while (v38 != v41);
  }

  v63 = 0;
  v42 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v43 = MEMORY[0x1C68FE220](*(v42 + 16));
  if (v43)
  {
    v44 = v43;
    Mesh = DRContextCreateMesh();

    goto LABEL_36;
  }

  v48 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __RenderService?(v48 + 40, &v58);
  if (!v59)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  outlined init with take of ForceEffectBase(&v58, v60);
  v49 = v61;
  v50 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(v50 + 24))(v49, v50);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v51 = RERenderManagerGetRenderDevice();
  Mesh = DRMeshCreateUnmanaged();
  swift_unknownObjectRelease();
  v17 = v57;
  if (v63)
  {
    v46 = v63;

    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    swift_allocError();
    *v47 = v46;
    swift_willThrow();

    type metadata accessor for LowLevelMesh();
    swift_deallocPartialClassInstance();
    goto LABEL_38;
  }

LABEL_36:
  v2[3] = v56;
  v2[4] = v55;
  v2[5] = v17;
  v2[6] = v4;
  v2[7] = v54;
  v2[8] = v53;
  if (!Mesh)
  {
    goto LABEL_43;
  }

  v2[2] = Mesh;
LABEL_38:
  v52 = *MEMORY[0x1E69E9840];
}

void *LowLevelMesh.init(from:)(void *a1)
{
  v2 = v1;
  v1[2] = a1;
  v3 = a1;
  v4 = DRMeshCopyDescriptor();
  VertexBufferCount = DRMeshDescriptorGetVertexBufferCount();
  VertexCapacity = DRMeshDescriptorGetVertexCapacity();
  v7 = DRMeshDescriptor_t.vertexAttributes.getter();
  v8 = DRMeshDescriptor_t.vertexLayouts.getter();
  IndexCapacity = DRMeshDescriptorGetIndexCapacity();
  IndexType = DRMeshDescriptorGetIndexType();

  v2[3] = VertexBufferCount;
  v2[4] = VertexCapacity;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = IndexCapacity;
  v2[8] = IndexType;
  return v2;
}

id LowLevelMesh.read(bufferIndex:using:)()
{
  v1 = *(v0 + 16);
  VerticesUsing = DRMeshReadVerticesUsing();

  return VerticesUsing;
}

id LowLevelMesh.replace(bufferIndex:using:)()
{
  v1 = *(v0 + 16);
  v2 = DRMeshReplaceVerticesUsing();

  return v2;
}

id LowLevelMesh.readIndices(using:)()
{
  v1 = *(v0 + 16);
  IndicesUsing = DRMeshReadIndicesUsing();

  return IndicesUsing;
}

id LowLevelMesh.replaceIndices(using:)()
{
  v1 = *(v0 + 16);
  v2 = DRMeshReplaceIndicesUsing();

  return v2;
}

uint64_t LowLevelMesh.withUnsafeBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in LowLevelMesh.withUnsafeBytes(bufferIndex:_:);
  *(v8 + 24) = v7;
  v13[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  v13[3] = &block_descriptor_33;
  v9 = _Block_copy(v13);
  v10 = v6;

  DRMeshReadVertices();

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:);
  *(v8 + 24) = v7;
  v13[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v13[3] = &block_descriptor_18_2;
  v9 = _Block_copy(v13);
  v10 = v6;

  DRMeshUpdateVertices();

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:);
  *(v8 + 24) = v7;
  v13[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v13[3] = &block_descriptor_28_1;
  v9 = _Block_copy(v13);
  v10 = v6;

  DRMeshReplaceVertices();

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.withUnsafeIndices(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelMesh.withUnsafeIndices(_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ();
  v11[3] = &block_descriptor_38;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRMeshReadIndices();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.withUnsafeMutableIndices(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v11[3] = &block_descriptor_48;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRMeshUpdateIndices();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.replaceUnsafeMutableIndices(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelMesh.replaceUnsafeMutableBytes(bufferIndex:_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ();
  v11[3] = &block_descriptor_58_0;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRMeshReplaceIndices();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelMesh.deinit()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  return v0;
}

uint64_t LowLevelMesh.__deallocating_deinit()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

Swift::Int __swiftcall LowLevelMesh.PartsCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

__n128 LowLevelMesh.PartsCollection.subscript.getter@<Q0>(_OWORD *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  DRMeshGetPartAt();
  result = xmmword_1C189A7F0;
  *a1 = 0uLL;
  a1[1] = xmmword_1C18AB200;
  a1[2] = xmmword_1C189A7F0;
  a1[3] = xmmword_1C189A800;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 key path getter for LowLevelMesh.PartsCollection.subscript(_:) : LowLevelMesh.PartsCollection@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v10 = v4;
  LowLevelMesh.PartsCollection.subscript.getter(v9);
  result = v9[2];
  v7 = v9[3];
  v8 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v8;
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  return result;
}

uint64_t key path setter for LowLevelMesh.PartsCollection.subscript(_:) : LowLevelMesh.PartsCollection(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (((*(result + 8) | *result | *(result + 24)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *a2;
    v4 = *(result + 32);
    v5 = *(result + 48);
    v6 = *(result + 16);
    v7 = *a3;
    return DRMeshSetPartAt();
  }

  return result;
}

uint64_t LowLevelMesh.PartsCollection.subscript.setter(uint64_t result)
{
  if (((*(result + 8) | *result | *(result + 24)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    v3 = *(result + 32);
    v4 = *(result + 48);
    v5 = *(result + 16);
    return DRMeshSetPartAt();
  }

  return result;
}

void (*LowLevelMesh.PartsCollection.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x90uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 128) = a2;
  v7 = *v2;
  *(v6 + 72) = 0;
  *(v6 + 64) = 0;
  *(v6 + 80) = xmmword_1C18AB200;
  *(v6 + 96) = xmmword_1C189A7F0;
  *(v6 + 136) = v7;
  *(v6 + 112) = xmmword_1C189A800;
  DRMeshGetPartAt();
  v8 = *(v6 + 96);
  v9 = *(v6 + 112);
  v10 = *(v6 + 80);
  *v6 = *(v6 + 64);
  *(v6 + 16) = v10;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  v11 = *MEMORY[0x1E69E9840];
  return LowLevelMesh.PartsCollection.subscript.modify;
}

void LowLevelMesh.PartsCollection.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8) | **a1 | *(*a1 + 24);
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v3 < 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v5 = *(v2 + 128);
  v4 = *(v2 + 136);
  v6 = *(v2 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 16);
  DRMeshSetPartAt();

  free(v2);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance LowLevelMesh.PartsCollection(uint64_t result, uint64_t *a2)
{
  if (((*(result + 8) | *result | *(result + 24)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v2;
    v4 = *a2;
    v5 = *(result + 32);
    v6 = *(result + 48);
    v7 = *(result + 16);
    return DRMeshSetPartAt();
  }

  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance LowLevelMesh.PartsCollection(uint64_t **a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = LowLevelMesh.PartsCollection.subscript.modify(v4, *a2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void protocol witness for MutableCollection.subscript.setter in conformance LowLevelMesh.PartsCollection(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[2];
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, a1[1]);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance LowLevelMesh.PartsCollection(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DRMeshGetPartCount();
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = DRMeshGetPartCount();
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v7 = a3 - a1;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_12:
  v9 = __OFADD__(a1, a2);
  v8 = a1 + a2;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = DRMeshGetPartCount();
  if ((v8 & 0x8000000000000000) == 0 && result >= v8)
  {
    return v8;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = DRMeshGetPartCount();
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance LowLevelMesh.PartsCollection(uint64_t *a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *a2;
  LowLevelMesh.PartsCollection.subscript.getter(v5);
  return protocol witness for Collection.subscript.read in conformance LowLevelMesh.PartsCollection;
}

uint64_t protocol witness for Collection.subscript.getter in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = DRMeshGetPartCount();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a2[1] = v4;
  a2[2] = v7;
  *a2 = v5;

  return v7;
}

uint64_t protocol witness for Collection.indices.getter in conformance LowLevelMesh.PartsCollection@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = DRMeshGetPartCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance LowLevelMesh.PartsCollection@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v2;
    result = DRMeshGetPartCount();
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance LowLevelMesh.PartsCollection(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v1;
    result = DRMeshGetPartCount();
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance LowLevelMesh.PartsCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = DRMeshGetPartCount();
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance LowLevelMesh.PartsCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.distance(from:to:) in conformance LowLevelMesh.PartsCollection(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = DRMeshGetPartCount();
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = DRMeshGetPartCount();
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Sequence._copyToContiguousArray() in conformance LowLevelMesh.PartsCollection()
{
  v1 = *v0;
  PartCount = DRMeshGetPartCount();
  if (PartCount)
  {
    v3 = PartCount;
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12LowLevelMeshC4PartV_Tt1g5(PartCount, 0);
    v5 = v1;
    v6 = specialized Sequence._copySequenceContents(initializing:)(v7, v4 + 2, v3, v5);

    if (v6 == v3)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t LowLevelMesh.PartsCollection.append(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v8 = *(a1 + 3);
  v9 = *(a1 + 2);
  v6 = *v1;
  result = DRMeshGetPartCount();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  DRMeshSetPartCount();
  result = DRMeshGetPartCount();
  if (__OFSUB__(result, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v3 | v2 | v5) < 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return DRMeshSetPartAt();
}

uint64_t LowLevelMesh.PartsCollection.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnumeratedSequence();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for EnumeratedSequence.Iterator();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *v3;
  PartCount = DRMeshGetPartCount();
  v14 = dispatch thunk of Sequence.underestimatedCount.getter();
  result = DRMeshGetPartCount();
  if (!__OFADD__(result, v14))
  {
    DRMeshSetPartCount();
    MEMORY[0x1C68F3540](a2, a3);
    EnumeratedSequence.makeIterator()();
    result = EnumeratedSequence.Iterator.next()();
    if (v33)
    {
      return (*(v24 + 8))(v11, v8);
    }

    v16 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v21 = v32;
    while (1)
    {
      v22 = PartCount + v16;
      if (__OFADD__(PartCount, v16))
      {
        break;
      }

      v25 = v21;
      v26 = v20;
      result = DRMeshGetPartCount();
      if (v22 < result)
      {
        if ((v18 | v17 | v19) < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = DRMeshGetPartCount();
        if (__OFADD__(result, 1))
        {
          goto LABEL_15;
        }

        DRMeshSetPartCount();
        result = DRMeshGetPartCount();
        if (__OFSUB__(result, 1))
        {
          goto LABEL_16;
        }

        if ((v18 | v17 | v19) < 0)
        {
          __break(1u);
          break;
        }
      }

      DRMeshSetPartAt();
      result = EnumeratedSequence.Iterator.next()();
      v16 = v27;
      v17 = v28;
      v18 = v29;
      v19 = v30;
      v20 = v31;
      v21 = v32;
      if (v33)
      {
        return (*(v24 + 8))(v11, v8);
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LowLevelMesh.PartsCollection.replaceAll<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  DRMeshSetPartCount();

  return LowLevelMesh.PartsCollection.append<A>(contentsOf:)(a1, a2, a3);
}

uint64_t MeshResource.replace(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v4 + 120, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v6 + 32))(v5, v6);
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (*(v2 + 16))
  {
    v8 = *(a1 + 16);
    return REMeshAssetReplaceAllWithDirectMesh();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MeshResource.lowLevelMesh.getter()
{
  result = *(v0 + 16);
  if (result)
  {
    v2 = REMeshAssetGetDirectMesh();
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    type metadata accessor for LowLevelMesh();
    v4 = swift_allocObject();
    LowLevelMesh.init(from:)(v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DRMeshDescriptor_t.vertexAttributes.getter()
{
  v10 = *MEMORY[0x1E69E9840];
  VertexAttributeCount = DRMeshDescriptorGetVertexAttributeCount();
  if (VertexAttributeCount < 0)
  {
    __break(1u);
  }

  v1 = VertexAttributeCount;
  v2 = MEMORY[0x1E69E7CC0];
  if (VertexAttributeCount)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, VertexAttributeCount, 0);
    v3 = 0;
    v2 = v9;
    do
    {
      DRMeshDescriptorGetVertexAttributeFormat();
      v5 = *(v9 + 16);
      v4 = *(v9 + 24);
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      *(v9 + 16) = v5 + 1;
      v6 = v9 + 32 * v5;
      *(v6 + 32) = unk_1C18C0FA4;
      ++v3;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
    }

    while (v1 != v3);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t DRMeshDescriptor_t.vertexLayouts.getter()
{
  v10 = *MEMORY[0x1E69E9840];
  VertexLayoutCount = DRMeshDescriptorGetVertexLayoutCount();
  if (VertexLayoutCount < 0)
  {
    __break(1u);
  }

  v1 = VertexLayoutCount;
  v2 = MEMORY[0x1E69E7CC0];
  if (VertexLayoutCount)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, VertexLayoutCount, 0);
    v3 = 0;
    v2 = v9;
    do
    {
      DRMeshDescriptorGetVertexLayout();
      v5 = *(v9 + 16);
      v4 = *(v9 + 24);
      if (v5 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
      }

      ++v3;
      *(v9 + 16) = v5 + 1;
      v6 = (v9 + 24 * v5);
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
    }

    while (v1 != v3);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t partial apply for closure #1 in LowLevelMesh.withUnsafeBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a1 + a2);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned Int) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in LowLevelMesh.withUnsafeMutableBytes(bufferIndex:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a1 + a2);
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned Int) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t lazy protocol witness table accessor for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic()
{
  result = lazy protocol witness table cache variable for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.VertexSemantic and conformance LowLevelMesh.VertexSemantic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection()
{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection;
  if (!lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelMesh.PartsCollection and conformance LowLevelMesh.PartsCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<LowLevelMesh.PartsCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation12LowLevelMeshC15PartsCollectionVGMd, &_ss5SliceVy17RealityFoundation12LowLevelMeshC15PartsCollectionVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LowLevelMesh.Attribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[32])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  v4 = v3 >= 0xE;
  v5 = v3 - 14;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LowLevelMesh.Attribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizeBlinkAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 168, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulBlinkAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 226, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildBlinkAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 133, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicBlinkAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

uint64_t VirtualEnvironmentProbeComponent.Probe.environment.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VirtualEnvironmentProbeComponent.Probe.init(environment:intensityExponent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t VirtualEnvironmentProbeComponent.source.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of VirtualEnvironmentProbeComponent.Source(v2, v3, v4);
}

__n128 VirtualEnvironmentProbeComponent.source.setter(uint64_t a1)
{
  v3 = v1[3];
  outlined consume of VirtualEnvironmentProbeComponent.Source(*v1, v1[1], v1[2]);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v5;
  return result;
}

__n128 VirtualEnvironmentProbeComponent.init(source:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t static VirtualEnvironmentProbeComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = REVirtualEnvironmentProbeComponentGetResourceCount();
  if (result != 1)
  {
    v5 = result;
    if (!result)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = xmmword_1C18C0FC0;
      return result;
    }

    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        Resource = REVirtualEnvironmentProbeComponentGetResource();
        SkyboxTexture = REIBLAssetGetSkyboxTexture();
        type metadata accessor for EnvironmentResource();
        v15 = swift_allocObject();
        *(v15 + 24) = 0;
        *(v15 + 16) = Resource;
        swift_beginAccess();
        *(v15 + 24) = SkyboxTexture;
        RERetain();
        REAssetSetSwiftObject();
        if (SkyboxTexture)
        {
          RERetain();
          REAssetSetSwiftObject();
        }

        REVirtualEnvironmentProbeComponentGetIntensityExponent();
        v17 = v16;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v19 = *(v11 + 2);
        v18 = *(v11 + 3);
        if (v19 >= v18 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v11);
        }

        *(v11 + 2) = v19 + 1;
        v20 = &v11[16 * v19];
        *(v20 + 4) = v15;
        *(v20 + 10) = v17;
        REVirtualEnvironmentProbeComponentGetRelativeWeight();
        v22 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
        }

        ++v10;

        *(v12 + 2) = v24 + 1;
        *&v12[4 * v24 + 32] = v22;
      }

      while (v5 != v10);
      if (v24)
      {
        v25 = *(v12 + 9);
        v26 = *(v12 + 8) + v25;
        v27 = *(v11 + 2);
        if (v26 <= 0.0)
        {
          if (v27)
          {
            if (v27 != 1)
            {
              v33 = *(v11 + 10);
              v34 = *(v11 + 4);
              v35 = *(v11 + 6);
              v36 = *(v11 + 14);

              *a2 = v34;
              *(a2 + 8) = v33;
              *(a2 + 16) = v35 | 0x4000000000000000;
              *(a2 + 24) = v36;
              return result;
            }

            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (v27)
        {
          if (v27 != 1)
          {
            v28 = *(v11 + 10);
            v29 = *(v11 + 4);
            v30 = *(v11 + 6);
            v31 = *(v11 + 14);
            *&v32 = v25 / v26;

            *a2 = v29;
            *(a2 + 8) = v28;
            *(a2 + 16) = v30 | 0x4000000000000000;
            *(a2 + 24) = v31 | (v32 << 32);
            return result;
          }

          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v6 = REVirtualEnvironmentProbeComponentGetResource();
  v7 = REIBLAssetGetSkyboxTexture();
  type metadata accessor for EnvironmentResource();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v6;
  swift_beginAccess();
  *(v8 + 24) = v7;
  RERetain();
  REAssetSetSwiftObject();
  if (v7)
  {
    RERetain();
    REAssetSetSwiftObject();
  }

  result = REVirtualEnvironmentProbeComponentGetIntensityExponent();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t VirtualEnvironmentProbeComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  outlined copy of VirtualEnvironmentProbeComponent.Source(*v1, v3, v5);
  REVirtualEnvironmentProbeComponentClearResources();
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      v6 = *(v4 + 16);
      REVirtualEnvironmentProbeComponentAddResource();
      REVirtualEnvironmentProbeComponentSetIntensityExponent();
      REVirtualEnvironmentProbeComponentSetRelativeWeight();
      v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      REVirtualEnvironmentProbeComponentAddResource();
      REVirtualEnvironmentProbeComponentSetIntensityExponent();
      REVirtualEnvironmentProbeComponentSetRelativeWeight();
    }
  }

  else
  {
    v8 = *(v4 + 16);
    REVirtualEnvironmentProbeComponentAddResource();
    REVirtualEnvironmentProbeComponentSetIntensityExponent();
    REVirtualEnvironmentProbeComponentSetRelativeWeight();
    outlined consume of VirtualEnvironmentProbeComponent.Source(v4, v3, v5);
  }

  return RENetworkMarkComponentDirty();
}

unint64_t get_enum_tag_for_layout_string_17RealityFoundation32VirtualEnvironmentProbeComponentV6SourceO(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for VirtualEnvironmentProbeComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 25) & 0xFFFFFF80;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for VirtualEnvironmentProbeComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (-a2 | (-a2 << 57)) & 0xF000000000000007;
      *(result + 8) = (-a2 << 25) & 0x1FFFFFF00000000;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t destructiveInjectEnumTag for VirtualEnvironmentProbeComponent.Source(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result = vandq_s8(*a1, xmmword_1C18C0FD0);
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_1C18C0FE0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t __RKEntityFadeAction.__allocating_init(targetEntity:targetOpacity:duration:)(uint64_t a1, float a2, float a3)
{
  v6 = swift_allocObject();
  *(v6 + 108) = a2;
  *(v6 + 112) = a3;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityFadeAction.init(targetEntity:targetOpacity:duration:)(uint64_t a1, float a2, float a3)
{
  *(v3 + 108) = a2;
  *(v3 + 112) = a3;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityFadeAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = type metadata accessor for __RKEntityFadeAction();
  *(swift_allocObject() + 108) = *(v1 + 108);

  result = __RKEntityAction.init(targetEntity:)(v5);
  a1[3] = v4;
  *a1 = result;
  return result;
}

uint64_t __RKEntityFadeAction.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    if (*(a1 + 16) == *(v5 + 16))
    {
      v5 = a2;
    }

    else
    {
      v6 = *(v2 + 16);
    }
  }

  type metadata accessor for __RKEntityFadeAction();
  *(swift_allocObject() + 108) = *(v2 + 108);

  return __RKEntityAction.init(targetEntity:)(v5);
}

uint64_t __RKFadeSceneAction.__allocating_init(targetOpacity:duration:)(float a1, float a2)
{
  v4 = swift_allocObject();
  *(v4 + 108) = a1;
  *(v4 + 112) = a2;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKFadeSceneAction.init(targetOpacity:duration:)(float a1, float a2)
{
  *(v2 + 108) = a1;
  *(v2 + 112) = a2;
  return __RKEntityAction.init(targetEntity:)(0);
}

uint64_t __RKEntityFadeAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *))
{
  v6 = *(a1 + 8);
  v18 = StaticString.description.getter();
  v19 = v7;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v9 = v18;
  v8 = v19;
  swift_beginAccess();
  if (*(v4 + 104) == 1 && *(v4 + 96) == 1 && (swift_beginAccess(), *(v4 + 105) == 1) || (v10 = *(v6 + 16), !RESceneGetECSManagerNullable()))
  {

    return 0;
  }

  else
  {
    v11 = *(v4 + 96);
    v12 = *(v4 + 104);
    v13 = 1;
    *(v4 + 96) = 1;
    *(v4 + 104) = 1;
    v16 = v11;
    LOBYTE(v17) = v12;
    __RKEntityAction.state.didset(&v16);
    v16 = v9;
    v17 = v8;
    v14 = static os_log_type_t.info.getter();
    a4(v14, &v16);
  }

  return v13;
}

uint64_t __RKFadeSceneAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for __RKFadeSceneAction();
  *(swift_allocObject() + 108) = *(v1 + 108);
  result = __RKEntityAction.init(targetEntity:)(0);
  a1[3] = v3;
  *a1 = result;
  return result;
}

uint64_t __RKEntityFadeAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  return v0;
}

uint64_t __RKEntityFadeAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  return swift_deallocClassInstance();
}

BOOL Entity.ComponentSet.hasMesh()(void (*a1)(void))
{
  v2 = *(*v1 + 16);
  a1();
  return REEntityGetComponentByClass() != 0;
}

uint64_t Entity.MetricUtilitiesBase.meshAsset.getter()
{
  v1 = *(*v0 + 16);
  REMeshComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    return REMeshComponentGetMesh();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.animationJointCounts.getter(uint64_t a1)
{
  v29 = a1;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v26 - v5;
  v32 = *v1;
  v6 = Entity.MetricUtilitiesBase.skeletalAnimationNames.getter();
  v7 = MEMORY[0x1E69E6B70];
  swift_getTupleTypeMetadata2();
  v8 = static Array._allocateUninitialized(_:)();
  v9 = specialized Dictionary.init(dictionaryLiteral:)(v8, v7, v2, MEMORY[0x1E69E6B78]);

  v11 = 0;
  v32 = v9;
  v13 = v6 + 64;
  v12 = *(v6 + 64);
  v30 = v6;
  v14 = 1 << *(v6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v26[1] = v2 - 8;
  v27 = v2;
  if ((v15 & v12) != 0)
  {
    do
    {
      v18 = v11;
LABEL_9:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v19 | (v18 << 6);
      v21 = *(*(v30 + 48) + 8 * v20);
      v22 = *(*(v30 + 56) + 16 * v20 + 8);

      RETimelineDefinitionCreateFromTimeline();
      SkeletalJointCount = RETimelineDefinitionGetSkeletalJointCount();
      v23 = *(v29 + 24);
      lazy protocol witness table accessor for type Int and conformance Int();
      v24 = v27;
      v25 = v28;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      (*(*(v24 - 8) + 56))(v25, 0, 1, v24);
      SkeletalJointCount = v21;
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();

      result = RERelease();
    }

    while (v16);
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return v32;
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.skeletalAnimationNames.getter()
{
  v1 = *(*v0 + 16);
  REAnimationLibraryComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!ComponentByClass)
  {
    return v3;
  }

  if (!REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    return v3;
  }

  REAssetGetAssetManager();
  if (!REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset())
  {
    return v3;
  }

  EntryCount = REAnimationLibraryDefinitionGetEntryCount();
  if (EntryCount < 0)
  {
    goto LABEL_35;
  }

  v5 = EntryCount;
  if (!EntryCount)
  {
LABEL_31:
    RERelease();
    return v3;
  }

  v6 = 0;
  while (1)
  {
    EntryAsset = REAnimationLibraryDefinitionGetEntryAsset();
    if (!EntryAsset)
    {
      goto LABEL_10;
    }

    v10 = EntryAsset;
    v11 = REAssetGetType();
    v12 = String.init(_:)(v11);
    if (v12._countAndFlagsBits == 0x656E696C656D6954 && v12._object == 0xE800000000000000)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    RETimelineDefinitionCreateFromTimeline();
    if (RETimelineDefinitionGetTimelineType() == 19)
    {
      break;
    }

LABEL_9:
    RERelease();
LABEL_10:
    if (v5 == ++v6)
    {
      goto LABEL_31;
    }
  }

  v15 = v5;
  RETimelineDefinitionGetName();
  v16 = String.init(cString:)();
  v18 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v22 = v3[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (!__OFADD__(v22, v23))
  {
    v25 = v20;
    if (v3[3] < v24)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_36;
      }

      v21 = v26;
      if ((v25 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_7:
      v7 = (v3[7] + 16 * v21);
      v8 = v7[1];
      *v7 = v16;
      v7[1] = v18;

LABEL_8:
      v5 = v15;
      goto LABEL_9;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v20)
      {
        goto LABEL_7;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v25)
      {
        goto LABEL_7;
      }
    }

LABEL_27:
    v3[(v21 >> 6) + 8] |= 1 << v21;
    *(v3[6] + 8 * v21) = v10;
    v28 = (v3[7] + 16 * v21);
    *v28 = v16;
    v28[1] = v18;
    v29 = v3[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_34;
    }

    v3[2] = v31;
    goto LABEL_8;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.averageSkinInfluenceCount.getter()
{
  v7 = *v0;
  result = Entity.MetricUtilitiesBase.meshAsset.getter();
  if (result)
  {
    result = REMeshAssetGetModelCount();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = result;
      if (result)
      {
        v3 = 0;
        v4 = 0.0;
        do
        {
          v5 = v3 + 1;
          result = REMeshAssetGetAverageInfluenceCount();
          v4 = v4 + v6;
          v3 = v5;
        }

        while (v2 != v5);
      }
    }
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.influenceCount.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v8 = v18;
  Entity.MetricUtilitiesBase.averageSkinInfluenceCount.getter();
  v10 = v9;
  v17 = v8;
  Entity.MetricUtilitiesBase.meshVertexCount.getter(a1);
  v11 = *(a1 + 24);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v14 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v4 + 8))(v7, v3);
    if (v13)
    {
      v12 = v14;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    (*(v4 + 8))(v7, v3);
    v12 = *&v16[3];
  }

  *&v18 = v10 * v12;
  lazy protocol witness table accessor for type Float and conformance Float();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.meshVertexCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *v1;
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    result = REMeshAssetGetModelCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v8 = result;
      if (!result)
      {
LABEL_7:
        lazy protocol witness table accessor for type UInt32 and conformance UInt32();
        return dispatch thunk of BinaryInteger.init<A>(_:)();
      }

      v9 = 0;
      while (1)
      {
        result = REMeshAssetGetModelVertexCount();
        v10 = __CFADD__(v7, result);
        v7 += result;
        if (v10)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.shapeTargetCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = *v1;
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    result = REMeshAssetGetModelCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = result;
      if (!result)
      {
LABEL_12:
        lazy protocol witness table accessor for type Int and conformance Int();
        return dispatch thunk of BinaryInteger.init<A>(_:)();
      }

      v8 = 0;
      v9 = 0;
      while (1)
      {
        result = REMeshAssetGetBlendShapeGroupCount();
        if (result < 0)
        {
          break;
        }

        v10 = result;
        if (result)
        {
          v11 = 0;
          v12 = v8;
          while (1)
          {
            result = REMeshAssetGetBlendShapeGroupDefinitionCount();
            v13 = __OFADD__(v12, result);
            v12 += result;
            if (v13)
            {
              break;
            }

            ++v11;
            v8 = v12;
            if (v10 == v11)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:
        if (++v9 == v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.skeletalAnimationCount.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v6 = *v1;
  Entity.MetricUtilitiesBase.animationJointCounts.getter(a1);
  MEMORY[0x1C68F3170]();

  v4 = *(a1 + 24);
  lazy protocol witness table accessor for type Int and conformance Int();
  return dispatch thunk of BinaryInteger.init<A>(_:)();
}

uint64_t Entity.MetricUtilitiesBase.skeletonJointCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *v1;
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    result = REMeshAssetGetTotalSkeletonCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v8 = result;
      if (!result)
      {
LABEL_7:
        lazy protocol witness table accessor for type Int and conformance Int();
        return dispatch thunk of BinaryInteger.init<A>(_:)();
      }

      v9 = 0;
      while (1)
      {
        result = REMeshAssetGetSkeletonJointCount();
        v10 = __OFADD__(v7, result);
        v7 += result;
        if (v10)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.transformAnimationCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(*v1 + 16);
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    v7 = MEMORY[0x1E69E7CD0];
    v15 = MEMORY[0x1E69E7CD0];
    if (!REAnimationLibraryComponentCreateQueryAllTransformAnimations())
    {
LABEL_9:
      v13 = *(v7 + 16);

      v14 = v13;
      lazy protocol witness table accessor for type Int and conformance Int();
      return dispatch thunk of BinaryInteger.init<A>(_:)();
    }

    result = REAnimationLibraryComponentGetTransformQueryResultCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v9 = result;
      if (result)
      {
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          TransformQueryResultAnimationAsset = REAnimationLibraryComponentGetTransformQueryResultAnimationAsset();
          specialized Set._Variant.insert(_:)(&v14, TransformQueryResultAnimationAsset);
          v10 = v11;
        }

        while (v9 != v11);
        v7 = v15;
      }

      RERelease();
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  return result;
}

uint64_t Entity.MetricUtilitiesBase.audioAssets.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v49 - v6;
  v68 = *(v3 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(*(*(a1 + 24) + 24) + 16);
  v67 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = type metadata accessor for Optional();
  v57 = *(v62 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v13 = &v49 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v49 - v19;
  v20 = *(*v1 + 16);
  v21 = swift_slowAlloc();
  *v21 = 0;
  v50 = v21;
  v22 = REAudioPlayerComponentCopySizeOfAudioPlayerComponentFromEntity();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v78 = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    v23 = v78;
    if (v78)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_6:
  v24 = MEMORY[0x1E69E6158];
  v25 = v67;
  swift_getTupleTypeMetadata2();
  v26 = static Array._allocateUninitialized(_:)();
  v27 = specialized Dictionary.init(dictionaryLiteral:)(v26, v24, v25, MEMORY[0x1E69E6168]);

  v29 = 0;
  v82 = v27;
  v30 = v23 + 64;
  v31 = 1 << *(v23 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v23 + 64);
  v34 = (v31 + 63) >> 6;
  v69 = (v14 + 56);
  v57 += 8;
  v56 = (v14 + 32);
  v55 = (v14 + 16);
  v54 = (v68 + 16);
  v53 = (v68 + 56);
  v52 = (v68 + 8);
  v51 = (v14 + 8);
  v63 = AssociatedTypeWitness;
  v61 = v13;
  v58 = v23;
  if (!v33)
  {
    goto LABEL_13;
  }

  do
  {
    while (1)
    {
      v42 = v29;
LABEL_20:
      v45 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v46 = v45 | (v42 << 6);
      outlined init with copy of AnyHashable(*(v23 + 48) + 40 * v46, v71);
      outlined init with copy of Any(*(v23 + 56) + 32 * v46, v70);
      v73 = v71[0];
      v74 = v71[1];
      *&v75 = v72;
      outlined init with take of Any(v70, (&v75 + 8));
      v44 = v42;
LABEL_21:
      v80[0] = v75;
      v80[1] = v76;
      v81 = v77;
      v78 = v73;
      v79 = v74;
      if (!*(&v74 + 1))
      {

        v48 = v82;
        MEMORY[0x1C6902A30](v50, -1, -1);
        return v48;
      }

      outlined init with take of Any((v80 + 8), v71);
      v73 = v78;
      v74 = v79;
      *&v75 = *&v80[0];
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      v47 = v70[0];
      outlined init with copy of Any(v71, &v73);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v69)(v13, 0, 1, AssociatedTypeWitness);
      v35 = v59;
      (*v56)(v59, v13, AssociatedTypeWitness);
      v36 = *v55;
      v68 = v47;
      v36(v60, v35, AssociatedTypeWitness);
      v37 = v65;
      v38 = v67;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v39 = v66;
      (*v54)(v66, v37, v38);
      (*v53)(v39, 0, 1, v38);
      *&v73 = v68;
      *(&v73 + 1) = *(&v47 + 1);
      type metadata accessor for Dictionary();
      v23 = v58;
      Dictionary.subscript.setter();
      v40 = v37;
      AssociatedTypeWitness = v63;
      v41 = v38;
      v13 = v61;
      (*v52)(v40, v41);
      (*v51)(v35, AssociatedTypeWitness);
LABEL_11:
      result = __swift_destroy_boxed_opaque_existential_1(v71);
      v29 = v44;
      if (!v33)
      {
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v71);

    (*v69)(v13, 1, 1, AssociatedTypeWitness);
    result = (*v57)(v13, v62);
    v29 = v44;
  }

  while (v33);
LABEL_13:
  if (v34 <= v29 + 1)
  {
    v43 = v29 + 1;
  }

  else
  {
    v43 = v34;
  }

  v44 = v43 - 1;
  while (1)
  {
    v42 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v42 >= v34)
    {
      v33 = 0;
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      goto LABEL_21;
    }

    v33 = *(v30 + 8 * v42);
    ++v29;
    if (v33)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.audioFileCount.getter(uint64_t a1, void (*a2)(void))
{
  v4 = *(a1 + 16);
  v5 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = *(*v2 + 16);
  REAudioPlayerComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    a2();
    lazy protocol witness table accessor for type Int and conformance Int();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }
}

uint64_t Entity.MetricUtilitiesBase.meshMemory.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *v1;
  if (Entity.MetricUtilitiesBase.meshAsset.getter())
  {
    v7 = *(v6 + 16);
    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v9 = SceneNullable;
      v10 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v10)
      {
        v11 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v11 = Scene.init(coreScene:)(v9);
      }

      v12 = *(v11 + 16);
      if (RESceneGetECSManagerNullable())
      {
        REECSManagerGetServiceLocator();
        REAssetComputeEstimatedMemorySize();
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(_:)();
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

uint64_t Entity.MetricUtilitiesBase.meshTriangleCount.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(*v1 + 16);
  REMeshComponentGetComponentType();
  if (!REEntityGetComponentByClass() || (MEMORY[0x1C68FBF60]() & 0x80000000) != 0)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  }

  else
  {
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    return dispatch thunk of BinaryInteger.init<A>(_:)();
  }
}

uint64_t specialized Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v3);

  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v19 = v4;
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) == 0)
  {
    while (1)
    {
LABEL_6:
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v13);
      ++v6;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    ComponentByClass = 0;
LABEL_21:

    return ComponentByClass;
  }

  while (1)
  {
    v13 = v6;
LABEL_9:
    v14 = *(*(v19 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v15 = swift_slowAlloc();
    *v15 = 0;
    result = REMaterialParameterBlockArrayComponentSize();
    if (result < 0)
    {
      break;
    }

    v16 = result;
    if (result)
    {
      v17 = 0;
      while (1)
      {
        if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
        {
          REMaterialAssetGetMaterialDefinition();
          v18 = *v15;
          if (REMaterialDefinitionAssetHasTechniqueWithHash())
          {
            break;
          }
        }

        if (v16 == ++v17)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      MEMORY[0x1C6902A30](v15, -1, -1);
      ComponentByClass = 1;
      goto LABEL_21;
    }

LABEL_16:
    if (REMaterialAssetGetValidPassTechniqueMapping())
    {
      goto LABEL_19;
    }

    v11 &= v11 - 1;
    result = MEMORY[0x1C6902A30](v15, -1, -1);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t Entity.MetricUtilitiesBase.hasTechniqueMappedToShadowPass.getter()
{
  v1 = *(*v0 + 16);
  REMaterialParameterBlockArrayComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass)
  {
    return ComponentByClass;
  }

  v4 = specialized Entity.MetricUtilitiesBase.materialCounts.getter(v3);

  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v19 = v4;
  v9 = 1 << *(v4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  if ((v10 & v7) == 0)
  {
    while (1)
    {
LABEL_6:
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v13);
      ++v6;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    ComponentByClass = 0;
LABEL_21:

    return ComponentByClass;
  }

  while (1)
  {
    v13 = v6;
LABEL_9:
    v14 = *(*(v19 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
    v15 = swift_slowAlloc();
    *v15 = 0;
    result = REMaterialParameterBlockArrayComponentSize();
    if (result < 0)
    {
      break;
    }

    v16 = result;
    if (result)
    {
      v17 = 0;
      while (1)
      {
        if (REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex())
        {
          REMaterialAssetGetMaterialDefinition();
          v18 = *v15;
          if (REMaterialDefinitionAssetHasTechniqueWithHash())
          {
            break;
          }
        }

        if (v16 == ++v17)
        {
          goto LABEL_16;
        }
      }

LABEL_19:
      MEMORY[0x1C6902A30](v15, -1, -1);
      ComponentByClass = 1;
      goto LABEL_21;
    }

LABEL_16:
    if (REMaterialAssetGetValidPassTechniqueMapping())
    {
      goto LABEL_19;
    }

    v11 &= v11 - 1;
    result = MEMORY[0x1C6902A30](v15, -1, -1);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}