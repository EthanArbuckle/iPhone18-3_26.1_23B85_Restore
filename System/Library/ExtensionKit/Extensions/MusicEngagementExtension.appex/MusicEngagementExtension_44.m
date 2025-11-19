unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_2(size_t a1, int64_t a2, char a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(id *a1, int64_t a2, char a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(id *a1, int64_t a2, char a3)
{
  result = _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5_0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_2(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_2);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_3) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_2);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *_ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5_0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd_0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(double *a1)
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v9 = *(v2 + 48);
  v30 = v2 + 64;
  v28 = v9;
  v29 = ~v4;
  while (1)
  {
    v10 = v9 + 56 * v5;
    if (*v10 != v8 || *(v10 + 8) != v6[1])
    {
      goto LABEL_4;
    }

    result = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v27 = *(v10 + 48);
    if (result != *(v6 + 2) || *(v10 + 24) != *(v6 + 3))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v15 = *(v6 + 4);
    v16 = *(v12 + 16);
    if (v16 != *(v15 + 16))
    {
      goto LABEL_4;
    }

    if (v16 && v12 != v15)
    {
      break;
    }

LABEL_18:
    if (v27)
    {
      if (v6[6])
      {
        return v5;
      }
    }

    else if ((v6[6] & 1) == 0 && v13 == v6[5])
    {
      return v5;
    }

LABEL_4:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v18 = (v12 + 80);
  v19 = v15 + 40;
  while (v16)
  {
    if (*(v18 - 6) != *(v19 - 8) || *(v18 - 5) != *v19)
    {
      goto LABEL_4;
    }

    result = *(v18 - 4);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v19 + 24);
    v25 = *(v19 + 32);
    v26 = *(v19 + 40);
    if (result != *(v19 + 8) || *(v18 - 3) != *(v19 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v21 != v24 || v22 != v25 || *&v23 != v26)
    {
      goto LABEL_4;
    }

    v18 += 7;
    v19 += 56;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v21 = *a2;
  v28 = *(a2 + 1);
  v20 = v28;
  v27 = *(a2 + 4);
  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 56 * result;
  v23 = *(a2 + 2);
  *(v22 + 16) = v20;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a2 + 48);
  *v22 = v21;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  outlined init with copy of String(&v28, v26);
  return outlined init with copy of TaskPriority?(&v27, v26, &_sSay7LyricsX0A0C8SyllableVGMd);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
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

    else
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v22 = *a2;
    v29 = *(a2 + 1);
    v21 = v29;
    v28 = *(a2 + 4);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v23 = v19[6] + 56 * v9;
    v24 = *(a2 + 2);
    *(v23 + 16) = v21;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(a2 + 48);
    *v23 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      outlined init with copy of String(&v29, v27);
      return outlined init with copy of TaskPriority?(&v28, v27, &_sSay7LyricsX0A0C8SyllableVGMd);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = outlined init with take of Lyrics.TextLine(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = Hasher._finalize()();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = _HashTable.BucketIterator.currentValue.getter();
  if (v17)
  {
    return v16;
  }

  v18 = *v38;
  while (1)
  {
    v20 = a2 + 56 * v16;
    if (*v20 != v18 || *(v20 + 8) != *(v38 + 8))
    {
      goto LABEL_6;
    }

    result = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v36 = *(v20 + 48);
    if (result != *(v38 + 16) || *(v20 + 24) != *(v38 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v38 + 32);
    v25 = *(v21 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_6;
    }

    if (v25 && v21 != v24)
    {
      break;
    }

LABEL_20:
    if (v36)
    {
      if (*(v38 + 48))
      {
        return v16;
      }
    }

    else if ((*(v38 + 48) & 1) == 0 && v22 == *(v38 + 40))
    {
      return v16;
    }

LABEL_6:
    _HashTable.BucketIterator.advance()();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = _HashTable.BucketIterator.currentValue.getter();
    if (v19)
    {
      return v16;
    }
  }

  v27 = (v21 + 80);
  v28 = v24 + 40;
  while (v25)
  {
    if (*(v27 - 6) != *(v28 - 8) || *(v27 - 5) != *v28)
    {
      goto LABEL_6;
    }

    result = *(v27 - 4);
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v32 = *v27;
    v34 = *(v28 + 24);
    v33 = *(v28 + 32);
    v35 = *(v28 + 40);
    if (result != *(v28 + 8) || *(v27 - 3) != *(v28 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30 != v34 || v31 != v33 || *&v32 != v35)
    {
      goto LABEL_6;
    }

    v27 += 7;
    v28 += 56;
    if (!--v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

uint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSS_Tg5_1((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v3;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = _HashTable.copy()();

        *v3 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t specialized OrderedSet._appendNew(_:in:)()
{

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v2 = *(v0[1] + 16);
  if (*v0)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v2)
    {
      result = swift_isUniquelyReferenced_native();
      v3 = *v0;
      if ((result & 1) == 0)
      {
        if (!v3)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v4 = _HashTable.copy()();

        *v0 = v4;
        v3 = v4;
      }

      if (v3)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v2 < 0x10)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t specialized OrderedSet._appendNew(_:in:)(__int128 *a1)
{
  v2 = v1;
  v18 = a1[1];
  v17 = *(a1 + 4);
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  outlined init with copy of String(&v18, v16);
  outlined init with copy of TaskPriority?(&v17, v16, &_sSay7LyricsX0A0C8SyllableVGMd);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  v10 = v5 + 56 * v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  *(v10 + 80) = *(a1 + 48);
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  *(v10 + 32) = v11;
  v2[1] = v5;
  if (*v2)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v9)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v2;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = _HashTable.copy()();

        *v2 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()();
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14MSVLyricsAgentCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v4 += 7;
      v9 = *&v10;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      Hasher._combine(_:)(*&v11);

      String.hash(into:)();
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for Lyrics.SongwritersLine;
  v12 = &protocol witness table for Lyrics.SongwritersLine;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return outlined init with take of ActionPerforming(&v10, v8 + 40 * a1 + 32);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n_1(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd_1);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C11TranslationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7LyricsX0A0C11TranslationVtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C11TranslationVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_sSS_7LyricsX0A0C11TranslationVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Translation(0);
      result = outlined init with take of Lyrics.TextLine(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C15TransliterationVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_7LyricsX0A0C15TransliterationVtMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C15TransliterationVGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of TaskPriority?(v9, v5, &_sSS_7LyricsX0A0C15TransliterationVtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Transliteration(0);
      result = outlined init with take of Lyrics.TextLine(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  outlined init with copy of TaskPriority?(&v27, v26, &_sSS_7LyricsX0A0C23LineTranslationMetadata023_023C7B06612B00822B4518E8EDD9DC67LLVtMd);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    outlined init with copy of TaskPriority?(&v27, v26, &_sSS_7LyricsX0A0C23LineTranslationMetadata023_023C7B06612B00822B4518E8EDD9DC67LLVtMd);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs11AnyHashableVGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v16, &_sSS_s11AnyHashableVtMd);
      v5 = v16;
      v6 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd_0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of TaskPriority?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd_0);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX0C0C4WordVSiGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SayAC06SyncedC8LineViewCAFCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX0C0C4WordVSayAC06SyncedC8LineViewCAFCGGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_ShyAE4WordCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX06SyncedC8LineViewC0E0CShyAE4WordCGGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_So6CGRectVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy7LyricsX06SyncedC8LineViewC0E0CSo6CGRectVGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = result;
    v10 = (v3[7] + 32 * v7);
    *v10 = v17;
    v10[1] = v18;
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

    v14 = (v9 + 40);
    v15 = *(v9 - 1);
    v17 = *v9;
    v18 = v9[1];

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v9 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static Lyrics.Word.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7LyricsX0B0C8SyllableV_Tt1g5(*(a1 + 32), *(a2 + 32)))
    {
      if (*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          return 1;
        }
      }

      else if ((*(a2 + 48) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL specialized static Lyrics.Syllable.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static Lyrics.TextLine.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v4 = type metadata accessor for Lyrics.TextLine(0), *(a1 + v4[10]) == *(a2 + v4[10])) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v5 = v4;
    v6 = (*(a1 + v4[16]))();
    v8 = v7;
    if (v6 == (*(a2 + v5[16]))() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t specialized Lyrics.Word.range.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    goto LABEL_7;
  }

  result = *(result + 64);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044793C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100447974()
{

  return swift_deallocObject();
}

uint64_t specialized static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (!a2)
  {
    goto LABEL_4;
  }

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v4 + 8))(v6, v3);
  v10 = type metadata accessor for Locale.LanguageCode();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
LABEL_4:
    v12 = 1;
    return v12 & 1;
  }

  v13 = Locale.LanguageCode.identifier.getter();
  v15 = v14;
  (*(v11 + 8))(v9, v10);
  if (one-time initialization token for noSpaceLanguages != -1)
  {
    swift_once();
  }

  v16 = specialized Set.contains(_:)(v13, v15, static Lyrics.noSpaceLanguages);

  v12 = v16 ^ 1;
  return v12 & 1;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX0E0C14AudioAttributeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX0C0C14AudioAttributeOGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      Hasher._combine(_:)(*&v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_UNKNOWN **specialized static Lyrics.capabilities(for:)(uint64_t a1, uint64_t a2)
{
  v27[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale.LanguageCode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  __chkstk_darwin(v17);
  if (!a2)
  {
    return &outlined read-only object #2 of static Lyrics.capabilities(for:);
  }

  v19 = v27 - v18;

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
    return &outlined read-only object #2 of static Lyrics.capabilities(for:);
  }

  v21 = v19;
  (*(v11 + 32))(v19, v5, v10);
  (*(v11 + 16))(v16, v19, v10);
  Locale.LanguageCode.init(stringLiteral:)();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode, &type metadata accessor for Locale.LanguageCode);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  if (v22 & 1) != 0 || (Locale.LanguageCode.init(stringLiteral:)(), v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v23(v13, v10), (v24) || (Locale.LanguageCode.init(stringLiteral:)(), v25 = dispatch thunk of static Equatable.== infix(_:_:)(), v23(v13, v10), (v25))
  {
    v23(v16, v10);
  }

  else
  {
    Locale.LanguageCode.init(stringLiteral:)();
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23(v13, v10);
    v23(v16, v10);
    if ((v26 & 1) == 0)
    {
      v23(v21, v10);
      return &outlined read-only object #1 of static Lyrics.capabilities(for:);
    }
  }

  v23(v21, v10);
  return &outlined read-only object #0 of static Lyrics.capabilities(for:);
}

uint64_t sub_100448184()
{

  return swift_deallocObject();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo14MSVLyricsAgentC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id *specialized static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, id *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v137 = a1;
  v138 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v128 = _swiftEmptyArrayStorage;
    v82 = one-time initialization token for tokenizerLock;

    if (v82 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    v12 = 0;
    v97 = _swiftEmptyArrayStorage;
LABEL_80:

    return v97;
  }

  v102._countAndFlagsBits = a4;
  v102._object = a5;
  v101 = 4 * v10;

  v11 = 0;
  v114 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v8 = 15;
  v7 = _swiftEmptyArrayStorage;
  v122 = _swiftEmptyArrayStorage;
  v97 = _swiftEmptyArrayStorage;
  while (1)
  {
    v118 = v12;
    v111 = String.index(after:)();
    v15 = (v14 & 1) != 0 ? v8 : v114;
    v16 = (v14 & 1) != 0 ? v8 : v11;
    if (v15 >> 14 > String.index(after:)() >> 14)
    {
      break;
    }

    v17 = _NSRange.init(range:in:)();
    if (v13 < v16 >> 14)
    {
      goto LABEL_84;
    }

    v103 = v15 >> 14;
    v112 = v13;
    v126 = v15;
    v19 = v17;
    v20 = v18;

    v116 = v16;
    v108 = _NSRange.init(range:in:)();
    v115 = v21;
    __chkstk_darwin(v108);
    v105 = v19;
    v99 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd);
    Array.extractFirst(where:)(v22, &v131);
    v23 = v131;
    String.subscript.getter();
    v24 = Character.isWhitespace.getter();

    if ((v24 & 1) == 0)
    {
      if (v23)
      {
LABEL_22:
        v9 = a2;
        if (v118)
        {
          v106 = v23;
          v30 = v23;
          String.subscript.getter();
          v31 = static String._fromSubstring(_:)();
          v33 = v32;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122[2] + 1, 1, v122);
          }

          v35 = v122[2];
          v34 = v122[3];
          v9 = a2;
          if (v35 >= v34 >> 1)
          {
            v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v122);
          }

          v110 = 0;
          v122[2] = (v35 + 1);
          v36 = &v122[5 * v35];
          v36[4] = v118;
          v36[5] = v31;
          v36[6] = v33;
          v36[7] = v108;
          v36[8] = v115;
          v109 = v8;
          v114 = v126;
          v23 = v106;
          v12 = v106;
        }

        else
        {
          v37 = v23;
          v110 = 0;
          v109 = v8;
          v114 = v126;
          v12 = v23;
        }
      }

      else
      {
        v110 = 0;
        v109 = v16;
        v114 = v126;
        v9 = a2;
        v12 = v118;
      }

LABEL_31:
      v28 = v112;
      goto LABEL_32;
    }

    if (v23)
    {
      goto LABEL_22;
    }

    v9 = a2;
    if (!v118)
    {
      v110 = 0;
      v12 = 0;
      v109 = v16;
      v114 = v126;
      goto LABEL_31;
    }

    v25 = v118;
    [v25 characterRange];
    v26._countAndFlagsBits = a2;
    v26._object = a3;
    v27 = _NSRange.convert(from:to:preserveLength:)(v102, v26, 0);
    v28 = v112;
    if (v29)
    {

      v110 = 0;
      v109 = v116;
      v114 = v126;
LABEL_60:
      v12 = v118;
      goto LABEL_32;
    }

    v71 = _NSRange.contains(_:)(v27);

    if (!v71)
    {
      v110 = 0;
      v109 = v116;
      v114 = v126;
      v9 = a2;
      goto LABEL_60;
    }

    v72 = v25;
    v9 = a2;
    String.subscript.getter();
    v120 = static String._fromSubstring(_:)();
    v96 = v73;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122[2] + 1, 1, v122);
    }

    v75 = v122[2];
    v74 = v122[3];
    if (v75 >= v74 >> 1)
    {
      v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v122);
    }

    v122[2] = (v75 + 1);
    v76 = &v122[5 * v75];
    v76[4] = v72;
    v76[5] = v120;
    v76[6] = v96;
    v76[7] = v108;
    v76[8] = v115;
    String.subscript.getter();
    v121 = static String._fromSubstring(_:)();
    v78 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v80 = v7[2];
    v79 = v7[3];
    if (v80 >= v79 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v7);
    }

    v7[2] = (v80 + 1);
    v81 = &v7[5 * v80];
    v81[4] = v121;
    v81[5] = v78;
    v81[6] = v122;
    v81[7] = v105;
    v81[8] = v99;

    v109 = 0;
    v114 = 0;
    v12 = 0;
    v110 = 1;
    v122 = _swiftEmptyArrayStorage;
LABEL_32:
    if (v28 == String.index(before:)() >> 14 && v12)
    {
      if (v28 < v103)
      {
        goto LABEL_86;
      }

      v107 = v23;
      v38 = v7;

      v119 = v12;
      v39 = v12;
      v104 = _NSRange.init(range:in:)();
      v100 = v40;

      v41 = _NSRange.init(range:in:)();
      v43 = v42;
      v113 = v39;
      String.index(after:)();
      String.subscript.getter();
      v44 = static String._fromSubstring(_:)();
      v46 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v122[2] + 1, 1, v122);
      }

      v48 = v122[2];
      v47 = v122[3];
      if (v48 >= v47 >> 1)
      {
        v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v122);
      }

      v122[2] = (v48 + 1);
      v49 = &v122[5 * v48];
      v49[4] = v113;
      v49[5] = v44;
      v49[6] = v46;
      v49[7] = v41;
      v49[8] = v43;
      String.index(after:)();
      String.subscript.getter();
      v9 = v50;
      v51 = static String._fromSubstring(_:)();
      v53 = v52;

      v7 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v55 = v7[2];
      v54 = v7[3];
      v127 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v127, 1, v7);
      }

      v7[2] = v127;
      v56 = &v7[5 * v55];
      v56[4] = v51;
      v56[5] = v53;
      v56[6] = v122;
      v56[7] = v104;
      v56[8] = v100;
      v136 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127, 0);
      v57 = 0;
      v58 = v136;
      v8 = (v7 + 7);
      v59 = a6;
      while (v57 < v7[2])
      {
        v9 = v7;
        v61 = *(v8 - 16);
        v60 = *v8;
        v128 = *(v8 - 24);
        v129 = v61;
        v130 = v60;
        closure #4 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(&v128, v59 & 1, &v131);
        v62 = v131;
        v63 = v132;
        v64 = v133;
        v65 = v134;
        v66 = v135;
        v136 = v58;
        v68 = v58[2];
        v67 = v58[3];
        v69 = v58;
        if (v68 >= v67 >> 1)
        {
          v123 = v133;
          v117 = v131;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
          v62 = v117;
          v64 = v123;
          v59 = a6;
          v69 = v136;
        }

        v69[2] = (v68 + 1);
        v70 = &v69[7 * v68];
        *(v70 + 2) = v62;
        ++v57;
        v70[6] = v63;
        *(v70 + 7) = v64;
        v70[9] = v65;
        *(v70 + 80) = v66;
        v8 += 40;
        v7 = v9;
        v58 = v69;
        if (v127 == v57)
        {

          v122 = _swiftEmptyArrayStorage;
          v97 = v58;
          v9 = a2;
          v12 = v119;
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:
    v8 = v111;
    v13 = v111 >> 14;
    v14 = v110;
    v11 = v109;
    if (v111 >> 14 == v101)
    {

      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v83 = swift_once();
LABEL_62:
  __chkstk_darwin(v83);
  UnfairLock.locked<A>(_:)(partial apply for closure #2 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:));
  v84 = v128;
  v85 = v128[2];
  if (v85)
  {
    v86 = 0;
    v87 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v87 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v88 = 7;
    if (((a3 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v88 = 11;
    }

    v9 = 4 * v87;
    v89 = v88 | (v87 << 16);
    v90 = (v128 + 6);
    do
    {
      v92 = v86 + 1;
      v93 = *(v90 - 1);
      if (v86 >= v85 - 1)
      {
        if (v9 == v93 >> 14)
        {
          v91 = *(v90 - 1);
        }

        else
        {
          v91 = v89;
        }
      }

      else
      {
        if (v92 >= v84[2])
        {
          goto LABEL_85;
        }

        if ((*v90 ^ v93) >= 0x4000)
        {
          v91 = *v90;
        }

        else
        {
          v91 = *(v90 - 1);
        }
      }

      specialized closure #1 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(*(v90 - 2), v91, a2, a3, &v137, v8, v7, &v138);
      v90 += 2;
      v86 = v92;
    }

    while (v85 != v92);
  }

  swift_beginAccess();
  v94 = v138;

  return v94;
}

id *specialized static Lyrics.words(for:language:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd);
    v9 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MSVLyricsWord] and conformance [A], &_sSaySo13MSVLyricsWordCGMd);
    v10 = Sequence.exclude(_:)(specialized implicit closure #1 in MSVLyricsLine.primaryVocalWords.getter, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v11 = specialized static Lyrics.useSpacesAsWordDelimiter(for:)(a2, a3);
  v12 = specialized static Lyrics.capabilities(for:)(a2, a3);
  v13 = [a1 primaryVocalText];
  v14 = [v13 string];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a1 lyricsText];
  v19 = [v18 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  [a1 endTime];
  [a1 startTime];
  v23 = v12[2];
  v24 = (v12 + 4);
  do
  {
    v25 = v23;
    if (v23-- == 0)
    {
      break;
    }

    v27 = *v24++;
  }

  while (v27 != 2);
  v28 = v25 != 0;

  v29 = specialized static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(v10, v15, v17, v20, v22, v28, v11 & 1);

  return v29;
}

BOOL specialized static Lyrics.direction(recognizedFrom:)()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dominantLanguageForString:v5];

  if (!v6)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Locale.Language.init(identifier:)();
  v7 = Locale.Language.characterDirection.getter();

  (*(v1 + 8))(v3, v0);
  return v7 == 2;
}

unint64_t specialized Lyrics.TextLine.BackgroundVocals.init(backgroundVocals:language:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    [a1 startTime];
    v4 = v15;
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  [v13 startTime];
  v4 = v14;

LABEL_11:
  v16 = [a1 subwords];
  if (!v16)
  {
LABEL_22:
    [a1 endTime];
    v25 = v26;
    goto LABEL_23;
  }

  v17 = v16;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_14:
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v22 = *(v18 + 8 * result + 32);
LABEL_19:
  v23 = v22;

  [v23 endTime];
  v25 = v24;

LABEL_23:
  v27 = specialized static Lyrics.useSpacesAsWordDelimiter(for:)(a2, a3);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v28 characterRange];
  v56 = v35;
  v57 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = specialized static Lyrics.direction(recognizedFrom:)();

  result = [v28 subwords];
  if (result)
  {
    v39 = result;
    type metadata accessor for Lyrics(0);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = [v28 lyricsText];
    v42 = a4;
    v43 = v38;
    v44 = v33;
    v45 = v31;
    v46 = [v41 string];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = [v28 lyricsText];
    v50 = [v49 string];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v31 = v45;
    v33 = v44;
    v38 = v43;
    a4 = v42;
    v54 = specialized static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(v40, v55, v48, v51, v53, 0, v27 & 1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
  }

  *a4 = v4;
  *(a4 + 8) = v25;
  *(a4 + 16) = v31;
  *(a4 + 24) = v33;
  *(a4 + 32) = v57;
  *(a4 + 40) = v56;
  *(a4 + 48) = v38;
  *(a4 + 56) = v54;
  return result;
}

id *specialized processLines #1 (_:) in Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
{
  v174 = a7;
  v175 = a8;
  v163 = a6;
  v192 = a5;
  v166 = a3;
  v167 = a4;
  v165 = a2;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v172 = *(v9 - 8);
  v173 = v9;
  __chkstk_darwin(v9);
  v190 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v189 = (&v156 - v12);
  v193 = type metadata accessor for Locale.Language();
  v13 = *(v193 - 8);
  __chkstk_darwin(v193);
  v162 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v158 = &v156 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin(v17 - 8);
  v157 = &v156 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin(v19 - 8);
  v176 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v156 - v22;
  __chkstk_darwin(v24);
  v199 = &v156 - v25;
  *&v205[0] = a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsLineCGMd);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MSVLyricsLine] and conformance [A], &_sSaySo13MSVLyricsLineCGMd);
  v26 = Sequence.sorted<A>(by:comparator:)();

  if (v26 >> 62)
  {
    goto LABEL_109;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v28 = v193;
  v29 = v199;
  if (v27)
  {
    v169 = v27;
    v170 = objc_opt_self();
    v171 = v26 & 0xC000000000000001;
    v177 = v26;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v26 = v177;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v30 = 0;
    v195 = (v13 + 56);
    v161 = "$_staticText";
    v178 = 0;
    v179 = (v13 + 48);
    v156 = (v13 + 16);
    v164 = (v13 + 8);
    v159 = v26 & 0xFFFFFFFFFFFFFF8;
    v160 = (v13 + 32);
    v168 = v163;
    v31 = &selRef_parent;
    v201 = _swiftEmptyArrayStorage;
    v191 = v23;
    while (1)
    {
      if (v171)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v30 >= *(v159 + 16))
        {
          goto LABEL_106;
        }

        v32 = *(v26 + 8 * v30 + 32);
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v27 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v186 = v33;
      v202 = v32;
      v34 = [v202 agent];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      swift_beginAccess();
      v36 = v35;
      specialized Set._Variant.insert(_:)(v203, v36);
      swift_endAccess();

      v37 = [v36 v31[393]];
      if (!v37)
      {

        goto LABEL_19;
      }

      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      if (v39 == 0x6E6F73726570 && v41 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v43 = [v36 identifier];
        if (v43)
        {
          v44 = v43;
          v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;
        }

        else
        {
          v200 = 0;
          v46 = 0;
        }

        v48 = *(v166 + 16);
        if (v48)
        {
          v49 = v30;
          v50 = [v48 identifier];
          if (v50)
          {
            v51 = v50;
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          v30 = v49;
          v31 = &selRef_parent;
          if (v46)
          {
LABEL_29:
            if (!v54)
            {

              v23 = v191;
              goto LABEL_44;
            }

            if (v200 == v52 && v46 == v54)
            {

              v23 = v191;
            }

            else
            {
              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v23 = v191;
              if ((v55 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v52 = 0;
          v54 = 0;
          if (v46)
          {
            goto LABEL_29;
          }
        }

        v23 = v191;
        if (v54)
        {

LABEL_43:

LABEL_44:
          v57 = v167;
          v58 = *(v166 + 16);
          v29 = v199;
          v28 = v193;
          if (v58)
          {
            *(v167 + 16) = (*(v167 + 16) & 1) == 0;
          }

          *(v166 + 16) = v35;
          v59 = v57;

          v47 = *(v59 + 16);
          goto LABEL_47;
        }
      }

LABEL_35:
      if (v42 == 0x70756F7267 && v41 == 0xE500000000000000)
      {

        v185 = 0;
        v29 = v199;
        v28 = v193;
        goto LABEL_48;
      }

      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v29 = v199;
      if (v56)
      {

        v185 = 0;
        v28 = v193;
        goto LABEL_48;
      }

      if (v42 == 0x726568746FLL && v41 == 0xE500000000000000)
      {

        v185 = 1;
        v28 = v193;
        goto LABEL_48;
      }

      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28 = v193;
      if (v126)
      {
        v47 = 1;
        goto LABEL_47;
      }

LABEL_19:
      v47 = *(v167 + 16);
LABEL_47:
      v185 = v47;
LABEL_48:
      v60 = [v202 translationKey];
      if (v60)
      {
        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v183 = v63;
        v184 = v62;
      }

      else
      {
        v183 = 0;
        v184 = 0;
      }

      v187 = v30;
      v64 = [v192 v31[393]];
      v65 = &selRef_primaryVocalText;
      if (v64 != 2)
      {
        v65 = &selRef_lyricsText;
      }

      v66 = v202;
      v67 = [v202 *v65];
      v68 = [v67 string];

      v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v197 = v69;

      v70 = [v66 words];
      if (v70)
      {
        v71 = v70;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsWord);
        v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v204[0] = v72;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13MSVLyricsWordCGMd);
        v74 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [MSVLyricsWord] and conformance [A], &_sSaySo13MSVLyricsWordCGMd);
        v75 = v73;
        v76 = v178;
        v77 = Sequence.exclude(_:)(specialized implicit closure #1 in MSVLyricsLine.primaryVocalWords.getter, 0, v75, v74);
        v178 = v76;
      }

      else
      {
        v77 = _swiftEmptyArrayStorage;
      }

      v78 = swift_allocObject();
      v200 = v78;
      *(v78 + 16) = _swiftEmptyArrayStorage;
      v79 = (v78 + 16);
      v80 = swift_allocObject();
      v80[1] = 0u;
      v81 = v80 + 1;
      v80[2] = 0u;
      v80[3] = 0u;
      v198 = v80;
      v80[4] = 0u;
      v194 = *v195;
      v194(v29, 1, 1, v28);
      v26 = String._bridgeToObjectiveC()();
      v82 = [v170 dominantLanguageForString:v26];

      if (v82)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Locale.Language.init(identifier:)();

LABEL_60:
        v194(v23, 0, 1, v28);
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v23, v29, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        goto LABEL_61;
      }

      v83 = [v192 language];
      if (v83)
      {
        v84 = v83;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        Locale.Language.init(identifier:)();
        v29 = v199;
        goto LABEL_60;
      }

LABEL_61:
      if ([v192 v31[393]] == 2)
      {
        v85 = [objc_opt_self() standardUserDefaults];
        v26 = String._bridgeToObjectiveC()();
        v86 = [v85 BOOLForKey:v26];

        if ((v86 & 1) == 0)
        {
          v87 = v199;
          if ((*v179)(v199, 1, v28))
          {
            v88 = 0;
            v89 = 0;
          }

          else
          {
            v90 = v158;
            (*v156)(v158, v87, v28);
            v91 = v157;
            Locale.Language.languageCode.getter();
            v92 = v90;
            v93 = v91;
            (*v164)(v92, v28);
            v94 = type metadata accessor for Locale.LanguageCode();
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v93, 1, v94) == 1)
            {
              outlined destroy of TaskPriority?(v93, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
              v88 = 0;
              v89 = 0;
            }

            else
            {
              v96 = v93;
              v97 = Locale.LanguageCode.identifier.getter();
              v89 = v98;
              v99 = v96;
              v23 = v191;
              (*(v95 + 8))(v99, v94);
              v88 = v97;
            }

            v28 = v193;
          }

          v100 = v202;
          v26 = specialized static Lyrics.words(for:language:)(v202, v88, v89);

          swift_beginAccess();
          *v79 = v26;

          v101 = [v100 backgroundVocals];
          if (v101)
          {
            v102 = v101;
            v103 = [v192 language];
            if (v103)
            {
              v104 = v103;
              v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v106;
            }

            else
            {

              v105 = 0;
              v26 = 0;
            }

            specialized Lyrics.TextLine.BackgroundVocals.init(backgroundVocals:language:)(v102, v105, v26, v205);
            v188 = v205[0];
            v180 = v205[3];
            v181 = v205[2];
            v182 = v205[1];
          }

          else
          {
            v188 = 0u;
            v181 = 0u;
            v182 = 0u;
            v180 = 0u;
          }

          swift_beginAccess();
          v107 = v81[1];
          v204[0] = *v81;
          v204[1] = v107;
          v108 = v81[3];
          v204[2] = v81[2];
          v204[3] = v108;
          v109 = v198;
          v110 = v182;
          v198[1] = v188;
          v109[2] = v110;
          v111 = v180;
          v109[3] = v181;
          v109[4] = v111;
          outlined destroy of TaskPriority?(v204, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
        }
      }

      v112 = v176;
      outlined init with copy of TaskPriority?(v199, v176, &_s10Foundation6LocaleV8LanguageVSgMd_0);
      if ((*v179)(v112, 1, v28) == 1)
      {
        outlined destroy of TaskPriority?(v112, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v113 = v163;
      }

      else
      {
        v114 = v162;
        (*v160)(v162, v112, v28);
        v115 = Locale.Language.characterDirection.getter();
        (*v164)(v114, v28);
        v113 = v115 == 2;
      }

      v116 = v202;
      *&v188 = [v202 lineIndex];
      [v116 startTime];
      v118 = v117;
      [v116 endTime];
      v120 = v119;
      if (v77 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (!v13)
        {
LABEL_93:
          v125 = v202;
          [v202 startTime];
          v123 = v127;
          goto LABEL_94;
        }
      }

      else
      {
        v13 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_93;
        }
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v121 = *(v77 + 32);
      }

      v26 = v121;
      [v121 startTime];
      v123 = v122;

      v124 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_104;
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v124 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v124 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v125 = *(v77 + 8 * v124 + 32);
      }

LABEL_94:

      [v125 endTime];
      v129 = v128;

      LODWORD(v180) = v201[2] == 0;
      outlined init with copy of TaskPriority?(v199, v23, &_s10Foundation6LocaleV8LanguageVSgMd_0);
      v130 = swift_allocObject();
      *&v182 = v130;
      v131 = v175;
      *(v130 + 16) = v175;
      *(v130 + 24) = v168;
      v132 = swift_allocObject();
      *&v181 = v132;
      *(v132 + 16) = v131;
      *(v132 + 24) = v113;
      v133 = swift_allocObject();
      v135 = v183;
      v134 = v184;
      *(v133 + 2) = v131;
      *(v133 + 3) = v134;
      v137 = v196;
      v136 = v197;
      *(v133 + 4) = v135;
      *(v133 + 5) = v137;
      *(v133 + 6) = v136;
      v138 = swift_allocObject();
      *(v138 + 2) = v131;
      *(v138 + 3) = v134;
      v139 = v200;
      *(v138 + 4) = v135;
      *(v138 + 5) = v139;
      v140 = swift_allocObject();
      v140[2] = v131;
      v140[3] = v134;
      v141 = v198;
      v140[4] = v135;
      v140[5] = v141;
      v142 = v173;
      v197 = v173[7];
      v143 = v189;
      v194(v189 + v197, 1, 1, v193);
      v143[2] = v188;
      *v143 = v118;
      v143[1] = v120;
      *(v143 + v142[10]) = v123;
      *(v143 + v142[11]) = v129;
      *(v143 + v142[12]) = v180;
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      outlined assign with take of PlaybackIntentDescriptor.IntentType?(v191, v143 + v197, &_s10Foundation6LocaleV8LanguageVSgMd_0);
      v144 = (v143 + v142[13]);
      *v144 = v134;
      v144[1] = v135;
      *(v143 + v142[8]) = v185;
      *(v143 + v142[9]) = v174;
      v145 = (v143 + v142[14]);
      v146 = v182;
      *v145 = partial apply for closure #2 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v145[1] = v146;
      v147 = (v143 + v142[15]);
      v148 = v181;
      *v147 = partial apply for closure #3 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v147[1] = v148;
      v149 = (v143 + v142[16]);
      *v149 = partial apply for closure #4 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v149[1] = v133;
      v150 = (v143 + v142[17]);
      *v150 = partial apply for closure #5 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v150[1] = v138;
      v151 = (v143 + v142[18]);
      *v151 = partial apply for closure #6 in processLines #1 (_:) in Lyrics.init(identifier:songInfo:);
      v151[1] = v140;
      outlined init with copy of Lyrics.Translation(v143, v190, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v201[2] + 1, 1, v201, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMR, type metadata accessor for Lyrics.TextLine);
      }

      v26 = v177;
      v152 = v187;
      v31 = &selRef_parent;
      v13 = v201[2];
      v153 = v201[3];
      v28 = v193;
      v23 = v191;
      v29 = v199;
      if (v13 >= v153 >> 1)
      {
        v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v153 > 1, v13 + 1, 1, v201, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMd, &_ss23_ContiguousArrayStorageCy7LyricsX0D0C8TextLineVGMR, type metadata accessor for Lyrics.TextLine);
      }

      v154 = v201;
      v201[2] = (v13 + 1);
      outlined init with take of Lyrics.TextLine(v190, v154 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v13, type metadata accessor for Lyrics.TextLine);
      outlined destroy of Lyrics.Translation(v189, type metadata accessor for Lyrics.TextLine);
      outlined destroy of TaskPriority?(v29, &_s10Foundation6LocaleV8LanguageVSgMd_0);

      v30 = v152 + 1;
      if (v186 == v169)
      {
        goto LABEL_102;
      }
    }
  }

  v201 = _swiftEmptyArrayStorage;
LABEL_102:

  return v201;
}

uint64_t sub_10044ADAC()
{

  return swift_deallocObject();
}

uint64_t sub_10044ADEC()
{

  return swift_deallocObject();
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7LyricsX0C0C23LineTranslationMetadata023_023C7B06612B00822B4518G8EDD9DC67LLVGMd);
  result = static _DictionaryStorage.copy(original:)();
  v6 = 0;
  v35 = result;
  v36 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = result + 64;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v17);
      v20 = v19[1];
      v42 = *v19;
      v21 = *(v18 + 8 * v17);

      v22 = v21;
      v23 = [a4 language];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      a2(v40, v22, v24, v26);

      result = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v35[6] + 16 * v17);
      *v27 = v42;
      v27[1] = v20;
      v28 = v35[7] + 88 * v17;
      v29 = v40[1];
      *v28 = v40[0];
      *(v28 + 16) = v29;
      *(v28 + 80) = v41;
      v30 = v40[4];
      *(v28 + 48) = v40[3];
      *(v28 + 64) = v30;
      *(v28 + 32) = v40[2];
      v31 = v35[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v35[2] = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static Lyrics.vocalistType(for:)(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v96 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 1)
    {
      v94 = v2;
      v91 = 0;
      v3 = &_swiftEmptySetSingleton;
      v104 = &_swiftEmptySetSingleton;

      __CocoaSet.makeIterator()();
      v4 = __CocoaSet.Iterator.next()();
      if (v4)
      {
        v5 = v4;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
        v6 = v5;
        v7 = 0x6E6F73726570;
        do
        {
          v98 = v6;
          swift_dynamicCast();
          v8 = [v99 type];
          if (!v8)
          {
LABEL_5:

            goto LABEL_6;
          }

          v9 = v8;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v99;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            specialized _NativeSet.resize(capacity:)(v16 + 1);
          }

          v3 = v104;
          v17 = NSObject._rawHashValue(seed:)(v104[5]);
          v18 = (v104 + 7);
          v19 = -1 << *(v104 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v104[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v104[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_27;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
LABEL_27:
          *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          *(*(v3 + 48) + 8 * v22) = v15;
          ++*(v3 + 16);
LABEL_6:
          v6 = __CocoaSet.Iterator.next()();
        }

        while (v6);
      }

      v39 = v96;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v92 = __CocoaSet.count.getter();
      goto LABEL_57;
    }

    return 0;
  }

  if (*(a1 + 16) <= 1uLL)
  {
    return 0;
  }

  v94 = 0;
  v91 = 0;
  v27 = *(a1 + 32);
  v28 = v27 & 0x3F;
  v92 = ((1 << v27) + 63) >> 6;
  v15 = 8 * v92;

  v30 = v28 > 0xD;
  v7 = a1;
  if (v30)
  {
    goto LABEL_130;
  }

LABEL_30:
  v90 = &v90;
  __chkstk_darwin(isStackAllocationSafe);
  v93 = &v90 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v93, v15);
  v95 = 0;
  v31 = 0;
  v33 = *(v7 + 56);
  v7 += 56;
  v32 = v33;
  v34 = 1 << *(v7 - 24);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v36)
        {
          v41 = v31;
          while (1)
          {
            v31 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_129;
            }

            if (v31 >= v37)
            {
              goto LABEL_55;
            }

            v42 = *(v7 + 8 * v31);
            ++v41;
            if (v42)
            {
              v40 = __clz(__rbit64(v42));
              v36 = (v42 - 1) & v42;
              goto LABEL_44;
            }
          }
        }

        v40 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
LABEL_44:
        v43 = v40 | (v31 << 6);
        v15 = *(*(v96 + 48) + 8 * v43);
        v44 = [v15 type];
        if (v44)
        {
          break;
        }
      }

      v45 = v44;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      if (v46 == 0x6E6F73726570 && v48 == 0xE600000000000000)
      {

        break;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((v50 & 1) == 0);
    *&v93[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
  }

  while (!__OFADD__(v95++, 1));
  __break(1u);
LABEL_55:
  v39 = v96;
  v3 = specialized _NativeSet.extractSubset(using:count:)(v93, v92, v95, v96);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  while (2)
  {
    v92 = *(v3 + 16);
LABEL_57:

    if (v94)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
      lazy protocol witness table accessor for type MSVLyricsAgent and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v39 = v99;
      v95 = v100;
      v15 = v101;
      v7 = v102;
      v52 = v103;
    }

    else
    {
      v53 = -1 << *(v39 + 32);
      v54 = *(v39 + 56);
      v95 = v39 + 56;
      v15 = ~v53;
      v55 = -v53;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v52 = v56 & v54;

      v7 = 0;
    }

    v93 = v15;
    v57 = (v15 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v39 < 0)
        {
          v61 = __CocoaSet.Iterator.next()();
          if (!v61 || (v98 = v61, type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent), swift_dynamicCast(), (v60 = v104) == 0))
          {
LABEL_81:
            outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
            LODWORD(v93) = 1;
            goto LABEL_82;
          }
        }

        else
        {
          v58 = v7;
          for (i = v52; !i; ++v58)
          {
            v7 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_127;
            }

            if (v7 >= v57)
            {
              goto LABEL_81;
            }

            i = *(v95 + 8 * v7);
          }

          v52 = (i - 1) & i;
          v60 = *(*(v39 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v60)
          {
            goto LABEL_81;
          }
        }

        v62 = [v60 type];
        if (v62)
        {
          break;
        }
      }

      v63 = v62;
      v64 = v39;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v15 == 0x70756F7267 && v66 == 0xE500000000000000)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v39 = v64;
      if (v15)
      {
        goto LABEL_118;
      }
    }

LABEL_118:
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    LODWORD(v93) = 0;
LABEL_82:
    v68 = v96;
    if (v94)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
      lazy protocol witness table accessor for type MSVLyricsAgent and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v68 = v104;
      v95 = v105;
      v7 = v106;
      v69 = v107;
      v70 = v108;
    }

    else
    {
      v71 = -1 << *(v96 + 32);
      v72 = *(v96 + 56);
      v95 = v96 + 56;
      v7 = ~v71;
      v73 = -v71;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v70 = v74 & v72;

      v69 = 0;
    }

    v96 = v7;
    v75 = (v7 + 64) >> 6;
LABEL_90:
    if (v68 < 0)
    {
      v79 = __CocoaSet.Iterator.next()();
      if (!v79 || (v97 = v79, type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent), swift_dynamicCast(), (v78 = v98) == 0))
      {
LABEL_106:
        outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
        if (v92 == 2)
        {
          v86 = 1;
        }

        else
        {
          v86 = 2;
        }

        if (v92 == 1)
        {
          v86 = 0;
        }

        if (v92 >= 3)
        {
          v87 = 2;
        }

        else
        {
          v87 = 0x10000u >> (8 * v92);
        }

        if (v93)
        {
          return v86;
        }

        else
        {
          return v87;
        }
      }
    }

    else
    {
      v76 = v69;
      v77 = v70;
      if (!v70)
      {
        while (1)
        {
          v69 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          if (v69 >= v75)
          {
            goto LABEL_106;
          }

          v77 = *(v95 + 8 * v69);
          ++v76;
          if (v77)
          {
            goto LABEL_95;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v88 = swift_slowAlloc();
          v89 = v91;
          v3 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo14MSVLyricsAgentCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So14iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v88, v92, v7, closure #1 in static Lyrics.vocalistType(for:));
          v91 = v89;

          v39 = v7;
          if ((v3 & 0xC000000000000001) == 0)
          {
            continue;
          }

          goto LABEL_35;
        }

        goto LABEL_30;
      }

LABEL_95:
      v70 = (v77 - 1) & v77;
      v78 = *(*(v68 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v77)))));
      if (!v78)
      {
        goto LABEL_106;
      }
    }

    break;
  }

  v80 = [v78 type];
  if (!v80)
  {

    goto LABEL_90;
  }

  v81 = v80;
  v7 = v68;
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  if (v82 != 0x726568746FLL || v84 != 0xE500000000000000)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v68 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

LABEL_120:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  if (v93)
  {
    if (v92 >= 3)
    {
      return 2;
    }

    else
    {
      return 0x10200u >> (8 * v92);
    }
  }

  else if (v92 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t outlined init with copy of Lyrics.Translation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Lyrics.Translation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044BB98()
{

  return swift_deallocObject();
}

_BYTE **partial apply for closure #1 in OSLogArguments.append(_:)(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_10044BD1C()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))();
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t specialized _arrayDescription<A>(for:)(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1004F2400;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    debugPrint<A>(_:separator:terminator:to:)();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v10._countAndFlagsBits = 8236;
        v10._object = 0xE200000000000000;
        String.append(_:)(v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1004F2400;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 32) = v9;
        *(v11 + 40) = v8;

        debugPrint<A>(_:separator:terminator:to:)();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 91;
}

uint64_t outlined init with take of Lyrics.TextLine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t _sS2SSysWl_2()
{
  result = _sS2SSysWL_2;
  if (!_sS2SSysWL_2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2SSysWL_2);
  }

  return result;
}

unint64_t _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_1()
{
  result = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_1;
  if (!_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis()
{
  result = lazy protocol witness table cache variable for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis;
  if (!lazy protocol witness table cache variable for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Word.Emphasis and conformance Lyrics.Word.Emphasis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Word and conformance Lyrics.Word()
{
  result = lazy protocol witness table cache variable for type Lyrics.Word and conformance Lyrics.Word;
  if (!lazy protocol witness table cache variable for type Lyrics.Word and conformance Lyrics.Word)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Word and conformance Lyrics.Word);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Syllable and conformance Lyrics.Syllable()
{
  result = lazy protocol witness table cache variable for type Lyrics.Syllable and conformance Lyrics.Syllable;
  if (!lazy protocol witness table cache variable for type Lyrics.Syllable and conformance Lyrics.Syllable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Syllable and conformance Lyrics.Syllable);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Lyrics.LyricsType and conformance Lyrics.LyricsType()
{
  result = lazy protocol witness table cache variable for type Lyrics.LyricsType and conformance Lyrics.LyricsType;
  if (!lazy protocol witness table cache variable for type Lyrics.LyricsType and conformance Lyrics.LyricsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.LyricsType and conformance Lyrics.LyricsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType()
{
  result = lazy protocol witness table cache variable for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType;
  if (!lazy protocol witness table cache variable for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.VocalistsType and conformance Lyrics.VocalistsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind()
{
  result = lazy protocol witness table cache variable for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind;
  if (!lazy protocol witness table cache variable for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Translation.Kind and conformance Lyrics.Translation.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment()
{
  result = lazy protocol witness table cache variable for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment;
  if (!lazy protocol witness table cache variable for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.AgentAlignment and conformance Lyrics.AgentAlignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Direction and conformance Lyrics.Direction()
{
  result = lazy protocol witness table cache variable for type Lyrics.Direction and conformance Lyrics.Direction;
  if (!lazy protocol witness table cache variable for type Lyrics.Direction and conformance Lyrics.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Direction and conformance Lyrics.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.Capability and conformance Lyrics.Capability()
{
  result = lazy protocol witness table cache variable for type Lyrics.Capability and conformance Lyrics.Capability;
  if (!lazy protocol witness table cache variable for type Lyrics.Capability and conformance Lyrics.Capability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.Capability and conformance Lyrics.Capability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute()
{
  result = lazy protocol witness table cache variable for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute;
  if (!lazy protocol witness table cache variable for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Lyrics.AudioAttribute and conformance Lyrics.AudioAttribute);
  }

  return result;
}

void type metadata completion function for Lyrics()
{
  type metadata accessor for Locale.Language?(319, &lazy cache variable for type metadata for Locale.Language?, &type metadata accessor for Locale.Language);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Locale.Language?(319, &_s7LyricsX0A0C11TranslationVSgML_0, type metadata accessor for Lyrics.Translation);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Locale.Language?(319, &_s7LyricsX0A0C15TransliterationVSgML_0, type metadata accessor for Lyrics.Transliteration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Locale.Language?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy49_8_0(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Lyrics.Word(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.Word(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 __swift_memcpy56_8_1(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Lyrics.Syllable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.Syllable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10044C8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10044C9B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Lyrics.TextLine()
{
  type metadata accessor for Locale.Language?(319, &lazy cache variable for type metadata for Locale.Language?, &type metadata accessor for Locale.Language);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Lyrics.Capability](319, &lazy cache variable for type metadata for [Lyrics.Capability], &type metadata for Lyrics.Capability, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [Lyrics.Capability](319, &_sSSSgML_1, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        _syycMa_2();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Lyrics.Capability](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t _syycMa_2()
{
  result = _syycML_2;
  if (!_syycML_2)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &_syycML_2);
  }

  return result;
}

__n128 __swift_memcpy64_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.TextLine.BackgroundVocals(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.TextLine.BackgroundVocals(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy25_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.InstrumentalLine(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.InstrumentalLine(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8_3(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.SongwritersLine(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.SongwritersLine(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Lyrics.Translation()
{
  type metadata accessor for Locale.Language();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : Lyrics.LineTranslationMetadata]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10044D004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale.Language();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10044D0C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale.Language();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Lyrics.Translation.Line()
{
  type metadata accessor for [Lyrics.Capability](319, &_sSSSgML_1, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Locale.Language();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_199Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_200Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale.Language();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Lyrics.Transliteration()
{
  type metadata accessor for Locale.Language();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String : Lyrics.LineTranslationMetadata]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C8TextLineV16BackgroundVocalsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for Lyrics.LineTranslationMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for Lyrics.LineTranslationMetadata(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC011TextContentF0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLOGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10044D740()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 28);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10044D948()
{
  v1 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Locale.Language();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_266Tm()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC_Tt0g5Tf4g_n(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t outlined assign with take of Lyrics.Translation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044DE60()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MSVLyricsAgent and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MSVLyricsAgent and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MSVLyricsAgent and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MSVLyricsAgent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSVLyricsAgent and conformance NSObject);
  }

  return result;
}

BOOL partial apply for closure #3 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(id *a1)
{
  return partial apply for closure #3 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(a1);
}

{
  return closure #1 in closure #1 in static Lyrics.msvWordsToLyricsWords(msvWords:text:lineText:lineDuration:shouldProcessEmphasis:usesSpacesAsWordDelimiter:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

id sub_10044DF70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

uint64_t sub_10044DFB8()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10044DFFC()
{

  return swift_deallocObject();
}

uint64_t sub_10044E054()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_295Tm()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LyricsOptionsManager.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100519430[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LyricsOptionsManager.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100519430[v1]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LyricsOptionsManager.Option@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LyricsOptionsManager.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t LyricsOptionsManager.Observer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *one-time initialization function for shared()
{
  type metadata accessor for LyricsOptionsManager();
  v0 = swift_allocObject();
  result = LyricsOptionsManager.init()();
  static LyricsOptionsManager.shared = v0;
  return result;
}

uint64_t static LyricsOptionsManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t LyricsOptionsManager.bag.didset()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    result = [result dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (result)
    {
      v2 = result;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      AnyHashable.init<A>(_:)();
      if (*(v3 + 16) && (v4 = v0, v5 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v6 & 1) != 0))
      {
        outlined init with copy of Any(*(v3 + 56) + 32 * v5, &v21);
        outlined destroy of AnyHashable(v20);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd_0);
        result = swift_dynamicCast();
        if (result)
        {
          if (!_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x80000001004D6760);
              if (v8)
              {
                outlined init with copy of AnyHashable(MEMORY[0xD00000000000004D] + 40 * v7, v20);
                if (swift_dynamicCast())
                {
                  v20[0] = *(v0 + 40);
                  if (v21)
                  {

                    specialized Set._Variant.insert(_:)(&v21, 0);
                  }

                  else
                  {

                    specialized Set._Variant.remove(_:)(0);
                  }

                  v9 = *(v0 + 40);
                  *(v0 + 40) = v20[0];
                  LyricsOptionsManager.currentOptions.didset(v9);
                }
              }
            }
          }

          if (!_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000020, 0x80000001004D6780);
              if (v11)
              {
                outlined init with copy of AnyHashable(MEMORY[0xD00000000000004D] + 40 * v10, v20);
                if (swift_dynamicCast())
                {
                  v20[0] = *(v0 + 40);
                  if (v21)
                  {

                    specialized Set._Variant.insert(_:)(&v21, 1);
                  }

                  else
                  {

                    specialized Set._Variant.remove(_:)(1);
                  }

                  v12 = *(v0 + 40);
                  *(v0 + 40) = v20[0];
                  LyricsOptionsManager.currentOptions.didset(v12);
                }
              }
            }
          }

          if (_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(8, *(v0 + 40)))
          {
          }

          if (!MEMORY[0xD000000000000025])
          {
          }

          v13 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x80000001004D67B0);
          if ((v14 & 1) == 0)
          {
          }

          outlined init with copy of AnyHashable(MEMORY[0xD00000000000004D] + 40 * v13, v20);

          result = swift_dynamicCast();
          if (result)
          {
            v16 = v21;
            v15 = v22;
            if (v21 == 0x73636972796CLL && v22 == 0xE600000000000000)
            {

              v17 = v4;
LABEL_33:
              v20[0] = *(v17 + 40);

              specialized Set._Variant.remove(_:)(3);
LABEL_34:
              v18 = *(v17 + 40);
              *(v17 + 40) = v20[0];
              LyricsOptionsManager.currentOptions.didset(v18);
            }

            v17 = v4;
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {

              goto LABEL_33;
            }

            if (v16 == 0x74696C736E617274 && v15 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v20[0] = *(v17 + 40);

              specialized Set._Variant.insert(_:)(&v21, 3);
              goto LABEL_34;
            }

            v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v19)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        return outlined destroy of AnyHashable(v20);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  LyricsOptionsManager.bag.didset();
}

uint64_t (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return LyricsOptionsManager.bag.modify;
}

uint64_t LyricsOptionsManager.bag.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return LyricsOptionsManager.bag.didset();
  }

  return result;
}

void LyricsOptionsManager.currentOptions.didset(uint64_t a1)
{
  if ((_sSh2eeoiySbShyxG_ABtFZ7LyricsX0B14OptionsManagerC6OptionO_Tt1g5(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_2);
        _sSaySSGSayxGSKsWl_2();
        BidirectionalCollection<>.joined(separator:)();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = String._bridgeToObjectiveC()();

        v21 = String._bridgeToObjectiveC()();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = dispatch thunk of CustomStringConvertible.description.getter();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2);
          }

          v17 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2[2];
          v16 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2[3];
          if (v17 >= v16 >> 1)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2((v16 > 1), v17 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2);
          }

          v8 &= v8 - 1;
          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2[2] = (v17 + 1);
          v18 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_2[2 * v17];
          v18[4] = v13;
          v18[5] = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *LyricsOptionsManager.init()()
{
  v1 = v0;
  v0[2] = 0;
  v2 = type metadata accessor for LyricsOptionsManager.Observer();
  v0[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v2);
  v0[4] = 0;
  v0[5] = &_swiftEmptySetSingleton;
  type metadata accessor for UIAction(0, &_sSo14NSUserDefaultsCML_1);
  strcpy(v6, "lyricsOptions");
  v6[7] = -4864;
  v3 = swift_allocObject();
  swift_weakInit();
  _sS2SSysWl_2();

  v4 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v6, 0, 0, partial apply for closure #1 in LyricsOptionsManager.init(), v3, &type metadata for String);

  v1[4] = v4;

  LyricsOptionsManager.update()();
  return v1;
}

uint64_t closure #1 in LyricsOptionsManager.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);

    LyricsOptionsManager.update()();
    swift_beginAccess();
    type metadata accessor for LyricsOptionsManager.Observer();

    v2 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v2 != WeakArray.endIndex.getter())
    {
      v3 = WeakArray.subscript.getter();
      v2 = WeakArray.index(after:)(v2);
      if (v3)
      {
        v4 = *(v3 + 16);

        v4(v1);
      }
    }
  }

  return result;
}

uint64_t LyricsOptionsManager.update()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v44 = v3;
  v45 = v5;
  _sS2SSysWl_2();
  v6 = StringProtocol.components<A>(separatedBy:)();

  v8 = *(v6 + 16);
  if (!v8)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_100:

    v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX0B14OptionsManagerC6OptionO_SayAHGTt0g5Tf4g_n(v10);

    v42 = *(v43 + 40);
    *(v43 + 40) = v41;
    LyricsOptionsManager.currentOptions.didset(v42);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v9 < *(v6 + 16))
  {
    v11 = (v6 + 32 + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    ++v9;
    v14 = HIBYTE(v13) & 0xF;
    v15 = v12 & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      goto LABEL_7;
    }

    if ((v13 & 0x1000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v44 = v12;
        v45 = v13 & 0xFFFFFFFFFFFFFFLL;
        if (v12 == 43)
        {
          if (!v14)
          {
            goto LABEL_102;
          }

          if (--v14)
          {
            v18 = 0;
            v28 = &v44 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = (v30 + v29);
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v14)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v12 == 45)
        {
          if (!v14)
          {
            goto LABEL_104;
          }

          if (--v14)
          {
            v18 = 0;
            v22 = &v44 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = (v24 - v23);
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v14)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v14)
        {
          v18 = 0;
          v33 = &v44;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = (v35 + v34);
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v14)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v17 = *result;
        if (v17 == 43)
        {
          if (v15 < 1)
          {
            goto LABEL_105;
          }

          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (!result)
            {
              goto LABEL_61;
            }

            v25 = (result + 1);
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = (v27 + v26);
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v14)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v15 < 1)
          {
            goto LABEL_103;
          }

          v14 = v15 - 1;
          if (v15 != 1)
          {
            v18 = 0;
            if (result)
            {
              v19 = (result + 1);
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_69;
                }

                v18 = (v21 - v20);
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++v19;
                if (!--v14)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v14) = 0;
LABEL_70:
            if (v14)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_69;
          }

          v18 = 0;
          if (!result)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = (v32 + v31);
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v18 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_70;
    }

    v18 = specialized _parseInteger<A, B>(ascii:radix:)(v12, v13, 10);
    v40 = v39;

    if (v40)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          v36 = 5;
        }

        else
        {
          v36 = 6;
        }

        goto LABEL_92;
      }

      if (v18 == 7)
      {
        v36 = 7;
        goto LABEL_92;
      }

      if (v18 == 8)
      {
        v36 = 8;
        goto LABEL_92;
      }

      if (v18 == 1000)
      {
        v36 = 9;
LABEL_92:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          v10 = result;
        }

        v38 = v10[2];
        v37 = v10[3];
        if (v38 >= v37 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), (v38 + 1), 1, v10);
          v10 = result;
        }

        v10[2] = v38 + 1;
        v38[v10 + 32] = v36;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v36 = 2;
        }

        else if (v18 == 3)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_92;
      }

      if (!v18)
      {
        v36 = 0;
        goto LABEL_92;
      }

      if (v18 == 1)
      {
        v36 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v9 == v8)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities9WeakArrayVy7LyricsX0E14OptionsManagerC8ObserverCGMd);
  WeakArray.append(_:)();
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    specialized Set._Variant.insert(_:)(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    LyricsOptionsManager.currentOptions.didset(v5);
  }

  v6 = *(v1 + 40);

  specialized Set._Variant.insert(_:)(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  LyricsOptionsManager.currentOptions.didset(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    specialized Set._Variant.insert(_:)(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    LyricsOptionsManager.currentOptions.didset(v5);
  }

  v7 = *(v1 + 40);

  specialized Set._Variant.remove(_:)(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  LyricsOptionsManager.currentOptions.didset(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd_0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Locale.Language();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(v1 + 16);
  if (!v19)
  {
    return 1;
  }

  v20 = [v19 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v20)
  {
    return 1;
  }

  v62 = v5;
  v63 = a1;
  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = 0xD000000000000015;
  v65 = 0x80000001004D6690;
  AnyHashable.init<A>(_:)();
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v66), (v24 & 1) != 0))
  {
    outlined init with copy of Any(*(v22 + 56) + 32 * v23, v68);
    outlined destroy of AnyHashable(&v66);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd_0);
    if (swift_dynamicCast())
    {
      v25 = v64;
      if (!*(v64 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x80000001004D66B0), (v27 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      outlined init with copy of AnyHashable(*(v25 + 56) + 40 * v26, &v66);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_2);
      if (swift_dynamicCast())
      {
        result = v68[0];
        v55 = *(v68[0] + 16);
        if (v55)
        {
          v29 = 0;
          v53 = (v16 + 8);
          v30 = v68[0] + 40;
          v54 = v68[0];
          while (1)
          {
            v31 = *(result + 16);
            v60 = v29;
            if (v29 >= v31)
            {
              __break(1u);
              return result;
            }

            v59 = v30;

            Locale.Language.init(identifier:)();
            Locale.Language.languageCode.getter();
            v32 = type metadata accessor for Locale.LanguageCode();
            v33 = *(v32 - 8);
            v61 = *(v33 + 48);
            v34 = v61(v14, 1, v32);
            v56 = v33;
            if (v34 == 1)
            {
              outlined destroy of TaskPriority?(v14, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
              v58 = 0;
              v35 = 0;
            }

            else
            {
              v36 = Locale.LanguageCode.identifier.getter();
              v35 = v37;
              (*(v33 + 8))(v14, v32);
              v58 = v36;
              if (v36 == 26746 && v35 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                v57 = v35;
                Locale.Language.script.getter();
                v38 = type metadata accessor for Locale.Script();
                v39 = *(v38 - 8);
                if ((*(v39 + 48))(v8, 1, v38) == 1)
                {
                  outlined destroy of TaskPriority?(v8, &_s10Foundation6LocaleV6ScriptVSgMd_0);
                  v35 = v57;
                }

                else
                {

                  v41 = Locale.Script.identifier.getter();
                  v57 = v42;
                  v58 = v41;
                  (*(v39 + 8))(v8, v38);
                  v66 = 2975866;
                  v67 = 0xE300000000000000;
                  v43._countAndFlagsBits = v58;
                  v43._object = v57;
                  String.append(_:)(v43);

                  v35 = v67;
                  v58 = v66;
                }
              }
            }

            Locale.Language.languageCode.getter();
            if (v61(v11, 1, v32) == 1)
            {
              break;
            }

            v44 = Locale.LanguageCode.identifier.getter();
            v40 = v45;
            (*(v56 + 8))(v11, v32);
            if (v44 == 26746 && v40 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v61 = v44;
              v57 = v35;
              v46 = v62;
              Locale.Language.script.getter();
              v47 = type metadata accessor for Locale.Script();
              v48 = *(v47 - 8);
              if ((*(v48 + 48))(v46, 1, v47) == 1)
              {
                outlined destroy of TaskPriority?(v46, &_s10Foundation6LocaleV6ScriptVSgMd_0);
                v35 = v57;
                v44 = v61;
              }

              else
              {

                v61 = Locale.Script.identifier.getter();
                v50 = v49;
                (*(v48 + 8))(v46, v47);
                v66 = 2975866;
                v67 = 0xE300000000000000;
                v51._countAndFlagsBits = v61;
                v51._object = v50;
                String.append(_:)(v51);

                v44 = v66;
                v40 = v67;
                v35 = v57;
              }
            }

            if (!v35)
            {
              goto LABEL_40;
            }

            if (!v40)
            {
LABEL_15:

              (*v53)(v18, v15);
              goto LABEL_16;
            }

            if (v58 == v44 && v35 == v40)
            {

              (*v53)(v18, v15);
LABEL_44:

              return 0;
            }

            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v53)(v18, v15);
            if (v52)
            {
              goto LABEL_44;
            }

LABEL_16:
            v29 = v60 + 1;
            v30 = v59 + 16;
            result = v54;
            if (v55 == v60 + 1)
            {
              goto LABEL_42;
            }
          }

          outlined destroy of TaskPriority?(v11, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
          if (v35)
          {
            goto LABEL_15;
          }

          v40 = 0;
LABEL_40:
          (*v53)(v18, v15);
          if (!v40)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    outlined destroy of AnyHashable(&v66);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7LyricsX0B14OptionsManagerC6OptionO_Tt1g5(Swift::Int result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    v14 = qword_100519430[v13];
    Hasher._combine(_:)(v14);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_100519430[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_4);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t _sSh8_VariantV6insertySb8inserted_x17memberAfterInserttxnFSS_Tg5_0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    _ss10_NativeSetV9insertNew_2at8isUniqueyxn_s10_HashTableV6BucketVSbtFSS_Tg5_0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for SyncedLyricsLineView.Word();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo14MSVLyricsAgentC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SyncedLyricsLineView.Word();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v13);
        result = Hasher._finalize()();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SyncedLyricsLineView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t _ss10_NativeSetV6resize8capacityySi_tFSS_Tg5_0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_1);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int _ss10_NativeSetV9insertNew_2at8isUniqueyxn_s10_HashTableV6BucketVSbtFSS_Tg5_0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    _ss10_NativeSetV6resize8capacityySi_tFSS_Tg5_0();
  }

  else
  {
    if (v9 > v8)
    {
      result = _ss10_NativeSetV4copyyyFSS_Tg5_0();
      goto LABEL_16;
    }

    _ss10_NativeSetV13copyAndResize8capacityySi_tFSS_Tg5_0();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MSVLyricsAgent);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *_ss10_NativeSetV4copyyyFSS_Tg5_0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_1);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
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
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

uint64_t _ss10_NativeSetV13copyAndResize8capacityySi_tFSS_Tg5_0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_1);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

Swift::Int specialized Set._Variant.remove(_:)(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = specialized Set._Variant._migrateToNative(_:removing:)(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  specialized _NativeSet._delete(at:)(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = specialized Set._Variant._migrateToNative(_:removing:)();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for SyncedLyricsLineView();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewCGMd);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  specialized _NativeSet._delete(at:)(v11);
  result = v17;
  *v8 = v18;
  return result;
}

Swift::Int specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, Swift::UInt a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(v5, v4);
  v14 = v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  specialized _NativeSet._delete(at:)(v10);
  *v2 = v14;
  return v6;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC_Tt1g5(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for SyncedLyricsLineView();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  specialized _NativeSet._delete(at:)(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSS8_copyingyS2SFZ_0()
{
  v0 = String.subscript.getter();
  v4 = _sSS8_copyingySSSsFZ_0(v0, v1, v2, v3);

  return v4;
}

uint64_t _sSS8_copyingySSSsFZ_0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_4(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

uint64_t specialized LyricsOptionsManager.Option.init(rawValue:)(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 8)
  {
    if (result == 1000)
    {
      return 9;
    }

    return 10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option()
{
  result = lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option;
  if (!lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option;
  if (!lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option);
  }

  return result;
}

unint64_t _sSaySSGSayxGSKsWl_2()
{
  result = _sSaySSGSayxGSKsWL_2;
  if (!_sSaySSGSayxGSKsWL_2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd_2);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySSGSayxGSKsWL_2);
  }

  return result;
}

uint64_t sub_1004544F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t specialized Dictionary.subscript.getter(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

id SyncedLyricsLineView.SBS_TextContentView.TextView.specs.didset(unsigned __int8 *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(__dst, v6);
  LOBYTE(a1) = specialized static SyncedLyricsViewController.Specs.__derived_struct_equals(_:_:)(__dst, a1);
  result = outlined destroy of SyncedLyricsViewController.Specs(__dst);
  if ((a1 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
    v5 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
    if (v5)
    {
      if (*(v5 + 96))
      {
        [*(v5 + 96) removeFromSuperview];
      }
    }

    *&v1[v4] = 0;

    return [v1 setNeedsLayout];
  }

  return result;
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) != _)
  {
    *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = _;
    v3 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v3)
    {
      v5 = _;
      v6 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
      v85 = _;
      if (v6 && (v7 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel)) != 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);

        v9 = v7;
        v10 = SyncedLyricsLineView.SBS_TextContentView.TextView.translationAttributedText(with:)(v8, v6);

        [v9 setAttributedText:v10];
      }

      else
      {
      }

      v11 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v12 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v12 = 384;
      }

      v13 = *(v11 + 368);
      v14 = *(v11 + v12);
      v15 = v13;
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() animationWithKeyPath:v16];

      v77 = v11;
      CASpringAnimation.springParameters.setter([objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v11 + 664) stiffness:*(v11 + 672) damping:*(v11 + 680) initialVelocity:{0.0, 0.0}]);
      v18 = v17;
      if (v5)
      {
        v19 = v15;
      }

      else
      {
        v19 = v14;
      }

      if (v5)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = [v19 CGColor];
      [v18 setFromValue:v21];

      v89 = v20;
      v22 = [v20 CGColor];
      [v18 setToValue:v22];
      v73 = v18;

      v23 = swift_allocObject();
      *(v23 + 16) = _swiftEmptyArrayStorage;
      v24 = (v23 + 16);
      v25 = *(v3 + 56);
      v75 = v14;
      v76 = v15;
      v88 = v23;
      v83 = *(v25 + 16);
      if (v83)
      {
        v81 = v25 + 32;
        if (v5)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v27 = 0;
        v79 = v25;
        v74 = animated;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v28 = *(v81 + 8 * v27);
          if (animated && (v29 = *(v28 + 112)) != 0 && (v30 = *(v29 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer)) != 0)
          {

            v31 = v30;
            v32 = String._bridgeToObjectiveC()();
            [v31 addAnimation:v73 forKey:v32];

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          else
          {

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          v34 = *(v33 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer);
          if (v34)
          {
            v35 = v34;
            v36 = [v89 CGColor];
            [v35 setBackgroundColor:v36];
          }

LABEL_31:
          v5 = swift_allocObject();
          *(v5 + 16) = v28;
          *(v5 + 24) = v85;
          *(v5 + 32) = v23;
          *(v5 + 40) = v14;
          *(v5 + 48) = v15;
          v87 = v27;
          if (animated)
          {
            type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
            v37 = v77[83];
            v38 = v77[84];
            v39 = v77[85];
            v40 = objc_allocWithZone(UISpringTimingParameters);
            v41 = v14;
            v42 = v15;

            v43 = [v40 initWithMass:v37 stiffness:v38 damping:v39 initialVelocity:{0.0, 0.0}];
            v44 = swift_allocObject();
            *(v44 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:);
            *(v44 + 24) = v5;

            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v43, 0, partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:), v44, 0, 0, 0.0);
          }

          else
          {
            v45 = *(v28 + 112);
            if (v45 && (v46 = *(v45 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
            {
              v47 = v14;
              v48 = v15;

              [v46 setAlpha:v26];
            }

            else
            {
              v49 = v14;
              v50 = v15;
            }

            swift_beginAccess();
            v51 = *(v28 + 16);
            if (v51 >> 62)
            {
              v52 = _CocoaArrayWrapper.endIndex.getter();
              if (v52)
              {
LABEL_39:
                if (v52 < 1)
                {
                  goto LABEL_87;
                }

                for (i = 0; i != v52; ++i)
                {
                  if ((v51 & 0xC000000000000001) != 0)
                  {
                    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v54 = *(v51 + 8 * i + 32);
                  }

                  swift_beginAccess();

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v55 = *(v54 + 208);
                  if (v55)
                  {
                    v56 = *(v55 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
                    [v56 setBackgroundColor:v89];
                  }
                }

                v14 = v75;
                v15 = v76;
                animated = v74;
                goto LABEL_21;
              }
            }

            else
            {
              v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_21:
          v23 = v88;
          v27 = v87 + 1;
          v25 = v79;
          if (v87 + 1 == v83)
          {

            break;
          }
        }
      }

      swift_beginAccess();
      v5 = *v24;
      if (*v24 >> 62)
      {
        goto LABEL_88;
      }

      v57 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        while (1)
        {
          v86 = v5 & 0xC000000000000001;
          v78 = v5 + 32;
          v80 = v5 & 0xFFFFFFFFFFFFFF8;
          v14 = &v92;

          v58 = 0;
          v82 = v57;
          v84 = v5;
          while (1)
          {
            if (v86)
            {
              v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v58 >= *(v80 + 16))
              {
                goto LABEL_86;
              }

              v59 = *(v78 + 8 * v58);

              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            SyncedLyricsLineView.Word.resetAnimation()();
            v61 = *(v59 + 104);
            if (!(v61 >> 62))
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                break;
              }

              goto LABEL_81;
            }

            v62 = _CocoaArrayWrapper.endIndex.getter();
            if (v62)
            {
              break;
            }

LABEL_81:

LABEL_56:
            if (v58 == v57)
            {

              goto LABEL_90;
            }
          }

          if (v62 >= 1)
          {
            break;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v57 = _CocoaArrayWrapper.endIndex.getter();
          if (!v57)
          {
            goto LABEL_89;
          }
        }

        v63 = 0;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v69 = *(v61 + 8 * v63 + 32);
          }

          v70 = *(v69 + 136);
          v71 = *(v69 + 144);
          if (v71 == 1)
          {
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (*(v69 + 144))
            {
              v72 = 1;
            }

            else
            {
              v72 = v70 == 0;
            }

            if (v72)
            {
LABEL_79:
              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
              v70 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
              goto LABEL_69;
            }
          }

          outlined copy of AnimationStatus(*(v69 + 136), *(v69 + 144));
          outlined copy of AnimationStatus(v70, v71);
          [(objc_class *)v70 stopAnimation:1];
LABEL_69:
          ++v63;
          v94 = partial apply for closure #1 in SyncedLyricsLineView.Syllable.resetLift(specs:);
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = thunk for @escaping @callee_guaranteed () -> ();
          v93 = &block_descriptor_456;
          v64 = _Block_copy(&aBlock);

          [(objc_class *)v70 addAnimations:v64];
          _Block_release(v64);
          v94 = partial apply for closure #2 in SyncedLyricsLineView.Syllable.resetLift(specs:);
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v93 = &block_descriptor_459;
          v65 = _Block_copy(&aBlock);

          v66 = v70;

          [(objc_class *)v66 addCompletion:v65];
          _Block_release(v65);
          v67 = *(v69 + 136);
          *(v69 + 136) = v66;
          v68 = *(v69 + 144);
          *(v69 + 144) = 1;
          outlined consume of AnimationStatus(v67, v68);
          [(objc_class *)v66 startAnimation];

          if (v62 == v63)
          {

            v57 = v82;
            v5 = v84;
            goto LABEL_56;
          }
        }
      }

LABEL_89:

LABEL_90:
    }
  }
}

uint64_t closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v11)
    {
      v12 = 0.0;
      if (a2)
      {
        v12 = 1.0;
      }

      [v11 setAlpha:v12];
    }
  }

  result = swift_beginAccess();
  v14 = *(a1 + 16);
  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      a4 = a5;
    }

    for (i = 0; i != v15; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v14 + 8 * i + 32);
      }

      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v18 = *(v17 + 208);
      if (v18)
      {
        v19 = *(v18 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
        [v19 setBackgroundColor:a4];
      }
    }
  }

  return result;
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(uint64_t result, double a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
  {
    if (result)
    {
      v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
      if (!v5)
      {
        return result;
      }

      v6 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448];
      result = memcpy(__dst, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
      v7 = *(v5 + 56);
      v8 = *(v7 + 16);
      if (!v8)
      {
        return result;
      }

      v9 = v6 + a2;

      outlined init with copy of SyncedLyricsViewController.Specs(__dst, v57);

      v10 = 0;
      while (v10 < *(v7 + 16))
      {
        ++v10;

        SyncedLyricsLineView.Line.animate(progress:specs:)(__dst, v9);

        if (v8 == v10)
        {

          return outlined destroy of SyncedLyricsViewController.Specs(__dst);
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v44 = objc_opt_self();
      v45 = swift_allocObject();
      *(v45 + 16) = v3;
      *(v45 + 24) = a2;
      v46 = swift_allocObject();
      *(v46 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:);
      *(v46 + 24) = v45;
      __dst[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      __dst[5] = v46;
      __dst[0] = _NSConcreteStackBlock;
      __dst[1] = 1107296256;
      __dst[2] = thunk for @escaping @callee_guaranteed () -> ();
      __dst[3] = &block_descriptor_447;
      v47 = _Block_copy(__dst);
      v48 = v3;

      [v44 performWithoutAnimation:v47];
      _Block_release(v47);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
    return result;
  }

  v11 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v11)
  {
    _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC0H0C_SayAKGTt0g5(_swiftEmptyArrayStorage);
    v12 = v50;
    v13 = *(v50 + 16);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_43:
  }

  v12 = *(v11 + 56);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_43;
  }

LABEL_11:
  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
  v14 = 0;
  v15 = v12 + 32;
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v53 = v12;
  v54 = v2;
  v52 = v13;
  v51 = v12 + 32;
  v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  while (1)
  {
    v17 = *(v15 + 8 * v14++);
    memcpy(__dst, &v3[v16], 0x2B0uLL);
    *(v17 + 120) = 1;

    outlined init with copy of SyncedLyricsViewController.Specs(__dst, v57);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    swift_weakInit();

    OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #1 in SyncedLyricsLineView.Line.resetGradient(specs:), v19);

    if ((*(v17 + 57) & 1) == 0)
    {
      break;
    }

    result = swift_beginAccess();
    v20 = *(v17 + 16);
    if (v20 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v21 = result;
      if (!result)
      {
LABEL_36:
        outlined destroy of SyncedLyricsViewController.Specs(__dst);

        v16 = v55;
        if (v14 == v13)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_36;
      }
    }

    if (v21 < 1)
    {
      goto LABEL_47;
    }

    v56 = v14;

    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 208);
        if (!v23)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v24 = *(v20 + 8 * i + 32);

        v23 = *(v24 + 208);
        if (!v23)
        {
          goto LABEL_17;
        }
      }

      v25 = *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
      if (v25)
      {
        v26 = *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
        v27 = *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
        v28 = v23;
        outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(v25, v26);
        v29 = v27;
        v30 = v25;
        [v29 setBackgroundColor:v30];
      }

LABEL_17:
    }

    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    v12 = v53;
    v3 = v54;
    v13 = v52;
    v16 = v55;
    v14 = v56;
    v15 = v51;
    if (v56 == v52)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v31 = *(v17 + 112);
  if (v31 && (v32 = *(v31 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
  {
    v33 = __dst[25];
    v34 = v32;
    [v33 lineHeight];
    v36 = vabdd_f64(v35 * *&__dst[32] + *&__dst[58] + *&__dst[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
    if (*(v17 + 58))
    {
      v37 = v36 + CGRectGetWidth(*(v17 + 80));
      v38 = -v36;
    }

    else
    {
      v38 = -v36;
      v37 = -v36;
    }

    v39 = *(v17 + 80);
    v40 = *(v17 + 88);
    v41 = *(v17 + 96);
    v42 = *(v17 + 104);
    v43 = v34;
    v60.origin.x = v39;
    v60.origin.y = v40;
    v60.size.width = v41;
    v60.size.height = v42;
    [v43 setFrame:{v37, v38, v36, v36 + v36 + CGRectGetHeight(v60)}];
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
}

uint64_t closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(uint64_t result, double a2)
{
  v2 = *(result + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    v4 = *(result + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448);
    result = memcpy(__dst, (result + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs), sizeof(__dst));
    v5 = *(v2 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 + a2;

      outlined init with copy of SyncedLyricsViewController.Specs(__dst, &v9);

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        ++v8;

        SyncedLyricsLineView.Line.animate(progress:specs:)(__dst, v7);

        if (v6 == v8)
        {

          return outlined destroy of SyncedLyricsViewController.Specs(__dst);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.TextView.needsLayout(for:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    if (vabdd_f64(a1, *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth)) < 1.0)
    {
      return 0;
    }

    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[10];
    v7 = v2[11];

    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    if (vabdd_f64(a1, CGRectGetWidth(v21)) < 1.0)
    {

      return 0;
    }

    v8 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (!v8)
    {

      return 1;
    }

    v9 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    if (*(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate) >= 3uLL)
    {
      v16 = v9[3];
      v15 = v9[4];
      v18 = v9[1];
      v17 = v9[2];
      v19 = v8;
      v10 = v18;
      v11 = v17;
      v12 = v16;
      v13 = v15;
    }

    else
    {
      [v8 frame];
    }

    Width = CGRectGetWidth(*&v10);

    if (vabdd_f64(a1, Width) < 1.0)
    {
      return 0;
    }
  }

  return 1;
}

double SyncedLyricsLineView.SBS_TextContentView.TextView.sizeThatFits(_:)(double a1, double a2)
{
  v4 = 0.0;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = SyncedLyricsLineView.SBS_TextContentView.TextView.needsLayout(for:)(a1);
    if (v6)
    {
      v7 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
      _sS2SSysWl_2();
      *v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v7[1] = v8;

      *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = a1;
    }

    SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(v6 & 1, 0, a1, a2);
    v9 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v10 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (v11)
    {
      v12 = v10 == 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v13)
      {
        return *(v13 + 80);
      }
    }

    else
    {
      v14 = v9[1];
      v15 = v9[2];
      v4 = v9[3];
      v16 = v9[4];
      v17 = v11;
      v18 = v17;
      if (v10 <= 2)
      {
        [v17 frame];
        v14 = v19;
        v15 = v20;
        v4 = v21;
        v16 = v22;
      }

      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v4;
      v24.size.height = v16;
      CGRectGetMaxY(v24);
    }
  }

  return v4;
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.TextView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v2 = SyncedLyricsLineView.SBS_TextContentView.TextView.needsLayout(for:)(v1);
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v8 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v9 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
    v7 = _sS2SSysWl_2();
    *v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v3[1] = v4;

    [v0 bounds];
    *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = CGRectGetWidth(v11);
  }

  [v0 bounds];
  SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(v2 & 1, 0, v5, v6);
  SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()();
  SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(0, *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress]);
}

id SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()()
{
  v3 = v0;
  result = [v0 bounds];
  if (v5 <= 0.0 || !*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer])
  {
    return result;
  }

  v123 = v0;
  v124 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  v7 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v8 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  swift_beginAccess();
  v9 = *(v8 + 48);
  v142[2] = *(v8 + 32);
  v142[3] = v9;
  v10 = *(v8 + 80);
  v142[4] = *(v8 + 64);
  v142[5] = v10;
  v11 = *(v8 + 16);
  v142[0] = *v8;
  v142[1] = v11;
  v12 = *(&v10 + 1);
  v13 = v10;
  if (*(&v142[0] + 1))
  {

    v14 = v13;
    v15 = v12;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v139[0] = v142[0];
  v16 = *(v8 + 32);
  v139[1] = *(v8 + 16);
  v139[2] = v16;
  v17 = *(v8 + 64);
  v139[3] = *(v8 + 48);
  v139[4] = v17;
  v140 = v13;
  v141 = v12;

  v18 = v124;

  outlined init with copy of TaskPriority?(v142, __dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
  outlined destroy of TaskPriority?(v139, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
  v19 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject_5.opt_class_meths;
  if (!v6)
  {
    if (!v15)
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  if (!v15)
  {
LABEL_12:
    v21 = v123;

    goto LABEL_13;
  }

  if (v7 == v14 && v6 == v15)
  {

LABEL_46:
    LODWORD(rect) = 1;
    v21 = v123;
    goto LABEL_49;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v21 = v123;
  if ((v84 & 1) == 0)
  {
LABEL_13:
    v22 = *(v8 + 16);
    __dst[0] = *v8;
    __dst[1] = v22;
    v23 = *(v8 + 48);
    __dst[2] = *(v8 + 32);
    __dst[3] = v23;
    v24 = *(v8 + 80);
    __dst[4] = *(v8 + 64);
    __dst[5] = v24;
    if (*(&__dst[0] + 1))
    {
      v125 = *(&__dst[1] + 1);
      v25 = *&__dst[1];
      v26 = *(&__dst[2] + 1);
      v113 = __dst[4];
      v114 = __dst[3];
      v27 = objc_opt_self();
      v135 = __dst[2];
      v136 = __dst[3];
      v137 = __dst[4];
      v138 = __dst[5];
      v133 = __dst[0];
      v134 = __dst[1];
      outlined init with copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TextLayoutDiffMetadata(&v133, &aBlock);
      if ([v27 _isInAnimationBlockWithAnimationsEnabled] && v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == 1 && *&v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] == 2)
      {
        v118 = *(v26 + 16);
        v112 = v8;
        if (!v118)
        {
          goto LABEL_77;
        }

        v117 = v26 + 32;

        v28 = 0.0;
        v115 = v26;
        v116 = v25;
        while (1)
        {
          if (*&v28 >= *(v26 + 16))
          {
            goto LABEL_95;
          }

          v8 = *(v117 + 8 * *&v28);
          recta = v28;
          if (v25[2] && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v30 & 1) != 0))
          {
            v25 = *(v25[7] + 8 * v29);
          }

          else
          {
            v25 = &_swiftEmptySetSingleton;
          }

          swift_beginAccess();

          v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v31);

          v33 = specialized Set.subtracting(_:)(v32, v25);

          if ((v33 & 0xC000000000000001) != 0)
          {
            v25 = __CocoaSet.makeIterator()();
            type metadata accessor for SyncedLyricsLineView.Word();
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
            Set.Iterator.init(_cocoa:)();
            v33 = v143;
            v34 = v144;
            v35 = v145;
            p_opt_class_meths = v146;
            v36 = v147;
          }

          else
          {
            p_opt_class_meths = 0;
            v37 = -1 << *(v33 + 32);
            v34 = (v33 + 56);
            v35 = ~v37;
            v38 = -v37;
            v39 = v38 < 64 ? ~(-1 << v38) : -1;
            v36 = v39 & *(v33 + 56);
          }

          *&rect = *&recta + 1;
          v19 = ((v35 + 64) >> 6);
          while (1)
          {
            v18 = p_opt_class_meths;
            if ((v33 & 0x8000000000000000) == 0)
            {
              break;
            }

            v25 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v43 = __CocoaSet.Iterator.next()();
            if (!v43)
            {
              goto LABEL_19;
            }

            *&v126[0] = v43;
            type metadata accessor for SyncedLyricsLineView.Word();
            swift_dynamicCast();
            v42 = aBlock;
            if (!aBlock)
            {
              goto LABEL_19;
            }

LABEL_42:
            if (v125[2])
            {
              v25 = v125;
              v44 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
              if (v45)
              {
                v46 = *(v42 + 208);
                if (v46)
                {
                  v47 = v125[7] + 32 * v44;
                  v49 = *(v47 + 16);
                  v48 = *(v47 + 24);
                  v2 = *v47;
                  v1 = *(v47 + 8);
                  v25 = v46;
                  v150.origin.x = v2;
                  v150.origin.y = v1;
                  v150.size.width = v49;
                  v150.size.height = v48;
                  Width = CGRectGetWidth(v150);
                  v51 = Width - CGRectGetWidth(*(v8 + 80));
                  [v25 frame];
                  [v25 setFrame:v52 - v51];
                }
              }
            }
          }

          v40 = p_opt_class_meths;
          v41 = v36;
          if (v36)
          {
            break;
          }

          while (1)
          {
            p_opt_class_meths = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              __break(1u);
              goto LABEL_93;
            }

            if (p_opt_class_meths >= v19)
            {
              break;
            }

            v41 = *&v34[8 * p_opt_class_meths];
            v40 = (v40 + 1);
            if (v41)
            {
              goto LABEL_38;
            }
          }

LABEL_19:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();

          v28 = rect;
          v18 = v124;
          v19 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
          v26 = v115;
          v25 = v116;
          if (*&rect == v118)
          {

            v8 = v112;
LABEL_77:
            v91 = *(v18 + 8);
            v92 = v18[9];
            v93 = v18[10];
            v94 = v18[11];
            *(v18 + 4) = v114;
            *(v18 + 5) = v113;
            v25 = swift_allocObject();
            v25[2] = v18;
            v125 = v91;
            v25[3] = v91;
            *(v25 + 4) = v92;
            rect = v92;
            v1 = v93;
            *(v25 + 5) = v93;
            *(v25 + 6) = v94;
            v2 = v94;

            p_opt_class_meths = _swiftEmptyArrayStorage;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_96;
          }
        }

LABEL_38:
        v36 = (v41 - 1) & v41;
        v42 = *(*(v33 + 48) + ((p_opt_class_meths << 9) | (8 * __clz(__rbit64(v41)))));

        if (!v42)
        {
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      outlined destroy of TaskPriority?(__dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
    }

    LODWORD(rect) = 0;
    goto LABEL_49;
  }

  LODWORD(rect) = 1;
LABEL_49:
  v53 = *&v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment];
  if (v53 == 1)
  {
    [v21 bounds];
    v54 = (CGRectGetMaxX(v152) - v124[10]) * 0.5;
    goto LABEL_53;
  }

  if (v53 == 2)
  {
    [v21 bounds];
    v54 = CGRectGetMaxX(v151) - v124[10];
LABEL_53:
    v124[8] = v54;
  }

  p_opt_class_meths = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_55:
    if (v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v56 = (v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] & 1) != 0;
      if (v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
      {
        v57 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 384];
      }

      else
      {
        v57 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 360];
      }
    }

    else
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v57 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 368];
      v56 = v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind];
    }

    v58 = *v57;
    memcpy(__dst, &v21[v55], 0x2B0uLL);
    v59 = v58;
    outlined init with copy of SyncedLyricsViewController.Specs(__dst, &v133);
    v60 = SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:)(v59, v56, __dst);
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    [v21 addSubview:v60];
    v125 = objc_opt_self();
    if (![v125 v19[59]])
    {

      goto LABEL_68;
    }

    v61 = &v21[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v62 = v61 + 8;
    v63 = *v61;
    if (*v61 != 2)
    {
      v124 = p_opt_class_meths;
      v119 = v60;
      v65 = *(v61 + 3);
      v64 = *(v61 + 4);
      v66 = v8;
      v67 = *(v61 + 1);
      v68 = *(v61 + 2);
      v148[0] = *v61;
      v148[1] = v67;
      v148[2] = v68;
      v148[3] = v65;
      v148[4] = v64;
      outlined copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(v63);
      SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(v148);
      v8 = v66;
      v60 = v119;
      p_opt_class_meths = v124;
      outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v63);
      v69 = *v61;
      *v61 = 2;
      *v62 = 0u;
      *(v61 + 24) = 0u;
      outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v69);
    }

    v70 = *(v8 + 16);
    aBlock = *v8;
    v71 = *(v8 + 32);
    v72 = *(v8 + 64);
    v73 = *(v8 + 80);
    v130 = *(v8 + 48);
    v131 = v72;
    v132 = v73;
    v128 = v70;
    v129 = v71;
    if (*(&aBlock + 1))
    {
      v133 = aBlock;
      v74 = *(v8 + 64);
      v136 = *(v8 + 48);
      v137 = v74;
      v138 = *(v8 + 80);
      v75 = *(v8 + 32);
      v134 = *(v8 + 16);
      v135 = v75;
      if ((LOBYTE(rect) & 1) == 0)
      {
        break;
      }
    }

    if (v63 != 2)
    {

      goto LABEL_74;
    }

    v21 = v123;
LABEL_68:
    v25 = swift_allocObject();
    v25[2] = v21;
    v25[3] = v18;
    v76 = swift_allocObject();
    *(v76 + 16) = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews();
    *(v76 + 24) = v25;
    *&v129 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    *(&v129 + 1) = v76;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v128 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v128 + 1) = &block_descriptor_425;
    v77 = _Block_copy(&aBlock);
    v19 = *(&v129 + 1);

    v18 = v21;

    [v125 performWithoutAnimation:v77];

    _Block_release(v77);
    LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

    if ((v77 & 1) == 0)
    {
      v78 = v18 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
      v79 = *(v18 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
      *v78 = 2;
      *(v78 + 8) = 0u;
      *(v78 + 24) = 0u;
      outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v79);
      v80 = *(v8 + 32);
      v81 = *(v8 + 64);
      v82 = *(v8 + 80);
      v130 = *(v8 + 48);
      v131 = v81;
      v132 = v82;
      v83 = *(v8 + 16);
      aBlock = *v8;
      v128 = v83;
      v129 = v80;
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      outlined destroy of TaskPriority?(&aBlock, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
    }

    while (1)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      p_opt_class_meths = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1(0, p_opt_class_meths[2] + 1, 1, p_opt_class_meths);
LABEL_78:
      v96 = p_opt_class_meths[2];
      v95 = p_opt_class_meths[3];
      if (v96 >= v95 >> 1)
      {
        p_opt_class_meths = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1((v95 > 1), v96 + 1, 1, p_opt_class_meths);
      }

      p_opt_class_meths[2] = (v96 + 1);
      v97 = &p_opt_class_meths[2 * v96];
      v97[4] = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews();
      v97[5] = v25;
      v25 = *(v18 + 7);
      v98 = v25[2];
      if (!v98)
      {
        break;
      }

      v120 = Int.seconds.getter(0);

      v8 = 0;
      while (v8 < v25[2])
      {
        v19 = v25[v8 + 4];
        v99 = *(v19 + 10);
        v100 = *(v19 + 11);
        v102 = *(v19 + 12);
        v101 = *(v19 + 13);

        v153.origin.x = v99;
        v153.origin.y = v100;
        v153.size.width = v102;
        v153.size.height = v101;
        MaxX = CGRectGetMaxX(v153);
        *&v154.origin.x = v125;
        v154.origin.y = rect;
        v154.size.width = v1;
        v154.size.height = v2;
        v104 = v120;
        if (CGRectGetWidth(v154) < MaxX)
        {
          v105 = CGRectGetMaxX(*(v19 + 10));
          *&v155.origin.x = v125;
          v155.origin.y = rect;
          v155.size.width = v1;
          v155.size.height = v2;
          v104 = v105 - CGRectGetWidth(v155);
        }

        v106 = CGRectGetWidth(*(v18 + 8));
        v156.origin.x = v104 + v106 - CGRectGetWidth(*(v19 + 10));
        *&v156.size.width = v19[12];
        *&v156.size.height = v19[13];
        *&v157.origin.x = v19[10];
        *&v156.origin.y = v19[11];
        v19[10] = *&v156.origin.x;
        v157.origin.y = v156.origin.y;
        v157.size.width = v156.size.width;
        v157.size.height = v156.size.height;
        if (!CGRectEqualToRect(v156, v157))
        {
          v19[16] = 0;
        }

        v107 = swift_allocObject();
        *(v107 + 2) = v19;
        v107[3] = v99;
        v107[4] = v100;
        v107[5] = v102;
        v107[6] = v101;
        v108 = p_opt_class_meths[2];
        v109 = p_opt_class_meths[3];
        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = p_opt_class_meths;

        if (v108 >= v109 >> 1)
        {
          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1((v109 > 1), v108 + 1, 1, p_opt_class_meths);
        }

        ++v8;

        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2] = (v108 + 1);
        p_opt_class_meths = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1;
        v111 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2 * v108];
        v111[4] = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews();
        v111[5] = v107;
        v18 = v124;
        if (v98 == v8)
        {

          outlined destroy of TaskPriority?(__dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
          LODWORD(rect) = 0;
          v8 = v112;
          v21 = v123;
          v19 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
          goto LABEL_55;
        }
      }

LABEL_93:
      __break(1u);
    }

    outlined destroy of TaskPriority?(__dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
    LODWORD(rect) = 0;
    v21 = v123;
  }

  v85 = swift_allocObject();
  *(v85 + 16) = p_opt_class_meths;
  *(v85 + 24) = v123;
  outlined init with copy of TaskPriority?(&aBlock, v126, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
  v86 = v123;
  SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(&v133, partial apply for specialized closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews(), v85);

  outlined destroy of TaskPriority?(&aBlock, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
LABEL_74:
  v87 = *v61;
  *v61 = 2;
  *v62 = 0u;
  *(v61 + 24) = 0u;
  outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v87);
  v88 = *(v8 + 48);
  v126[2] = *(v8 + 32);
  v126[3] = v88;
  v89 = *(v8 + 80);
  v126[4] = *(v8 + 64);
  v126[5] = v89;
  v90 = *(v8 + 16);
  v126[0] = *v8;
  v126[1] = v90;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  return outlined destroy of TaskPriority?(v126, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd);
}