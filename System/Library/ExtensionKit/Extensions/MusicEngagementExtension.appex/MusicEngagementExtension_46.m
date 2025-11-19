uint64_t specialized OrderedSet._regenerateHashTable()(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v4 || *(v5 + 16) >= 0x10uLL)
  {
    v7 = static _HashTable.scale(forCapacity:)();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5Tm(v5, v8, 0, v4, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5Tm(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  v9 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v11 = _HashTable.init(scale:reservedScale:)();
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, v11 + 16, v11 + 32, a5);
    return v11;
  }

  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v9 = _HashTable.init(scale:reservedScale:)();
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v9 + 16));
    return v9;
  }

  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v7)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, void *a3)
{
  v22 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      while (1)
      {
        v4 = v22 + 56 * v3;
        v5 = *v4;
        v6 = *(v4 + 8);
        v7 = *(v4 + 32);
        v24 = *(v4 + 40);
        v25 = *(v4 + 48);
        Hasher.init(_seed:)();
        if (v5 == 0.0)
        {
          v8 = 0.0;
        }

        else
        {
          v8 = v5;
        }

        Hasher._combine(_:)(*&v8);
        if (v6 == 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v6;
        }

        Hasher._combine(_:)(*&v9);

        String.hash(into:)();
        v10 = *(v7 + 16);
        Hasher._combine(_:)(v10);
        if (v10)
        {
          v11 = (v7 + 80);
          do
          {
            v12 = *(v11 - 6);
            v13 = *(v11 - 5);
            v14 = *(v11 - 2);
            v15 = *(v11 - 1);
            v17 = *v11;
            v11 += 7;
            v16 = *&v17;
            if (v12 == 0.0)
            {
              v12 = 0.0;
            }

            Hasher._combine(_:)(*&v12);
            if (v13 == 0.0)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = v13;
            }

            Hasher._combine(_:)(*&v18);

            String.hash(into:)();
            Hasher._combine(_:)(v14);
            Hasher._combine(_:)(v15);
            Hasher._combine(_:)(v16);

            --v10;
          }

          while (v10);
        }

        if (v25)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v19 = (v24 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v24 : 0;
          Hasher._combine(_:)(v19);
        }

        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v20 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v20)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v3 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v7);
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, id *, id), void (*a7)(id *, uint64_t, unint64_t))
{
  v12 = a2 >> 62;
  if (a2 >> 62)
  {
    v22 = a3;
    v23 = a4;
    _CocoaArrayWrapper.endIndex.getter();
    a4 = v23;
    a3 = v22;
  }

  if (a4)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v14 = static _HashTable.scale(forCapacity:)();
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 4)
  {
    if (v12)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSiSRyAOGXEfU_Say7f3X06g2Q8hI10Z18S0CG_TG5Tf3nnnpf_nTf1cn_nTm = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57LyricsX06SyncedI8LineViewC0K0C_SiTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i3X06j2F8kl187C0H0C_SiTG50159_s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSiSRyAOGXEfU_Say7f3X06g2Q8hI10Z18S0CG_TG5Tf3nnnpf_nTf1cn_nTm(a2, a7);
        goto LABEL_21;
      }

      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 2)
      {
        DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSiSRyAOGXEfU_Say7f3X06g2Q8hI10Z18S0CG_TG5Tf3nnnpf_nTf1cn_nTm = specialized closure #1 in static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)((a2 & 0xFFFFFFFFFFFFFF8) + 32, v17, a7);
LABEL_21:
        v21 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSiSRyAOGXEfU_Say7f3X06g2Q8hI10Z18S0CG_TG5Tf3nnnpf_nTf1cn_nTm;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v17;
    return result;
  }

  v19 = _HashTable.init(scale:reservedScale:)();
  specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(&v24, a2, (v19 + 16), v19 + 32, a6);
  result = v19;
  v21 = v24;
LABEL_22:
  *a1 = v21;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX0Q0C4WordVG_Tt3g5(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = _HashTable.init(scale:reservedScale:)();
    specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = specialized closure #1 in static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)((a2 + 32), v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

id *_ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC7LyricsX06SyncedD8LineViewC0F0C_SayAJGTt0g5Tm(unint64_t a1, void (*a2)(id *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7LyricsX06SyncedH8LineViewC0J0C_Tt1g5Tm(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized closure #1 in static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(uint64_t a1, uint64_t a2, void (*a3)(id *, uint64_t, unint64_t))
{
  v11 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, a3);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v8 = v11[2];
        v9 = (v11 + 4);
        while (v8)
        {
          v10 = *v9++;
          --v8;
          if (*(a1 + 8 * v6) == v10)
          {
            goto LABEL_12;
          }
        }

        swift_retain_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();

        ++v6;
        if (v7 == a2)
        {
          v6 = a2;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_12:

    return v6;
  }

  return result;
}

id *specialized closure #1 in static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v16 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_12:

    return v2;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = a1[1];
      v17 = *a1;
      v18 = v7;
      v19 = a1[2];
      v20 = *(a1 + 48);
      if (specialized ContiguousArray<A>._contains(_:)(&v17, v5))
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      outlined init with copy of String(&v21, v15);
      outlined init with copy of TaskPriority?(&v22, v15, &_sSay7LyricsX0A0C8SyllableVGMd);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1);
        v5 = v16;
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v5 = v16;
      }

      ++v6;
      v5[2] = (v10 + 1);
      v11 = &v5[7 * v10];
      v12 = v17;
      v13 = v18;
      v14 = v19;
      *(v11 + 80) = v20;
      *(v11 + 3) = v13;
      *(v11 + 4) = v14;
      *(v11 + 2) = v12;
      a1 = (a1 + 56);
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    v2 = v6;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray<A>._contains(_:)(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 32;
  v6 = *a1;
  v27 = *(a2 + 16);
  v26 = a2 + 32;
  while (1)
  {
    v8 = v5 + 56 * v4;
    if (v6 != *v8 || v3[1] != *(v8 + 8))
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v25 = *(v8 + 48);
    result = *(v3 + 2);
    if (result != *(v8 + 16) || *(v3 + 3) != *(v8 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v3 + 4);
    v14 = *(v13 + 16);
    if (v14 != *(v9 + 16))
    {
      goto LABEL_6;
    }

    if (v14 && v13 != v9)
    {
      break;
    }

LABEL_20:
    if (v3[6])
    {
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      v7 = v25;
      if (v3[5] != v10)
      {
        v7 = 1;
      }

      if (v7 != 1)
      {
        return 1;
      }
    }

LABEL_6:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v16 = (v13 + 80);
  v17 = v9 + 40;
  while (v14)
  {
    if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
    {
      goto LABEL_6;
    }

    result = *(v16 - 4);
    v19 = *(v16 - 2);
    v20 = *(v16 - 1);
    v21 = *v16;
    v22 = *(v17 + 24);
    v23 = *(v17 + 32);
    v24 = *(v17 + 40);
    if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v19 != v22 || v20 != v23 || *&v21 != v24)
    {
      goto LABEL_6;
    }

    v16 += 7;
    v17 += 56;
    if (!--v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(void *a1, int64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, id *, id))
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v6 = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57LyricsX06SyncedI8LineViewC0K0C_Sb7success_Si3endtTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i3X06j2F8kL27C0H0C_Sb7success_Si3endtTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAKSbAL_SiAMtIsgyrzo_Tf1cn_nTf4ng_nTm(a2, a5);
  }

  else
  {
    v6 = specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v7;
  return v6 & 1;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(Swift::Int result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v8 = *(v5 + 8 * i);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      result = Hasher._finalize()();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      while (1)
      {
        v9 = _HashTable.BucketIterator.currentValue.getter();
        if (v10)
        {
          break;
        }

        if (*(v5 + 8 * v9) == *(v5 + 8 * i))
        {
          return 0;
        }

        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (v7 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = result;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_52;
  }

  v4 = a3;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v6 = v44 + 56 * v5;
    v7 = *(v6 + 32);
    v57 = *(v6 + 16);
    v58 = v7;
    v56 = *v6;
    v45 = v6;
    v59 = *(v6 + 48);
    v60[0] = v57;
    v61 = v7;
    Hasher.init(_seed:)();
    outlined init with copy of String(v60, v46);
    outlined init with copy of TaskPriority?(&v61, v46, &_sSay7LyricsX0A0C8SyllableVGMd);
    Lyrics.Word.hash(into:)(v47);
    result = Hasher._finalize()();
    v8 = 1 << *v4;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v41 = v5 + 1;
    v11 = v10 & result;
    v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v14 = v13;
    v16 = v15;
    outlined destroy of String(v60);
    outlined destroy of TaskPriority?(&v61, &_sSay7LyricsX0A0C8SyllableVGMd);
    *&v48 = v4;
    *(&v48 + 1) = a4;
    *&v49 = v11;
    *(&v49 + 1) = v12;
    *&v50 = v14;
    *(&v50 + 1) = v16;
    v51 = 0;
    v55 = 0;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    while (1)
    {
      v17 = _HashTable.BucketIterator.currentValue.getter();
      if (v18)
      {
        break;
      }

      v19 = v44 + 56 * v17;
      if (*v19 == *v45 && *(v19 + 8) == *(v45 + 8))
      {
        result = *(v19 + 16);
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
        v23 = *(v45 + 32);
        v24 = *(v45 + 40);
        v42 = *(v45 + 48);
        v43 = *(v19 + 48);
        v25 = result == *(v45 + 16) && *(v19 + 24) == *(v45 + 24);
        if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          v26 = *(v21 + 16);
          if (v26 == *(v23 + 16))
          {
            if (v26)
            {
              v27 = v21 == v23;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v29 = (v21 + 80);
              v30 = v23 + 40;
              while (v26)
              {
                if (*(v29 - 6) != *(v30 - 8) || *(v29 - 5) != *v30)
                {
                  goto LABEL_9;
                }

                result = *(v29 - 4);
                v32 = *(v29 - 2);
                v33 = *(v29 - 1);
                v34 = *v29;
                v36 = *(v30 + 24);
                v35 = *(v30 + 32);
                v37 = *(v30 + 40);
                if (result != *(v30 + 8) || *(v29 - 3) != *(v30 + 16))
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_9;
                  }
                }

                if (v32 != v36 || v33 != v35 || *&v34 != v37)
                {
                  goto LABEL_9;
                }

                v29 += 7;
                v30 += 56;
                if (!--v26)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_27:
            if (v43)
            {
              if (v42)
              {
                return 0;
              }
            }

            else
            {
              v28 = v42;
              if (v22 != v24)
              {
                v28 = 1;
              }

              if ((v28 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }
      }

LABEL_9:
      _HashTable.BucketIterator.advance()();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v5 = v41;
    v4 = a3;
    if (v41 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(*v1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView.Word();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
      return outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    }

    while (1)
    {
      specialized Set._Variant.remove(_:)(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for SyncedLyricsLineView.Word();
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      return outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      return outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView.Word();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
    Set.Iterator.init(_cocoa:)();
    v4 = v60;
    v6 = v61;
    v7 = v62;
    v8 = v63;
    v9 = v64;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v8 = 0;
  }

  v55 = v4;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v51 = v7;
  v14 = (v7 + 64) >> 6;
  v15 = (v3 + 56);
  v59 = v9;
  v52 = v3;
  while (1)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v53 = v21;
      type metadata accessor for SyncedLyricsLineView.Word();
      swift_dynamicCast();
      v2 = v54;
      v19 = v8;
      v3 = v9;
      if (!v54)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v16 = v9;
      v17 = v8;
      if (v9)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v2 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v14 <= (v8 + 1))
        {
          v18 = v8 + 1;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18 - 1;
        v20 = v8;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_67;
          }

          if (v17 >= v14)
          {
            break;
          }

          v16 = *(v6 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v2 = 0;
        v3 = 0;
      }

      v55 = v4;
      v56 = v6;
      v57 = v51;
      v58 = v19;
      v59 = v3;
      if (!v2)
      {
LABEL_65:
        outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
        return v52;
      }
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(v2);
    v22 = Hasher._finalize()();
    v23 = -1 << *(v52 + 32);
    v9 = v22 & ~v23;
    v8 = v9 >> 6;
    v17 = 1 << v9;
    if (((1 << v9) & v15[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v19;
    v9 = v3;
  }

  v24 = *(v52 + 48);
  if (*(v24 + 8 * v9) != v2)
  {
    v25 = ~v23;
    do
    {
      v9 = (v9 + 1) & v25;
      v8 = v9 >> 6;
      v17 = 1 << v9;
      if (((1 << v9) & v15[v9 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    while (*(v24 + 8 * v9) != v2);
  }

  v2 = v52;
  v26 = *(v52 + 32);
  v47 = ((1 << v26) + 63) >> 6;
  v5 = 8 * v47;
  if ((v26 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v48 = &v46;
    __chkstk_darwin();
    v9 = &v46 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v15, v27);
    v28 = *(v9 + 8 * v8) & ~v17;
    v29 = *(v2 + 16);
    v49 = v9;
    *(v9 + 8 * v8) = v28;
    v30 = v29 - 1;
    v2 = 1;
LABEL_34:
    v50 = v30;
    while (1)
    {
      if (v4 < 0)
      {
        v31 = __CocoaSet.Iterator.next()();
        if (!v31)
        {
          goto LABEL_62;
        }

        v53 = v31;
        type metadata accessor for SyncedLyricsLineView.Word();
        swift_dynamicCast();
        v8 = v54;
        if (!v54)
        {
          goto LABEL_62;
        }

        goto LABEL_51;
      }

      if (!v3)
      {
        break;
      }

      v17 = v19;
LABEL_49:
      v34 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v8 = *(*(v4 + 48) + ((v17 << 9) | (8 * v34)));

      v33 = v17;
LABEL_50:
      v55 = v4;
      v56 = v6;
      v57 = v51;
      v58 = v33;
      v19 = v33;
      v59 = v3;
      if (!v8)
      {
LABEL_62:
        v10 = specialized _NativeSet.extractSubset(using:count:)(v49, v47, v50, v52);
        goto LABEL_63;
      }

LABEL_51:
      v35 = v52;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      v36 = Hasher._finalize()();
      v37 = -1 << *(v35 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      v9 = 1 << v38;
      if (((1 << v38) & v15[v38 >> 6]) == 0)
      {
        goto LABEL_35;
      }

      v40 = *(v52 + 48);
      if (*(v40 + 8 * v38) != v8)
      {
        v41 = ~v37;
        while (1)
        {
          v38 = (v38 + 1) & v41;
          v39 = v38 >> 6;
          v9 = 1 << v38;
          if (((1 << v38) & v15[v38 >> 6]) == 0)
          {
            break;
          }

          if (*(v40 + 8 * v38) == v8)
          {
            goto LABEL_56;
          }
        }

LABEL_35:

        continue;
      }

LABEL_56:

      v42 = v49[v39];
      v49[v39] = v42 & ~v9;
      if ((v42 & v9) != 0)
      {
        v30 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          __break(1u);
        }

        if (v50 == 1)
        {

          v10 = &_swiftEmptySetSingleton;
          goto LABEL_63;
        }

        goto LABEL_34;
      }
    }

    if (v14 <= (v19 + 1))
    {
      v32 = v19 + 1;
    }

    else
    {
      v32 = v14;
    }

    v33 = v32 - 1;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v8 = 0;
        v3 = 0;
        goto LABEL_50;
      }

      v3 = *(v6 + 8 * v17);
      ++v19;
      if (v3)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v50 = v5;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = v50;
  v45 = swift_slowAlloc();
  memcpy(v45, v15, v44);
  v10 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v45, v47, v2, v9, &v55);

LABEL_63:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  return v10;
}

unint64_t *specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v28 = v9;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for SyncedLyricsLineView.Word();
          swift_dynamicCast();
          v14 = v29;
          if (!v29)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v11 = a5[3];
          v12 = a5[4];
          if (!v12)
          {
            v15 = (a5[2] + 64) >> 6;
            if (v15 <= v11 + 1)
            {
              v16 = v11 + 1;
            }

            else
            {
              v16 = (a5[2] + 64) >> 6;
            }

            v17 = v16 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v15)
              {
                a5[3] = v17;
                a5[4] = 0;
                goto LABEL_29;
              }

              v12 = *(a5[1] + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v13 = a5[3];
LABEL_17:
          v18 = (v12 - 1) & v12;
          v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

          a5[3] = v13;
          a5[4] = v18;
          if (!v14)
          {
LABEL_29:

            return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v28, a3);
          }
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        v24 = *(a3 + 48);
        if (*(v24 + 8 * v21) == v14)
        {
          break;
        }

        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v14)
          {
            goto LABEL_23;
          }
        }

LABEL_3:
      }

LABEL_23:

      v26 = v7[v22];
      v7[v22] = v26 & ~v23;
    }

    while ((v26 & v23) == 0);
    v9 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    if (v28 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t specialized OrderedSet._subtracting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    __chkstk_darwin();
    v10 = 0;
    v11 = 0;
    __chkstk_darwin();
    static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v5 = _CocoaArrayWrapper.endIndex.getter()) == 0 || (v6 = v5, v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7LyricsX06SyncedH8LineViewC0J0C_Tt1g5Tm(v5, 0), specialized Array._copyContents(initializing:)((v7 + 4), v6, _swiftEmptyArrayStorage), v9 = v8, , v9 == v6))
    {

      return 0;
    }

    __break(1u);
  }

  __break(1u);

  result = outlined consume of NoticeDismissal?(v10, v11);
  __break(1u);
  return result;
}

void *specialized closure #1 in static _UnsafeBitSet.withTemporaryBitSet<A>(wordCount:run:)(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return outlined consume of NoticeDismissal?(v6, v7);
  }

  return result;
}

uint64_t specialized OrderedSet._extractSubset(using:count:extraCapacity:)(__int128 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  if (a3)
  {
    if (a1 && *(&a1 + 1))
    {
      a2 = 0;
      v10 = 8 * *(&a1 + 1);
      v11 = a1;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a2, v12.u32[0]);
        a2 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a2)
  {
LABEL_14:
    _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
    specialized OrderedSet._reserveCapacity(_:persistent:)(a4, 0);

    v8 = 0;
    goto LABEL_49;
  }

  if (a2 == *(a6 + 16))
  {
    if (a5)
    {
      v14 = a2;
      swift_beginAccess();
      v15 = static _HashTable.maximumCapacity(forScale:)();
      a2 = v14;
      v16 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = 15 - a2;
      if (!__OFSUB__(15, a2))
      {
LABEL_11:
        if (v16 < a4)
        {
          *&a1 = a2 + a4;
          if (__OFADD__(a2, a4))
          {
            goto LABEL_55;
          }

          specialized OrderedSet._reserveCapacity(_:persistent:)(a1, 0);
        }

        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_20:
    *&a1 = _UnsafeBitSet.Iterator.next()();
    if ((BYTE8(a1) & 1) == 0)
    {
      while ((a1 & 0x8000000000000000) == 0)
      {
        if (a1 >= *(a6 + 16))
        {
          goto LABEL_52;
        }

        v22 = *(a6 + 32 + 8 * a1);
        swift_retain_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v23 = v29;
        v24 = v29[2];
        if (!v6)
        {
          while (1)
          {
            if (v24 > 0xF)
            {
              v18 = 0;
              goto LABEL_23;
            }

            *&a1 = _UnsafeBitSet.Iterator.next()();
            if (BYTE8(a1))
            {
              break;
            }

            if ((a1 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (a1 >= *(a6 + 16))
            {
              goto LABEL_52;
            }

            swift_retain_n();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v23 = v29;
            v24 = v29[2];
          }

          v6 = 0;
          goto LABEL_48;
        }

        swift_beginAccess();
        if (static _HashTable.maximumCapacity(forScale:)() >= v24)
        {
          if ((swift_isUniquelyReferenced_native() & 1) == 0)
          {
            v25 = _HashTable.copy()();

            v6 = v25;
            if (!v25)
            {
              goto LABEL_56;
            }
          }

          Hasher.init(_seed:)();
          Hasher._combine(_:)(v22);
          *&a1 = Hasher._finalize()();
          if (__OFSUB__(1 << *(v6 + 16), 1))
          {
            goto LABEL_53;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              _HashTable.BucketIterator.advance()();
            }
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        else
        {
          v18 = *(v6 + 24) & 0x3FLL;
          if (v24 > 0xF || v18)
          {
LABEL_23:
            v19 = static _HashTable.scale(forCapacity:)();
            if (v18 <= v19)
            {
              v20 = v19;
            }

            else
            {
              v20 = v18;
            }

            v21 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v23, v20, 0, v18);

            v6 = v21;
          }

          else
          {

            v6 = 0;
          }
        }

        *&a1 = _UnsafeBitSet.Iterator.next()();
        if (BYTE8(a1))
        {
          goto LABEL_48;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_48:

    v8 = v6;
LABEL_49:
    *&a1 = v8;
    return a1;
  }

  v17 = a2 + a4;
  if (!__OFADD__(a2, a4))
  {
    v27 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
    specialized OrderedSet._reserveCapacity(_:persistent:)(v17, 0);
    v6 = 0;
    v29 = v27;
    goto LABEL_20;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return a1;
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = static _HashTable.scale(forCapacity:)();
    v8 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v8;
      v8 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = static _HashTable.scale(forCapacity:)();
    v6 = 0;
    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v3[1];
  if (v6 < v7)
  {
    if (v8 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

LABEL_23:
    v13 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v9, v10, 0, v8);

    *v3 = v13;
    return result;
  }

  if (v8 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  result = static _HashTable.scale(forCapacity:)();
  if (result <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < v6)
  {
    if (v8 <= v12)
    {
      v10 = v12;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_23;
  }

  if (!v5 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v14 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v14 = _HashTable.copy()();

  *v3 = v14;
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v14 + 24) & 0x3FLL) != v8)
  {
    *(v14 + 24) = *(v14 + 24) & 0xFFFFFFFFFFFFFFC0 | v8 & 0x3F;
  }

  return result;
}

unint64_t specialized OrderedSet._removeExistingMember(at:in:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    result = specialized ContiguousArray.remove(at:)(a1, &v17);
LABEL_17:
    v13 = v20;
    v14 = v21;
    v15 = v18;
    v16 = v19;
    *a3 = v17;
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 40) = v13;
    *(a3 + 48) = v14;
    return result;
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    specialized ContiguousArray.remove(at:)(a1, &v17);
    result = specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:));
    goto LABEL_17;
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = _HashTable.copy()();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    result = specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v6, (v11 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return specialized ContiguousArray.remove(at:)(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    v14 = specialized ContiguousArray.remove(at:)(a1, a3);
    specialized OrderedSet._regenerateHashTable()();
    return v14;
  }

  result = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((result & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = _HashTable.copy()();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    result = specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, (v11 + 16), v11 + 32, v3);
    v13 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v13 >= a1)
    {
      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, v13, v6, (v11 + 16));
      return specialized ContiguousArray.remove(at:)(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    v13 = *(v9 + 48);
    v14 = *(v9 + 24);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v14;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
  }

  return result;
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    specialized ContiguousArray._endMutation()();
    return v10;
  }

  return result;
}

unint64_t specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v15)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * result + 32);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      _HashTable.BucketIterator.currentValue.getter();
      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

{
  v5 = a1;
  v34 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v34)
  {
    v28 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v29 = a2;
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v7)
      {
LABEL_40:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a4 + 8);
      if (result >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v9 = v8 + 56 * result;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 64);
      v31 = *(v9 + 72);
      v32 = *(v9 + 80);
      Hasher.init(_seed:)();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      Hasher._combine(_:)(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      Hasher._combine(_:)(*&v14);

      String.hash(into:)();
      v15 = *(v12 + 16);
      Hasher._combine(_:)(v15);
      if (v15)
      {
        v16 = (v12 + 80);
        do
        {
          v17 = *(v16 - 6);
          v18 = *(v16 - 5);
          v20 = *(v16 - 2);
          v19 = *(v16 - 1);
          v22 = *v16;
          v16 += 7;
          v21 = *&v22;
          if (v17 == 0.0)
          {
            v17 = 0.0;
          }

          Hasher._combine(_:)(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          Hasher._combine(_:)(*&v23);

          String.hash(into:)();
          Hasher._combine(_:)(v20);
          Hasher._combine(_:)(v19);
          Hasher._combine(_:)(v21);

          --v15;
        }

        while (v15);
      }

      if (v32)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = 0;
        }

        Hasher._combine(_:)(v24);
      }

      v25 = Hasher._finalize()();

      v26 = 1 << *v29;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_39;
      }

      v27 = (v26 - 1) & v25;
      if (v5 >= v28)
      {
        break;
      }

      if (v27 < v28)
      {
        goto LABEL_32;
      }

LABEL_33:
      _HashTable.BucketIterator.currentValue.getter();
      v5 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v27 < v28)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (v5 < v27)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_98;
  }

  if (v5 >= 1)
  {
    v6 = a4;
    v9 = *(a3 + 16);
    v63 = a2 - a1;
    if (a1 < (v9 - v5) / 2)
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v9 < a1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (a1)
        {
          v10 = 0;
          v57 = a1;
          while (1)
          {
            v11 = a3 + 32 + 56 * v10;
            v12 = *(v11 + 32);
            v58 = *(v11 + 40);
            v60 = *(v11 + 48);
            v14 = *v11;
            v13 = *(v11 + 8);
            Hasher.init(_seed:)();
            if (v14 == 0.0)
            {
              v15 = 0.0;
            }

            else
            {
              v15 = v14;
            }

            Hasher._combine(_:)(*&v15);
            if (v13 == 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v13;
            }

            Hasher._combine(_:)(*&v16);

            String.hash(into:)();
            v17 = *(v12 + 16);
            Hasher._combine(_:)(v17);
            if (v17)
            {
              v18 = (v12 + 80);
              do
              {
                v19 = *(v18 - 6);
                v20 = *(v18 - 5);
                v22 = *(v18 - 2);
                v21 = *(v18 - 1);
                v24 = *v18;
                v18 += 7;
                v23 = *&v24;
                if (v19 == 0.0)
                {
                  v19 = 0.0;
                }

                Hasher._combine(_:)(*&v19);
                if (v20 == 0.0)
                {
                  v25 = 0.0;
                }

                else
                {
                  v25 = v20;
                }

                Hasher._combine(_:)(*&v25);

                String.hash(into:)();
                Hasher._combine(_:)(v22);
                Hasher._combine(_:)(v21);
                Hasher._combine(_:)(v23);

                --v17;
              }

              while (v17);
            }

            if (v60)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1uLL);
              v26 = (v58 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v58 : 0;
              Hasher._combine(_:)(v26);
            }

            v6 = a4;
            v5 = v63;
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v27 = _HashTable.BucketIterator.currentValue.getter();
                if ((v28 & 1) == 0 && v27 == v10)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v10, v63))
            {
              goto LABEL_95;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter();

            if (v10 == v57)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_37:

        goto LABEL_38;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v34 = _HashTable.BucketIterator.currentValue.getter();
      if ((v35 & 1) != 0 || v34 >= a1)
      {
LABEL_53:
        _HashTable.BucketIterator.advance()();
LABEL_38:
        v29 = v6[1];
        if (__OFSUB__(v29 >> 6, v5))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v30 = 1 << *v6;
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v33 = (v32 & (((v29 >> 6) - v5) >> 63)) + (v29 >> 6) - v5;
        if (v33 < v32)
        {
          v32 = 0;
        }

        v6[1] = v6[1] & 0x3FLL | ((v33 - v32) << 6);
        return;
      }

      if (!__OFADD__(v34, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_53;
      }

      __break(1u);
LABEL_59:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v36 = _HashTable.BucketIterator.currentValue.getter();
      if ((v37 & 1) == 0 && v36 >= v4)
      {
        if (__OFSUB__(v36, v5))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_59;
    }

    if (v9 < v4)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v4 < 0)
    {
LABEL_105:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      v56 = v9;
      do
      {
        v38 = a3 + 32 + 56 * v4;
        v39 = *(v38 + 32);
        v59 = *(v38 + 40);
        v61 = *(v38 + 48);
        v41 = *v38;
        v40 = *(v38 + 8);
        Hasher.init(_seed:)();
        if (v41 == 0.0)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = v41;
        }

        Hasher._combine(_:)(*&v42);
        if (v40 == 0.0)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v40;
        }

        Hasher._combine(_:)(*&v43);

        String.hash(into:)();
        v44 = *(v39 + 16);
        Hasher._combine(_:)(v44);
        if (v44)
        {
          v45 = (v39 + 80);
          do
          {
            v46 = *(v45 - 6);
            v47 = *(v45 - 5);
            v48 = *(v45 - 2);
            v49 = *(v45 - 1);
            v51 = *v45;
            v45 += 7;
            v50 = *&v51;
            if (v46 == 0.0)
            {
              v46 = 0.0;
            }

            Hasher._combine(_:)(*&v46);
            if (v47 == 0.0)
            {
              v52 = 0.0;
            }

            else
            {
              v52 = v47;
            }

            Hasher._combine(_:)(*&v52);

            String.hash(into:)();
            Hasher._combine(_:)(v48);
            Hasher._combine(_:)(v49);
            Hasher._combine(_:)(v50);

            --v44;
          }

          while (v44);
        }

        if (v61)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v53 = (v59 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v59 : 0;
          Hasher._combine(_:)(v53);
        }

        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_97;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v54 = _HashTable.BucketIterator.currentValue.getter();
            if ((v55 & 1) == 0 && v54 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v4 != v56);
    }
  }
}

{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if (a1 < (v9 - v5) / 2)
    {
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < a1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (a1)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 8 * v10);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v11);
            Hasher._finalize()();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v12 = _HashTable.BucketIterator.currentValue.getter();
                if ((v13 & 1) == 0 && v12 == v10)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v10, v5))
            {
              goto LABEL_51;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter();
            if (v10 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v19 = _HashTable.BucketIterator.currentValue.getter();
      if ((v20 & 1) != 0 || v19 >= a1)
      {
LABEL_29:
        _HashTable.BucketIterator.advance()();
LABEL_17:
        v14 = a4[1];
        if (__OFSUB__(v14 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v15 = 1 << *a4;
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v16)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v18 = (v17 & (((v14 >> 6) - v5) >> 63)) + (v14 >> 6) - v5;
        if (v18 < v17)
        {
          v17 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v18 - v17) << 6);
        return;
      }

      if (!__OFADD__(v19, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v21 = _HashTable.BucketIterator.currentValue.getter();
      if ((v22 & 1) == 0 && v21 >= v4)
      {
        if (__OFSUB__(v21, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      while (1)
      {
        v23 = *(a3 + 32 + 8 * v4);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v23);
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v24 = _HashTable.BucketIterator.currentValue.getter();
            if ((v25 & 1) == 0 && v24 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
        if (++v4 == v9)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t _sSa6remove2atxSi_tFSnySiG_Tgq5_2(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_2(v3);
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

id *_ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(unint64_t a1, void (*a2)(id *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7LyricsX06SyncedH8LineViewC0J0C_Tt1g5Tm(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57LyricsX06SyncedI8LineViewC0K0C_SiTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i3X06j2F8kl187C0H0C_SiTG50159_s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSiSRyAOGXEfU_Say7f3X06g2Q8hI10Z18S0CG_TG5Tf3nnnpf_nTf1cn_nTm(int64_t a1, void (*a2)(id *, uint64_t, unint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return specialized closure #1 in static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)((AssociatedObject + 4), v4, a2);
}

id *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      _sSh8_VariantV6insertySb8inserted_x17memberAfterInserttxnFSS_Tg5_0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX0B14OptionsManagerC6OptionO_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type LyricsOptionsManager.Option and conformance LyricsOptionsManager.Option();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for SyncedLyricsLineView.Word();
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      specialized Set._Variant.insert(_:)(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void specialized SyncedLyricsLineView.SBS_TextContentView.TextView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
  v2 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
  v6 = v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
  *v6 = 2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
  v7 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v8 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  *(v0 + v8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  *&v191[16] = a3;
  *&v191[24] = a4;
  *v191 = a1;
  *&v191[8] = a2;

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(a13);

  v235 = v19;
  v20 = CTLineRef.stringRange.getter();
  if (__OFSUB__(a12, v20))
  {
    goto LABEL_252;
  }

  v208 = a12 - v20;
  v21 = CTLineRef.glyphRuns.getter();
  v194 = v21;
  if (v21 >> 62)
  {
LABEL_253:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v23 = a10;
    if (v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = a10;
    if (v22)
    {
LABEL_4:
      v198 = v22;
      v24 = Int.seconds.getter(0);
      v25 = 0;
      v230 = *(a8 + 16);
      v232 = a8 + 32;
      v185 = a6;
      do
      {
        if ((v194 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_249;
          }

          v26 = *(v194 + 32 + 8 * v25);
        }

        v216 = v26;
        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          goto LABEL_246;
        }

        v210 = v28;
        v29 = CTRunGetFont();
        CTFontGetLanguageAwareOutsets();

        if (String.containsExcessiveHeightCharacters.getter(a9, v23))
        {
          v30 = a6 - v24;
        }

        else
        {
          v30 = a6;
        }

        v215 = CTRunRef.positions.getter();
        a8 = CTRunRef.stringRange.getter();
        v32 = v31;
        v33 = CTRunRef.stringIndices.getter();
        if (v208)
        {
          v27 = __OFADD__(a8, v208);
          a8 += v208;
          if (v27)
          {
            goto LABEL_247;
          }

          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = a11;
            v236[0] = _swiftEmptyArrayStorage;
            v36 = v33;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
            v37 = v36;
            v38 = _swiftEmptyArrayStorage;
            v39 = 32;
            v40 = v208;
            do
            {
              v41 = *(v37 + v39);
              a11 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_234;
              }

              v236[0] = v38;
              v43 = v38[2];
              v42 = v38[3];
              if (v43 >= v42 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
                v37 = v36;
                v40 = v208;
                v38 = v236[0];
              }

              v38[2] = (v43 + 1);
              v38[v43 + 4] = a11;
              v39 += 8;
              --v34;
            }

            while (v34);

            v217 = v38;
            a11 = v35;
          }

          else
          {

            v217 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v217 = v33;
        }

        v44 = v230;
        if (!v230)
        {
LABEL_5:
          v23 = a10;
          goto LABEL_6;
        }

        v45 = 0;
        v234 = a8 + v32;
        v46 = __OFADD__(a8, v32);
        v193 = v215 + 32;
        v23 = a10;
        v229 = v46;
        do
        {
          while (1)
          {
            if (v45 >= v44)
            {
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            v47 = v232 + 56 * v45;
            v48 = *v47;
            v49 = *(v47 + 8);
            v50 = *(v47 + 16);
            v51 = *(v47 + 24);
            v53 = *(v47 + 32);
            v52 = *(v47 + 40);
            v54 = *(v47 + 48);
            v55 = *(v53 + 16);
            if (v55)
            {
              v56 = v53 + 56 * v55;
              v58 = *(v56 + 8);
              v57 = *(v56 + 16);
              v27 = __OFADD__(v58, v57);
              v59 = v58 + v57;
              if (v27)
              {
                goto LABEL_235;
              }

              v55 = *(v53 + 64);
              v27 = __OFSUB__(v59, v55);
              v60 = v59 - v55;
              if (v27)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v60 = 0;
            }

            v61 = v55 + a11;
            if (__OFADD__(v55, a11))
            {
              goto LABEL_230;
            }

            if (v46)
            {
              goto LABEL_231;
            }

            v62 = v61 + v60;
            if (__OFADD__(v61, v60))
            {
              goto LABEL_232;
            }

            v63 = v234;
            if (v234 >= v62)
            {
              v63 = v61 + v60;
            }

            if (a8 >= v61 && a8 < v62)
            {
              v64 = v63 - a8;
              if (__OFSUB__(v63, a8))
              {
                goto LABEL_236;
              }

              v61 = a8;
              goto LABEL_53;
            }

            if (v61 >= a8 && v61 < v234)
            {
              break;
            }

LABEL_32:
            v27 = __OFADD__(v45++, 1);
            if (v27)
            {
              goto LABEL_233;
            }

            if (v45 >= v44)
            {
              goto LABEL_6;
            }
          }

          v64 = v63 - v61;
          if (__OFSUB__(v63, v61))
          {
            goto LABEL_237;
          }

LABEL_53:
          if (v64 < 1)
          {
            goto LABEL_32;
          }

          v224 = v54;
          v225 = v52;
          v227 = v50;

          Range<>.init(_:in:)();
          if (v65)
          {

            v44 = v230;
            v46 = v229;
            goto LABEL_32;
          }

          v222 = v51;
          v231 = a11;

          v66 = _NSRange.init(range:in:)();
          v218 = v67;
          v219 = v66;
          v68 = String.subscript.getter();
          a11 = v70;
          v71 = v68 >> 16;
          v73 = v72 >> 16;
          if (v69 == 32)
          {
            if (v70 == 0xE100000000000000 && !v71 && v73 == 1 || (v74 = _stringCompareInternal(_:_:_:_:expecting:)(), v75 = 32, v76 = v73, v77 = v71, (v74 & 1) != 0))
            {
LABEL_62:

              v27 = __OFADD__(v45++, 1);
              if (!v27)
              {
                goto LABEL_63;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v78 = v69;
            if (_stringCompareInternal(_:_:_:_:expecting:)())
            {
              goto LABEL_62;
            }

            v75 = v78;
            v76 = v73;
            v77 = v71;
            if (v78 == 10 && a11 == 0xE100000000000000 && !v71 && v76 == 1)
            {
LABEL_75:

              a11 = v231 + 1;
              v23 = a10;
              if (!__OFADD__(v231, 1))
              {
                goto LABEL_76;
              }

              goto LABEL_244;
            }
          }

          range_8 = v76;
          v79 = v75;
          if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0 || v79 == 10519010 && a11 == 0xA300000000000000 && !v77 && range_8 == 3)
          {
            goto LABEL_75;
          }

          v209 = v79;
          if (_stringCompareInternal(_:_:_:_:expecting:)())
          {
            goto LABEL_75;
          }

          v80.location = v61;
          v80.length = v64;
          v248 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v80, v217);
          if (v248.is_nil)
          {

            v27 = __OFADD__(v45++, 1);
            if (!v27)
            {
LABEL_63:
              a11 = v231;
              v23 = a10;
LABEL_76:
              v44 = v230;
              goto LABEL_77;
            }

            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
          }

          v81 = v248.value.location + v248.value.length;
          if (__OFADD__(v248.value.location, v248.value.length))
          {
            goto LABEL_255;
          }

          if (v81 < v248.value.location)
          {
            goto LABEL_256;
          }

          if (v248.value.location < 0)
          {
            goto LABEL_257;
          }

          v82 = *(v215 + 16);
          if (v82 < v248.value.location || v82 < v81)
          {
            goto LABEL_258;
          }

          range = v248.value.location;
          if (v248.value.location == v81)
          {
            length = v248.value.length;
            v84 = INFINITY;
          }

          else
          {
            if (v248.value.location >= v81)
            {
              goto LABEL_261;
            }

            v85 = (v193 + 16 * v248.value.location);
            v84 = INFINITY;
            length = v248.value.length;
            v86 = v248.value.length;
            do
            {
              v87 = *v85;
              v85 += 2;
              v88 = v87;
              if (v87 < v84)
              {
                v84 = v88;
              }

              --v86;
            }

            while (v86);
          }

          v245.location = range;
          v245.length = length;
          CTRunRef.drawingWidth(range:positions:)(v245, v215);
          v187 = v89;

          Height = CGRectGetHeight(*v191);
          if ((v235 & 0xC000000000000001) != 0)
          {

            __CocoaSet.makeIterator()();
            type metadata accessor for SyncedLyricsLineView.Word();
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word);
            Set.Iterator.init(_cocoa:)();
            v90 = v238;
            v91 = v239;
            v93 = v240;
            v92 = v241;
            v94 = v242;
          }

          else
          {
            v95 = -1 << *(v235 + 32);
            v93 = ~v95;
            v96 = -v95;
            if (v96 < 64)
            {
              v97 = ~(-1 << v96);
            }

            else
            {
              v97 = -1;
            }

            v94 = v97 & *(v235 + 56);

            v91 = v235 + 56;
            v92 = 0;
          }

          v202 = v91;
          v98 = (v93 + 64) >> 6;
          v204 = v90;
          while ((v90 & 0x8000000000000000) == 0)
          {
            v99 = v92;
            v100 = v94;
            if (!v94)
            {
              while (1)
              {
                v92 = v99 + 1;
                if (__OFADD__(v99, 1))
                {
                  break;
                }

                if (v92 >= v98)
                {
                  goto LABEL_141;
                }

                v100 = *(v91 + 8 * v92);
                ++v99;
                if (v100)
                {
                  goto LABEL_108;
                }
              }

LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
              goto LABEL_250;
            }

LABEL_108:
            v101 = (v100 - 1) & v100;
            v102 = *(*(v90 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v100)))));

            if (!v102)
            {
              goto LABEL_141;
            }

LABEL_112:
            v103 = *(v102 + 72);
            v104 = *(v102 + 80);
            if ((v104 & 0x2000000000000000) != 0)
            {
              v105 = HIBYTE(v104) & 0xF;
            }

            else
            {
              v105 = v103 & 0xFFFFFFFFFFFFLL;
            }

            v108 = v103 == v209 && v104 == a11 && v77 == 0 && v105 == range_8;
            if (!v108 && (_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0 || *(v102 + 88) != v219 || *(v102 + 96) != v218)
            {
              goto LABEL_102;
            }

            v109 = *(v102 + 104);
            if (v109 >> 62)
            {
              v199 = *(v102 + 104);
              v112 = _CocoaArrayWrapper.endIndex.getter();
              v109 = v199;
              if (!v112)
              {
                goto LABEL_102;
              }
            }

            else if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            if ((v109 & 0xC000000000000001) != 0)
            {

              v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();

              v113 = *(v196 + 120);
              a6 = *(v196 + 128);
              swift_unknownObjectRelease();
              if (v113 != a5)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_260;
              }

              v110 = *(v109 + 32);
              if (*(v110 + 120) != a5)
              {
                goto LABEL_102;
              }

              a6 = *(v110 + 128);
            }

            if (a6 == v30)
            {
              v111 = CGRectGetHeight(*v191);
              if (v111 == CGRectGetHeight(*(v102 + 176)))
              {

                v165 = *(v102 + 176);
                *(v102 + 176) = v84;
                *(v102 + 184) = 0;
                *(v102 + 192) = v187;
                *(v102 + 200) = Height;
                *(v102 + 216) = v84 - v165 + *(v102 + 216);
                v166 = *(v102 + 104);
                if (v166 >> 62)
                {
                  v167 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a11 = v231;
                v23 = a10;
                if (!v167)
                {
LABEL_217:
                  *(v102 + 144) = v84;
                  *(v102 + 152) = 0;
                  *(v102 + 160) = v187;
                  *(v102 + 168) = Height;
                  if (_swiftEmptyArrayStorage >> 62)
                  {
                    v176 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v176 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a6 = v185;
                  *(v102 + 112) = v176;

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v23 = a10;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized Set._Variant.remove(_:)(v102);
                  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();

                  v27 = __OFADD__(v45++, 1);
                  if (!v27)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_270;
                }

                v168 = 0;
                v226 = v167;
                v228 = v166 & 0xC000000000000001;
                v223 = v166 & 0xFFFFFFFFFFFFFF8;
                v220 = v166 + 32;
                while (2)
                {
                  if (v228)
                  {
                    v169 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v27 = __OFADD__(v168++, 1);
                    if (v27)
                    {
                      goto LABEL_266;
                    }
                  }

                  else
                  {
                    if (v168 >= *(v223 + 16))
                    {
                      goto LABEL_269;
                    }

                    v169 = *(v220 + 8 * v168);

                    v27 = __OFADD__(v168++, 1);
                    if (v27)
                    {
                      goto LABEL_266;
                    }
                  }

                  v170 = *(v102 + 216);
                  *(v169 + 192) = v170;
                  *(v169 + 152) = CGRectOffset(*(v169 + 200), v170, 0.0);
                  v171 = *(v169 + 88);
                  if (v171 >> 62)
                  {
                    v172 = _CocoaArrayWrapper.endIndex.getter();
                    if (v172)
                    {
LABEL_209:
                      if (v172 < 1)
                      {
                        goto LABEL_267;
                      }

                      v173 = 0;
                      do
                      {
                        if ((v171 & 0xC000000000000001) != 0)
                        {
                          v174 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        }

                        else
                        {
                          v174 = *(v171 + 8 * v173 + 32);
                        }

                        ++v173;
                        v175 = *(v169 + 192);
                        *(v174 + 104) = v175;
                        *(v174 + 64) = CGRectOffset(*(v174 + 112), v175, 0.0);
                      }

                      while (v172 != v173);
                    }
                  }

                  else
                  {
                    v172 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v172)
                    {
                      goto LABEL_209;
                    }
                  }

                  a11 = v231;
                  v23 = a10;
                  if (v168 == v226)
                  {
                    goto LABEL_217;
                  }

                  continue;
                }
              }
            }

LABEL_102:

            v91 = v202;
            v90 = v204;
            v94 = v101;
          }

          v206 = v94;
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for SyncedLyricsLineView.Word();
            swift_dynamicCast();
            v102 = v236[0];
            v101 = v206;
            if (v236[0])
            {
              goto LABEL_112;
            }
          }

LABEL_141:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
          v114 = *(v53 + 16);

          v192 = v216;
          if (!v114)
          {
            goto LABEL_186;
          }

          a11 = 0;
          v115 = v53 + 80;
          v207 = v114;
          do
          {
            v116 = (v115 + 56 * a11);
            while (1)
            {
              if (a11 >= v114)
              {
                goto LABEL_240;
              }

              v117 = a11 + 1;
              if (__OFADD__(a11, 1))
              {
                goto LABEL_241;
              }

              v118 = *(v116 - 2);
              v119 = v118 + v231;
              if (__OFADD__(v118, v231))
              {
                goto LABEL_242;
              }

              v120 = *(v116 - 1);
              v121 = v119 + v120;
              if (__OFADD__(v119, v120))
              {
                goto LABEL_243;
              }

              a6 = *(v116 - 6);
              v122 = *(v116 - 5);
              v123 = v234;
              if (v234 >= v121)
              {
                v123 = v119 + v120;
              }

              if (a8 >= v119 && a8 < v121)
              {
                break;
              }

              if (v119 >= a8 && v119 < v234)
              {
                v125 = v123 - v119;
                if (__OFSUB__(v123, v119))
                {
                  goto LABEL_248;
                }

                if (v125 >= 1)
                {
                  goto LABEL_163;
                }
              }

LABEL_145:
              ++a11;
              v116 += 7;
              if (v117 == v114)
              {
                goto LABEL_186;
              }
            }

            v125 = v123 - a8;
            if (__OFSUB__(v123, a8))
            {
              goto LABEL_245;
            }

            v119 = a8;
            if (v125 < 1)
            {
              goto LABEL_145;
            }

LABEL_163:
            v200 = *(v116 - 4);
            v201 = *v116;
            v203 = *(v116 - 1);
            v205 = *(v116 - 2);
            rangea = *(v116 - 3);
            range_8a = a11 + 1;

            Range<>.init(_:in:)();
            if ((v126 & 1) != 0 || (, v127.location = v119, v127.length = v125, v249 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v127, v217), location = v249.value.location, v129 = v249.value.length, is_nil = v249.is_nil, , is_nil))
            {

              v117 = a11 + 1;
              v114 = v207;
              goto LABEL_145;
            }

            String.subscript.getter();
            v131 = location + v129;
            if (__OFADD__(location, v129))
            {
              goto LABEL_262;
            }

            if (v131 < location)
            {
              goto LABEL_263;
            }

            if ((location & 0x8000000000000000) != 0)
            {
              goto LABEL_264;
            }

            v132 = *(v215 + 16);
            if (v132 < location || v132 < v131)
            {
              goto LABEL_265;
            }

            v190 = *(v215 + 16);
            if (location == v131)
            {
              v133 = INFINITY;
              goto LABEL_177;
            }

            if (location >= v131)
            {
              goto LABEL_268;
            }

            v134 = (v193 + 16 * location);
            v133 = INFINITY;
            v135 = v129;
            do
            {
              v136 = *v134;
              v134 += 2;
              v137 = v136;
              if (v136 < v133)
              {
                v133 = v137;
              }

              --v135;
            }

            while (v135);
LABEL_177:
            v181 = v133;
            v195 = v24;
            v246.location = location;
            v246.length = v129;
            a11 = location;
            CTRunRef.drawingWidth(range:positions:)(v246, v215);
            v180 = v138;
            v179 = CGRectGetHeight(*v191);

            v139 = v192;
            specialized ContiguousArray.reserveCapacity(_:)();
            v182 = v129;
            v183 = location;
            _NSRange.makeIterator()();
            v236[0] = v140;
            v236[1] = v141;
            v236[2] = v142;
            v237 = v143 & 1;
            v243 = _NSRange.NSRangeIterator.next()();
            if (!v243.is_nil)
            {
              value = v243.value;
              v114 = v207;
              v188 = v122;
              v189 = a6;
              v197 = v139;
              while (value < v190)
              {
                a6 = v30;
                v145 = a5;
                v146 = *(v193 + 16 * value);
                v247.location = value;
                v247.length = v215;
                CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(v247);
                v148 = v147;
                v149 = CGRectGetHeight(*v191);
                if (value >= v217[2])
                {
                  goto LABEL_251;
                }

                v150 = v149;
                _sS2SSysWl_2();

                String.Index.init<A>(utf16Offset:in:)();
                v151 = String.subscript.getter();
                v153 = v152;
                type metadata accessor for SyncedLyricsLineView.Glyph();
                a11 = swift_allocObject();
                *(a11 + 96) = 0;
                *(a11 + 48) = v151;
                *(a11 + 56) = v153;
                *(a11 + 64) = v146;
                *(a11 + 72) = 0;
                *(a11 + 80) = v148;
                *(a11 + 88) = v150;
                *(a11 + 104) = v195;
                *(a11 + 112) = v146;
                *(a11 + 120) = 0;
                *(a11 + 128) = v148;
                *(a11 + 136) = v150;
                *(a11 + 16) = value;
                *(a11 + 40) = v197;
                a5 = v145;
                *(a11 + 24) = v145;
                *(a11 + 32) = a6;
                v30 = a6;
                v154 = v197;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v139 = v197;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v244 = _NSRange.NSRangeIterator.next()();
                value = v244.value;
                v122 = v188;
                a6 = v189;
                if (v244.is_nil)
                {
                  goto LABEL_183;
                }
              }

LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v114 = v207;
LABEL_183:

            v155 = static String._fromSubstring(_:)();
            v184 = v156;

            type metadata accessor for SyncedLyricsLineView.Syllable();
            v157 = swift_allocObject();
            *(v157 + 136) = 0;
            *(v157 + 144) = 2;
            *(v157 + 184) = 0;
            *(v157 + 16) = a6;
            *(v157 + 24) = v122;
            *(v157 + 32) = v200;
            *(v157 + 40) = rangea;
            *(v157 + 48) = v205;
            *(v157 + 56) = v203;
            *(v157 + 64) = v201;
            *(v157 + 72) = v155;
            *(v157 + 80) = v184;
            *(v157 + 88) = _swiftEmptyArrayStorage;
            v24 = v195;
            *(v157 + 192) = v195;
            *(v157 + 200) = v181;
            *(v157 + 208) = 0;
            *(v157 + 216) = v180;
            *(v157 + 224) = v179;
            *(v157 + 152) = v181;
            *(v157 + 160) = 0;
            *(v157 + 168) = v180;
            *(v157 + 176) = v179;
            *(v157 + 96) = v183;
            *(v157 + 104) = v182;
            *(v157 + 112) = v139;
            *(v157 + 120) = a5;
            *(v157 + 128) = v30;
            v158 = v139;

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            a11 = range_8a;
            v115 = v53 + 80;
          }

          while (range_8a != v114);
LABEL_186:

          v159 = static String._fromSubstring(_:)();
          v161 = v160;

          if (_swiftEmptyArrayStorage >> 62)
          {
            v162 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v162 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          type metadata accessor for SyncedLyricsLineView.Word();
          v163 = swift_allocObject();
          *(v163 + 136) = 2;
          *(v163 + 208) = 0;
          *(v163 + 216) = v24;
          *(v163 + 224) = v24;
          *(v163 + 232) = 0;
          *(v163 + 16) = v48;
          *(v163 + 24) = v49;
          *(v163 + 32) = v227;
          *(v163 + 40) = v222;
          *(v163 + 48) = v53;
          *(v163 + 56) = v225;
          *(v163 + 64) = v224;
          *(v163 + 72) = v159;
          *(v163 + 80) = v161;
          *(v163 + 184) = 0;
          *(v163 + 192) = v187;
          *(v163 + 200) = Height;
          *(v163 + 144) = v84;
          *(v163 + 152) = 0;
          *(v163 + 160) = v187;
          *(v163 + 168) = Height;
          *(v163 + 176) = v84;
          *(v163 + 104) = _swiftEmptyArrayStorage;
          *(v163 + 112) = v162;
          *(v163 + 88) = v219;
          *(v163 + 96) = v218;
          *(v163 + 120) = v192;
          *(v163 + 128) = 0;
          v164 = v192;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          a11 = v231;
          a6 = v185;
          if (v234 == v62)
          {
            goto LABEL_5;
          }

          v27 = __OFADD__(v45++, 1);
          v23 = a10;
          v44 = v230;
          if (v27)
          {
            goto LABEL_259;
          }

LABEL_77:
          v46 = v229;
        }

        while (v45 < v44);
LABEL_6:

        v25 = v210;
      }

      while (v210 != v198);
    }
  }

  v236[0] = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(v177, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(v236);

  return v236[0];
}

uint64_t outlined consume of Lyrics.Word?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10046F2D0()
{

  return swift_deallocObject();
}

uint64_t sub_10046F320()
{

  return swift_deallocObject();
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq57LyricsX06SyncedI8LineViewC0K0C_Sb7success_Si3endtTg5073_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_7i3X06j2F8kL27C0H0C_Sb7success_Si3endtTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAKSbAL_SiAMtIsgyrzo_Tf1cn_nTf4ng_nTm(int64_t a1, void (*a2)(uint64_t *__return_ptr, id *, id))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v5 = AssociatedObject[2];

  a2(&v8, AssociatedObject + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

Swift::Int specialized OrderedSet.append<A>(contentsOf:)(Swift::Int result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = v3;
  v6 = a2;
  v7 = result;
  while (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    if (*v5)
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      result = Hasher._finalize()();
      if (__OFSUB__(1 << *(v10 + 16), 1))
      {
        goto LABEL_33;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      result = _HashTable.BucketIterator.currentValue.getter();
      if ((v12 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if (v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v14 = *(v9 + 16);
      if (v14)
      {
        while (*v11 != v8)
        {
          ++v11;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    swift_retain_n();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v15 = v5[1];
    v16 = *(v15 + 16);
    if (!v10)
    {
      if (v16 > 0xF)
      {
        v17 = 0;
LABEL_23:
        v18 = static _HashTable.scale(forCapacity:)();
        if (v17 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        v20 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v15, v19, 0, v17);

        *v5 = v20;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v16)
    {
      result = swift_isUniquelyReferenced_native();
      v21 = *v5;
      if ((result & 1) == 0)
      {
        if (!v21)
        {
          goto LABEL_35;
        }

        v22 = _HashTable.copy()();

        *v5 = v22;
        v21 = v22;
      }

      if (!v21)
      {
        goto LABEL_34;
      }

      _HashTable.UnsafeHandle.subscript.setter();
LABEL_4:

      goto LABEL_5;
    }

    v17 = *(v10 + 24) & 0x3FLL;
    if (v16 > 0xF || v17)
    {
      goto LABEL_23;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t partial apply for implicit closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:)()
{
  v1 = *(v0 + 72);

  return v1;
}

void outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(id a1)
{
  if (a1 != 2)
  {
    outlined consume of CloudLibrary.PresentationStyle(a1);
  }
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id partial apply for closure #10 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)()
{
  result = *(v0 + 112);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id partial apply for closure #11 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id partial apply for closure #16 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t objectdestroy_284Tm()
{

  return swift_deallocObject();
}

id partial apply for closure #6 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10046F900()
{

  return swift_deallocObject();
}

id partial apply for closure #8 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)()
{
  result = *(v0 + 208);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void partial apply for specialized closure #1 in OrderedSet._subtracting<A>(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  specialized closure #1 in OrderedSet._subtracting<A>(_:)(a1, v2[2], v2[3], *(v2[4] + 8));
  if (!v3)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

void specialized closure #1 in OrderedSet._subtracting<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  _UnsafeBitSet.insertAll(upTo:)(v8);
  v9 = 0;
  v10 = *(a4 + 16);
  v11 = a4 + 32;
  v22 = a3;
  v12 = a3 + 32;
  v13 = v8;
  while (2)
  {
    if (v9 == v10)
    {
LABEL_19:
      v20 = *a1;
      v19 = a1[1];
      v21 = static MPMediaLibraryFilteringOptions.none.getter();

      *&v23 = v20;
      *(&v23 + 1) = v19;
      specialized OrderedSet._extractSubset(using:count:extraCapacity:)(v23, v13, 0, v21, a2, v22);
      return;
    }

    while (1)
    {
      if (v9 >= v10)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v15 = *(v11 + 8 * v9++);
      if (a2)
      {
        v16 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v15, v12, v8, a2 + 16, a2 + 32);
        if (v17)
        {
          goto LABEL_5;
        }

        v18 = v16;
        if (v16 < 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = 0;
        while (*(v12 + 8 * v18) != v15)
        {
          if (v8 == ++v18)
          {
            goto LABEL_5;
          }
        }
      }

      if (_UnsafeBitSet.remove(_:)(v18))
      {
        break;
      }

LABEL_5:
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    if (--v13)
    {
      continue;
    }

    break;
  }

  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
}

uint64_t sub_10046FBFC()
{

  return swift_deallocObject();
}

uint64_t sub_10046FCB4()
{

  return swift_deallocObject();
}

void partial apply for closure #6 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
}

id partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t objectdestroy_319Tm()
{

  return swift_deallocObject();
}

uint64_t sub_10046FDE4()
{

  return swift_deallocObject();
}

id outlined copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10046FE3C()
{

  return swift_deallocObject();
}

__n128 partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

void outlined consume of AnimationStatus(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_10046FEAC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_10046FF2C()
{

  return swift_deallocObject();
}

Swift::Int partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(a1, a2, a3);
}

{
  result = specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

{
  return partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:)(a1, a2, a3);
}

uint64_t sub_10046FFC0()
{

  return swift_deallocObject();
}

uint64_t sub_10046FFF8()
{

  return swift_deallocObject();
}

id outlined copy of AnimationStatus(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TextLayoutDiffMetadata?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy33_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SyncedLyricsLineView.SBS_TextContentView.TextView.TransliterationResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncedLyricsLineView.SBS_TextContentView.TextView.TransliterationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SyncedLyricsLineView.SBS_TextContentView.TextView.TransliterationResult(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncedLyricsLineView.SBS_TextContentView.TextView.TransliterationResult.Metadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for SyncedLyricsLineView.SBS_TextContentView.TextView.TransliterationResult.Metadata(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7LyricsX15AnimationStatusO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimationStatus(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      if (*a1)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && v4 == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 8))
  {
    return 1;
  }

  return 0;
}

UIView __swiftcall SyncedLyricsLineView.Glyph.updatedView()()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 104) - *(v0 + 64);
  MaxX = CGRectGetMaxX(*(v0 + 112));
  Height = CGRectGetHeight(*(v0 + 64));
  v6 = *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = v6;
    [v11 setFrame:{v7, v8, v9, v10}];
    [*&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] setFrame:{v3, v2, MaxX, Height}];
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = v1[3];
    v15 = v1[4];
    v16 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.Glyph.GlyphView());
    v17 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v12, v13, 1, v14, v15);
    [v17 setFrame:{v3, v2, MaxX, Height}];
    v18 = v1[8];
    v19 = v1[9];
    v20 = v1[10];
    v21 = v1[11];
    v22 = type metadata accessor for SyncedLyricsLineView.Glyph.GlyphContainerView();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] = v17;
    v37.receiver = v23;
    v37.super_class = v22;
    v24 = v17;
    v25 = objc_msgSendSuper2(&v37, "initWithFrame:", v18, v19, v20, v21);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v26 = static LyricsOptionsManager.shared;
    if (os_variant_has_internal_content() && _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v26 + 40)))
    {
      v27 = objc_opt_self();
      v28 = v25;
      v29 = [v27 greenColor];
      v30 = [v29 colorWithAlphaComponent:0.7];

      [v28 setBackgroundColor:v30];
      v31 = [v27 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v33, v32 & 1, v34);
    }

    v11 = v25;
    [v11 addSubview:v24];

    v35 = *(v1 + 12);
    *(v1 + 12) = v11;
  }

  return v11;
}

id closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.reset(frame:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a1 setTransform:v10];
  return UIView.untransformedFrame.setter(a2, a3, a4, a5);
}

void SyncedLyricsLineView.Glyph.GlyphContainerView.purgeAnimators()()
{
  v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v30 = v1;
  v2 = *(v0 + v1);
  v29 = v2 >> 62;
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_75;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v29)
      {
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v5 = *(v3 + 16);
      }

      goto LABEL_26;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_66;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v6 state];

    v9 = __OFADD__(v5, 1);
    if (v8 == 2 || v8 == 0)
    {
      break;
    }

    ++v5;
    if (v9)
    {
      goto LABEL_67;
    }
  }

  if (!v9)
  {
    if (v29)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *(v3 + 16);
    }

    v12 = v0;
    if (v5 + 1 != v11)
    {
      v3 = v5 + 5;
      do
      {
        v14 = v3 - 4;
        v0 = (v2 & 0xC000000000000001);
        if ((v2 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v15 = *(v2 + 8 * v3);
        }

        v16 = v15;
        v17 = [v15 state];

        if (v17 != 2 && v17 != 0)
        {
          if (v14 != v5)
          {
            if (v0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_78;
              }

              v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v5 >= v21)
              {
                goto LABEL_79;
              }

              if (v14 >= v21)
              {
                goto LABEL_80;
              }

              v0 = *(v2 + 8 * v3);
              v19 = *(v2 + 8 * v5 + 32);
              v20 = v0;
            }

            v22 = v20;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v12 + v30) = v2;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
              *(v12 + v30) = v2;
            }

            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v0 = (v2 & 0xFFFFFFFFFFFFFF8);
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v24 = &v0[v5];
            v25 = v24[4];
            v24[4] = v22;

            *(v12 + v30) = v2;
            if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
              *(v12 + v30) = v2;
              v0 = (v2 & 0xFFFFFFFFFFFFFF8);
              if ((v14 & 0x8000000000000000) != 0)
              {
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v4 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_3;
              }
            }

            else if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v14 >= v0[2])
            {
              goto LABEL_74;
            }

            v26 = v0[v3];
            v0[v3] = v19;

            *(v12 + v30) = v2;
          }

          if (__OFADD__(v5++, 1))
          {
            goto LABEL_71;
          }
        }

        v0 = (v3 - 3);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_70;
        }

        if (v2 >> 62)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v28 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v3;
      }

      while (v0 != v28);
    }

LABEL_26:
    if (v2 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13 >= v5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v5)
      {
LABEL_28:
        specialized Array.replaceSubrange<A>(_:with:)(v5, v13);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.grow(springTimingParameters:position:factor:delay:)(void *a1, double a2, double a3, CGFloat a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.grow(springTimingParameters:position:factor:delay:);
  *(v10 + 24) = v9;
  *&v14.tx = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  *&v14.ty = v10;
  *&v14.a = _NSConcreteStackBlock;
  *&v14.b = 1107296256;
  *&v14.c = thunk for @escaping @callee_guaranteed () -> ();
  *&v14.d = &block_descriptor_42_1;
  v11 = _Block_copy(&v14);
  v12 = a1;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v12 frame];
    [v12 setFrame:{a2, a3}];
    CGAffineTransformMakeScale(&v14, a4, a4);
    [v12 setTransform:&v14];
  }

  return result;
}

void SyncedLyricsLineView.Glyph.GlyphContainerView.degrow(springTimingParameters:position:delay:)(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  type metadata accessor for UIViewPropertyAnimator();
  isa = UIViewPropertyAnimator.init(springTimingParameters:)(a1).super.isa;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v22 = partial apply for closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.degrow(springTimingParameters:position:delay:);
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed () -> ();
  v21 = &block_descriptor_81;
  v12 = _Block_copy(&v18);
  v13 = v5;

  [(objc_class *)isa addAnimations:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = partial apply for closure #2 in SyncedLyricsLineView.Glyph.GlyphContainerView.degrow(springTimingParameters:position:delay:);
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  v21 = &block_descriptor_22_0;
  v15 = _Block_copy(&v18);

  [(objc_class *)isa addCompletion:v15];
  _Block_release(v15);
  [(objc_class *)isa startAnimationAfterDelay:a4];
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v17 = isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v13 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.degrow(springTimingParameters:position:delay:)(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.degrow(springTimingParameters:position:delay:);
  *(v8 + 24) = v7;
  v16 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_31_0;
  v9 = _Block_copy(&v12);
  v10 = a1;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    [v10 setTransform:&v12];
    [v10 frame];
    [v10 setFrame:{a2, a3}];
  }

  return result;
}

id closure #1 in closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.grow(springTimingParameters:position:factor:delay:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  swift_beginAccess();
  return UIView.setAnchorPoint(_:preserveFrame:)(1, *v2, v2[1]);
}

void closure #2 in SyncedLyricsLineView.Glyph.GlyphContainerView.grow(springTimingParameters:position:factor:delay:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SyncedLyricsLineView.Glyph.GlyphContainerView.purgeAnimators()();
  }
}

id SyncedLyricsLineView.Glyph.GlyphContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView.Glyph.GlyphContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SyncedLyricsLineView.Glyph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for UIViewPropertyAnimator()
{
  result = lazy cache variable for type metadata for UIViewPropertyAnimator;
  if (!lazy cache variable for type metadata for UIViewPropertyAnimator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIViewPropertyAnimator);
  }

  return result;
}

uint64_t sub_100471670()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004716CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100471720()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall SyncedLyricsLineView.Line.destroyViews()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    SyncedLyricsLineView.Word.destroyViews()();
  }

LABEL_10:
  v4 = *(v0 + 112);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v0 + 112);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 112) = 0;
}

id SyncedLyricsLineView.Line.contentView.getter()
{
  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  result = [result maskView];
  if (result)
  {
    return result;
  }

  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  v2 = [result subviews];
  type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_10:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t SyncedLyricsLineView.Line.words.didset()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v25 = _swiftEmptyArrayStorage;

    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v5 = 0;
    v4 = v25;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v7 = *(v6 + 48);
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
      }

      v25 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v9 > 1), v10 + 1, 1);
        v4 = v25;
      }

      ++v5;
      v4[2] = (v10 + 1);
      v4[v10 + 4] = v8;
    }

    while (v3 != v5);
  }

  v25 = v4;

  specialized MutableCollection<>.sort(by:)(&v25);

  if (v25[2])
  {
    v11 = v25[4];
  }

  else
  {
    v11 = 0;
  }

  v1[8] = v11;
  v12 = v1[2];
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v25 = _swiftEmptyArrayStorage;

    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v14 = v25;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v17 = *(v16 + 48);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v17 + 56 * v18 - 16);
        }

        else
        {
          v19 = 0;
        }

        v25 = v14;
        v21 = v14[2];
        v20 = v14[3];
        if (v21 >= v20 >> 1)
        {
          _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v20 > 1), v21 + 1, 1);
          v14 = v25;
        }

        ++v15;
        v14[2] = (v21 + 1);
        v14[v21 + 4] = v19;
      }

      while (v13 != v15);

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_34:
  v25 = v14;

  specialized MutableCollection<>.sort(by:)(&v25);

  v22 = v25[2];
  if (v22)
  {
    v23 = v25[v22 + 3];
  }

  else
  {
    v23 = 0;
  }

  v1[9] = v23;
  return result;
}

void SyncedLyricsLineView.Line.finishGradient(specs:)(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v4)
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      if (v6 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          return;
        }
      }

      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v8 + 32);
        v10 = v4;

LABEL_10:
        v2 = *(v9 + 104);
        if (!(v2 >> 62))
        {
          v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

LABEL_23:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
LABEL_12:
          v12 = v11 - 1;
          if (!__OFSUB__(v11, 1))
          {
            if ((v2 & 0xC000000000000001) == 0)
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v12 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v13 = *(v2 + 8 * v12 + 32);

                if (*(v1 + 120))
                {
LABEL_17:

                  return;
                }

                goto LABEL_28;
              }

              __break(1u);
              return;
            }

LABEL_27:

            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            if (*(v1 + 120))
            {
              goto LABEL_17;
            }

LABEL_28:
            [*(a1 + 200) lineHeight];
            v16 = vabdd_f64(v15 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v1 + 80))) * 0.5;
            *(v1 + 120) = 1;
            v17 = objc_opt_self();
            v18 = *(a1 + 648);
            v19 = swift_allocObject();
            *(v19 + 16) = v1;
            *(v19 + 24) = v4;
            *(v19 + 32) = v13;
            memcpy((v19 + 40), a1, 0x2B0uLL);
            *(v19 + 728) = v16;
            aBlock[4] = partial apply for closure #1 in SyncedLyricsLineView.Line.finishGradient(specs:);
            aBlock[5] = v19;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_47_1;
            v20 = _Block_copy(aBlock);
            v21 = v4;

            outlined init with copy of SyncedLyricsViewController.Specs(a1, v24);

            [v17 animateWithDuration:196609 delay:v20 options:0 animations:v18 completion:0.0];
            _Block_release(v20);
            type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
            v22 = static OS_dispatch_queue.main.getter();
            v23 = swift_allocObject();
            swift_weakInit();

            OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in SyncedLyricsLineView.Line.finishGradient(specs:), v23);

            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:

        return;
      }

      v14 = v4;

      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_10;
    }
  }
}

id closure #1 in SyncedLyricsLineView.Line.finishGradient(specs:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 58))
  {
    [a2 frame];
    v10 = v9;
    v12 = v11;
    v13 = *(a4 + 504);
    Width = CGRectGetWidth(*(a1 + 80));
    v15 = v12;
    v16 = v10;
    v17 = Width;
    v18 = -(v13 + a5);
    v19 = v13 + v17 + a5;
  }

  else
  {
    v19 = CGRectGetMaxX(*(a3 + 152)) + *(a4 + 504) + a5;
    [a2 frame];
  }

  return [a2 setFrame:{v18, v16, v19, v15}];
}

uint64_t closure #1 in SyncedLyricsLineView.Line.resetGradient(specs:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 0;
  }

  return result;
}

void SyncedLyricsLineView.Line.animate(progress:specs:)(unint64_t a1, double a2)
{
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (v14 >> 62)
  {
    v2 = *(v3 + 16);
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v2;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_3;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
LABEL_3:
    v111 = *(v3 + 56);
    v109 = *(v3 + 57);
    v113 = v14 & 0xC000000000000001;
    v108 = v14 & 0xFFFFFFFFFFFFFF8;
    v107 = v3;
    v117 = &v120;

    v5 = 0;
    v9 = 1107296256;
    v110 = v15;
    while (1)
    {
      if (v113)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v23 = *(v108 + 16);
        if (v5 >= v23)
        {
          __break(1u);
          goto LABEL_100;
        }

        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
LABEL_86:
          __break(1u);
LABEL_87:

LABEL_187:

          goto LABEL_188;
        }
      }

      v115 = v21;
      if (v111)
      {
        goto LABEL_39;
      }

      v15 = *(v21 + 104);
      if (v15 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_17:
        if (v4 >= 1)
        {
          v7 = 0;
          v2 = v15 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v6 = *(v15 + 8 * v7 + 32);
            }

            v8 = *(v6 + 16);
            v30 = v8 <= a2;
            if (*(v6 + 144) >= 2u)
            {
              if (*(v6 + 136))
              {
                if (v8 <= a2)
                {
                  goto LABEL_21;
                }

                v30 = 0;
              }

              else if (v8 > a2)
              {
                goto LABEL_21;
              }
            }

            outlined consume of AnimationStatus(v30, 2u);
            v24 = *(v6 + 136);
            v31 = *(v6 + 144);
            if (v31 == 1)
            {
              if (v24 && v8 <= a2)
              {
LABEL_37:
                outlined copy of AnimationStatus(*(v6 + 136), *(v6 + 144));
                outlined copy of AnimationStatus(v24, v31);
                [(objc_class *)v24 stopAnimation:1];
                goto LABEL_20;
              }
            }

            else if (!*(v6 + 144) && v24 && v8 > a2)
            {
              goto LABEL_37;
            }

            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
            v24 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
LABEL_20:
            v25 = swift_allocObject();
            *(v25 + 16) = v6;
            *(v25 + 24) = v8 > a2;
            memcpy((v25 + 32), a1, 0x2B0uLL);
            v124[4] = partial apply for closure #1 in SyncedLyricsLineView.Syllable.animate(reversed:specs:);
            v124[5] = v25;
            v124[0] = _NSConcreteStackBlock;
            v124[1] = 1107296256;
            v124[2] = thunk for @escaping @callee_guaranteed () -> ();
            v124[3] = &block_descriptor_23_2;
            v26 = _Block_copy(v124);

            outlined init with copy of SyncedLyricsViewController.Specs(a1, &aBlock);

            [(objc_class *)v24 addAnimations:v26];
            _Block_release(v26);
            v27 = swift_allocObject();
            *(v27 + 16) = v6;
            *(v27 + 24) = v8 > a2;
            v122 = partial apply for closure #2 in SyncedLyricsLineView.Syllable.animate(reversed:specs:);
            v123 = v27;
            aBlock = _NSConcreteStackBlock;
            v119 = 1107296256;
            v120 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
            v121 = &block_descriptor_29;
            v28 = _Block_copy(&aBlock);

            [(objc_class *)v24 addCompletion:v28];
            _Block_release(v28);

            v29 = *(v6 + 136);
            *(v6 + 136) = v24;
            LOBYTE(v26) = *(v6 + 144);
            *(v6 + 144) = v8 > a2;
            v3 = v24;
            outlined consume of AnimationStatus(v29, v26);
            [v3 startAnimation];

LABEL_21:
            ++v7;

            if (v4 == v7)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v23 = v15 & 0xFFFFFFFFFFFFFF8;
      v4 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_39:
      if (!v109)
      {
        v3 = v115;
        SyncedLyricsLineView.Word.animateGlow(progress:specs:)(a1, a2);

        goto LABEL_7;
      }

      v32 = *(v115 + 208);
      if (v32)
      {
        v33 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
        if (v33)
        {
          v4 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
          v2 = *(v115 + 48);
          if (*(v2 + 16))
          {
            if (*(v2 + 32) > a2)
            {
              goto LABEL_44;
            }
          }

          else if (a2 < 0.0)
          {
LABEL_44:
            v2 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
            LOBYTE(v6) = v115;
            v3 = v32;
            outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(v33, v4);
            v34 = v2;
            [v34 setBackgroundColor:v33];

            goto LABEL_7;
          }

          v35 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
          v6 = v32;
          outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(v33, v4);
          v36 = [v35 backgroundColor];
          if (v36)
          {
            v7 = v36;
            type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
            v37 = v4;
            v3 = static NSObject.== infix(_:_:)();

            if (v3)
            {

              goto LABEL_7;
            }
          }

          v38 = *(v2 + 16);
          if (v38)
          {
            v16 = *(v2 + 32);
            v17 = *(v2 + 32 + 56 * v38 - 48);
          }

          else
          {
            v16 = 0.0;
            v17 = 0.0;
          }

          v2 = v115;
          v3 = objc_opt_self();
          v8 = v17 - v16;
          v18 = swift_allocObject();
          v18[2] = v6;
          v18[3] = v33;
          v18[4] = v4;
          v122 = partial apply for closure #1 in SyncedLyricsLineView.Word.animateCrossfade(progress:);
          v123 = v18;
          aBlock = _NSConcreteStackBlock;
          v119 = 1107296256;
          v120 = thunk for @escaping @callee_guaranteed () -> ();
          v121 = &block_descriptor_41_0;
          v19 = _Block_copy(&aBlock);
          v6 = v6;
          v4 = v4;
          v20 = v33;

          [v3 animateWithDuration:v19 animations:v8];

          _Block_release(v19);
        }
      }

LABEL_7:
      v15 = v110;
      if (v5 == v110)
      {

        v3 = v107;
        break;
      }
    }
  }

LABEL_53:
  if ((*(v3 + 120) & 1) == 0 && (*(v3 + 57) & 1) == 0)
  {
    v39 = *(v3 + 112);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
      if (v40)
      {
        v41 = *(a1 + 200);
        v7 = v3;
        v15 = v40;
        [v41 lineHeight];
        v8 = vabdd_f64(v42 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v3 + 80))) * 0.5;
        v11 = *(a1 + 504);
        if (*(v3 + 72) > a2)
        {
          if (*(v3 + 64) > a2)
          {
            *(v3 + 128) = 0;

            if (*(v3 + 58))
            {
              v43 = *(v3 + 80);
              v44 = *(v3 + 88);
              v45 = *(v3 + 96);
              v46 = *(v3 + 104);
              v47 = v15;
              v125.origin.x = v43;
              v125.origin.y = v44;
              v125.size.width = v45;
              v125.size.height = v46;
              v48 = v8 * 0.5 + CGRectGetWidth(v125);
              [v47 frame];
              [v47 setFrame:v48];
            }

            else
            {
              v47 = v15;
            }

            [v47 frame];
            [v47 setFrame:{v64, v65, v8, v66, v107}];
            goto LABEL_85;
          }

          v5 = SyncedLyricsLineView.Line.currentWord(for:)(a2);
          a1 = v51;
          v52 = SyncedLyricsLineView.Line.currentSyllable(for:)(a2);
          v4 = v52;
          v3 = v53;
          if (v5 && v52)
          {
            v54 = *(v7 + 128);
            if (v54 && v52 == v54)
            {

              return;
            }

            LOBYTE(v6) = *(v7 + 58);
            v2 = *(v7 + 16);
            v23 = v2 >> 62;
            if (v6)
            {
              if (!v23)
              {
                if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_91:
                  if ((v2 & 0xC000000000000001) != 0)
                  {

                    v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();

                    v67 = *(v74 + 104);

                    swift_unknownObjectRelease();
                    if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
                    {
LABEL_95:
                      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
LABEL_96:
                        if ((v67 & 0xC000000000000001) != 0)
                        {
                          goto LABEL_194;
                        }

                        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          v68 = *(v67 + 32);
                          goto LABEL_115;
                        }

                        __break(1u);
                        goto LABEL_196;
                      }

LABEL_144:

                      goto LABEL_145;
                    }

LABEL_137:
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_96;
                    }

                    goto LABEL_144;
                  }

                  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v67 = *(*(v2 + 32) + 104);

                    if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

LABEL_134:

                goto LABEL_145;
              }

LABEL_131:
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_91;
              }

              goto LABEL_134;
            }

LABEL_101:
            if (v23)
            {
              v69 = _CocoaArrayWrapper.endIndex.getter();
              if (!v69)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v69 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v69)
              {
                goto LABEL_134;
              }
            }

            v70 = v69 - 1;
            if (__OFSUB__(v69, 1))
            {
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
LABEL_141:

              v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();

              v71 = *(v75 + 104);

              swift_unknownObjectRelease();
              if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
              {
                goto LABEL_143;
              }

              goto LABEL_109;
            }

            if ((v70 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_175:
              __break(1u);
            }

            else if (v70 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v71 = *(*(v2 + 8 * v70 + 32) + 104);

              if (v71 < 0 || (v71 & 0x4000000000000000) != 0)
              {
LABEL_143:
                v72 = _CocoaArrayWrapper.endIndex.getter();
                if (!v72)
                {
                  goto LABEL_144;
                }

                goto LABEL_110;
              }

LABEL_109:
              v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v72)
              {
                goto LABEL_144;
              }

LABEL_110:
              v22 = __OFSUB__(v72, 1);
              v73 = v72 - 1;
              if (!v22)
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  goto LABEL_194;
                }

                if ((v73 & 0x8000000000000000) == 0)
                {
                  if (v73 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v68 = *(v71 + 8 * v73 + 32);
                    while (1)
                    {
LABEL_115:

                      if (v68 == v4)
                      {
                        v10 = 1.0;
                      }

                      else
                      {
LABEL_145:
                        v76 = *(v4 + 64);
                        if (!v76 || (v10 = 0.5, v76 >= 3))
                        {
                          if (!v3 || (, v77 = String.count.getter(), , v10 = 0.25, v77 >= 3))
                          {
                            v10 = 0.12;
                          }
                        }
                      }

                      if (v6)
                      {
                        v78 = *(v4 + 152) - v11 * v10 - v8;
                        [v15 frame];
                        v80 = v79;
                        v81 = v7;
                        v82 = CGRectGetWidth(*(v7 + 80)) - v78;
                        goto LABEL_183;
                      }

                      v9 = *(v4 + 16);
                      a2 = *(v4 + 24);
                      v70 = *(v4 + 32);
                      v2 = *(v4 + 40);
                      v84 = *(v4 + 48);
                      v83 = *(v4 + 56);
                      v85 = *(v4 + 64);
                      v6 = *(v5 + 104);
                      if (v6 >> 62)
                      {
                        v115 = *(v4 + 56);
                        v117 = *(v4 + 48);
                        v86 = _CocoaArrayWrapper.endIndex.getter();
                        v84 = v117;
                        v83 = v115;
                        if (!v86)
                        {
LABEL_172:

                          if (!v2)
                          {
                            goto LABEL_190;
                          }

LABEL_179:

                          goto LABEL_180;
                        }
                      }

                      else
                      {
                        v86 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (!v86)
                        {
                          goto LABEL_172;
                        }
                      }

                      v113 = v85;
                      v87 = v86 - 1;
                      if (__OFSUB__(v86, 1))
                      {
                        goto LABEL_175;
                      }

                      v115 = v83;
                      v117 = v84;
                      if ((v6 & 0xC000000000000001) != 0)
                      {
                        goto LABEL_177;
                      }

                      if ((v87 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v87 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v88 = *(v6 + 8 * v87 + 32);
                        v90 = *(v88 + 16);
                        v89 = *(v88 + 24);
                        v92 = *(v88 + 32);
                        v91 = *(v88 + 40);
                        v116 = *(v88 + 48);
                        v114 = *(v88 + 56);
                        v112 = *(v88 + 64);

                        if (!v2)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_159;
                      }

                      __break(1u);
LABEL_194:
                      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      swift_unknownObjectRelease();
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
                return;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            __break(1u);
LABEL_177:

            v94 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            v95 = v94;
            v90 = *(v94 + 16);
            v89 = *(v94 + 24);
            v92 = *(v94 + 32);
            v91 = v95[5];
            v116 = v95[6];
            v114 = v95[7];
            v112 = v95[8];

            swift_unknownObjectRelease();
            if (v2)
            {
LABEL_159:
              if (!v91 || *&v9 != v90 || a2 != v89)
              {
                goto LABEL_179;
              }

              if (v70 == v92 && v91 == v2)
              {
              }

              else
              {
                v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v93 & 1) == 0)
                {
                  goto LABEL_180;
                }
              }

              if (v117 == v116 && v115 == v114)
              {

                if (v113 == v112 && a1)
                {
LABEL_191:
                  MaxX = *(a1 + 176);
LABEL_182:
                  [v15 frame];
                  v78 = v97;
                  v80 = v98;
                  v82 = v8 + v11 * v10 + MaxX;
                  v81 = v7;
LABEL_183:
                  [v15 frame];
                  v100 = v99;

                  v101 = *(v81 + 112);
                  if (v101)
                  {
                    v102 = *(v4 + 24) - *(v4 + 16);
                    v103 = objc_opt_self();
                    v104 = swift_allocObject();
                    *(v104 + 16) = v101;
                    *(v104 + 24) = v78;
                    *(v104 + 32) = v80;
                    *(v104 + 40) = v82;
                    *(v104 + 48) = v100;
                    v122 = partial apply for closure #1 in SyncedLyricsLineView.Line.LineView.animateGradient(frame:duration:);
                    v123 = v104;
                    aBlock = _NSConcreteStackBlock;
                    v119 = 1107296256;
                    v120 = thunk for @escaping @callee_guaranteed () -> ();
                    v121 = &block_descriptor_35_1;
                    v105 = _Block_copy(&aBlock);
                    v106 = v101;

                    [v103 animateWithDuration:196609 delay:v105 options:0 animations:v102 completion:0.0];
                    _Block_release(v105);
                  }

                  else
                  {
                  }

                  *(v7 + 128) = v4;
                  goto LABEL_187;
                }
              }

              else
              {
LABEL_180:
              }
            }

            else
            {
LABEL_178:
              if (v91)
              {
                goto LABEL_179;
              }

LABEL_190:

              if (a1)
              {
                goto LABEL_191;
              }
            }

            MaxX = CGRectGetMaxX(*(v4 + 152));
            goto LABEL_182;
          }

          goto LABEL_87;
        }

        if (*(v3 + 58))
        {
          v47 = v15;
          [v47 frame];
          [v47 setFrame:{-(v11 + v8), v49, v11 + v8 + CGRectGetWidth(*(v3 + 80)), v50, v107}];
LABEL_85:

          goto LABEL_188;
        }

        v55 = *(v3 + 16);
        if (v55 >> 62)
        {
          v56 = _CocoaArrayWrapper.endIndex.getter();
          if (!v56)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v56)
          {
LABEL_188:
            [v15 setNeedsDisplay];

            return;
          }
        }

        v2 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        else if ((v55 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_124;
          }

          if (v2 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_127;
          }

          v2 = *(v55 + 8 * v2 + 32);

LABEL_75:
          a1 = *(v2 + 104);
          if (!(a1 >> 62))
          {
            v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v57)
            {
              goto LABEL_187;
            }

LABEL_77:
            v3 = v57 - 1;
            if (!__OFSUB__(v57, 1))
            {
              if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v3 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v58 = *(a1 + 8 * v3 + 32);

LABEL_82:
                  v59 = v58[19];
                  v60 = v58[20];
                  v61 = v58[21];
                  v62 = v58[22];
                  v63 = v15;
                  v126.origin.x = v59;
                  v126.origin.y = v60;
                  v126.size.width = v61;
                  v126.size.height = v62;
                  CGRectGetMaxX(v126);
                  [v63 frame];
                  [v63 setFrame:?];

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_131;
              }

LABEL_128:

              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();

              goto LABEL_82;
            }

LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_124:
          v57 = _CocoaArrayWrapper.endIndex.getter();
          if (!v57)
          {
            goto LABEL_187;
          }

          goto LABEL_77;
        }

        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_75;
      }
    }
  }
}

uint64_t SyncedLyricsLineView.Line.currentWord(for:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_28:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:

  for (i = 4; ; ++i)
  {
    v6 = i - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }
    }

    v8 = *(v7 + 48);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 32);
      v11 = *(v8 + 32 + 56 * v9 - 48);

      if (v10 > v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      v10 = 0.0;
      v11 = 0.0;
    }

    if (v10 <= a1 && v11 > a1)
    {
      break;
    }

    v13 = i - 3;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_26;
    }

    if (v13 == v4)
    {

      return 0;
    }
  }

  result = swift_beginAccess();
  v15 = *(v1 + 16);
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (v6 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * i);

LABEL_24:
    result = swift_endAccess();
    if (!__OFADD__(v6, 1))
    {
      v17 = type metadata accessor for SyncedLyricsLineView.Word();

      Array.subscript.getter(v17, v18);

      return v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SyncedLyricsLineView.Line.currentSyllable(for:)(double a1)
{
  swift_beginAccess();

  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = v3 & 0xC000000000000001;
    v6 = 4;
    while (1)
    {
      v7 = v6 - 4;
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      if (v9 > v10)
      {
        goto LABEL_23;
      }

      if (v9 <= a1 && v10 > a1)
      {
        break;
      }

      v12 = v6 - 3;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_24;
      }

      ++v6;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!__OFADD__(v7, 1))
      {
LABEL_19:
        v15 = v14;
        v16 = type metadata accessor for SyncedLyricsLineView.Syllable();
        Array.subscript.getter(v16, &v17);

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_16:

  return 0;
}

id SyncedLyricsLineView.Line.updatedView(color:kind:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(v3 + 112);
  if (v8)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = v8;
    [v13 setFrame:{v9, v10, v11, v12}];
    v14 = SyncedLyricsLineView.Line.contentView.getter();
    if (!v14)
    {
      v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
    }

    v66 = v14;
    [v14 setFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
  }

  else
  {
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
    v17 = *(v3 + 96);
    v18 = *(v3 + 104);
    v19 = *(v3 + 58);
    v20 = *(v4 + 57);
    v21 = type metadata accessor for SyncedLyricsLineView.Line.LineView();
    v22 = v5;
    v23 = objc_allocWithZone(v21);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = 0;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = 0;
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind] = a2 & 1;
    memcpy(&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs], v22, 0x2B0uLL);
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_animationKind] = v20;
    v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_direction] = v19;
    outlined init with copy of SyncedLyricsViewController.Specs(v22, aBlock);
    v71.receiver = v23;
    v71.super_class = v21;
    v24 = objc_msgSendSuper2(&v71, "initWithFrame:", v15, v16, v17, v18);
    v25 = v24;
    if ((v20 & 1) == 0)
    {
      v26 = v24;
      v70 = a1;
      v27 = [a1 CGColor];
      v28 = [objc_allocWithZone(CALayer) init];
      [v28 setBackgroundColor:v27];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v29 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v29 + 40)))
      {
        v30 = [v26 layer];
        [v30 addSublayer:v28];

        v27 = v30;
      }

      v31 = *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
      *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = v28;

      v32 = SyncedLyricsLineView.Line.LineView.createGradientView(kind:specs:direction:)(a2 & 1, a3, v19);
      v33 = *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
      *&v26[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = v32;

      a1 = v70;
    }

    v34 = *(v4 + 96);
    v35 = *(v4 + 104);
    v36 = objc_allocWithZone(UIView);
    v13 = v25;
    v66 = [v36 initWithFrame:{0.0, 0.0, v34, v35}];
    v37 = *(v4 + 112);
    *(v4 + 112) = v13;

    v5 = a3;
  }

  v64 = *(v4 + 57);
  if (v64 == 1)
  {
    v38 = 61;
    if (a2)
    {
      v38 = 62;
    }

    v39 = v5[v38];
    v40 = v39;
    v41 = a1;
  }

  else
  {
    a1 = 0;
    v39 = 0;
  }

  swift_beginAccess();
  v42 = *(v4 + 16);
  if (v42 >> 62)
  {
LABEL_34:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    v44 = v66;
    if (v43)
    {
      goto LABEL_21;
    }

LABEL_35:
    v42 = 0;
    if ((v64 & 1) == 0)
    {
LABEL_36:
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v54 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v54 + 40)))
      {
        [v13 setMaskView:{v44, v63}];
        goto LABEL_46;
      }
    }

    goto LABEL_40;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v66;
  if (!v43)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (v43 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v63 = v13;

  v68 = 0;
  v13 = 0;
  v69 = v43;
  do
  {
    if ((v42 & 0xC000000000000001) != 0)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v48 = *(v42 + 8 * v13 + 32);
    }

    v49 = swift_allocObject();
    v49[2] = v48;
    memcpy(v49 + 3, v5, 0x2B0uLL);
    v49[89] = a1;
    v49[90] = v39;
    v49[91] = v44;
    if (*(v48 + 208))
    {
      outlined init with copy of SyncedLyricsViewController.Specs(v5, aBlock);

      v45 = v44;
      outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(a1, v39);
      SyncedLyricsLineView.Word.updatedView(specs:crossfadeAnimationParameters:)(v5, a1, v39);
      v47 = v46;
      [v45 addSubview:v46];
    }

    else
    {
      v67 = objc_opt_self();
      v50 = swift_allocObject();
      *(v50 + 16) = partial apply for specialized closure #1 in SyncedLyricsLineView.Line.updatedView(color:kind:specs:);
      *(v50 + 24) = v49;
      outlined init with copy of SyncedLyricsViewController.Specs(v5, aBlock);

      v51 = v44;
      v52 = a1;
      outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(a1, v39);

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v68);
      v5 = swift_allocObject();
      v68 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
      v5[2] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
      v5[3] = v50;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_82;
      a1 = _Block_copy(aBlock);

      [v67 performWithoutAnimation:a1];

      _Block_release(a1);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_34;
      }

      a1 = v52;
      v5 = a3;
      v44 = v66;
    }

    v13 = v13 + 1;
  }

  while (v69 != v13);

  v13 = v63;
  v42 = v68;
  if ((v64 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  [v13 addSubview:{v44, v63}];
  if (one-time initialization token for shared != -1)
  {
LABEL_49:
    swift_once();
  }

  v55 = static LyricsOptionsManager.shared;
  if ((os_variant_has_internal_content() & 1) != 0 && _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v55 + 40)))
  {
    v56 = objc_opt_self();
    v57 = [v56 grayColor];
    [v13 setBackgroundColor:v57];

    v58 = [v56 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v60, v59 & 1, v61);
LABEL_46:

    outlined consume of Artwork.Content?(a1, v39);
    goto LABEL_47;
  }

  outlined consume of Artwork.Content?(a1, v39);

LABEL_47:
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v42);
  return v13;
}

id *specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 104);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            lazy protocol witness table accessor for type [SyncedLyricsLineView.Syllable] and conformance [A]();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7LyricsX06SyncedA8LineViewC8SyllableCGMd);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for SyncedLyricsLineView.Syllable();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
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
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 88);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            lazy protocol witness table accessor for type [SyncedLyricsLineView.Glyph] and conformance [A]();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7LyricsX06SyncedA8LineViewC5GlyphCGMd);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for SyncedLyricsLineView.Glyph();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
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
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

char *SyncedLyricsLineView.Line.LineView.createGradientView(kind:specs:direction:)(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  [*(a2 + 200) lineHeight];
  v9 = v8 * *(a2 + 256) + *(a2 + 464) + *(a2 + 464);
  [v4 frame];
  v10 = vabdd_f64(v9, CGRectGetHeight(v28)) * 0.5;
  if (a3)
  {
    [v4 frame];
    v11 = v10 * 0.5 + CGRectGetWidth(v29);
  }

  else
  {
    v11 = -v10;
  }

  [v4 frame];
  v12 = v10 + v10 + CGRectGetHeight(v30);
  v13 = 488;
  if (a1)
  {
    v13 = 496;
  }

  v14 = *(a2 + v13);
  v15 = *(a2 + 504);
  v16 = type metadata accessor for LineProgressGradientView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v18 = &v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = v14;
  *&v17[v19] = [v20 init];
  v22 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v17[v22] = [objc_allocWithZone(UIView) init];
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = v21;
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = v15;
  v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a3 & 1;
  v27.receiver = v17;
  v27.super_class = v16;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", v11, -v10, v10, v12);
  [v24 setClipsToBounds:{1, v27.receiver, v27.super_class}];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  LineProgressGradientView.updateDirection()();
  LineProgressGradientView.updateColors()();

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = static LyricsOptionsManager.shared;
  if (!os_variant_has_internal_content() || !_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v25 + 40)))
  {
    [v4 addSubview:v24];
  }

  return v24;
}

Swift::Void __swiftcall SyncedLyricsLineView.Line.LineView.layoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 200] lineHeight];
  [v0 frame];
  CGRectGetHeight(v15);
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v3 = -CGRectGetWidth(v16);
    [v0 frame];
    v4 = -CGRectGetHeight(v17);
    [v0 frame];
    v5 = CGRectGetWidth(v18) * 3.0;
    [v0 frame];
    [v2 setFrame:{v3, v4, v5, CGRectGetHeight(v19) * 3.0}];
  }

  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v6)
  {
    v7 = v6;
    [v0 frame];
    v8 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v9 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v10 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
    v11 = v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16];
    *v8 = v12;
    *(v8 + 1) = v13;
    v8[16] = 0;
    LineProgressGradientView.outerPadding.didset(v9, v10, v11);
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.Line.LineView.tintColorDidChange()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v3 = *v2;
    v4 = *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v2;
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
    v5 = v3;
    v6 = v1;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      LineProgressGradientView.updateColors()();
    }
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.Line.LineView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", isa);
  v3 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v3)
  {
    if (v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v5 = *v4;
    v6 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v4;
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
    v7 = v5;
    v8 = v3;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      LineProgressGradientView.updateColors()();
    }
  }
}

uint64_t SyncedLyricsLineView.Line.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.Line.AnimationKind and conformance SyncedLyricsLineView.Line.AnimationKind()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.Line.AnimationKind and conformance SyncedLyricsLineView.Line.AnimationKind;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.Line.AnimationKind and conformance SyncedLyricsLineView.Line.AnimationKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.Line.AnimationKind and conformance SyncedLyricsLineView.Line.AnimationKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.Line and conformance SyncedLyricsLineView.Line()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.Line and conformance SyncedLyricsLineView.Line;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.Line and conformance SyncedLyricsLineView.Line)
  {
    type metadata accessor for SyncedLyricsLineView.Line();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.Line and conformance SyncedLyricsLineView.Line);
  }

  return result;
}

uint64_t sub_100474B98()
{

  v1 = *(v0 + 712);
  if (v1)
  {
  }

  return swift_deallocObject();
}

void partial apply for specialized closure #1 in SyncedLyricsLineView.Line.updatedView(color:kind:specs:)()
{
  v1 = *(v0 + 728);
  SyncedLyricsLineView.Word.updatedView(specs:crossfadeAnimationParameters:)(v0 + 24, *(v0 + 712), *(v0 + 720));
  v3 = v2;
  [v1 addSubview:v2];
}

uint64_t sub_100474D00()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100474D60()
{

  return swift_deallocObject();
}

uint64_t sub_100474E50()
{

  return swift_deallocObject();
}

uint64_t sub_100474E94()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in SyncedLyricsLineView.Line.LineView.animateGradient(frame:duration:)()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_100474EF8()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [SyncedLyricsLineView.Syllable] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SyncedLyricsLineView.Syllable] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SyncedLyricsLineView.Syllable] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7LyricsX06SyncedA8LineViewC8SyllableCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SyncedLyricsLineView.Syllable] and conformance [A]);
  }

  return result;
}

uint64_t sub_100474FB0()
{

  return swift_deallocObject();
}

uint64_t sub_1004750B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *closure #1 in SyncedLyricsLineView.Syllable.animate(reversed:specs:)(void *result, char a2, uint64_t a3)
{
  v3 = result[23];
  if (v3)
  {
    if (a2)
    {
      v4 = xmmword_100507B70;
      v5 = xmmword_1005079C0;
      v6 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v7, 0.0, -*(a3 + 624));
      v5 = *&v7.a;
      v4 = *&v7.c;
      v6 = *&v7.tx;
    }

    *&v7.a = v5;
    *&v7.c = v4;
    *&v7.tx = v6;
    return [v3 setTransform:&v7];
  }

  return result;
}

void closure #2 in SyncedLyricsLineView.Syllable.animate(reversed:specs:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v3 = *(a2 + 136);
    *(a2 + 136) = (a3 & 1) == 0;
    v4 = *(a2 + 144);
    *(a2 + 144) = 2;
    outlined consume of AnimationStatus(v3, v4);
  }
}

id closure #1 in SyncedLyricsLineView.Syllable.resetLift(specs:)(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

void closure #2 in SyncedLyricsLineView.Syllable.resetLift(specs:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = *(a2 + 136);
    *(a2 + 136) = 0;
    v3 = *(a2 + 144);
    *(a2 + 144) = 2;
    outlined consume of AnimationStatus(v2, v3);
  }
}

UIView __swiftcall SyncedLyricsLineView.Syllable.updatedView()()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192) - *(v0 + 152);
  MaxX = CGRectGetMaxX(*(v0 + 200));
  Height = CGRectGetHeight(*(v0 + 152));
  v5 = *(v0 + 184);
  if (v5)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = v5;
    [v10 setFrame:{v6, v7, v8, v9}];
    [*&v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] setFrame:{v2, v1, MaxX, Height}];
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.Syllable.SyllableView());
    v16 = v12;
    v17 = v0;
    v18 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v16, v13, v11, v14, v15);
    [v18 setFrame:{v2, v1, MaxX, Height}];
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = type metadata accessor for SyncedLyricsLineView.Syllable.SyllableContainerView();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] = v18;
    v28.receiver = v24;
    v28.super_class = v23;
    v25 = v18;
    v10 = objc_msgSendSuper2(&v28, "initWithFrame:", v19, v20, v21, v22);
    [v10 addSubview:{v25, v28.receiver, v28.super_class}];

    v26 = *(v17 + 184);
    *(v17 + 184) = v10;
  }

  return v10;
}

id SyncedLyricsLineView.Syllable.SyllableContainerView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t SyncedLyricsLineView.Syllable.__deallocating_deinit()
{

  outlined consume of AnimationStatus(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:)(void *a1, char a2, const void *a3)
{
  v6 = *(v3 + 96);
  v7 = "MusicTabsDictionaryProvider";
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v3;
    v10 = swift_allocObject();
    v39 = partial apply for closure #1 in SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:);
    *(v10 + 16) = partial apply for closure #1 in SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:);
    *(v10 + 24) = v9;
    v49 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v50 = v10;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = thunk for @escaping @callee_guaranteed () -> ();
    v48 = &block_descriptor_22_1;
    v11 = _Block_copy(&aBlock);
    v12 = v6;

    [v8 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
      return result;
    }

    v14 = v12;
    v7 = "MusicTabsDictionaryProvider";
  }

  else
  {
    v15 = [objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContainer.TextContainerView()) initWithFrame:{*(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88)}];
    v16 = *(v3 + 96);
    *(v3 + 96) = v15;
    v14 = v15;

    v39 = 0;
  }

  v17 = *(v3 + 56);
  v44 = *(v17 + 16);
  if (v44)
  {
    v18 = a2 & 1;

    v42 = 0;
    v19 = 0;
    v20 = *(v7 + 251);
    v21 = a3;
    v43 = a2 & 1;
    while (v19 < *(v17 + 16))
    {
      v24 = *(v17 + 8 * v19 + 32);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = a1;
      *(v25 + 32) = v18;
      memcpy((v25 + 40), v21, 0x2B0uLL);
      *(v25 + 728) = v14;
      if (*(v24 + 112))
      {
        swift_retain_n();
        outlined init with copy of SyncedLyricsViewController.Specs(v21, &aBlock);
        v22 = a1;
        v23 = v14;
        v7 = SyncedLyricsLineView.Line.updatedView(color:kind:specs:)(v22, v18, v21);
        [v23 addSubview:v7];
      }

      else
      {
        v41 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = partial apply for closure #2 in SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:);
        *(v26 + 24) = v25;
        swift_retain_n();
        outlined init with copy of SyncedLyricsViewController.Specs(v21, &aBlock);
        v27 = a1;
        v28 = v14;
        v29 = v14;

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v42);
        v7 = swift_allocObject();
        v42 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
        *(v7 + 2) = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
        *(v7 + 3) = v26;
        v49 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
        v50 = v7;
        aBlock = _NSConcreteStackBlock;
        v46 = v20;
        v47 = thunk for @escaping @callee_guaranteed () -> ();
        v48 = &block_descriptor_83;
        v30 = _Block_copy(&aBlock);
        v14 = v50;

        [v41 performWithoutAnimation:v30];

        _Block_release(v30);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_21;
        }

        v14 = v28;
        v21 = a3;
      }

      ++v19;
      v18 = v43;
      if (v44 == v19)
      {

        v7 = v42;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_15:
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v32 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content())
  {
    if (_sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v32 + 40)))
    {
      v33 = objc_opt_self();
      v34 = [v33 blackColor];
      [v14 setBackgroundColor:v34];

      v35 = [v33 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v37, v36 & 1, v38);
    }
  }

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v39);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v7);
  return v14;
}

Swift::Void __swiftcall SyncedLyricsLineView.TextContainer.destroyViews()()
{
  v1 = *(v0 + 56);
  v38 = *(v1 + 16);
  if (v38)
  {
    v39 = v1 + 32;

    v40 = v1;

    v2 = 0;
    while (1)
    {
      if (v2 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v41 = v2;
      v3 = *(v39 + 8 * v2);
      swift_beginAccess();
      v4 = v3;
      v5 = *(v3 + 16);
      if (!(v5 >> 62))
      {
        v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
          break;
        }

        goto LABEL_46;
      }

      v29 = *(v3 + 16);
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v29;
      v0 = v30;
      v4 = v3;
      if (v0)
      {
        break;
      }

LABEL_46:
      v28 = v4;

LABEL_47:
      v31 = *(v28 + 112);
      v32 = v28;
      if (v31)
      {
        [v31 removeFromSuperview];
        v32 = v28;
        v33 = *(v28 + 112);
      }

      else
      {
        v33 = 0;
      }

      *(v32 + 112) = 0;

      v2 = v41 + 1;
      if (v41 + 1 == v38)
      {

        v0 = v36;
        goto LABEL_52;
      }
    }

    if (v0 >= 1)
    {
      v43 = v5 & 0xC000000000000001;
      v37 = v4;

      v6 = 0;
      v42 = v0;
      while (1)
      {
        if (v43)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v44 = v9;
        v45 = v6;
        v10 = *(v9 + 104);
        v46 = v10;
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_39;
        }

        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          break;
        }

LABEL_39:
        v0 = v44;
        v24 = *(v44 + 208);
        if (v24)
        {
          [v24 removeFromSuperview];
          v25 = *(v44 + 208);
        }

        else
        {
          v25 = 0;
        }

        *(v44 + 208) = 0;

        if (!*(v44 + 208))
        {
          v26 = *(v44 + 128);
          *(v44 + 128) = 0;
          v27 = *(v44 + 136);
          *(v44 + 136) = 2;
          outlined consume of AnimationStatus(v26, v27);
        }

        v6 = v45 + 1;
        v7 = *(v44 + 128);
        *(v44 + 128) = 0;
        v8 = *(v44 + 136);
        *(v44 + 136) = 2;
        outlined consume of AnimationStatus(v7, v8);

        if (v45 + 1 == v42)
        {

          v28 = v37;
          goto LABEL_47;
        }
      }

      v12 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v17 = *(v46 + 32 + 8 * v12);

          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        v0 = *(v17 + 88);
        if (!(v0 >> 62))
        {
          v19 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v19 = _CocoaArrayWrapper.endIndex.getter();
        if (v19)
        {
LABEL_26:
          if (v19 >= 1)
          {
            v20 = 0;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v23 = *(v22 + 96);
                if (!v23)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v22 = *(v0 + 8 * v20 + 32);

                v23 = *(v22 + 96);
                if (!v23)
                {
LABEL_34:
                  v21 = 0;
                  goto LABEL_29;
                }
              }

              [v23 removeFromSuperview];
              v21 = *(v22 + 96);
LABEL_29:
              ++v20;
              *(v22 + 96) = 0;

              if (v19 == v20)
              {
                goto LABEL_15;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_15:
        v13 = *(v17 + 184);
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *(v17 + 184);
        }

        else
        {
          v14 = 0;
        }

        *(v17 + 184) = 0;

        v15 = *(v17 + 136);
        *(v17 + 136) = 0;
        v16 = *(v17 + 144);
        *(v17 + 144) = 2;
        outlined consume of AnimationStatus(v15, v16);

        if (v12 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    v34 = *(v0 + 96);
    if (v34)
    {
      [v34 removeFromSuperview];
      v35 = *(v0 + 96);
    }

    else
    {
LABEL_56:
      v35 = 0;
    }

    *(v0 + 96) = 0;
  }
}

uint64_t SyncedLyricsLineView.TextContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004761BC()
{

  return swift_deallocObject();
}

void partial apply for closure #2 in SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:)()
{
  v1 = *(v0 + 728);
  v2 = SyncedLyricsLineView.Line.updatedView(color:kind:specs:)(*(v0 + 24), *(v0 + 32), v0 + 40);
  [v1 addSubview:v2];
}

uint64_t sub_100476314()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100476374()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall SyncedLyricsLineView.Word.resetAnimation()()
{
  v1 = v0;
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = [v2 layer];
    [v3 removeAllAnimations];
  }

  if (*(v1 + 232))
  {

    Task.cancel()();
  }

  *(v1 + 232) = 0;

  v4 = *(v1 + 208);
  if (v4)
  {
    v5 = v4;
    SyncedLyricsLineView.Word.WordView.resetGlow()();
  }

  v6 = specialized Sequence.flatMap<A>(_:)(*(v1 + 104));
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v28 = v7;
    v29 = v7 & 0xC000000000000001;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v25 = v1;
    v26 = (v7 + 32);
    while (1)
    {
      if (v29)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          break;
        }

        goto LABEL_17;
      }

      if (v9 >= *(v27 + 16))
      {
        goto LABEL_33;
      }

      v10 = v26[v9];

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        break;
      }

LABEL_17:
      v12 = *(v10 + 96);
      if (v12)
      {
        v30 = *(v10 + 80);
        v31 = *(v10 + 64);
        v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v7 = *&v12[v1];
        if (v7 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
          if (!v13)
          {
LABEL_28:
            v18 = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        if (v13 < 1)
        {
          goto LABEL_32;
        }

        v1 = v7 & 0xC000000000000001;
        v14 = v12;

        for (j = 0; j != v13; ++j)
        {
          if (v1)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = *(v7 + 8 * j + 32);
          }

          v17 = v16;
          [v16 stopAnimation:0];
        }

LABEL_29:
        SyncedLyricsLineView.Glyph.GlyphContainerView.purgeAnimators()();
        v19 = CGPoint.center.unsafeMutableAddressor();
        swift_beginAccess();
        UIView.setAnchorPoint(_:preserveFrame:)(1, *v19, v19[1]);
        type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
        type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
        v20 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        *(v21 + 40) = v30;
        *(v21 + 24) = v31;
        v22 = v12;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v20, 0, closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.reset(frame:)partial apply, v21, 0, 0, 0.0);

        [v22 sizeToFit];

        v7 = v28;
        if (v9 == i)
        {
LABEL_30:

          v1 = v25;
          goto LABEL_36;
        }
      }

      else
      {

        if (v9 == i)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_36:
  v23 = *(v1 + 128);
  *(v1 + 128) = 0;
  v24 = *(v1 + 136);
  *(v1 + 136) = 2;
  outlined consume of AnimationStatus(v23, v24);
}

Swift::Void __swiftcall SyncedLyricsLineView.Word.destroyViews()()
{
  v1 = *(v0 + 104);
  v23 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v8 = *(v23 + 32 + 8 * v3);

          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v10 = *(v8 + 88);
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_4;
        }

        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (v11)
        {
          break;
        }

LABEL_4:
        v4 = *(v8 + 184);
        if (v4)
        {
          [v4 removeFromSuperview];
          v5 = *(v8 + 184);
        }

        else
        {
          v5 = 0;
        }

        *(v8 + 184) = 0;

        v6 = *(v8 + 136);
        *(v8 + 136) = 0;
        v7 = *(v8 + 144);
        *(v8 + 144) = 2;
        outlined consume of AnimationStatus(v6, v7);

        if (v3 == v2)
        {
          goto LABEL_31;
        }
      }

      if (v11 >= 1)
      {
        break;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = *(v14 + 96);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);

        v15 = *(v14 + 96);
        if (!v15)
        {
LABEL_23:
          v13 = 0;
          goto LABEL_18;
        }
      }

      [v15 removeFromSuperview];
      v13 = *(v14 + 96);
LABEL_18:
      ++v12;
      *(v14 + 96) = 0;

      if (v11 == v12)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_31:
  v16 = *(v22 + 208);
  if (v16)
  {
    [v16 removeFromSuperview];
    v17 = *(v22 + 208);
  }

  else
  {
    v17 = 0;
  }

  *(v22 + 208) = 0;

  if (!*(v22 + 208))
  {
    v18 = *(v22 + 128);
    *(v22 + 128) = 0;
    v19 = *(v22 + 136);
    *(v22 + 136) = 2;
    outlined consume of AnimationStatus(v18, v19);
  }

  v20 = *(v22 + 128);
  *(v22 + 128) = 0;
  v21 = *(v22 + 136);
  *(v22 + 136) = 2;

  outlined consume of AnimationStatus(v20, v21);
}

void SyncedLyricsLineView.Word.frame.setter(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 176);
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4;
  *(v4 + 216) = a1 - v5 + *(v4 + 216);
  v6 = *(v4 + 104);
  v17 = v6;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_21;
      }

LABEL_11:
      v11 = *(v4 + 216);
      *(v9 + 192) = v11;
      *(v9 + 152) = CGRectOffset(*(v9 + 200), v11, 0.0);
      v12 = *(v9 + 88);
      if (v12 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_22;
      }

      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        ++v14;
        v16 = *(v9 + 192);
        *(v15 + 104) = v16;
        *(v15 + 64) = CGRectOffset(*(v15 + 112), v16, 0.0);
      }

      while (v13 != v14);
LABEL_4:

      if (v8 == i)
      {
        return;
      }
    }

    if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v9 = *(v17 + 32 + 8 * v8);

    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

unint64_t SyncedLyricsLineView.Word.endTime.getter()
{
  v1 = *(v0 + 104);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if (__OFSUB__(result--, 1))
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }

        __break(1u);
        return result;
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  return result;
}

void SyncedLyricsLineView.Word.animateGlow(progress:specs:)(uint64_t a1, double a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_4);
  __chkstk_darwin();
  *&v7 = &v78 - v6;
  v8 = *(v2 + 6);
  v9 = *(*&v8 + 16);
  if (!v9)
  {
    if (a2 >= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

  if (*(*&v8 + 32) > a2)
  {
LABEL_5:
    if (v2[136] < 2u || *(v2 + 16))
    {
      v10 = *(v2 + 26);
      if (v10)
      {
        v11 = [v10 layer];
        [v11 removeAllAnimations];
      }

      if (*(v2 + 29))
      {

        Task.cancel()();
      }

      *(v2 + 29) = 0;

      v12 = *(v2 + 26);
      if (v12)
      {
        v13 = v12;
        SyncedLyricsLineView.Word.WordView.resetGlow()();
      }

      v84 = v8;
      v14 = specialized Sequence.flatMap<A>(_:)(*(v2 + 13));
      v15 = v14;
      v85 = 0;
      if (v14 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v81 = v7;
        v82 = a1;
        v83 = v3;
        a1 = 0;
        v89.super.isa = (v15 & 0xC000000000000001);
        v87 = v15 & 0xFFFFFFFFFFFFFF8;
        v86 = v15 + 32;
        v7 = COERCE_DOUBLE(&selRef_parent);
        v88 = v15;
        while (1)
        {
          if (v89.super.isa)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = __OFADD__(a1++, 1);
            if (v18)
            {
              break;
            }

            goto LABEL_23;
          }

          if (a1 >= *(v87 + 16))
          {
            goto LABEL_39;
          }

          v17 = *(v86 + 8 * a1);

          v18 = __OFADD__(a1++, 1);
          if (v18)
          {
            break;
          }

LABEL_23:
          v19 = *(v17 + 96);
          if (v19)
          {
            v20 = *(v17 + 64);
            v90 = *(v17 + 80);
            v91 = v20;
            v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
            swift_beginAccess();
            v21 = *&v19[v15];
            if (v21 >> 62)
            {
              v22 = _CocoaArrayWrapper.endIndex.getter();
              if (!v22)
              {
LABEL_34:
                v27 = v19;
                goto LABEL_35;
              }
            }

            else
            {
              v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v22)
              {
                goto LABEL_34;
              }
            }

            if (v22 < 1)
            {
              goto LABEL_38;
            }

            v23 = v19;

            for (j = 0; j != v22; ++j)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v25 = *(v21 + 8 * j + 32);
              }

              v26 = v25;
              [v25 stopAnimation:0];
            }

LABEL_35:
            SyncedLyricsLineView.Glyph.GlyphContainerView.purgeAnimators()();
            v28 = CGPoint.center.unsafeMutableAddressor();
            swift_beginAccess();
            UIView.setAnchorPoint(_:preserveFrame:)(1, *v28, v28[1]);
            type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
            type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
            v3 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
            v29 = swift_allocObject();
            *(v29 + 16) = v19;
            *(v29 + 40) = v90;
            *(v29 + 24) = v91;
            v30 = v19;
            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v3, 0, partial apply for closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.reset(frame:), v29, 0, 0, 0.0);

            [v30 sizeToFit];

            v15 = v88;
            if (a1 == i)
            {
LABEL_36:

              v3 = v83;
              a1 = v82;
              v7 = v81;
              goto LABEL_42;
            }
          }

          else
          {

            if (a1 == i)
            {
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      v31 = *(v3 + 16);
      *(v3 + 16) = 0;
      v32 = v3[136];
      v3[136] = 2;
      outlined consume of AnimationStatus(v31, v32);
      v8 = v84;
      v9 = *(*&v84 + 16);
    }

    if (v9)
    {
      goto LABEL_44;
    }

LABEL_46:
    if (a2 < 0.0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*(*&v8 + 32) > a2)
  {
    return;
  }

LABEL_47:
  if (v3[136] >= 2u && !*(v3 + 16) && (v3[64] & 1) == 0)
  {
    v33 = *(v3 + 7);
    v34 = specialized Sequence.flatMap<A>(_:)(*(v3 + 13));
    v35 = v34;
    v36 = *(*&v8 + 16);
    if (v36)
    {
      v37 = *(*&v8 + 32 + 56 * v36 - 48) - *(*&v8 + 32);
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v34 >> 62;
    if (v34 >> 62)
    {
      goto LABEL_86;
    }

    for (k = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); k >= 1; k = _CocoaArrayWrapper.endIndex.getter())
    {
      if (v37 <= 0.0)
      {
        break;
      }

      v40 = *(v3 + 16);
      *(v3 + 16) = 0;
      v41 = v3[136];
      v3[136] = 0;
      outlined consume of AnimationStatus(v40, v41);
      v42 = *(v3 + 26);
      if (v42)
      {
        v43 = v42;
        SyncedLyricsLineView.Word.WordView.glow(factor:duration:specs:)(a1, v33, v37);
      }

      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(COERCE_DOUBLE(*&v7), 1, 1, v44);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = v45;
      *(v46 + 40) = v37;
      *(v3 + 29) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_3(0, 0, *&v7, &async function pointer to partial apply for closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:), v46);

      v47 = v37 / k * 0.4;
      if (v47 > 0.4)
      {
        v47 = 0.4;
      }

      *&v87 = v47;
      v33 = *(a1 + 248) + v33 * (*(a1 + 256) - *(a1 + 248));
      if (v37 <= 3.0)
      {
        v48 = v37;
      }

      else
      {
        v48 = 3.0;
      }

      type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
      v88 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v48);
      v49 = *(v3 + 24);
      v50 = *(v3 + 25);
      CGSize.scaled(_:)();
      v52 = v51;
      v54 = v53;
      if (v38)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v38)
      {
LABEL_81:

        break;
      }

      v55 = 0;
      v79 = v37 / vcvtd_n_f64_u64(k, 1uLL);
      *&v91 = v35 & 0xC000000000000001;
      *&v90 = v35 & 0xFFFFFFFFFFFFFF8;
      v84 = v50 - v54;
      v81 = (v49 - v52) * 0.5;
      v80 = &v94;
      v83 = v3;
      v82 = a1;
      v86 = v35;
      v85 = v38;
      while (v91)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        *&v7 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

LABEL_73:
        v57 = *(v56 + 96);
        if (!v57)
        {
          goto LABEL_68;
        }

        v58 = *(v3 + 22);
        v59 = *(v3 + 23);
        v60 = *(v56 + 64) - v58;
        v61 = *(v56 + 72) - v59;
        v62 = *(a1 + 624);
        v63 = v58 + (v60 + v81 + v33 * v60) * 0.5;
        v64 = v59 + (v61 + v84 + v33 * v61) * 0.25 - v62;
        v37 = *&v87 * *&v7;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        v65 = v57;
        v89.super.isa = v88;
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v89).super.isa;
        v67 = swift_allocObject();
        *(v67 + 16) = v65;
        *(v67 + 24) = v63;
        *(v67 + 32) = v64;
        *(v67 + 40) = v33;
        v96 = partial apply for closure #1 in SyncedLyricsLineView.Glyph.GlyphContainerView.grow(springTimingParameters:position:factor:delay:);
        v97 = v67;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = thunk for @escaping @callee_guaranteed () -> ();
        v95 = &block_descriptor_84;
        v68 = _Block_copy(&aBlock);
        v69 = v65;

        [(objc_class *)isa addAnimations:v68];
        _Block_release(v68);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = partial apply for closure #2 in SyncedLyricsLineView.Glyph.GlyphContainerView.grow(springTimingParameters:position:factor:delay:);
        v97 = v70;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v95 = &block_descriptor_26_0;
        v71 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v71];
        _Block_release(v71);
        [(objc_class *)isa startAnimationAfterDelay:v37];
        v72 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v73 = isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v74 = *(v56 + 96);
        v3 = v83;
        a1 = v82;
        v35 = v86;
        v38 = v85;
        if (v74)
        {
          v75 = v60 + v83[22];
          v76 = v61 - v62 + v83[23];
          v37 = v79 + v37;
          v77 = v74;
          SyncedLyricsLineView.Glyph.GlyphContainerView.degrow(springTimingParameters:position:delay:)(v89.super.isa, v75, v76, v37);
        }

        else
        {
LABEL_68:
        }

        ++v55;
        if (*&v7 == v38)
        {
          goto LABEL_81;
        }
      }

      if (v55 >= *(v90 + 16))
      {
        goto LABEL_85;
      }

      v56 = *(v35 + 8 * v55 + 32);

      *&v7 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        goto LABEL_73;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      ;
    }
  }
}

void SyncedLyricsLineView.Word.updatedView(specs:crossfadeAnimationParameters:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v55.origin.x = *(v4 + 176);
  v8 = *(v4 + 184);
  v9 = -v55.origin.x;
  v55.size.width = *(v4 + 192);
  v55.size.height = *(v4 + 200);
  v55.origin.y = v8;
  MaxX = CGRectGetMaxX(v55);
  Height = CGRectGetHeight(*(v4 + 176));
  v12 = *(v4 + 208);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView];
    v14 = v12;
    v15 = v13;
    [v15 setFrame:{v9, v8, MaxX, Height}];
    [v14 setFrame:{*(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200)}];
  }

  else
  {
    v16 = [objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.Word.WordView()) initWithFrame:{v9, v8, MaxX, Height}];
    v17 = *(a1 + 456);
    UIView.Shadow.init(color:opacity:radius:offset:)(v17, v54, 0.0, *(a1 + 464), 0.0, 0.0);
    v15 = v16;
    v18 = v17;
    v19 = [v15 layer];
    v20 = [v15 traitCollection];
    [v20 displayScale];
    v22 = v21;

    [v19 setRasterizationScale:v22];
    v23 = [v15 layer];
    [v23 setShouldRasterize:1];

    v24 = v54[0];
    UIView.shadow.setter(v54);

    v25 = *(v4 + 176);
    v26 = *(v4 + 184);
    v27 = *(v4 + 192);
    v28 = *(v4 + 200);
    v29 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.Word.WordContainerView());
    outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(a2, a3);
    v30 = SyncedLyricsLineView.Word.WordContainerView.init(wordView:crossfadeAnimationParameters:frame:)(v15, a2, a3, v25, v26, v27, v28);
    _sSo6UIViewC14MusicUtilitiesE6ShadowVWOh_0(v54);
    v31 = *(v4 + 208);
    *(v4 + 208) = v30;
    v14 = v30;

    if (!*(v4 + 208))
    {
      v32 = *(v4 + 128);
      *(v4 + 128) = 0;
      v33 = *(v4 + 136);
      *(v4 + 136) = 2;
      outlined consume of AnimationStatus(v32, v33);
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v34 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v34 + 40)))
  {
    v35 = objc_opt_self();
    v36 = [v35 blueColor];
    v37 = [v36 colorWithAlphaComponent:0.7];

    [v14 setBackgroundColor:v37];
    v38 = [v35 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v40, v39 & 1, v41);
  }

  v42 = *(v4 + 104);
  if (*(v4 + 64) == 1)
  {
    if (v42 >> 62)
    {
      v43 = _CocoaArrayWrapper.endIndex.getter();
      if (v43)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_13:
        if (v43 >= 1)
        {
          v44 = 0;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            ++v44;
            isa = SyncedLyricsLineView.Syllable.updatedView()().super.super.isa;
            [v15 addSubview:isa];
          }

          while (v43 != v44);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  v46 = specialized Sequence.flatMap<A>(_:)(*(v4 + 104));
  v47 = v46;
  if (v46 >> 62)
  {
    v48 = _CocoaArrayWrapper.endIndex.getter();
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
      goto LABEL_30;
    }
  }

  if (v48 < 1)
  {
    goto LABEL_35;
  }

  v49 = 0;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    ++v49;
    v50 = SyncedLyricsLineView.Glyph.updatedView()().super.super.isa;
    [v15 addSubview:v50];
  }

  while (v48 != v49);
LABEL_30:

LABEL_31:
  v51 = *(v4 + 208);
  *(v4 + 208) = v14;
  v14;

  if (!*(v4 + 208))
  {
    v52 = *(v4 + 128);
    *(v4 + 128) = 0;
    v53 = *(v4 + 136);
    *(v4 + 136) = 2;
    outlined consume of AnimationStatus(v52, v53);
  }
}

uint64_t closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  *(v5 + 88) = a5;
  return _swift_task_switch(closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:), 0, 0);
}

uint64_t closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 208);
    v0[13] = v2;
    if (v2)
    {
      v3 = v2;

      type metadata accessor for MainActor();
      v0[14] = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[15] = v5;
      v0[16] = v4;

      return _swift_task_switch(closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:), v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 128);
  v8 = *(v6 + 136);
  outlined copy of AnimationStatus(v7, v8);

  if (v8 < 2)
  {
    outlined consume of AnimationStatus(v7, v8);
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_11:
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + 128);
      *(v9 + 128) = 1;
      v11 = *(v9 + 136);
      *(v9 + 136) = 2;
      outlined consume of AnimationStatus(v10, v11);
    }
  }

  v12 = v0[1];

  return v12();
}

{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:);
  v2 = *(v0 + 96);

  return specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:)(v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:), v3, v2);
}

{
  v1 = *(v0 + 104);

  return _swift_task_switch(closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:), 0, 0);
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 128);
    v3 = *(Strong + 136);
    outlined copy of AnimationStatus(v2, v3);

    if (v3 >= 2)
    {
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      outlined consume of AnimationStatus(v2, v3);
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 128);
    *(v4 + 128) = 1;
    v6 = *(v4 + 136);
    *(v4 + 136) = 2;
    outlined consume of AnimationStatus(v5, v6);
  }

LABEL_7:
  v7 = *(v0 + 8);

  return v7();
}

char *SyncedLyricsLineView.Word.WordContainerView.init(wordView:crossfadeAnimationParameters:frame:)(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
  *&v7[v15] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView] = a1;
  v16 = &v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = a1;
  outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(a2, a3);
  v24.receiver = v7;
  v24.super_class = type metadata accessor for SyncedLyricsLineView.Word.WordContainerView();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a4, a5, a6, a7);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v19 + 40)) || !a2)
  {
    [v18 addSubview:v17];
    outlined consume of Artwork.Content?(a2, a3);
  }

  else
  {
    [v18 setMaskView:v17];
    v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
    v21 = *&v18[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
    [v18 bounds];
    [v21 setFrame:?];

    [*&v18[v20] setBackgroundColor:a2];
    v22 = *&v18[v20];
    [v18 addSubview:v22];
  }

  return v18;
}

Swift::Void __swiftcall SyncedLyricsLineView.Word.WordView.resetGlow()()
{
  v1 = v0;
  type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
  v2 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  v6 = v2;
  CASpringAnimation.springParameters.setter(v6);
  v7 = v5;
  v8 = [v1 layer];
  [v8 shadowOpacity];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  [v7 setFromValue:isa];

  v10 = Int._bridgeToObjectiveC()().super.super.isa;
  [v7 setToValue:v10];

  v11 = [v1 layer];
  v12 = [v7 keyPath];
  [v11 addAnimation:v7 forKey:v12];

  v13 = [v1 layer];
  [v13 setShadowOpacity:0.0];
}

void SyncedLyricsLineView.Word.WordView.glow(factor:duration:specs:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 472) + (*(a1 + 480) - *(a1 + 472)) * a2;
  if (a3 <= 3.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 3.0;
  }

  type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
  v7 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v6);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v7 settlingDuration];
  [v10 setDuration:?];

  v11 = v7;
  CASpringAnimation.springParameters.setter(v11);
  v12 = v10;
  v13 = [v4 layer];
  [v13 shadowOpacity];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  [v12 setFromValue:isa];

  v15 = Float._bridgeToObjectiveC()().super.super.isa;
  [v12 setToValue:v15];

  v16 = [v4 layer];
  v17 = [v12 keyPath];
  [v16 addAnimation:v12 forKey:v17];

  v19 = [v4 layer];
  *&v18 = v5;
  [v19 setShadowOpacity:v18];
}

id SyncedLyricsLineView.Word.WordContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView.Word.WordContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SyncedLyricsLineView.Word.deinit()
{

  outlined consume of AnimationStatus(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t SyncedLyricsLineView.Word.__deallocating_deinit()
{
  SyncedLyricsLineView.Word.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word)
  {
    type metadata accessor for SyncedLyricsLineView.Word();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SyncedLyricsLineView.Glyph] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SyncedLyricsLineView.Glyph] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SyncedLyricsLineView.Glyph] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7LyricsX06SyncedA8LineViewC5GlyphCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SyncedLyricsLineView.Glyph] and conformance [A]);
  }

  return result;
}

uint64_t sub_100479018()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100479050()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in SyncedLyricsLineView.Word.animateGlow(progress:specs:)(v7, a1, v4, v5, v6);
}

uint64_t sub_100479154()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004791B4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004791F4()
{

  return swift_deallocObject();
}

uint64_t specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  type metadata accessor for MainActor();
  *(v2 + 32) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:), v4, v3);
}

uint64_t specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:)()
{
  if (v0[2] <= 0.0)
  {
    v4 = *(v0 + 3);
    v5 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
    *(v0 + 9) = v5;
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() animationWithKeyPath:v6];
    *(v0 + 10) = v7;

    v8 = v7;
    [v5 settlingDuration];
    [v8 setDuration:?];

    CASpringAnimation.springParameters.setter(v5);
    v9 = v8;
    v10 = [v4 layer];
    [v10 shadowOpacity];

    isa = Float._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue:isa];

    v12 = Int._bridgeToObjectiveC()().super.super.isa;
    [v9 setToValue:v12];

    *(v0 + 11) = [v4 layer];
    v13 = [v9 keyPath];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v0 + 12) = v17;
    v18 = swift_task_alloc();
    *(v0 + 13) = v18;
    *v18 = v0;
    v18[1] = specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:);

    return CALayer.addAsyncAnimation(_:forKey:)(v9, v15, v17);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 7) = v1;
    *v1 = v0;
    v1[1] = specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:);
    v2 = v0[2];

    return static Task<>.sleep(for:)(v2);
  }
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:);
  }

  else
  {
    v5 = specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[3];
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
  v0[9] = v2;
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];
  v0[10] = v4;

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  CASpringAnimation.springParameters.setter(v2);
  v6 = v5;
  v7 = [v1 layer];
  [v7 shadowOpacity];

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  [v6 setFromValue:isa];

  v9 = Int._bridgeToObjectiveC()().super.super.isa;
  [v6 setToValue:v9];

  v0[11] = [v1 layer];
  v10 = [v6 keyPath];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[12] = v14;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:);

  return CALayer.addAsyncAnimation(_:forKey:)(v6, v12, v14);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(specialized SyncedLyricsLineView.Word.WordView.deglow(duration:after:), v4, v3);
}

{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void SyncedLyricsLineView.SBS_TextContentView.specs.didset()
{
  __chkstk_darwin();
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v2)
  {
    v3 = OBJC_IVAR___MusicSBS_TextContentView_specs;
    memcpy(__dst, (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
    memcpy(v13, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v13));
    memcpy(v11, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v11));
    memmove(&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), 0x2B0uLL);
    outlined init with copy of SyncedLyricsViewController.Specs(__dst, v12);
    outlined init with copy of SyncedLyricsViewController.Specs(__dst, v12);
    v4 = v2;
    outlined init with copy of SyncedLyricsViewController.Specs(v13, v12);
    outlined destroy of SyncedLyricsViewController.Specs(v11);
    SyncedLyricsLineView.SBS_TextContentView.TextView.specs.didset(v13);
    outlined destroy of SyncedLyricsViewController.Specs(v13);
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v5)
    {
      memcpy(v8, (v1 + v3), sizeof(v8));
      memcpy(v12, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v12));
      memcpy(v9, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v9));
      memmove(&v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + v3), 0x2B0uLL);
      outlined init with copy of SyncedLyricsViewController.Specs(v8, &v7);
      outlined init with copy of SyncedLyricsViewController.Specs(v8, &v7);
      v6 = v5;
      outlined init with copy of SyncedLyricsViewController.Specs(v12, &v7);
      outlined destroy of SyncedLyricsViewController.Specs(v9);
      SyncedLyricsLineView.SBS_TextContentView.TextView.specs.didset(v12);
      outlined destroy of SyncedLyricsViewController.Specs(v12);
      outlined destroy of SyncedLyricsViewController.Specs(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.isScrolling.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling);
  v3 = result & 1;
  *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = result;
  if (v2 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v5)
      {
        *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = _;
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) != _)
  {
    v4 = v2;
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = v3;
    v5 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v5)
    {
      v8 = v5;
      SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:)(_, animated);

      v9 = *(v4 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v9)
      {
        v10 = v9;
        SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:)(_, animated);
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v3;
      if (animated)
      {
        if (_)
        {
          v13 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
        }

        else
        {
          type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
          v13 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
        }

        v15.super.isa = v13;
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v15).super.isa;
        v18[4] = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.setSelected(_:animated:);
        v18[5] = v12;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = thunk for @escaping @callee_guaranteed () -> ();
        v18[3] = &block_descriptor_85;
        v17 = _Block_copy(v18);

        [(objc_class *)isa addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)isa startAnimation];
      }

      else
      {

        closure #1 in SyncedLyricsLineView.SBS_TextContentView.setSelected(_:animated:)(v14, _);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.setSelected(_:animated:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
    v6 = *(Strong + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v6)
    {
      if (a2)
      {
        v7 = xmmword_100507B70;
        v8 = xmmword_1005079C0;
        v9 = 0uLL;
      }

      else
      {
        v8 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 128];
        v7 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 144];
        v9 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 160];
      }

      v13[0] = v8;
      v13[1] = v7;
      v13[2] = v9;
      [v6 setTransform:v13];
      v10 = *&v4[v5];
      if (v10)
      {
        if (a2)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v12 = v10;
        [v12 setAlpha:v11];
      }
    }
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.setProgress(_:animated:)(Swift::Double _, Swift::Bool animated)
{
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) != _)
  {
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) = _;
    v3 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v3)
    {
      v4 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
      v5 = v4 <= _;
      if (v4 != _)
      {
        v6 = v4 - _;
        if (v5 || v6 >= 0.5)
        {
          *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = _;
          v8 = _;
          v9 = animated;
          v10 = v3;
          SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(v9, v8);

          animated = v9;
          _ = v8;
        }
      }

      v11 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v11)
      {
        v12 = *&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
        v13 = v12 <= _;
        if (v12 != _)
        {
          v14 = v12 - _;
          if (v13 || v14 >= 0.5)
          {
            *&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = _;
            v16 = _;
            v17 = animated;
            v18 = v11;
            SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(v17, v16);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *SyncedLyricsLineView.SBS_TextContentView.accessibilityMainTextView.getter()
{
  v1 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 96);
    if (v3)
    {
      v4 = v3;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SyncedLyricsLineView.SBS_TextContentView.copy()(char **a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v155 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v149 - v4;
  __chkstk_darwin();
  v156 = &v149 - v5;
  __chkstk_darwin();
  v154 = &v149 - v6;
  __chkstk_darwin();
  v181 = (&v149 - v7);
  __chkstk_darwin();
  v175 = &v149 - v8;
  __chkstk_darwin();
  v174 = &v149 - v9;
  __chkstk_darwin();
  v11 = &v149 - v10;
  __chkstk_darwin();
  v13 = &v149 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v178 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = &v149 - v15;
  __chkstk_darwin();
  v176 = &v149 - v16;
  __chkstk_darwin();
  v187 = &v149 - v17;
  __chkstk_darwin();
  v186 = &v149 - v18;
  __chkstk_darwin();
  v194 = &v149 - v19;
  __chkstk_darwin();
  v190 = &v149 - v20;
  __chkstk_darwin();
  v22 = &v149 - v21;
  v23 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v23)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
  v184 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
  v193 = v24;
  v197 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v25 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v23 + v25, v22, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v191 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  LODWORD(v185) = v1[OBJC_IVAR___MusicSBS_TextContentView_direction];
  v198 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_capabilities];
  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v189 = v22;
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
    v152 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
    v28 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
    v195 = v27;

    v188 = v28;
  }

  else
  {
    v152 = 0;
    v195 = 0;
    v188 = _swiftEmptyArrayStorage;
  }

  v183 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection];
  v171 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
  memcpy(v205, &v1[OBJC_IVAR___MusicSBS_TextContentView_specs], 0x2B0uLL);
  v29 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  swift_beginAccess();
  v173 = v1;
  outlined init with copy of TaskPriority?(&v1[v29], v13, &_s7LyricsX0A0C8TextLineVSgMd);
  v30 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
  v168 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  v192 = v30;
  v196 = v13;
  v161 = a1;
  if (v26)
  {
    v31 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
    v153 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
    v180 = v31;
  }

  else
  {
    v153 = 0;
    v180 = 0;
  }

  v32 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  v33 = v190;
  outlined init with copy of TaskPriority?(v23 + v32, v190, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v172 = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
  v34 = objc_allocWithZone(v172);
  v34[OBJC_IVAR___MusicSBS_TextContentView_isScrolling] = 1;
  v35 = &v34[OBJC_IVAR___MusicSBS_TextContentView_text];
  *v35 = 0;
  v35[1] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_attributedText] = 0;
  v34[OBJC_IVAR___MusicSBS_TextContentView_isSelected] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_progress] = 0;
  v170 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection] = 2;
  v36 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v37 = type metadata accessor for Lyrics.TextLine(0);
  v38 = *(v37 - 8);
  (*(v38 + 56))(&v34[v36], 1, 1, v37);
  v169 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition] = 2;
  v167 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_textView] = 0;
  v179 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView] = 0;
  v39 = v193;
  *v35 = v184;
  v35[1] = v39;
  memcpy(&v34[OBJC_IVAR___MusicSBS_TextContentView_specs], v205, 0x2B0uLL);
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_alignment] = v191;
  v34[OBJC_IVAR___MusicSBS_TextContentView_direction] = v185;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_capabilities] = v198;
  swift_beginAccess();

  outlined init with copy of SyncedLyricsViewController.Specs(v205, &v202);

  outlined init with copy of SyncedLyricsViewController.Specs(v205, &v202);

  v182 = v34;
  v40 = &v34[v36];
  v41 = v37;
  v42 = v196;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v196, v40, &_s7LyricsX0A0C8TextLineVSgMd);
  swift_endAccess();
  outlined init with copy of TaskPriority?(v189, v194, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined init with copy of TaskPriority?(v33, v186, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined init with copy of TaskPriority?(v42, v11, &_s7LyricsX0A0C8TextLineVSgMd);
  v45 = *(v38 + 48);
  v44 = v38 + 48;
  v43 = v45;
  if (v45(v11, 1, v41) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_s7LyricsX0A0C8TextLineVSgMd);
    v46 = type metadata accessor for Locale.Language();
    (*(*(v46 - 8) + 56))(v187, 1, 1, v46);
  }

  else
  {
    outlined init with copy of TaskPriority?(&v11[v41[7]], v187, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined destroy of Lyrics.TextLine(v11);
  }

  v47 = v181;
  v48 = v174;
  outlined init with copy of TaskPriority?(v42, v174, &_s7LyricsX0A0C8TextLineVSgMd);
  v49 = v43(v48, 1, v41);
  v50 = v175;
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(v48, &_s7LyricsX0A0C8TextLineVSgMd);
    v51 = 2;
  }

  else
  {
    v52 = (*(v48 + v41[15]))();
    outlined destroy of Lyrics.TextLine(v48);
    v51 = v52 & 1;
  }

  LODWORD(v174) = v51;
  outlined init with copy of TaskPriority?(v42, v50, &_s7LyricsX0A0C8TextLineVSgMd);
  if (v43(v50, 1, v41) == 1)
  {
    outlined destroy of TaskPriority?(v50, &_s7LyricsX0A0C8TextLineVSgMd);
    v165 = 0;
    v166 = 0;
  }

  else
  {
    v53 = (*(v50 + v41[16]))();
    v165 = v54;
    v166 = v53;
    outlined destroy of Lyrics.TextLine(v50);
  }

  outlined init with copy of TaskPriority?(v42, v47, &_s7LyricsX0A0C8TextLineVSgMd);
  v55 = v43(v47, 1, v41);
  v150 = v44;
  v151 = v41;
  v149 = v43;
  if (v55 == 1)
  {
    outlined destroy of TaskPriority?(v47, &_s7LyricsX0A0C8TextLineVSgMd);
    v175 = 0;
  }

  else
  {
    v175 = (*(v47 + v41[17]))();
    outlined destroy of Lyrics.TextLine(v47);
  }

  v181 = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView();
  v56 = objc_allocWithZone(v181);
  v57 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v57 = 0;
  v57[1] = 0;
  v164 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v163 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v58 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v60 = type metadata accessor for Locale.Language();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v63 = v61 + 56;
  v62(&v56[v59], 1, 1, v60);
  v64 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v60);
  v65 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v159 = v62;
  v160 = v60;
  v158 = v63;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v60);
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v162 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v66 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v66 = 2;
  *(v66 + 8) = 0u;
  *(v66 + 24) = 0u;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v67 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v67[4] = 0u;
  v67[5] = 0u;
  v67[2] = 0u;
  v67[3] = 0u;
  *v67 = 0u;
  v67[1] = 0u;
  v68 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  v69 = v193;

  outlined init with copy of SyncedLyricsViewController.Specs(v205, &v202);

  v70 = v192;

  *&v56[v68] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v71 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v72 = v184;
  *v71 = v184;
  v71[1] = v69;
  v73 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v73 = v72;
  v73[1] = v69;
  swift_beginAccess();

  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v194, &v56[v59], &_s10Foundation6LocaleV8LanguageVSgMd_0);
  swift_endAccess();
  swift_beginAccess();
  v74 = v186;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v186, &v56[v64], &_s10Foundation6LocaleV8LanguageVSgMd_0);
  swift_endAccess();
  swift_beginAccess();
  v75 = v187;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v187, &v56[v65], &_s10Foundation6LocaleV8LanguageVSgMd_0);
  swift_endAccess();
  v56[v163] = v174;
  v76 = v165;
  *v57 = v166;
  v57[1] = v76;

  *&v56[v164] = v175;

  *v58 = v168;
  v58[1] = v70;

  memcpy(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v205, 0x2B0uLL);
  *&v56[v162] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v197;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v191;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v185;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v198;
  v77 = v181;
  v201.receiver = v56;
  v201.super_class = v181;
  v78 = objc_msgSendSuper2(&v201, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  outlined destroy of TaskPriority?(v75, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined destroy of TaskPriority?(v74, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined destroy of TaskPriority?(v194, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v79 = v182;
  v80 = *&v182[v167];
  *&v182[v167] = v78;

  v81 = v195;
  if (v195)
  {
    outlined init with copy of TaskPriority?(v189, v176, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined init with copy of TaskPriority?(v190, v177, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v82 = v196;
    v83 = v154;
    outlined init with copy of TaskPriority?(v196, v154, &_s7LyricsX0A0C8TextLineVSgMd);
    v84 = v151;
    v85 = v149;
    v86 = v149(v83, 1, v151);
    v195 = v81;
    if (v86 == 1)
    {

      outlined destroy of TaskPriority?(v83, &_s7LyricsX0A0C8TextLineVSgMd);
      v159(v178, 1, 1, v160);
    }

    else
    {
      outlined init with copy of TaskPriority?(v83 + v84[7], v178, &_s10Foundation6LocaleV8LanguageVSgMd_0);

      outlined destroy of Lyrics.TextLine(v83);
    }

    v88 = v156;
    v87 = v157;
    outlined init with copy of TaskPriority?(v82, v156, &_s7LyricsX0A0C8TextLineVSgMd);
    if (v85(v88, 1, v84) == 1)
    {
      outlined destroy of TaskPriority?(v88, &_s7LyricsX0A0C8TextLineVSgMd);
      v89 = 2;
    }

    else
    {
      v90 = (*(v88 + v84[15]))();
      outlined destroy of Lyrics.TextLine(v88);
      v89 = v90 & 1;
    }

    LODWORD(v194) = v89;
    outlined init with copy of TaskPriority?(v82, v87, &_s7LyricsX0A0C8TextLineVSgMd);
    if (v85(v87, 1, v84) == 1)
    {
      outlined destroy of TaskPriority?(v87, &_s7LyricsX0A0C8TextLineVSgMd);
      v186 = 0;
      v187 = 0;
    }

    else
    {
      (*(v87 + v84[18]))(v206);
      v187 = v207;
      if (v207)
      {
        v186 = v206[2];

        outlined destroy of TaskPriority?(v206, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
      }

      else
      {
        v186 = 0;
      }

      outlined destroy of Lyrics.TextLine(v87);
    }

    v91 = v82;
    v92 = v155;
    outlined init with copy of TaskPriority?(v91, v155, &_s7LyricsX0A0C8TextLineVSgMd);
    if (v85(v92, 1, v84) == 1)
    {
      outlined destroy of TaskPriority?(v92, &_s7LyricsX0A0C8TextLineVSgMd);
    }

    else
    {
      (*(v92 + v84[18]))(v208);
      outlined destroy of Lyrics.TextLine(v92);
      if (v208[3])
      {
        v185 = v208[7];

        outlined destroy of TaskPriority?(v208, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
LABEL_38:
        v93 = objc_allocWithZone(v77);
        v94 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
        *v94 = 0;
        v94[1] = 0;
        v184 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
        v175 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
        v95 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText;
        *v95 = 0;
        v95[1] = 0;
        v96 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v98 = v159;
        v97 = v160;
        v159(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language, 1, 1, v160);
        v99 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v97);
        v100 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v97);
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
        v174 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
        v101 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
        *v101 = 2;
        *(v101 + 8) = 0u;
        *(v101 + 24) = 0u;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
        v102 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
        v102[4] = 0u;
        v102[5] = 0u;
        v102[2] = 0u;
        v102[3] = 0u;
        *v102 = 0u;
        v102[1] = 0u;
        v103 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
        outlined init with copy of SyncedLyricsViewController.Specs(v205, &v202);
        v104 = v180;

        *(v93 + v103) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v105 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text;
        v106 = v152;
        v107 = v195;
        *v105 = v152;
        v105[1] = v107;
        v108 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText;
        *v108 = v106;
        v108[1] = v107;
        swift_beginAccess();

        v109 = v93 + v96;
        v110 = v176;
        outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v176, v109, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        swift_beginAccess();
        v111 = v93 + v99;
        v112 = v177;
        outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v177, v111, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        swift_beginAccess();
        v113 = v93 + v100;
        v114 = v178;
        outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v178, v113, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        v175[v93] = v194;
        v115 = v187;
        *v94 = v186;
        v94[1] = v115;

        *(v93 + v184) = v185;

        *v95 = v153;
        v95[1] = v104;

        memcpy(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs, v205, 0x2B0uLL);
        *(v93 + v174) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words) = v188;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind) = 1;
        v116 = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) = v183 & 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities) = v198;
        v199.receiver = v93;
        v199.super_class = v181;
        v117 = objc_msgSendSuper2(&v199, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        outlined destroy of TaskPriority?(v114, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        outlined destroy of TaskPriority?(v112, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        outlined destroy of TaskPriority?(v110, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v79 = v182;
        v118 = v179;
        v119 = *&v182[v179];
        *&v182[v179] = v117;

        v120 = *&v79[v118];
        if (v120)
        {
          v121 = specialized static SyncedLyricsLineView.SBS_TextContentView.anchorPoint(for:)(v116);
          v123 = v122;
          v124 = v120;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v121, v123);

          v125 = *&v79[v179];
          if (v125)
          {
            [v125 setAlpha:0.0];
            v126 = *&v79[v179];
            if (v126)
            {
              v202 = v205[8];
              v203 = v205[9];
              v204 = v205[10];
              [v126 setTransform:&v202];
            }
          }
        }

        goto LABEL_42;
      }
    }

    v185 = 0;
    goto LABEL_38;
  }

LABEL_42:
  v127 = v169;
  v79[v170] = v183;
  v79[v127] = v171;
  v128 = v172;
  v200.receiver = v79;
  v200.super_class = v172;
  v129 = objc_msgSendSuper2(&v200, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v149, v150, v151);
  v130 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v131 = *&v129[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v132 = v173;
  v133 = v196;
  if (!v131)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v134 = v129;
  v135 = v129;
  [v135 addSubview:v131];
  v136 = *&v135[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v136)
  {

    outlined destroy of SyncedLyricsViewController.Specs(v205);

    goto LABEL_48;
  }

  v137 = *&v134[v130];
  if (!v137)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v138 = v136;
  [v137 frame];
  v139 = *&v134[v130];
  if (v139)
  {
    v140 = v139;

    [v140 frame];

    [v138 frame];
    [v138 setFrame:?];

    [v135 addSubview:v138];
    outlined destroy of SyncedLyricsViewController.Specs(v205);
    v133 = v196;
LABEL_48:
    v141 = v189;
    outlined destroy of TaskPriority?(v190, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined destroy of TaskPriority?(v133, &_s7LyricsX0A0C8TextLineVSgMd);
    outlined destroy of TaskPriority?(v141, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v142 = objc_opt_self();
    v143 = swift_allocObject();
    *(v143 + 16) = v135;
    *(v143 + 24) = v132;
    v144 = swift_allocObject();
    *(v144 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.copy();
    *(v144 + 24) = v143;
    *&v204 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(&v204 + 1) = v144;
    *&v202 = _NSConcreteStackBlock;
    *(&v202 + 1) = 1107296256;
    *&v203 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v203 + 1) = &block_descriptor_67;
    v145 = _Block_copy(&v202);
    v146 = v135;
    v147 = v132;

    [v142 performWithoutAnimation:v145];
    _Block_release(v145);
    LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

    if ((v145 & 1) == 0)
    {
      v148 = v161;
      v161[3] = v128;

      *v148 = v146;
      return;
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.copy()(void *a1, char *a2)
{
  [a2 bounds];
  [a1 setFrame:?];
  [a1 layoutIfNeeded];
  SyncedLyricsLineView.SBS_TextContentView.setSelected(_:animated:)(a2[OBJC_IVAR___MusicSBS_TextContentView_isSelected], 0);
  SyncedLyricsLineView.SBS_TextContentView.setProgress(_:animated:)(*&a2[OBJC_IVAR___MusicSBS_TextContentView_progress], 0);
}

id SyncedLyricsLineView.SBS_TextContentView.sizeThatFits(_:selected:)(char a1, double a2, double a3)
{
  result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    result = [result sizeThatFits:?];
    if (a1)
    {
      result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a2, a3}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SyncedLyricsLineView.SBS_TextContentView.sizeThatFits(_:)(double a1, double a2)
{
  result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected);
    result = [result sizeThatFits:?];
    if (v6 == 1)
    {
      result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a1, a2}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.layoutSubviews()()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v3 = *&v0[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v4 = v3;
  [v1 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  v12 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v12)
  {
    v18 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
    if (v18 != 2)
    {
      v19 = v12;
      [v1 bounds];
      [v19 sizeThatFits:{v20, v21}];
      v14 = v22;
      v15 = v23;
      [v1 bounds];
      MaxY = CGRectGetMaxY(v33);

      v25 = MaxY - v10;
      if (v18)
      {
        v16 = MaxY - v15;
      }

      else
      {
        v16 = 0.0;
      }

      if (v18)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v25;
      }
    }
  }

  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  if (v26 == 1)
  {
    [v1 bounds];
    v27 = (CGRectGetWidth(v36) - v8) * 0.5;
    [v1 bounds];
    v13 = (CGRectGetWidth(v37) - v14) * 0.5;
  }

  else
  {
    v27 = 0.0;
    if (v26 == 2)
    {
      [v1 bounds];
      v27 = CGRectGetWidth(v34) - v8;
      [v1 bounds];
      v13 = CGRectGetWidth(v35) - v14;
    }
  }

  v28 = *&v1[v2];
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  UIView.untransformedFrame.setter(v27, v17, v8, v10);

  v30 = *&v1[v11];
  if (v30)
  {
    v31 = v30;
    UIView.untransformedFrame.setter(v13, v16, v14, v15);
  }
}

id SyncedLyricsLineView.SBS_TextContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView.SBS_TextContentView()
{
  result = type metadata singleton initialization cache for SyncedLyricsLineView.SBS_TextContentView;
  if (!type metadata singleton initialization cache for SyncedLyricsLineView.SBS_TextContentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SyncedLyricsLineView.SBS_TextContentView()
{
  type metadata accessor for Lyrics.TextLine?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Lyrics.TextLine?()
{
  if (!lazy cache variable for type metadata for Lyrics.TextLine?)
  {
    type metadata accessor for Lyrics.TextLine(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Lyrics.TextLine?);
    }
  }
}

uint64_t protocol witness for SyncedLyricsLineContentView.specs.setter in conformance SyncedLyricsLineView.SBS_TextContentView(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), a1, 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(a1, &v5);
  outlined destroy of SyncedLyricsViewController.Specs(__dst);
  SyncedLyricsLineView.SBS_TextContentView.specs.didset();
  return outlined destroy of SyncedLyricsViewController.Specs(a1);
}

double specialized static SyncedLyricsLineView.SBS_TextContentView.anchorPoint(for:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = CGPoint.centerRight.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (a1 != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v1 = CGPoint.center.unsafeMutableAddressor();
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v1 = CGPoint.centerLeft.unsafeMutableAddressor();
LABEL_8:
  v2 = v1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_10047C448()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10047C480()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047C4DC()
{

  return swift_deallocObject();
}

uint64_t outlined destroy of Lyrics.TextLine(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized SyncedLyricsLineView.SBS_TextContentView.init(coder:)()
{
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v1 = (v0 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v2 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CFIndex one-time initialization function for dotInitialAlpha(uint64_t a1, uint64_t a2)
{
  result = CFRange.init(_:)(*&a1).location;
  static SyncedLyricsLineView.InstrumentalContentView.Specs.dotInitialAlpha = v3;
  return result;
}

CGFloat one-time initialization function for breathOutTransform(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeScale(&v11, a1, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

id SyncedLyricsLineView.InstrumentalContentView.init(line:specs:)(uint64_t a1, char a2, void *__src, double a4, double a5)
{
  v5[OBJC_IVAR___MusicInstrumentalContentView_isScrolling] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_alignment] = 0;
  v6 = &v5[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  *v6 = 0u;
  v6[1] = 0u;
  v5[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dots] = _swiftEmptyArrayStorage;
  v5[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration] = 0;
  v7 = &v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  *v7 = 0;
  v7[8] = 1;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = 0;
  v8 = &v5[OBJC_IVAR___MusicInstrumentalContentView_line];
  *v8 = a1;
  v8[1] = a4;
  v8[2] = a5;
  *(v8 + 24) = a2 & 1;
  memcpy(&v5[OBJC_IVAR___MusicInstrumentalContentView_specs], __src, 0x2B0uLL);
  v10.receiver = v5;
  v10.super_class = type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

Swift::Void __swiftcall SyncedLyricsLineView.InstrumentalContentView.layoutSubviews()()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  v2 = &v0[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  [v1 bounds];
  v33.origin.x = v7;
  v33.origin.y = v8;
  v33.size.width = v9;
  v33.size.height = v10;
  v30.origin.x = v3;
  v30.origin.y = v4;
  v30.size.width = v5;
  v30.size.height = v6;
  if (CGRectEqualToRect(v30, v33))
  {
    return;
  }

  [v1 bounds];
  *v2 = v11;
  *(v2 + 1) = v12;
  *(v2 + 2) = v13;
  *(v2 + 3) = v14;
  v15 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v16 = *&v1[v15];
  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    SyncedLyricsLineView.InstrumentalContentView.createDots()();
  }

LABEL_5:
  v17 = &v1[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v18 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
  v19 = v18 * *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v1[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
  v20 = Int.seconds.getter(0);
  v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
  if (v21 == 1)
  {
    [v1 bounds];
    v22 = (CGRectGetWidth(v32) - v19) * 0.5;
  }

  else
  {
    v22 = v20;
    if (v21 == 2)
    {
      [v1 bounds];
      v22 = CGRectGetWidth(v31) - v19;
    }
  }

  v23 = *&v1[v15];
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      return;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {

    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v1 bounds];
      UIView.untransformedFrame.setter(v22, v28 * 0.5 - v18 * 0.5, v18, v18);

      v22 = v22 + v18 + v17[77];
    }

    while (v24 != v25);
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.InstrumentalContentView.reset()()
{
  v1 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 8);
  v2 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 16) + -1.8;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = (v2 - v1) / floor((v2 - v1) * 0.25) * 0.5;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = (v2 - (v1 + 1.0)) / *(v0 + OBJC_IVAR___MusicInstrumentalContentView_specs + 592);
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  v3 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 layer];
      [v10 removeAllAnimations];

      [v9 setAlpha:0.0];
      v11[1] = 0;
      v11[2] = 0;
      v11[0] = 0x3FF0000000000000;
      v11[3] = 0x3FF0000000000000;
      v11[4] = 0;
      v11[5] = 0;
      [v9 setTransform:v11];
    }

    while (v6 != v7);
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.InstrumentalContentView.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = _;
  if (!_)
  {
    if (animated)
    {
      v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v7[4] = partial apply for closure #1 in SyncedLyricsLineView.InstrumentalContentView.setSelected(_:animated:);
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = thunk for @escaping @callee_guaranteed () -> ();
      v7[3] = &block_descriptor_97;
      v5 = _Block_copy(v7);
      v6 = v2;

      [v3 addAnimations:v5];
      _Block_release(v5);
      [v3 startAnimation];
    }

    else
    {

      SyncedLyricsLineView.InstrumentalContentView.reset()();
    }
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)(Swift::Double elapsedTime)
{
  v2 = &v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  if (v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] == 1)
  {
    v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5 >> 62)
    {
      p_cache = (&OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line + 16);
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_20;
      }
    }

    else
    {
      p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    v7 = *&v1[v4];
    if (v7 >> 62)
    {
      goto LABEL_43;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      SyncedLyricsLineView.InstrumentalContentView.createDots()();
      goto LABEL_7;
    }

    while (1)
    {
LABEL_7:
      v8 = (p_cache[226] + v1);
      v9 = v8[76];
      v10 = v9 * *(v8 + 74) + (*(v8 + 74) + -1.0) * v8[77];
      v11 = Int.seconds.getter(0);
      v12 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
      if (v12 == 1)
      {
        [v1 bounds];
        v13 = (CGRectGetWidth(v45) - v10) * 0.5;
      }

      else
      {
        v13 = v11;
        if (v12 == 2)
        {
          [v1 bounds];
          v13 = CGRectGetWidth(v44) - v10;
        }
      }

      v4 = *&v1[v4];
      if (v4 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v14 < 1)
      {
        __break(1u);
        return;
      }

      v15 = v1;

      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        [v15 bounds];
        UIView.untransformedFrame.setter(v13, v19 * 0.5 - v9 * 0.5, v9, v9);

        v13 = v13 + v9 + v8[77];
      }

      while (v14 != v16);

      v1 = v15;
LABEL_20:
      v20 = 0;
      *v2 = 0;
      v2[8] = 0;
      v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_line + 8] + 1.0;
      if (v21 > elapsedTime)
      {
        goto LABEL_28;
      }

      v22 = (elapsedTime - v21) / *&v1[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v22 < 9.22337204e18)
      {
        if (__OFADD__(v22, 1))
        {
          goto LABEL_42;
        }

        if (v22 + 1 >= 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = v22 + 1;
        }

LABEL_28:
        v23 = *(p_cache[226] + v1 + 592);
        if (v23 < 0)
        {
          __break(1u);
        }

        else
        {
          v2 = v1;
          if (v23)
          {
            for (i = 0; i != v23; ++i)
            {
              v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.8];
              v26 = swift_allocObject();
              v26[2] = v20;
              v26[3] = i;
              v26[4] = v2;
              v42 = partial apply for closure #1 in SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:);
              v43 = v26;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = thunk for @escaping @callee_guaranteed () -> ();
              v41 = &block_descriptor_79;
              v27 = _Block_copy(&aBlock);
              v28 = v2;
              v29 = v2;

              [v25 addAnimations:v27];
              _Block_release(v27);
              v30 = swift_allocObject();
              *(v30 + 16) = v29;
              *(v30 + 24) = i;
              v42 = partial apply for closure #2 in SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:);
              v43 = v30;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
              v41 = &block_descriptor_85;
              v31 = _Block_copy(&aBlock);
              p_cache = v43;
              v32 = v29;
              v2 = v28;

              [v25 addCompletion:v31];
              _Block_release(v31);
              [v25 startAnimationAfterDelay:i * 0.06];
            }
          }

          v1 = objc_opt_self();
          elapsedTime = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] + -0.4;
          v33 = swift_allocObject();
          *(v33 + 16) = v2;
          v42 = partial apply for closure #3 in SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:);
          v43 = v33;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = thunk for @escaping @callee_guaranteed () -> ();
          v41 = &block_descriptor_91;
          v4 = _Block_copy(&aBlock);
          v34 = v2;

          [v1 animateWithDuration:0x20000 delay:v4 options:0 animations:elapsedTime completion:0.2];
          _Block_release(v4);
          v35 = *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (!v36)
          {
            *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = v37;
            return;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }
  }
}

void closure #1 in SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  if (a2 >= a1)
  {
    swift_beginAccess();
    v7 = *(a3 + v5);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v4)
      {
        goto LABEL_20;
      }

      v4 = *(v7 + 8 * v4 + 32);
    }

    if (one-time initialization token for dotInitialAlpha == -1)
    {
LABEL_12:
      [v4 setAlpha:*&static SyncedLyricsLineView.InstrumentalContentView.Specs.dotInitialAlpha];
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_12;
  }

  swift_beginAccess();
  v6 = *(a3 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v4)
  {
    v4 = *(v6 + 8 * v4 + 32);
LABEL_6:
    [v4 setAlpha:1.0];
LABEL_13:

    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t closure #3 in SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (one-time initialization token for breathInTransform != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = static SyncedLyricsLineView.InstrumentalContentView.Specs.breathInTransform;
      v9[1] = *algn_10063FB90;
      v9[2] = xmmword_10063FBA0;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

Swift::Void __swiftcall SyncedLyricsLineView.InstrumentalContentView.update(elapsedTime:)(Swift::Double elapsedTime)
{
  v4 = &v2[OBJC_IVAR___MusicInstrumentalContentView_line];
  v5 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_line + 8];
  v6 = OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration;
  v7 = (elapsedTime - (v5 + 1.0)) / *&v2[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(v7, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v8 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v7 + 1 >= v8)
  {
    v9 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  }

  else
  {
    v9 = v7 + 1;
  }

  v10 = OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted;
  v11 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted];
  if (v9 < v11)
  {
    SyncedLyricsLineView.InstrumentalContentView.reset()();
    v12 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v1 = *&v2[v12];
    if (!(v1 >> 62))
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        if (v13 >= 1)
        {

          v14 = 0;
          do
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(v1 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = [v15 layer];
            [v17 removeAllAnimations];

            if (one-time initialization token for dotInitialAlpha != -1)
            {
              swift_once();
            }

            ++v14;
            [v16 setAlpha:*&static SyncedLyricsLineView.InstrumentalContentView.Specs.dotInitialAlpha];
            v47 = 0;
            v48 = 0;
            aBlock = 0x3FF0000000000000;
            v49 = 0x3FF0000000000000;
            v50 = 0;
            v51 = 0;
            [v16 setTransform:&aBlock];
          }

          while (v13 != v14);

          goto LABEL_51;
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        do
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:

          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v18 = &unk_100518000;
LABEL_36:
          v24 = *&v2[v6] + -0.1;
          v25 = swift_allocObject();
          *(v25 + 16) = v23;
          v26 = objc_allocWithZone(UIViewPropertyAnimator);
          v50 = partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
          v51 = v25;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = thunk for @escaping @callee_guaranteed () -> ();
          v49 = &block_descriptor_73_0;
          v27 = _Block_copy(&aBlock);
          v28 = v23;

          v29 = [v26 initWithDuration:3 curve:v27 animations:v24];
          _Block_release(v27);
          [v29 startAnimation];

          v5 = v4[1];
LABEL_37:
          v30 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration];
          v31 = (elapsedTime - v5) / v30;
          if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_71;
          }

          if (v31 <= -9.22337204e18)
          {
            goto LABEL_72;
          }

          if (v31 >= 9.22337204e18)
          {
            goto LABEL_73;
          }

          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_74;
          }

          v33 = OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted;
          if (*&v2[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] >= v32)
          {
            goto LABEL_44;
          }

          v34 = objc_opt_self();
          v35 = swift_allocObject();
          *(v35 + 16) = v2;
          *(v35 + 24) = v32;
          v50 = partial apply for closure #2 in SyncedLyricsLineView.InstrumentalContentView.update(elapsedTime:);
          v51 = v35;
          aBlock = _NSConcreteStackBlock;
          v47 = 1107296256;
          v48 = thunk for @escaping @callee_guaranteed () -> ();
          v49 = &block_descriptor_67_0;
          v36 = _Block_copy(&aBlock);
          v37 = v2;

          [v34 animateWithDuration:0x20000 delay:v36 options:0 animations:v30 + -0.4 completion:0.2];
          _Block_release(v36);
          v38 = *&v2[v33];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
        }

        while (v39);
        *&v2[v33] = v40;
        goto LABEL_44;
      }

LABEL_51:
      SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)(elapsedTime);
      return;
    }

LABEL_66:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  v18 = &unk_100518000;
  if ((v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] & 1) != 0 || (v5 + 1.0 < elapsedTime ? (v19 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn] == v8) : (v19 = 0), !v19 || v4[2] + -1.8 <= elapsedTime))
  {
LABEL_44:
    v41 = v4[2];
    v42 = v41 > elapsedTime && v41 + v18[78] < elapsedTime;
    if (v42 && (v2[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
    {
      SyncedLyricsLineView.InstrumentalContentView.fadeOut()();
    }

    return;
  }

  if (v9 == v11 || v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] != 1)
  {
    goto LABEL_37;
  }

  v20 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_76;
  }

  if (v20 < v11)
  {
    goto LABEL_77;
  }

  if (v11 == v20)
  {
LABEL_32:
    *&v2[v10] = v9;
    v21 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v22 = *&v2[v21];
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_78;
    }

    v18 = &unk_100518000;
    if (v20 < 0)
    {
      __break(1u);
    }

    else if (v20 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 8 * v20 + 32);
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (v11 < v20)
  {
    v43 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    while (1)
    {
      v44 = *&v2[v43];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 < 0)
        {
          goto LABEL_69;
        }

        if (v11 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v45 = *(v44 + 8 * v11 + 32);
      }

      ++v11;
      [v45 setAlpha:1.0];

      if (v20 == v11)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

uint64_t closure #2 in SyncedLyricsLineView.InstrumentalContentView.update(elapsedTime:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = a2 & 0x8000000000000001;

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      if (v8 == 1)
      {
        if (one-time initialization token for breathInTransform != -1)
        {
          swift_once();
        }

        v13 = static SyncedLyricsLineView.InstrumentalContentView.Specs.breathInTransform;
        v14 = *algn_10063FB90;
        v10 = xmmword_10063FBA0;
      }

      else
      {
        if (one-time initialization token for breathOutTransform != -1)
        {
          swift_once();
        }

        v13 = static SyncedLyricsLineView.InstrumentalContentView.Specs.breathOutTransform;
        v14 = xmmword_10063FB60;
        v10 = xmmword_10063FB70;
      }

      v15 = v10;
      [v12 setTransform:&v13];
    }
  }

  return result;
}

void SyncedLyricsLineView.InstrumentalContentView.fadeOut()()
{
  if ((v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
  {
    v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 1;
    v1 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:1.0 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17 = partial apply for closure #1 in SyncedLyricsLineView.InstrumentalContentView.fadeOut();
    v18 = v2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed () -> ();
    v16 = &block_descriptor_86;
    v3 = _Block_copy(&v13);
    v4 = v0;

    [v1 addAnimations:v3];
    _Block_release(v3);
    [v1 startAnimation];
    v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.3];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = partial apply for closure #2 in SyncedLyricsLineView.InstrumentalContentView.fadeOut();
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed () -> ();
    v16 = &block_descriptor_55;
    v7 = _Block_copy(&v13);
    v8 = v4;

    [v5 addAnimations:v7];
    _Block_release(v7);
    [v5 startAnimationAfterDelay:1.0];
    v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.5];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v17 = partial apply for closure #3 in SyncedLyricsLineView.InstrumentalContentView.fadeOut();
    v18 = v10;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed () -> ();
    v16 = &block_descriptor_61_0;
    v11 = _Block_copy(&v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimationAfterDelay:1.0];
  }
}

uint64_t closure #1 in SyncedLyricsLineView.InstrumentalContentView.fadeOut()(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (one-time initialization token for fadeOutZoomInTransform != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = static SyncedLyricsLineView.InstrumentalContentView.Specs.fadeOutZoomInTransform;
      v9[1] = xmmword_10063FBC0;
      v9[2] = xmmword_10063FBD0;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t closure #2 in SyncedLyricsLineView.InstrumentalContentView.fadeOut()(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setAlpha:0.0];
    }
  }

  return result;
}

uint64_t closure #3 in SyncedLyricsLineView.InstrumentalContentView.fadeOut()(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (one-time initialization token for fadeOutZoomOutTransform != -1)
      {
        swift_once();
      }

      ++v6;
      v9[0] = static SyncedLyricsLineView.InstrumentalContentView.Specs.fadeOutZoomOutTransform;
      v9[1] = *algn_10063FBF0;
      v9[2] = xmmword_10063FC00;
      [v8 setTransform:v9];
    }

    while (v5 != v6);
  }

  return result;
}

void SyncedLyricsLineView.InstrumentalContentView.createDots()()
{
  v1 = &v0[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v2 = *&v0[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v2 < 0)
  {
LABEL_13:
    __break(1u);
  }

  else if (v2)
  {
    v3 = v0;
    v4 = 0;
    v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    do
    {
      v6 = [objc_allocWithZone(UIView) init];
      v7 = v6;
      v8 = 1.3;
      if (!v4)
      {
        goto LABEL_7;
      }

      v9 = *(v1 + 74);
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_13;
      }

      v8 = -1.3;
      if (v4 == v11)
      {
LABEL_7:
        v12 = [v6 layer];
        [v12 anchorPoint];
        [v12 setAnchorPoint:v13 + v8];
      }

      [v7 setBackgroundColor:{*(v1 + 44), v16}];
      [v7 setAlpha:0.0];
      [v7 setAutoresizingMask:40];
      v14 = [v7 layer];
      [v14 setCornerRadius:*(v1 + 76) * 0.5];

      swift_beginAccess();
      v15 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v3 addSubview:v15];
    }

    while (v2 != v4);
  }
}

id SyncedLyricsLineView.InstrumentalContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t protocol witness for SyncedLyricsLineContentView.specs.setter in conformance SyncedLyricsLineView.InstrumentalContentView(const void *a1)
{
  v3 = *v1;
  memcpy(v5, (v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), sizeof(v5));
  memcpy((v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), a1, 0x2B0uLL);
  return outlined destroy of SyncedLyricsViewController.Specs(v5);
}

uint64_t sub_10047EA94()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047EAFC()
{

  return swift_deallocObject();
}

uint64_t sub_10047EB3C()
{

  return swift_deallocObject();
}

void partial apply for closure #2 in SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)()
{
  v1 = *(v0 + 16) + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *(v0 + 24);
    if (*v1 <= v2)
    {
      v3 = __OFADD__(v2, 1);
      v4 = v2 + 1;
      if (v3)
      {
        __break(1u);
      }

      else
      {
        *v1 = v4;
        *(v1 + 8) = 0;
      }
    }
  }
}

void specialized SyncedLyricsLineView.InstrumentalContentView.init(coder:)()
{
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isScrolling) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_alignment) = 0;
  v1 = (v0 + OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = 0;
  v2 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SyncedLyricsLineView.TextContentView.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR___MusicTextContentView_isSelected] = _;
  if (_)
  {
    v7 = Int.seconds.getter(1);
    v8 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v9 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
    if (v9 || ((v10 = [objc_allocWithZone(UILabel) init], objc_msgSend(v10, "setAdjustsFontForContentSizeCategory:", 1), objc_msgSend(v10, "setLineBreakStrategy:", 3), objc_msgSend(v10, "setNumberOfLines:", 0), objc_msgSend(v10, "setTextAlignment:", 4), objc_msgSend(v10, "setAutoresizingMask:", 18), objc_msgSend(v10, "setTextAlignment:", *&v2[OBJC_IVAR___MusicTextContentView_alignment]), v11 = OBJC_IVAR___MusicTextContentView_content, swift_beginAccess(), outlined init with copy of SyncedLyricsLineView.TextContentView.Content(&v2[v11], v6), swift_getEnumCaseMultiPayload() != 1) ? (outlined destroy of SyncedLyricsLineView.TextContentView.Content(v6), v12 = objc_msgSend(*&v2[OBJC_IVAR___MusicTextContentView_label], "attributedText")) : (v12 = *v6), (objc_msgSend(v10, "setAttributedText:", v12), v12, (v13 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]) == 0) ? (v14 = *&v2[OBJC_IVAR___MusicTextContentView_specs + 352], v13 = 0) : (v14 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]), v15 = v13, objc_msgSend(v10, "setTextColor:", v14), v14, objc_msgSend(v2, "addSubview:", v10), v16 = *&v2[v8], *&v2[v8] = v10, v16, (v9 = *&v2[v8]) != 0))
    {
      v17 = *&v2[OBJC_IVAR___MusicTextContentView_label];
      v18 = v9;
      [v17 frame];
      [v18 setFrame:?];

      v19 = *&v2[v8];
      if (v19)
      {
        [v19 setAlpha:0.0];
      }
    }
  }

  else
  {
    v7 = Int.seconds.getter(0);
  }

  if (animated)
  {
    v20 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v7;
    v35 = partial apply for closure #1 in SyncedLyricsLineView.TextContentView.setSelected(_:animated:);
    v36 = v21;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed () -> ();
    v34 = &block_descriptor_191_0;
    v22 = _Block_copy(&aBlock);
    v23 = v2;

    [v20 addAnimations:v22];
    _Block_release(v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v35 = partial apply for closure #2 in SyncedLyricsLineView.TextContentView.setSelected(_:animated:);
    v36 = v24;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    v34 = &block_descriptor_197;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v20 addCompletion:v25];
    _Block_release(v25);
    [v20 startAnimation];
LABEL_22:

    return;
  }

  [*&v2[OBJC_IVAR___MusicTextContentView_label] setAlpha:1.0 - v7];
  v27 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v28 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
  if (v28)
  {
    [v28 setAlpha:v7];
  }

  if (!_)
  {
    v29 = *&v2[v27];
    if (v29)
    {
      [v29 removeFromSuperview];
      v20 = *&v2[v27];
    }

    else
    {
      v20 = 0;
    }

    *&v2[v27] = 0;
    goto LABEL_22;
  }
}

void closure #2 in SyncedLyricsLineView.TextContentView.setSelected(_:animated:)(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + OBJC_IVAR___MusicTextContentView_isSelected) & 1) == 0)
  {
    v3 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v4 = *(a2 + OBJC_IVAR___MusicTextContentView_selectedLabel);
    if (v4)
    {
      v5 = a2;
      [v4 removeFromSuperview];
      a2 = v5;
      v4 = *(v5 + v3);
    }

    *(a2 + v3) = 0;
  }
}

void SyncedLyricsLineView.TextContentView.copy()(char **a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  outlined init with copy of SyncedLyricsLineView.TextContentView.Content(&v2[v10], v9);
  memcpy(v17, &v2[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  v11 = type metadata accessor for SyncedLyricsLineView.TextContentView(0);
  v12 = objc_allocWithZone(v11);
  outlined init with copy of SyncedLyricsViewController.Specs(v17, v16);
  v13 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v9, v17, 0);
  outlined destroy of SyncedLyricsViewController.Specs(v17);
  SyncedLyricsLineView.TextContentView.setSelected(_:animated:)(v2[OBJC_IVAR___MusicTextContentView_isSelected], 0);
  *&v13[OBJC_IVAR___MusicTextContentView_alignment] = *&v2[OBJC_IVAR___MusicTextContentView_alignment];
  v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.TextContentView.copy());
  (*(v7 + 56))(v5, 1, 1, v6);
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v14);

  outlined destroy of TaskPriority?(v5, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  v15 = v13;
  [v2 bounds];
  [v15 setFrame:?];

  a1[3] = v11;
  *a1 = v15;
}

uint64_t SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin();
  v103 = &v95 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v95 - v6;
  v7 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  __chkstk_darwin();
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v95 - v10);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v110 = OBJC_IVAR___MusicTextContentView_isScrolling;
  v120 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  v121 = v2 + OBJC_IVAR___MusicTextContentView_specs;
  v119 = OBJC_IVAR___MusicTextContentView_alignment;
  v122 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v123 = OBJC_IVAR___MusicTextContentView_label;
  v15 = OBJC_IVAR___MusicTextContentView_content;
  v124 = a1;
  v16 = a1 + 56;

  v118 = v15;
  swift_beginAccess();
  v17 = 0;
  v18 = v12 + 63;
  v19 = v11;
  v20 = v18 >> 6;
  v115 = NSFontAttributeName;
  v114 = NSParagraphStyleAttributeName;
  v113 = NSForegroundColorAttributeName;
  v106 = NSLanguageIdentifierAttributeName;
  v105 = xmmword_1004F2EE0;
  v116 = v2;
  v111 = v9;
  v112 = v7;
  while (v14)
  {
LABEL_9:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = *(*(v124 + 48) + (v22 | (v17 << 6)));
    v24 = v7;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v33 = *(v2 + v120);
        v34 = *(v2 + v123);
        if (!v33)
        {
          v35 = 368;
          if (*(v2 + v110))
          {
            v35 = 392;
          }

          v33 = *(v121 + v35);
        }

        goto LABEL_34;
      }

      [*(v2 + v123) setTextAlignment:*(v2 + v119)];
      v30 = *(v2 + v122);
      if (v30)
      {
        [v30 setTextAlignment:*(v2 + v119)];
        goto LABEL_35;
      }
    }

    else if (v23)
    {
      outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v2 + v118, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v121;
      if (EnumCaseMultiPayload == 1)
      {
        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v9);
      }

      else
      {

        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd);
        outlined destroy of TaskPriority?(&v9[*(v47 + 48)], &_s10Foundation6LocaleV8LanguageVSgMd_0);
        [*(v2 + v123) setFont:*(v32 + 200)];
        v48 = *(v2 + v122);
        if (v48)
        {
          [v48 setFont:*(v32 + 200)];
        }
      }

      v49 = *(v2 + v120);
      if (!v49)
      {
        v50 = 368;
        if (*(v2 + v110))
        {
          v50 = 392;
        }

        v49 = *(v32 + v50);
      }

      [*(v2 + v123) setTextColor:v49];
      v34 = *(v2 + v122);
      v7 = v24;
      if (v34)
      {
        v33 = *(v121 + 352);
LABEL_34:
        [v34 setTextColor:v33];
LABEL_35:
        v7 = v24;
      }
    }

    else
    {
      outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v2 + v118, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *v19;
        v26 = v19;
        v27 = *(v2 + v123);
        v28 = v25;
        [v27 setAttributedText:v28];
        v29 = *(v2 + v122);
        [v29 setAttributedText:v28];

        v19 = v26;
        v9 = v111;
        v7 = v112;
      }

      else
      {
        v36 = *v19;
        v37 = v19[1];
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd) + 48);
        v102 = v19;
        outlined init with take of Locale.Language?(v19 + v38, v117);
        v39 = [objc_allocWithZone(NSMutableParagraphStyle) init];
        [v39 setAlignment:*(v2 + v119)];
        v109 = v39;
        [v39 setLineBreakStrategy:3];
        v104 = v36;
        v108 = v37;
        v40 = String.containsExcessiveHeightCharacters.getter(v36, v37);
        v41 = v121;
        if (v40)
        {
          *&v127 = Int.seconds.getter(0);
          *&v126[0] = v127;
          CTFontGetLanguageAwareOutsets();
          v42 = *&v127 + *v126;
          v43 = v109;
          [v109 lineSpacing];
          [v43 setLineSpacing:v42 + v44];
        }

        v45 = *(v2 + v120);
        v99 = v45;
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v51 = 368;
          if (*(v2 + v110))
          {
            v51 = 392;
          }

          v46 = *(v41 + v51);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
        inited = swift_initStackObject();
        *(inited + 16) = v105;
        *(inited + 32) = v115;
        v97 = *(v41 + 200);
        v53 = v97;
        v98 = (inited + 32);
        v54 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
        *(inited + 40) = v53;
        v55 = v114;
        *(inited + 64) = v54;
        *(inited + 72) = v55;
        v56 = type metadata accessor for UIAction(0, &_sSo23NSMutableParagraphStyleCML_0);
        *(inited + 80) = v109;
        v57 = v113;
        *(inited + 104) = v56;
        *(inited + 112) = v57;
        v58 = type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
        v100 = v58;
        v101 = v46;
        *(inited + 120) = v46;
        v60 = v106;
        v59 = v107;
        *(inited + 144) = v58;
        *(inited + 152) = v60;
        outlined init with copy of Locale.Language?(v117, v59);
        v61 = type metadata accessor for Locale.Language();
        v62 = *(v61 - 8);
        LODWORD(v96) = (*(v62 + 48))(v59, 1, v61);
        v63 = v99;
        v64 = v115;
        v65 = v97;
        v66 = v114;
        v109 = v109;
        v99 = v113;
        v67 = v60;
        if (v96 == 1)
        {
          v68 = v59;
          v69 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
LABEL_43:
          outlined destroy of TaskPriority?(v68, v69);
          v73 = v116;
          v74 = (inited + 160);
          *(inited + 184) = &type metadata for String;
LABEL_44:
          v75 = &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO7addableyA2F13AddableCaveatOSgcAFmFWC_ptr;
          *v74 = 0;
          v76 = 0xE000000000000000;
          goto LABEL_45;
        }

        v70 = v103;
        Locale.Language.languageCode.getter();
        (*(v62 + 8))(v59, v61);
        v71 = type metadata accessor for Locale.LanguageCode();
        v72 = *(v71 - 8);
        if ((*(v72 + 48))(v70, 1, v71) == 1)
        {
          v68 = v70;
          v69 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
          goto LABEL_43;
        }

        v97 = Locale.LanguageCode.identifier.getter();
        v76 = v93;
        (*(v72 + 8))(v70, v71);
        v74 = (inited + 160);
        *(inited + 184) = &type metadata for String;
        v73 = v116;
        if (!v76)
        {
          goto LABEL_44;
        }

        *v74 = v97;
        v75 = &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusO7addableyA2F13AddableCaveatOSgcAFmFWC_ptr;
LABEL_45:
        *(inited + 168) = v76;
        v77 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
        swift_arrayDestroy();
        v98 = *(v73 + v123);
        v78 = objc_allocWithZone(v75[269]);

        v79 = String._bridgeToObjectiveC()();
        _sSo21NSAttributedStringKeyaMa_1(0);
        v81 = v80;
        v96 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        v97 = v81;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v83 = [v78 initWithString:v79 attributes:isa];

        [v98 setAttributedText:v83];
        v2 = v116;
        v84 = *(v121 + 352);
        v128 = v100;
        *&v127 = v84;
        outlined init with take of Any(&v127, v126);
        v85 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v77;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v126, v99, isUniquelyReferenced_nonNull_native);
        v87 = *(v2 + v122);
        if (v87)
        {
          v88 = objc_allocWithZone(NSAttributedString);
          v89 = v87;
          v90 = String._bridgeToObjectiveC()();

          v91 = Dictionary._bridgeToObjectiveC()().super.isa;

          v92 = [v88 initWithString:v90 attributes:v91];

          [v89 setAttributedText:v92];
          v2 = v116;

          outlined destroy of TaskPriority?(v117, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        }

        else
        {

          outlined destroy of TaskPriority?(v117, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        }

        v9 = v111;
        v7 = v112;
        v19 = v102;
      }
    }
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    if (v21 >= v20)
    {
    }

    v14 = *(v16 + 8 * v21);
    ++v17;
    if (v14)
    {
      v17 = v21;
      goto LABEL_9;
    }
  }
}

uint64_t type metadata completion function for SyncedLyricsLineView.TextContentView()
{
  result = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for SyncedLyricsLineContentView.specs.setter in conformance SyncedLyricsLineView.TextContentView(const void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *v1;
  memcpy(v10, (v5 + OBJC_IVAR___MusicTextContentView_specs), sizeof(v10));
  memcpy((v5 + OBJC_IVAR___MusicTextContentView_specs), a1, 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(a1, v9);
  outlined destroy of SyncedLyricsViewController.Specs(v10);
  v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.TextContentView.specs.setter);
  v7 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v6);

  outlined destroy of TaskPriority?(v4, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  return outlined destroy of SyncedLyricsViewController.Specs(a1);
}

uint64_t protocol witness for SyncedLyricsLineContentView.isScrolling.setter in conformance SyncedLyricsLineView.TextContentView(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v4 = &v8 - v3;
  *(*v1 + OBJC_IVAR___MusicTextContentView_isScrolling) = a1;
  v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for SyncedLyricsLineContentView.isScrolling.setter in conformance SyncedLyricsLineView.TextContentView);
  v6 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v5);

  return outlined destroy of TaskPriority?(v4, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
}

void SyncedLyricsLineView.DespacitoContentView.specs.didset()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v3 = &v20[-v2 - 8];
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_specs;
  memcpy(v23, (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(v23));
  memcpy(v24, &v4[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  memmove(&v4[OBJC_IVAR___MusicTextContentView_specs], (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(v23, v22);
  outlined init with copy of SyncedLyricsViewController.Specs(v23, v22);
  v6 = v4;
  outlined destroy of SyncedLyricsViewController.Specs(v24);
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.TextContentView.specs.setter);
  v8 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v7);

  outlined destroy of TaskPriority?(v3, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  outlined destroy of SyncedLyricsViewController.Specs(v23);

  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v10[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v10[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    outlined init with copy of SyncedLyricsViewController.Specs(v21, v20);
    outlined init with copy of SyncedLyricsViewController.Specs(v21, v20);
    v11 = v10;
    outlined destroy of SyncedLyricsViewController.Specs(v22);
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.TextContentView.specs.setter);
    v9(v3, 1, 1, v8);
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v12);

    outlined destroy of TaskPriority?(v3, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
    outlined destroy of SyncedLyricsViewController.Specs(v21);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v13[OBJC_IVAR___MusicTextContentView_specs], sizeof(v22));
    memmove(&v13[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    outlined init with copy of SyncedLyricsViewController.Specs(v21, v20);
    outlined init with copy of SyncedLyricsViewController.Specs(v21, v20);
    v14 = v13;
    outlined destroy of SyncedLyricsViewController.Specs(v22);
    v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.TextContentView.specs.setter);
    v9(v3, 1, 1, v8);
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v15);

    outlined destroy of TaskPriority?(v3, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
    outlined destroy of SyncedLyricsViewController.Specs(v21);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    memcpy(v21, (v1 + v5), sizeof(v21));
    memcpy(v22, &v16[OBJC_IVAR___MusicDespacitoContentView_specs], sizeof(v22));
    memmove(&v16[OBJC_IVAR___MusicDespacitoContentView_specs], (v1 + v5), 0x2B0uLL);
    outlined init with copy of SyncedLyricsViewController.Specs(v21, v20);
    outlined init with copy of SyncedLyricsViewController.Specs(v21, v20);
    v17 = v16;
    v18 = outlined destroy of SyncedLyricsViewController.Specs(v22);
    SyncedLyricsLineView.DespacitoContentView.specs.didset(v18);
    outlined destroy of SyncedLyricsViewController.Specs(v21);
  }
}

void SyncedLyricsLineView.DespacitoContentView.isScrolling.didset()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_isScrolling;
  v4[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + OBJC_IVAR___MusicDespacitoContentView_isScrolling);
  v6 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.DespacitoContentView.isScrolling.didset);
  v7 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = v4;
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v6);

  outlined destroy of TaskPriority?(v3, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    v10[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #1 of SyncedLyricsLineView.DespacitoContentView.isScrolling.didset);
    v8(v3, 1, 1, v7);
    v12 = v10;
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v11);

    outlined destroy of TaskPriority?(v3, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    v13[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #2 of SyncedLyricsLineView.DespacitoContentView.isScrolling.didset);
    v8(v3, 1, 1, v7);
    v15 = v13;
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v14);

    outlined destroy of TaskPriority?(v3, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    v16[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = *(v1 + v5);
    v17 = v16;
    SyncedLyricsLineView.DespacitoContentView.isScrolling.didset();
  }
}

uint64_t SyncedLyricsLineView.DespacitoContentView.alignment.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *&v6[OBJC_IVAR___MusicTextContentView_alignment] = a1;
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.DespacitoContentView.alignment.setter);
  v8 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = v6;
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v7);

  result = outlined destroy of TaskPriority?(v5, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  v12 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v12)
  {
    *&v12[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v13 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #1 of SyncedLyricsLineView.DespacitoContentView.alignment.setter);
    v9(v5, 1, 1, v8);
    v14 = v12;
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v13);

    result = outlined destroy of TaskPriority?(v5, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  }

  v15 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v15)
  {
    *&v15[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #2 of SyncedLyricsLineView.DespacitoContentView.alignment.setter);
    v9(v5, 1, 1, v8);
    v17 = v15;
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v16);

    return outlined destroy of TaskPriority?(v5, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  }

  return result;
}

Swift::Void __swiftcall SyncedLyricsLineView.DespacitoContentView.reset()()
{
  [*(*(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  v1 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v1)
  {
    [*(v1 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  }

  v2 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR___MusicTextContentView_label);

    [v3 setAlpha:1.0];
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.DespacitoContentView.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  SyncedLyricsLineView.TextContentView.setSelected(_:animated:)(_, animated);

  v7 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v7)
  {
    v8 = v7;
    SyncedLyricsLineView.DespacitoContentView.setSelected(_:animated:)(_, animated);
  }

  v9 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v9)
  {
    v10 = v9;
    SyncedLyricsLineView.TextContentView.setSelected(_:animated:)(_, animated);
  }
}

double SyncedLyricsLineView.DespacitoContentView.sizeThatFits(_:selected:)(char a1, double a2, double a3)
{
  v4 = v3;
  [*(v4 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) sizeThatFits:?];
  v9 = v8;
  v10 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v10 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) & 1) == 0)
  {
    [v10 sizeThatFits:{a2, a3}];
  }

  v11 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v11 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) & 1) == 0)
  {
    [v11 sizeThatFits:{a2, a3}];
  }

  v12 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v12)
  {
    v13 = v12;
    SyncedLyricsLineView.DespacitoContentView.sizeThatFits(_:selected:)(a1 & 1, a2, a3);
  }

  return v9;
}

uint64_t SyncedLyricsLineView.DespacitoContentView.text.didset()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v2 = &v20 - v1;
  v20 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v3 = *(v20 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v20 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text);
  v11 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text + 8);
  v13 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  outlined init with copy of Locale.Language?(v0 + v13, v9);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd) + 48);
  *v7 = v12;
  v7[1] = v11;
  outlined init with copy of Locale.Language?(v9, v7 + v14);
  v15 = v20;
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v10 + v16, v5);
  swift_beginAccess();
  v17 = v10;

  outlined assign with copy of SyncedLyricsLineView.TextContentView.Content(v7, v10 + v16);
  swift_endAccess();
  v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.DespacitoContentView.text.didset);
  outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v5, v2);
  (*(v3 + 56))(v2, 0, 1, v15);
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v18);

  outlined destroy of TaskPriority?(v2, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);

  outlined destroy of SyncedLyricsLineView.TextContentView.Content(v5);
  outlined destroy of SyncedLyricsLineView.TextContentView.Content(v7);
  return outlined destroy of TaskPriority?(v9, &_s10Foundation6LocaleV8LanguageVSgMd_0);
}

void SyncedLyricsLineView.DespacitoContentView.backgroundVocalsText.didset()
{
  type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  __chkstk_darwin();
  v2 = (&v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v4 = &v73 - v3;
  __chkstk_darwin();
  v6 = &v73 - v5;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v73 - v10;
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8);
  if (v12)
  {
    v82 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
    v13 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
    if (v13)
    {
      v14 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();
      outlined init with copy of Locale.Language?(v0 + v14, v11);
      v79 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
      v15 = v6;
      v16 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
      v17 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
      swift_beginAccess();
      v81 = v15;
      outlined init with copy of Locale.Language?(v0 + v17, v15);
      outlined init with copy of Locale.Language?(v11, v4);
      v18 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();

      v19 = v13;

      outlined assign with take of Locale.Language?(v4, v13 + v18);
      swift_endAccess();
      v20 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
      *v20 = v82;
      v20[1] = v12;

      SyncedLyricsLineView.DespacitoContentView.text.didset();
      v21 = type metadata accessor for Locale.Language();
      v80 = *(*(v21 - 8) + 56);
      v80(v4, 1, 1, v21);
      v22 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
      swift_beginAccess();
      outlined assign with take of Locale.Language?(v4, &v19[v22]);
      swift_endAccess();
      v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
      *v23 = 0;
      v23[1] = 0;

      SyncedLyricsLineView.DespacitoContentView.transliterationText.didset();
      if (v16)
      {
        v24 = String.lowercased()();

        v82 = v16;
        v25 = String.lowercased()();
        if (v24._countAndFlagsBits != v25._countAndFlagsBits || v24._object != v25._object)
        {
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v26 = v81;
          if ((v65 & 1) == 0)
          {
            outlined init with copy of Locale.Language?(v81, v4);
            v67 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
            swift_beginAccess();
            outlined assign with take of Locale.Language?(v4, &v19[v67]);
            swift_endAccess();
            v68 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
            v69 = v82;
            *v68 = v79;
            v68[1] = v69;
            goto LABEL_9;
          }

LABEL_8:
          v80(v4, 1, 1, v21);
          v27 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          outlined assign with take of Locale.Language?(v4, &v19[v27]);
          swift_endAccess();
          v28 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v28 = 0;
          v28[1] = 0;
LABEL_9:

          SyncedLyricsLineView.DespacitoContentView.translationText.didset();
          SyncedLyricsLineView.DespacitoContentView.translationBackgroundVocalsText.setter(0, 0);
          v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v29 = 0;
          v29[1] = 0;

          SyncedLyricsLineView.DespacitoContentView.backgroundVocalsText.didset(v30);
          v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          [v19 setNeedsLayout];

          outlined destroy of TaskPriority?(v26, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          outlined destroy of TaskPriority?(v11, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          return;
        }
      }

      v26 = v81;
      goto LABEL_8;
    }

    v79 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
    v33 = OBJC_IVAR___MusicDespacitoContentView_language;
    v34 = v7;
    v35 = v8;
    v74 = v8;
    swift_beginAccess();
    outlined init with copy of Locale.Language?(v0 + v33, v35);
    v36 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
    v73 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
    v77 = v36;
    v37 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
    swift_beginAccess();
    v81 = v34;
    outlined init with copy of Locale.Language?(v0 + v37, v34);
    v80 = v0;
    memcpy(v85, v0 + OBJC_IVAR___MusicDespacitoContentView_specs, 0x2B0uLL);
    v78 = type metadata accessor for SyncedLyricsLineView.DespacitoContentView(0);
    v38 = objc_allocWithZone(v78);
    v38[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
    *&v38[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    *&v38[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
    *&v38[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
    v39 = OBJC_IVAR___MusicDespacitoContentView_language;
    v75 = OBJC_IVAR___MusicDespacitoContentView_language;
    v40 = type metadata accessor for Locale.Language();
    v41 = *(*(v40 - 8) + 56);
    v41(&v38[v39], 1, 1, v40);
    v76 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v38[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
    v42 = &v38[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v42 = 0;
    v42[1] = 0;
    v43 = &v38[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
    *v43 = 0;
    v43[1] = 0;
    v38[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
    v41(&v38[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v40);
    v44 = &v38[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v44 = 0;
    v44[1] = 0;
    v38[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
    v41(&v38[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v40);
    v45 = &v38[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
    *v45 = 0;
    v45[1] = 0;
    v46 = v74;
    outlined init with copy of Locale.Language?(v74, v4);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd) + 48);
    v48 = v82;
    *v2 = v82;
    v2[1] = v12;
    outlined init with copy of Locale.Language?(v4, v2 + v47);
    v49 = v48;
    swift_storeEnumTagMultiPayload();
    v50 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContentView(0));

    outlined init with copy of SyncedLyricsViewController.Specs(v85, v84);

    outlined init with copy of SyncedLyricsViewController.Specs(v85, v84);
    v51 = v77;

    v52 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v2, v85, 0);
    outlined destroy of SyncedLyricsViewController.Specs(v85);
    outlined destroy of TaskPriority?(v4, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    *&v38[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v52;
    memcpy(&v38[OBJC_IVAR___MusicDespacitoContentView_specs], v85, 0x2B0uLL);
    v53 = &v38[OBJC_IVAR___MusicDespacitoContentView_text];
    *v53 = v49;
    v53[1] = v12;
    v54 = v75;
    swift_beginAccess();

    outlined init with copy of SyncedLyricsViewController.Specs(v85, v84);
    outlined assign with copy of Locale.Language?(v46, &v38[v54]);
    swift_endAccess();
    v38[v76] = 2;
    v83.receiver = v38;
    v83.super_class = v78;
    v55 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v56 = *&v55[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
    v57 = v55;
    [v57 addSubview:v56];
    if (v51)
    {
      v58 = String.lowercased()();

      v59 = v73;
      v60 = String.lowercased()();
      if (v58._countAndFlagsBits == v60._countAndFlagsBits && v58._object == v60._object)
      {
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {
          outlined init with copy of Locale.Language?(v81, v4);
          v70 = v51;
          v71 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          outlined assign with take of Locale.Language?(v4, &v57[v71]);
          swift_endAccess();
          v72 = &v57[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v72 = v59;
          *(v72 + 1) = v70;

          SyncedLyricsLineView.DespacitoContentView.translationText.didset();
          goto LABEL_20;
        }
      }
    }

LABEL_20:
    v61 = &v57[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v61 = 0;
    *(v61 + 1) = 0;

    SyncedLyricsLineView.DespacitoContentView.backgroundVocalsText.didset(v62);

    outlined destroy of SyncedLyricsViewController.Specs(v85);
    outlined destroy of TaskPriority?(v81, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined destroy of TaskPriority?(v46, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v57[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 0;
    SyncedLyricsLineView.DespacitoContentView.isScrolling.didset();
    v63 = v80;
    [v80 addSubview:v57];
    v64 = *(v63 + v79);
    *(v63 + v79) = v57;

    return;
  }

  v31 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
  v32 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v32)
  {
    [v32 removeFromSuperview];
    v32 = *(v0 + v31);
  }

  *(v0 + v31) = 0;
}

void SyncedLyricsLineView.DespacitoContentView.translationBackgroundVocalsText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = &v4[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v7 = v5;
    *(v7 + 1) = v6;
    v8 = v4;

    SyncedLyricsLineView.DespacitoContentView.translationText.didset();
  }
}

void SyncedLyricsLineView.DespacitoContentView.translationText.didset()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v2 = &v56 - v1;
  v67 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v56 - v4;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v11 = &v56 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  if (!v14 || *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText] == *&v0[OBJC_IVAR___MusicDespacitoContentView_text] && v14 == *&v0[OBJC_IVAR___MusicDespacitoContentView_text + 8] || (v64 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 1;
    return;
  }

  v58 = v2;
  v63 = v5;
  v15 = 264;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v15 = 272;
  }

  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  v60 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v62 = inited + 32;
  v18 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  v61 = v16;
  *(inited + 40) = v16;
  *(inited + 64) = v18;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v59 = NSLanguageIdentifierAttributeName;
  v19 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  outlined init with copy of Locale.Language?(&v0[v19], v11);
  if ((*(v7 + 48))(v11, 1, v6))
  {
    v20 = v61;
    v21 = v61;

    v22 = v60;
    v23 = v59;
    outlined destroy of TaskPriority?(v11, &_s10Foundation6LocaleV8LanguageVSgMd_0);
LABEL_13:
    v30 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_14:
    *v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_15;
  }

  v57 = v0;
  (*(v7 + 16))(v9, v11, v6);
  v24 = v61;
  v25 = v61;

  v26 = v60;
  v27 = v59;
  outlined destroy of TaskPriority?(v11, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v9, v6);
  v28 = type metadata accessor for Locale.LanguageCode();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
    v0 = v57;
    v20 = v24;
    goto LABEL_13;
  }

  v54 = Locale.LanguageCode.identifier.getter();
  v31 = v55;
  (*(v29 + 8))(v13, v28);
  v30 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  if (!v31)
  {
    v0 = v57;
    v20 = v24;
    goto LABEL_14;
  }

  *v30 = v54;
  v0 = v57;
  v20 = v24;
LABEL_15:
  *(inited + 88) = v31;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSAttributedString);
  v33 = String._bridgeToObjectiveC()();

  _sSo21NSAttributedStringKeyaMa_1(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35 = [v32 initWithString:v33 attributes:isa];

  v36 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v37 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v37)
  {
    v38 = v63;
    *v63 = v35;
    v39 = v67;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v41 = v66;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v37 + v40, v66);
    swift_beginAccess();
    v42 = v37;
    v43 = v35;
    outlined assign with copy of SyncedLyricsLineView.TextContentView.Content(v38, v37 + v40);
    swift_endAccess();
    v44 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.DespacitoContentView.translationText.didset);
    v45 = v58;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v41, v58);
    (*(v65 + 56))(v45, 0, 1, v39);
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v44);

    outlined destroy of TaskPriority?(v45, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);

    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v41);
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v38);
  }

  else
  {
    memcpy(v69, &v0[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
    v46 = v69[36];
    v47 = v63;
    *v63 = v35;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContentView(0));
    v48 = v35;
    outlined init with copy of SyncedLyricsViewController.Specs(v69, &v68);
    v49 = v46;
    v50 = v47;
    v51 = v0;
    v52 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v50, v69, v46);

    outlined destroy of SyncedLyricsViewController.Specs(v69);
    [v51 addSubview:v52];

    v53 = *&v51[v36];
    *&v51[v36] = v52;

    v51[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 0;
  }
}

void SyncedLyricsLineView.DespacitoContentView.transliterationText.didset()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v2 = &v52 - v1;
  v3 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = type metadata accessor for Locale.Language();
  v62 = *(v9 - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v12 = &v52 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
  __chkstk_darwin();
  v14 = &v52 - v13;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 1;
    return;
  }

  v54 = v4;
  v55 = v6;
  v60 = v3;
  v61 = v8;
  v56 = v2;
  v59 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = NSFontAttributeName;
  v58 = inited + 32;
  v53 = &v0[OBJC_IVAR___MusicDespacitoContentView_specs];
  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 312];
  v17 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  *(inited + 40) = v16;
  *(inited + 64) = v17;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v18 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v19 = &v0[v18];
  v20 = v0;
  outlined init with copy of Locale.Language?(v19, v12);
  if ((*(v62 + 48))(v12, 1, v9))
  {

    v21 = NSFontAttributeName;
    v22 = v16;
    v23 = NSLanguageIdentifierAttributeName;
    outlined destroy of TaskPriority?(v12, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v24 = v61;
LABEL_7:
    v32 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_8:
    *v32 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_9;
  }

  v52 = v0;
  v25 = v62;
  v26 = v57;
  (*(v62 + 16))(v57, v12, v9);

  v27 = NSFontAttributeName;
  v28 = v16;
  v29 = NSLanguageIdentifierAttributeName;
  outlined destroy of TaskPriority?(v12, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  Locale.Language.languageCode.getter();
  (*(v25 + 8))(v26, v9);
  v30 = type metadata accessor for Locale.LanguageCode();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    outlined destroy of TaskPriority?(v14, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0);
    v24 = v61;
    v20 = v52;
    goto LABEL_7;
  }

  v50 = Locale.LanguageCode.identifier.getter();
  v33 = v51;
  (*(v31 + 8))(v14, v30);
  v32 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  v24 = v61;
  v20 = v52;
  if (!v33)
  {
    goto LABEL_8;
  }

  *v32 = v50;
LABEL_9:
  *(inited + 88) = v33;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(NSAttributedString);
  v35 = String._bridgeToObjectiveC()();

  _sSo21NSAttributedStringKeyaMa_1(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = [v34 initWithString:v35 attributes:isa];

  v38 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v39 = *&v20[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (v39)
  {
    *v24 = v37;
    v40 = v60;
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v42 = v55;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v39 + v41, v55);
    swift_beginAccess();
    v43 = v39;
    v44 = v37;
    outlined assign with copy of SyncedLyricsLineView.TextContentView.Content(v24, v39 + v41);
    swift_endAccess();
    v45 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.DespacitoContentView.transliterationText.didset);
    v46 = v56;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v42, v56);
    (*(v54 + 56))(v46, 0, 1, v40);
    SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v45);

    outlined destroy of TaskPriority?(v46, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);

    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v42);
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v24);
  }

  else
  {
    memcpy(v65, v53, 0x2B0uLL);
    *v24 = v37;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContentView(0));
    v47 = v37;
    outlined init with copy of SyncedLyricsViewController.Specs(v65, &v64);
    v48 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v24, v65, 0);
    outlined destroy of SyncedLyricsViewController.Specs(v65);
    [v20 addSubview:v48];

    v49 = *&v20[v38];
    *&v20[v38] = v48;

    v20[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 0;
  }
}

id closure #1 in SyncedLyricsLineView.DespacitoContentView.animate(view:for:completion:)(void *a1)
{
  [a1 setAlpha:0.0];
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  return [a1 setTransform:&v3];
}

Swift::Void __swiftcall SyncedLyricsLineView.DespacitoContentView.layoutSubviews()()
{
  v80.receiver = v0;
  v80.super_class = type metadata accessor for SyncedLyricsLineView.DespacitoContentView(0);
  objc_msgSendSuper2(&v80, "layoutSubviews");
  v79 = Int.seconds.getter(0);
  v72 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v1 = v0[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  if (v1 != 2 && (v1 & 1) == 0)
  {
    specialized closure #1 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews()(v0, &v79);
  }

  v3 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v4 = *&v0[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  [v0 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;

  v9 = *&v0[v3];
  swift_beginAccess();
  v10 = v79;
  v11 = v9;
  [v0 bounds];
  [v11 setFrame:{0.0, v10, CGRectGetWidth(v81), v8}];

  [*&v0[v3] frame];
  MaxY = CGRectGetMaxY(v82);
  v79 = MaxY;
  v13 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (!v14)
  {
    v27 = 0;
    goto LABEL_21;
  }

  v15 = v14;
  [v0 bounds];
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  [*&v0[v3] frame];
  v20 = CGRectGetMaxY(v83) + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 328];
  [v0 bounds];
  Width = CGRectGetWidth(v84);
  v22 = objc_opt_self();
  v23 = [v22 _isInAnimationBlockWithAnimationsEnabled];
  v24 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate];
  if (v23)
  {
    if (v24 != 2)
    {
      if (v24)
      {
        v25 = *&v0[v13];
        *&v0[v13] = 0;

        v26 = 0;
      }

      else
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v15;
        *(v38 + 24) = 0;
        *(v38 + 32) = v20;
        *(v38 + 40) = Width;
        *(v38 + 48) = v19;
        v39 = swift_allocObject();
        *(v39 + 16) = partial apply for closure #2 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews();
        *(v39 + 24) = v38;
        v77 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
        v78 = v39;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = thunk for @escaping @callee_guaranteed () -> ();
        v76 = &block_descriptor_139_0;
        v40 = _Block_copy(&aBlock);
        v41 = v15;

        [v22 performWithoutAnimation:v40];
        _Block_release(v40);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_40;
        }

        [v41 frame];
        MaxY = CGRectGetMaxY(v86);
        v79 = MaxY;
        v26 = partial apply for closure #2 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews();
      }

      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v44 = v24 & 1;
      *(v43 + 16) = v44;
      *(v43 + 24) = v15;
      v45 = v15;
      specialized SyncedLyricsLineView.DespacitoContentView.animate(view:for:completion:)(v45, v44, partial apply for closure #3 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews(), v43);

      swift_unknownObjectWeakDestroy();
      v27 = v26;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v24 == 2 || (v24 & 1) == 0)
  {
LABEL_16:
    v29 = v15;
    [v29 setFrame:{0.0, v20, Width, v19}];
    [v29 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v85.origin.x = v31;
    v85.origin.y = v33;
    v85.size.width = v35;
    v85.size.height = v37;
    MaxY = CGRectGetMaxY(v85);

    v27 = 0;
    v79 = MaxY;
    goto LABEL_20;
  }

  [v15 removeFromSuperview];

  v28 = *&v0[v13];
  *&v0[v13] = 0;

  v27 = 0;
LABEL_20:
  v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
LABEL_21:
  v46 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v47 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v47)
  {
    v71 = v27;
    v48 = v47;
    [v0 bounds];
    [v48 sizeThatFits:{v49, v50}];
    v52 = v51;
    v53 = MaxY + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 296];
    [v0 bounds];
    v54 = CGRectGetWidth(v87);
    v55 = objc_opt_self();
    v56 = [v55 _isInAnimationBlockWithAnimationsEnabled];
    v57 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate];
    if (v56)
    {
      v58 = v72;
      if (v57 != 2)
      {
        if (v57)
        {
          [v48 removeFromSuperview];
          v59 = 0;
LABEL_33:
          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v68 = swift_allocObject();
          *(v68 + 16) = v57 & 1;
          *(v68 + 24) = v67;

          specialized SyncedLyricsLineView.DespacitoContentView.animate(view:for:completion:)(v48, v57 & 1, partial apply for closure #5 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews(), v68);

          v58 = v72;
          goto LABEL_34;
        }

        v62 = swift_allocObject();
        *(v62 + 16) = v48;
        *(v62 + 24) = 0;
        *(v62 + 32) = v53;
        *(v62 + 40) = v54;
        *(v62 + 48) = v52;
        v63 = swift_allocObject();
        *(v63 + 16) = partial apply for closure #4 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews();
        *(v63 + 24) = v62;
        v77 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
        v78 = v63;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = thunk for @escaping @callee_guaranteed () -> ();
        v76 = &block_descriptor_87;
        v64 = _Block_copy(&aBlock);
        v65 = v48;

        [v55 performWithoutAnimation:v64];
        _Block_release(v64);
        v66 = swift_isEscapingClosureAtFileLocation();

        if ((v66 & 1) == 0)
        {
          v89.origin.x = 0.0;
          v89.origin.y = v53;
          v89.size.width = v54;
          v89.size.height = v52;
          v79 = CGRectGetMaxY(v89);
          v59 = partial apply for closure #4 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews();
          goto LABEL_33;
        }

LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      v58 = v72;
      if (v57 != 2 && (v57 & 1) != 0)
      {
        [v48 removeFromSuperview];

        v60 = *&v0[v46];
        *&v0[v46] = 0;

        v59 = 0;
LABEL_34:
        v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
        v27 = v71;
        goto LABEL_35;
      }
    }

    [v48 setFrame:{0.0, v53, v54, v52, v71}];
    v88.origin.x = 0.0;
    v88.origin.y = v53;
    v88.size.width = v54;
    v88.size.height = v52;
    v61 = CGRectGetMaxY(v88);

    v59 = 0;
    v79 = v61;
    goto LABEL_34;
  }

  v59 = 0;
  v58 = v72;
LABEL_35:
  v69 = v0[v58];
  if (v69 != 2 && (v69 & 1) != 0)
  {
    v70 = v27;
    specialized closure #1 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews()(v0, &v79);
    v27 = v70;
  }

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v27);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v59);
}

uint64_t specialized closure #1 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews()(uint64_t result, double *a2)
{
  v2 = *(result + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v2)
  {
    v4 = result;
    v5 = v2;
    [v4 bounds];
    SyncedLyricsLineView.DespacitoContentView.sizeThatFits(_:selected:)(*(*&v4[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), v6, v7);
    v9 = v8;
    swift_beginAccess();
    v10 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v11 = 0.0;
    if (v4[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition])
    {
      v11 = *&v4[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
    }

    v12 = *a2 + v11;
    v13 = v5;
    [v4 bounds];
    [v13 setFrame:{0.0, v12, CGRectGetWidth(v25), v9}];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    MaxY = CGRectGetMaxY(v26);

    result = swift_beginAccess();
    *a2 = MaxY;
    v23 = v4[v10];
    if (v23 != 2 && (v23 & 1) == 0)
    {
      v24 = *&v4[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
      result = swift_beginAccess();
      *a2 = MaxY + v24;
    }
  }

  return result;
}

void closure #5 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews()(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
      *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    }
  }
}

void SyncedLyricsLineView.DespacitoContentView.copy()(char **a1@<X8>)
{
  v77 = a1;
  v74 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  __chkstk_darwin();
  v3 = (&v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v79 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v65 - v5;
  __chkstk_darwin();
  v8 = &v65 - v7;
  __chkstk_darwin();
  v10 = &v65 - v9;
  v84 = &v65 - v9;
  v11 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text + 8];
  v82 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text];
  v70 = v11;
  v12 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  outlined init with copy of Locale.Language?(&v1[v12], v10);
  v13 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8];
  v66 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  v72 = v13;
  v14 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v78 = v8;
  outlined init with copy of Locale.Language?(&v1[v14], v8);
  v15 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  v67 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText];
  v68 = v15;
  v16 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8];
  v80 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v85 = v16;
  v73 = v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  v17 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8];
  v65 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  v83 = v17;
  v18 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  v76 = v6;
  outlined init with copy of Locale.Language?(&v1[v18], v6);
  v75 = v1;
  memcpy(v88, &v1[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
  v81 = type metadata accessor for SyncedLyricsLineView.DespacitoContentView(0);
  v19 = objc_allocWithZone(v81);
  v19[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
  v20 = OBJC_IVAR___MusicDespacitoContentView_language;
  v69 = OBJC_IVAR___MusicDespacitoContentView_language;
  v21 = type metadata accessor for Locale.Language();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v71 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
  v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  *v24 = 0;
  v24[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v21);
  v25 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v25 = 0;
  v25[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
  v26 = v21;
  v27 = v68;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v26);
  v28 = v70;
  v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  *v29 = 0;
  v29[1] = 0;
  v30 = v79;
  outlined init with copy of Locale.Language?(v84, v79);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd) + 48);
  v32 = v82;
  v33 = v3;
  *v3 = v82;
  v3[1] = v28;
  v34 = v3 + v31;
  v35 = v30;
  outlined init with copy of Locale.Language?(v30, v34);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContentView(0));
  swift_bridgeObjectRetain_n();
  outlined init with copy of SyncedLyricsViewController.Specs(v88, v87);

  v36 = v72;

  v37 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v33, v88, 0);
  outlined destroy of TaskPriority?(v35, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  *&v19[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v37;
  memcpy(&v19[OBJC_IVAR___MusicDespacitoContentView_specs], v88, 0x2B0uLL);
  v38 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
  *v38 = v32;
  v38[1] = v28;
  v39 = v69;
  swift_beginAccess();

  outlined init with copy of SyncedLyricsViewController.Specs(v88, v87);
  outlined assign with copy of Locale.Language?(v84, &v19[v39]);
  swift_endAccess();
  v19[v71] = v73;
  v86.receiver = v19;
  v86.super_class = v81;
  v40 = objc_msgSendSuper2(&v86, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = *&v40[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  v42 = v40;
  [v42 addSubview:v41];
  if (v36)
  {
    v43 = v27;
    v44 = String.lowercased()();
    v45 = String.lowercased()();
    if (v44._countAndFlagsBits == v45._countAndFlagsBits && v44._object == v45._object)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
      }

      else
      {
        v47 = v79;
        outlined init with copy of Locale.Language?(v78, v79);
        v48 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
        swift_beginAccess();
        outlined assign with take of Locale.Language?(v47, &v42[v48]);
        swift_endAccess();
        v49 = &v42[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
        *v49 = v66;
        *(v49 + 1) = v36;

        SyncedLyricsLineView.DespacitoContentView.transliterationText.didset();
      }
    }

    v27 = v43;
  }

  if (!v27)
  {

    v52 = v76;
    if (!v83)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (v85)
    {
      v57 = String.lowercased()();
      v58 = String.lowercased()();
      if (v57._countAndFlagsBits == v58._countAndFlagsBits && v57._object == v58._object)
      {

        goto LABEL_27;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        SyncedLyricsLineView.DespacitoContentView.translationBackgroundVocalsText.setter(v65, v83);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  v50 = String.lowercased()();

  v51 = String.lowercased()();
  v52 = v76;
  if (v50._countAndFlagsBits == v51._countAndFlagsBits && v50._object == v51._object)
  {

    goto LABEL_16;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_16:

    if (!v83)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v54 = v79;
  outlined init with copy of Locale.Language?(v52, v79);
  v55 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  outlined assign with take of Locale.Language?(v54, &v42[v55]);
  swift_endAccess();
  v56 = &v42[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v56 = v67;
  *(v56 + 1) = v27;

  SyncedLyricsLineView.DespacitoContentView.translationText.didset();
  if (v83)
  {
    goto LABEL_19;
  }

LABEL_27:
  v60 = &v42[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v61 = v85;
  *v60 = v80;
  *(v60 + 1) = v61;

  SyncedLyricsLineView.DespacitoContentView.backgroundVocalsText.didset();

  outlined destroy of SyncedLyricsViewController.Specs(v88);
  outlined destroy of TaskPriority?(v52, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined destroy of TaskPriority?(v78, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined destroy of TaskPriority?(v84, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v62 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v63 = v75;
  SyncedLyricsLineView.DespacitoContentView.setSelected(_:animated:)(*(*&v75[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), 0);
  SyncedLyricsLineView.DespacitoContentView.alignment.setter(*(*&v63[v62] + OBJC_IVAR___MusicTextContentView_alignment));
  [v63 bounds];
  [v42 setFrame:?];

  v64 = v77;
  v77[3] = v81;
  *v64 = v42;
}

uint64_t @objc SyncedLyricsLineView.TextContentView.copy()(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  __swift_project_boxed_opaque_existential_0Tm(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5;
}

id SyncedLyricsLineView.TextContentView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void type metadata completion function for SyncedLyricsLineView.DespacitoContentView()
{
  type metadata accessor for Locale.Language?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for SyncedLyricsLineView.TextContentView.Content()
{
  type metadata accessor for (String, Locale.Language?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIAction(319, &_sSo18NSAttributedStringCML_0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (String, Locale.Language?)()
{
  if (!lazy cache variable for type metadata for (String, Locale.Language?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Locale.Language?));
    }
  }
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.DespacitoContentView.ViewUpdate and conformance SyncedLyricsLineView.DespacitoContentView.ViewUpdate()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.DespacitoContentView.ViewUpdate and conformance SyncedLyricsLineView.DespacitoContentView.ViewUpdate;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.DespacitoContentView.ViewUpdate and conformance SyncedLyricsLineView.DespacitoContentView.ViewUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.DespacitoContentView.ViewUpdate and conformance SyncedLyricsLineView.DespacitoContentView.ViewUpdate);
  }

  return result;
}

uint64_t protocol witness for SyncedLyricsLineContentView.specs.setter in conformance SyncedLyricsLineView.DespacitoContentView(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicDespacitoContentView_specs), a1, 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(a1, &v5);
  outlined destroy of SyncedLyricsViewController.Specs(__dst);
  SyncedLyricsLineView.DespacitoContentView.specs.didset();
  return outlined destroy of SyncedLyricsViewController.Specs(a1);
}

uint64_t outlined init with copy of Locale.Language?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SyncedLyricsLineView.TextContentView.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SyncedLyricsLineView.TextContentView.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SyncedLyricsLineView.TextContentView.Content(uint64_t a1)
{
  v2 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = _sSo21NSAttributedStringKeyaABSHSCWL_1;
  if (!_sSo21NSAttributedStringKeyaABSHSCWL_1)
  {
    _sSo21NSAttributedStringKeyaMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo21NSAttributedStringKeyaABSHSCWL_1);
  }

  return result;
}

char *specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a3;
  v6 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v3[OBJC_IVAR___MusicTextContentView_isSelected] = 0;
  *&v3[OBJC_IVAR___MusicTextContentView_alignment] = 0;
  v3[OBJC_IVAR___MusicTextContentView_isScrolling] = 1;
  v12 = OBJC_IVAR___MusicTextContentView_label;
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setAdjustsFontForContentSizeCategory:1];
  [v13 setLineBreakStrategy:3];
  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:4];
  [v13 setAutoresizingMask:18];
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR___MusicTextContentView_selectedLabel] = 0;
  v14 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  *&v3[OBJC_IVAR___MusicTextContentView_textColorOverride] = 0;
  outlined init with copy of SyncedLyricsLineView.TextContentView.Content(a1, &v3[OBJC_IVAR___MusicTextContentView_content]);
  memcpy(&v3[OBJC_IVAR___MusicTextContentView_specs], a2, 0x2B0uLL);
  v15 = v27;
  *&v3[v14] = v27;
  outlined init with copy of SyncedLyricsViewController.Specs(a2, &v29);
  v16 = type metadata accessor for SyncedLyricsLineView.TextContentView(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:));
  (*(v7 + 56))(v11, 1, 1, v6);
  v20 = v18;
  SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v19);
  v21 = a1;

  outlined destroy of TaskPriority?(v11, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  outlined init with copy of SyncedLyricsLineView.TextContentView.Content(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v9);
    p_cache = (&OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line + 16);
  }

  else
  {

    v23 = *&v20[OBJC_IVAR___MusicTextContentView_label];
    if (*(a2 + 88))
    {
      v24 = 4;
    }

    else
    {
      v24 = *(a2 + 80);
    }

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd) + 48);
    [v23 setTextAlignment:v24];
    outlined destroy of TaskPriority?(&v9[v25], &_s10Foundation6LocaleV8LanguageVSgMd_0);
    p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
  }

  [v20 addSubview:{*(p_cache[248] + v20), v27}];

  outlined destroy of SyncedLyricsLineView.TextContentView.Content(v21);
  return v20;
}

uint64_t outlined assign with copy of Locale.Language?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Locale.Language?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100484E78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100484EB0()
{

  return swift_deallocObject();
}

void specialized SyncedLyricsLineView.TextContentView.init(coder:)()
{
  *(v0 + OBJC_IVAR___MusicTextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_alignment) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_isScrolling) = 1;
  v1 = OBJC_IVAR___MusicTextContentView_label;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setLineBreakStrategy:3];
  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:4];
  [v2 setAutoresizingMask:18];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___MusicTextContentView_selectedLabel) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_textColorOverride) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized SyncedLyricsLineView.DespacitoContentView.init(coder:)()
{
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_isScrolling) = 1;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView) = 0;
  v1 = OBJC_IVAR___MusicDespacitoContentView_language;
  v2 = type metadata accessor for Locale.Language();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition) = 2;
  v4 = (v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLanguage, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationText);
  *v7 = 0;
  v7[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized SyncedLyricsLineView.DespacitoContentView.animate(view:for:completion:)(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v36 = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
    v37 = v8;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_145_1;
    v9 = _Block_copy(&v32);
    v10 = a1;

    [(objc_class *)v7.super.isa addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v36 = partial apply for closure #2 in ActionMenuView.body.getter;
    v37 = v11;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    v35 = &block_descriptor_151_0;
    v12 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v12];
    _Block_release(v12);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v36 = partial apply for closure #5 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
    v37 = v14;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_157;
    v15 = _Block_copy(&v32);
    v16 = v10;

    [v13 addAnimations:v15];
    _Block_release(v15);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];
LABEL_5:

    return;
  }

  [a1 alpha];
  v18 = v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in SyncedLyricsLineView.DespacitoContentView.animate(view:for:completion:);
  *(v21 + 24) = v20;
  v36 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v37 = v21;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_167_1;
  v22 = _Block_copy(&v32);
  v23 = a1;

  [v19 performWithoutAnimation:v22];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v36 = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
    v37 = v24;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_173_0;
    v25 = _Block_copy(&v32);
    v26 = v23;

    [(objc_class *)v7.super.isa addAnimations:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v36 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
    v37 = v27;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    v35 = &block_descriptor_179;
    v28 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v28];
    _Block_release(v28);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    v36 = partial apply for closure #4 in SyncedLyricsLineView.DespacitoContentView.animate(view:for:completion:);
    v37 = v29;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = thunk for @escaping @callee_guaranteed () -> ();
    v35 = &block_descriptor_185;
    v30 = _Block_copy(&v32);
    v31 = v26;

    [v13 addAnimations:v30];
    _Block_release(v30);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_10048587C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004858DC()
{

  return swift_deallocObject();
}

id partial apply for closure #3 in SyncedLyricsLineView.DespacitoContentView.layoutSubviews()()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t sub_100485950()
{

  return swift_deallocObject();
}

uint64_t sub_100485990()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of Locale.Language?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id partial apply for closure #1 in SyncedLyricsLineView.TextContentView.setSelected(_:animated:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0 - v2];
  result = *(v1 + OBJC_IVAR___MusicTextContentView_selectedLabel);
  if (result)
  {

    return [result setAlpha:v2];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.TextContentView.Change and conformance SyncedLyricsLineView.TextContentView.Change()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.TextContentView.Change and conformance SyncedLyricsLineView.TextContentView.Change;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.TextContentView.Change and conformance SyncedLyricsLineView.TextContentView.Change)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.TextContentView.Change and conformance SyncedLyricsLineView.TextContentView.Change);
  }

  return result;
}

uint64_t SyncedLyricsLineView.line.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return outlined init with copy of ActionPerforming(v1 + v3, a1);
}

Swift::Void __swiftcall SyncedLyricsLineView.updateAnchorPoint()()
{
  v1 = UIView.untransformedFrame.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  if (v8 == 2)
  {
    v9 = CGPoint.centerRight.unsafeMutableAddressor();
  }

  else if (v8)
  {
    v9 = CGPoint.center.unsafeMutableAddressor();
  }

  else
  {
    v9 = CGPoint.centerLeft.unsafeMutableAddressor();
  }

  v10 = v9;
  swift_beginAccess();
  [v0 setAnchorPoint:{*v10, v10[1]}];
  UIView.untransformedFrame.setter(v1, v3, v5, v7);
}

void SyncedLyricsLineView.contentView.didset(void *a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] addSubview:v4];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_2);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F3040;
  v7 = [v4 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v4 topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v4 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

void (*SyncedLyricsLineView.contentView.modify(uint64_t a1))(__int128 *a1, char a2)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return SyncedLyricsLineView.contentView.modify;
}

void SyncedLyricsLineView.contentView.modify(__int128 *a1, char a2)
{
  v3 = (*(a1 + 2) + *(a1 + 3));
  v8 = *v3;
  v4 = *a1;
  *v3 = *a1;
  v5 = v4;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    SyncedLyricsLineView.contentView.didset(v8);
  }

  else
  {
    SyncedLyricsLineView.contentView.didset(v8);
  }
}

id SyncedLyricsLineView.backgroundView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = closure #1 in SyncedLyricsLineView.backgroundView.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in SyncedLyricsLineView.backgroundView.getter(char *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = &a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
  [v2 setBackgroundColor:*&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 568]];
  [v2 setAlpha:0.0];
  v4 = [v2 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  v5 = [v2 layer];
  [v5 setCornerRadius:v3[72]];

  [a1 insertSubview:v2 atIndex:0];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_2);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F3040;
  v8 = [v2 leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-v3[73]];

  *(v7 + 32) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:v3[73]];

  *(v7 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [a1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-v3[73]];

  *(v7 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [a1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v3[73]];

  *(v7 + 56) = v19;
  type metadata accessor for UIAction(0, &_sSo18NSLayoutConstraintCML_1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  return v2;
}

id SyncedLyricsLineView.isHighlighted.didset(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result == v2)
  {
    return result;
  }

  v4 = SyncedLyricsLineView.backgroundView.getter();
  if ([v1 isHighlighted])
  {
    v5 = &v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    *v5 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius];
    v5[8] = 0;
    v6 = 0.0;
LABEL_6:
    SyncedLyricsLineView.setBlurRadius(_:animated:)(1, v6);
    goto LABEL_7;
  }

  if ((v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius + 8] & 1) == 0)
  {
    v6 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    goto LABEL_6;
  }

LABEL_7:
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  v9 = v4;
  v10 = v1;
  v11 = v9;
  v12 = [v10 isHighlighted];
  v13 = objc_allocWithZone(UISpringTimingParameters);
  if (v12)
  {
    v14 = 24.0;
  }

  else
  {
    v14 = 50.0;
  }

  v15 = 322.0;
  if (!v12)
  {
    v15 = 300.0;
  }

  v16 = 2.0;
  if (v12)
  {
    v16 = 1.0;
    v17 = 0.0;
  }

  else
  {
    v17 = 0.1;
  }

  if (v12)
  {
    v18 = 0.2;
  }

  else
  {
    v18 = 0.3;
  }

  v19 = [v13 initWithMass:v16 stiffness:v15 damping:v14 initialVelocity:{0.0, 0.0}];
  v20 = specialized static SyncedLyricsViewController.Specs.highlightAnimationFactory(highlighted:)(v12);
  v21 = objc_opt_self();
  v36 = partial apply for closure #1 in SyncedLyricsLineView.isHighlighted.didset;
  v37 = v7;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_77_0;
  v22 = _Block_copy(&v32);
  swift_unknownObjectRetain();

  [v21 _animateWithDuration:0 delay:v20 options:v22 factory:0 animations:v18 completion:v17];
  _Block_release(v22);
  swift_unknownObjectRelease();
  [v19 settlingDuration];
  v24 = v23;
  [v19 mass];
  v26 = v25;
  [v19 stiffness];
  v28 = v27;
  [v19 damping];
  v30 = v29;
  v36 = partial apply for closure #2 in SyncedLyricsLineView.isHighlighted.didset;
  v37 = v8;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = thunk for @escaping @callee_guaranteed () -> ();
  v35 = &block_descriptor_80_0;
  v31 = _Block_copy(&v32);

  [v21 _animateUsingSpringWithDuration:0 delay:v31 options:0 mass:v24 stiffness:v17 damping:v26 initialVelocity:v28 animations:v30 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v31);
}

void closure #1 in SyncedLyricsLineView.isHighlighted.didset(void *a1, char *a2)
{
  v4 = [a2 isHighlighted];
  v5 = 0.0;
  v6 = 1.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [a1 setAlpha:v5];
  v7 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  if ([a2 isHighlighted])
  {
    v6 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 560];
  }

  [v7 setAlpha:v6];
}

id closure #2 in SyncedLyricsLineView.isHighlighted.didset(char *a1, void *a2)
{
  if ([a1 isHighlighted])
  {
    v4 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 512];
    v5 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 520];
    v6 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 528];
    v7 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 536];
    v8 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 544];
    v9 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 552];
  }

  else
  {
    v5 = 0;
    v4 = 1.0;
    v6 = 0;
    v7 = 1.0;
    v8 = 0;
    v9 = 0;
  }

  v10 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  [v10 setTransform:&v12];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  return [a2 setTransform:&v12];
}

Swift::Void __swiftcall SyncedLyricsLineView.reset()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v17[0] = v3;
    (*(v4 + 80))(ObjectType, v4);
  }

  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
  *(v1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v8 = SyncedLyricsLineView.contentView.modify(v17);
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v1 + v6);
    v11 = *(v7 + 8);
    v12 = v7;
    v13 = swift_getObjectType();
    v14 = *(v11 + 40);
    v15 = v9;
    v14(v10, v13, v11);
    v16 = *v12;
    *v12 = v9;
    *(v12 + 8) = v11;
  }

  v8(v17, 0);
  v18.value.super.isa = 0;
  SyncedLyricsLineView.setSelected(_:animator:)(0, v18);
}

Swift::Void __swiftcall SyncedLyricsLineView.setSelected(_:animator:)(Swift::Bool _, UIViewPropertyAnimator_optional animator)
{
  isa = animator.value.super.isa;
  if ([v2 isSelected] != _)
  {
    if (_ && v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] == 1)
    {
      SyncedLyricsLineView.setFocused(_:animated:)(0, isa != 0);
    }

    v5 = _;
    [v2 setSelected:_];
    if ([v2 isHighlighted])
    {
      [v2 setHighlighted:0];
      [v2 cancelTrackingWithEvent:0];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v8 = closure #1 in SyncedLyricsLineView.setSelected(_:animator:)partial apply;
      if (!isa)
      {
LABEL_7:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          if (_)
          {
            v29 = xmmword_100507B70;
            v28 = xmmword_1005079C0;
            v11 = 0;
            v12 = 0;
          }

          else
          {
            v28 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400);
            v29 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416);
            v11 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432);
            v12 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 440);
          }

          v31 = v29;
          aBlock = v28;
          v32 = v11;
          v33 = v12;
          [v10 setTransform:&aBlock];
        }

        v22 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        v23 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (v23)
        {
          v24 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          *&aBlock = v23;
          v26 = *(v24 + 88);
          v27 = v23;
          v26(_, 0, ObjectType, v24);
        }

LABEL_18:

        return;
      }
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 24) = v5;
      v8 = partial apply for closure #1 in SyncedLyricsLineView.setSelected(_:animator:);
      if (!isa)
      {
        goto LABEL_7;
      }
    }

    v32 = v8;
    v33 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v31 + 1) = &block_descriptor_63_3;
    v14 = _Block_copy(&aBlock);
    v15 = isa;

    [(objc_class *)v15 addAnimations:v14];
    _Block_release(v14);
    v16 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v17 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v17)
    {
      v18 = *(v16 + 1);
      v19 = swift_getObjectType();
      *&aBlock = v17;
      v20 = *(v18 + 88);
      v21 = v17;
      v20(_, 1, v19, v18);

      return;
    }

    goto LABEL_18;
  }
}

void closure #1 in SyncedLyricsLineView.setSelected(_:animator:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = xmmword_100507B70;
      v5 = xmmword_1005079C0;
      v6 = 0uLL;
    }

    else
    {
      v5 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
      v4 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
      v6 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
    }

    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v6;
    v7 = Strong;
    [Strong setTransform:v8];
  }
}

void SyncedLyricsLineView.setBlurRadius(_:animated:)(char a1, double a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius;
  if (*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] != a2)
  {
    v36 = v5;
    v7 = [v5 timingParameters];
    if (v7)
    {
      v8 = [v7 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = String._bridgeToObjectiveC()();
        v10 = [objc_opt_self() animationWithKeyPath:v9];

        v11 = v10;
        v12 = 0.0;
        if (a1)
        {
          [v36 duration];
        }

        [v11 setDuration:v12];
        [v11 setFillMode:kCAFillModeBoth];
        isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v11 setFromValue:isa];

        v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v11 setToValue:v14];

        [v11 setRemovedOnCompletion:0];
        [v8 controlPoint1];
        v16 = v15;
        [v8 controlPoint1];
        v18 = v17;
        [v8 controlPoint2];
        v20 = v19;
        [v8 controlPoint2];
        v22 = v21;
        v23 = objc_allocWithZone(CAMediaTimingFunction);
        *&v24 = v16;
        *&v25 = v18;
        *&v26 = v20;
        *&v27 = v22;
        v28 = [v23 initWithControlPoints:v24 :v25 :v26 :v27];
        [v11 setTimingFunction:v28];

        v29 = [v2 layer];
        [v29 setShouldRasterize:0];

        v30 = objc_opt_self();
        [v30 begin];
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        aBlock[4] = partial apply for closure #1 in SyncedLyricsLineView.setBlurRadius(_:animated:);
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_54_1;
        v32 = _Block_copy(aBlock);
        v33 = v2;

        [v30 setCompletionBlock:v32];
        _Block_release(v32);
        v34 = [v33 layer];
        v35 = String._bridgeToObjectiveC()();
        [v34 addAnimation:v11 forKey:v35];

        [v30 commit];
        *&v2[v6] = a2;
        return;
      }
    }

    v5 = v36;
  }
}

Swift::Void __swiftcall SyncedLyricsLineView.setFocused(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if ([v2 isSelected])
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter])
  {
    v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v6 setValue:isa forKey:kCAFilterInputAmount];

    v8 = [v2 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004F2EF0;
    v10 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
    v11 = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1);
    *(v9 + 32) = v10;
    *(v9 + 88) = v11;
    *(v9 + 56) = v11;
    *(v9 + 64) = v6;
    v12 = v10;
    v13 = v6;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    [v8 setFilters:v14];

    v15 = *&v2[v5];
    *&v2[v5] = v13;
  }

  v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused;
  if (v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] != _)
  {
    v51 = v16;
    v18 = [v16 timingParameters];
    if (v18)
    {
      v19 = [v18 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = String._bridgeToObjectiveC()();
        v21 = [objc_opt_self() animationWithKeyPath:v20];

        v22 = v21;
        v23 = 0.0;
        if (animated)
        {
          [v51 duration];
        }

        [v22 setDuration:{v23, "previousBlurRadius"}];
        [v22 setFillMode:kCAFillModeBoth];
        v24 = v2[v17];
        v53 = &type metadata for Int;
        aBlock[0] = v24;
        __swift_project_boxed_opaque_existential_0Tm(aBlock, &type metadata for Int);
        v25 = _bridgeAnythingToObjectiveC<A>(_:)();
        __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
        [v22 setFromValue:v25];
        swift_unknownObjectRelease();
        v53 = &type metadata for Int;
        aBlock[0] = _;
        __swift_project_boxed_opaque_existential_0Tm(aBlock, &type metadata for Int);
        v26 = _bridgeAnythingToObjectiveC<A>(_:)();
        __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
        [v22 setToValue:v26];
        swift_unknownObjectRelease();
        [v19 controlPoint1];
        v28 = v27;
        [v19 controlPoint1];
        v30 = v29;
        [v19 controlPoint2];
        v32 = v31;
        [v19 controlPoint2];
        v34 = v33;
        v35 = objc_allocWithZone(CAMediaTimingFunction);
        *&v36 = v28;
        *&v37 = v30;
        *&v38 = v32;
        *&v39 = v34;
        v40 = [v35 initWithControlPoints:v36 :v37 :v38 :v39];
        [v22 setTimingFunction:v40];

        v41 = [v2 layer];
        [v41 setShouldRasterize:0];

        v42 = objc_opt_self();
        [v42 begin];
        v43 = swift_allocObject();
        *(v43 + 16) = v2;
        v54 = partial apply for closure #1 in SyncedLyricsLineView.setFocused(_:animated:);
        v55 = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        v53 = &block_descriptor_88;
        v44 = _Block_copy(aBlock);
        v45 = v2;

        [v42 setCompletionBlock:v44];
        _Block_release(v44);
        v46 = [v45 layer];
        v47 = String._bridgeToObjectiveC()();
        [v46 addAnimation:v22 forKey:v47];

        [v42 commit];
        v48 = [v45 layer];
        v49 = [v22 toValue];
        v50 = String._bridgeToObjectiveC()();
        [v48 setValue:v49 forKeyPath:v50];

        swift_unknownObjectRelease();
        v2[v17] = _;
        return;
      }
    }

    v16 = v51;
  }
}

void closure #1 in SyncedLyricsLineView.setBlurRadius(_:animated:)(void *a1)
{
  v1 = [a1 layer];
  [v1 setShouldRasterize:1];
}

void SyncedLyricsLineView.updateContentView()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
  __chkstk_darwin();
  v680 = &v627 - v1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v678 = &v627 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v693 = type metadata accessor for String.LocalizationValue();
  v697 = *(v693 - 1);
  __chkstk_darwin();
  v692 = &v627 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v627 - v4;
  v690 = type metadata accessor for SyncedLyricsLineView.TextContentView.Content(0);
  v679 = *(v690 - 1);
  __chkstk_darwin();
  v660 = (&v627 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v689 = (&v627 - v7);
  v695 = type metadata accessor for Lyrics.Translation.Line(0);
  v696 = *(v695 - 1);
  __chkstk_darwin();
  *&v691 = &v627 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationV4LineVSgMd);
  __chkstk_darwin();
  v676 = &v627 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v661 = &v627 - v10;
  __chkstk_darwin();
  v675 = &v627 - v11;
  __chkstk_darwin();
  v667 = &v627 - v12;
  __chkstk_darwin();
  v639 = &v627 - v13;
  __chkstk_darwin();
  v666 = &v627 - v14;
  __chkstk_darwin();
  v655 = (&v627 - v15);
  __chkstk_darwin();
  v654 = &v627 - v16;
  __chkstk_darwin();
  v653 = &v627 - v17;
  __chkstk_darwin();
  v648 = &v627 - v18;
  __chkstk_darwin();
  v652 = &v627 - v19;
  __chkstk_darwin();
  v645 = &v627 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v674 = &v627 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v627 - v22;
  __chkstk_darwin();
  v665 = &v627 - v24;
  __chkstk_darwin();
  v26 = &v627 - v25;
  __chkstk_darwin();
  v644 = &v627 - v27;
  __chkstk_darwin();
  v643 = &v627 - v28;
  __chkstk_darwin();
  v642 = &v627 - v29;
  __chkstk_darwin();
  v641 = &v627 - v30;
  __chkstk_darwin();
  v659 = &v627 - v31;
  __chkstk_darwin();
  v658 = (&v627 - v32);
  __chkstk_darwin();
  v657 = &v627 - v33;
  __chkstk_darwin();
  v656 = &v627 - v34;
  __chkstk_darwin();
  v685 = (&v627 - v35);
  __chkstk_darwin();
  v631 = &v627 - v36;
  __chkstk_darwin();
  v630 = &v627 - v37;
  __chkstk_darwin();
  v629 = &v627 - v38;
  __chkstk_darwin();
  v628 = &v627 - v39;
  __chkstk_darwin();
  v635 = &v627 - v40;
  __chkstk_darwin();
  v634 = &v627 - v41;
  __chkstk_darwin();
  v633 = &v627 - v42;
  __chkstk_darwin();
  v632 = &v627 - v43;
  __chkstk_darwin();
  v651 = &v627 - v44;
  __chkstk_darwin();
  v650 = &v627 - v45;
  __chkstk_darwin();
  v649 = &v627 - v46;
  __chkstk_darwin();
  v647 = &v627 - v47;
  __chkstk_darwin();
  v646 = &v627 - v48;
  __chkstk_darwin();
  v673 = &v627 - v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0);
  __chkstk_darwin();
  v688 = &v627 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v687 = (&v627 - v51);
  __chkstk_darwin();
  v694 = &v627 - v52;
  __chkstk_darwin();
  v683 = (&v627 - v53);
  __chkstk_darwin();
  v682 = &v627 - v54;
  __chkstk_darwin();
  v686 = (&v627 - v55);
  __chkstk_darwin();
  v663 = &v627 - v56;
  __chkstk_darwin();
  v662 = &v627 - v57;
  __chkstk_darwin();
  v669 = &v627 - v58;
  __chkstk_darwin();
  v671 = &v627 - v59;
  __chkstk_darwin();
  v670 = &v627 - v60;
  __chkstk_darwin();
  v681 = &v627 - v61;
  __chkstk_darwin();
  v677 = &v627 - v62;
  __chkstk_darwin();
  v684 = &v627 - v63;
  __chkstk_darwin();
  v636 = &v627 - v64;
  __chkstk_darwin();
  v638 = &v627 - v65;
  __chkstk_darwin();
  v637 = &v627 - v66;
  __chkstk_darwin();
  v640 = &v627 - v67;
  __chkstk_darwin();
  v698 = &v627 - v68;
  __chkstk_darwin();
  v664 = &v627 - v69;
  __chkstk_darwin();
  v672 = &v627 - v70;
  __chkstk_darwin();
  v668 = &v627 - v71;
  v72 = type metadata accessor for Lyrics.TextLine(0);
  v699 = *(v72 - 1);
  __chkstk_darwin();
  v74 = &v627 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v627 - v75;
  __chkstk_darwin();
  v78 = &v627 - v77;
  SyncedLyricsLineView.updateAnchorPoint()();
  v79 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  v700 = v0;
  outlined init with copy of ActionPerforming(&v0[v79], v709);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v696 = v726;
      v699 = [objc_allocWithZone(NSMutableAttributedString) init];
      v89 = v5;
      String.LocalizationValue.init(stringLiteral:)();
      v90 = v697;
      v91 = v5;
      v92 = v693;
      v695 = v697[2];
      v695(v692, v91, v693);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v93 = static NSBundle.module;
      v94 = static NSBundle.module;
      v687 = v93;
      v95 = v94;
      static Locale.current.getter();
      v96 = v95;
      v698 = String.init(localized:table:bundle:locale:comment:)();
      v97 = *(v90 + 8);
      v697 = (v90 + 8);
      v686 = v97;
      (v97)(v89, v92);
      v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
      v98 = swift_allocObject();
      v691 = xmmword_1004F2400;
      *(v98 + 16) = xmmword_1004F2400;
      *(v98 + 32) = NSFontAttributeName;
      v99 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
      v100 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 232];
      v688 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
      *(v98 + 64) = v688;
      *(v98 + 40) = v100;
      v685 = NSFontAttributeName;
      v101 = v100;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(v98);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v98 + 32, &_sSo21NSAttributedStringKeya_yptMd_0);
      swift_deallocClassInstance();
      v102 = objc_allocWithZone(NSAttributedString);
      v103 = String._bridgeToObjectiveC()();

      _sSo21NSAttributedStringKeyaMa_1(0);
      v684 = v104;
      v683 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v106 = [v102 initWithString:v103 attributes:isa];

      v107 = v699;
      v698 = v106;
      [v699 appendAttributedString:v106];
      *&v728[0] = v696;
      String.LocalizationValue.init(stringLiteral:)();
      v108 = v693;
      v695(v692, v89, v693);
      static Locale.current.getter();
      v109 = v99;
      String.init(localized:table:bundle:locale:comment:)();
      (v686)(v89, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_2);
      _sSaySSGSayxGSKsWl_2();
      BidirectionalCollection<>.joined(separator:)();

      v110 = swift_allocObject();
      *(v110 + 16) = v691;
      *(v110 + 32) = v685;
      v111 = *(v99 + 30);
      *(v110 + 64) = v688;
      *(v110 + 40) = v111;
      v112 = v111;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(v110);
      swift_setDeallocating();
      outlined destroy of TaskPriority?(v110 + 32, &_sSo21NSAttributedStringKeya_yptMd_0);
      swift_deallocClassInstance();
      v113 = objc_allocWithZone(NSAttributedString);
      v114 = String._bridgeToObjectiveC()();

      v115 = Dictionary._bridgeToObjectiveC()().super.isa;

      v116 = [v113 initWithString:v114 attributes:v115];

      [v107 appendAttributedString:v116];
      v117 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      v118 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v118 && (type metadata accessor for SyncedLyricsLineView.TextContentView(0), (v119 = swift_dynamicCastClass()) != 0))
      {
        v120 = v119;
        v121 = v689;
        *v689 = v107;
        v696 = v109;
        v122 = v690;
        swift_storeEnumTagMultiPayload();
        v123 = OBJC_IVAR___MusicTextContentView_content;
        swift_beginAccess();
        v697 = v116;
        v124 = v660;
        outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v120 + v123, v660, type metadata accessor for SyncedLyricsLineView.TextContentView.Content);
        swift_beginAccess();
        v125 = v107;
        v695 = v118;
        outlined assign with copy of SyncedLyricsLineView.TextContentView.Content(v121, v120 + v123);
        swift_endAccess();
        v126 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #0 of SyncedLyricsLineView.updateContentView());
        v127 = v680;
        outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v124, v680, type metadata accessor for SyncedLyricsLineView.TextContentView.Content);
        v128 = v679[7];
        v128(v127, 0, 1, v122);
        SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v126);

        outlined destroy of TaskPriority?(v127, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
        v129 = v124;
        v116 = v697;
        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v129, type metadata accessor for SyncedLyricsLineView.TextContentView.Content);
        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v121, type metadata accessor for SyncedLyricsLineView.TextContentView.Content);
        v130 = *(v696 + 96);
        if (*(v696 + 104))
        {
          v130 = 4;
        }

        *(v120 + OBJC_IVAR___MusicTextContentView_alignment) = v130;
        v131 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #1 of SyncedLyricsLineView.updateContentView());
        v128(v127, 1, 1, v122);
        v107 = v699;
        SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v131);

        outlined destroy of TaskPriority?(v127, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
        v132 = v700;
      }

      else
      {
        memcpy(v728, v109, 0x2B0uLL);
        v138 = v689;
        v139 = v690;
        *v689 = v107;
        swift_storeEnumTagMultiPayload();
        v140 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContentView(0));
        v141 = v107;
        outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
        v142 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v138, v728, 0);
        outlined destroy of SyncedLyricsViewController.Specs(v728);
        v143 = v109[12];
        if (*(v109 + 104))
        {
          v143 = 4;
        }

        *&v142[OBJC_IVAR___MusicTextContentView_alignment] = v143;
        v144 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC011TextContentH0C6Change33_328E32CB8485E005C40C2FB54DA07A72LLO_Tt0g5Tf4g_n(&outlined read-only object #2 of SyncedLyricsLineView.updateContentView());
        v145 = v680;
        (v679[7])(v680, 1, 1, v139);
        SyncedLyricsLineView.TextContentView.updateLabel(changes:oldContent:)(v144);

        outlined destroy of TaskPriority?(v145, &_s7LyricsX06SyncedA8LineViewC011TextContentD0C0F033_328E32CB8485E005C40C2FB54DA07A72LLOSgMd);
        v146 = *v117;
        *v117 = v142;
        *(v117 + 1) = &protocol witness table for SyncedLyricsLineView.TextContentView;
        v147 = v142;
        v132 = v700;
        SyncedLyricsLineView.contentView.didset(v146);
      }

      [v132 setEnabled:0];

      goto LABEL_300;
    }

    if (!swift_dynamicCast())
    {
LABEL_300:
      __swift_destroy_boxed_opaque_existential_0Tm(v709);
      return;
    }

    v133 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    v134 = v700;
    v135 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v136 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs])
    {
      *v135 = 0;
      v135[1] = 0;
      SyncedLyricsLineView.contentView.didset(v136);
LABEL_271:

      [v134 setEnabled:1];
      goto LABEL_300;
    }

    v206 = v723[0];
    v207 = *&v723[1];
    v208 = v724;
    v209 = v725;
    if (v136)
    {
      type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
      v210 = swift_dynamicCastClass();
      if (v210)
      {
        v211 = v210;
        v212 = v210 + OBJC_IVAR___MusicInstrumentalContentView_line;
        *v212 = v206;
        *(v212 + 8) = v207;
        *(v212 + 16) = v208;
        *(v212 + 24) = v209;
        *(v210 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
        v136 = v136;
        SyncedLyricsLineView.InstrumentalContentView.reset()();
        v134 = v700;
        v213 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
        v214 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
        v215 = *&v211[OBJC_IVAR___MusicInstrumentalContentView_alignment];
        *&v211[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v213;
        if (v213 == v215)
        {
          goto LABEL_271;
        }

        v216 = OBJC_IVAR___MusicInstrumentalContentView_dots;
        swift_beginAccess();
        v217 = *&v211[v216];
        if (v217 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_58:
            v218 = &v211[OBJC_IVAR___MusicInstrumentalContentView_specs];
            v219 = *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
            v220 = v219 * *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v211[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
            v221 = Int.seconds.getter(0);
            v222 = *&v211[v214];
            if (v222 == 1)
            {
              [v211 bounds];
              v223 = (CGRectGetWidth(v732) - v220) * 0.5;
            }

            else
            {
              v223 = v221;
              if (v222 == 2)
              {
                [v211 bounds];
                v223 = CGRectGetWidth(v729) - v220;
              }
            }

            v592 = *&v211[v216];
            if (v592 >> 62)
            {
              v593 = _CocoaArrayWrapper.endIndex.getter();
              if (v593)
              {
LABEL_283:
                if (v593 >= 1)
                {

                  v594 = 0;
                  do
                  {
                    if ((v592 & 0xC000000000000001) != 0)
                    {
                      v595 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v595 = *(v592 + 8 * v594 + 32);
                    }

                    v596 = v595;
                    ++v594;
                    [v211 bounds];
                    UIView.untransformedFrame.setter(v223, v597 * 0.5 - v219 * 0.5, v219, v219);

                    v223 = v223 + v219 + v218[77];
                  }

                  while (v593 != v594);

                  v134 = v700;
                  goto LABEL_271;
                }

LABEL_310:
                __break(1u);
                goto LABEL_311;
              }
            }

            else
            {
              v593 = *((v592 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v593)
              {
                goto LABEL_283;
              }
            }

            v134 = v700;
            goto LABEL_271;
          }
        }

        else if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        SyncedLyricsLineView.InstrumentalContentView.createDots()();
        goto LABEL_58;
      }
    }

    v272 = v700;
    memcpy(v728, &v700[v133], 0x2B0uLL);
    objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.InstrumentalContentView());
    outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
    v273 = SyncedLyricsLineView.InstrumentalContentView.init(line:specs:)(v206, v209, v728, v207, v208);
    v274 = *&v272[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
    v275 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
    v276 = *&v273[OBJC_IVAR___MusicInstrumentalContentView_alignment];
    *&v273[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v274;
    if (v274 == v276)
    {
      goto LABEL_270;
    }

    v277 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v278 = *&v273[v277];
    if (v278 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_90;
      }
    }

    else if (*((v278 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_90:
      v279 = &v273[OBJC_IVAR___MusicInstrumentalContentView_specs];
      v280 = *&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
      v281 = v280 * *&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v273[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
      v282 = Int.seconds.getter(0);
      v283 = *&v273[v275];
      if (v283 == 1)
      {
        [v273 bounds];
        v284 = (CGRectGetWidth(v731) - v281) * 0.5;
      }

      else
      {
        v284 = v282;
        if (v283 == 2)
        {
          [v273 bounds];
          v284 = CGRectGetWidth(v730) - v281;
        }
      }

      v572 = *&v273[v277];
      if (v572 >> 62)
      {
        v573 = _CocoaArrayWrapper.endIndex.getter();
        if (!v573)
        {
          goto LABEL_270;
        }
      }

      else
      {
        v573 = *((v572 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v573)
        {
          goto LABEL_270;
        }
      }

      if (v573 < 1)
      {
        __break(1u);
        goto LABEL_310;
      }

      v574 = 0;
      do
      {
        if ((v572 & 0xC000000000000001) != 0)
        {
          v575 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v575 = *(v572 + 8 * v574 + 32);
        }

        v576 = v575;
        ++v574;
        [v273 bounds];
        UIView.untransformedFrame.setter(v284, v577 * 0.5 - v280 * 0.5, v280, v280);

        v284 = v284 + v280 + v279[77];
      }

      while (v573 != v574);

LABEL_270:
      v136 = *v135;
      *v135 = v273;
      v135[1] = &protocol witness table for SyncedLyricsLineView.InstrumentalContentView;
      v578 = v273;
      v134 = v700;
      SyncedLyricsLineView.contentView.didset(v136);

      goto LABEL_271;
    }

    SyncedLyricsLineView.InstrumentalContentView.createDots()();
    goto LABEL_90;
  }

  v80 = outlined init with take of Lyrics.TextLine(v78, v76);
  v81 = &v76[v72[18]];
  v82 = *v81;
  v680 = *(v81 + 1);
  v83 = (v82)(v710, v80);
  v679 = v82;
  if (!v710[3])
  {
    v137 = 2;
LABEL_26:
    LODWORD(v692) = v137;
    goto LABEL_27;
  }

  v84 = *v710;
  v85 = outlined destroy of TaskPriority?(v710, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
  v86 = (*&v76[v72[17]])(v85);
  if (!*(v86 + 16))
  {

    v137 = 2;
    goto LABEL_26;
  }

  v87 = *(v86 + 64);

  if (!*(v87 + 16))
  {

    if (v84 < 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  v88 = *(v87 + 32);

  if (v84 >= v88)
  {
LABEL_25:
    v137 = 1;
    goto LABEL_26;
  }

LABEL_6:
  LODWORD(v692) = 0;
LABEL_27:
  v693 = v72;
  v148 = v72[17];
  v697 = v76;
  v149 = &v76[v148];
  v150 = *v149;
  v151 = *((*v149)(v83) + 16);

  if (!v151 || (v153 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs, (v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] & 1) != 0))
  {
    v154 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v155 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v156 = v700;
    if (v155)
    {
      type metadata accessor for SyncedLyricsLineView.DespacitoContentView(0);
      v152 = swift_dynamicCastClass();
      if (v152)
      {
        v157 = v152;
        v158 = v693;
        v159 = v697;
        v160 = *(v697 + v693[16]);
        v690 = v155;
        v694 = v160();
        v689 = v161;
        outlined init with copy of TaskPriority?(v159 + v158[7], v686, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v162 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
        swift_beginAccess();
        outlined init with copy of TaskPriority?(&v156[v162], v26, &_s7LyricsX0A0C8TextLineVSgMd);
        v163 = v699[6];
        if (v163(v26, 1, v158))
        {
          outlined destroy of TaskPriority?(v26, &_s7LyricsX0A0C8TextLineVSgMd);
          v687 = 0;
          v164 = 0;
        }

        else
        {
          outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v26, v74, type metadata accessor for Lyrics.TextLine);
          v224 = outlined destroy of TaskPriority?(v26, &_s7LyricsX0A0C8TextLineVSgMd);
          v687 = (*&v74[v158[16]])(v224);
          v164 = v225;
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v74, type metadata accessor for Lyrics.TextLine);
        }

        v226 = v665;
        outlined init with copy of TaskPriority?(&v156[v162], v665, &_s7LyricsX0A0C8TextLineVSgMd);
        v227 = v163(v226, 1, v158);
        v688 = v164;
        if (v227)
        {
          outlined destroy of TaskPriority?(v226, &_s7LyricsX0A0C8TextLineVSgMd);
          v228 = type metadata accessor for Locale.Language();
          (*(*(v228 - 8) + 56))(v682, 1, 1, v228);
        }

        else
        {
          outlined init with copy of TaskPriority?(v226 + v158[7], v682, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          outlined destroy of TaskPriority?(v226, &_s7LyricsX0A0C8TextLineVSgMd);
        }

        v229 = v695;
        v230 = v666;
        v231 = v667;
        v232 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
        swift_beginAccess();
        outlined init with copy of TaskPriority?(&v156[v232], v230, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v233 = *(v696 + 48);
        if (v233(v230, 1, v229))
        {
          v234 = outlined destroy of TaskPriority?(v230, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
          v693 = 0;
          v235 = 0;
        }

        else
        {
          v236 = v691;
          outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v230, v691, type metadata accessor for Lyrics.Translation.Line);
          outlined destroy of TaskPriority?(v230, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
          v235 = *(v236 + 8);
          v693 = *v236;

          v234 = outlined destroy of SyncedLyricsLineView.TextContentView.Content(v236, type metadata accessor for Lyrics.Translation.Line);
        }

        v237 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        if (v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] != 1)
        {
          v238 = 0;
          v699 = 0;
          v685 = 0;
          v696 = 0;
          v239 = v700;
          goto LABEL_153;
        }

        (v679)(v728, v234);
        v238 = *(&v728[1] + 1);
        if (*(&v728[1] + 1))
        {
          v699 = *&v728[1];

          outlined destroy of TaskPriority?(v728, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
        }

        else
        {
          v699 = 0;
        }

        v239 = v700;
        if (v700[v237] == 1)
        {
          v378 = v639;
          outlined init with copy of TaskPriority?(&v700[v232], v639, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
          if (!v233(v378, 1, v695))
          {
            v506 = v378;
            v507 = v691;
            outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v506, v691, type metadata accessor for Lyrics.Translation.Line);
            outlined destroy of TaskPriority?(v639, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
            v508 = *(v507 + 24);
            v685 = *(v507 + 16);
            v696 = v508;

            outlined destroy of SyncedLyricsLineView.TextContentView.Content(v507, type metadata accessor for Lyrics.Translation.Line);
LABEL_153:
            outlined init with copy of TaskPriority?(&v239[v232], v231, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
            v379 = v695;
            if (v233(v231, 1, v695))
            {
              outlined destroy of TaskPriority?(v231, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
              v380 = type metadata accessor for Locale.Language();
              (*(*(v380 - 8) + 56))(v683, 1, 1, v380);
            }

            else
            {
              v381 = v691;
              outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v231, v691, type metadata accessor for Lyrics.Translation.Line);
              outlined destroy of TaskPriority?(v231, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
              v382 = *(v379 + 6);
              v383 = type metadata accessor for Locale.Language();
              v384 = *(v383 - 8);
              v385 = v381 + v382;
              v386 = v683;
              (*(v384 + 16))(v683, v385, v383);
              outlined destroy of SyncedLyricsLineView.TextContentView.Content(v381, type metadata accessor for Lyrics.Translation.Line);
              (*(v384 + 56))(v386, 0, 1, v383);
            }

            v387 = v698;
            outlined init with copy of TaskPriority?(v686, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
            v388 = OBJC_IVAR___MusicDespacitoContentView_language;
            swift_beginAccess();
            outlined assign with take of PlaybackIntentDescriptor.IntentType?(v387, &v157[v388], &_s10Foundation6LocaleV8LanguageVSgMd_0);
            swift_endAccess();
            v389 = &v157[OBJC_IVAR___MusicDespacitoContentView_text];
            v390 = v689;
            *v389 = v694;
            v389[1] = v390;

            SyncedLyricsLineView.DespacitoContentView.text.didset();
            v391 = v688;
            if (v688)
            {
              v392 = String.lowercased()();
              v393 = String.lowercased()();
              if (v392._countAndFlagsBits == v393._countAndFlagsBits && v392._object == v393._object)
              {
              }

              else
              {
                v394 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v394 & 1) == 0)
                {
                  v489 = v391;
                  v490 = v698;
                  outlined init with copy of TaskPriority?(v682, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                  v491 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                  swift_beginAccess();
                  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v490, &v157[v491], &_s10Foundation6LocaleV8LanguageVSgMd_0);
                  swift_endAccess();
                  v492 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                  *v492 = v687;
                  v492[1] = v489;
LABEL_163:

                  SyncedLyricsLineView.DespacitoContentView.transliterationText.didset();
                  if (v235)
                  {
                    v399 = String.lowercased()();

                    v400 = String.lowercased()();
                    if (v399._countAndFlagsBits == v400._countAndFlagsBits && v399._object == v400._object)
                    {
                    }

                    else
                    {
                      v401 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v401 & 1) == 0)
                      {
                        v493 = v698;
                        outlined init with copy of TaskPriority?(v683, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                        v494 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                        swift_beginAccess();
                        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v493, &v157[v494], &_s10Foundation6LocaleV8LanguageVSgMd_0);
                        swift_endAccess();
                        v495 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                        *v495 = v693;
                        v495[1] = v235;
                        v402 = v700;
LABEL_170:
                        v407 = v699;
                        v408 = v696;

                        SyncedLyricsLineView.DespacitoContentView.translationText.didset();
                        if (v408)
                        {
                          if (v238)
                          {
                            v409 = String.lowercased()();
                            v410 = String.lowercased()();
                            if (v409._countAndFlagsBits == v410._countAndFlagsBits && v409._object == v410._object)
                            {
                            }

                            else
                            {
                              v411 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if ((v411 & 1) == 0)
                              {
                                SyncedLyricsLineView.DespacitoContentView.translationBackgroundVocalsText.setter(v685, v408);
                                v402 = v700;
                                goto LABEL_179;
                              }
                            }

                            v402 = v700;
                          }

                          else
                          {
                          }
                        }

                        SyncedLyricsLineView.DespacitoContentView.translationBackgroundVocalsText.setter(0, 0);
LABEL_179:
                        v412 = &v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
                        *v412 = v407;
                        v412[1] = v238;

                        SyncedLyricsLineView.DespacitoContentView.backgroundVocalsText.didset();
                        v157[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = v692;
                        [v157 setNeedsLayout];

                        outlined destroy of TaskPriority?(v683, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                        outlined destroy of TaskPriority?(v682, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                        outlined destroy of TaskPriority?(v686, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                        SyncedLyricsLineView.DespacitoContentView.alignment.setter(*&v402[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);

LABEL_299:
                        [v402 setEnabled:1];
                        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v697, type metadata accessor for Lyrics.TextLine);
                        goto LABEL_300;
                      }
                    }
                  }

                  v402 = v700;
                  v403 = type metadata accessor for Locale.Language();
                  v404 = v698;
                  (*(*(v403 - 8) + 56))(v698, 1, 1, v403);
                  v405 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                  swift_beginAccess();
                  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v404, &v157[v405], &_s10Foundation6LocaleV8LanguageVSgMd_0);
                  swift_endAccess();
                  v406 = &v157[OBJC_IVAR___MusicDespacitoContentView_translationText];
                  *v406 = 0;
                  v406[1] = 0;
                  goto LABEL_170;
                }
              }
            }

            v395 = type metadata accessor for Locale.Language();
            v396 = v698;
            (*(*(v395 - 8) + 56))(v698, 1, 1, v395);
            v397 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
            swift_beginAccess();
            outlined assign with take of PlaybackIntentDescriptor.IntentType?(v396, &v157[v397], &_s10Foundation6LocaleV8LanguageVSgMd_0);
            swift_endAccess();
            v398 = &v157[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
            *v398 = 0;
            v398[1] = 0;
            goto LABEL_163;
          }

          outlined destroy of TaskPriority?(v378, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        }

        v685 = 0;
        v696 = 0;
        goto LABEL_153;
      }
    }

    v685 = v154;
    v165 = v693;
    v166 = v697;
    v686 = (*(v697 + v693[16]))(v152);
    v684 = v167;
    outlined init with copy of TaskPriority?(v166 + v165[7], v694, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v168 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(&v156[v168], v23, &_s7LyricsX0A0C8TextLineVSgMd);
    v169 = v699[6];
    if (v169(v23, 1, v165))
    {
      outlined destroy of TaskPriority?(v23, &_s7LyricsX0A0C8TextLineVSgMd);
      v681 = 0;
      v683 = 0;
    }

    else
    {
      outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v23, v74, type metadata accessor for Lyrics.TextLine);
      v191 = outlined destroy of TaskPriority?(v23, &_s7LyricsX0A0C8TextLineVSgMd);
      v681 = (*&v74[v165[16]])(v191);
      v683 = v192;
      outlined destroy of SyncedLyricsLineView.TextContentView.Content(v74, type metadata accessor for Lyrics.TextLine);
    }

    v193 = v696;
    v194 = v676;
    v195 = v674;
    outlined init with copy of TaskPriority?(&v156[v168], v674, &_s7LyricsX0A0C8TextLineVSgMd);
    if (v169(v195, 1, v165))
    {
      outlined destroy of TaskPriority?(v195, &_s7LyricsX0A0C8TextLineVSgMd);
      v196 = type metadata accessor for Locale.Language();
      (*(*(v196 - 8) + 56))(v687, 1, 1, v196);
    }

    else
    {
      outlined init with copy of TaskPriority?(v195 + v165[7], v687, &_s10Foundation6LocaleV8LanguageVSgMd_0);
      outlined destroy of TaskPriority?(v195, &_s7LyricsX0A0C8TextLineVSgMd);
    }

    v197 = v675;
    v198 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(&v156[v198], v197, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v199 = *(v193 + 48);
    v200 = v695;
    if (v199(v197, 1, v695))
    {
      v201 = outlined destroy of TaskPriority?(v197, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v680 = 0;
      v693 = 0;
    }

    else
    {
      v202 = v691;
      outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v197, v691, type metadata accessor for Lyrics.Translation.Line);
      outlined destroy of TaskPriority?(v197, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v203 = v202[1];
      v680 = *v202;
      v693 = v203;

      v201 = outlined destroy of SyncedLyricsLineView.TextContentView.Content(v202, type metadata accessor for Lyrics.Translation.Line);
    }

    v204 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    if (v156[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] == 1)
    {
      (v679)(v723, v201);
      v205 = v725;
      if (v725)
      {
        v696 = *&v724;

        outlined destroy of TaskPriority?(v723, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
      }

      else
      {
        v696 = 0;
      }

      v240 = v661;
      if (v156[v204] == 1)
      {
        outlined init with copy of TaskPriority?(&v156[v198], v661, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        if (!v199(v240, 1, v200))
        {
          v500 = v240;
          v699 = v205;
          v501 = v240;
          v502 = v691;
          outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v500, v691, type metadata accessor for Lyrics.Translation.Line);
          v503 = v501;
          v205 = v699;
          outlined destroy of TaskPriority?(v503, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
          v504 = *(v502 + 24);
          v679 = *(v502 + 16);
          v682 = v504;

          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v502, type metadata accessor for Lyrics.Translation.Line);
LABEL_77:
          v699 = v205;
          outlined init with copy of TaskPriority?(&v156[v198], v194, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
          if (v199(v194, 1, v200))
          {
            outlined destroy of TaskPriority?(v194, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
            v241 = type metadata accessor for Locale.Language();
            (*(*(v241 - 8) + 56))(v688, 1, 1, v241);
          }

          else
          {
            v242 = v691;
            outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v194, v691, type metadata accessor for Lyrics.Translation.Line);
            outlined destroy of TaskPriority?(v194, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
            v243 = *(v200 + 6);
            v241 = type metadata accessor for Locale.Language();
            v244 = *(v241 - 8);
            v245 = v242 + v243;
            v156 = v700;
            v246 = v688;
            (*(v244 + 16))(v688, v245, v241);
            outlined destroy of SyncedLyricsLineView.TextContentView.Content(v242, type metadata accessor for Lyrics.Translation.Line);
            (*(v244 + 56))(v246, 0, 1, v241);
          }

          memcpy(v728, &v156[v204], 0x2B0uLL);
          v695 = type metadata accessor for SyncedLyricsLineView.DespacitoContentView(0);
          v247 = objc_allocWithZone(v695);
          v247[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
          *&v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
          v248 = OBJC_IVAR___MusicDespacitoContentView_language;
          type metadata accessor for Locale.Language();
          v249 = *(*(v241 - 8) + 56);
          v249(&v247[v248], 1, 1, v241);
          *&v691 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
          v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          v250 = &v247[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v250 = 0;
          v250[1] = 0;
          v251 = &v247[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
          *v251 = 0;
          v251[1] = 0;
          v247[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
          v249(&v247[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v241);
          v252 = &v247[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v252 = 0;
          v252[1] = 0;
          v247[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
          v249(&v247[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v241);
          v253 = &v247[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
          *v253 = 0;
          v253[1] = 0;
          v254 = v694;
          v255 = v698;
          outlined init with copy of TaskPriority?(v694, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          v256 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation6LocaleV8LanguageVSgtMd) + 48);
          v257 = v689;
          v258 = v686;
          v259 = v684;
          *v689 = v686;
          *(v257 + 8) = v259;
          outlined init with copy of TaskPriority?(v255, v257 + v256, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          swift_storeEnumTagMultiPayload();
          v260 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView.TextContentView(0));

          outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
          v261 = specialized SyncedLyricsLineView.TextContentView.init(content:specs:textColorOverride:)(v257, v728, 0);
          outlined destroy of TaskPriority?(v255, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          *&v247[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v261;
          memcpy(&v247[OBJC_IVAR___MusicDespacitoContentView_specs], v728, 0x2B0uLL);
          v262 = &v247[OBJC_IVAR___MusicDespacitoContentView_text];
          *v262 = v258;
          v262[1] = v259;
          swift_beginAccess();

          outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
          outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v254, &v247[v248], &_s10Foundation6LocaleV8LanguageVSgMd_0);
          swift_endAccess();
          v247[v691] = v692;
          v705.receiver = v247;
          v705.super_class = v695;
          v263 = objc_msgSendSuper2(&v705, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v264 = *&v263[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
          v265 = v263;
          [v265 addSubview:v264];
          v266 = v696;
          v267 = v683;
          if (v683)
          {
            v268 = String.lowercased()();
            v269 = v681;
            v270 = String.lowercased()();
            if (v268._countAndFlagsBits == v270._countAndFlagsBits && v268._object == v270._object)
            {
            }

            else
            {
              v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v271)
              {
              }

              else
              {
                v356 = v698;
                outlined init with copy of TaskPriority?(v687, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                v357 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                swift_beginAccess();
                outlined assign with take of PlaybackIntentDescriptor.IntentType?(v356, &v265[v357], &_s10Foundation6LocaleV8LanguageVSgMd_0);
                swift_endAccess();
                v358 = &v265[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                *v358 = v269;
                v358[1] = v267;

                SyncedLyricsLineView.DespacitoContentView.transliterationText.didset();
              }
            }
          }

          v359 = v699;
          v360 = v693;
          if (v693)
          {
            v361 = String.lowercased()();

            v362 = v680;
            v363 = String.lowercased()();
            v364 = v700;
            if (v361._countAndFlagsBits == v363._countAndFlagsBits && v361._object == v363._object)
            {
            }

            else
            {
              v365 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v365)
              {
              }

              else
              {
                v366 = v698;
                outlined init with copy of TaskPriority?(v688, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                v367 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                swift_beginAccess();
                v368 = &v265[v367];
                v364 = v700;
                outlined assign with take of PlaybackIntentDescriptor.IntentType?(v366, v368, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                swift_endAccess();
                v369 = &v265[OBJC_IVAR___MusicDespacitoContentView_translationText];
                *v369 = v362;
                v369[1] = v360;

                SyncedLyricsLineView.DespacitoContentView.translationText.didset();
              }
            }
          }

          else
          {

            v364 = v700;
          }

          v370 = v682;
          if (!v682)
          {
            goto LABEL_219;
          }

          if (v359)
          {
            v371 = String.lowercased()();
            v372 = String.lowercased()();
            if (v371._countAndFlagsBits == v372._countAndFlagsBits && v371._object == v372._object)
            {

LABEL_219:
              v496 = &v265[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
              *v496 = v266;
              *(v496 + 1) = v359;

              SyncedLyricsLineView.DespacitoContentView.backgroundVocalsText.didset();

              outlined destroy of SyncedLyricsViewController.Specs(v728);
              outlined destroy of TaskPriority?(v688, &_s10Foundation6LocaleV8LanguageVSgMd_0);
              outlined destroy of TaskPriority?(v687, &_s10Foundation6LocaleV8LanguageVSgMd_0);
              outlined destroy of TaskPriority?(v694, &_s10Foundation6LocaleV8LanguageVSgMd_0);
              SyncedLyricsLineView.DespacitoContentView.alignment.setter(*&v364[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);
              v497 = v685;
              v498 = *v685;
              *v685 = v265;
              v497[1] = &protocol witness table for SyncedLyricsLineView.DespacitoContentView;
              v499 = v265;
              SyncedLyricsLineView.contentView.didset(v498);

              v402 = v700;
              goto LABEL_299;
            }

            v373 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v373 & 1) == 0)
            {
              SyncedLyricsLineView.DespacitoContentView.translationBackgroundVocalsText.setter(v679, v370);
              goto LABEL_219;
            }
          }

          goto LABEL_219;
        }

        outlined destroy of TaskPriority?(v240, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      }
    }

    else
    {
      v205 = 0;
      v696 = 0;
    }

    v679 = 0;
    v682 = 0;
    goto LABEL_77;
  }

  v170 = &v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v171 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (v171)
  {
    type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
    v152 = swift_dynamicCastClass();
    if (v152)
    {
      v694 = v152;
      v172 = v693;
      v173 = v697;
      v174 = *(v697 + v693[16]);
      v684 = v171;
      v681 = v174();
      v690 = v175;
      v689 = v150();
      v176 = outlined init with copy of TaskPriority?(v173 + v172[7], v668, &_s10Foundation6LocaleV8LanguageVSgMd_0);
      v177 = v700;
      v686 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      LODWORD(v678) = (*(v173 + v172[15]))(v176);
      v685 = *(v173 + v172[9]);
      v178 = v679;
      v179 = (v679)(v711);
      v180 = v713;
      if (v713)
      {
        v675 = v712;

        v179 = outlined destroy of TaskPriority?(v711, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
      }

      else
      {
        v675 = 0;
      }

      v413 = v645;
      v414 = (v178)(v714, v179);
      if (v715)
      {
        v683 = v716;

        v414 = outlined destroy of TaskPriority?(v714, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
      }

      else
      {
        v683 = _swiftEmptyArrayStorage;
      }

      (v178)(v717, v414);
      v687 = v180;
      if (v718)
      {
        LODWORD(v680) = v719;
        outlined destroy of TaskPriority?(v717, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
      }

      else
      {
        LODWORD(v680) = 0;
      }

      v415 = v652;
      v416 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      v417 = v673;
      outlined init with copy of TaskPriority?(&v177[v416], v673, &_s7LyricsX0A0C8TextLineVSgMd);
      v418 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      outlined init with copy of TaskPriority?(&v177[v418], v413, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v419 = *(v696 + 48);
      v420 = v695;
      v696 += 48;
      if (v419(v413, 1, v695))
      {
        outlined destroy of TaskPriority?(v413, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v679 = 0;
        v688 = 0;
      }

      else
      {
        v421 = v691;
        outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v413, v691, type metadata accessor for Lyrics.Translation.Line);
        outlined destroy of TaskPriority?(v413, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v422 = *(v421 + 8);
        v679 = *v421;
        v688 = v422;

        v423 = v421;
        v415 = v652;
        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v423, type metadata accessor for Lyrics.Translation.Line);
      }

      v424 = v699;
      v425 = v672;
      outlined init with copy of TaskPriority?(&v177[v418], v415, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      if (v419(v415, 1, v420))
      {
        outlined destroy of TaskPriority?(v415, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v674 = 0;
        v682 = 0;
      }

      else
      {
        v426 = v415;
        v427 = v424;
        v428 = v417;
        v429 = v425;
        v430 = v415;
        v431 = v691;
        outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v426, v691, type metadata accessor for Lyrics.Translation.Line);
        v432 = v430;
        v425 = v429;
        v417 = v428;
        v424 = v427;
        outlined destroy of TaskPriority?(v432, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v433 = *(v431 + 24);
        v674 = *(v431 + 16);
        v682 = v433;

        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v431, type metadata accessor for Lyrics.Translation.Line);
      }

      v434 = &v177[v418];
      v435 = v648;
      outlined init with copy of TaskPriority?(v434, v648, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      if (v419(v435, 1, v420))
      {
        outlined destroy of TaskPriority?(v435, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v436 = type metadata accessor for Locale.Language();
        (*(*(v436 - 8) + 56))(v425, 1, 1, v436);
      }

      else
      {
        v437 = v691;
        outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v435, v691, type metadata accessor for Lyrics.Translation.Line);
        outlined destroy of TaskPriority?(v435, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
        v438 = *(v420 + 6);
        v439 = type metadata accessor for Locale.Language();
        v440 = *(v439 - 8);
        (*(v440 + 16))(v425, v437 + v438, v439);
        outlined destroy of SyncedLyricsLineView.TextContentView.Content(v437, type metadata accessor for Lyrics.Translation.Line);
        (*(v440 + 56))(v425, 0, 1, v439);
      }

      v441 = v649;
      v442 = v646;
      outlined init with copy of TaskPriority?(v417, v646, &_s7LyricsX0A0C8TextLineVSgMd);
      v443 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
      v444 = v694;
      swift_beginAccess();
      outlined assign with take of PlaybackIntentDescriptor.IntentType?(v442, v444 + v443, &_s7LyricsX0A0C8TextLineVSgMd);
      swift_endAccess();
      v445 = *(v444 + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (v445)
      {
        v446 = v647;
        outlined init with copy of TaskPriority?(v417, v647, &_s7LyricsX0A0C8TextLineVSgMd);
        v449 = v424[6];
        v447 = v424 + 6;
        v448 = v449;
        v450 = v693;
        v451 = (v449)(v446, 1, v693);
        v453 = v650;
        v452 = v651;
        if (v451 == 1)
        {
          v454 = v445;
          outlined destroy of TaskPriority?(v446, &_s7LyricsX0A0C8TextLineVSgMd);
          v455 = type metadata accessor for Locale.Language();
          (*(*(v455 - 8) + 56))(v664, 1, 1, v455);
        }

        else
        {
          outlined init with copy of TaskPriority?(v446 + v450[7], v664, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          v456 = v445;
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v446, type metadata accessor for Lyrics.TextLine);
        }

        outlined init with copy of TaskPriority?(v417, v441, &_s7LyricsX0A0C8TextLineVSgMd);
        if ((v448)(v441, 1, v450) == 1)
        {
          outlined destroy of TaskPriority?(v441, &_s7LyricsX0A0C8TextLineVSgMd);
          v457 = 2;
        }

        else
        {
          v458 = (*(v441 + v450[15]))();
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v441, type metadata accessor for Lyrics.TextLine);
          v457 = v458 & 1;
        }

        LODWORD(v695) = v457;
        outlined init with copy of TaskPriority?(v417, v453, &_s7LyricsX0A0C8TextLineVSgMd);
        v699 = v447;
        if ((v448)(v453, 1, v450) == 1)
        {
          outlined destroy of TaskPriority?(v453, &_s7LyricsX0A0C8TextLineVSgMd);
          *&v691 = 0;
          v677 = 0;
        }

        else
        {
          *&v691 = (*(v453 + v450[16]))();
          v677 = v459;
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v453, type metadata accessor for Lyrics.TextLine);
        }

        outlined init with copy of TaskPriority?(v417, v452, &_s7LyricsX0A0C8TextLineVSgMd);
        v460 = (v448)(v452, 1, v450);
        v696 = v448;
        if (v460 == 1)
        {
          outlined destroy of TaskPriority?(v452, &_s7LyricsX0A0C8TextLineVSgMd);
          v676 = 0;
        }

        else
        {
          v676 = (*(v452 + v450[17]))();
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v452, type metadata accessor for Lyrics.TextLine);
        }

        v461 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v462 = v681;
        v463 = v690;
        *v461 = v681;
        *(v461 + 1) = v463;

        v464 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v464 = v462;
        v464[1] = v463;

        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v689;

        v465 = v698;
        outlined init with copy of TaskPriority?(v672, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v466 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        swift_beginAccess();

        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v465, &v445[v466], &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        v467 = v664;
        outlined init with copy of TaskPriority?(v664, v465, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v468 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        swift_beginAccess();
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v465, &v445[v468], &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        v469 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        v470 = v688;
        *v469 = v679;
        *(v469 + 1) = v470;

        v471 = &v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        v472 = v677;
        *v471 = v691;
        *(v471 + 1) = v472;

        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v676;

        v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v695;
        v474 = v685;
        v473 = v686;
        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v686;
        LOBYTE(v468) = v678 & 1;
        v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v678 & 1;
        *&v445[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v474;

        [v445 setNeedsLayout];

        outlined destroy of TaskPriority?(v467, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v475 = v694;
        v476 = &v694[OBJC_IVAR___MusicSBS_TextContentView_text];
        *v476 = v462;
        v476[1] = v463;

        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v473;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v468;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v474;

        v477 = v680 & 1;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = v477;
        *(v475 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = v692;
        v478 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        v479 = *(v475 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
        if (v479)
        {
          v402 = v700;
          v480 = v673;
          v481 = v687;
          if (v687)
          {
            LODWORD(v695) = v477;
            v482 = v632;
            outlined init with copy of TaskPriority?(v673, v632, &_s7LyricsX0A0C8TextLineVSgMd);
            v483 = v693;
            if ((v696)(v482, 1, v693) == 1)
            {
              v484 = v479;
              outlined destroy of TaskPriority?(v482, &_s7LyricsX0A0C8TextLineVSgMd);
              v485 = type metadata accessor for Locale.Language();
              (*(*(v485 - 8) + 56))(v640, 1, 1, v485);
            }

            else
            {
              outlined init with copy of TaskPriority?(v482 + v483[7], v640, &_s10Foundation6LocaleV8LanguageVSgMd_0);
              v509 = v479;
              outlined destroy of SyncedLyricsLineView.TextContentView.Content(v482, type metadata accessor for Lyrics.TextLine);
            }

            v510 = v480;
            v512 = v633;
            v511 = v634;
            outlined init with copy of TaskPriority?(v510, v633, &_s7LyricsX0A0C8TextLineVSgMd);
            if ((v696)(v512, 1, v483) == 1)
            {
              outlined destroy of TaskPriority?(v512, &_s7LyricsX0A0C8TextLineVSgMd);
              v513 = 2;
            }

            else
            {
              v514 = (*(v512 + v483[15]))();
              outlined destroy of SyncedLyricsLineView.TextContentView.Content(v512, type metadata accessor for Lyrics.TextLine);
              v513 = v514 & 1;
            }

            LODWORD(v692) = v513;
            outlined init with copy of TaskPriority?(v673, v511, &_s7LyricsX0A0C8TextLineVSgMd);
            if ((v696)(v511, 1, v483) == 1)
            {
              outlined destroy of TaskPriority?(v511, &_s7LyricsX0A0C8TextLineVSgMd);
              v681 = 0;
              *&v691 = 0;
              v515 = v635;
            }

            else
            {
              (*(v511 + v483[18]))(&v706);
              *&v691 = *(&v707 + 1);
              if (*(&v707 + 1))
              {
                v681 = v707;

                outlined destroy of TaskPriority?(&v706, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
              }

              else
              {
                v681 = 0;
              }

              v515 = v635;
              outlined destroy of SyncedLyricsLineView.TextContentView.Content(v511, type metadata accessor for Lyrics.TextLine);
            }

            outlined init with copy of TaskPriority?(v673, v515, &_s7LyricsX0A0C8TextLineVSgMd);
            v579 = v693;
            if ((v696)(v515, 1, v693) == 1)
            {
              outlined destroy of TaskPriority?(v515, &_s7LyricsX0A0C8TextLineVSgMd);
            }

            else
            {
              (*(v515 + v579[18]))(v728);
              outlined destroy of SyncedLyricsLineView.TextContentView.Content(v515, type metadata accessor for Lyrics.TextLine);
              if (*(&v728[1] + 1))
              {
                v699 = *(&v728[3] + 1);

                outlined destroy of TaskPriority?(v728, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
LABEL_279:
                v580 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
                v581 = v675;
                *v580 = v675;
                *(v580 + 1) = v481;

                v582 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
                *v582 = v581;
                *(v582 + 1) = v481;

                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v683;

                v564 = v672;
                v583 = v698;
                outlined init with copy of TaskPriority?(v672, v698, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                v584 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
                swift_beginAccess();

                outlined assign with take of PlaybackIntentDescriptor.IntentType?(v583, &v479[v584], &_s10Foundation6LocaleV8LanguageVSgMd_0);
                swift_endAccess();
                v585 = v640;
                outlined init with copy of TaskPriority?(v640, v583, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                v586 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
                swift_beginAccess();
                outlined assign with take of PlaybackIntentDescriptor.IntentType?(v583, &v479[v586], &_s10Foundation6LocaleV8LanguageVSgMd_0);
                swift_endAccess();
                v587 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
                v588 = v682;
                *v587 = v674;
                *(v587 + 1) = v588;

                v589 = &v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
                v590 = v691;
                *v589 = v681;
                *(v589 + 1) = v590;

                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v699;

                v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v692;
                v591 = v685;
                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v686;
                v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v695;
                *&v479[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v591;

                [v479 setNeedsLayout];

                outlined destroy of TaskPriority?(v585, &_s10Foundation6LocaleV8LanguageVSgMd_0);
                v402 = v700;
                v480 = v673;
                v475 = v694;
                goto LABEL_298;
              }
            }

            v699 = 0;
            goto LABEL_279;
          }

          [v479 removeFromSuperview];
          v475 = v694;
          v505 = *&v694[v478];
LABEL_251:
          v564 = v672;
          *(v475 + v478) = 0;

LABEL_298:
          [v475 setNeedsLayout];

          outlined destroy of TaskPriority?(v564, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          outlined destroy of TaskPriority?(v480, &_s7LyricsX0A0C8TextLineVSgMd);
          outlined destroy of TaskPriority?(v668, &_s10Foundation6LocaleV8LanguageVSgMd_0);
          goto LABEL_299;
        }

        v402 = v700;
        v480 = v673;
        if (!v687)
        {
          v505 = 0;
          goto LABEL_251;
        }

        v692 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        LODWORD(v695) = v477;
        outlined init with copy of TaskPriority?(v668, v637, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        outlined init with copy of TaskPriority?(v672, v638, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v486 = v628;
        outlined init with copy of TaskPriority?(v480, v628, &_s7LyricsX0A0C8TextLineVSgMd);
        v487 = v693;
        if ((v696)(v486, 1, v693) == 1)
        {

          outlined destroy of TaskPriority?(v486, &_s7LyricsX0A0C8TextLineVSgMd);
          v488 = type metadata accessor for Locale.Language();
          (*(*(v488 - 8) + 56))(v636, 1, 1, v488);
        }

        else
        {
          outlined init with copy of TaskPriority?(v486 + v487[7], v636, &_s10Foundation6LocaleV8LanguageVSgMd_0);

          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v486, type metadata accessor for Lyrics.TextLine);
        }

        v565 = v631;
        v566 = v629;
        outlined init with copy of TaskPriority?(v480, v629, &_s7LyricsX0A0C8TextLineVSgMd);
        v567 = (v696)(v566, 1, v487);
        v568 = v630;
        if (v567 == 1)
        {
          outlined destroy of TaskPriority?(v566, &_s7LyricsX0A0C8TextLineVSgMd);
          v569 = 2;
        }

        else
        {
          v570 = (*(v566 + v487[15]))();
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v566, type metadata accessor for Lyrics.TextLine);
          v569 = v570 & 1;
        }

        LODWORD(v691) = v569;
        outlined init with copy of TaskPriority?(v480, v568, &_s7LyricsX0A0C8TextLineVSgMd);
        v571 = v696;
        if ((v696)(v568, 1, v487) == 1)
        {
          outlined destroy of TaskPriority?(v568, &_s7LyricsX0A0C8TextLineVSgMd);
          v698 = 0;
          v681 = 0;
        }

        else
        {
          (*(v568 + v487[18]))(v720);
          v681 = v722;
          if (v722)
          {
            v698 = v721;

            outlined destroy of TaskPriority?(v720, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
          }

          else
          {
            v698 = 0;
          }

          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v568, type metadata accessor for Lyrics.TextLine);
        }

        outlined init with copy of TaskPriority?(v480, v565, &_s7LyricsX0A0C8TextLineVSgMd);
        if (v571(v565, 1, v487) == 1)
        {
          outlined destroy of TaskPriority?(v565, &_s7LyricsX0A0C8TextLineVSgMd);
        }

        else
        {
          (*(v565 + v487[18]))(v723);
          outlined destroy of SyncedLyricsLineView.TextContentView.Content(v565, type metadata accessor for Lyrics.TextLine);
          if (v725)
          {
            v699 = v727;

            outlined destroy of TaskPriority?(v723, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
LABEL_297:
            v696 = v475 + OBJC_IVAR___MusicSBS_TextContentView_specs;
            memcpy(v728, v475 + OBJC_IVAR___MusicSBS_TextContentView_specs, 0x2B0uLL);
            v693 = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView();
            v598 = objc_allocWithZone(v693);
            v599 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
            *v599 = 0;
            v599[1] = 0;
            v680 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
            v679 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
            v600 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
            *v600 = 0;
            v600[1] = 0;
            v601 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
            v602 = type metadata accessor for Locale.Language();
            v603 = *(*(v602 - 8) + 56);
            v603(&v598[v601], 1, 1, v602);
            v604 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
            v603(&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v602);
            v605 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
            v603(&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v602);
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
            v678 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
            v606 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
            *v606 = 2;
            *(v606 + 8) = 0u;
            *(v606 + 24) = 0u;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
            v607 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
            v607[4] = 0u;
            v607[5] = 0u;
            v607[2] = 0u;
            v607[3] = 0u;
            *v607 = 0u;
            v607[1] = 0u;
            v608 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
            outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
            *&v598[v608] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
            v609 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
            v610 = v675;
            v611 = v687;
            *v609 = v675;
            v609[1] = v611;
            v612 = &v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
            *v612 = v610;
            v612[1] = v611;
            swift_beginAccess();

            v613 = &v598[v601];
            v475 = v694;
            outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v637, v613, &_s10Foundation6LocaleV8LanguageVSgMd_0);
            swift_endAccess();
            swift_beginAccess();
            outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v638, &v598[v604], &_s10Foundation6LocaleV8LanguageVSgMd_0);
            swift_endAccess();
            swift_beginAccess();
            v614 = v636;
            outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v636, &v598[v605], &_s10Foundation6LocaleV8LanguageVSgMd_0);
            swift_endAccess();
            *(v679 + v598) = v691;
            v615 = v681;
            *v599 = v698;
            v599[1] = v615;

            *&v598[v680] = v699;

            v616 = v682;
            *v600 = v674;
            v600[1] = v616;

            memcpy(&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v728, 0x2B0uLL);
            *&v598[v678] = 0;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v683;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
            v617 = v685;
            v618 = v686;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v686;
            v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v695;
            *&v598[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v617;
            v701.receiver = v598;
            v701.super_class = v693;

            v619 = objc_msgSendSuper2(&v701, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
            outlined destroy of TaskPriority?(v614, &_s10Foundation6LocaleV8LanguageVSgMd_0);
            outlined destroy of TaskPriority?(v638, &_s10Foundation6LocaleV8LanguageVSgMd_0);
            outlined destroy of TaskPriority?(v637, &_s10Foundation6LocaleV8LanguageVSgMd_0);
            v620 = specialized static SyncedLyricsLineView.SBS_TextContentView.anchorPoint(for:)(v618);
            v622 = v621;
            v623 = v619;
            UIView.setAnchorPoint(_:preserveFrame:)(1, v620, v622);
            [v623 setAlpha:0.0];
            v624 = *(v696 + 144);
            v625 = *(v696 + 160);
            v706 = *(v696 + 128);
            v707 = v624;
            v708 = v625;
            [v623 setTransform:&v706];

            [v475 addSubview:v623];
            v626 = *&v692[v475];
            *&v692[v475] = v623;

            v402 = v700;
            v564 = v672;
            v480 = v673;
            goto LABEL_298;
          }
        }

        v699 = 0;
        goto LABEL_297;
      }

      goto LABEL_312;
    }
  }

  v660 = v170;
  v181 = v693;
  v182 = v697;
  v686 = (*(v697 + v693[16]))(v152);
  v694 = v183;
  v690 = v150();
  v184 = outlined init with copy of TaskPriority?(v182 + v181[7], v684, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v185 = v700;
  v688 = *&v700[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  v186 = (*(v182 + v181[15]))(v184);
  v698 = *(v182 + v181[9]);

  v188 = v679;
  v189 = (v679)(v711, v187);
  v190 = v713;
  if (v713)
  {
    v652 = v712;

    v189 = outlined destroy of TaskPriority?(v711, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
  }

  else
  {
    v652 = 0;
  }

  v285 = v653;
  v286 = (v188)(v714, v189);
  if (v715)
  {
    v687 = v716;

    v286 = outlined destroy of TaskPriority?(v714, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
  }

  else
  {
    v687 = _swiftEmptyArrayStorage;
  }

  v689 = v190;
  (v188)(v717, v286);
  if (v718)
  {
    LODWORD(v683) = v719;
    outlined destroy of TaskPriority?(v717, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
  }

  else
  {
    LODWORD(v683) = 0;
  }

  v287 = v654;
  memcpy(v728, &v185[v153], 0x2B0uLL);
  v288 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v185[v288], v685, &_s7LyricsX0A0C8TextLineVSgMd);
  v289 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v185[v289], v285, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
  v290 = *(v696 + 48);
  v291 = v695;
  if (v290(v285, 1, v695))
  {
    outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
    outlined destroy of TaskPriority?(v285, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v675 = 0;
    v696 = 0;
  }

  else
  {
    v292 = v691;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v285, v691, type metadata accessor for Lyrics.Translation.Line);
    outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
    outlined destroy of TaskPriority?(v285, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v293 = v292[1];
    v675 = *v292;
    v696 = v293;

    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v292, type metadata accessor for Lyrics.Translation.Line);
  }

  v294 = v699;
  outlined init with copy of TaskPriority?(&v185[v289], v287, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
  if (v290(v287, 1, v291))
  {
    outlined destroy of TaskPriority?(v287, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v654 = 0;
    v682 = 0;
  }

  else
  {
    v295 = v691;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v287, v691, type metadata accessor for Lyrics.Translation.Line);
    outlined destroy of TaskPriority?(v287, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v296 = *(v295 + 24);
    v654 = *(v295 + 16);
    v682 = v296;

    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v295, type metadata accessor for Lyrics.Translation.Line);
  }

  v297 = &v185[v289];
  v298 = v655;
  outlined init with copy of TaskPriority?(v297, v655, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
  if (v290(v298, 1, v291))
  {
    outlined destroy of TaskPriority?(v298, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v299 = type metadata accessor for Locale.Language();
    v300 = v677;
    (*(*(v299 - 8) + 56))(v677, 1, 1, v299);
  }

  else
  {
    v301 = v691;
    outlined init with copy of SyncedLyricsLineView.TextContentView.Content(v298, v691, type metadata accessor for Lyrics.Translation.Line);
    outlined destroy of TaskPriority?(v298, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v302 = *(v291 + 6);
    v303 = type metadata accessor for Locale.Language();
    v304 = *(v303 - 8);
    v300 = v677;
    (*(v304 + 16))(v677, v301 + v302, v303);
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v301, type metadata accessor for Lyrics.Translation.Line);
    (*(v304 + 56))(v300, 0, 1, v303);
  }

  v305 = v693;
  v306 = v698;
  v679 = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
  v307 = objc_allocWithZone(v679);
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v308 = (v307 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v308 = 0;
  v308[1] = 0;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  v678 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v309 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v294[7](v307 + OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine, 1, 1, v305);
  v676 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  v674 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  v680 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  v310 = v694;
  *v308 = v686;
  v308[1] = v310;
  memcpy(v307 + OBJC_IVAR___MusicSBS_TextContentView_specs, v728, 0x2B0uLL);
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v688;
  LODWORD(v673) = v186 & 1;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v186 & 1;
  *(v307 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v306;
  swift_beginAccess();

  outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);

  v695 = v307;
  v311 = v685;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v685, v307 + v309, &_s7LyricsX0A0C8TextLineVSgMd);
  swift_endAccess();
  outlined init with copy of TaskPriority?(v684, v681, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v312 = v693;
  outlined init with copy of TaskPriority?(v300, v670, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v313 = v656;
  outlined init with copy of TaskPriority?(v311, v656, &_s7LyricsX0A0C8TextLineVSgMd);
  v316 = v294[6];
  v314 = v294 + 6;
  v315 = v316;
  if ((v316)(v313, 1, v312) == 1)
  {
    outlined destroy of TaskPriority?(v313, &_s7LyricsX0A0C8TextLineVSgMd);
    v317 = type metadata accessor for Locale.Language();
    (*(*(v317 - 8) + 56))(v671, 1, 1, v317);
  }

  else
  {
    outlined init with copy of TaskPriority?(v313 + v312[7], v671, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v313, type metadata accessor for Lyrics.TextLine);
  }

  v319 = v658;
  v318 = v659;
  v320 = v657;
  outlined init with copy of TaskPriority?(v311, v657, &_s7LyricsX0A0C8TextLineVSgMd);
  if ((v315)(v320, 1, v312) == 1)
  {
    outlined destroy of TaskPriority?(v320, &_s7LyricsX0A0C8TextLineVSgMd);
    v321 = 2;
  }

  else
  {
    v322 = (*(v320 + v312[15]))();
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v320, type metadata accessor for Lyrics.TextLine);
    v321 = v322 & 1;
  }

  LODWORD(v672) = v321;
  outlined init with copy of TaskPriority?(v311, v319, &_s7LyricsX0A0C8TextLineVSgMd);
  if ((v315)(v319, 1, v312) == 1)
  {
    outlined destroy of TaskPriority?(v319, &_s7LyricsX0A0C8TextLineVSgMd);
    v667 = 0;
    v668 = 0;
  }

  else
  {
    v323 = (*(v319 + v312[16]))();
    v667 = v324;
    v668 = v323;
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v319, type metadata accessor for Lyrics.TextLine);
  }

  LODWORD(v691) = v683 & 1;
  outlined init with copy of TaskPriority?(v311, v318, &_s7LyricsX0A0C8TextLineVSgMd);
  v325 = (v315)(v318, 1, v312);
  v699 = v314;
  v655 = v315;
  if (v325 == 1)
  {
    outlined destroy of TaskPriority?(v318, &_s7LyricsX0A0C8TextLineVSgMd);
    v666 = 0;
  }

  else
  {
    v666 = (*(v318 + v312[17]))();
    outlined destroy of SyncedLyricsLineView.TextContentView.Content(v318, type metadata accessor for Lyrics.TextLine);
  }

  v683 = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView();
  v326 = objc_allocWithZone(v683);
  v327 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v327 = 0;
  v327[1] = 0;
  v665 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v664 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v328 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v328 = 0;
  v328[1] = 0;
  v329 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v330 = type metadata accessor for Locale.Language();
  v331 = *(v330 - 8);
  v332 = *(v331 + 56);
  v333 = v331 + 56;
  (v332)(&v326[v329], 1, 1, v330);
  v334 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  (v332)(&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v330);
  v335 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v658 = v332;
  v659 = v330;
  v657 = v333;
  (v332)(&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v330);
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v661 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v336 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v336 = 2;
  *(v336 + 8) = 0u;
  *(v336 + 24) = 0u;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v337 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v337[4] = 0u;
  v337[5] = 0u;
  v337[2] = 0u;
  v337[3] = 0u;
  *v337 = 0u;
  v337[1] = 0u;
  v338 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

  outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
  v339 = v696;

  v340 = v694;

  *&v326[v338] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v341 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v342 = v686;
  *v341 = v686;
  v341[1] = v340;
  v343 = &v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v343 = v342;
  v343[1] = v340;
  swift_beginAccess();

  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v681, &v326[v329], &_s10Foundation6LocaleV8LanguageVSgMd_0);
  swift_endAccess();
  swift_beginAccess();
  v344 = &v326[v334];
  v345 = v670;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v670, v344, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  swift_endAccess();
  swift_beginAccess();
  v346 = v671;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v671, &v326[v335], &_s10Foundation6LocaleV8LanguageVSgMd_0);
  swift_endAccess();
  v326[v664] = v672;
  v347 = v667;
  *v327 = v668;
  v327[1] = v347;

  *&v326[v665] = v666;

  *v328 = v675;
  v328[1] = v339;

  memcpy(&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v728, 0x2B0uLL);
  *&v326[v661] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v690;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v688;
  v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v673;
  *&v326[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v698;
  v704.receiver = v326;
  v348 = v683;
  v704.super_class = v683;
  v349 = objc_msgSendSuper2(&v704, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  outlined destroy of TaskPriority?(v346, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined destroy of TaskPriority?(v345, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  outlined destroy of TaskPriority?(v681, &_s10Foundation6LocaleV8LanguageVSgMd_0);
  v350 = v695;
  v351 = *(v695 + v674);
  *(v695 + v674) = v349;

  if (v689)
  {
    outlined init with copy of TaskPriority?(v684, v669, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined init with copy of TaskPriority?(v677, v662, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v352 = v685;
    v353 = v641;
    outlined init with copy of TaskPriority?(v685, v641, &_s7LyricsX0A0C8TextLineVSgMd);
    v354 = v693;
    v355 = v655;
    if ((v655)(v353, 1, v693) == 1)
    {

      outlined destroy of TaskPriority?(v353, &_s7LyricsX0A0C8TextLineVSgMd);
      v658(v663, 1, 1, v659);
    }

    else
    {
      outlined init with copy of TaskPriority?(v353 + v354[7], v663, &_s10Foundation6LocaleV8LanguageVSgMd_0);

      outlined destroy of SyncedLyricsLineView.TextContentView.Content(v353, type metadata accessor for Lyrics.TextLine);
    }

    v375 = v642;
    v374 = v643;
    outlined init with copy of TaskPriority?(v352, v642, &_s7LyricsX0A0C8TextLineVSgMd);
    if ((v355)(v375, 1, v354) == 1)
    {
      outlined destroy of TaskPriority?(v375, &_s7LyricsX0A0C8TextLineVSgMd);
      v376 = 2;
    }

    else
    {
      v377 = (*(v375 + v354[15]))();
      outlined destroy of SyncedLyricsLineView.TextContentView.Content(v375, type metadata accessor for Lyrics.TextLine);
      v376 = v377 & 1;
    }

    LODWORD(v686) = v376;
    outlined init with copy of TaskPriority?(v352, v374, &_s7LyricsX0A0C8TextLineVSgMd);
    if ((v355)(v374, 1, v354) == 1)
    {
      outlined destroy of TaskPriority?(v374, &_s7LyricsX0A0C8TextLineVSgMd);
      v675 = 0;
      v681 = 0;
    }

    else
    {
      (*(v374 + v354[18]))(v720);
      v681 = v722;
      if (v722)
      {
        v675 = v721;

        outlined destroy of TaskPriority?(v720, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
      }

      else
      {
        v675 = 0;
      }

      outlined destroy of SyncedLyricsLineView.TextContentView.Content(v374, type metadata accessor for Lyrics.TextLine);
    }

    v516 = v352;
    v517 = v644;
    outlined init with copy of TaskPriority?(v516, v644, &_s7LyricsX0A0C8TextLineVSgMd);
    if ((v355)(v517, 1, v354) == 1)
    {
      outlined destroy of TaskPriority?(v517, &_s7LyricsX0A0C8TextLineVSgMd);
    }

    else
    {
      (*(v517 + v354[18]))(v723);
      outlined destroy of SyncedLyricsLineView.TextContentView.Content(v517, type metadata accessor for Lyrics.TextLine);
      if (v725)
      {
        v699 = v727;

        outlined destroy of TaskPriority?(v723, &_s7LyricsX0A0C8TextLineV16BackgroundVocalsVSgMd);
LABEL_239:
        v518 = objc_allocWithZone(v348);
        v519 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        *v519 = 0;
        v519[1] = 0;
        v693 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
        v674 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
        v520 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        *v520 = 0;
        v520[1] = 0;
        v521 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v523 = v658;
        v522 = v659;
        v658(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language], 1, 1, v659);
        v524 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v523(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v522);
        v525 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v523(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v522);
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
        v673 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
        v526 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
        *v526 = 2;
        *(v526 + 8) = 0u;
        *(v526 + 24) = 0u;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
        v527 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
        v527[4] = 0u;
        v527[5] = 0u;
        v527[2] = 0u;
        v527[3] = 0u;
        *v527 = 0u;
        v527[1] = 0u;
        v528 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

        outlined init with copy of SyncedLyricsViewController.Specs(v728, &v706);
        v529 = v682;

        *&v518[v528] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        v530 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v531 = v652;
        v532 = v689;
        *v530 = v652;
        v530[1] = v532;
        v533 = &v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v533 = v531;
        v533[1] = v532;
        swift_beginAccess();

        outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v669, &v518[v521], &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        swift_beginAccess();
        v534 = &v518[v524];
        v535 = v662;
        outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v662, v534, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        swift_beginAccess();
        v536 = v663;
        outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v663, &v518[v525], &_s10Foundation6LocaleV8LanguageVSgMd_0);
        swift_endAccess();
        v518[v674] = v686;
        v537 = v681;
        *v519 = v675;
        v519[1] = v537;

        *(v693 + v518) = v699;

        *v520 = v654;
        v520[1] = v529;

        memcpy(&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v728, 0x2B0uLL);
        *&v518[v673] = 0;
        v538 = v688;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v687;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v538;
        v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v691;
        *&v518[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v698;
        v702.receiver = v518;
        v702.super_class = v683;
        v539 = objc_msgSendSuper2(&v702, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        outlined destroy of TaskPriority?(v536, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        outlined destroy of TaskPriority?(v535, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        outlined destroy of TaskPriority?(v669, &_s10Foundation6LocaleV8LanguageVSgMd_0);
        v350 = v695;
        v540 = v680;
        v541 = *(v695 + v680);
        *(v695 + v680) = v539;

        v542 = *(v350 + v540);
        if (v542)
        {
          v543 = specialized static SyncedLyricsLineView.SBS_TextContentView.anchorPoint(for:)(v538);
          v545 = v544;
          v546 = v542;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v543, v545);

          v547 = *(v350 + v680);
          if (v547)
          {
            [v547 setAlpha:0.0];
            v548 = *(v350 + v680);
            if (v548)
            {
              v706 = v728[8];
              v707 = v728[9];
              v708 = v728[10];
              [v548 setTransform:&v706];
            }
          }
        }

        goto LABEL_243;
      }
    }

    v699 = 0;
    goto LABEL_239;
  }

LABEL_243:
  *(v350 + v678) = v691;
  v676[v350] = v692;
  v703.receiver = v350;
  v703.super_class = v679;
  v549 = objc_msgSendSuper2(&v703, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v550 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v551 = *&v549[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v552 = v677;
  if (!v551)
  {
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v553 = v549;
  v554 = v549;
  [v554 addSubview:v551];
  v555 = *&v554[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v555)
  {

    outlined destroy of SyncedLyricsViewController.Specs(v728);

    goto LABEL_249;
  }

  v556 = *&v553[v550];
  if (!v556)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v557 = v555;
  [v556 frame];
  v558 = *&v553[v550];
  if (v558)
  {
    v559 = v558;

    [v559 frame];

    [v557 frame];
    [v557 setFrame:?];

    [v554 addSubview:v557];
    outlined destroy of SyncedLyricsViewController.Specs(v728);
LABEL_249:
    outlined destroy of TaskPriority?(v552, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    outlined destroy of TaskPriority?(v685, &_s7LyricsX0A0C8TextLineVSgMd);
    outlined destroy of TaskPriority?(v684, &_s10Foundation6LocaleV8LanguageVSgMd_0);
    v560 = v660;
    v561 = *v660;
    *v660 = v554;
    v560[1] = &protocol witness table for SyncedLyricsLineView.SBS_TextContentView;
    v562 = v554;
    v563 = v700;
    SyncedLyricsLineView.contentView.didset(v561);

    v402 = v563;
    goto LABEL_299;
  }

LABEL_314:
  __break(1u);
}

id SyncedLyricsLineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView()
{
  result = type metadata singleton initialization cache for SyncedLyricsLineView;
  if (!type metadata singleton initialization cache for SyncedLyricsLineView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SyncedLyricsLineView()
{
  type metadata accessor for Lyrics.TextLine?(319, &lazy cache variable for type metadata for Lyrics.TextLine?, type metadata accessor for Lyrics.TextLine);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.TextLine?(319, &lazy cache variable for type metadata for Lyrics.Translation.Line?, type metadata accessor for Lyrics.Translation.Line);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Lyrics.TextLine?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type SyncedLyricsLineView.BackgroundVocalsPosition and conformance SyncedLyricsLineView.BackgroundVocalsPosition()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsLineView.BackgroundVocalsPosition and conformance SyncedLyricsLineView.BackgroundVocalsPosition;
  if (!lazy protocol witness table cache variable for type SyncedLyricsLineView.BackgroundVocalsPosition and conformance SyncedLyricsLineView.BackgroundVocalsPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsLineView.BackgroundVocalsPosition and conformance SyncedLyricsLineView.BackgroundVocalsPosition);
  }

  return result;
}

char *specialized SyncedLyricsLineView.init(line:transliteratedLine:translatedLine:alignment:specs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v11 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v13 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
  v15 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = a1;
  v17 = a2;
  v18 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  *v18 = 0;
  v18[1] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter] = 0;
  v19 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
  *v19 = 0;
  v19[8] = 1;
  outlined init with copy of ActionPerforming(v16, &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line]);
  swift_beginAccess();
  v44 = a3;
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a3, &v5[v12], &_s7LyricsX0A0C11TranslationV4LineVSgMd);
  swift_endAccess();
  *&v5[v14] = a4;
  memcpy(&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], a5, 0x2B0uLL);
  swift_beginAccess();
  outlined init with copy of SyncedLyricsViewController.Specs(a5, v46);
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a2, &v5[v10], &_s7LyricsX0A0C8TextLineVSgMd);
  swift_endAccess();
  v20 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter] = v20;
  v45.receiver = v5;
  v45.super_class = type metadata accessor for SyncedLyricsLineView();
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  [*&v21[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] setUserInteractionEnabled:0];
  v23 = *&v21[v22];
  v24 = v21;
  [v24 addSubview:v23];
  [v24 setExclusiveTouch:1];
  v25 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
  v26 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
  v46[0] = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
  v46[1] = v25;
  v46[2] = v26;
  [v24 setTransform:v46];
  v27 = [v24 layer];
  [v27 setShouldRasterize:1];

  v28 = [v24 layer];
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;

  [v28 setRasterizationScale:v31];
  v32 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter;
  v33 = *&v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v33 setValue:isa forKey:kCAFilterInputRadius];

  v35 = [v24 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004F2400;
  v37 = *&v24[v32];
  *(v36 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1);
  *(v36 + 32) = v37;
  v38 = v37;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v35 setFilters:v39];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v40 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(9, *(v40 + 40)))
  {
    v41 = [objc_opt_self() redColor];
    [v24 setBackgroundColor:v41];
  }

  SyncedLyricsLineView.updateContentView()();
  SyncedLyricsLineView.reset()();
  outlined destroy of TaskPriority?(v44, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
  outlined destroy of TaskPriority?(v17, &_s7LyricsX0A0C8TextLineVSgMd);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return v24;
}

uint64_t outlined init with take of Lyrics.TextLine(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SyncedLyricsLineView.TextContentView.Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of SyncedLyricsLineView.TextContentView.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048EAC8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10048EB34()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10048EB6C()
{

  return swift_deallocObject();
}

void specialized SyncedLyricsLineView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v4 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = (v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter) = 0;
  v7 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10048ED38()
{

  return swift_deallocObject();
}

uint64_t SyncedLyricsManager.Configuration.init(animationDuration:finishLineAnimationDuration:maxEndTimeOffset:maxSelectedLines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t SyncedLyricsManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
}

uint64_t SyncedLyricsManager.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
}

uint64_t SyncedLyricsManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncedLyricsManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return SyncedLyricsManager.delegate.modify;
}

void SyncedLyricsManager.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
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

uint64_t key path setter for SyncedLyricsManager.selectedLines : SyncedLyricsManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t SyncedLyricsManager.isPlayingSpatial.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

double SyncedLyricsManager.spatialOffset.getter()
{
  swift_beginAccess();
  result = 0.0;
  if (*(v0 + 88) == 1)
  {
    return Lyrics.spatialOffset.getter();
  }

  return result;
}

uint64_t SyncedLyricsManager.adjustedElapsedTime.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  if (v1)
  {

    v3 = v1(v2);
    swift_beginAccess();
    v4 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v4 = Lyrics.spatialOffset.getter();
    }

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v1);
    *&result = v3 - v4;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void SyncedLyricsManager.elapsedTimeProvider.didset()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if (v2)
  {

    v4 = v2(v3);
    swift_beginAccess();
    v5 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v5 = Lyrics.spatialOffset.getter();
    }

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2);
    v6 = v4 - v5;
    v7 = *(v0 + 16);
    Lyrics.line(before:useOriginalLines:)(0, &v20, v6 + 0.1);
    if (v21)
    {
      outlined init with take of ActionPerforming(&v20, &v22);
    }

    else
    {
      v19 = *(v7 + 40);
      if (*(v19 + 16))
      {
        outlined init with copy of ActionPerforming(v19 + 32, &v22);
        if (v21)
        {
          outlined destroy of TaskPriority?(&v20, &_s7LyricsX0A4Line_pSgMd);
        }
      }

      else
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
      }
    }

    if (*(&v23 + 1))
    {
      outlined init with take of ActionPerforming(&v22, v25);
      v9 = v26;
      v8 = v27;
      __swift_project_boxed_opaque_existential_0Tm(v25, v26);
      if ((*(*(v8 + 8) + 8))(v9) < v6 || (v11 = v26, v10 = v27, __swift_project_boxed_opaque_existential_0Tm(v25, v26), vabdd_f64(v6, (*(*(v10 + 8) + 8))(v11)) <= 0.1))
      {
        Lyrics.line(after:)(v25, &v22);
        swift_beginAccess();
        outlined assign with copy of LyricsLine?(&v22, v1 + 112);
        swift_endAccess();
        outlined destroy of TaskPriority?(&v22, &_s7LyricsX0A4Line_pSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D4Line_pGMd);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1004F2400;
        outlined init with copy of ActionPerforming(v25, v16 + 32);
        swift_beginAccess();
        *(v1 + 80) = v16;

        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_16:
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          return;
        }

        v17 = *(v1 + 72);
        ObjectType = swift_getObjectType();
        (*(v17 + 16))(v1, v25, 1, ObjectType, v17, v6);
      }

      else
      {
        outlined init with copy of ActionPerforming(v25, &v22);
        swift_beginAccess();
        outlined assign with copy of LyricsLine?(&v22, v1 + 112);
        swift_endAccess();
        outlined destroy of TaskPriority?(&v22, &_s7LyricsX0A4Line_pSgMd);
        swift_beginAccess();
        *(v1 + 80) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v1 + 72);
          v13 = swift_getObjectType();
          (*(v12 + 48))(v1, v13, v12);
          swift_unknownObjectRelease();
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_16;
        }

        v14 = *(v1 + 72);
        v15 = swift_getObjectType();
        (*(v14 + 16))(v1, v25, 0, v15, v14, v6);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    outlined destroy of TaskPriority?(&v22, &_s7LyricsX0A4Line_pSgMd);
  }

  SyncedLyricsManager.update()();
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
  SyncedLyricsManager.elapsedTimeProvider.didset();
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1);
}

void (*SyncedLyricsManager.elapsedTimeProvider.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SyncedLyricsManager.elapsedTimeProvider.modify;
}

void SyncedLyricsManager.elapsedTimeProvider.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    SyncedLyricsManager.elapsedTimeProvider.didset();
  }
}

uint64_t SyncedLyricsManager.__allocating_init(lyrics:configuration:delegate:isPlayingSpatial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 80) = _swiftEmptyArrayStorage;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 16) = a1;
  v10 = *(a2 + 16);
  *(v9 + 24) = *a2;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v9 + 72) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v9 + 88) = a5;
  return v9;
}

uint64_t SyncedLyricsManager.init(lyrics:configuration:delegate:isPlayingSpatial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = _swiftEmptyArrayStorage;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 16) = a1;
  v10 = *(a2 + 16);
  *(v5 + 24) = *a2;
  *(v5 + 40) = v10;
  *(v5 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v5 + 72) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 88) = a5;
  return v5;
}

Swift::Void __swiftcall SyncedLyricsManager.update()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v3 = &ObjectType - v2;
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SyncedLyricsManager.updateNextLineIfNeeded()();
  swift_beginAccess();
  outlined init with copy of LyricsLine?(v0 + 112, &v68);
  if (!v69)
  {
    outlined destroy of TaskPriority?(&v68, &_s7LyricsX0A4Line_pSgMd);
    return;
  }

  outlined init with take of ActionPerforming(&v68, v71);
  swift_beginAccess();
  v8 = *(v0 + 96);
  if (v8)
  {

    v10 = v8(v9);
    swift_beginAccess();
    v11 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v11 = Lyrics.spatialOffset.getter();
    }

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8);
    swift_beginAccess();
    v12 = *(v0 + 80);
    v13 = *(v12 + 16);
    if (v13)
    {
      outlined init with copy of ActionPerforming(v12 + 40 * v13 - 8, &v68);
      v15 = v72;
      v14 = v73;
      __swift_project_boxed_opaque_existential_0Tm(v71, v72);
      v16 = (*(*(v14 + 8) + 8))(v15);
      v18 = v69;
      v17 = v70;
      __swift_project_boxed_opaque_existential_0Tm(&v68, v69);
      v19 = v16 - (*(v17[1] + 2))(v18);
      swift_beginAccess();
      v20 = *(v1 + 24);

      v22 = v20(v21, v19);

      __swift_destroy_boxed_opaque_existential_0Tm(&v68);
    }

    else
    {
      swift_beginAccess();
      v23 = *(v0 + 24);

      v22 = v23(v24, 0.0);
    }

    v25 = v10 - v11;
    v26 = *(v1 + 80);
    v27 = *(v26 + 16);
    v65 = v5;
    if (v27)
    {
      outlined init with copy of ActionPerforming(v26 + 40 * v27 - 8, &v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
      if (swift_dynamicCast())
      {
        v28 = v66[0];
        v29 = v66[1];
        v30 = v66[2];
        v31 = v67;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v32 = *(v1 + 72);
          ObjectType = swift_getObjectType();
          v69 = &type metadata for Lyrics.InstrumentalLine;
          v70 = &protocol witness table for Lyrics.InstrumentalLine;
          v33 = swift_allocObject();
          *&v68 = v33;
          *(v33 + 16) = v28;
          *(v33 + 24) = v29;
          *(v33 + 32) = v30;
          *(v33 + 40) = v31;
          (*(v32 + 24))(v1, &v68, ObjectType, v32, v25);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(&v68);
        }
      }
    }

    swift_beginAccess();
    if (calculateNextLineAction #1 (elapsedTime:) in SyncedLyricsManager.update()(v71, v1, v25 + *(v1 + 40), v22) == 1)
    {
      v34 = *(v1 + 80);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + 32;

        swift_beginAccess();
        do
        {
          outlined init with copy of ActionPerforming(v36, &v68);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v37 = *(v1 + 72);
            v38 = swift_getObjectType();
            (*(v37 + 40))(v1, &v68, v38, v37);
            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v68);
          v36 += 40;
          --v35;
        }

        while (v35);
      }
    }

    v40 = v72;
    v39 = v73;
    __swift_project_boxed_opaque_existential_0Tm(v71, v72);
    if ((*(*(v39 + 8) + 8))(v40) <= v25 + v22)
    {
      v41 = *(v1 + 80);
      v42 = *(v41 + 16);
      if (v42)
      {
        outlined init with copy of ActionPerforming(v41 + 40 * v42 - 8, &v68);
        v44 = v72;
        v43 = v73;
        __swift_project_boxed_opaque_existential_0Tm(v71, v72);
        v45 = (*(*(v43 + 8) + 8))(v44);
        v47 = v69;
        v46 = v70;
        __swift_project_boxed_opaque_existential_0Tm(&v68, v69);
        v48 = (*(v46[1] + 2))(v47);
        v50 = v69;
        v49 = v70;
        __swift_project_boxed_opaque_existential_0Tm(&v68, v69);
        v51 = (*(v49[1] + 2))(v50) - *(v1 + 48);
        outlined init with copy of ActionPerforming(v71, v66);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
        if (swift_dynamicCast())
        {
          v52 = v65;
          if (v51 < v25)
          {
            goto LABEL_34;
          }
        }

        else
        {
          outlined init with copy of ActionPerforming(&v68, v66);
          v53 = swift_dynamicCast();
          v52 = v65;
          if (!v53 && *(*(v1 + 80) + 16) < *(v1 + 56))
          {
            v54 = v72;
            v55 = v73;
            __swift_project_boxed_opaque_existential_0Tm(v71, v72);
            ObjectType = (*(v55 + 16))(v54, v55);
            v57 = v69;
            v56 = v70;
            __swift_project_boxed_opaque_existential_0Tm(&v68, v69);
            v58 = (v56[2])(v57, v56);
            if (v58 < ObjectType)
            {
              v60 = v72;
              v59 = v73;
              __swift_project_boxed_opaque_existential_0Tm(v71, v72);
              if ((*(*(v59 + 8) + 8))(v60) < v25)
              {
                SyncedLyricsManager.selectLine(line:)(v71);
                goto LABEL_36;
              }
            }
          }

          if (v51 < v25)
          {
LABEL_34:
            SyncedLyricsManager.moveToLine(line:elapsedTime:gap:)(v71, COERCE__INT64(v45 - v48), 0, v25);
            goto LABEL_36;
          }
        }

        outlined init with copy of ActionPerforming(&v68, v66);
        v61 = swift_dynamicCast();
        v62 = *(v52 + 56);
        if ((v61 & 1) == 0)
        {
          v62(v3, 1, 1, v4);
          outlined destroy of TaskPriority?(v3, &_s7LyricsX0A0C8TextLineVSgMd);
          goto LABEL_36;
        }

        v62(v3, 0, 1, v4);
        outlined init with take of Lyrics.TextLine(v3, v7);
        v63 = *&v7[*(v4 + 44)];
        outlined destroy of Lyrics.TextLine(v7);
        if (v63 - *(v1 + 48) < v25)
        {
          goto LABEL_34;
        }

LABEL_36:
        __swift_destroy_boxed_opaque_existential_0Tm(&v68);
        goto LABEL_37;
      }

      SyncedLyricsManager.moveToLine(line:elapsedTime:gap:)(v71, 0, 1, v25);
    }
  }

LABEL_37:
  __swift_destroy_boxed_opaque_existential_0Tm(v71);
}

uint64_t calculateNextLineAction #1 (elapsedTime:) in SyncedLyricsManager.update()(void *a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v9 = v34 - v8 + 24;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  if ((*(*(v14 + 8) + 8))(v15) <= a3 + a4)
  {
    swift_beginAccess();
    v16 = *(a2 + 80);
    v17 = *(v16 + 16);
    if (v17)
    {
      outlined init with copy of ActionPerforming(v16 + 40 * v17 - 8, v35);
      v19 = v36;
      v18 = v37;
      __swift_project_boxed_opaque_existential_0Tm(v35, v36);
      v20 = (*(*(v18 + 8) + 16))(v19);
      swift_beginAccess();
      v21 = v20 - *(a2 + 48);
      outlined init with copy of ActionPerforming(a1, v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
      if (!swift_dynamicCast())
      {
        outlined init with copy of ActionPerforming(v35, v34);
        if (!swift_dynamicCast() && *(*(a2 + 80) + 16) < *(a2 + 56))
        {
          v22 = a1[3];
          v23 = a1[4];
          __swift_project_boxed_opaque_existential_0Tm(a1, v22);
          v33 = (*(v23 + 16))(v22, v23);
          v25 = v36;
          v24 = v37;
          __swift_project_boxed_opaque_existential_0Tm(v35, v36);
          v26 = (*(v24 + 16))(v25, v24);
          if (v26 < v33)
          {
            v28 = a1[3];
            v27 = a1[4];
            __swift_project_boxed_opaque_existential_0Tm(a1, v28);
            if ((*(*(v27 + 8) + 8))(v28) < a3)
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v35);
              return 2;
            }
          }
        }
      }

      if (v21 < a3)
      {
        goto LABEL_10;
      }

      outlined init with copy of ActionPerforming(v35, v34);
      v30 = swift_dynamicCast();
      v31 = *(v11 + 56);
      if (v30)
      {
        v31(v9, 0, 1, v10);
        outlined init with take of Lyrics.TextLine(v9, v13);
        v32 = *&v13[*(v10 + 44)];
        outlined destroy of Lyrics.TextLine(v13);
        if (v32 - *(a2 + 48) < a3)
        {
LABEL_10:
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          return 1;
        }
      }

      else
      {
        v31(v9, 1, 1, v10);
        outlined destroy of TaskPriority?(v9, &_s7LyricsX0A0C8TextLineVSgMd);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }
  }

  return 0;
}

uint64_t SyncedLyricsManager.moveToLine(line:elapsedTime:gap:)(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX0D4Line_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(a1, v10 + 32);
  swift_beginAccess();
  *(v5 + 80) = v10;

  Lyrics.line(after:)(a1, v14);
  swift_beginAccess();
  outlined assign with copy of LyricsLine?(v14, v5 + 112);
  swift_endAccess();
  outlined destroy of TaskPriority?(v14, &_s7LyricsX0A4Line_pSgMd);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v5 + 72);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v5, a1, a2, a3 & 1, ObjectType, v12, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SyncedLyricsManager.selectLine(line:)(void *a1)
{
  v2 = v1;
  outlined init with copy of ActionPerforming(a1, v18);
  swift_beginAccess();
  v4 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 80) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v8 = v19;
  v9 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v10 = __chkstk_darwin();
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  (*(v13 + 16))(v12, v10);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7, v12, (v2 + 80), v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  *(v2 + 80) = v4;
  swift_endAccess();
  Lyrics.line(after:)(a1, v18);
  swift_beginAccess();
  outlined assign with copy of LyricsLine?(v18, v2 + 112);
  swift_endAccess();
  outlined destroy of TaskPriority?(v18, &_s7LyricsX0A4Line_pSgMd);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v2, a1, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SyncedLyricsManager.updateNextLineIfNeeded()()
{
  v1 = v0;
  swift_beginAccess();
  outlined init with copy of LyricsLine?(v0 + 112, &v19);
  v2 = *(&v20 + 1);
  result = outlined destroy of TaskPriority?(&v19, &_s7LyricsX0A4Line_pSgMd);
  if (!v2)
  {
    result = swift_beginAccess();
    v4 = *(v1 + 96);
    if (v4)
    {

      v6 = v4(v5);
      swift_beginAccess();
      v7 = 0.0;
      if (*(v1 + 88) == 1)
      {
        v7 = Lyrics.spatialOffset.getter();
      }

      result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v4);
      v8 = *(v1 + 16);
      v9 = *(v8 + 40);
      if (*(v9 + 16))
      {
        v10 = v6 - v7;
        outlined init with copy of ActionPerforming(v9 + 32, &v19);
        v12 = *(&v20 + 1);
        v11 = v21;
        __swift_project_boxed_opaque_existential_0Tm(&v19, *(&v20 + 1));
        v13 = (*(*(v11 + 8) + 8))(v12);
        __swift_destroy_boxed_opaque_existential_0Tm(&v19);
        if (v10 <= v13)
        {
          v16 = *(v8 + 40);
          if (*(v16 + 16))
          {
            outlined init with copy of ActionPerforming(v16 + 32, &v19);
          }

          else
          {
            v21 = 0;
            v19 = 0u;
            v20 = 0u;
          }

          swift_beginAccess();
          outlined assign with copy of LyricsLine?(&v19, v1 + 112);
          swift_endAccess();
          return outlined destroy of TaskPriority?(&v19, &_s7LyricsX0A4Line_pSgMd);
        }

        else
        {
          Lyrics.line(before:useOriginalLines:)(0, &v17, v10);
          if (v18)
          {
            outlined init with take of ActionPerforming(&v17, &v19);
            v15 = *(&v20 + 1);
            v14 = v21;
            __swift_project_boxed_opaque_existential_0Tm(&v19, *(&v20 + 1));
            if (v10 >= (*(*(v14 + 8) + 16))(v15))
            {
              Lyrics.line(after:)(&v19, &v17);
            }

            else
            {
              outlined init with copy of ActionPerforming(&v19, &v17);
            }

            swift_beginAccess();
            outlined assign with copy of LyricsLine?(&v17, v1 + 112);
            swift_endAccess();
            outlined destroy of TaskPriority?(&v17, &_s7LyricsX0A4Line_pSgMd);
            return __swift_destroy_boxed_opaque_existential_0Tm(&v19);
          }

          else
          {
            return outlined destroy of TaskPriority?(&v17, &_s7LyricsX0A4Line_pSgMd);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of LyricsLine?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SyncedLyricsManager.deinit()
{

  outlined destroy of weak ActionsObserver?(v0 + 64);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 96));
  outlined destroy of TaskPriority?(v0 + 112, &_s7LyricsX0A4Line_pSgMd);
  return v0;
}

uint64_t SyncedLyricsManager.__deallocating_deinit()
{

  outlined destroy of weak ActionsObserver?(v0 + 64);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + 96));
  outlined destroy of TaskPriority?(v0 + 112, &_s7LyricsX0A4Line_pSgMd);

  return swift_deallocClassInstance();
}

uint64_t sub_100490D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ActionPerforming(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined assign with copy of LyricsLine?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

CFIndex one-time initialization function for shadowOpacity(uint64_t a1, uint64_t a2)
{
  result = CFRange.init(_:)(*&a1).location;
  static SyncedLyricsTimestampLabel.Specs.shadowOpacity = v3;
  return result;
}

void SyncedLyricsTimestampLabel.line.didset()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd_0);
  __chkstk_darwin();
  v3 = &v26 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd_0);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  outlined init with copy of LyricsLine?(v1 + v10, &v27);
  if (!v28)
  {
    outlined destroy of LyricsLine?(&v27);
    [*(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label) setText:0];
    return;
  }

  outlined init with take of ActionPerforming(&v27, v29);
  v12 = v30;
  v11 = v31;
  __swift_project_boxed_opaque_existential_0Tm(v29, v30);
  v13 = (*(*(v11 + 8) + 8))(v12);
  v14 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label);
  if (v13 >= 60.0)
  {
    v23 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter);
    v25 = v30;
    v24 = v31;
    __swift_project_boxed_opaque_existential_0Tm(v29, v30);
    (*(*(v24 + 8) + 8))(v25);
    v22 = [v23 stringFromTimeInterval:?];
    goto LABEL_9;
  }

  v15 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter);
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = type metadata accessor for TimeZone();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v19 = v30;
  v18 = v31;
  __swift_project_boxed_opaque_existential_0Tm(v29, v30);
  v20 = (*(*(v18 + 8) + 8))(v19);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  isa = DateComponents._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  v22 = [v15 stringFromDateComponents:isa];

LABEL_9:
  [v14 setText:v22];

  __swift_destroy_boxed_opaque_existential_0Tm(v29);
}

char *SyncedLyricsTimestampLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *&v5[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = UIView.forAutolayout.getter();

  *&v5[v11] = v13;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v15 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v15 setZeroFormattingBehavior:0x10000];
  [v15 setAllowedUnits:192];
  *&v5[v14] = v15;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  *&v5[v16] = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v17 = &v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = 1;
  v70.receiver = v5;
  v70.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  v18 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  v20 = *&v18[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
  v21 = v18;
  [v21 addSubview:v20];
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() systemImageNamed:v22];

  if (v23)
  {
    v24 = UIFontTextStyleCaption2;
    v25 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
    v26 = [objc_opt_self() configurationWithFont:v25 scale:1];

    v27 = [v23 imageWithSymbolConfiguration:v26];
  }

  else
  {
    v27 = 0;
    v24 = UIFontTextStyleCaption2;
  }

  v69 = v27;
  v28 = [objc_allocWithZone(UIImageView) initWithImage:v27];
  v29 = UIView.forAutolayout.getter();

  v30 = *&v18[v19];
  v31 = v29;
  [v30 addSubview:v31];
  v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v33 = *&v21[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 preferredFontForTextStyle:v24];
  [v35 setFont:v36];

  [*&v21[v32] _setTextColorFollowsTintColor:1];
  [*&v18[v19] addSubview:*&v21[v32]];
  v37 = [v21 layer];

  v38 = objc_opt_self();
  v39 = [v38 blackColor];
  v40 = [v39 CGColor];

  [v37 setShadowColor:v40];
  v41 = [v21 layer];

  if (one-time initialization token for shadowOpacity != -1)
  {
    swift_once();
  }

  HIDWORD(v42) = HIDWORD(static SyncedLyricsTimestampLabel.Specs.shadowOpacity);
  *&v42 = *&static SyncedLyricsTimestampLabel.Specs.shadowOpacity;
  [v41 setShadowOpacity:v42];

  v43 = [v21 layer];
  [v43 setShadowOffset:{2.0, 8.0}];

  v44 = [v38 blackColor];
  [v21 setTintColor:v44];

  SyncedLyricsTimestampLabel.updateBackground()();
  v45 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_2);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1004F3060;
  v47 = [v31 centerYAnchor];

  v48 = [v21 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v46 + 32) = v49;
  v50 = [v31 leadingAnchor];

  v51 = [v21 leadingAnchor];
  if (one-time initialization token for horizontalMargins != -1)
  {
    swift_once();
  }

  v52 = *&static SyncedLyricsTimestampLabel.Specs.horizontalMargins;
  v53 = [v50 constraintEqualToAnchor:v51 constant:*&static SyncedLyricsTimestampLabel.Specs.horizontalMargins];

  *(v46 + 40) = v53;
  v54 = [*&v21[v32] topAnchor];
  v55 = [v21 topAnchor];

  if (one-time initialization token for verticalMargins != -1)
  {
    swift_once();
  }

  v56 = *&static SyncedLyricsTimestampLabel.Specs.verticalMargins;
  v57 = [v54 constraintEqualToAnchor:v55 constant:*&static SyncedLyricsTimestampLabel.Specs.verticalMargins];

  *(v46 + 48) = v57;
  v58 = [*&v21[v32] bottomAnchor];
  v59 = [v21 bottomAnchor];

  v60 = [v58 constraintEqualToAnchor:v59 constant:-v56];
  *(v46 + 56) = v60;
  v61 = [*&v21[v32] leadingAnchor];
  v62 = [v31 trailingAnchor];

  if (one-time initialization token for textLeadingMargin != -1)
  {
    swift_once();
  }

  v63 = [v61 constraintEqualToAnchor:v62 constant:*&static SyncedLyricsTimestampLabel.Specs.textLeadingMargin];

  *(v46 + 64) = v63;
  v64 = [*&v21[v32] trailingAnchor];
  v65 = [v21 trailingAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:-v52];
  *(v46 + 72) = v66;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];

  return v21;
}

Swift::Void __swiftcall SyncedLyricsTimestampLabel.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 frame];
  v1 = CGRectGetHeight(v11) * 0.5;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
  [v2 _setContinuousCornerRadius:v1];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 layer];
  [v0 bounds];
  v8 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v5, v6, v7, v1}];
  v9 = [v8 CGPath];

  [v3 setShadowPath:v9];
}

Swift::Void __swiftcall SyncedLyricsTimestampLabel.updateBackground()()
{
  v1 = v0;
  type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin();
  v2 = type metadata accessor for _Glass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
    v7 = v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
    v8 = objc_opt_self();
    v9 = &selRef_whiteColor;
    if (!v7)
    {
      v9 = &selRef_grayColor;
    }

    v10 = [v8 *v9];
    [v6 setBackgroundColor:v10];
  }

  else
  {
    if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
    {
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v11 = [objc_opt_self() whiteColor];
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      __swift_allocate_boxed_opaque_existential_1(v15);
      _Glass.tint(_:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      static _Glass._GlassVariant.regular.getter();
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      __swift_allocate_boxed_opaque_existential_1(v15);
      _Glass.init(_:smoothness:)();
    }

    UIView._background.setter();
  }

  v12 = [v1 layer];
  v13 = 0.0;
  if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
  {
    if (one-time initialization token for shadowOpacity != -1)
    {
      swift_once();
    }

    HIDWORD(v13) = HIDWORD(static SyncedLyricsTimestampLabel.Specs.shadowOpacity);
    *&v13 = *&static SyncedLyricsTimestampLabel.Specs.shadowOpacity;
  }

  [v12 setShadowOpacity:v13];
}

id SyncedLyricsTimestampLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsTimestampLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized SyncedLyricsTimestampLabel.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *(v1 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v7 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v7 setZeroFormattingBehavior:0x10000];
  [v7 setAllowedUnits:192];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  *(v1 + v8) = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v9 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for NSLayoutConstraint()
{
  result = _sSo18NSLayoutConstraintCML_1;
  if (!_sSo18NSLayoutConstraintCML_1)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo18NSLayoutConstraintCML_1);
  }

  return result;
}

uint64_t outlined destroy of LyricsLine?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SyncedLyricsViewController.Specs.lineChangeSpringTimingParameters.getter()
{
  v1 = v0[83];
  v2 = v0[84];
  v3 = v0[85];
  v4 = objc_allocWithZone(UISpringTimingParameters);

  return [v4 initWithMass:v1 stiffness:v2 damping:v3 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.liftSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.backgroundVocalsSpringTimingParameters(showing:)(char a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(UISpringTimingParameters);

    return [v1 initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
    return UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
  }
}

id static SyncedLyricsViewController.Specs.opacityAnimator()()
{
  v0 = objc_allocWithZone(UIViewPropertyAnimator);

  return [v0 initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
}

void static SyncedLyricsViewController.Specs.animateWithHighlightAnimationCurves(highlighted:fadeAnimations:transformAnimations:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(UISpringTimingParameters);
  if (a1)
  {
    v11 = 24.0;
  }

  else
  {
    v11 = 50.0;
  }

  v12 = 322.0;
  if ((a1 & 1) == 0)
  {
    v12 = 300.0;
  }

  v13 = 2.0;
  if (a1)
  {
    v13 = 1.0;
    v14 = 0.0;
  }

  else
  {
    v14 = 0.1;
  }

  if (a1)
  {
    v15 = 0.2;
  }

  else
  {
    v15 = 0.3;
  }

  v16 = [v10 initWithMass:v13 stiffness:v12 damping:v11 initialVelocity:{0.0, 0.0}];
  v17 = specialized static SyncedLyricsViewController.Specs.highlightAnimationFactory(highlighted:)(a1);
  v18 = objc_opt_self();
  v33 = a2;
  v34 = a3;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed () -> ();
  v32 = &block_descriptor_89;
  v19 = _Block_copy(&v29);
  swift_unknownObjectRetain();

  [v18 _animateWithDuration:0 delay:v17 options:v19 factory:0 animations:v15 completion:v14];
  _Block_release(v19);
  swift_unknownObjectRelease();
  [v16 settlingDuration];
  v21 = v20;
  [v16 mass];
  v23 = v22;
  [v16 stiffness];
  v25 = v24;
  [v16 damping];
  v27 = v26;
  v33 = a4;
  v34 = a5;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed () -> ();
  v32 = &block_descriptor_3_8;
  v28 = _Block_copy(&v29);

  [v18 _animateUsingSpringWithDuration:0 delay:v28 options:0 mass:v21 stiffness:v14 damping:v23 initialVelocity:v25 animations:v27 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v28);
}

BOOL static SyncedLyricsViewController.Specs.SelectedLinePosition.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    if ((*(a2 + 32) & 0x80000000) == 0)
    {
      return *a2 == *a1;
    }

    return 0;
  }

  v4 = *(a2 + 32);
  if ((v4 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v4 & 1) != 0;
  }

  else
  {
    return (v4 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SyncedLyricsViewController.Specs.SelectedLinePosition(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    return (v3 & 0x80000000) == 0 && *a1 == *a2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v3 & 1) != 0;
  }

  else
  {
    return (v3 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsViewController.Specs.lineTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.songwritersTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.fontLeading.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

void *SyncedLyricsViewController.Specs.translationTextColor.getter()
{
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  result = *(v1 + 432);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v2;
  result = *(a1 + 32);
  *(v1 + 432) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *a1 = *(v1 + 512);
  *(a1 + 16) = v2;
  result = *(v1 + 544);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 512) = *a1;
  *(v1 + 528) = v2;
  result = *(a1 + 32);
  *(v1 + 544) = result;
  return result;
}

void *SyncedLyricsViewController.Specs.with(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  outlined init with copy of SyncedLyricsViewController.Specs(v2, &v6);
  a1(__dst);
  return memcpy(a2, __dst, 0x2B0uLL);
}

void *SyncedLyricsViewController.Specs.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.default;
}

void closure #1 in variable initialization expression of static SyncedLyricsViewController.Specs.iPad(uint64_t a1)
{
  *(a1 + 16) = 0x4034000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_1005181A0;
  *(a1 + 184) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:32.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  v5 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 264) = v5;
  v6 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 272) = v6;
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 280) = v7;
  v8 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 312) = v8;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 320) = v9;
  *(a1 + 208) = 0x404A000000000000;
  *(a1 + 216) = 0;
  v10 = [v2 preferredFontForTextStyle:UIFontTextStyleBody];

  *(a1 + 344) = v10;
}

void *SyncedLyricsViewController.Specs.iPad.unsafeMutableAddressor()
{
  if (one-time initialization token for iPad != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.iPad;
}

void closure #1 in variable initialization expression of static SyncedLyricsViewController.Specs.vision(uint64_t a1)
{
  *(a1 + 16) = 0x4042000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_1005181A0;
  *(a1 + 184) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:56.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:34.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  v5 = [v2 systemFontOfSize:26.0 weight:UIFontWeightBold];

  *(a1 + 264) = v5;
  v6 = [v2 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 272) = v6;
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 280) = v7;
  v8 = [v2 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 312) = v8;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 320) = v9;
  *(a1 + 656) = 0;
  *(a1 + 208) = 0x404C000000000000;
  *(a1 + 216) = 0;
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.175];

  *(a1 + 496) = v12;
  v13 = [v10 whiteColor];

  *(a1 + 488) = v13;
  v14 = [v10 whiteColor];
  v15 = [v14 colorWithAlphaComponent:0.35];

  v16 = [v10 labelColor];
  v17 = [v16 colorWithAlphaComponent:0.55];

  v18 = objc_allocWithZone(UIColor);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v15;
  v25[4] = _sSo7UIColorC7LyricsXE6normal12highContrastA2B_ABtc33_721F05E5229E32246B486C601D4C7EC8LlfcABSo17UITraitCollectionCcfU_TA_0;
  v25[5] = v19;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v25[3] = &block_descriptor_73_1;
  v20 = _Block_copy(v25);
  v21 = v17;
  v22 = v15;

  v23 = [v18 initWithDynamicProvider:v20];

  _Block_release(v20);
  *(a1 + 360) = v23;
  v24 = [v2 systemFontOfSize:20.0];

  *(a1 + 344) = v24;
}

void *SyncedLyricsViewController.Specs.vision.unsafeMutableAddressor()
{
  if (one-time initialization token for vision != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.vision;
}

double closure #1 in variable initialization expression of static SyncedLyricsViewController.Specs.tv(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:76.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  *(a1 + 112) = 0x4059000000000000;
  *(a1 + 624) = 0x4008000000000000;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  v4 = [v2 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
  v5 = [v2 systemFontOfSize:35.0 weight:UIFontWeightBold];

  *(a1 + 264) = v5;
  v6 = [v2 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 272) = v6;
  v7 = [v2 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 280) = v7;
  v8 = [v2 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 312) = v8;
  v9 = [v2 systemFontOfSize:21.0 weight:UIFontWeightBold];

  *(a1 + 320) = v9;
  objc_storeStrong((a1 + 392), *(a1 + 368));
  v10 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 232) = v10;
  v11 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 240) = v11;
  *(a1 + 608) = xmmword_1005181B0;
  *(a1 + 656) = 16842752;
  *(a1 + 664) = 0x3FF0000000000000;
  result = 68.0;
  *(a1 + 672) = xmmword_1005181C0;
  return result;
}

void *SyncedLyricsViewController.Specs.tv.unsafeMutableAddressor()
{
  if (one-time initialization token for tv != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.tv;
}

void closure #1 in variable initialization expression of static SyncedLyricsViewController.Specs.alternative(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -127;
  *(a1 + 192) = 1;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 200) = v3;
  v4 = [v2 systemFontOfSize:24.0 weight:UIFontWeightBold];

  *(a1 + 224) = v4;
}

void *SyncedLyricsViewController.Specs.alternative.unsafeMutableAddressor()
{
  if (one-time initialization token for alternative != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.alternative;
}

void closure #1 in variable initialization expression of static SyncedLyricsViewController.Specs.static(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #3.0 }

  *(a1 + 112) = _Q0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v7 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 200) = v7;
  v8 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 224) = v8;
  v9 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 232) = v9;
  v10 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 240) = v10;
  v11 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 264) = v11;
  v12 = static UIFont.preferredFont(forTextStyle:weight:)();

  *(a1 + 272) = v12;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x4010000000000000;
  v13 = objc_opt_self();
  v14 = [v13 labelColor];

  *(a1 + 352) = v14;
  v15 = [v13 labelColor];

  *(a1 + 360) = v15;
  v16 = [v13 labelColor];

  *(a1 + 368) = v16;
  v17 = [v13 labelColor];

  *(a1 + 376) = v17;
  v18 = [v13 labelColor];

  *(a1 + 384) = v18;
  v19 = [v13 labelColor];

  *(a1 + 392) = v19;
  v20 = [v13 secondaryLabelColor];

  *(a1 + 288) = v20;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 657) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
}

void *SyncedLyricsViewController.Specs.static.unsafeMutableAddressor()
{
  if (one-time initialization token for static != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.static;
}

uint64_t static SyncedLyricsViewController.Specs.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return outlined init with copy of SyncedLyricsViewController.Specs(a2, v4);
}

UISpringTimingParameters __swiftcall SyncedLyricsViewController.Specs.syllableBySyllableLineChangeSpringTimingParameters(gap:)(Swift::Double_optional gap)
{
  if (v1)
  {
    v3 = v2[83];
    v4 = v2[84];
    v5 = v2[85];
    v6 = objc_allocWithZone(UISpringTimingParameters);

    return [v6 initWithMass:v3 stiffness:v4 damping:v5 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    v8 = 0.75;
    if (*&gap.is_nil <= 0.75)
    {
      v8 = *&gap.is_nil;
    }

    v9 = (v8 + -0.2) / 0.55;
    v10 = 0.0;
    if (*&gap.is_nil >= 0.2)
    {
      v10 = v9;
    }

    v11 = (1.0 - v10) * 0.12 + 0.78;
    v12 = v10 * 0.27 + 0.48;
    type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
    return UISpringTimingParameters.init(dampingRatio:response:)(v11, v12);
  }
}

id static SyncedLyricsViewController.Specs.tapSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
}

id SyncedLyricsViewController.Specs.CustomCurveAnimationFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsViewController.Specs.CustomCurveAnimationFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SyncedLyricsViewController.Specs(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return specialized static SyncedLyricsViewController.Specs.__derived_struct_equals(_:_:)(v4, __dst);
}

id closure #1 in UIColor.init(normal:highContrast:)(void *a1, void *a2, void *a3)
{
  v4 = [a1 accessibilityContrast];
  if (v4 == -1)
  {
    v6 = a3;
  }

  else
  {
    v5 = v4 == 1;
    v6 = a3;
    if (v5)
    {
      v6 = a2;
    }
  }

  return v6;
}

BOOL specialized static SyncedLyricsViewController.Specs.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[48];
  v3 = a2[48];
  if (v2 < 0)
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3)
      {
        return 0;
      }

      v6 = a1;
      v7 = a2;
      v8 = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (!v9)
      {
        return 0;
      }
    }
  }

  else if (v3 < 0 || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v4 = a2[88];
  if (a1[88])
  {
    if (!a2[88])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v10 = a2[104];
  if (a1[104])
  {
    if (!a2[104])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 12) != *(a2 + 12))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  if (*(a1 + 15) != *(a2 + 15))
  {
    return 0;
  }

  v11 = a1;
  v12 = a2;
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v11[22] != v12[22])
  {
    return 0;
  }

  if (v11[23] != v12[23])
  {
    return 0;
  }

  if (*(v11 + 24) != *(v12 + 24))
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_2);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v12 + 216);
  if (v11[27])
  {
    if (!*(v12 + 216))
    {
      return 0;
    }
  }

  else
  {
    if (v11[26] != v12[26])
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || v11[31] != v12[31] || v11[32] != v12[32] || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v11 + 36);
  v15 = *(v12 + 36);
  if (!v14)
  {
    if (!v15)
    {
      return v11[37] == v12[37] && v11[38] == v12[38] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[41] == v12[41] && v11[42] == v12[42] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[56] == v12[56] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[58] == v12[58] && v11[59] == v12[59] && v11[60] == v12[60] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[63] == v12[63] && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[70] == v12[70] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[72] == v12[72] && v11[73] == v12[73] && *(v11 + 74) == *(v12 + 74) && v11[75] == v12[75] && v11[76] == v12[76] && v11[77] == v12[77] && v11[78] == v12[78] && v11[79] == v12[79] && v11[80] == v12[80] && v11[81] == v12[81] && ((*(v11 + 656) ^ *(v12 + 656)) & 1) == 0 && ((*(v11 + 657) ^ *(v12 + 657)) & 1) == 0 && ((*(v11 + 658) ^ *(v12 + 658)) & 1) == 0 && ((*(v11 + 659) ^ *(v12 + 659)) & 1) == 0 && v11[83] == v12[83] && v11[84] == v12[84] && v11[85] == v12[85];
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
  v16 = v15;
  v17 = v14;
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return v11[37] == v12[37] && v11[38] == v12[38] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[41] == v12[41] && v11[42] == v12[42] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[56] == v12[56] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[58] == v12[58] && v11[59] == v12[59] && v11[60] == v12[60] && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[63] == v12[63] && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && v11[70] == v12[70] && (static NSObject.== infix(_:_:)() & 1) != 0 && v11[72] == v12[72] && v11[73] == v12[73] && *(v11 + 74) == *(v12 + 74) && v11[75] == v12[75] && v11[76] == v12[76] && v11[77] == v12[77] && v11[78] == v12[78] && v11[79] == v12[79] && v11[80] == v12[80] && v11[81] == v12[81] && ((*(v11 + 656) ^ *(v12 + 656)) & 1) == 0 && ((*(v11 + 657) ^ *(v12 + 657)) & 1) == 0 && ((*(v11 + 658) ^ *(v12 + 658)) & 1) == 0 && ((*(v11 + 659) ^ *(v12 + 659)) & 1) == 0 && v11[83] == v12[83] && v11[84] == v12[84] && v11[85] == v12[85];
}

void *specialized SyncedLyricsViewController.Specs.init(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  *&__src[8] = 0x404E000000000000;
  *&__src[16] = 0x4028000000000000uLL;
  memset(&__src[32], 0, 17);
  *&__src[56] = xmmword_1005181D0;
  *&__src[72] = 0x4043800000000000;
  *&__src[80] = 0;
  __src[88] = 1;
  *&__src[96] = 0;
  __src[104] = 1;
  *&__src[112] = xmmword_1005181E0;
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  *&__src[128] = aBlock;
  *&__src[176] = xmmword_1005181F0;
  *&__src[192] = 2;
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  *&__src[200] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[208] = 0;
  __src[216] = 1;
  *&__src[224] = static UIFont.shortEmphasizedPreferredFont(forTextStyle:)();
  v2 = objc_opt_self();
  *&__src[232] = [v2 systemFontOfSize:22.0 weight:UIFontWeightBold];
  *&__src[240] = [v2 systemFontOfSize:22.0 weight:UIFontWeightSemibold];
  *&__src[248] = xmmword_100518200;
  *&__src[264] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[272] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[280] = [v2 systemFontOfSize:14.0 weight:UIFontWeightBold];
  *&__src[288] = 0;
  *&__src[296] = Int.seconds.getter(7);
  *&__src[304] = Int.seconds.getter(4);
  *&__src[312] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[320] = static UIFont.preferredFont(forTextStyle:weight:)();
  *&__src[328] = Int.seconds.getter(5);
  *&__src[336] = *&__src[328];
  *&__src[344] = [v2 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v3 labelColor];
  v6 = objc_allocWithZone(UIColor);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v7;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_80_1;
  v8 = _Block_copy(&aBlock);
  v9 = v5;
  v10 = v4;

  v11 = [v6 initWithDynamicProvider:v8];

  _Block_release(v8);
  *&__src[352] = v11;
  v12 = [v3 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.35];

  v14 = [v3 labelColor];
  v15 = [v14 colorWithAlphaComponent:0.85];

  v16 = objc_allocWithZone(UIColor);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v13;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_87;
  v18 = _Block_copy(&aBlock);
  v19 = v15;
  v20 = v13;

  v21 = [v16 initWithDynamicProvider:v18];

  _Block_release(v18);
  *&__src[360] = v21;
  v22 = [v3 whiteColor];
  v23 = [v22 colorWithAlphaComponent:0.175];

  v24 = [v3 labelColor];
  v25 = [v24 colorWithAlphaComponent:0.4];

  v26 = objc_allocWithZone(UIColor);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v23;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v27;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_94;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v23;

  v31 = [v26 initWithDynamicProvider:v28];

  _Block_release(v28);
  *&__src[368] = v31;
  v32 = [v3 whiteColor];
  v33 = [v32 colorWithAlphaComponent:0.35];

  v34 = [v3 labelColor];
  v35 = [v34 colorWithAlphaComponent:0.85];

  v36 = objc_allocWithZone(UIColor);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v33;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v37;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_101;
  v38 = _Block_copy(&aBlock);
  v39 = v35;
  v40 = v33;

  v41 = [v36 initWithDynamicProvider:v38];

  _Block_release(v38);
  *&__src[376] = v41;
  v42 = [v3 whiteColor];
  v43 = [v42 colorWithAlphaComponent:0.175];

  v44 = [v3 labelColor];
  v45 = [v44 colorWithAlphaComponent:0.65];

  v46 = objc_allocWithZone(UIColor);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v43;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v47;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_108;
  v48 = _Block_copy(&aBlock);
  v49 = v45;
  v50 = v43;

  v51 = [v46 initWithDynamicProvider:v48];

  _Block_release(v48);
  *&__src[384] = v51;
  v52 = [v3 whiteColor];
  v53 = [v52 colorWithAlphaComponent:0.4];

  v54 = [v3 labelColor];
  v55 = [v54 colorWithAlphaComponent:0.4];

  v56 = objc_allocWithZone(UIColor);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v53;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v57;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_115_0;
  v58 = _Block_copy(&aBlock);
  v59 = v55;
  v60 = v53;

  v61 = [v56 initWithDynamicProvider:v58];

  _Block_release(v58);
  *&__src[392] = v61;
  CGAffineTransformMakeScale(&aBlock, 0.98, 0.98);
  *&__src[400] = aBlock;
  *&__src[448] = 0x3FB999999999999ALL;
  *&__src[456] = [v3 whiteColor];
  *&__src[464] = xmmword_100518210;
  *&__src[480] = 0x3FD999999999999ALL;
  v62 = [v3 whiteColor];
  v63 = [v3 tintColor];
  v64 = objc_allocWithZone(UIColor);
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v62;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v65;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_122;
  v66 = _Block_copy(&aBlock);
  v67 = v63;
  v68 = v62;

  v69 = [v64 initWithDynamicProvider:v66];

  _Block_release(v66);
  *&__src[488] = v69;
  v70 = [v3 whiteColor];
  v71 = [v70 colorWithAlphaComponent:0.175];

  v72 = [v3 tintColor];
  v73 = [v72 colorWithAlphaComponent:0.175];

  v74 = objc_allocWithZone(UIColor);
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v71;
  *&aBlock.tx = closure #1 in UIColor.init(normal:highContrast:)partial apply;
  *&aBlock.ty = v75;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  *&aBlock.d = &block_descriptor_129;
  v76 = _Block_copy(&aBlock);
  v77 = v73;
  v78 = v71;

  v79 = [v74 initWithDynamicProvider:v76];

  _Block_release(v76);
  *&__src[496] = v79;
  *&__src[504] = 0x403E000000000000;
  CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
  *&__src[512] = aBlock;
  *&__src[560] = 0x3FEB333333333333;
  *&__src[568] = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.08];
  __asm { FMOV            V0.2D, #16.0 }

  *&__src[576] = _Q0;
  *&__src[592] = 3;
  *&__src[600] = 0x4044000000000000;
  *&__src[608] = xmmword_100518220;
  *&__src[624] = xmmword_100518230;
  *&__src[640] = xmmword_100518240;
  *&__src[656] = 257;
  v85 = Int.seconds.getter(1);
  v86 = Int.seconds.getter(100);
  v87 = Int.seconds.getter(18);
  *&__src[664] = v85;
  *&__src[672] = v86;
  *&__src[680] = v87;
  if (a1)
  {

    a1(__src);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1);
  }

  return memcpy(a2, __src, 0x2B0uLL);
}

id specialized static SyncedLyricsViewController.Specs.highlightAnimationFactory(highlighted:)(char a1)
{
  if (a1)
  {
    v1 = 1.0;
    v2 = 0.0;
    v3 = 0.55;
    v4 = 0;
  }

  else
  {
    v2 = 0.25;
    v4 = 0x3FB999999999999ALL;
    v1 = 0.1;
    v3 = 0.25;
  }

  v5 = type metadata accessor for SyncedLyricsViewController.Specs.CustomCurveAnimationFactory();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint1];
  *v7 = v2;
  *(v7 + 1) = v4;
  v8 = &v6[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint2];
  *v8 = v3;
  v8[1] = v1;
  v10.receiver = v6;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsViewController.Specs.RenderingMode and conformance SyncedLyricsViewController.Specs.RenderingMode()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsViewController.Specs.RenderingMode and conformance SyncedLyricsViewController.Specs.RenderingMode;
  if (!lazy protocol witness table cache variable for type SyncedLyricsViewController.Specs.RenderingMode and conformance SyncedLyricsViewController.Specs.RenderingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsViewController.Specs.RenderingMode and conformance SyncedLyricsViewController.Specs.RenderingMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncedLyricsViewController.Specs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncedLyricsViewController.Specs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncedLyricsViewController.Specs.SelectedLinePosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SyncedLyricsViewController.Specs.SelectedLinePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 __swift_memcpy24_8_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004962B4()
{

  return swift_deallocObject();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_4);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_4);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_4);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_4);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_4);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t outlined assign with take of Lyrics.TextLine(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SyncedLyricsSharingTransitionInfo.initialView.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20));

  return v1;
}

void SyncedLyricsSharingTransitionInfo.initialView.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t SyncedLyricsSharingTransitionInfo.alignment.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.frame.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.isSelected.setter(char a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  return v1;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  return v1;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v5)
  {
    result = swift_beginAccess();
    *(v5 + 88) = a1 & 1;
  }

  return result;
}

void (*SyncedLyricsViewController.isPlayingSpatial.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return SyncedLyricsViewController.isPlayingSpatial.modify;
}

void SyncedLyricsViewController.isPlayingSpatial.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      swift_beginAccess();
      *(v5 + 88) = v6;
    }
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.isFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.isFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SyncedLyricsViewController.bottomTapAreaHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SyncedLyricsViewController.bottomTapAreaHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SyncedLyricsViewController.containerHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.containerHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    SyncedLyricsViewController.updateInsets()();
  }
}

void (*SyncedLyricsViewController.containerHeight.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return SyncedLyricsViewController.containerHeight.modify;
}

void SyncedLyricsViewController.containerHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    SyncedLyricsViewController.updateInsets()();
  }

  free(v1);
}

void SyncedLyricsViewController.specs.didset(unsigned __int8 *a1)
{
  v2 = v1;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  memcpy(__dst, v4, 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(__dst, v34);
  v5 = specialized static SyncedLyricsViewController.Specs.__derived_struct_equals(_:_:)(__dst, a1);
  outlined destroy of SyncedLyricsViewController.Specs(__dst);
  if (v5)
  {
    return;
  }

  SyncedLyricsViewController.updateInsets()();
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v6] setShowsVerticalScrollIndicator:v4[656]];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_5:
      v25 = a1;
      v28 = v9 - 1;
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v27 = v8 & 0xC000000000000001;

      v10 = 0;
      v26 = v4;
      if ((v8 & 0xC000000000000001) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v8 + 8 * v10 + 32))
      {
        v12 = i;
        memcpy(v32, v4, sizeof(v32));
        v13 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        memcpy(v33, &v12[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], sizeof(v33));
        memmove(&v12[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], v4, 0x2B0uLL);
        outlined init with copy of SyncedLyricsViewController.Specs(v32, v31);
        outlined init with copy of SyncedLyricsViewController.Specs(v32, v31);
        outlined destroy of SyncedLyricsViewController.Specs(v33);
        v15 = SyncedLyricsLineView.contentView.modify(v30);
        if (*v14)
        {
          v16 = v14;
          memcpy(v34, &v12[v13], sizeof(v34));
          v29 = v10;
          v17 = v8;
          v19 = *v16;
          v18 = v16[1];
          ObjectType = swift_getObjectType();
          v21 = v2;
          v22 = v18[2];
          outlined init with copy of SyncedLyricsViewController.Specs(v34, v31);
          v23 = v19;
          v22(v34, ObjectType, v18);
          v2 = v21;
          v24 = *v16;
          *v16 = v19;
          v16[1] = v18;
          v8 = v17;
          v10 = v29;
        }

        v15(v30, 0);
        outlined destroy of SyncedLyricsViewController.Specs(v32);
        SyncedLyricsViewController.layout(lineView:)(v12);

        if (v28 == v10)
        {
          break;
        }

        ++v10;
        v4 = v26;
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_8:
        ;
      }

      a1 = v25;
      v4 = v26;
    }
  }

  if (v4[657] != (a1[657] & 1))
  {
    if (v4[657])
    {
      SyncedLyricsViewController.updateBlur(views:)(0);
    }

    else
    {
      SyncedLyricsViewController.removeAllBlurs()();
    }
  }
}

void *SyncedLyricsViewController.specs.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  outlined init with copy of SyncedLyricsViewController.Specs(__dst, v5);
  return memcpy(a1, __dst, 0x2B0uLL);
}

uint64_t SyncedLyricsViewController.specs.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v7, (v1 + v3), sizeof(v7));
  memcpy((v1 + v3), a1, 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(__dst, v5);
  outlined init with copy of SyncedLyricsViewController.Specs(a1, v5);
  outlined destroy of SyncedLyricsViewController.Specs(v7);
  SyncedLyricsViewController.specs.didset(__dst);
  outlined destroy of SyncedLyricsViewController.Specs(__dst);
  return outlined destroy of SyncedLyricsViewController.Specs(a1);
}

void (*SyncedLyricsViewController.specs.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x15A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 5528) = v1;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  *(v3 + 5536) = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(v4, (v1 + v5), 0x2B0uLL);
  memcpy((v4 + 2064), (v1 + v5), 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(v4, v4 + 2752);
  return SyncedLyricsViewController.specs.modify;
}

void SyncedLyricsViewController.specs.modify(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 692);
    v4 = *(v2 + 691);
    memcpy(v2 + 4128, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 688, (v4 + v3), 0x2B0uLL);
    memcpy(v2 + 3440, (v4 + v3), 0x2B0uLL);
    memcpy((v4 + v3), v2 + 2064, 0x2B0uLL);
    outlined init with copy of SyncedLyricsViewController.Specs((v2 + 4128), (v2 + 4816));
    outlined init with copy of SyncedLyricsViewController.Specs((v2 + 4128), (v2 + 4816));
    outlined init with copy of SyncedLyricsViewController.Specs((v2 + 688), (v2 + 4816));
    outlined destroy of SyncedLyricsViewController.Specs((v2 + 3440));
    SyncedLyricsViewController.specs.didset(v2 + 688);
    outlined destroy of SyncedLyricsViewController.Specs((v2 + 688));
    outlined destroy of SyncedLyricsViewController.Specs((v2 + 4128));
    memcpy(v2 + 2752, v2 + 2064, 0x2B0uLL);
    v5 = (v2 + 2752);
  }

  else
  {
    v6 = *(v2 + 692);
    v7 = *(v2 + 691);
    memcpy(v2 + 3440, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 1376, (v7 + v6), 0x2B0uLL);
    memcpy(v2 + 2752, (v7 + v6), 0x2B0uLL);
    memcpy((v7 + v6), v2 + 2064, 0x2B0uLL);
    outlined init with copy of SyncedLyricsViewController.Specs((v2 + 1376), (v2 + 4128));
    outlined init with copy of SyncedLyricsViewController.Specs((v2 + 3440), (v2 + 4128));
    outlined destroy of SyncedLyricsViewController.Specs((v2 + 2752));
    SyncedLyricsViewController.specs.didset(v2 + 1376);
    outlined destroy of SyncedLyricsViewController.Specs((v2 + 1376));
    v5 = (v2 + 3440);
  }

  outlined destroy of SyncedLyricsViewController.Specs(v5);

  free(v2);
}

uint64_t SyncedLyricsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SyncedLyricsViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SyncedLyricsViewController.delegate.modify;
}

void SyncedLyricsViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t SyncedLyricsViewController.mode.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for SyncedLyricsViewController.lyrics : SyncedLyricsViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  SyncedLyricsViewController.lyrics.didset(v5);
}

id SyncedLyricsViewController.lyrics.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
      return SyncedLyricsViewController.updateLines(animator:)(0);
    }
  }

  else if (!a1)
  {
    return SyncedLyricsViewController.updateLines(animator:)(0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7LyricsX06SyncedE8LineViewC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v8 = v27;
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  *(v1 + v9) = v8;

  v10 = *(v1 + v3);
  if (v10)
  {
    v11 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
    swift_beginAccess();
    if (*v11)
    {
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = *(v11 + 648);
      v15 = *(v11 + 184);
      v16 = *(v11 + 192);
      v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
      swift_beginAccess();
      v18 = *(v1 + v17);
      type metadata accessor for SyncedLyricsManager();
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      swift_unknownObjectWeakInit();
      *(v19 + 80) = _swiftEmptyArrayStorage;
      *(v19 + 96) = 0u;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0;
      *(v19 + 16) = v10;
      *(v19 + 24) = partial apply for closure #1 in SyncedLyricsViewController.lyrics.didset;
      *(v19 + 32) = v13;
      *(v19 + 40) = v14;
      *(v19 + 48) = v15;
      *(v19 + 56) = v16;
      swift_beginAccess();
      *(v19 + 72) = &protocol witness table for SyncedLyricsViewController;
      swift_unknownObjectWeakAssign();
      *(v19 + 88) = v18;
      *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = v19;
      swift_retain_n();
    }

    v20 = v1;
    SyncedLyricsViewController.cancelAnimations()();
    SyncedLyricsViewController.setupUI(with:)(v10);
    v21 = v1;
    v22 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v24 = *(v22 + 96);
      *(v22 + 96) = partial apply for closure #2 in SyncedLyricsViewController.lyrics.didset;
      *(v22 + 104) = v23;

      swift_retain_n();
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v24);
      SyncedLyricsManager.elapsedTimeProvider.didset();
      v21 = v20;
    }

    v25 = *(v21 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v25)
    {
      v26 = v25;
      [v26 setPaused:SyncedLyricsViewController.displayLinkShouldPause()() & 1];
    }
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v12)
    {
      [v12 setPaused:1];
    }

    *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = 0;
  }
}

double closure #1 in SyncedLyricsViewController.lyrics.didset(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v3 = Strong;
  v4 = SyncedLyricsViewController.lineChangeSpringParameters(gap:)(*&a1, 0);

  [v4 settlingDuration];
  v6 = v5;

  return v6;
}

void SyncedLyricsViewController.timingProvider.didset(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_2);
  __chkstk_darwin();
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v52 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v52 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v14, &v55, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  p_cache = (&OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line + 16);
  if (v56)
  {
    outlined init with take of ActionPerforming(&v55, v58);
    outlined init with copy of ActionPerforming(v58, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA14TimingProvider_pMd);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
    if (swift_dynamicCast())
    {

      goto LABEL_26;
    }

    v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (*(v2 + v18) == 2)
    {
LABEL_26:
      __chkstk_darwin();
      *(&v52 - 2) = v58;
      specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #3 in SyncedLyricsViewController.timingProvider.didset);
      v45 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v45)
      {
        v46 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_beginAccess();
        v47 = *(v45 + 96);
        *(v45 + 96) = partial apply for closure #2 in SyncedLyricsViewController.lyrics.didset;
        *(v45 + 104) = v46;

        swift_retain_n();
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v47);
        SyncedLyricsManager.elapsedTimeProvider.didset();
      }

LABEL_28:
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      goto LABEL_29;
    }

    outlined init with copy of TaskPriority?(a1, &v55, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    v19 = v56;
    if (v56)
    {
      v20 = v57;
      __swift_project_boxed_opaque_existential_0Tm(&v55, v56);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = v21();

      __swift_destroy_boxed_opaque_existential_0Tm(&v55);
      v23 = v59;
      v24 = v60;
      __swift_project_boxed_opaque_existential_0Tm(v58, v59);
      v25 = (*(v24 + 8))(v23, v24);
      v26 = v25();

      if (vabdd_f64(v22, v26) <= 0.5)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static SyncedLyricsViewController.logger);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v53 = "ince last tap, ignoring.";
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v52 = v28;
          v32 = v31;
          *&v55 = v31;
          *v30 = 136315138;
          *(v30 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0xD00000000000005FLL, v53 | 0x8000000000000000, &v55);
          v33 = v29;
          v34 = v52;
          _os_log_impl(&_mh_execute_header, v52, v33, "%s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
        }

        else
        {
        }

        v35 = 0;
LABEL_16:
        v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
        swift_beginAccess();
        outlined init with copy of TaskPriority?(v2 + v36, v7, &_s10Foundation4DateVSgMd_2);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          outlined destroy of TaskPriority?(v7, &_s10Foundation4DateVSgMd_2);
        }

        else
        {
          LODWORD(v53) = v35;
          (*(v9 + 32))(v13, v7, v8);
          Date.init()();
          Date.timeIntervalSince(_:)();
          v38 = v37;
          v39 = *(v9 + 8);
          v39(v11, v8);
          if (v38 < 1.0)
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v40 = type metadata accessor for Logger();
            __swift_project_value_buffer(v40, static SyncedLyricsViewController.logger);
            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v54[0] = v44;
              *v43 = 136315138;
              *(v43 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0xD000000000000058, 0x80000001004D8230, v54);
              _os_log_impl(&_mh_execute_header, v41, v42, "%s", v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v44);
            }

            v39(v13, v8);
            p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
            goto LABEL_32;
          }

          v39(v13, v8);
          v35 = v53;
        }

        (*(v9 + 56))(v5, 1, 1, v8);
        swift_beginAccess();
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v5, v2 + v36, &_s10Foundation4DateVSgMd_2);
        swift_endAccess();
        p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
        if (v35)
        {
          goto LABEL_26;
        }

LABEL_32:
        v50 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
        if (v50)
        {
          v51 = v50;
          [v51 setPaused:SyncedLyricsViewController.displayLinkShouldPause()() & 1];
        }

        goto LABEL_28;
      }
    }

    else
    {
      outlined destroy of TaskPriority?(&v55, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    }

    v35 = 1;
    goto LABEL_16;
  }

  outlined destroy of TaskPriority?(&v55, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  v16 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v16)
  {
    swift_beginAccess();
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;
    *(v16 + 104) = 0;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17);
    SyncedLyricsManager.elapsedTimeProvider.didset();
  }

LABEL_29:
  v48 = *(p_cache[455] + v2);
  if (v48)
  {
    v49 = v48;
    [v49 setPaused:SyncedLyricsViewController.displayLinkShouldPause()() & 1];
  }
}

uint64_t implicit closure #3 in SyncedLyricsViewController.timingProvider.didset(void *a1)
{
  _StringGuts.grow(_:)(56);
  v2._object = 0x80000001004D82F0;
  v2._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v2);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v5();

  Double.write<A>(to:)();
  return 0;
}

double closure #2 in SyncedLyricsViewController.lyrics.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    v3 = Strong;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v3 + v2, v14, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);

    v4 = v15;
    if (v15)
    {
      v5 = v16;
      __swift_project_boxed_opaque_existential_0Tm(v14, v15);
      v6 = *(v4 - 8);
      v7 = __chkstk_darwin();
      v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v6 + 16))(v9, v7);
      outlined destroy of TaskPriority?(v14, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
      v10 = (*(v5 + 8))(v4, v5);
      v11 = (*(v6 + 8))(v9, v4);
      v1 = v10(v11);
    }

    else
    {
      outlined destroy of TaskPriority?(v14, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    }
  }

  return v1;
}

uint64_t SyncedLyricsViewController.timingProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v1 + v3, a1, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
}

uint64_t SyncedLyricsViewController.timingProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v3, v5, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a1, v1 + v3, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  swift_endAccess();
  SyncedLyricsViewController.timingProvider.didset(v5);
  outlined destroy of TaskPriority?(a1, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  return outlined destroy of TaskPriority?(v5, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
}

void (*SyncedLyricsViewController.timingProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v5, v4, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  return SyncedLyricsViewController.timingProvider.modify;
}

void SyncedLyricsViewController.timingProvider.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    outlined init with copy of TaskPriority?(*a1, v2 + 40, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    outlined init with copy of TaskPriority?(v3 + v4, v2 + 80, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v2 + 40, v3 + v4, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    swift_endAccess();
    SyncedLyricsViewController.timingProvider.didset(v2 + 80);
    outlined destroy of TaskPriority?(v2 + 80, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  }

  else
  {
    outlined init with copy of TaskPriority?(v3 + v4, v2 + 40, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v2, v3 + v4, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    swift_endAccess();
    SyncedLyricsViewController.timingProvider.didset(v2 + 40);
  }

  outlined destroy of TaskPriority?(v2 + 40, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  outlined destroy of TaskPriority?(v2, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);

  free(v2);
}

id SyncedLyricsViewController.bottomViewMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return v6;
}

void SyncedLyricsViewController.bottomViewMetadata.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  outlined init with copy of TaskPriority?(a1, &v11, &_s7LyricsX06SyncedA14ViewControllerC06BottomC8MetadataVSgMd);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:

    outlined destroy of TaskPriority?(a1, &_s7LyricsX06SyncedA14ViewControllerC06BottomC8MetadataVSgMd);

    return;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_10:
    SyncedLyricsViewController.layout(lineView:)(v10);

    outlined destroy of TaskPriority?(a1, &_s7LyricsX06SyncedA14ViewControllerC06BottomC8MetadataVSgMd);
    return;
  }

  __break(1u);
}

void (*SyncedLyricsViewController.bottomViewMetadata.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata);
  swift_beginAccess();
  v6 = *(v5 + 4);
  v7 = *v5;
  v8 = v5[1];
  *(v4 + 80) = *v5;
  *(v4 + 96) = v8;
  *(v4 + 112) = v6;
  v9 = v7;
  return SyncedLyricsViewController.bottomViewMetadata.modify;
}

void SyncedLyricsViewController.bottomViewMetadata.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 4) = *(v2 + 14);
    outlined init with copy of TaskPriority?(v2, (v2 + 120), &_s7LyricsX06SyncedA14ViewControllerC06BottomC8MetadataVSgMd);
    SyncedLyricsViewController.bottomViewMetadata.setter(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    SyncedLyricsViewController.bottomViewMetadata.setter((v2 + 40));
  }

  free(v2);
}

uint64_t SyncedLyricsViewController.shareHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1);
  return v2;
}

uint64_t SyncedLyricsViewController.shareHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
}

id SyncedLyricsViewController.contentView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.contentView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SyncedLyricsViewController.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.scrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*SyncedLyricsViewController.currentTranslation.modify(uint64_t *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return SyncedLyricsViewController.currentTranslation.modify;
}

uint64_t SyncedLyricsViewController.currentTranslation.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = *a4;
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a1, v5 + v12, a2);
  swift_endAccess();
  if ((*(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
  {
    outlined init with copy of TaskPriority?(v5 + v12, v11, a2);
    v13 = a5(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      v14 = 150.0;
    }

    else
    {
      v14 = 130.0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
    outlined destroy of TaskPriority?(v11, a2);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v14 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    SyncedLyricsViewController.updateLines(animator:)(isa);
  }

  return outlined destroy of TaskPriority?(a1, a2);
}

void (*SyncedLyricsViewController.currentTransliteration.modify(uint64_t *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return SyncedLyricsViewController.currentTransliteration.modify;
}

void SyncedLyricsViewController.currentTranslation.modify(void *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v9 = v8[3];
    if ((*(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
    {
      v10 = v8[4];
      outlined init with copy of TaskPriority?(v9 + v8[5], v10, a3);
      v11 = a5(0);
      if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
      {
        v12 = 150.0;
      }

      else
      {
        v12 = 130.0;
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
      outlined destroy of TaskPriority?(v10, a3);
      isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v12 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
      SyncedLyricsViewController.updateLines(animator:)(isa);
    }
  }

  free(v8[4]);

  free(v8);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_4);
  __chkstk_darwin();
  v3 = &v62 - v2;
  v4 = type metadata accessor for SyncedLyricsViewController(0);
  v66.receiver = v0;
  v66.super_class = v4;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setPreservesSuperviewLayoutMargins:1];

  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v64 = v3;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  [*&v1[v7] setAutoresizingMask:18];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 addSubview:*&v1[v7]];

  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v65 = v21;
  v22 = *&v1[v21];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v22 setFrame:{v26, v28, v30, v32}];
  v33 = v65;
  [*&v1[v65] setClipsToBounds:0];
  [*&v1[v33] setIndicatorStyle:2];
  [*&v1[v33] setShowsHorizontalScrollIndicator:0];
  [*&v1[v33] setAutoresizingMask:18];
  [*&v1[v33] setDelegate:v1];
  [*&v1[v33] setMultipleTouchEnabled:0];
  v34 = *&v1[v33];
  v35 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  [v34 setShowsVerticalScrollIndicator:v35[656]];
  [*&v1[v33] _setHiddenPocketEdges:15];
  [*&v1[v7] addSubview:*&v1[v33]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_2);
  v36 = swift_allocObject();
  v62 = xmmword_1004F2400;
  *(v36 + 16) = xmmword_1004F2400;
  *(v36 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v36 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  v39 = NSNotificationCenter.notifications(named:object:)();

  v40 = [v37 defaultCenter];
  v63 = NSNotificationCenter.notifications(named:object:)();

  v41 = swift_allocObject();
  *(v41 + 16) = v62;
  *(v41 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v41 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v42 = type metadata accessor for TaskPriority();
  v43 = *(*(v42 - 8) + 56);
  v44 = v64;
  v43(v64, 1, 1, v42);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v46 = static MainActor.shared.getter();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = &protocol witness table for MainActor;
  *&v62 = v39;
  v47[4] = v39;
  v47[5] = v45;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_3(0, 0, v44, &async function pointer to partial apply for closure #3 in SyncedLyricsViewController.viewDidLoad(), v47);

  v43(v44, 1, 1, v42);
  v48 = v63;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = static MainActor.shared.getter();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = &protocol witness table for MainActor;
  v51[4] = v48;
  v51[5] = v49;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_3(0, 0, v44, &async function pointer to partial apply for closure #4 in SyncedLyricsViewController.viewDidLoad(), v51);

  v52 = [v1 traitCollection];
  v53 = [v52 userInterfaceIdiom];

  v54 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v55 = v54;
  if (v53 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_2);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1004F2F10;
    *(v56 + 32) = Int._bridgeToObjectiveC()();
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_2);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 setAllowedPressTypes:isa];

    [v55 setDelegate:v1];
    [v55 addTarget:v1 action:"menuHandler:"];
    v58 = *&v1[v65];
    [v58 addGestureRecognizer:v55];

    v59 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = v55;

    return;
  }

  [v54 setDelegate:v1];
  [v55 addTarget:v1 action:"tapHandler:"];
  v60 = [v1 view];
  if (v60)
  {
    v61 = v60;
    [v60 addGestureRecognizer:v55];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t closure #3 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSo13UIWindowSceneCGMd);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSo13UIWindowSceneC_GMd);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for MainActor();
  v5[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(closure #3 in SyncedLyricsViewController.viewDidLoad(), v11, v10);
}

uint64_t closure #3 in SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  type metadata accessor for NSNotificationCenter.Notifications();
  v0[33] = type metadata accessor for UIAction(0, &_sSo13UIWindowSceneCML_1);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications and conformance NSNotificationCenter.Notifications, &type metadata accessor for NSNotificationCenter.Notifications);

  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = closure #3 in SyncedLyricsViewController.viewDidLoad();

  return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5(v4, &protocol witness table for MainActor);
}

uint64_t closure #3 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(closure #3 in SyncedLyricsViewController.viewDidLoad(), v5, v6);
  }

  return result;
}

void closure #3 in SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        if (one-time initialization token for lyrics != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.lyrics);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
        }

        v13 = v0[21];
        v14 = v0[18];
        v23 = v0[20];
        v24 = v0[19];
        v15 = v0[16];
        v22 = v0[17];
        v16 = v0[15];

        type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
        v21 = static OS_dispatch_queue.main.getter();
        v0[6] = partial apply for closure #2 in closure #3 in SyncedLyricsViewController.viewDidLoad();
        v0[7] = v16;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = thunk for @escaping @callee_guaranteed () -> ();
        v0[5] = &block_descriptor_338;
        v17 = _Block_copy(v0 + 2);

        static DispatchQoS.unspecified.getter();
        v0[13] = _swiftEmptyArrayStorage;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_3, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_3, &_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v17);

        (*(v22 + 8))(v14, v15);
        (*(v23 + 8))(v13, v24);
      }

      else
      {
      }
    }

    else
    {
LABEL_11:
    }

    v19 = static MainActor.shared.getter();
    v0[34] = v19;
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = closure #3 in SyncedLyricsViewController.viewDidLoad();

    _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5(v19, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v18 = v0[1];

    v18();
  }
}

uint64_t closure #1 in closure #3 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(closure #1 in closure #3 in SyncedLyricsViewController.viewDidLoad(), 0, 0);
}

uint64_t closure #1 in closure #3 in SyncedLyricsViewController.viewDidLoad()()
{
  Notification.object.getter();
  v1 = v0[6];
  if (v0[5])
  {
    type metadata accessor for UIAction(0, &_sSo13UIWindowSceneCML_1);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *v0[6] = 0;
    }
  }

  else
  {
    outlined destroy of TaskPriority?((v0 + 2), &_sypSgMd_3);
    *v1 = 0;
  }

  v2 = v0[1];

  return v2();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd_0);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Notification();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[14] = v6;
  v3[15] = v8;

  return _swift_task_switch(_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY0_, v6, v8);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY0_()
{
  v0[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSo13UIWindowSceneC_GMd);
  v0[17] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVAGScIACWL_0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TQ1_;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, v3, v4);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY3_;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY2_;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY2_()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s10Foundation12NotificationVSgMd_0);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = AsyncCompactMapSequence.Iterator.transform.getter();
    v0[19] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TQ4_;
    v9 = v0[13];

    return (v10)(v0 + 6, v9);
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY3_()
{
  (*(v0 + 136))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TQ4_()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY5_, v6, v5);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TY5_()
{
  v1 = v0[6];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v0[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSo13UIWindowSceneC_GMd);
    v0[17] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVAGScIACWL_0, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5TQ1_;
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v6, v7);
  }
}

void closure #2 in closure #3 in SyncedLyricsViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v3 = v1;
    v4 = v2;

    if (v2)
    {
      [v4 setPaused:1];
    }
  }
}

uint64_t closure #4 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVySo20NSNotificationCenterC10FoundationE13NotificationsCSo13UIWindowSceneCGMd);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVySo20NSNotificationCenterC10FoundationE13NotificationsCSo13UIWindowSceneC_GMd);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for MainActor();
  v5[30] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(closure #4 in SyncedLyricsViewController.viewDidLoad(), v11, v10);
}

uint64_t closure #4 in SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  type metadata accessor for NSNotificationCenter.Notifications();
  v0[33] = type metadata accessor for UIAction(0, &_sSo13UIWindowSceneCML_1);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications and conformance NSNotificationCenter.Notifications, &type metadata accessor for NSNotificationCenter.Notifications);

  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  (*(v1 + 8))(v2, v3);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v4 = static MainActor.shared.getter();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = closure #4 in SyncedLyricsViewController.viewDidLoad();

  return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5(v4, &protocol witness table for MainActor);
}

uint64_t closure #4 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(closure #4 in SyncedLyricsViewController.viewDidLoad(), v5, v6);
  }

  return result;
}

void closure #4 in SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = v0[21];
        v10 = v0[18];
        v19 = v0[20];
        v20 = v0[19];
        v11 = v0[16];
        v18 = v0[17];
        v12 = v0[15];
        type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
        v17 = static OS_dispatch_queue.main.getter();
        v0[6] = partial apply for closure #2 in closure #4 in SyncedLyricsViewController.viewDidLoad();
        v0[7] = v12;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = thunk for @escaping @callee_guaranteed () -> ();
        v0[5] = &block_descriptor_320;
        v13 = _Block_copy(v0 + 2);

        static DispatchQoS.unspecified.getter();
        v0[13] = _swiftEmptyArrayStorage;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_3, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_3, &_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v13);

        (*(v18 + 8))(v10, v11);
        (*(v19 + 8))(v9, v20);
      }

      else
      {
      }
    }

    else
    {
LABEL_7:
    }

    v15 = static MainActor.shared.getter();
    v0[34] = v15;
    v16 = swift_task_alloc();
    v0[35] = v16;
    *v16 = v0;
    v16[1] = closure #4 in SyncedLyricsViewController.viewDidLoad();

    _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFSo20NSNotificationCenterC10FoundationE13NotificationsC_So13UIWindowSceneCTg5(v15, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v14 = v0[1];

    v14();
  }
}

uint64_t closure #1 in closure #4 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(closure #1 in closure #4 in SyncedLyricsViewController.viewDidLoad(), 0, 0);
}

void closure #2 in closure #4 in SyncedLyricsViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    v2 = Strong;

    if (v1)
    {
      v3 = swift_allocObject();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      swift_beginAccess();
      v5 = *(v1 + 96);
      *(v1 + 96) = partial apply for closure #1 in closure #2 in closure #4 in SyncedLyricsViewController.viewDidLoad();
      *(v1 + 104) = v3;
      swift_retain_n();
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5);
      SyncedLyricsManager.elapsedTimeProvider.didset();
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v6[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  }

  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.lyrics);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      SyncedLyricsViewController.displayLinkShouldPause()();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd_0);
    v14 = String.init<A>(describing:)();
    v16 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v14, v15, v24);

    *(v10 + 4) = v16;
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v19 = v17;
    v20 = v18;

    if (v18)
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v23 = SyncedLyricsViewController.displayLinkShouldPause()();
      }

      else
      {
        v23 = 1;
      }

      [v20 setPaused:v23 & 1];
    }
  }
}

void SyncedLyricsViewController.tapHandler(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v3] == 1)
  {
    v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (!v1[v4])
    {
      v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
      swift_beginAccess();
      if (*&v1[v5] > 0.0)
      {
        v6 = [v1 view];
        [a1 locationInView:v6];
        v8 = v7;

        v9 = [v1 view];
        if (v9)
        {
          v10 = v9;
          [v9 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v22.origin.x = v12;
          v22.origin.y = v14;
          v22.size.width = v16;
          v22.size.height = v18;
          if (CGRectGetHeight(v22) - *&v1[v5] < v8)
          {
            v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v20 = *(v19 + 1);
              ObjectType = swift_getObjectType();
              (*(v20 + 40))(v1, ObjectType, v20);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t closure #2 in SyncedLyricsViewController.menuHandler(_:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a6 + v10, v12);
  SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(v12, 0, 0, 1, 0, a1, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t SyncedLyricsViewController.handleTap(on:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v4 - 8);
  v98 = v4;
  __chkstk_darwin();
  v95 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v93 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for DispatchTime();
  v92 = *(v102 - 8);
  __chkstk_darwin();
  v90 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v82 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_2);
  __chkstk_darwin();
  v89 = v82 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = v82 - v11;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator) selectionChanged];
  v13 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v13)
  {
    [v13 setPaused:1];
  }

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling) = 1;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) invalidate];
  v15 = *(v2 + v14);
  *(v2 + v14) = 0;

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll) = 1;
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a1 + v16, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  v17 = type metadata accessor for Lyrics.TextLine(0);
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  if ((v18 & 1) == 0)
  {
LABEL_37:
    (v19)(v12, 1, 1, v17);
    outlined destroy of TaskPriority?(v12, &_s7LyricsX0A0C8TextLineVSgMd);
    goto LABEL_38;
  }

  (v19)(v12, 0, 1, v17);
  outlined destroy of TaskPriority?(v12, &_s7LyricsX0A0C8TextLineVSgMd);
  v12 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v12)
  {
    type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
    result = swift_dynamicCastClass();
    if (result)
    {
      v21 = *(result + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (!v21)
      {
LABEL_49:
        __break(1u);
        return result;
      }

      v17 = *(v21 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v17)
      {
        v22 = *(v17 + 56);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = *(v17 + 48);
          v101 = type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
          v25 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
          v82[1] = v24;

          v82[0] = v12;
          v82[2] = v17;

          v100 = v25;
          swift_beginAccess();
          v19 = *(v22 + 16);
          if (v19)
          {
            v26 = 0;
            v99 = v22 + 32;
            v84 = a1;
            v85 = v2;
            v83 = v16;
            v86 = v23;
            v87 = v22;
            while (1)
            {
              v17 = *(v99 + 8 * v26);
              v103 = v26 + 1;
              memcpy(v105, &v100[v2], 0x2B0uLL);
              *(v17 + 120) = 1;

              outlined init with copy of SyncedLyricsViewController.Specs(v105, v104);
              v12 = static OS_dispatch_queue.main.getter();
              v27 = swift_allocObject();
              swift_weakInit();

              OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #1 in SyncedLyricsLineView.Line.resetGradient(specs:), v27);

              if ((*(v17 + 57) & 1) == 0)
              {
                v37 = *(v17 + 112);
                if (v37 && (v38 = *(v37 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
                {
                  v39 = v105[25];
                  v40 = v38;
                  [v39 lineHeight];
                  v42 = vabdd_f64(v41 * *&v105[32] + *&v105[58] + *&v105[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
                  if (*(v17 + 58))
                  {
                    v43 = v42 + CGRectGetWidth(*(v17 + 80));
                    v44 = -v42;
                  }

                  else
                  {
                    v44 = -v42;
                    v43 = -v42;
                  }

                  v45 = *(v17 + 80);
                  v46 = *(v17 + 88);
                  v47 = *(v17 + 96);
                  v48 = *(v17 + 104);
                  v12 = v40;
                  v108.origin.x = v45;
                  v108.origin.y = v46;
                  v108.size.width = v47;
                  v108.size.height = v48;
                  [v12 setFrame:{v43, v44, v42, v42 + v42 + CGRectGetHeight(v108)}];
                  outlined destroy of SyncedLyricsViewController.Specs(v105);
                }

                else
                {
                  outlined destroy of SyncedLyricsViewController.Specs(v105);
                }

                goto LABEL_34;
              }

              result = swift_beginAccess();
              v12 = *(v17 + 16);
              if (!(v12 >> 62))
              {
                v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v28)
                {
                  break;
                }

                goto LABEL_32;
              }

              result = _CocoaArrayWrapper.endIndex.getter();
              v28 = result;
              if (result)
              {
                break;
              }

LABEL_32:
              outlined destroy of SyncedLyricsViewController.Specs(v105);

LABEL_33:
              v23 = v86;
              v22 = v87;
LABEL_34:
              v26 = v103;
              if (v103 == v23)
              {

                goto LABEL_38;
              }

              v19 = *(v22 + 16);
              if (v103 >= v19)
              {
                goto LABEL_36;
              }
            }

            if (v28 >= 1)
            {
              v88 = v17;

              v29 = 0;
              while (1)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v30 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 208);
                  if (v30)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
                  v31 = *(v12 + 8 * v29 + 32);

                  v30 = *(v31 + 208);
                  if (v30)
                  {
LABEL_21:
                    v32 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
                    if (v32)
                    {
                      v17 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
                      v33 = *&v30[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
                      v34 = v30;
                      outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(v32, v17);
                      v35 = v33;
                      v36 = v32;
                      [v35 setBackgroundColor:v36];
                    }
                  }
                }

                ++v29;

                if (v28 == v29)
                {

                  outlined destroy of SyncedLyricsViewController.Specs(v105);

                  a1 = v84;
                  v2 = v85;
                  v16 = v83;
                  goto LABEL_33;
                }
              }
            }

            __break(1u);
            goto LABEL_49;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:
  v49 = [objc_allocWithZone(MSVLyricsLine) init];
  outlined init with copy of ActionPerforming(a1 + v16, v105);
  v50 = v105[3];
  v51 = v105[4];
  __swift_project_boxed_opaque_existential_0Tm(v105, v105[3]);
  v52 = (*(*(v51 + 8) + 8))(v50);
  v53 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  v54 = 0.0;
  if (v53)
  {
    swift_beginAccess();
    if (*(v53 + 88) == 1)
    {

      v54 = Lyrics.spatialOffset.getter();
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v105);
  [v49 setStartTime:v52 + v54];
  outlined init with copy of ActionPerforming(a1 + v16, v105);
  v55 = v105[3];
  v56 = v105[4];
  __swift_project_boxed_opaque_existential_0Tm(v105, v105[3]);
  (*(*(v56 + 8) + 16))(v55);
  [v49 setEndTime:?];
  __swift_destroy_boxed_opaque_existential_0Tm(v105);
  v57 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v57, v104, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  [v49 startTime];
  v59 = v58;
  outlined init with copy of TaskPriority?(v104, v105, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  v60 = v105[3];
  if (v105[3])
  {
    v61 = v105[4];
    __swift_project_boxed_opaque_existential_0Tm(v105, v105[3]);
    v62 = (*(v61 + 16))(v60, v61);
    __swift_destroy_boxed_opaque_existential_0Tm(v105);
  }

  else
  {
    outlined destroy of TaskPriority?(v105, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    v62 = 1;
  }

  v63 = type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
  v64 = swift_allocObject();
  *(v64 + 24) = v59;
  *(v64 + 16) = v62 & 1;
  v105[4] = &protocol witness table for SyncedLyricsViewController.StaticTimingProvider;
  v105[3] = v63;
  v105[0] = v64;
  outlined init with copy of TaskPriority?(v2 + v57, v106, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  swift_beginAccess();

  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v105, v2 + v57, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  swift_endAccess();
  SyncedLyricsViewController.timingProvider.didset(v106);
  outlined destroy of TaskPriority?(v106, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  outlined destroy of TaskPriority?(v105, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  v65 = v89;
  Date.init()();
  v66 = type metadata accessor for Date();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v65, v2 + v67, &_s10Foundation4DateVSgMd_2);
  swift_endAccess();
  v68 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v69 = *(v68 + 1);
    ObjectType = swift_getObjectType();
    (*(v69 + 8))(v2, v49, ObjectType, v69);
    swift_unknownObjectRelease();
  }

  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
  v101 = static OS_dispatch_queue.main.getter();
  v71 = v90;
  static DispatchTime.now()();
  v72 = v91;
  + infix(_:_:)();
  v103 = *(v92 + 8);
  (v103)(v71, v102);
  outlined init with copy of TaskPriority?(v104, v106, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  v73 = swift_allocObject();
  *(v73 + 16) = v2;
  *(v73 + 24) = v64;
  v74 = v106[1];
  *(v73 + 32) = v106[0];
  *(v73 + 48) = v74;
  *(v73 + 64) = v107;
  v105[4] = partial apply for closure #1 in SyncedLyricsViewController.handleTap(on:);
  v105[5] = v73;
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 1107296256;
  v105[2] = thunk for @escaping @callee_guaranteed () -> ();
  v105[3] = &block_descriptor_281;
  v75 = _Block_copy(v105);
  v100 = v49;
  v76 = v75;

  v77 = v2;

  v78 = v93;
  static DispatchQoS.unspecified.getter();
  v105[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_3, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_3, &_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
  v79 = v95;
  v80 = v98;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v81 = v101;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v76);

  (*(v97 + 8))(v79, v80);
  (*(v94 + 8))(v78, v96);
  (v103)(v72, v102);
  return outlined destroy of TaskPriority?(v104, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
}

uint64_t closure #1 in SyncedLyricsViewController.handleTap(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(a1 + v6, v14, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  if (v14[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX06SyncedA14TimingProvider_pMd);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    if (v13[0] != a2)
    {
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static SyncedLyricsViewController.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0xD00000000000004DLL, 0x80000001004D81B0, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    outlined init with copy of TaskPriority?(a3, v14, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    outlined init with copy of TaskPriority?(a1 + v6, v13, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v14, a1 + v6, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    swift_endAccess();
    SyncedLyricsViewController.timingProvider.didset(v13);

    outlined destroy of TaskPriority?(v13, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  }

  return outlined destroy of TaskPriority?(v14, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v37, "viewDidAppear:", a1);
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink])
  {
    v5 = [v2 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {
      v8 = [v7 screen];

      v7 = [v8 displayLinkWithTarget:v2 selector:"displayLinkFired:"];
    }

    v9 = *&v2[v4];
    *&v2[v4] = v7;
    v10 = v7;

    if (v7)
    {
      [v10 setPreferredFramesPerSecond:30];
    }

    v11 = *&v2[v4];
    if (v11)
    {
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 mainRunLoop];
      [v13 addToRunLoop:v14 forMode:NSRunLoopCommonModes];
    }

    if (one-time initialization token for lyrics != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.lyrics);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SyncedLyricsViewController] Creating new display link", v18, 2u);
    }
  }

  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded;
  if (v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] == 1)
  {
    v20 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v22 = *(v20 + 96);
      *(v20 + 96) = partial apply for closure #2 in SyncedLyricsViewController.lyrics.didset;
      *(v20 + 104) = v21;

      swift_retain_n();
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v22);
      SyncedLyricsManager.elapsedTimeProvider.didset();
    }

    v2[v19] = 0;
  }

  v23 = *&v2[v4];
  if (v23)
  {
    v24 = v23;
    [v24 setPaused:SyncedLyricsViewController.displayLinkShouldPause()() & 1];
  }

  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.lyrics);
  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136315138;
    v31 = SyncedLyricsViewController.displayLinkShouldPause()();
    v32 = (v31 & 1) == 0;
    if (v31)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v32)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v33, v34, &v36);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "[SyncedLyricsViewController] viewDidAppear (displayLinkShouldPause: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (!v5)
    {
      v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
      [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] invalidate];
      v7 = *&v1[v6];
      *&v1[v6] = 0;

      v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.lyrics);
      v5 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, v9, "[SyncedLyricsViewController] viewDidDisappear, nil window, invalidating display link", v10, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v35, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v3 = v2;
  _sSo6CGRectVMa_2(0);
  [v3 bounds];

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v5 = [v1 view];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  CGRectGetWidth(v36);
  CGRectGetWidth(*v4);
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    SyncedLyricsViewController.layoutLines()();
  }

  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v37.origin.x = v18;
  v37.origin.y = v20;
  v37.size.width = v22;
  v37.size.height = v24;
  CGRectGetHeight(v37);
  CGRectGetHeight(*v4);
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    SyncedLyricsViewController.updateBlur(views:)(0);
    swift_beginAccess();
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    if (static ApproximatelyEquatable<>.==~ infix(_:_:)())
    {
      SyncedLyricsViewController.updateInsets()();
    }
  }

  v25 = [v1 view];
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  *v4 = v28;
  *(v4 + 1) = v30;
  *(v4 + 2) = v32;
  *(v4 + 3) = v34;
}

Swift::Void __swiftcall SyncedLyricsViewController.viewLayoutMarginsDidChange()()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v22, "viewLayoutMarginsDidChange");
  v1 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins + 8];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 layoutMargins];
  v6 = v5;

  if (v2 != v6)
  {
LABEL_5:
    SyncedLyricsViewController.layoutLines()();
LABEL_6:
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 layoutMargins];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      *v1 = v15;
      *(v1 + 1) = v17;
      *(v1 + 2) = v19;
      *(v1 + 3) = v21;
      return;
    }

    goto LABEL_9;
  }

  v7 = v1[3];
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutMargins];
    v11 = v10;

    if (v7 == v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
}

uint64_t SyncedLyricsViewController.set(lyrics:translation:transliteration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0);
  __chkstk_darwin();
  v8 = &v15 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics;
  *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) = 1;
  outlined init with copy of TaskPriority?(a2, &v15 - v9, &_s7LyricsX0A0C11TranslationVSgMd_0);
  SyncedLyricsViewController.currentTranslation.setter(v10);
  outlined init with copy of TaskPriority?(a3, v8, &_s7LyricsX0A0C15TransliterationVSgMd_0);
  SyncedLyricsViewController.currentTransliteration.setter(v8);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v13 = *(v3 + v12);
  *(v3 + v12) = a1;

  SyncedLyricsViewController.lyrics.didset(v13);

  *(v3 + v11) = 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.handleSelectGesture()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v3, &v13, &_s7LyricsX0A4Line_pSgMd);
  if (!v14)
  {
    outlined destroy of TaskPriority?(&v13, &_s7LyricsX0A4Line_pSgMd);
    return 0;
  }

  outlined init with take of ActionPerforming(&v13, v15);
  v4 = v16;
  v5 = v17;
  __swift_project_boxed_opaque_existential_0Tm(v15, v16);
  v6 = *(v5 + 16);
  v7 = v2;
  v8 = v6(v4, v5);
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v11 = *(v0 + v9);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v8 + 32);
LABEL_8:
    SyncedLyricsViewController.handleTap(on:)(v12);

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    return 1;
  }

  __break(1u);
  return result;
}

void SyncedLyricsViewController.updateProgress(for:animated:)(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
    if (swift_dynamicCastClass())
    {
      v5 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v5)
      {
        swift_beginAccess();
        v6 = *(v5 + 96);
        if (v6)
        {
          v7 = v3;

          v8 = outlined copy of (@escaping @callee_guaranteed () -> ())?(v6);
          v9 = v6(v8);
          swift_beginAccess();
          if (*(v5 + 88) == 1)
          {
            v10 = Lyrics.spatialOffset.getter();
            outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
          }

          else
          {

            outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6);
            v10 = 0.0;
          }

          SyncedLyricsLineView.SBS_TextContentView.setProgress(_:animated:)(v9 - v10, a2 & 1);
        }
      }
    }
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.presentSharing()()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    v18 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (!v18)
    {
      return;
    }

    swift_beginAccess();
    v19 = *(v18 + 96);
    if (!v19)
    {
      return;
    }

    v20 = outlined copy of (@escaping @callee_guaranteed () -> ())?(v19);
    v21 = v19(v20);
    swift_beginAccess();
    if (*(v18 + 88) == 1)
    {
      v22 = Lyrics.spatialOffset.getter();
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19);
    }

    else
    {

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v19);
      v22 = 0.0;
    }

    v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    if (*&v3[v23])
    {

      Lyrics.line(before:useOriginalLines:)(0, &v47, v21 - v22);

      if (*(&v48 + 1))
      {
        outlined init with take of ActionPerforming(&v47, v50);
        v24 = v51;
        v25 = v52;
        __swift_project_boxed_opaque_existential_0Tm(v50, v51);
        v26 = (*(v25 + 16))(v24, v25);
        v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v28 = *&v3[v27];
        if ((v28 & 0xC000000000000001) != 0)
        {
          goto LABEL_58;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v28 + 8 * v26 + 32);
          goto LABEL_30;
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    outlined destroy of TaskPriority?(&v47, &_s7LyricsX0A4Line_pSgMd);
    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = v30;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = *(v5 + 8 * v7 + 32);
LABEL_8:
  v7 = v8;
  while (1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v7 + v2, v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
    if (!swift_dynamicCast())
    {
      goto LABEL_39;
    }

    outlined init with copy of ActionPerforming(v7 + v2, v50);
    v9 = v51;
    v1 = v52;
    __swift_project_boxed_opaque_existential_0Tm(v50, v51);
    v10 = (*(v1 + 16))(v9, v1);
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v11 = *&v3[v1];
    if (v11 >> 62)
    {
      goto LABEL_38;
    }

    if (v5 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_39:
    outlined init with copy of ActionPerforming(v7 + v2, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    outlined init with copy of ActionPerforming(v7 + v2, v50);
    v31 = v51;
    v32 = v52;
    __swift_project_boxed_opaque_existential_0Tm(v50, v51);
    v33 = (*(v32 + 16))(v31, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    if (v33 < 1)
    {
      goto LABEL_48;
    }

    outlined init with copy of ActionPerforming(v7 + v2, v50);
    v34 = v51;
    v35 = v52;
    __swift_project_boxed_opaque_existential_0Tm(v50, v51);
    v36 = (*(v35 + 16))(v34, v35);
    v37 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_54;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v39 = *&v3[v38];
    if ((v39 & 0xC000000000000001) != 0)
    {
      goto LABEL_55;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v37 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = v39 + 8 * v37;
LABEL_46:
      v40 = *(v17 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_58:

    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v29 = v46;
LABEL_30:
    v7 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (v5 >= _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_39;
  }

LABEL_13:
  outlined init with copy of ActionPerforming(v7 + v2, v50);
  v12 = v51;
  v13 = v52;
  __swift_project_boxed_opaque_existential_0Tm(v50, v51);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v16 = *&v3[v1];
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = v16 + 8 * v15;
        goto LABEL_46;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:

      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_47:

      v7 = v40;
      goto LABEL_48;
    }
  }

  v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v7 = v45;
LABEL_48:
  v41 = v7;
  [v41 setHighlighted:1];
  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
  v42 = static OS_dispatch_queue.main.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = v3;
  *(v43 + 24) = v41;
  v44 = v3;
  OS_dispatch_queue.asyncAfter(_:block:)(partial apply for specialized closure #1 in SyncedLyricsViewController.presentSharing(), v43);
}

id SyncedLyricsViewController.startSharing(from:)(char *a1)
{
  v3 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  __chkstk_darwin();
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(&a1[v14], v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if ((v15 & 1) == 0)
  {
    v16(v7, 1, 1, v8);
    return outlined destroy of TaskPriority?(v7, &_s7LyricsX0A0C8TextLineVSgMd);
  }

  v16(v7, 0, 1, v8);
  outlined init with take of Lyrics.Transliteration(v7, v13, type metadata accessor for Lyrics.TextLine);
  v17 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v17)
  {
    return outlined destroy of Lyrics.TextLine(v13, type metadata accessor for Lyrics.TextLine);
  }

  [v17 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for UIAction(0, &_sSo6UIViewCML_2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return outlined destroy of Lyrics.TextLine(v13, type metadata accessor for Lyrics.TextLine);
  }

  v57 = v61;
  [a1 cancelTrackingWithEvent:0];
  v18 = outlined init with copy of Lyrics.TextLine(v13, v11, type metadata accessor for Lyrics.TextLine);
  v19 = *&v13[*(v8 + 60)];
  v20 = v1;
  v21 = v19(v18);
  v22 = v20;
  result = [v20 view];
  if (result)
  {
    v24 = result;
    if (v21)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v26 = UIView.untransformedFrame.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [v24 convertRect:*&v22[v33] fromCoordinateSpace:{v26, v28, v30, v32}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    LOBYTE(v33) = [a1 isSelected];
    [a1 transform];
    v42 = v59;
    v43 = v60;
    v56 = v58[0];
    v55 = v58[1];
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    v45 = swift_allocObject();
    *(v45 + 16) = a1;
    outlined init with take of Lyrics.Transliteration(v11, v5, type metadata accessor for Lyrics.TextLine);
    *&v5[v3[5]] = v57;
    *&v5[v3[6]] = v25;
    v46 = &v5[v3[7]];
    *v46 = v35;
    *(v46 + 1) = v37;
    *(v46 + 2) = v39;
    *(v46 + 3) = v41;
    v5[v3[8]] = v33;
    v47 = &v5[v3[9]];
    v48 = v55;
    *v47 = v56;
    *(v47 + 1) = v48;
    *(v47 + 4) = v42;
    *(v47 + 5) = v43;
    v49 = &v5[v3[10]];
    *v49 = partial apply for closure #1 in SyncedLyricsViewController.startSharing(from:);
    v49[1] = v44;
    v50 = &v5[v3[11]];
    *v50 = partial apply for closure #2 in SyncedLyricsViewController.startSharing(from:);
    v50[1] = v45;
    v51 = &v22[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
    swift_beginAccess();
    v52 = *v51;
    if (*v51)
    {
      v53 = a1;
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v52);
      v52(v5);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v52);
    }

    else
    {
      v54 = a1;
    }

    outlined destroy of Lyrics.TextLine(v5, type metadata accessor for SyncedLyricsSharingTransitionInfo);
    return outlined destroy of Lyrics.TextLine(v13, type metadata accessor for Lyrics.TextLine);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SyncedLyricsViewController.displayLinkResumeIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v1)
  {
    v2 = v1;
    [v2 setPaused:SyncedLyricsViewController.displayLinkShouldPause()() & 1];
  }
}

void SyncedLyricsViewController.updateInsets()()
{
  v1 = v0;
  SyncedLyricsViewController.cancelAnimations()();
  v2 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v2)
  {
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v4 = *(v2 + 7);
    v5 = *&v1[v3];
    [v5 contentInset];
    [v5 setContentInset:v4];
LABEL_23:

    goto LABEL_24;
  }

  if ((v2[48] & 0x80000000) == 0)
  {
    v6 = *(v2 + 2);
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*&v1[v7] contentOffset];
    v9 = v8;
    v11 = v10;
    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 frame];
      v15 = v14;

      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
      swift_beginAccess();
      v17 = *&v1[v16];
      if (v17 > 0.0)
      {
LABEL_8:
        v22 = v9;
        v23 = v11;
        v24 = v15;
        v25 = v6 * (CGRectGetHeight(*(&v17 - 3)) / 100.0);
        [*(v2 + 25) ascender];
        v27 = v25 - v26;
        goto LABEL_21;
      }

      v18 = [v1 view];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        v21 = v20;

        v17 = v21;
        goto LABEL_8;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_11:
      if ((v29 & 0xC000000000000001) != 0)
      {

        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v30 = *(v29 + 32);
      }

      v31 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      outlined init with copy of ActionPerforming(v30 + v31, v63);

      outlined init with take of ActionPerforming(v63, v64);
      v32 = v65;
      v33 = v66;
      __swift_project_boxed_opaque_existential_0Tm(v64, v65);
      v34 = (*(v33 + 16))(v32, v33);
      v35 = *&v1[v28];
      if ((v35 & 0xC000000000000001) != 0)
      {

        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v36 = v62;
        goto LABEL_18;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        if (v34 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v35 + 8 * v34 + 32);
LABEL_18:
          v37 = v36;
          v38 = UIView.untransformedFrame.getter();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          SyncedLyricsViewController.contentOffset(for:)(v38, v40, v42, v44);
          v46 = v45;

          v27 = fabs(v46);
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  [*(v2 + 25) _bodyLeading];
  v27 = v47;
LABEL_21:
  v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v49 = *&v1[v48];
  [v49 contentInset];
  [v49 setContentInset:v27];

  [*&v1[v48] contentOffset];
  if (v50 <= 0.0)
  {
    v5 = *&v1[v48];
    [v5 contentOffset];
    [v5 setContentOffset:?];
    goto LABEL_23;
  }

LABEL_24:
  *&v63[0] = 0;
  *(&v63[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v69 = v63[0];
  v51._object = 0x80000001004D8330;
  v51._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v51);
  v52 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v1[v52] contentOffset];
  v67 = v53;
  v68 = v54;
  _sSo7CGPointVMa_3(0);
  _print_unlocked<A, B>(_:_:)();
  v55 = v69;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static SyncedLyricsViewController.logger);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v69 = v60;
    *v59 = 136315138;
    v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v55, *(&v55 + 1), &v69);

    *(v59 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  else
  {
  }
}

void SyncedLyricsViewController.layoutLines()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = isEscapingClosureAtFileLocation;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    v3 = *(isEscapingClosureAtFileLocation + v2);
    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:
      v15 = isEscapingClosureAtFileLocation;

      return;
    }
  }

  else
  {
    v11 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in closure #1 in SyncedLyricsViewController.layoutLines();
    *(v12 + 24) = v3;
    v21 = partial apply for closure #2 in ActionMenuView.body.getter;
    v22 = v12;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed () -> ();
    v20 = &block_descriptor_299;
    v13 = _Block_copy(&aBlock);
    v14 = isEscapingClosureAtFileLocation;

    [v11 performWithoutAnimation:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v16 = isEscapingClosureAtFileLocation;

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
    v7 = isEscapingClosureAtFileLocation;
    v8 = v6;
LABEL_9:
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in SyncedLyricsViewController.layoutLines();
    *(v9 + 24) = v1;
    v21 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
    v22 = v9;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    v20 = &block_descriptor_305;
    v10 = _Block_copy(&aBlock);

    [v8 addCompletion:v10];

    _Block_release(v10);

    return;
  }

  __break(1u);
}

uint64_t closure #1 in SyncedLyricsViewController.layoutLines()(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = closure #1 in closure #1 in SyncedLyricsViewController.layoutLines()partial apply;
  *(v4 + 24) = v3;
  v8[4] = partial apply for closure #2 in ActionMenuView.body.getter;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_316;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in SyncedLyricsViewController.layoutLines()(unint64_t a1)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    goto LABEL_9;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = *(v9 + 4);
  }

  v9 = v11;
  v3 = UIView.untransformedFrame.getter();
  v4 = v12;
  v5 = v13;
  v6 = v14;

LABEL_9:
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *(a1 + v2);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v15 + 8 * i + 32);
    }

    v18 = v17;
    SyncedLyricsViewController.layout(lineView:)(v17);
  }

LABEL_18:
  if (!v10)
  {
    return;
  }

  v9 = *(a1 + v8);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_21:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v10 = *(v9 + 4);
    }

    [v10 frame];
    v51.origin.x = v3;
    v51.origin.y = v4;
    v51.size.width = v5;
    v51.size.height = v6;
    if (CGRectEqualToRect(v50, v51))
    {
LABEL_34:

      return;
    }

    i = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v10 + i, &v46);
    v19 = v48;
    v20 = v49;
    __swift_project_boxed_opaque_existential_0Tm(&v46, v48);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(a1 + v2);
    if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v23 = *(v22 + 8 * v21 + 32);
LABEL_29:
      v24 = v23;
      v25 = UIView.untransformedFrame.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      SyncedLyricsViewController.contentOffset(for:)(v25, v27, v29, v31);
      v33 = v32;

      __swift_destroy_boxed_opaque_existential_0Tm(&v46);
      v34 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a1 + v34) setContentOffset:{0.0, v33}];
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      v44 = v46;
      v45 = v47;
      v35._object = 0x80000001004D8200;
      v35._countAndFlagsBits = 0xD00000000000002ELL;
      String.append(_:)(v35);
      v46 = 0;
      v47 = *&v33;
      _sSo7CGPointVMa_3(0);
      _print_unlocked<A, B>(_:_:)();
      v36._countAndFlagsBits = 0x20726F6620;
      v36._object = 0xE500000000000000;
      String.append(_:)(v36);
      outlined init with copy of ActionPerforming(v10 + i, &v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
      _print_unlocked<A, B>(_:_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(&v46);
      v19 = v44;
      a1 = v45;
      if (one-time initialization token for logger == -1)
      {
LABEL_30:
        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static SyncedLyricsViewController.logger);

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136315138;
          v42 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v19, a1, &v46);

          *(v40 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v38, v39, "%s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
        }

        else
        {
        }

        goto LABEL_34;
      }

LABEL_47:
      swift_once();
      goto LABEL_30;
    }

LABEL_45:

    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v23 = v43;
    goto LABEL_29;
  }

LABEL_41:
  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_21;
  }
}

void SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(char *a1, char a2, double *a3)
{
  v4 = v3;
  v87 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v82 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v85 = *(v9 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v82 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v13] frame];
  Width = CGRectGetWidth(v95);
  v15 = [v4 view];
  if (!v15)
  {
    goto LABEL_58;
  }

  v16 = v15;
  v17 = &selRef_constraintEqualToAnchor_constant_;
  [v15 layoutMargins];

  UIEdgeInsets.horizontal.getter();
  v19 = Width - v18;
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(&a1[v20], v92);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  v88 = v9;
  if (swift_dynamicCast())
  {
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v23 = *&v4[v22];
    v24 = &selRef_parent;
    if (v23 && !*(v23 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType))
    {
      v27 = 1.0;
    }

    else
    {
      v25 = v21;
      v26 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      v27 = v26[79];
      v21 = v25;
    }

    outlined destroy of Lyrics.TextLine(v12, type metadata accessor for Lyrics.TextLine);
    v17 = &selRef_constraintEqualToAnchor_constant_;
  }

  else
  {
    v27 = 1.0;
    v24 = &selRef_parent;
    if ((swift_dynamicCast() & 1) == 0 && swift_dynamicCast())
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  if (a2 == 2)
  {
    [a1 sizeThatFits:{v19 * v27, INFINITY}];
  }

  else
  {
    v28 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v28)
    {
      v29 = v21;
      v30 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
      ObjectType = swift_getObjectType();
      v92[0] = v28;
      v32 = *(v30 + 96);
      v33 = v30;
      v21 = v29;
      v32(a2 & 1, ObjectType, v33, v19 * v27, INFINITY);
    }
  }

  outlined init with copy of ActionPerforming(&a1[v20], v92);
  if (swift_dynamicCast())
  {
    v34 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    if ((*v34 & 1) == 0)
    {
      v82 = v21;
      v35 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
      if (v35)
      {
        v36 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        outlined init with copy of ActionPerforming(v35 + v36, v89);
        v38 = v90;
        v37 = v91;
        __swift_project_boxed_opaque_existential_0Tm(v89, v90);
        (*(v37 + 16))(v38, v37);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
      }

      outlined init with copy of ActionPerforming(&a1[v20], v89);
      v39 = v90;
      v40 = v91;
      __swift_project_boxed_opaque_existential_0Tm(v89, v90);
      (*(v40 + 16))(v39, v40);
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      if (v35)
      {
        v24 = &selRef_parent;
        v17 = &selRef_constraintEqualToAnchor_constant_;
      }

      else
      {
        v24 = &selRef_parent;
        v17 = &selRef_constraintEqualToAnchor_constant_;
      }

      v21 = v82;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  outlined init with copy of ActionPerforming(&a1[v20], v92);
  v41 = v93;
  v42 = v94;
  __swift_project_boxed_opaque_existential_0Tm(v92, v93);
  v43 = (*(v42 + 16))(v41, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  if (!v43)
  {
    swift_beginAccess();
    goto LABEL_50;
  }

  if (v87[4])
  {
    outlined init with copy of ActionPerforming(&a1[v20], v92);
    v44 = v93;
    v45 = v94;
    __swift_project_boxed_opaque_existential_0Tm(v92, v93);
    v46 = (*(v45 + 16))(v44, v45);
    v47 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v49 = *&v4[v48];
      if ((v49 & 0xC000000000000001) == 0)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v47 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v50 = *(v49 + 8 * v47 + 32);
          goto LABEL_31;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v50 = v81;
LABEL_31:
    v51 = v50;
    [v51 frame];
    Height = CGRectGetHeight(v96);
    v53 = UIView.untransformedFrame.getter();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v97.origin.x = v53;
    v97.origin.y = v55;
    v97.size.width = v57;
    v97.size.height = v59;
    CGRectGetMaxY(v97);

    v60 = v88;
    v61 = v86;
    if (Height > 0.0)
    {
      swift_beginAccess();
    }

    goto LABEL_38;
  }

  v63 = v87[2];
  v62 = v87[3];
  v65 = *v87;
  v64 = v87[1];
  v98.origin.x = *v87;
  v98.origin.y = v64;
  v98.size.width = v63;
  v98.size.height = v62;
  v66 = CGRectGetHeight(v98);
  v99.origin.x = v65;
  v99.origin.y = v64;
  v99.size.width = v63;
  v99.size.height = v62;
  CGRectGetMaxY(v99);
  if (v66 > 0.0)
  {
    swift_beginAccess();
  }

  v60 = v88;
  v61 = v86;
LABEL_38:
  v67 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v67 != 1)
  {
    goto LABEL_50;
  }

  outlined init with copy of ActionPerforming(&a1[v20], v92);
  v68 = swift_dynamicCast();
  v69 = *(v85 + 56);
  if ((v68 & 1) == 0)
  {
    v69(v61, 1, 1, v60);
    outlined destroy of TaskPriority?(v61, &_s7LyricsX0A0C8TextLineVSgMd);
    goto LABEL_48;
  }

  v69(v61, 0, 1, v60);
  v70 = v61;
  v71 = v84;
  outlined init with take of Lyrics.Transliteration(v70, v84, type metadata accessor for Lyrics.TextLine);
  if (*(v71 + *(v60 + 48)) != 1)
  {
    v77 = v71;
LABEL_47:
    outlined destroy of Lyrics.TextLine(v77, type metadata accessor for Lyrics.TextLine);
    goto LABEL_48;
  }

  v72 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v73 = *&v4[v72];
  if (!v73)
  {
    v77 = v84;
    goto LABEL_47;
  }

  v82 = v21;
  v87 = &v82;
  v74 = *(v73 + 48);
  __chkstk_darwin();
  v75 = v84;
  *(&v82 - 2) = v84;

  v76 = v83;
  specialized Sequence.first(where:)(partial apply for closure #1 in Lyrics.originalLine(for:), v74, v83);

  outlined destroy of Lyrics.TextLine(v75, type metadata accessor for Lyrics.TextLine);
  if ((*(v85 + 48))(v76, 1, v88) == 1)
  {
    outlined destroy of TaskPriority?(v76, &_s7LyricsX0A0C8TextLineVSgMd);
    v17 = &selRef_constraintEqualToAnchor_constant_;
    v24 = &selRef_parent;
  }

  else
  {
    v80 = *(v76 + 16);
    outlined destroy of Lyrics.TextLine(v76, type metadata accessor for Lyrics.TextLine);
    v17 = &selRef_constraintEqualToAnchor_constant_;
    v24 = &selRef_parent;
    if (v80 > 0)
    {
      goto LABEL_50;
    }
  }

LABEL_48:
  outlined init with copy of ActionPerforming(&a1[v20], v92);
  if (swift_dynamicCast())
  {
  }

LABEL_50:
  v78 = [v4 v24[417]];
  if (v78)
  {
    v79 = v78;
    [v78 v17[95]];

    return;
  }

LABEL_59:
  __break(1u);
}

id SyncedLyricsViewController.createAutomaticallyCreatedText()()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v73 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for String.LocalizationValue();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin();
  v79 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v71 - v4;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin();
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0);
  __chkstk_darwin();
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v71 - v8;
  v9 = type metadata accessor for Lyrics.Transliteration(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0);
  __chkstk_darwin();
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v71 - v15;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  v18 = v0 + v17;
  v19 = v0;
  outlined init with copy of TaskPriority?(v18, v16, &_s7LyricsX0A0C15TransliterationVSgMd_0);
  v20 = *(v10 + 48);
  if (v20(v16, 1, v9))
  {
    outlined destroy of TaskPriority?(v16, &_s7LyricsX0A0C15TransliterationVSgMd_0);
  }

  else
  {
    outlined init with copy of Lyrics.TextLine(v16, v12, type metadata accessor for Lyrics.Transliteration);
    outlined destroy of TaskPriority?(v16, &_s7LyricsX0A0C15TransliterationVSgMd_0);
    v21 = v12[*(v9 + 24)];
    outlined destroy of Lyrics.TextLine(v12, type metadata accessor for Lyrics.Transliteration);
    if (v21)
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v24 = *(v0 + v23);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v24 + v25, v14, &_s7LyricsX0A0C15TransliterationVSgMd_0);
    if (v20(v14, 1, v9))
    {
      outlined destroy of TaskPriority?(v14, &_s7LyricsX0A0C15TransliterationVSgMd_0);
      v22 = 0;
    }

    else
    {
      outlined init with copy of Lyrics.TextLine(v14, v12, type metadata accessor for Lyrics.Transliteration);
      outlined destroy of TaskPriority?(v14, &_s7LyricsX0A0C15TransliterationVSgMd_0);
      v22 = v12[*(v9 + 24)];
      outlined destroy of Lyrics.TextLine(v12, type metadata accessor for Lyrics.Transliteration);
    }

    v19 = v0;
  }

  else
  {
    v22 = 0;
  }

LABEL_11:
  v27 = v77;
  v26 = v78;
  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  v29 = v76;
  outlined init with copy of TaskPriority?(v19 + v28, v76, &_s7LyricsX0A0C11TranslationVSgMd_0);
  v30 = *(v27 + 48);
  v31 = v30(v29, 1, v26);
  v32 = v79;
  if (v31)
  {
    outlined destroy of TaskPriority?(v29, &_s7LyricsX0A0C11TranslationVSgMd_0);
    goto LABEL_15;
  }

  v33 = v72;
  outlined init with copy of Lyrics.TextLine(v29, v72, type metadata accessor for Lyrics.Translation);
  outlined destroy of TaskPriority?(v29, &_s7LyricsX0A0C11TranslationVSgMd_0);
  v34 = *(v33 + *(v26 + 28));
  outlined destroy of Lyrics.TextLine(v33, type metadata accessor for Lyrics.Translation);
  if (v34 != 1)
  {
LABEL_15:
    v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v37 = *(v19 + v36);
    v35 = v80;
    if (v37)
    {
      v38 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v39 = v37 + v38;
      v40 = v71;
      outlined init with copy of TaskPriority?(v39, v71, &_s7LyricsX0A0C11TranslationVSgMd_0);
      if (!v30(v40, 1, v26))
      {
        v41 = v72;
        outlined init with copy of Lyrics.TextLine(v40, v72, type metadata accessor for Lyrics.Translation);
        outlined destroy of TaskPriority?(v40, &_s7LyricsX0A0C11TranslationVSgMd_0);
        v42 = *(v41 + *(v26 + 28));
        outlined destroy of Lyrics.TextLine(v41, type metadata accessor for Lyrics.Translation);
        if (v22 & 1) != 0 || (v42)
        {
          goto LABEL_22;
        }

        return 0;
      }

      outlined destroy of TaskPriority?(v40, &_s7LyricsX0A0C11TranslationVSgMd_0);
    }

    if (v22)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v35 = v80;
LABEL_22:
  String.LocalizationValue.init(stringLiteral:)();
  v44 = v74;
  v43 = v75;
  (*(v74 + 16))(v32, v35, v75);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v45 = static NSBundle.module;
  static Locale.current.getter();
  v46 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v47;
  (*(v44 + 8))(v35, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v50 = v19 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v51 = *(v50 + 368);
  v52 = type metadata accessor for UIAction(0, &_sSo7UIColorCML_1);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  v53 = *(v50 + 344);
  *(inited + 104) = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1);
  *(inited + 80) = v53;
  v54 = NSForegroundColorAttributeName;
  v55 = v51;
  v56 = NSFontAttributeName;
  v57 = v53;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0);
  swift_arrayDestroy();
  v58 = [objc_allocWithZone(NSTextAttachment) init];
  v59 = String._bridgeToObjectiveC()();
  v60 = [objc_opt_self() systemImageNamed:v59];

  if (v60)
  {
    v61 = [v60 imageWithTintColor:*(v50 + 368)];
  }

  else
  {
    v61 = 0;
  }

  [v58 setImage:v61];

  _sSo21NSAttributedStringKeyaMa_1(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1);
  v63 = v58;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v62 = [objc_opt_self() attributedStringWithAttachment:v63 attributes:isa];

  v81 = 32;
  v82 = 0xE100000000000000;
  v65._countAndFlagsBits = v46;
  v65._object = v48;
  String.append(_:)(v65);

  v66 = objc_allocWithZone(NSAttributedString);
  v67 = String._bridgeToObjectiveC()();

  v68 = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = [v66 initWithString:v67 attributes:v68];

  [v62 appendAttributedString:v69];
  return v62;
}

char *SyncedLyricsViewController.layoutBottomViews(lastLineView:lastLineViewPreviousFrame:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = a1;
    goto LABEL_10;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v8 + 8 * v10 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_10:
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = a1;
  [v12 frame];
  Width = CGRectGetWidth(v99);
  result = [v3 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = result;
  [result layoutMargins];

  UIEdgeInsets.horizontal.getter();
  v17 = Width - v16;
  v18 = v6;
  v19 = UIView.untransformedFrame.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = SyncedLyricsViewController.createAutomaticallyCreatedText()();
  v27 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
  if (!v26)
  {
    v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v33 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    if (v33)
    {
      [v33 removeFromSuperview];
      v34 = *&v3[v32];
    }

    else
    {
      v34 = 0;
    }

    p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
    *&v3[v32] = 0;

    v51 = 0;
    goto LABEL_26;
  }

  v28 = v26;
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
  v30 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
  if (v30)
  {
    v95 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    v31 = v30;
  }

  else
  {
    v35 = [objc_allocWithZone(UILabel) init];
    v95 = v35;
    [v35 setNumberOfLines:0];
    v36 = *&v3[v29];
    *&v3[v29] = v35;
    v31 = v35;

    v27 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
    v30 = 0;
  }

  v37 = v30;
  [v31 setAttributedText:v28];
  [v31 v27[254]];
  result = [v3 view];
  if (!result)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v38 = result;
  [result layoutMargins];

  v100.origin.x = v19;
  v100.origin.y = v21;
  v100.size.width = v23;
  v100.size.height = v25;
  CGRectGetMaxY(v100);
  p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
  swift_beginAccess();
  v40 = *&v3[v11];
  v96 = 0u;
  v97 = 0u;
  v98 = 1;
  v41 = v40;
  CGRect.applyingLayoutDirection(in:bounds:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = objc_opt_self();
  if ([v50 _isInAnimationBlockWithAnimationsEnabled] && (*(a2 + 32) & 1) == 0)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    *(v52 + 24) = v45;
    *(v52 + 32) = v47;
    *(v52 + 40) = v49;
    v53 = *(a2 + 16);
    *(v52 + 48) = *a2;
    *(v52 + 64) = v53;
    *(v52 + 80) = v3;
    *(v52 + 88) = &v95;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for closure #1 in SyncedLyricsViewController.layoutBottomViews(lastLineView:lastLineViewPreviousFrame:);
    *(v54 + 24) = v52;
    aBlock[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_221_0;
    v55 = _Block_copy(aBlock);
    v56 = v3;

    [v50 performWithoutAnimation:v55];
    _Block_release(v55);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v51 = partial apply for closure #1 in SyncedLyricsViewController.layoutBottomViews(lastLineView:lastLineViewPreviousFrame:);
      v31 = v95;
      p_cache = (&OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line + 16);
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v51 = 0;
LABEL_23:
  [v31 setAlpha:1.0];
  [v95 setFrame:{v43, v45, v47, v49}];
  [*&v3[v11] addSubview:v95];
  v57 = v95;
  [v57 frame];
  v19 = v58;
  v21 = v59;
  v23 = v60;
  v25 = v61;

LABEL_26:
  v62 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  swift_beginAccess();
  if (*v62)
  {
    v93 = v62[3];
    v63 = v62[1];
    v64 = *v62;
    [v64 sizeThatFits:{v17, INFINITY}];
    v66 = v65;
    v68 = v67;
    v69 = *&v3[v11];
    v70 = v64;
    [v69 frame];
    v71 = (CGRectGetWidth(v101) - v66) * 0.5;
    v102.origin.x = v19;
    v102.origin.y = v21;
    v102.size.width = v23;
    v102.size.height = v25;
    [v70 setFrame:{v71, v63 + CGRectGetMaxY(v102), v66, v68}];

    [*&v3[v11] addSubview:v70];
    [v70 frame];
    v19 = v72;
    v21 = v73;
    v23 = v74;
    v76 = v75;

    v25 = v93 + v76;
  }

  v77 = *&v3[v11];
  [v77 frame];
  v78 = CGRectGetWidth(v103);
  v104.origin.x = v19;
  v104.origin.y = v21;
  v104.size.width = v23;
  v104.size.height = v25;
  [v77 setContentSize:{v78, CGRectGetMaxY(v104)}];

  v79 = p_cache[434] + v3;
  swift_beginAccess();
  if (*v79)
  {

    v80 = *&v3[v11];
  }

  else
  {
    [*&v3[v11] frame];
    Height = CGRectGetHeight(v105);
    [*&v3[v11] contentInset];
    v83 = v82;
    v84 = UIView.untransformedFrame.getter();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    v106.origin.x = v84;
    v106.origin.y = v86;
    v106.size.width = v88;
    v106.size.height = v90;
    v91 = Height - (v83 + CGRectGetHeight(v106));
    v92 = *&v3[v11];
    v80 = v92;
    if (v91 <= 0.0)
    {
      [v92 contentInset];
    }
  }

  [v80 contentInset];
  [v80 setContentInset:?];

  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v51);
}

id closure #1 in SyncedLyricsViewController.layoutBottomViews(lastLineView:lastLineViewPreviousFrame:)(uint64_t a1, id *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v18.origin.y = a8;
  v18.origin.x = a7;
  v18.size.width = a9;
  v18.size.height = a10;
  MaxY = CGRectGetMaxY(v18);
  v16 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  [*a2 setFrame:{a3, MaxY + *(v16 + 112), a5, a6}];
  return [*a2 setAlpha:0.0];
}

char *SyncedLyricsViewController.layout(lineView:)(char *a1)
{
  v2 = v1;
  memset(v34, 0, sizeof(v34));
  v4 = 1;
  v35 = 1;
  SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(a1, 2, v34);
  UIView.untransformedFrame.setter(v5, v6, v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v9 + v10, v31, &_s7LyricsX0A4Line_pSgMd);
    v11 = v32;
    if (v32)
    {
      v12 = v33;
      __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      v13 = *(v11 - 8);
      v14 = __chkstk_darwin();
      v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v13 + 16))(v16, v14);
      outlined destroy of TaskPriority?(v31, &_s7LyricsX0A4Line_pSgMd);
      v17 = (*(v12 + 16))(v11, v12);
      (*(v13 + 8))(v16, v11);
      v4 = 0;
      goto LABEL_6;
    }

    outlined destroy of TaskPriority?(v31, &_s7LyricsX0A4Line_pSgMd);
  }

  v17 = 0;
LABEL_6:
  v18 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(&a1[v18], v31);
  v19 = v32;
  v20 = v33;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v21 = (*(v20 + 16))(v19, v20);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  else
  {
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    if (v17 == v22)
    {
      SyncedLyricsViewController.updateTimestampLabelFrame()();
    }
  }

  outlined init with copy of ActionPerforming(&a1[v18], v31);
  v23 = v32;
  v24 = v33;
  __swift_project_boxed_opaque_existential_0Tm(v31, v32);
  v25 = (*(v24 + 16))(v23, v24);
  v26 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (v27)
  {
    v28 = *(*(v27 + 40) + 16) - 1;
  }

  else
  {
    v28 = -1;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v31);
  if (v25 == v28)
  {
    return SyncedLyricsViewController.layoutBottomViews(lastLineView:lastLineViewPreviousFrame:)(a1, v34);
  }

  return result;
}

void SyncedLyricsViewController.updateTimestampLabelFrame()()
{
  v1 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v1 + v3, &v36, &_s7LyricsX0A4Line_pSgMd);
    if (v37)
    {
      outlined init with take of ActionPerforming(&v36, v38);
      v4 = v39;
      v5 = v40;
      __swift_project_boxed_opaque_existential_0Tm(v38, v39);
      v6 = *(v5 + 16);
      v7 = v1;
      v8 = v6(v4, v5);
      v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v10 = *&v2[v9];
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v10 + 8 * v8 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_7:
      v12 = v7;
      [v12 systemLayoutSizeFittingSize:{INFINITY, INFINITY}];
      v14 = v13;
      v16 = v15;
      v17 = *&v11[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      v18 = v11;
      v19 = UIView.untransformedFrame.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if (v17 == 2)
      {
        v41.origin.x = v19;
        v41.origin.y = v21;
        v41.size.width = v23;
        v41.size.height = v25;
        v19 = CGRectGetMaxX(v41) - v14;
      }

      v26 = v18;
      UIView.untransformedFrame.getter();
      v28 = v27;

      v29 = [v2 view];
      if (v29)
      {
        v30 = v29;
        v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [v30 convertPoint:*&v2[v31] fromCoordinateSpace:{v19, v28 - v16}];
        v33 = v32;
        v35 = v34;

        [v12 setFrame:{v33, v35, v14, v16}];
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        return;
      }

      goto LABEL_16;
    }

    outlined destroy of TaskPriority?(&v36, &_s7LyricsX0A4Line_pSgMd);
  }
}

uint64_t SyncedLyricsViewController.lineData(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Lyrics.Transliteration(0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin();
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0);
  __chkstk_darwin();
  v52 = &v42 - v6;
  v48 = type metadata accessor for Lyrics.Translation(0);
  v45 = *(v48 - 8);
  __chkstk_darwin();
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0);
  __chkstk_darwin();
  v47 = &v42 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationV4LineVSgMd);
  __chkstk_darwin();
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v49 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v42 - v17;
  __chkstk_darwin();
  v20 = &v42 - v19;
  outlined init with copy of ActionPerforming(a1, v57);
  v21 = *(v10 + 56);
  v53 = v20;
  v21(v20, 1, 1, v9);
  v22 = type metadata accessor for Lyrics.Translation.Line(0);
  v23 = *(*(v22 - 8) + 56);
  v54 = v15;
  v23(v15, 1, 1, v22);
  outlined init with copy of ActionPerforming(v57, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  if (swift_dynamicCast())
  {
    v42 = a2;
    v21(v18, 0, 1, v9);
    outlined init with take of Lyrics.Transliteration(v18, v12, type metadata accessor for Lyrics.TextLine);
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
    v25 = v55;
    swift_beginAccess();
    v26 = v25 + v24;
    v27 = v47;
    outlined init with copy of TaskPriority?(v26, v47, &_s7LyricsX0A0C11TranslationVSgMd_0);
    v28 = v21;
    if ((*(v45 + 48))(v27, 1, v48))
    {
      v29 = v54;
      outlined destroy of TaskPriority?(v54, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      outlined destroy of TaskPriority?(v27, &_s7LyricsX0A0C11TranslationVSgMd_0);
      v30 = v46;
      v23(v46, 1, 1, v22);
    }

    else
    {
      v32 = v43;
      outlined init with copy of Lyrics.TextLine(v27, v43, type metadata accessor for Lyrics.Translation);
      outlined destroy of TaskPriority?(v27, &_s7LyricsX0A0C11TranslationVSgMd_0);
      v30 = v46;
      Lyrics.Translation.translatedLine(for:)(v12, v46);
      outlined destroy of Lyrics.TextLine(v32, type metadata accessor for Lyrics.Translation);
      v29 = v54;
      outlined destroy of TaskPriority?(v54, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    }

    outlined init with take of URL?(v30, v29, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
    v34 = v55;
    swift_beginAccess();
    v35 = v34 + v33;
    v36 = v52;
    outlined init with copy of TaskPriority?(v35, v52, &_s7LyricsX0A0C15TransliterationVSgMd_0);
    v37 = (*(v50 + 48))(v36, 1, v51);
    a2 = v42;
    if (v37)
    {
      outlined destroy of Lyrics.TextLine(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      outlined destroy of TaskPriority?(v53, &_s7LyricsX0A0C8TextLineVSgMd);
      outlined destroy of TaskPriority?(v36, &_s7LyricsX0A0C15TransliterationVSgMd_0);
      v38 = v49;
      v28(v49, 1, 1, v9);
    }

    else
    {
      v39 = v44;
      outlined init with copy of Lyrics.TextLine(v36, v44, type metadata accessor for Lyrics.Transliteration);
      outlined destroy of TaskPriority?(v36, &_s7LyricsX0A0C15TransliterationVSgMd_0);
      v38 = v49;
      Lyrics.Transliteration.transliteratedLine(for:)(v12, v49);
      outlined destroy of Lyrics.TextLine(v39, type metadata accessor for Lyrics.Transliteration);
      outlined destroy of Lyrics.TextLine(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      outlined destroy of TaskPriority?(v53, &_s7LyricsX0A0C8TextLineVSgMd);
    }

    outlined init with take of URL?(v38, v31, &_s7LyricsX0A0C8TextLineVSgMd);
  }

  else
  {
    v21(v18, 1, 1, v9);
    outlined destroy of TaskPriority?(v18, &_s7LyricsX0A0C8TextLineVSgMd);
    v31 = v53;
    v29 = v54;
  }

  outlined init with take of ActionPerforming(v57, a2);
  v40 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  outlined init with take of URL?(v31, a2 + *(v40 + 20), &_s7LyricsX0A0C8TextLineVSgMd);
  return outlined init with take of URL?(v29, a2 + *(v40 + 24), &_s7LyricsX0A0C11TranslationV4LineVSgMd);
}

void SyncedLyricsViewController.setupUI(with:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationV4LineVSgMd);
  __chkstk_darwin();
  v111 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v101 - v4;
  __chkstk_darwin();
  v6 = &v101 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v112 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v101 - v8;
  __chkstk_darwin();
  v109 = &v101 - v9;
  v110 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v11 = (&v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  v114 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v116 = v1;
  v13 = *&v1[v12];
  if (v13 >> 62)
  {
LABEL_64:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(a1 + 40);
  v16 = *(v15 + 16);
  v104 = v6;
  v105 = v11;
  if (v16 >= v14)
  {
    goto LABEL_8;
  }

  v17 = *&v116[v114];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
      goto LABEL_6;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (v18 < v16)
  {
    goto LABEL_66;
  }

LABEL_6:
  if (v16 != v18)
  {
    if (v16 < v18)
    {
      v11 = &selRef_constraintEqualToAnchor_constant_;
      v99 = v16;
      while (1)
      {
        v6 = *&v116[v114];
        if ((v6 & 0xC000000000000001) != 0)
        {

          v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v99 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v99 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v100 = *(v6 + 8 * v99 + 32);
        }

        ++v99;
        [v100 removeFromSuperview];

        if (v18 == v99)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_7:
  swift_beginAccess();
  specialized Array.replaceSubrange<A>(_:with:)(v16, v18, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  swift_endAccess();
  v11 = v105;
LABEL_8:
  v19 = *&v116[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
  *&v116[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;

  v20 = *(v15 + 16);
  v6 = v114;
  if (v20)
  {
    v21 = &v116[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v23 = v15 + 32;
    v108 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v113 = v21;
    swift_beginAccess();
    v101 = v22;
    swift_beginAccess();
    do
    {
      v115 = v20;
      outlined init with copy of ActionPerforming(v23, &v123);
      v25 = v116;
      SyncedLyricsViewController.lineData(for:)(&v123, v11);
      v26 = v125;
      v27 = v126;
      __swift_project_boxed_opaque_existential_0Tm(&v123, v125);
      v28 = (*(v27 + 16))(v26, v27);
      v29 = *&v25[v6];
      if (v29 >> 62)
      {
        if (v28 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_30:
          outlined init with copy of ActionPerforming(v11, v122);
          v64 = v110;
          outlined init with copy of TaskPriority?(v11 + *(v110 + 20), v112, &_s7LyricsX0A0C8TextLineVSgMd);
          outlined init with copy of TaskPriority?(v11 + *(v64 + 24), v111, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
          v65 = *&v116[v108];
          v66 = v113;
          if (v65)
          {
            if (*(v65 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || *(v113 + 88) == 1)
            {
              v67 = v11[3];
              v68 = v11[4];
              __swift_project_boxed_opaque_existential_0Tm(v11, v67);
              v6 = v114;
              v69 = (*(v68 + 3))(v67, v68);
            }

            else
            {
              v69 = v113[10];
            }
          }

          else
          {
            v69 = 4;
          }

          memcpy(v127, v66, 0x2B0uLL);
          v70 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView());
          outlined init with copy of SyncedLyricsViewController.Specs(v127, v121);
          v71 = specialized SyncedLyricsLineView.init(line:transliteratedLine:translatedLine:alignment:specs:)(v122, v112, v111, v69, v127);
          outlined destroy of SyncedLyricsViewController.Specs(v127);
          v72 = [v116 traitCollection];
          v73 = [v72 userInterfaceIdiom];

          if (v73 != 2)
          {
            type metadata accessor for UIAction(0, &_sSo8UIActionCML_2);
            v74 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            *(v76 + 16) = v74;
            *(v76 + 24) = v75;
            v6 = v114;
            v77 = v71;
            v78 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            [v77 addAction:v78 forControlEvents:64];
          }

          v79 = v116;
          v80 = *&v116[v101];
          v34 = v71;
          [v80 addSubview:v34];
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          if (*v113 == 1)
          {
            [v34 setUserInteractionEnabled:0];
          }

          else
          {
            v24 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
            [v24 setCancelsTouchesInView:0];
            [v24 addTarget:v116 action:"shareGestureHandler:"];
            [v34 addGestureRecognizer:v24];
          }

          goto LABEL_11;
        }
      }

      else if (v28 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v30 = v125;
      v31 = v126;
      __swift_project_boxed_opaque_existential_0Tm(&v123, v125);
      v32 = (*(v31 + 16))(v30, v31);
      v33 = *&v116[v6];
      if ((v33 & 0xC000000000000001) != 0)
      {

        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        a1 = v104;
      }

      else
      {
        a1 = v104;
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v34 = *(v33 + 8 * v32 + 32);
      }

      outlined init with copy of ActionPerforming(v11, v121);
      v35 = v110;
      outlined init with copy of TaskPriority?(v11 + *(v110 + 20), v109, &_s7LyricsX0A0C8TextLineVSgMd);
      outlined init with copy of TaskPriority?(v11 + *(v35 + 24), a1, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v36 = *&v116[v108];
      v107 = v23;
      if (v36)
      {
        if (*(v36 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || (v113[11] & 1) != 0)
        {
          v37 = v11;
          v38 = v11[3];
          v39 = v11[4];
          __swift_project_boxed_opaque_existential_0Tm(v37, v38);
          v40 = *(v39 + 3);
          v41 = v34;
          v42 = v40(v38, v39);
        }

        else
        {
          v42 = v113[10];
          v44 = v34;
        }
      }

      else
      {
        v43 = v34;
        v42 = 4;
      }

      outlined init with copy of ActionPerforming(v121, v122);
      v45 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_0Tm(&v34[v45]);
      outlined init with take of ActionPerforming(v122, &v34[v45]);
      swift_endAccess();
      v46 = v109;
      v47 = v102;
      outlined init with copy of TaskPriority?(v109, v102, &_s7LyricsX0A0C8TextLineVSgMd);
      v48 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      outlined assign with take of PlaybackIntentDescriptor.IntentType?(v47, &v34[v48], &_s7LyricsX0A0C8TextLineVSgMd);
      swift_endAccess();
      v49 = v103;
      outlined init with copy of TaskPriority?(a1, v103, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v50 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      outlined assign with take of PlaybackIntentDescriptor.IntentType?(v49, &v34[v50], &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      swift_endAccess();
      *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v42;
      SyncedLyricsLineView.updateContentView()();
      outlined destroy of TaskPriority?(a1, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
      outlined destroy of TaskPriority?(v46, &_s7LyricsX0A0C8TextLineVSgMd);
      __swift_destroy_boxed_opaque_existential_0Tm(v121);
      v51 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v51)
      {
        v52 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
        ObjectType = swift_getObjectType();
        v121[0] = v51;
        (*(v52 + 80))(ObjectType, v52);
      }

      v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v56 = SyncedLyricsLineView.contentView.modify(v121);
      v57 = *v55;
      if (*v55)
      {
        v58 = v55;
        v106 = v34[v54];
        v59 = *(v55 + 8);
        v60 = swift_getObjectType();
        *&v122[0] = v57;
        v61 = *(v59 + 40);
        v62 = v57;
        v61(v106, v60, v59);
        v63 = *v58;
        *v58 = *&v122[0];
        *(v58 + 8) = v59;
      }

      v56(v121, 0);
      v11 = v105;
      v6 = v114;
      v23 = v107;
      v128.value.super.isa = 0;
      SyncedLyricsLineView.setSelected(_:animator:)(0, v128);
LABEL_11:
      SyncedLyricsViewController.layout(lineView:)(v34);

      outlined destroy of Lyrics.TextLine(v11, type metadata accessor for SyncedLyricsViewController.LineData);
      __swift_destroy_boxed_opaque_existential_0Tm(&v123);
      v23 += 40;
      v20 = v115 - 1;
    }

    while (v115 != 1);
  }

  v81 = v116;
  SyncedLyricsViewController.updateBlur(views:)(0);
  SyncedLyricsViewController.updateInsets()();
  v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v81[v82] == 1)
  {
    v83 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v84 = v116;
    swift_beginAccess();
    v85 = *&v84[v83];
    [v85 contentInset];
    [v85 contentOffset];
    [v85 setContentOffset:?];
  }

  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v117 = v123;
  v118 = v124;
  v86._object = 0x80000001004D7F70;
  v86._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v86);
  v87 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  v88 = v116;
  swift_beginAccess();
  [*&v88[v87] contentOffset];
  v119 = v89;
  v120 = v90;
  _sSo7CGPointVMa_3(0);
  _print_unlocked<A, B>(_:_:)();
  v92 = v117;
  v91 = v118;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  __swift_project_value_buffer(v93, static SyncedLyricsViewController.logger);

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v117 = v97;
    *v96 = 136315138;
    v98 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v92, v91, &v117);

    *(v96 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v94, v95, "%s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
  }

  else
  {
  }
}

void closure #1 in SyncedLyricsViewController.setupUI(with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      SyncedLyricsViewController.handleTap(on:)(v2);

      v1 = v3;
    }
  }
}

id SyncedLyricsViewController.updateLines(animator:)(void *a1)
{
  v125 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationV4LineVSgMd);
  __chkstk_darwin();
  v124 = &v105 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v123 = &v105 - v3;
  v122 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v5 = (&v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (!v8)
  {
    return result;
  }

  SyncedLyricsViewController.cancelAnimations()();
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v1 + v9) contentOffset];
  v11 = v10;
  v111 = v9;
  [*(v1 + v9) contentOffset];
  v127 = v12;
  v14 = v13;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_81;
  }

  v15 = result;
  [result frame];
  v17 = v16;

  v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 > 0.0)
  {
    goto LABEL_6;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_81:
    __break(1u);
    return result;
  }

  v20 = result;
  [result frame];
  v19 = v21;

LABEL_6:
  v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    goto LABEL_72;
  }

  v126 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v25 = 0;
  do
  {
    v26 = v25;
    if (v126 == v25)
    {
      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v24 + 16))
      {
        goto LABEL_70;
      }

      v27 = *(v23 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_69;
    }

    [v27 frame];
    v145.x = v29;
    v145.y = v30;
    v147.origin.x = v127;
    v147.origin.y = v14;
    v147.size.width = v17;
    v147.size.height = v19;
    v31 = CGRectContainsPoint(v147, v145);

    v25 = v26 + 1;
  }

  while (!v31);

  [*(v1 + v111) contentOffset];
  v113 = v32;
  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v23 = *(v1 + v33);
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_19:
      v34 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
      v118 = OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType;
      v121 = v23 & 0xC000000000000001;

      v116 = v34;
      swift_beginAccess();
      v107 = 0;
      v132 = 0;
      v35 = 0;
      v114 = v23 & 0xFFFFFFFFFFFFFF8;
      v36 = 0uLL;
      v37 = 1;
      v112 = v14;
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      v38 = 0uLL;
      v115 = v26;
      v119 = v24;
      v120 = v23;
      v117 = v8;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v143[0] = v36;
            v143[1] = v38;
            v144 = v37 & 1;
            if (v121)
            {
              v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v35 >= *(v114 + 16))
              {
                goto LABEL_71;
              }

              v39 = *(v23 + 8 * v35 + 32);
            }

            v40 = v39;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              v126 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_8;
            }

            v128 = v35;
            v131 = (v35 + 1);
            v23 = v1;
            v41 = v8;
            v8 = *(v8 + 40);
            v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            outlined init with copy of ActionPerforming(&v40[v24], &v137);
            v42 = v139;
            v43 = v140;
            v1 = __swift_project_boxed_opaque_existential_0Tm(&v137, v139);
            v44 = v43[2](v42, v43);
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v44 >= *(v8 + 16))
            {
              goto LABEL_68;
            }

            outlined init with copy of ActionPerforming(v8 + 40 * v44 + 32, v142);
            SyncedLyricsViewController.lineData(for:)(v142, v5);
            __swift_destroy_boxed_opaque_existential_0Tm(v142);
            __swift_destroy_boxed_opaque_existential_0Tm(&v137);
            if (*(v41 + v118) || v116[88] == 1)
            {
              v45 = v5[3];
              v46 = v5[4];
              __swift_project_boxed_opaque_existential_0Tm(v5, v45);
              v47 = (*(v46 + 24))(v45, v46);
            }

            else
            {
              v47 = *(v116 + 10);
            }

            v48 = *(v122 + 20);
            v49 = *(v122 + 24);
            outlined init with copy of ActionPerforming(v5, &v137);
            swift_beginAccess();
            __swift_destroy_boxed_opaque_existential_0Tm(&v40[v24]);
            outlined init with take of ActionPerforming(&v137, &v40[v24]);
            swift_endAccess();
            v50 = v5 + v48;
            v51 = v123;
            outlined init with copy of TaskPriority?(v50, v123, &_s7LyricsX0A0C8TextLineVSgMd);
            v52 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
            swift_beginAccess();
            outlined assign with take of PlaybackIntentDescriptor.IntentType?(v51, &v40[v52], &_s7LyricsX0A0C8TextLineVSgMd);
            swift_endAccess();
            v53 = v124;
            outlined init with copy of TaskPriority?(v5 + v49, v124, &_s7LyricsX0A0C11TranslationV4LineVSgMd);
            v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
            swift_beginAccess();
            outlined assign with take of PlaybackIntentDescriptor.IntentType?(v53, &v40[v54], &_s7LyricsX0A0C11TranslationV4LineVSgMd);
            swift_endAccess();
            *&v40[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v47;
            SyncedLyricsLineView.updateContentView()();
            v55 = v40;
            [v55 frame];
            v57 = v56;
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v1 = v23;
            SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(v55, 2, v143);
            v135 = v66;
            v136 = v67;
            v133 = v64;
            v134 = v65;
            if (v132)
            {
              v132 = 1;
              v23 = v120;
              v8 = v117;
            }

            else
            {
              v148.origin.x = v127;
              v148.origin.y = v14;
              v148.size.width = v17;
              v148.size.height = v19;
              v146.x = v57;
              v146.y = v59;
              v68 = CGRectContainsPoint(v148, v146);
              v23 = v120;
              v8 = v117;
              if (v68 && (v126 == v115 || [v55 isSelected]))
              {
                *&v149.origin.x = v133;
                *&v149.origin.y = v134;
                *&v149.size.width = v135;
                *&v149.size.height = v136;
                MinY = CGRectGetMinY(v149);
                v150.origin.x = v57;
                v150.origin.y = v59;
                v150.size.width = v61;
                v150.size.height = v63;
                *&v64 = CGRectGetMinY(v150);
                *&v66 = v135;
                *&v67 = v136;
                v11 = MinY - (*&v64 - v113);
                *&v64 = v133;
                *&v65 = v134;
                v132 = 1;
                v112 = v11;
              }

              else
              {
                v132 = 0;
                *&v66 = v135;
                *&v67 = v136;
                *&v64 = v133;
                *&v65 = v134;
              }
            }

            *(&v64 + 1) = v65;
            v130 = v64;
            *&v70 = v66;
            *(&v70 + 1) = v67;
            v129 = v70;
            v71 = swift_allocObject();
            *(v71 + 2) = v55;
            v72 = v134;
            *(v71 + 3) = v133;
            *(v71 + 4) = v72;
            v73 = v136;
            *(v71 + 5) = v135;
            *(v71 + 6) = v73;
            *(v71 + 7) = v1;
            v71[8] = v57;
            v71[9] = v59;
            v71[10] = v61;
            v71[11] = v63;
            if (v125)
            {
              break;
            }

            v74 = v1;
            closure #2 in SyncedLyricsViewController.updateLines(animator:)(v55, v74, *&v133, *&v134, *&v135, *&v136, v57, v59, v61, v63);

            outlined destroy of Lyrics.TextLine(v5, type metadata accessor for SyncedLyricsViewController.LineData);
            v37 = 0;
            v35 = (v128 + 1);
            v24 = v119;
            v38 = v129;
            v36 = v130;
            if (v131 == v119)
            {
              goto LABEL_62;
            }
          }

          v75 = v55;
          v106 = v1;
          v128 = v125;
          v151.origin.x = v57;
          v151.origin.y = v59;
          v151.size.width = v61;
          v151.size.height = v63;
          v153.origin.x = v127;
          v153.origin.y = v14;
          v153.size.width = v17;
          v153.size.height = v19;
          if (!CGRectIntersectsRect(v151, v153))
          {
            *&v152.origin.x = v133;
            *&v152.origin.y = v134;
            *&v152.size.width = v135;
            *&v152.size.height = v136;
            v154.origin.x = v127;
            v154.origin.y = v112;
            v154.size.width = v17;
            v154.size.height = v19;
            if (!CGRectIntersectsRect(v152, v154))
            {
              [v75 setHidden:1];

              v82 = swift_allocObject();
              v82[2] = v75;
              v82[3] = partial apply for closure #2 in SyncedLyricsViewController.updateLines(animator:);
              v82[4] = v71;
              *&v136 = v75;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1(0, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2] + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1);
              }

              v84 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2];
              v83 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[3];
              if (v84 >= v83 >> 1)
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1((v83 > 1), v84 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1);
              }

              v85 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1;
              New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2] = (v84 + 1);
              v86 = &v85[2 * v84];
              v86[4] = partial apply for closure #4 in SyncedLyricsViewController.updateLines(animator:);
              v86[5] = v82;
              outlined destroy of Lyrics.TextLine(v5, type metadata accessor for SyncedLyricsViewController.LineData);
              goto LABEL_54;
            }
          }

          v76 = swift_allocObject();
          *(v76 + 16) = partial apply for closure #2 in SyncedLyricsViewController.updateLines(animator:);
          *(v76 + 24) = v71;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v110 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1(0, v110[2] + 1, 1, v110);
          }

          v79 = v110[2];
          v78 = v110[3];
          if (v79 >= v78 >> 1)
          {
            v110 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1((v78 > 1), v79 + 1, 1, v110);
          }

          v80 = v110;
          v110[2] = (v79 + 1);
          v81 = &v80[2 * v79];
          v81[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
          v81[5] = v76;
          if (v132)
          {
            break;
          }

          outlined destroy of Lyrics.TextLine(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_54:
          v37 = 0;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {

            if ((v107 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }
        }

        v87 = v108;
        if (v107)
        {
          outlined destroy of Lyrics.TextLine(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_59:
          v37 = 0;
          v107 = 1;
          v132 = 1;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {

LABEL_65:
            v91 = v106;
            v92 = *(v106 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
            *(v106 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = v125;
            v93 = v128;

            v94 = swift_allocObject();
            *(v94 + 16) = v110;
            *(v94 + 24) = v91;
            *(v94 + 32) = v11;
            v140 = partial apply for specialized closure #5 in SyncedLyricsViewController.updateLines(animator:);
            v141 = v94;
            *&v137 = _NSConcreteStackBlock;
            *(&v137 + 1) = 1107296256;
            v138 = thunk for @escaping @callee_guaranteed () -> ();
            v139 = &block_descriptor_353_0;
            v95 = _Block_copy(&v137);
            v96 = v91;

            [v93 addAnimations:v95];
            _Block_release(v95);
            v97 = swift_allocObject();
            *(v97 + 16) = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1;
            *(v97 + 24) = v96;
            v140 = partial apply for specialized closure #6 in SyncedLyricsViewController.updateLines(animator:);
            v141 = v97;
            *&v137 = _NSConcreteStackBlock;
            *(&v137 + 1) = 1107296256;
            v138 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
            v139 = &block_descriptor_359;
            v98 = _Block_copy(&v137);
            v99 = v96;

            [v93 addCompletion:v98];
            _Block_release(v98);
            [v93 startAnimation];
          }
        }

        else
        {

          v88 = vabdd_f64(v63, *&v136);
          outlined destroy of Lyrics.TextLine(v5, type metadata accessor for SyncedLyricsViewController.LineData);
          if (v88 > 1.0)
          {
            goto LABEL_59;
          }

          v107 = 0;
          v37 = 0;
          v132 = 1;
          v24 = v119;
          v35 = v131;
          v38 = v129;
          v36 = v130;
          if (v131 == v119)
          {
LABEL_62:

LABEL_63:
            v89 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1;
            v90 = v110;
            goto LABEL_75;
          }
        }
      }
    }
  }

  v90 = _swiftEmptyArrayStorage;
  v89 = _swiftEmptyArrayStorage;
LABEL_75:
  v100 = *(v1 + v111);
  [v100 contentOffset];
  [v100 setContentOffset:?];

  *&v137 = v90;
  specialized Array.append<A>(contentsOf:)(v89);
  v101 = *(v137 + 16);
  if (v101)
  {
    v102 = v137 + 40;
    do
    {
      v103 = *(v102 - 8);

      v103(v104);

      v102 += 16;
      --v101;
    }

    while (v101);
  }
}

void closure #2 in SyncedLyricsViewController.updateLines(animator:)(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  UIView.untransformedFrame.setter(a3, a4, a5, a6);
  v16 = *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v16 + v17, v39, &_s7LyricsX0A4Line_pSgMd);
    v18 = v40;
    if (v40)
    {
      v19 = v41;
      __swift_project_boxed_opaque_existential_0Tm(v39, v40);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin();
      v23 = &v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v20 + 16))(v23, v21);
      outlined destroy of TaskPriority?(v39, &_s7LyricsX0A4Line_pSgMd);
      v24 = (*(v19 + 16))(v18, v19);
      (*(v20 + 8))(v23, v18);
      v25 = 0;
      goto LABEL_6;
    }

    outlined destroy of TaskPriority?(v39, &_s7LyricsX0A4Line_pSgMd);
  }

  v24 = 0;
  v25 = 1;
LABEL_6:
  v26 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a1 + v26, v39);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_0Tm(v39, v40);
  v29 = (*(v28 + 16))(v27, v28);
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    if (v24 == v30)
    {
      SyncedLyricsViewController.updateTimestampLabelFrame()();
    }
  }

  v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v32 = *(a2 + v31);
  if (v32 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      return;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      return;
    }
  }

  v34 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
    __break(1u);
  }

  else if ((v32 & 0xC000000000000001) == 0)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v32 + 8 * v34 + 32);
      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_17:
  type metadata accessor for SyncedLyricsLineView();
  v36 = a1;
  v37 = static NSObject.== infix(_:_:)();

  if (v37)
  {
    *v39 = a7;
    *&v39[1] = a8;
    *&v39[2] = a9;
    v40 = *&a10;
    LOBYTE(v41) = 0;
    SyncedLyricsViewController.layoutBottomViews(lastLineView:lastLineViewPreviousFrame:)(v36, v39);
  }
}

void specialized closure #5 in SyncedLyricsViewController.updateLines(animator:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v8 = *(a2 + v7);
  [v8 contentOffset];
  [v8 setContentOffset:?];
}

void specialized closure #6 in SyncedLyricsViewController.updateLines(animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v8 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = 0;
}

Swift::Void __swiftcall SyncedLyricsViewController.enterTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    SyncedLyricsViewController.removeAllBlurs()();
    *(v0 + v1) = 2;
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.leaveTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    SyncedLyricsViewController.updateBlur(views:)(0);
    *(v0 + v1) = 0;
  }
}

uint64_t SyncedLyricsViewController.displayLinkShouldPause()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  if (!*(v0 + v1) || (*(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded) & 1) != 0)
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v0 + v3, &v8, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
  if (v9)
  {
    outlined init with take of ActionPerforming(&v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_0Tm(v10, v11);
    if ((*(v5 + 16))(v4, v5))
    {
      v6 = 1;
    }

    else
    {
      v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      v6 = *(v0 + v7) == 2;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    return v6;
  }

  else
  {
    outlined destroy of TaskPriority?(&v8, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    return 1;
  }
}

id *SyncedLyricsViewController.visibleLineViews.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v0[v1] contentOffset];
  v3 = v2;
  v5 = v4;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  [result frame];
  v9 = v8;

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (v11 <= 0.0)
  {
    result = [v0 view];
    if (result)
    {
      v12 = result;
      [result frame];
      v11 = v13;

      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_5:
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      v22.origin.x = v3;
      v22.origin.y = v5;
      v22.size.width = v9;
      v22.size.height = v11;
      if (CGRectIntersectsRect(v21, v22))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  return _swiftEmptyArrayStorage;
}

uint64_t SyncedLyricsViewController.lineViews(in:startingAt:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v11);
  v35 = v11;
  v34 = *(v12 + 16);
  v13 = v34(v11, v12);
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = 0;
  v16 = v13 == 0;
  if (v13 <= 0)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = v13 - 1; ; i = 0)
  {
    v19 = *(v6 + v14);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v20 = *(v19 + 8 * v13 + 32);
    }

    [v20 frame];
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    if (!CGRectIntersectsRect(v36, v38))
    {
      break;
    }

    v21 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v13 = i;
    v16 = i == 0;
    if (i > 0)
    {
      goto LABEL_2;
    }

LABEL_3:
    v18 = !v16;
    if ((v18 | v15))
    {
      goto LABEL_18;
    }

    v15 = 1;
  }

LABEL_18:
  v22 = v34(v35, v12);
  v13 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_43;
  }

  v23 = *(v6 + v14);
  if (v23 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_46;
  }

  while (2)
  {
    v26 = 0;
    v27 = v13 == v25;
    if (v13 < v25)
    {
LABEL_22:
      v28 = v13 + 1;
      goto LABEL_28;
    }

    while (1)
    {
      v29 = !v27;
      if ((v29 | v26))
      {
        goto LABEL_39;
      }

      v26 = 1;
      v28 = v25;
LABEL_28:
      v30 = *(v6 + v14);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_32;
      }

      if (v13 < 0)
      {
        break;
      }

      if (v13 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v31 = *(v30 + 8 * v13 + 32);
LABEL_32:
      [v31 frame];
      v39.origin.x = a2;
      v39.origin.y = a3;
      v39.size.width = a4;
      v39.size.height = a5;
      if (!CGRectIntersectsRect(v37, v39))
      {

LABEL_39:
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7LyricsX06SyncedA8LineViewCGMd);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [SyncedLyricsLineView] and conformance [A], &_sSay7LyricsX06SyncedA8LineViewCGMd);
        v33 = Sequence.sorted<A>(by:comparator:)();

        return v33;
      }

      v32 = v31;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v13 = v28;
      v27 = v28 == v25;
      if (v28 < v25)
      {
        goto LABEL_22;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = _CocoaArrayWrapper.endIndex.getter();
    v25 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t key path setter for SyncedLyricsLineView.line : SyncedLyricsLineView(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ActionPerforming(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v3 + v4);
  outlined init with take of ActionPerforming(v6, v3 + v4);
  return swift_endAccess();
}

double SyncedLyricsViewController.contentOffset(for:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v10 = *(v9 + 48);
  if (v10 < 0)
  {
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v15 = *(v9 + 32);
    v14 = *(v9 + 40);
    if (v10)
    {
      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(v4 + v16) frame];
    }

    else
    {
      v17 = v12;
      v18 = v13;
      v19 = v15;
      v20 = v14;
    }

    CGRectGetHeight(*&v17);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetHeight(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinY(v24);
    if ((v10 & 1) == 0)
    {
      v25.origin.x = v12;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v14;
      CGRectGetMinY(v25);
    }
  }

  else
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetMinY(v22);
    v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v4 + v11) contentInset];
  }

  return 0.0;
}

void SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(void *a1, objc_class *a2, char a3, char a4)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    p_cache = (&OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line + 16);
    if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_29:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    __chkstk_darwin();
    specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #2 in SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:));

    return;
  }

  v15 = *(v13 + 8 * v11 + 32);
  p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
  if ((a3 & 1) == 0)
  {
LABEL_17:
    v14.value.super.isa = a2;
    SyncedLyricsLineView.setSelected(_:animator:)(1, v14);
    SyncedLyricsViewController.updateProgress(for:animated:)(v15, a2 != 0);
    v24 = *&v15[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v24)
    {
      type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
      if (swift_dynamicCastClass())
      {
        v25 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = v15;
        v26 = v24;
        v27 = v15;

        if (a4)
        {
          v28 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
          v29 = 0.0;
          if (v28)
          {
            swift_beginAccess();
            v30 = *(v28 + 96);
            if (v30)
            {

              v31 = outlined copy of (@escaping @callee_guaranteed () -> ())?(v30);
              v32 = v30(v31);
              swift_beginAccess();
              if (*(v28 + 88) == 1)
              {
                v33 = Lyrics.spatialOffset.getter();
                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30);
              }

              else
              {

                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v30);
                v33 = 0.0;
              }

              v29 = v32 - v33;
            }
          }

          SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)(v29);
        }
      }
    }

    SyncedLyricsViewController.applyBlurRadius(_:to:animated:)(v15, 1, 0.0);
    v34 = p_cache[462];
    swift_beginAccess();
    v9 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v34 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v34 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_5:
  v35 = a4;
  v17 = p_cache[462];
  swift_beginAccess();
  v18 = *&v17[v5];
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_16:
    *&v17[v5] = _swiftEmptyArrayStorage;

    a4 = v35;
    goto LABEL_17;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_7:
  type metadata accessor for SyncedLyricsLineView();
  if (v19 >= 1)
  {

    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v18 + 8 * i + 32);
      }

      v22 = v21;
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        v23.value.super.isa = a2;
        SyncedLyricsLineView.setSelected(_:animator:)(0, v23);
      }
    }

    p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t implicit closure #2 in SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)()
{
  _StringGuts.grow(_:)(37);
  v0._object = 0x80000001004D8070;
  v0._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

id SyncedLyricsViewController.lineChangeSpringParameters(gap:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 && *(v6 + 56) == 2)
  {
    v7 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (a2)
    {
      return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v7[83] stiffness:v7[84] damping:v7[85] initialVelocity:{0.0, 0.0}];
    }

    else
    {
      v10 = 0.75;
      if (*&a1 <= 0.75)
      {
        v10 = *&a1;
      }

      v11 = (v10 + -0.2) / 0.55;
      v12 = 0.0;
      if (*&a1 >= 0.2)
      {
        v12 = v11;
      }

      v13 = (1.0 - v12) * 0.12 + 0.78;
      v14 = v12 * 0.27 + 0.48;
      type metadata accessor for UIAction(0, &_sSo24UISpringTimingParametersCML_0);
      return UISpringTimingParameters.init(dampingRatio:response:)(v13, v14);
    }
  }

  else
  {
    v9 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v9[83] stiffness:v9[84] damping:v9[85] initialVelocity:{0.0, 0.0}];
  }
}

void SyncedLyricsViewController.updateBlur(views:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  v140 = v2;
  if (v5 == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type SyncedLyricsLineView and conformance NSObject, type metadata accessor for SyncedLyricsLineView);
      Set.Iterator.init(_cocoa:)();
      v7 = v152;
      v8 = v153;
      v9 = v154;
      v2 = v155;
      v10 = v156;
    }

    else
    {
      v54 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v9 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v10 = v56 & *(v7 + 56);

      v2 = 0;
    }

    v57 = (v9 + 64) >> 6;
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v62 = __CocoaSet.Iterator.next()();
        if (!v62)
        {
          goto LABEL_75;
        }

        v151 = v62;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v61 = v142;
        v11 = v2;
        v9 = v10;
        if (!v142)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v59 = v2;
        v60 = v10;
        v11 = v2;
        if (!v10)
        {
          while (1)
          {
            v11 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            if (v11 >= v57)
            {
              break;
            }

            v60 = *(v8 + 8 * v11);
            ++v59;
            if (v60)
            {
              goto LABEL_69;
            }
          }

LABEL_75:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
          return;
        }

LABEL_69:
        v9 = (v60 - 1) & v60;
        v61 = *(*(v7 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v60)))));
        if (!v61)
        {
          goto LABEL_75;
        }
      }

      v63 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v63[657] == 1)
      {
        v64 = [v140 traitCollection];
        [v64 accessibilityContrast];
      }

      SyncedLyricsLineView.setBlurRadius(_:animated:)(0, 0.0);
      swift_beginAccess();
      v58 = specialized Set._Variant.remove(_:)(v61);
      swift_endAccess();

      v2 = v11;
      v10 = v9;
    }
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v2 + v9) == 1)
  {
    return;
  }

  if (a1)
  {
    v150 = a1;
    v7 = a1;
    goto LABEL_7;
  }

  v65 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (!v65 || (swift_beginAccess(), v66 = *(v65 + 80), !*(v66 + 16)))
  {
    v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v83 = *(v2 + v82);
    if (v83 >> 62)
    {
      goto LABEL_142;
    }

    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    goto LABEL_87;
  }

  outlined init with copy of ActionPerforming(v66 + 32, &v152);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v2 + v67) contentOffset];
  v69 = v68;
  v71 = v70;
  v9 = &selRef_parent;
  v72 = [v2 view];
  if (!v72)
  {
    goto LABEL_148;
  }

  v73 = v72;
  [v72 frame];
  v75 = v74;

  v76 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v77 = *(v2 + v76);
  if (v77 <= 0.0)
  {
    v78 = [v2 view];
    if (!v78)
    {
      goto LABEL_150;
    }

    v79 = v78;
    [v78 frame];
    v81 = v80;

    v77 = v81;
  }

  v7 = SyncedLyricsViewController.lineViews(in:startingAt:)(&v152, v69, v71, v75, v77);
  __swift_destroy_boxed_opaque_existential_0Tm(&v152);
  v150 = v7;
  while (1)
  {
LABEL_7:
    v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v11 = *(v2 + v8);
    v149 = v11;
    if (!(v7 >> 62))
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_102;
    }

LABEL_101:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
LABEL_9:
      if (v12 < 1)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager;
      v14 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;

      v137 = v14;
      swift_beginAccess();
      v15 = 0;
      v134 = v13;
      v135 = v12;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v7 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = *(v2 + v13);
        if (v20)
        {
          swift_beginAccess();
          v9 = *(v20 + 80);
          if (*(v9 + 16))
          {
            outlined init with copy of ActionPerforming(v9 + 32, &v152);
            v21 = *(v9 + 16);
            if (v21)
            {
              outlined init with copy of ActionPerforming(v9 + 32 + 40 * v21 - 40, &v146);
              v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
              swift_beginAccess();
              outlined init with copy of ActionPerforming(v19 + v2, v143);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
              if (swift_dynamicCast())
              {

                v22 = v147;
                v23 = v148;
                __swift_project_boxed_opaque_existential_0Tm(&v146, v147);
                v11 = (*(v23 + 16))(v22, v23);
                outlined init with copy of ActionPerforming(v19 + v2, v143);
                v24 = v144;
                v25 = v145;
                __swift_project_boxed_opaque_existential_0Tm(v143, v144);
                v26 = (*(v25 + 16))(v24, v25);
                v9 = v26 - 1;
                if (__OFSUB__(v26, 1))
                {
                  goto LABEL_99;
                }

                __swift_destroy_boxed_opaque_existential_0Tm(v143);
                if (v11 == v9)
                {
                  v2 = v140;
                  if (*(v137 + 657) == 1)
                  {
                    v27 = [v140 traitCollection];
                    [v27 accessibilityContrast];
                  }

                  SyncedLyricsLineView.setBlurRadius(_:animated:)(1, 0.0);
                  swift_beginAccess();
                  v16 = specialized Set._Variant.remove(_:)(v19);
                  swift_endAccess();

                  v13 = v134;
                  v12 = v135;
                  goto LABEL_12;
                }
              }

              outlined init with copy of ActionPerforming(v19 + v2, v143);
              v28 = v144;
              v29 = v145;
              __swift_project_boxed_opaque_existential_0Tm(v143, v144);
              v30 = (*(v29 + 16))(v28, v29);
              v31 = v147;
              v32 = v148;
              __swift_project_boxed_opaque_existential_0Tm(&v146, v147);
              v33 = (*(v32 + 16))(v31, v32);
              __swift_destroy_boxed_opaque_existential_0Tm(v143);
              v34 = v19 + v2;
              if (v33 >= v30)
              {
                outlined init with copy of ActionPerforming(v34, v143);
                v45 = v144;
                v46 = v145;
                __swift_project_boxed_opaque_existential_0Tm(v143, v144);
                v11 = (*(v46 + 16))(v45, v46);
                v47 = v155;
                v48 = v156;
                __swift_project_boxed_opaque_existential_0Tm(&v152, v155);
                v49 = (*(v48 + 16))(v47, v48);
                __swift_destroy_boxed_opaque_existential_0Tm(v143);
                if (v11 >= v49)
                {
                  v2 = v140;
                  v13 = v134;
                  v12 = v135;
                  if (*(v137 + 657))
                  {
                    v51 = [v140 traitCollection];
                    [v51 accessibilityContrast];
                  }

                  SyncedLyricsLineView.setBlurRadius(_:animated:)(1, 0.0);
                  goto LABEL_56;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (!*(v137 + 657))
                {
                  goto LABEL_12;
                }

                v50 = [v140 traitCollection];
                v11 = [v50 accessibilityContrast];

                if (v11 == 1)
                {
                  goto LABEL_12;
                }

                SyncedLyricsLineView.setBlurRadius(_:animated:)(1, 3.0);
              }

              else
              {
                outlined init with copy of ActionPerforming(v34, v143);
                v35 = v144;
                v36 = v145;
                __swift_project_boxed_opaque_existential_0Tm(v143, v144);
                v11 = (*(v36 + 16))(v35, v36);
                v37 = v147;
                v38 = v148;
                __swift_project_boxed_opaque_existential_0Tm(&v146, v147);
                v39 = (*(v38 + 16))(v37, v38);
                v9 = v11 - v39;
                if (__OFSUB__(v11, v39))
                {
                  goto LABEL_100;
                }

                __swift_destroy_boxed_opaque_existential_0Tm(v143);
                v40 = v9 + 1.0;
                if (*(v137 + 657) == 1)
                {
                  v2 = v140;
                  v41 = [v140 traitCollection];
                  v11 = [v41 accessibilityContrast];

                  v13 = v134;
                  v12 = v135;
                  if (v11 != 1 || v40 <= 0.0)
                  {
                    goto LABEL_52;
                  }

LABEL_12:
                  __swift_destroy_boxed_opaque_existential_0Tm(&v146);
                  __swift_destroy_boxed_opaque_existential_0Tm(&v152);
                  goto LABEL_13;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (v40 > 0.0)
                {
                  goto LABEL_12;
                }

LABEL_52:
                if (v40 <= 4.0)
                {
                  v52 = v9 + 1.0;
                }

                else
                {
                  v52 = 4.0;
                }

                SyncedLyricsLineView.setBlurRadius(_:animated:)(1, v52);
                if (v40 == 0.0)
                {
LABEL_56:
                  swift_beginAccess();
                  v53 = specialized Set._Variant.remove(_:)(v19);
                  swift_endAccess();

                  goto LABEL_12;
                }
              }

              swift_beginAccess();
              specialized Set._Variant.insert(_:)(&v142, v19);
              v9 = v142;
              swift_endAccess();

              goto LABEL_12;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v152);
          }
        }

        v9 = v15 + 3;
        if (__OFADD__(v15, 3))
        {
          goto LABEL_98;
        }

        if (*(v137 + 657) == 1)
        {
          v42 = [v2 traitCollection];
          v11 = [v42 accessibilityContrast];

          if (v11 != 1 || v9 <= 0)
          {
LABEL_41:
            v44 = v9;
            if (v9 > 4.0)
            {
              v44 = 4.0;
            }

            SyncedLyricsLineView.setBlurRadius(_:animated:)(1, v44);
            swift_beginAccess();
            specialized Set._Variant.insert(_:)(&v146, v19);
            v9 = v146;
            swift_endAccess();
          }
        }

        else if (v9 <= 0)
        {
          goto LABEL_41;
        }

LABEL_13:
        ++v15;
        v17 = specialized Set._Variant.remove(_:)(v19);

        if (v12 == v15)
        {

          v11 = v149;
          goto LABEL_103;
        }
      }
    }

LABEL_102:

LABEL_103:
    v136 = v8;
    if ((v11 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type SyncedLyricsLineView and conformance NSObject, type metadata accessor for SyncedLyricsLineView);
      Set.Iterator.init(_cocoa:)();
      v11 = v152;
      v101 = v153;
      v102 = v154;
      v103 = v155;
      v104 = v156;
    }

    else
    {
      v103 = 0;
      v105 = -1 << *(v11 + 32);
      v101 = v11 + 56;
      v102 = ~v105;
      v106 = -v105;
      v107 = v106 < 64 ? ~(-1 << v106) : -1;
      v104 = v107 & *(v11 + 56);
    }

    v108 = (v102 + 64) >> 6;
    while (v11 < 0)
    {
      v114 = __CocoaSet.Iterator.next()();
      if (!v114)
      {
        goto LABEL_122;
      }

      v143[0] = v114;
      type metadata accessor for SyncedLyricsLineView();
      swift_dynamicCast();
      v113 = v146;
      v2 = v103;
      v112 = v104;
      if (!v146)
      {
        goto LABEL_122;
      }

LABEL_120:
      v9 = v140;
      v115 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v115[657] == 1)
      {
        v116 = [v140 traitCollection];
        [v116 accessibilityContrast];
      }

      SyncedLyricsLineView.setBlurRadius(_:animated:)(0, 0.0);
      swift_beginAccess();
      v109 = specialized Set._Variant.remove(_:)(v113);
      swift_endAccess();

      v103 = v2;
      v104 = v112;
    }

    v110 = v103;
    v111 = v104;
    v2 = v103;
    if (!v104)
    {
      while (1)
      {
        v2 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        if (v2 >= v108)
        {
          goto LABEL_122;
        }

        v111 = *(v101 + 8 * v2);
        ++v110;
        if (v111)
        {
          goto LABEL_116;
        }
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_116:
    v112 = (v111 - 1) & v111;
    v113 = *(*(v11 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v111)))));
    if (v113)
    {
      goto LABEL_120;
    }

LABEL_122:
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    v117 = *&v140[v136];
    if ((v117 & 0xC000000000000001) != 0)
    {

      v118 = __CocoaSet.count.getter();

      if (v118 < 1)
      {
        return;
      }
    }

    else if (*(v117 + 16) < 1)
    {
      return;
    }

    v119 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = *&v140[v119];
    if (!(v9 >> 62))
    {
      v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v82)
      {
        return;
      }

      goto LABEL_128;
    }

LABEL_139:
    v82 = _CocoaArrayWrapper.endIndex.getter();
    if (!v82)
    {
      return;
    }

LABEL_128:
    if (v82 >= 1)
    {
      v141 = (v9 & 0xC000000000000001);

      v120 = 0;
      v138 = v82;
      v139 = v9;
      do
      {
        if (v141)
        {
          v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v121 = *(v9 + 8 * v120 + 32);
        }

        v122 = v121;
        v123 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
        v121[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 0;
        v125 = SyncedLyricsLineView.contentView.modify(&v146);
        v126 = *v124;
        if (*v124)
        {
          v127 = v122[v123];
          v128 = *(v124 + 8);
          v129 = v124;
          ObjectType = swift_getObjectType();
          v131 = *(v128 + 40);
          v132 = v126;
          v131(v127, ObjectType, v128);
          v133 = *v129;
          *v129 = v126;
          *(v129 + 8) = v128;
          v82 = v138;
          v9 = v139;
        }

        v125(&v146, 0);
        ++v120;
      }

      while (v82 != v120);

      return;
    }

    __break(1u);
LABEL_142:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      break;
    }

LABEL_87:
    v84 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v2 + v84) contentOffset];
    v86 = v85;
    v88 = v87;
    v89 = [v2 view];
    if (!v89)
    {
      goto LABEL_149;
    }

    v90 = v89;
    [v89 frame];
    v92 = v91;

    v93 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v94 = *(v2 + v93);
    if (v94 <= 0.0)
    {
      v95 = [v2 view];
      if (!v95)
      {
        goto LABEL_151;
      }

      v96 = v95;
      [v95 frame];
      v94 = v97;
    }

    v98 = *(v2 + v82);
    if ((v98 & 0xC000000000000001) != 0)
    {

      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_94;
    }

    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      return;
    }

    v99 = *(v98 + 32);
LABEL_94:
    v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v99 + v9, &v152);

    v7 = SyncedLyricsViewController.lineViews(in:startingAt:)(&v152, v86, v88, v92, v94);
    __swift_destroy_boxed_opaque_existential_0Tm(&v152);
    v150 = v7;
    if (v7 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
LABEL_96:
        specialized RangeReplaceableCollection.removeFirst()();

        v7 = v150;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_96;
    }
  }
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void SyncedLyricsViewController.applyBlurRadius(_:to:animated:)(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (v8[657] == 1 && (v9 = [v4 traitCollection], v10 = objc_msgSend(v9, "accessibilityContrast"), v9, v10 != 1) || a3 <= 0.0)
  {
    v11 = 4.0;
    if (a3 <= 4.0)
    {
      v11 = a3;
    }

    SyncedLyricsLineView.setBlurRadius(_:animated:)(a2 & 1, v11);
    swift_beginAccess();
    if (a3 == 0.0)
    {
      v12 = specialized Set._Variant.remove(_:)(a1);
    }

    else
    {
      specialized Set._Variant.insert(_:)(&v13, a1);
      v12 = v13;
    }

    swift_endAccess();
  }
}

uint64_t SyncedLyricsViewController.removeAllBlurs()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type SyncedLyricsLineView and conformance NSObject, type metadata accessor for SyncedLyricsLineView);
    Set.Iterator.init(_cocoa:)();
    v3 = v41[10];
    v4 = v41[11];
    v5 = v41[12];
    v6 = v41[13];
    v7 = v41[14];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_20;
    }

    v41[4] = v18;
    type metadata accessor for SyncedLyricsLineView();
    swift_dynamicCast();
    v17 = v41[0];
    v15 = v6;
    v16 = v7;
    if (!v41[0])
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (v19[657] == 1)
    {
      v20 = [v1 traitCollection];
      [v20 accessibilityContrast];
    }

    SyncedLyricsLineView.setBlurRadius(_:animated:)(1, 0.0);
    swift_beginAccess();
    v12 = specialized Set._Variant.remove(_:)(v17);
    swift_endAccess();

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (!v7)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_20;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (v17)
  {
    goto LABEL_18;
  }

LABEL_20:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v1 = *(v1 + v21);
  if (!(v1 >> 62))
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_33:
  result = _CocoaArrayWrapper.endIndex.getter();
  v23 = result;
  if (!result)
  {
    return result;
  }

LABEL_22:
  if (v23 < 1)
  {
    __break(1u);
  }

  else
  {
    v40 = v1 & 0xC000000000000001;

    v24 = 0;
    v38 = v23;
    v39 = v1;
    do
    {
      if (v40)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v25[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v29 = SyncedLyricsLineView.contentView.modify(v41);
      v30 = *v28;
      if (*v28)
      {
        v31 = v26[v27];
        v32 = *(v28 + 8);
        v33 = v28;
        ObjectType = swift_getObjectType();
        v35 = *(v32 + 40);
        v36 = v30;
        v35(v31, ObjectType, v32);
        v37 = *v33;
        *v33 = v30;
        *(v33 + 8) = v32;
        v23 = v38;
        v1 = v39;
      }

      v29(v41, 0);
      ++v24;
    }

    while (v23 != v24);
  }

  return result;
}

void SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(void *a1, char a2, uint64_t a3, int a4, char a5, double a6, double a7, double a8)
{
  v9 = v8;
  LODWORD(v10) = a4;
  if (*(v8 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator))
  {
    SyncedLyricsViewController.cancelAnimations()();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  v224 = v16;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v8 + v17) contentOffset];
  v19 = v18;
  [*(v8 + v17) contentOffset];
  v21 = v20;
  v23 = v22;
  v24 = [v8 view];
  if (!v24)
  {
    goto LABEL_188;
  }

  v25 = v24;
  [v24 frame];
  v27 = v26;

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v29 = *(v9 + v28);
  if (v29 <= 0.0)
  {
    v30 = [v9 view];
    if (!v30)
    {
      goto LABEL_189;
    }

    v31 = v30;
    [v30 frame];
    v29 = v32;
  }

  v216 = a2;
  v33 = a7 - v19;
  v252.origin.x = v21;
  v252.origin.y = v23;
  v252.size.width = v27;
  v252.size.height = v29;
  v256 = CGRectOffset(v252, 0.0, v33);
  v253.origin.x = v21;
  v253.origin.y = v23;
  v253.size.width = v27;
  v253.size.height = v29;
  v254 = CGRectUnion(v253, v256);
  v34 = SyncedLyricsViewController.lineViews(in:startingAt:)(a1, v254.origin.x, v254.origin.y, v254.size.width, v254.size.height);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v35);
  v37 = (*(v36 + 16))(v35, v36);
  p_cache = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v39 = *(p_cache + v9);
  if ((v39 & 0xC000000000000001) != 0)
  {

    v226 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v40 = v216;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = v216;
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_164;
    }

    if (v37 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_165;
    }

    v226 = *(v39 + 8 * v37 + 32);
    if (v10)
    {
      goto LABEL_15;
    }
  }

  v41 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v42 = *(v9 + v41);
  if (v42 && *(v42 + 56) == 2)
  {
    v43 = a3;
    v44 = 0;
    goto LABEL_18;
  }

LABEL_15:
  if (v40)
  {
    v45 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    goto LABEL_19;
  }

  v44 = v10 & 1;
  v43 = a3;
LABEL_18:
  v45 = SyncedLyricsViewController.lineChangeSpringParameters(gap:)(v43, v44);
LABEL_19:
  v238 = v45;
  v47 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  v237 = (v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
  swift_beginAccess();
  p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
  v239 = v9;
  v240 = v34;
  if ((v40 & 1) == 0)
  {
    a7 = v48 - v237[23];
    [v238 settlingDuration];
    if (a7 < v49 + a8)
    {
      if (one-time initialization token for logger == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_170;
    }
  }

  [v238 settlingDuration];
  a7 = v54;
  *(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 1;
  if ((v40 & 1) == 0 || (*(v237 + 659) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_34:
  v68 = 0;
LABEL_35:
  if (fabs(v33) >= 1.0)
  {
    v29 = v33;
  }

  else
  {
    v29 = 0.0;
  }

  outlined init with copy of ActionPerforming(a1, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  v70 = swift_dynamicCast();
  if (v70)
  {
    v33 = *(v224 + 16);
    v21 = *(v224 + 24);
    p_cache = (v34 >> 62);
    if (v34 >> 62)
    {
      goto LABEL_166;
    }

    v71 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_41;
    }

    goto LABEL_182;
  }

  if (!v68)
  {
    v74 = v34 >> 62;
    v214 = a3;
    v212 = v10;
    if (v34 >> 62)
    {
      v75 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v75 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = _swiftEmptyArrayStorage;
    if (v75)
    {
      aBlock = _swiftEmptyArrayStorage;
      v70 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75 & ~(v75 >> 63), 0);
      if (v75 < 0)
      {
        goto LABEL_177;
      }

      v76 = 0;
      v10 = aBlock;
      v77 = v34 & 0xC000000000000001;
      do
      {
        if (v77)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v78 = *(v34 + 8 * v76 + 32);
        }

        v79 = v78;
        v33 = UIView.untransformedFrame.getter();
        v21 = v80;
        v82 = v81;
        v84 = v83;

        aBlock = v10;
        v86 = v10[2];
        v85 = v10[3];
        if (v86 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
          v10 = aBlock;
        }

        ++v76;
        v10[2] = (v86 + 1);
        v87 = &v10[4 * v86];
        *(v87 + 4) = v33;
        *(v87 + 5) = v21;
        v87[6] = v82;
        v87[7] = v84;
        v34 = v240;
      }

      while (v75 != v76);
    }

    v217 = swift_allocObject();
    *(v217 + 16) = 0;
    v221 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.83, 1.0}];
    if (v74)
    {
      v88 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v88 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    p_cache = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    a3 = 1;
    swift_beginAccess();
    v249 = 0u;
    v250 = 0u;
    v251 = 1;
    v225 = p_cache;
    if (!v88)
    {
LABEL_124:

      swift_beginAccess();
      v47 = v221;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(p_cache + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(p_cache + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_125;
      }

      goto LABEL_175;
    }

    v120 = 0;
    v231 = 0;
    v223 = v34 & 0xC000000000000001;
    v220 = v34 & 0xFFFFFFFFFFFFFF8;
    v228 = v75 - 1;
    v121 = __OFSUB__(v75, 1);
    v219 = v121;
    v236 = 7;
    v218 = v88;
    v215 = v10;
    while (1)
    {
      if (v223)
      {
        v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v120 >= *(v220 + 16))
        {
          goto LABEL_160;
        }

        v122 = *(v34 + 8 * v120 + 32);
      }

      v34 = v122;
      v123 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
      v124 = swift_allocObject();
      type metadata accessor for UIAction(0, &_sSo8NSObjectCML_2);
      v125 = static NSObject.== infix(_:_:)();
      SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(v34, v125 & 1, &v249);
      *(v124 + 16) = v128;
      v9 = (v124 + 16);
      *(v124 + 24) = v126;
      *(v124 + 32) = v129;
      *(v124 + 40) = v127;
      if (!v120)
      {
        v33 = v127;
        v21 = v126;
        swift_beginAccess();
        v127 = v33;
        *(v124 + 24) = v21 - v29;
      }

      if (v120 >= v10[2])
      {
        while (1)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          v71 = _CocoaArrayWrapper.endIndex.getter();
          if (!v71)
          {
            goto LABEL_182;
          }

LABEL_41:
          if (v71 < 1)
          {
            break;
          }

          if (p_cache)
          {
            v72 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v72 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v233 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            goto LABEL_169;
          }

          v89 = 0;
          p_cache = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
          v230 = v34 & 0xC000000000000001;
          v227 = v71;
          while (1)
          {
            if (v230)
            {
              v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v90 = *(v34 + 8 * v89 + 32);
            }

            v91 = v90;
            v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
            a3 = a1;
            outlined init with copy of ActionPerforming(a1, v248);
            v92 = swift_allocObject();
            *(v92 + 16) = v91;
            outlined init with take of ActionPerforming(v248, v92 + 24);
            *(v92 + 64) = v9;
            *(v92 + 72) = v29;
            v246 = partial apply for closure #1 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:);
            v247 = v92;
            aBlock = _NSConcreteStackBlock;
            v243 = 1107296256;
            v244 = thunk for @escaping @callee_guaranteed () -> ();
            v245 = &block_descriptor_184;
            v93 = _Block_copy(&aBlock);
            v94 = v91;
            v95 = v9;

            [v10 addAnimations:v93];
            _Block_release(v93);
            v96 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            outlined init with copy of ActionPerforming(&v94[v96], &aBlock);
            v97 = v245;
            v98 = v246;
            __swift_project_boxed_opaque_existential_0Tm(&aBlock, v245);
            v99 = (*(v98 + 2))(v97, v98);
            v101 = a1[3];
            v100 = a1[4];
            __swift_project_boxed_opaque_existential_0Tm(a3, *(a3 + 24));
            v102 = (*(v100 + 16))(v101, v100);
            __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
            if (v99 == v102)
            {
              v103 = v10;
              SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(a1, v10, 1, 0);

              v104 = *&v94[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
              if (v104)
              {
                type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
                v105 = swift_dynamicCastClass();
                if (v105)
                {
                  v106 = v105;
                  v107 = swift_allocObject();
                  *(v107 + 16) = v95;
                  *(v107 + 24) = v94;
                  *(v107 + 32) = v29;
                  v246 = partial apply for closure #2 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:);
                  v247 = v107;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = thunk for @escaping @callee_guaranteed () -> ();
                  v245 = &block_descriptor_196;
                  v108 = _Block_copy(&aBlock);
                  v109 = v94;
                  v110 = v95;
                  v111 = v104;

                  [v103 addAnimations:v108];
                  _Block_release(v108);
                  v112 = swift_allocObject();
                  *(v112 + 16) = v106;
                  *(v112 + 24) = a8;
                  v246 = partial apply for closure #3 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:);
                  v247 = v112;
                  aBlock = _NSConcreteStackBlock;
                  v243 = 1107296256;
                  v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
                  v245 = &block_descriptor_202;
                  v113 = _Block_copy(&aBlock);
                  a3 = v111;

                  [v103 addCompletion:v113];
                  _Block_release(v113);
                }
              }
            }

            v34 = v240;
            if (v233 == v89)
            {
              outlined init with copy of ActionPerforming(a1, v248);
              v114 = swift_allocObject();
              *(v114 + 16) = v240;
              *(v114 + 24) = v29;
              *(v114 + 32) = v94;
              *(v114 + 40) = v95;
              *(v114 + 48) = v33;
              *(v114 + 56) = v21;
              outlined init with take of ActionPerforming(v248, v114 + 64);
              v246 = partial apply for closure #4 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:);
              v247 = v114;
              aBlock = _NSConcreteStackBlock;
              v243 = 1107296256;
              v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
              v245 = &block_descriptor_190;
              v115 = _Block_copy(&aBlock);
              v116 = v94;
              v117 = v95;

              [v10 addCompletion:v115];
              _Block_release(v115);
            }

            v9 = v239;
            swift_beginAccess();
            v118 = v10;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(p_cache + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(p_cache + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            if (v89 == 0x8000000000000000)
            {
              break;
            }

            if (v89 <= 1)
            {
              v119 = 1;
            }

            else
            {
              v119 = v89;
            }

            ++v89;
            [v118 startAnimationAfterDelay:v237[22] * (v119 - 1)];

            if (v227 == v89)
            {
              goto LABEL_182;
            }
          }

          __break(1u);
LABEL_158:
          __break(1u);
        }

        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        swift_once();
LABEL_22:
        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static SyncedLyricsViewController.logger);
        v51 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v47))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          aBlock = v53;
          *v52 = 136315138;
          v34 = v240;
          *(v52 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0x100000000000003ELL, 0x80000001004D7E50, &aBlock);
          _os_log_impl(&_mh_execute_header, v51, v47, "%s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
        }

        a7 = a7 - a8;
        [v238 setImplicitDuration:0];
        *(p_cache[475] + v9) = 1;
LABEL_27:
        v55 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView;
        v56 = *(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v56)
        {
          goto LABEL_34;
        }

        v57 = *&v56[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (!v57)
        {
          goto LABEL_34;
        }

        type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
        v58 = swift_dynamicCastClass();
        if (!v58)
        {
          goto LABEL_34;
        }

        v47 = v58;
        v211 = v10;
        v213 = a3;
        v59 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        outlined init with copy of ActionPerforming(&v56[v59], &aBlock);
        v60 = v245;
        v9 = v246;
        __swift_project_boxed_opaque_existential_0Tm(&aBlock, v245);
        v61 = *(v9 + 2);
        v62 = v56;
        v34 = v57;
        v63 = v61(v60, v9);
        v64 = v63 + 1;
        if (!__OFADD__(v63, 1))
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
          v65 = a1[3];
          v66 = a1[4];
          __swift_project_boxed_opaque_existential_0Tm(a1, v65);
          v67 = (*(v66 + 16))(v65, v66);
          v68 = v64 == v67;
          v9 = v239;
          if (v64 == v67)
          {
            v69 = *(v239 + v55);
            *(v239 + v55) = 0;

            [v62 frame];
            *(v224 + 24) = *(v224 + 24) - (CGRectGetHeight(v255) + v237[14]);
            SyncedLyricsLineView.InstrumentalContentView.reset()();
          }

          v34 = v240;
          a3 = v213;
          LODWORD(v10) = v211;
          goto LABEL_35;
        }

        __break(1u);
LABEL_175:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        p_cache = v225;
LABEL_125:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v174 = swift_allocObject();
        *(v174 + 16) = v9;
        v246 = partial apply for closure #5 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:);
        v247 = v174;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = thunk for @escaping @callee_guaranteed () -> ();
        v245 = &block_descriptor_166;
        v175 = _Block_copy(&aBlock);
        v176 = v9;

        [v47 addAnimations:v175];
        _Block_release(v175);
        [v47 startAnimation];
        v70 = specialized Collection<>.firstIndex(of:)(v226, v34);
        if (v177)
        {
          goto LABEL_180;
        }

        v178 = *(p_cache + v9);
        if (!(v178 >> 62))
        {
          if (v70 < *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

LABEL_180:
          SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(a1, 0, 1, 1);

LABEL_181:

          goto LABEL_182;
        }

LABEL_179:
        if (v70 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_180;
        }

LABEL_128:
        v179 = v47;
        SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(a1, v47, 1, 1);

        goto LABEL_181;
      }

      v130 = *&v10[v236];
      v234 = v120;
      if (v130 == v127)
      {
        if (a5)
        {
          goto LABEL_108;
        }
      }

      else
      {
        *(v217 + 16) = 1;
        if (a5)
        {
          goto LABEL_108;
        }

        v131 = a1[3];
        v132 = a1[4];
        __swift_project_boxed_opaque_existential_0Tm(a1, v131);
        v133 = (*(v132 + 16))(v131, v132);
        v134 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        outlined init with copy of ActionPerforming(v34 + v134, &aBlock);
        v135 = v123;
        v136 = v245;
        v137 = v246;
        __swift_project_boxed_opaque_existential_0Tm(&aBlock, v245);
        v138 = *(v137 + 2);
        v139 = v137;
        v123 = v135;
        LOBYTE(v135) = v138(v136, v139) < v133;
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        v231 |= v135;
        v130 = *&v10[v236];
      }

      swift_beginAccess();
      if (v130 == *(v124 + 40) || (v140 = a1[3], v141 = a1[4], __swift_project_boxed_opaque_existential_0Tm(a1, v140), v142 = (*(v141 + 16))(v140, v141), v143 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line, swift_beginAccess(), outlined init with copy of ActionPerforming(v34 + v143, &aBlock), v144 = v123, v145 = v245, v146 = v246, __swift_project_boxed_opaque_existential_0Tm(&aBlock, v245), v147 = *(v146 + 2), v148 = v146, v123 = v144, v149 = v147(v145, v148), __swift_destroy_boxed_opaque_existential_0Tm(&aBlock), v149 >= v142))
      {
        v144 = v123;
        v150 = v231;
      }

      else
      {
        v150 = 1;
      }

      v151 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      outlined init with copy of ActionPerforming(v34 + v151, &aBlock);
      v152 = v245;
      v153 = v246;
      __swift_project_boxed_opaque_existential_0Tm(&aBlock, v245);
      v154 = (*(v153 + 2))(v152, v153);
      v155 = a1[3];
      v156 = a1[4];
      __swift_project_boxed_opaque_existential_0Tm(a1, v155);
      v157 = (*(v156 + 16))(v155, v156);
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v231 = (v154 != v157) & v150;
      if (v154 == v157)
      {
        v123 = v144;
        if (v150)
        {
          SyncedLyricsViewController.cancelAnimations()();
          swift_beginAccess();
          v199 = *(v124 + 16);
          v200 = v29 + *(v124 + 24);
          *(v124 + 24) = v200;
          SyncedLyricsViewController.contentOffset(for:)(v199, v200, *(v124 + 32), *(v124 + 40));
          v202 = v201;
          if (!v234)
          {
LABEL_156:

            SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(a1, v216 & 1, v214, v212 & 1, 1, 0.0, v202, a8);

            return;
          }

          if (v223 || v234 <= *(v220 + 16))
          {
            if (v234 <= v10[2])
            {
              v203 = 0;
              v204 = (v10 + 7);
              do
              {
                if (v223)
                {
                  v205 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v205 = *(v240 + 8 * v203 + 32);
                }

                v206 = v205;
                ++v203;
                UIView.untransformedFrame.setter(*(v204 - 3), *(v204 - 2), *(v204 - 1), *v204);

                v204 += 4;
              }

              while (v234 != v203);
              goto LABEL_156;
            }

            __break(1u);
          }

          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
          return;
        }
      }

      else
      {
        v123 = v144;
      }

LABEL_108:
      swift_beginAccess();
      v33 = *(v124 + 16);
      v21 = *(v124 + 24);
      v158 = *(v124 + 32);
      v159 = *(v124 + 40);
      if (v231)
      {
        v160 = v34;
        UIView.untransformedFrame.setter(v33, v21, v158, v159);

        v9 = v239;
      }

      else
      {
        v161 = swift_allocObject();
        *(v161 + 16) = v34;
        *(v161 + 24) = v124;
        v9 = v239;
        *(v161 + 32) = v239;
        *(v161 + 40) = v29;
        v162 = v239;
        v163 = v34;

        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(2, partial apply for specialized closure #2 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:), v161);
      }

      p_cache = v225;
      outlined init with copy of ActionPerforming(a1, v248);
      v164 = swift_allocObject();
      *(v164 + 16) = v9;
      *(v164 + 24) = v34;
      outlined init with take of ActionPerforming(v248, v164 + 32);
      v246 = partial apply for closure #3 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:);
      v247 = v164;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = thunk for @escaping @callee_guaranteed () -> ();
      v245 = &block_descriptor_154;
      a3 = _Block_copy(&aBlock);
      v165 = v9;
      v34 = v34;

      [v221 addAnimations:a3];
      _Block_release(a3);
      if (v219)
      {
        goto LABEL_161;
      }

      v166 = v234;
      if (v228 == v234)
      {
        outlined init with copy of ActionPerforming(a1, v248);
        v167 = swift_allocObject();
        *(v167 + 16) = v240;
        *(v167 + 24) = v29;
        *(v167 + 32) = v165;
        *(v167 + 40) = v217;
        *(v167 + 48) = v228;
        *(v167 + 56) = v224;
        outlined init with take of ActionPerforming(v248, v167 + 64);
        v246 = partial apply for specialized closure #4 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:);
        v247 = v167;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v245 = &block_descriptor_160_1;
        a3 = _Block_copy(&aBlock);
        v168 = v165;

        v10 = v215;

        p_cache = v225;

        v166 = v234;

        [v123 addCompletion:a3];
        _Block_release(a3);
      }

      swift_beginAccess();
      v169 = v123;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(p_cache + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(p_cache + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        p_cache = v225;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v170 = v237[22];
      if (v29 >= 0.0)
      {
        v171 = v166;
      }

      else
      {
        v171 = v228 - v166;
        if (__OFSUB__(v228, v166))
        {
          goto LABEL_163;
        }

        v170 = v170 * 0.5;
      }

      v172 = __OFSUB__(v171, 1);
      v173 = v171 - 1;
      if (v172)
      {
        goto LABEL_162;
      }

      v120 = v166 + 1;
      [v169 startAnimationAfterDelay:v170 * (v173 & ~(v173 >> 63))];

      *&v249 = v33;
      *(&v249 + 1) = v21;
      *&v250 = v158;
      *(&v250 + 1) = v159;
      v236 += 4;
      v251 = 0;
      v34 = v240;
      if (v218 == v120)
      {
        goto LABEL_124;
      }
    }
  }

  a8 = *(v224 + 16);
  v33 = *(v224 + 24);
  if (v34 >> 62)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
    v73 = v70;
    if (!v70)
    {
      goto LABEL_182;
    }
  }

  else
  {
    v73 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v73)
    {
      goto LABEL_182;
    }
  }

  if (v73 < 1)
  {
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v34 >> 62)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v70 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v235 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v180 = 0;
  p_cache = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  v232 = v34 & 0xC000000000000001;
  *&v21 = 1107296256;
  v229 = v73;
  do
  {
    if (v232)
    {
      v181 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v181 = *(v34 + 8 * v180 + 32);
    }

    v182 = v181;
    v183 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v238 timingParameters:a7];
    outlined init with copy of ActionPerforming(a1, v248);
    v184 = swift_allocObject();
    *(v184 + 16) = v182;
    outlined init with take of ActionPerforming(v248, v184 + 24);
    *(v184 + 64) = v29;
    *(v184 + 72) = v9;
    v246 = partial apply for closure #1 in SyncedLyricsViewController.animateInstrumentalEnd(line:contentOffset:visibleViews:timingParameters:duration:deltaY:);
    v247 = v184;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = thunk for @escaping @callee_guaranteed () -> ();
    v245 = &block_descriptor_172;
    v185 = _Block_copy(&aBlock);
    v186 = v9;
    v9 = v182;

    [v183 addAnimations:v185];
    _Block_release(v185);
    v187 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v9 + v187, &aBlock);
    v188 = v245;
    v189 = v246;
    __swift_project_boxed_opaque_existential_0Tm(&aBlock, v245);
    v190 = (*(v189 + 2))(v188, v189);
    v191 = a1[3];
    v192 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v191);
    v193 = (*(v192 + 16))(v191, v192);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    if (v190 == v193)
    {
      v194 = v183;
      SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(a1, v183, 1, 1);
    }

    v34 = v240;
    if (v235 == v180)
    {
      outlined init with copy of ActionPerforming(a1, v248);
      v195 = swift_allocObject();
      *(v195 + 16) = v240;
      *(v195 + 24) = v186;
      *(v195 + 32) = a8;
      *(v195 + 40) = v33;
      outlined init with take of ActionPerforming(v248, v195 + 48);
      v246 = partial apply for closure #2 in SyncedLyricsViewController.animateInstrumentalEnd(line:contentOffset:visibleViews:timingParameters:duration:deltaY:);
      v247 = v195;
      aBlock = _NSConcreteStackBlock;
      v243 = 1107296256;
      v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v245 = &block_descriptor_178;
      v196 = _Block_copy(&aBlock);
      v197 = v186;

      [v183 addCompletion:v196];
      _Block_release(v196);
    }

    swift_beginAccess();
    v10 = v183;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(p_cache + v239) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(p_cache + v239) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    a3 = v180 + 0x8000000000000000;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if (v180 == 0x8000000000000000)
    {
      goto LABEL_158;
    }

    if (v180 <= 1)
    {
      v198 = 1;
    }

    else
    {
      v198 = v180;
    }

    ++v180;
    [v10 startAnimationAfterDelay:v237[22] * (v198 - 1)];

    v9 = v239;
  }

  while (v229 != v180);
LABEL_182:
  v207 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v9 + v207) == 1)
  {
    *(v9 + v207) = 0;
    v208 = v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v209 = *(v208 + 1);
      ObjectType = swift_getObjectType();
      (*(v209 + 24))(v9, ObjectType, v209);
      swift_unknownObjectRelease();
    }
  }

  SyncedLyricsViewController.updateBlur(views:)(v34);
}

void specialized closure #2 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(uint64_t a1, CGFloat *a2, uint64_t a3)
{
  swift_beginAccess();
  UIView.untransformedFrame.setter(a2[2], a2[3], a2[4], a2[5]);
  v6 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v6 + v7, v37, &_s7LyricsX0A4Line_pSgMd);
    v8 = v38;
    if (v38)
    {
      v9 = v39;
      __swift_project_boxed_opaque_existential_0Tm(v37, v38);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin();
      v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v13, v11);
      v14 = v6;
      outlined destroy of TaskPriority?(v37, &_s7LyricsX0A4Line_pSgMd);
      v15 = (*(v9 + 16))(v8, v9);
      (*(v10 + 8))(v13, v8);
    }

    else
    {
      v16 = v6;
      outlined destroy of TaskPriority?(v37, &_s7LyricsX0A4Line_pSgMd);
      v15 = 0;
    }

    v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(a1 + v17, v37);
    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_0Tm(v37, v38);
    v20 = (*(v19 + 16))(v18, v19);
    if (v8)
    {
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      if (v15 == v21)
      {
        v22 = v6;
        [v22 frame];
        [v22 setFrame:?];
      }

      else
      {
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }
  }

  v23 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(a1 + v24, v37);
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_0Tm(v37, v38);
    v27 = *(v26 + 16);
    v28 = v23;
    v29 = v27(v25, v26);
    v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v31 = *(a3 + v30);
    if (v31 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v33 = v35 - 1;
      if (!__OFSUB__(v35, 1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v32 - 1;
      if (!__OFSUB__(v32, 1))
      {
LABEL_13:
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        if (v29 == v33)
        {
          v34 = v28;
          [v34 frame];
          [v34 setFrame:?];
        }

        return;
      }
    }

    __break(1u);
  }
}

void closure #3 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (*(v5 + 658) == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(a2 + v6, v15);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_0Tm(v15, v16);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = a3[3];
    v11 = a3[4];
    __swift_project_boxed_opaque_existential_0Tm(a3, v10);
    v12 = (*(v11 + 16))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    if (v9 < v12)
    {
      [a2 setAlpha:0.0];
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v14, a2);
      v13 = v14;
      swift_endAccess();
    }
  }
}

void specialized closure #4 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!(a3 >> 62))
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
LABEL_19:
    v32 = a5;
    swift_beginAccess();
    v33 = a8;
    if ((*(a5 + 16) & 1) == 0)
    {
      goto LABEL_49;
    }

    v34 = a6 + 1;
    if (__OFADD__(a6, 1))
    {
      goto LABEL_62;
    }

    v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v71 = a4;
    v35 = *(a4 + v32);
    if (v35 >> 62)
    {
      goto LABEL_63;
    }

    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36 < v34)
    {
      goto LABEL_64;
    }

LABEL_23:
    v8 = *(v71 + v32);
    v32 = v8 >> 62;
    if (v8 >> 62)
    {
      while (_CocoaArrayWrapper.endIndex.getter() < v34)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        swift_once();
LABEL_41:
        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static SyncedLyricsViewController.logger);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = v14;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v76 = v51;
          *v50 = 136315138;
          v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v10, v9, &v76);

          *(v50 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v47, v48, "%s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          v33 = a8;

          v14 = v49;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v54 = v36 - v34;
        v52 = v36 == v34;
        v53 = v36 <= v34;
        a4 = v71;
        if (!v52)
        {
          if (v53)
          {
            goto LABEL_72;
          }

          v55 = (v14 + 8 * v34);
          do
          {
            v56 = *v55++;
            v57 = v56;
            SyncedLyricsViewController.layout(lineView:)(v57);

            --v54;
          }

          while (v54);
        }

        swift_unknownObjectRelease();
LABEL_49:
        v58 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        v59 = *(a4 + v58);
        swift_beginAccess();
        [v59 setContentOffset:{*(a7 + 16), *(a7 + 24)}];
        __chkstk_darwin();
        specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #2 in closure #4 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:));
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v60 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a4 + v60) = _swiftEmptyArrayStorage;

        v61 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
        if (v61)
        {
          [v61 removeFromSuperview];
        }

        v14 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v14)
        {
          return;
        }

        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = 0;
        v62 = v33[3];
        v34 = v33[4];
        __swift_project_boxed_opaque_existential_0Tm(v33, v62);
        v8 = (*(v34 + 16))(v62, v34);
        v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v63 = *(a4 + v32);
        if ((v63 & 0xC000000000000001) != 0)
        {
          goto LABEL_59;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v64 = *(v63 + 8 * v8 + 32);
          goto LABEL_56;
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v36 = _CocoaArrayWrapper.endIndex.getter();
        if (v36 >= v34)
        {
          goto LABEL_23;
        }

LABEL_64:
        __break(1u);
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < v34)
    {
      goto LABEL_66;
    }

    if (v34 < 0)
    {
      goto LABEL_67;
    }

    if (v32)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37 < v36)
    {
      goto LABEL_68;
    }

    if ((v8 & 0xC000000000000001) == 0 || v34 == v36)
    {
      swift_bridgeObjectRetain_n();
      if (!v32)
      {
LABEL_36:
        v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_39;
      }
    }

    else
    {
      if (v34 >= v36)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }

      type metadata accessor for SyncedLyricsLineView();
      swift_bridgeObjectRetain_n();
      v38 = v34;
      do
      {
        v39 = v38 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v38);
        v38 = v39;
      }

      while (v36 != v39);
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v14 = v40;
    v34 = v41;
    v36 = v42 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v43._object = 0x80000001004D7F10;
    v43._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v43);
    if (!__OFSUB__(v36, v34))
    {
      v75 = v36 - v34;
      v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v44);

      v45._countAndFlagsBits = 0x73656E696C20;
      v45._object = 0xE600000000000000;
      String.append(_:)(v45);
      v10 = v76;
      v9 = v77;
      if (one-time initialization token for logger != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_41;
    }

    goto LABEL_69;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v71 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v70 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = 0;
    v69 = v14;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a3 + 8 * v9 + 32);
      }

      v10 = v15;
      v8 = v15;
      v16 = UIView.untransformedFrame.getter();
      UIView.untransformedFrame.setter(v16, v17 + a1, v18, v19);
      v20 = *(a4 + v71);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        outlined init with copy of ActionPerforming(v10 + v21, v72);
        v22 = v73;
        v23 = a4;
        v24 = v74;
        __swift_project_boxed_opaque_existential_0Tm(v72, v73);
        v25 = *(v24 + 16);
        v26 = v20;
        v27 = v24;
        a4 = v23;
        v8 = v25(v22, v27);
        v28 = *(v23 + v70);
        if (v28 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
          v30 = v31 - 1;
          if (__OFSUB__(v31, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v30 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
            goto LABEL_17;
          }
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        if (v8 == v30)
        {
          v8 = v26;
          [v8 frame];
          [v8 setFrame:?];
        }

        v14 = v69;
      }

      ++v9;

      if (v14 == v9)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_59:

  v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_56:
  SyncedLyricsViewController.dismissInstrumentalView(_:currentView:)(v14, v64);
}

uint64_t implicit closure #2 in closure #4 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)()
{
  _StringGuts.grow(_:)(56);
  v0._object = 0x80000001004D7F40;
  v0._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v0);
  swift_beginAccess();
  _sSo7CGPointVMa_3(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x20726F6620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

id closure #1 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:)(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_0Tm(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  if (v10 < v7)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

id closure #2 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:)(uint64_t a1, char *a2)
{
  SyncedLyricsViewController.layout(lineView:)(a2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(&a2[v3], v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_0Tm(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v8);
  if (!v6)
  {
    [a2 frame];
    return [a2 setFrame:?];
  }

  return result;
}

void closure #4 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:)(double a1, double a2, double a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    goto LABEL_26;
  }

  v13 = 0;
  do
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(a5 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    [v14 frame];
    [v15 setFrame:?];
  }

  while (v12 != v13);
LABEL_10:
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a6 + v16, v27);
  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_0Tm(v27, v28);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v21 = *(a7 + v20);
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v19; i = _CocoaArrayWrapper.endIndex.getter())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    if (v19 == i)
    {
LABEL_13:
      v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a7 + v23) setContentOffset:{a2, a3}];
      __chkstk_darwin();
      specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #1 in closure #4 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:));
      *(a7 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
      v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
      swift_beginAccess();
      *(a7 + v24) = _swiftEmptyArrayStorage;

      return;
    }

    if (v19 >= i)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v25 = *(a7 + v20);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_19;
      }

      if (v19 < 0)
      {
        break;
      }

      if (v19 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v26 = *(v25 + 8 * v19 + 32);
LABEL_19:
      ++v19;
      SyncedLyricsViewController.layout(lineView:)(v26);

      if (i == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t implicit closure #1 in closure #4 in SyncedLyricsViewController.animateInstrumentalStart(line:contentOffset:visibleViews:timingParameters:duration:deltaY:elapsed:)()
{
  _StringGuts.grow(_:)(68);
  v0._object = 0x80000001004D7E90;
  v0._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v0);
  _sSo7CGPointVMa_3(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x20726F6620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

id closure #1 in SyncedLyricsViewController.animateInstrumentalEnd(line:contentOffset:visibleViews:timingParameters:duration:deltaY:)(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a1 + v4, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_0Tm(v12, v13);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  if (v7 < v10)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

void closure #2 in SyncedLyricsViewController.animateInstrumentalEnd(line:contentOffset:visibleViews:timingParameters:duration:deltaY:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a4 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v9 = i;
      v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      outlined init with copy of ActionPerforming(v9 + v10, v21);

      v11 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_0Tm(v21, v22);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v15 = *(a5 + v14);
      if (v15 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (v16 < v13)
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 < v13)
        {
          goto LABEL_20;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      if (v13 == v16)
      {
LABEL_7:
        v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [*(a5 + v17) setContentOffset:{a1, a2}];
        __chkstk_darwin();
        specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #1 in closure #2 in SyncedLyricsViewController.animateInstrumentalEnd(line:contentOffset:visibleViews:timingParameters:duration:deltaY:));
        *(a5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a5 + v18) = _swiftEmptyArrayStorage;

        return;
      }

      if (v13 >= v16)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v19 = *(a5 + v14);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          goto LABEL_13;
        }

        if (v13 < 0)
        {
          break;
        }

        if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v20 = *(v19 + 8 * v13 + 32);
LABEL_13:
        ++v13;
        SyncedLyricsViewController.layout(lineView:)(v20);

        if (v16 == v13)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t implicit closure #1 in closure #2 in SyncedLyricsViewController.animateInstrumentalEnd(line:contentOffset:visibleViews:timingParameters:duration:deltaY:)()
{
  _StringGuts.grow(_:)(66);
  v0._object = 0x80000001004D7ED0;
  v0._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v0);
  _sSo7CGPointVMa_3(0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x20726F6620;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void SyncedLyricsViewController.dismissInstrumentalView(_:currentView:)(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v6] contentOffset];
  v8 = v7;
  v10 = v9;
  v11 = [v2 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_38;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;

  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v16 = *&v3[v15];
  if (v16 > 0.0)
  {
    goto LABEL_5;
  }

  v17 = [v3 view];
  if (!v17)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 frame];
  v16 = v19;

LABEL_5:
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a2 + v20, &v68);
  v67 = SyncedLyricsViewController.lineViews(in:startingAt:)(&v68, v8, v10, v14, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v68);
  v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a1 + v21, &v68);
  v22 = v71;
  v23 = v72;
  __swift_project_boxed_opaque_existential_0Tm(&v68, v71);
  v66 = (*(v23 + 2))(v22, v23);
  outlined init with copy of ActionPerforming(a2 + v20, v76);
  v24 = v77;
  v25 = v78;
  __swift_project_boxed_opaque_existential_0Tm(v76, v77);
  v65 = (*(v25 + 16))(v24, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  __swift_destroy_boxed_opaque_existential_0Tm(&v68);
  v59 = v21;
  outlined init with copy of ActionPerforming(a1 + v21, &v68);
  v26 = v71;
  v27 = v72;
  __swift_project_boxed_opaque_existential_0Tm(&v68, v71);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v30 = *&v3[v29];
  v60 = v6;
  if (v30 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v28; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v58 = a1;
    __swift_destroy_boxed_opaque_existential_0Tm(&v68);
    if (v28 == i)
    {
LABEL_8:

      if (v65 >= v66)
      {
        v32 = v60;
        v33 = *&v3[v60];
        swift_beginAccess();
        v34 = v33;
        [v34 contentOffset];
        [v34 setContentOffset:?];

        v68 = 0;
        v69 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v74 = v68;
        v75 = v69;
        v35._object = 0x80000001004D7E10;
        v35._countAndFlagsBits = 0xD00000000000003ALL;
        String.append(_:)(v35);
        [*&v3[v32] contentOffset];
        v68 = v36;
        v69 = v37;
        _sSo7CGPointVMa_3(0);
        _print_unlocked<A, B>(_:_:)();
        v38._countAndFlagsBits = 0x20726F6620;
        v38._object = 0xE500000000000000;
        String.append(_:)(v38);
        outlined init with copy of ActionPerforming(v58 + v59, &v68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
        _print_unlocked<A, B>(_:_:)();
        __swift_destroy_boxed_opaque_existential_0Tm(&v68);
        v27 = v74;
        v26 = v75;
        if (one-time initialization token for logger == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      return;
    }

    if (v28 >= i)
    {
      goto LABEL_35;
    }

    a1 = i;
    v27 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v64 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    swift_beginAccess();
    v45 = 0;
    v26 = 0;
    v63 = &v70;
    v61 = i;
    v62 = v29;
    while (1)
    {
      v46 = *&v3[v29];
      if ((v46 & 0xC000000000000001) != 0)
      {

        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_20;
      }

      if (v28 < 0)
      {
        break;
      }

      if (v28 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v47 = *(v46 + 8 * v28 + 32);
LABEL_20:
      v68 = v47;
      __chkstk_darwin();
      v57[2] = &v68;
      if ((specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v57, v67) & 1) != 0 && v65 < v66)
      {
        v48 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v27 + 664) stiffness:*(v27 + 672) damping:*(v27 + 680) initialVelocity:{0.0, 0.0}];
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v48).super.isa;
        v50 = swift_allocObject();
        *(v50 + 16) = v3;
        *(v50 + 24) = v47;
        v72 = partial apply for closure #1 in SyncedLyricsViewController.dismissInstrumentalView(_:currentView:);
        v73 = v50;
        v68 = _NSConcreteStackBlock;
        v69 = 1107296256;
        v70 = thunk for @escaping @callee_guaranteed () -> ();
        v71 = &block_descriptor_136_1;
        v51 = _Block_copy(&v68);
        v52 = v3;
        v53 = v47;

        [(objc_class *)isa addAnimations:v51];
        _Block_release(v51);
        v54 = v64;
        swift_beginAccess();
        a1 = isa;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v55 = *&v3[v54] & 0xFFFFFFFFFFFFFF8;
        v29 = *(v55 + 0x10);
        if (v29 >= *(v55 + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [(objc_class *)a1 startAnimationAfterDelay:*(v27 + 176) * v45];

        if (__OFADD__(v45++, 1))
        {
          goto LABEL_32;
        }

        a1 = v61;
        v29 = v62;
      }

      else
      {
        SyncedLyricsViewController.layout(lineView:)(v47);
      }

      if (a1 == ++v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_10:
  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static SyncedLyricsViewController.logger);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68 = v43;
    *v42 = 136315138;
    v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v27, v26, &v68);

    *(v42 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  else
  {
  }
}

void SyncedLyricsViewController.cancelAnimations()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  if (v3)
  {
    v4 = v3;

    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v2 = v10;
    if (!(v10 >> 62))
    {
LABEL_5:
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_16:

      return;
    }
  }

  else
  {

    if (!(v2 >> 62))
    {
      goto LABEL_5;
    }
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if ([v8 state] == 1)
      {
        [v9 stopAnimation:0];
        [v9 finishAnimationAtPosition:0];
      }
    }

    goto LABEL_16;
  }

  __break(1u);
}

Swift::Void __swiftcall SyncedLyricsViewController.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v59 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = type metadata accessor for SyncedLyricsViewController(0);
  v61.receiver = v3;
  v61.super_class = v17;
  objc_msgSendSuper2(&v61, "didUpdateFocusInContext:withAnimationCoordinator:", in.super.isa, with.super.isa);
  v18 = [v3 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 2)
  {
    v54 = v8;
    v55 = v6;
    v20 = [(objc_class *)in.super.isa nextFocusedItem];
    v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v22 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
    if (!v20 || (v23 = *&v3[v21], swift_unknownObjectRelease(), v24 = v20 == v23, v22 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_, !v24))
    {
      v25 = [(objc_class *)in.super.isa previouslyFocusedItem];
      if (v25)
      {
        v26 = *&v3[v21];
        v27 = v25;
        swift_unknownObjectRelease();
        v24 = v27 == v26;
        v22 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
        if (v24)
        {
          if ([*&v3[v21] isTracking])
          {
            v28 = [*&v3[v21] panGestureRecognizer];
            [v28 setEnabled:0];

            type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
            v52 = static OS_dispatch_queue.main.getter();
            static DispatchTime.now()();
            + infix(_:_:)();
            v29 = *(v59 + 8);
            v59 += 8;
            v53 = v29;
            v29(v14, v12);
            v30 = swift_allocObject();
            *(v30 + 16) = v3;
            aBlock[4] = partial apply for closure #1 in SyncedLyricsViewController.didUpdateFocus(in:with:);
            aBlock[5] = v30;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_90;
            v51 = _Block_copy(aBlock);
            v31 = v3;

            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            v50 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_3, &type metadata accessor for DispatchWorkItemFlags);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_3, &_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
            v33 = v54;
            v32 = v55;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v35 = v51;
            v34 = v52;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v35);

            v36 = v32;
            v22 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
            (*(v58 + 8))(v33, v36);
            (*(v56 + 8))(v11, v57);
            v53(v16, v12);
          }
        }
      }
    }

    v37 = [(objc_class *)in.super.isa nextFocusedItem];
    v38 = [in.super.isa v22[109]];
    if (v37)
    {
      if (v38)
      {
        v39 = v38;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37 == v39)
        {
          return;
        }

LABEL_15:
        v40 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
        if (!v40)
        {
          return;
        }

        v41 = v40;
        v42 = [(objc_class *)in.super.isa nextFocusedItem];
        if (v42)
        {
          v43 = v42;
          v44 = *&v3[v21];
          swift_unknownObjectRelease();
          v45 = v43 == v44;
          v46 = v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
          v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = v45;
          if (v45 != v46)
          {
            if (v43 == v44)
            {
              v47 = &selRef_blackColor;
LABEL_22:
              v49 = [objc_opt_self() *v47];
              [v41 setTintColor:v49];

              SyncedLyricsTimestampLabel.updateBackground()();
              goto LABEL_23;
            }

LABEL_21:
            v47 = &selRef_whiteColor;
            goto LABEL_22;
          }
        }

        else
        {
          v48 = v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
          v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = 0;
          if (v48)
          {
            goto LABEL_21;
          }
        }

LABEL_23:

        return;
      }
    }

    else if (!v38)
    {
      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_15;
  }
}

void closure #1 in SyncedLyricsViewController.didUpdateFocus(in:with:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v3 = [*(a1 + v2) panGestureRecognizer];
  [v3 setEnabled:1];
}

id SyncedLyricsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen] = 0;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  v7 = Int.seconds.getter(0);
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight] = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  specialized SyncedLyricsViewController.Specs.init(_:)(0, __src);
  memcpy(&v3[v8], __src, 0x2B0uLL);
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics] = 0;
  v9 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  *&v3[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  type metadata accessor for SyncedLyricsViewController.ScrollView();
  *&v3[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator;
  *&v3[v14] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = 0;
  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  v16 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v16 - 8) + 56))(&v3[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  v18 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] = 0;
  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  v21 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  *v21 = 0u;
  v21[1] = 0u;
  v22 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  if (a2)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v27.receiver = v3;
  v27.super_class = type metadata accessor for SyncedLyricsViewController(0);
  v25 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", v24, a3);

  return v25;
}

id SyncedLyricsViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen] = 0;
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  v4 = Int.seconds.getter(0);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight] = v4;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  specialized SyncedLyricsViewController.Specs.init(_:)(0, __src);
  memcpy(&v1[v5], __src, 0x2B0uLL);
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  *&v1[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  type metadata accessor for SyncedLyricsViewController.ScrollView();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator;
  *&v1[v11] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = 0;
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] = 0;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(&v1[v16], 1, 1, v17);
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  v18 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  *v18 = 0u;
  v18[1] = 0u;
  v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v20 = *&UIEdgeInsetsZero.bottom;
  *v19 = *&UIEdgeInsetsZero.top;
  v19[1] = v20;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SyncedLyricsViewController(0);
  v21 = objc_msgSendSuper2(&v23, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

id SyncedLyricsViewController.ScrollView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t implicit closure #1 in SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:)()
{
  _StringGuts.grow(_:)(35);
  v0._object = 0x80000001004D8180;
  v0._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t implicit closure #1 in SyncedLyricsViewController.syncedLyrics(_:jumpTo:select:elapsedTime:)()
{
  _StringGuts.grow(_:)(33);
  v0._object = 0x80000001004D8160;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void closure #1 in SyncedLyricsViewController.syncedLyrics(_:jumpTo:select:elapsedTime:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(a1 + v8) setContentOffset:{a3, a4}];
  _StringGuts.grow(_:)(65);
  v21 = 0;
  v22 = 0xE000000000000000;
  v9._object = 0x80000001004D8120;
  v9._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v9);
  *v20 = a3;
  *&v20[1] = a4;
  _sSo7CGPointVMa_3(0);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x20726F6620;
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);
  v11 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(a2 + v11, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  v13 = v21;
  v12 = v22;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static SyncedLyricsViewController.logger);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v13, v12, v20);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
  }
}

void SyncedLyricsViewController.syncedLyrics(_:select:)(uint64_t a1, void *a2)
{
  v3 = v2;
  specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #1 in SyncedLyricsViewController.syncedLyrics(_:select:));
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v10 = *&v3[v9];
  if ((v10 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v10 + 8 * v8 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v3[v11] contentOffset];
  v13 = v12;
  v15 = v14;
  v16 = [v3 view];
  if (v16)
  {
    v17 = v16;
    [v16 frame];
    v19 = v18;

    v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v21 = *&v3[v20];
    if (v21 > 0.0)
    {
      goto LABEL_9;
    }

    v22 = [v3 view];
    if (v22)
    {
      v23 = v22;
      [v22 frame];
      v21 = v24;

LABEL_9:
      [v8 frame];
      v55.origin.x = v25;
      v55.origin.y = v26;
      v55.size.width = v27;
      v55.size.height = v28;
      v54.origin.x = v13;
      v54.origin.y = v15;
      v54.size.width = v19;
      v54.size.height = v21;
      if (CGRectContainsRect(v54, v55))
      {
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
        v29 = SyncedLyricsViewController.lineChangeSpringParameters(gap:)(0, 1);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v29).super.isa;
        SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(a2, isa, 0, 1);
        v31 = swift_allocObject();
        *(v31 + 16) = v3;
        v52 = partial apply for closure #1 in SyncedLyricsViewController.syncedLyrics(_:select:);
        v53 = v31;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = thunk for @escaping @callee_guaranteed () -> ();
        v51 = &block_descriptor_25_2;
        v32 = _Block_copy(&aBlock);
        v33 = v3;

        [(objc_class *)isa addAnimations:v32];
        _Block_release(v32);
        v34 = [(objc_class *)isa state]== 3;
        v33[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v34;
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        v52 = partial apply for closure #2 in SyncedLyricsViewController.syncedLyrics(_:select:);
        v53 = v35;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v51 = &block_descriptor_31_1;
        v36 = _Block_copy(&aBlock);
        v37 = v33;

        [(objc_class *)isa addCompletion:v36];
        _Block_release(v36);
        [(objc_class *)isa startAnimation];

        v8 = isa;
LABEL_20:

        return;
      }

      if (one-time initialization token for logger == -1)
      {
LABEL_12:
        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static SyncedLyricsViewController.logger);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock = v42;
          *v41 = 136315138;
          *(v41 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0xD000000000000056, 0x80000001004D79F0, &aBlock);
          _os_log_impl(&_mh_execute_header, v39, v40, "%s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
        }

        swift_beginAccess();
        v43 = *(a1 + 96);
        if (v43)
        {

          v45 = v43(v44);
          swift_beginAccess();
          v46 = 0.0;
          if (*(a1 + 88) == 1)
          {
            v46 = Lyrics.spatialOffset.getter();
          }

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v43);
          v47 = v45 - v46;
        }

        else
        {
          v47 = 0.0;
        }

        specialized SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:)(a2, 0, 1, v47);
        goto LABEL_20;
      }

LABEL_24:
      swift_once();
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t implicit closure #1 in SyncedLyricsViewController.syncedLyrics(_:select:)()
{
  _StringGuts.grow(_:)(32);
  v0._object = 0x80000001004D80A0;
  v0._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t closure #2 in SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:)()
{
  result = SyncedLyricsViewController.visibleLineViews.getter();
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;
  SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(v3, 2, &v23);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  UIView.untransformedFrame.setter(v6, v8, v10, v12);

  v14 = v2 - 1;
  if (v2 != 1)
  {
    v15 = 5;
    do
    {
      *&v23 = v6;
      *(&v23 + 1) = v8;
      *&v24 = v10;
      *(&v24 + 1) = v12;
      v25 = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v1 + 8 * v15);
      }

      v17 = v16;
      SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(v16, 2, &v23);
      v6 = v18;
      v8 = v19;
      v10 = v20;
      v12 = v21;
      v22 = v17;
      UIView.untransformedFrame.setter(v6, v8, v10, v12);

      ++v15;
      --v14;
    }

    while (v14);
  }

LABEL_8:
}

uint64_t closure #3 in SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = result > 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  v3 = v2;
  v5 = [v3 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 2)
  {
    v7 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    if (v7 && (type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIGestureRecognizer), v8 = _.super.isa, v9 = v7, v10 = static NSObject.== infix(_:_:)(), v9, v8, (v10 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      type metadata accessor for UIAction(0, &_sSo8NSObjectCML_2);
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      v13 = [*&v3[v12] panGestureRecognizer];
      v14 = static NSObject.== infix(_:_:)();

      v11 = v14 ^ 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 2)
  {
    return 1;
  }

  v6 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
  if (!v6)
  {
    return 1;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  v7 = a1.super.isa;
  v8 = v6;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return v2[v10] == 1;
}

Swift::Void __swiftcall SyncedLyricsViewController.scrollViewDidScroll(_:)(UIScrollView a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v2)
  {
    v3 = v2;
    SyncedLyricsViewController.updateTimestampLabelFrame()();
  }
}

void closure #1 in SyncedLyricsViewController.scrollViewDidEndDragging(_:willDecelerate:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  }
}

uint64_t SyncedLyricsViewController.reportConcernData.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v4 = &v46 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd_0);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v46 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd_0);
  __chkstk_darwin();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  result = swift_beginAccess();
  v15 = *(v1 + v13);
  if (!v15)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
LABEL_29:
    *a1 = v21;
    a1[1] = v26;
    a1[2] = v22;
    a1[3] = v23;
    a1[4] = v24;
    a1[5] = v25;
    return result;
  }

  v47 = v4;
  v48 = a1;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v16, v10, &_s7LyricsX0A0C11TranslationVSgMd_0);
  v17 = type metadata accessor for Lyrics.Translation(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v10, 1, v17) == 1)
  {
    v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v15 + v20, v12, &_s7LyricsX0A0C11TranslationVSgMd_0);
    LODWORD(v20) = v19(v10, 1, v17);

    if (v20 != 1)
    {
      outlined destroy of TaskPriority?(v10, &_s7LyricsX0A0C11TranslationVSgMd_0);
    }
  }

  else
  {
    outlined init with take of Lyrics.Transliteration(v10, v12, type metadata accessor for Lyrics.Translation);
    (*(v18 + 56))(v12, 0, 1, v17);
  }

  if (v19(v12, 1, v17) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s7LyricsX0A0C11TranslationVSgMd_0);
    v21 = 0;
    v26 = 0;
  }

  else
  {
    v27 = &v12[*(v17 + 20)];
    v21 = *v27;
    v26 = *(v27 + 1);

    outlined destroy of Lyrics.TextLine(v12, type metadata accessor for Lyrics.Translation);
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v28, v6, &_s7LyricsX0A0C15TransliterationVSgMd_0);
  v29 = type metadata accessor for Lyrics.Transliteration(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v6, 1, v29) == 1)
  {
    v32 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v15 + v32, v8, &_s7LyricsX0A0C15TransliterationVSgMd_0);
    if (v31(v6, 1, v29) != 1)
    {
      outlined destroy of TaskPriority?(v6, &_s7LyricsX0A0C15TransliterationVSgMd_0);
    }
  }

  else
  {
    outlined init with take of Lyrics.Transliteration(v6, v8, type metadata accessor for Lyrics.Transliteration);
    (*(v30 + 56))(v8, 0, 1, v29);
  }

  v33 = v31(v8, 1, v29);
  v34 = v47;
  if (v33 == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s7LyricsX0A0C15TransliterationVSgMd_0);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v35 = &v8[*(v29 + 20)];
    v22 = *v35;
    v23 = *(v35 + 1);

    outlined destroy of Lyrics.TextLine(v8, type metadata accessor for Lyrics.Transliteration);
  }

  a1 = v48;
  v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v37 = *(v1 + v36);
  if (!(v37 >> 62))
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_27:

    v45 = type metadata accessor for Lyrics.TextLine(0);
    (*(*(v45 - 8) + 56))(v34, 1, 1, v45);
    goto LABEL_28;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_19:
  v38 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_31:

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_24:

    v40 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v39 + v40, v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
    v41 = type metadata accessor for Lyrics.TextLine(0);
    v42 = swift_dynamicCast();
    v43 = *(v41 - 8);
    (*(v43 + 56))(v34, v42 ^ 1u, 1, v41);
    if ((*(v43 + 48))(v34, 1, v41) != 1)
    {
      v44 = (v34 + *(v41 + 52));
      v24 = *v44;
      v25 = v44[1];

      result = outlined destroy of Lyrics.TextLine(v34, type metadata accessor for Lyrics.TextLine);
      goto LABEL_29;
    }

LABEL_28:
    result = outlined destroy of TaskPriority?(v34, &_s7LyricsX0A0C8TextLineVSgMd);
    v24 = 0;
    v25 = 0;
    goto LABEL_29;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v37 + 8 * v38 + 32);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in SyncedLyricsViewController.viewDidLoad()(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v27 = *(v8 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a2 preferredContentSizeCategory];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v26 = v5;
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3);
      v22 = static OS_dispatch_queue.main.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      aBlock[4] = partial apply for closure #1 in closure #1 in SyncedLyricsViewController.viewDidLoad();
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_344;
      v24 = _Block_copy(aBlock);
      v25 = a1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_3, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_3, &_sSay8Dispatch0A13WorkItemFlagsVGMd_3);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v26 + 8))(v7, v4);
      return (*(v27 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_1004AEF88()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #3 in SyncedLyricsViewController.viewDidLoad()(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_5Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #4 in SyncedLyricsViewController.viewDidLoad()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #4 in SyncedLyricsViewController.viewDidLoad()(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized SyncedLyricsViewController.log(_:)(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static SyncedLyricsViewController.logger);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v1, v3, &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    v12 = a3;
    if (!v7)
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return v12(v5, v3, 0);
}

void specialized SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:)(_BOOL8 a1, uint64_t a2, char a3, CGFloat a4)
{
  v5 = v4;
  LOBYTE(v6) = a3;
  specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #1 in SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:));
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v14 = *&v4[v13];
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v15 = *(v14 + 8 * v12 + 32);
  while (1)
  {
    v94 = a4;
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v97 = v24;
    [*&v5[v24] contentOffset];
    v26 = v25;
    v28 = v27;
    v29 = [v5 view];
    if (!v29)
    {
      goto LABEL_51;
    }

    v30 = v29;
    [v29 frame];
    v32 = v31;

    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v96 = v33;
    a4 = *&v5[v33];
    if (a4 <= 0.0)
    {
      v34 = [v5 view];
      if (!v34)
      {
        goto LABEL_52;
      }

      v35 = v34;
      [v34 frame];
      a4 = v36;
    }

    v104.origin.x = v17;
    v104.origin.y = v19;
    v104.size.width = v21;
    v104.size.height = v23;
    v106.origin.x = v26;
    v106.origin.y = v28;
    v106.size.width = v32;
    v106.size.height = a4;
    v95 = v13;
    if (CGRectIntersectsRect(v104, v106))
    {
      break;
    }

    v92 = a2;
    v37 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
    swift_beginAccess();
    v14 = *&v5[v37];
    v93 = v15;
    v91 = v6;
    v90 = a1;
    a2 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
LABEL_45:
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = 0;
    while (1)
    {
      v13 = v38 == v39;
      if (v38 == v39)
      {
LABEL_25:

        a2 = v92;
        v15 = v93;
        LOBYTE(v6) = v91;
        a1 = v90;
        goto LABEL_26;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(a2 + 16))
        {
          goto LABEL_41;
        }

        v40 = *(v14 + 8 * v39 + 32);
      }

      v6 = v40;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      [v40 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      [*&v5[v97] contentOffset];
      v50 = v49;
      v52 = v51;
      v53 = [v5 view];
      if (!v53)
      {
        goto LABEL_49;
      }

      v54 = v53;
      [v53 frame];
      v56 = v55;

      a4 = *&v5[v96];
      if (a4 <= 0.0)
      {
        v57 = [v5 view];
        if (!v57)
        {
          goto LABEL_50;
        }

        v58 = v57;
        [v57 frame];
        a4 = v59;
      }

      v105.origin.x = v42;
      v105.origin.y = v44;
      v105.size.width = v46;
      v105.size.height = v48;
      v107.origin.x = v50;
      v107.origin.y = v52;
      v107.size.width = v56;
      v107.size.height = a4;
      a1 = CGRectIntersectsRect(v105, v107);

      ++v39;
      if (a1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  LODWORD(v13) = 0;
LABEL_26:
  v60 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling;
  if (v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] == 1)
  {
    v61 = &v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    v62 = v61[659];
  }

  else
  {
    v62 = 0;
  }

  v63 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v5[v63] == 2 || ((v13 | [*&v5[v97] isDragging] & (v62 ^ 1)) & 1) != 0 || v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] != 1)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
    v80 = SyncedLyricsViewController.lineChangeSpringParameters(gap:)(a2, v6 & 1);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v80).super.isa;
    SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(a1, isa, 1, 1);
    v82 = swift_allocObject();
    *(v82 + 16) = v5;
    v102 = partial apply for closure #2 in SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:);
    v103 = v82;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = thunk for @escaping @callee_guaranteed () -> ();
    v101 = &block_descriptor_269;
    v83 = _Block_copy(&aBlock);
    v84 = v5;

    [(objc_class *)isa addAnimations:v83];
    _Block_release(v83);
    v85 = [(objc_class *)isa state]== 3;
    v84[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v85;
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    v102 = partial apply for closure #3 in SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:);
    v103 = v86;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
    v101 = &block_descriptor_275_0;
    v87 = _Block_copy(&aBlock);
    v88 = v84;

    [(objc_class *)isa addCompletion:v87];
    _Block_release(v87);
    [(objc_class *)isa startAnimation];
  }

  else
  {
    if (v62)
    {
      SyncedLyricsViewController.cancelAnimations()();
    }

    v64 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v15 + v64, &aBlock);
    v65 = v101;
    v66 = v102;
    __swift_project_boxed_opaque_existential_0Tm(&aBlock, v101);
    v67 = (*(v66 + 2))(v65, v66);
    v68 = *&v5[v95];
    if ((v68 & 0xC000000000000001) != 0)
    {

      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v69 = v89;
      goto LABEL_38;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v67 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 8 * v67 + 32);
LABEL_38:
      v70 = v69;
      v71 = UIView.untransformedFrame.getter();
      v73 = v72;
      v75 = v74;
      v77 = v76;

      SyncedLyricsViewController.contentOffset(for:)(v71, v73, v75, v77);
      v79 = v78;

      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      outlined init with copy of ActionPerforming(v15 + v64, &aBlock);
      SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)(&aBlock, v5[v60], a2, v6 & 1, 0, 0.0, v79, v94);

      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v5[v60] = 0;
      return;
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
  }
}

void specialized SyncedLyricsViewController.syncedLyrics(_:jumpTo:select:elapsedTime:)(void *a1, uint64_t a2, Swift::Double a3)
{
  v5 = v3;
  v144 = a1;
  specialized SyncedLyricsViewController.log(_:)(partial apply for implicit closure #1 in SyncedLyricsViewController.syncedLyrics(_:jumpTo:select:elapsedTime:));
  v9 = a1[3];
  v10 = a1[4];
  v142 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *&v12[v5];
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_97;
  }

  v4 = *(v13 + 8 * v11 + 32);
  while (1)
  {
    v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    v140 = v14;
    outlined init with copy of ActionPerforming(v4 + v14, &v145);
    v13 = v148;
    v15 = v149;
    __swift_project_boxed_opaque_existential_0Tm(&v145, v148);
    v16 = (*(v15 + 2))(v13, v15);
    v17 = *&v12[v5];
    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
LABEL_97:
      __break(1u);
    }

    else if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 8 * v16 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_99:
    swift_once();
LABEL_43:
    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static SyncedLyricsViewController.logger);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v145 = v85;
      *v84 = 136315138;
      v86 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(a2, v13, &v145);

      *(v84 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v82, v83, "%s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
    }

    else
    {
    }

    v87 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
    swift_beginAccess();
    v141 = v87;
    a2 = *(v5 + v87);
    v134 = v4;
    if ((a2 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type SyncedLyricsLineView and conformance NSObject, type metadata accessor for SyncedLyricsLineView);
      Set.Iterator.init(_cocoa:)();
      a2 = v145;
      v88 = v146;
      v89 = v147;
      v12 = v148;
      v5 = v149;
    }

    else
    {
      v90 = -1 << *(a2 + 32);
      v88 = a2 + 56;
      v89 = ~v90;
      v91 = -v90;
      if (v91 < 64)
      {
        v92 = ~(-1 << v91);
      }

      else
      {
        v92 = -1;
      }

      v5 = v92 & *(a2 + 56);

      v12 = 0;
    }

    v136 = v89;
    v93 = (v89 + 64) >> 6;
    if (a2 < 0)
    {
      while (1)
      {
        v99 = __CocoaSet.Iterator.next()();
        if (!v99)
        {
          break;
        }

        v151[4] = v99;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v98 = v152[0];
        v96 = v12;
        v97 = v5;
        if (!v152[0])
        {
          break;
        }

LABEL_61:
        [v98 setAlpha:{1.0, v134}];
        swift_beginAccess();
        v100 = specialized Set._Variant.remove(_:)(v98);
        swift_endAccess();

        v12 = v96;
        v5 = v97;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_63:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
      v101 = v143;
      if (v143[v137])
      {
LABEL_64:

        return;
      }

      [*&v143[v138] contentOffset];
      v103 = v102;
      v105 = v104;
      v106 = [v101 view];
      if (!v106)
      {
        goto LABEL_111;
      }

      v107 = v106;
      [v106 frame];
      v109 = v108;

      v110 = v134;
      v111 = *&v101[v135];
      if (v111 > 0.0)
      {
        goto LABEL_69;
      }

      v112 = [v101 view];
      if (v112)
      {
        v113 = v112;
        [v112 frame];
        v111 = v114;

LABEL_69:
        outlined init with copy of ActionPerforming(v110 + v140, v152);
        v64 = SyncedLyricsViewController.lineViews(in:startingAt:)(v152, v103, v105, v109, v111);
        __swift_destroy_boxed_opaque_existential_0Tm(v152);

        SyncedLyricsViewController.updateBlur(views:)(v115);

        v116 = &v101[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
        swift_beginAccess();
        if (v116[658] != 1)
        {
          goto LABEL_107;
        }

        if (!(v64 >> 62))
        {
          v117 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v117)
          {
            goto LABEL_72;
          }

LABEL_107:

          return;
        }

LABEL_106:
        v117 = _CocoaArrayWrapper.endIndex.getter();
        if (!v117)
        {
          goto LABEL_107;
        }

LABEL_72:
        if (v117 >= 1)
        {
          v118 = 0;
          v140 = v64 & 0xC000000000000001;
          do
          {
            if (v140)
            {
              v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v121 = *(v64 + 8 * v118 + 32);
            }

            v122 = v121;
            v123 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            outlined init with copy of ActionPerforming(v122 + v123, v152);
            v124 = v153;
            v125 = v154;
            __swift_project_boxed_opaque_existential_0Tm(v152, v153);
            v126 = (*(v125 + 16))(v124, v125);
            v128 = v142[3];
            v127 = v142[4];
            __swift_project_boxed_opaque_existential_0Tm(v142, v128);
            v129 = (*(v127 + 16))(v128, v127);
            __swift_destroy_boxed_opaque_existential_0Tm(v152);
            if (v126 < v129)
            {
              [v122 setAlpha:0.0];
              swift_beginAccess();
              v119 = v122;
              specialized Set._Variant.insert(_:)(v151, v119);
              v120 = v151[0];
              swift_endAccess();
            }

            else
            {
            }

            ++v118;
          }

          while (v117 != v118);
          goto LABEL_107;
        }

        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_53:
    v94 = v12;
    v95 = v5;
    v96 = v12;
    if (v5)
    {
LABEL_57:
      v97 = (v95 - 1) & v95;
      v98 = *(*(a2 + 48) + ((v96 << 9) | (8 * __clz(__rbit64(v95)))));
      if (v98)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v96 = (v94 + 1);
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v96 >= v93)
      {
        goto LABEL_63;
      }

      v95 = *(v88 + 8 * v96);
      ++v94;
      if (v95)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

LABEL_95:

  v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v18 = v132;
LABEL_9:
  v19 = v18;
  v20 = UIView.untransformedFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  SyncedLyricsViewController.contentOffset(for:)(v20, v22, v24, v26);
  v28 = v27;

  v143 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v145);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v30 = *&v143[v29];
  v145 = v4;
  __chkstk_darwin();
  v133[2] = &v145;
  v5 = v143;

  v31 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v133, v30);

  v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v5 + v32) != 2 || (v31 & 1) != 0)
  {
    v137 = v32;
    v40 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v138 = v40;
    [*(v5 + v40) contentOffset];
    v42 = v41;
    v44 = v43;
    v45 = [v5 view];
    if (!v45)
    {
      goto LABEL_109;
    }

    v46 = v45;
    [v45 frame];
    v48 = v47;

    v49 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v135 = v49;
    v50 = *(v5 + v49);
    if (v50 <= 0.0)
    {
      v51 = [v5 view];
      if (!v51)
      {
        goto LABEL_110;
      }

      v52 = v51;
      [v51 frame];
      v50 = v53;
    }

    v139 = v4;
    [v139 frame];
    v158.origin.x = v54;
    v158.origin.y = v55;
    v158.size.width = v56;
    v158.size.height = v57;
    v157.origin.x = v42;
    v157.origin.y = v44;
    v157.size.width = v48;
    v157.size.height = v50;
    if (CGRectIntersectsRect(v157, v158))
    {
      outlined init with copy of ActionPerforming(v142, &v145);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
      if (swift_dynamicCast() & 1) == 0 && (a2)
      {

        if (one-time initialization token for logger == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_105;
      }
    }

    outlined init with copy of ActionPerforming(v142, &v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
    if (!swift_dynamicCast())
    {
      goto LABEL_36;
    }

    v63 = v142[3];
    v64 = v142[4];
    __swift_project_boxed_opaque_existential_0Tm(v142, v63);
    v65 = (*(v64 + 16))(v63, v64);
    v66 = *&v12[v5];
    if ((v66 & 0xC000000000000001) == 0)
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v65 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v67 = *(v66 + 8 * v65 + 32);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_103;
    }

    v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_30:
    v68 = *&v67[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v69 = v68;

    if (v68)
    {
      type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
      if (swift_dynamicCastClass())
      {
        v70 = v5;
        v71 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        v72 = v139;
        *&v70[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = v139;
        v73 = v72;

        if (v31)
        {
          SyncedLyricsLineView.InstrumentalContentView.update(elapsedTime:)(a3);

          v5 = v143;
          goto LABEL_38;
        }

        SyncedLyricsLineView.InstrumentalContentView.fadeIn(elapsedTime:)(a3);
        v5 = v143;
      }
    }

LABEL_36:
    if (!(v31 & 1 | ((a2 & 1) == 0)))
    {
      outlined init with copy of ActionPerforming(v4 + v140, &v145);
      SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(&v145, 0, 1, 0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v145);
    }

LABEL_38:
    v74 = v139;
    UIView.untransformedFrame.getter();
    a3 = v75;

    memset(v155, 0, sizeof(v155));
    v156 = 1;
    SyncedLyricsViewController.frame(for:selected:previousViewFrame:)(v74, 2, v155);
    if (v76 == a3)
    {
      goto LABEL_42;
    }

    outlined init with copy of ActionPerforming(v4 + v140, &v145);
    v77 = v148;
    v64 = v149;
    __swift_project_boxed_opaque_existential_0Tm(&v145, v148);
    v78 = (*(v64 + 16))(v77, v64);
    v63 = v78;
    v79 = *&v12[v5];
    if (!(v79 >> 62))
    {
      a2 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2 < v78)
      {
        goto LABEL_104;
      }

      goto LABEL_41;
    }

LABEL_103:
    a2 = _CocoaArrayWrapper.endIndex.getter();
    if (a2 < v63)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      swift_once();
LABEL_22:
      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static SyncedLyricsViewController.logger);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v145 = v62;
        *v61 = 136315138;
        *(v61 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0xD00000000000002BLL, 0x80000001004D80F0, &v145);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
      }

      SyncedLyricsViewController.cancelAnimations()();
      specialized SyncedLyricsViewController.syncedLyrics(_:animateTo:elapsedTime:gap:)(v142, 0, 1, a3);
      goto LABEL_64;
    }

LABEL_41:
    __swift_destroy_boxed_opaque_existential_0Tm(&v145);
    if (v63 != a2)
    {
      if (v63 < a2)
      {
        while (1)
        {
          v130 = *&v12[v5];
          if ((v130 & 0xC000000000000001) != 0)
          {

            v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v63 < 0)
            {
              goto LABEL_91;
            }

            if (v63 >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v131 = *(v130 + 8 * v63 + 32);
          }

          ++v63;
          SyncedLyricsViewController.layout(lineView:)(v131);

          if (a2 == v63)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_106;
    }

LABEL_42:
    SyncedLyricsViewController.cancelAnimations()();
    [*(v5 + v138) setContentOffset:{0.0, v28}];
    v145 = 0;
    v146 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v80._object = 0x80000001004D80C0;
    v80._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v80);
    v152[0] = 0;
    *&v152[1] = v28;
    _sSo7CGPointVMa_3(0);
    _print_unlocked<A, B>(_:_:)();
    a2 = v145;
    v13 = v146;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

  SyncedLyricsViewController.cancelAnimations()();
  v33 = swift_allocObject();
  *(v33 + 2) = v5;
  v33[3] = 0.0;
  v33[4] = v28;
  *(v33 + 5) = v4;
  v34 = objc_allocWithZone(UIViewPropertyAnimator);
  v149 = partial apply for closure #1 in SyncedLyricsViewController.syncedLyrics(_:jumpTo:select:elapsedTime:);
  v150 = v33;
  v145 = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = thunk for @escaping @callee_guaranteed () -> ();
  v148 = &block_descriptor_263_0;
  v35 = _Block_copy(&v145);
  v36 = v5;
  v37 = v4;

  v38 = [v34 initWithDuration:3 curve:v35 animations:0.25];
  _Block_release(v35);
  if (a2)
  {
    outlined init with copy of ActionPerforming(v4 + v140, &v145);
    v39 = v38;
    SyncedLyricsViewController.select(line:animator:deselectAll:fadeInInstrumentalView:)(&v145, v38, 1, 1);

    __swift_destroy_boxed_opaque_existential_0Tm(&v145);
  }

  [v38 startAnimation];
}

uint64_t specialized SyncedLyricsViewController.syncedLyricsDesectAllLines(_:)()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static SyncedLyricsViewController.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(0xD000000000000023, 0x80000001004D8040, v25);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  if (!v1[v7])
  {
    v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    result = [*&v1[v9] isDragging];
    if ((result & 1) == 0)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator);
      v10 = SyncedLyricsViewController.lineChangeSpringParameters(gap:)(0, 1);
      v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
      result = swift_beginAccess();
      v13 = *&v1[v12];
      if (v13 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v14 = result;
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_9:
          v23 = v12;
          if (v14 < 1)
          {
            __break(1u);
            return result;
          }

          v15 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];

          swift_beginAccess();
          for (i = 0; i != v14; ++i)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v13 + 8 * i + 32);
            }

            v18 = v17;
            v19 = v11.super.isa;
            v26.value = v11;
            SyncedLyricsLineView.setSelected(_:animator:)(0, v26);

            if (v15[657] != 1 || (v20 = [v1 traitCollection], v21 = objc_msgSend(v20, "accessibilityContrast"), v20, v21 == 1))
            {
            }

            else
            {
              SyncedLyricsLineView.setBlurRadius(_:animated:)(1, 3.0);
              swift_beginAccess();
              specialized Set._Variant.insert(_:)(&v24, v18);
              v22 = v24;
              swift_endAccess();
            }
          }

          v12 = v23;
        }
      }

      *&v1[v12] = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void specialized SyncedLyricsViewController.syncedLyrics(_:update:elapsedTime:)(void *a1, Swift::Double a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v7 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
  v11 = *&v10[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v12 = v11;

  if (v11)
  {
    type metadata accessor for SyncedLyricsLineView.InstrumentalContentView();
    if (swift_dynamicCastClass())
    {
      v13 = v12;
      SyncedLyricsLineView.InstrumentalContentView.update(elapsedTime:)(a2);
    }
  }
}

void specialized SyncedLyricsViewController.syncedLyrics(_:finish:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActionPerforming(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    outlined destroy of TaskPriority?(v5, &_s7LyricsX0A0C8TextLineVSgMd);
    return;
  }

  v11(v5, 0, 1, v6);
  outlined init with take of Lyrics.Transliteration(v5, v9, type metadata accessor for Lyrics.TextLine);
  swift_beginAccess();
  v12 = type metadata accessor for SyncedLyricsLineView();

  Array.subscript.getter(v12, v26);

  v13 = v26[0];
  if (!v26[0])
  {
    goto LABEL_15;
  }

  v14 = *(v26[0] + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (!v14)
  {
    goto LABEL_13;
  }

  type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (!v16)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v17 = *(v16 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v17)
    {
      v18 = *(v17 + 56);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
        v24 = *(v17 + 48);

        v23 = v14;

        swift_beginAccess();
        v21 = 0;
        while (v21 < *(v18 + 16))
        {
          ++v21;
          memcpy(v26, (v2 + v20), 0x2B0uLL);

          outlined init with copy of SyncedLyricsViewController.Specs(v26, &v25);
          SyncedLyricsLineView.Line.finishGradient(specs:)(v26);
          outlined destroy of SyncedLyricsViewController.Specs(v26);

          if (v19 == v21)
          {

            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_13:
    outlined destroy of Lyrics.TextLine(v9, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_14:

LABEL_15:
  outlined destroy of Lyrics.TextLine(v9, type metadata accessor for Lyrics.TextLine);
}

void specialized SyncedLyricsViewController.menuHandler(_:)()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 32);
    }

    v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(&v0[v5], &aBlock, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    v6 = v38;
    if (v38)
    {
      v7 = v39;
      __swift_project_boxed_opaque_existential_0Tm(&aBlock, v38);
      v8 = *(v6 - 1);
      v9 = __chkstk_darwin();
      v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      outlined destroy of TaskPriority?(&aBlock, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
      v12 = v0;
      v13 = v7[1](v6, v7);
      v14 = (*(v8 + 8))(v11, v6);
      v15 = v13(v14);

      SyncedLyricsViewController.cancelAnimations()();
      v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
      v16 = v4;
      v17 = UIView.untransformedFrame.getter();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      SyncedLyricsViewController.contentOffset(for:)(v17, v19, v21, v23);
      v25 = v24;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 2) = v12;
      v27[3] = 0.0;
      *(v27 + 4) = v25;
      v39 = partial apply for closure #1 in SyncedLyricsViewController.menuHandler(_:);
      v40 = v27;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed () -> ();
      v38 = &block_descriptor_234;
      v28 = _Block_copy(&aBlock);
      v29 = v12;

      v30 = swift_allocObject();
      *(v30 + 2) = v29;
      *(v30 + 3) = v16;
      v30[4] = 0.0;
      *(v30 + 5) = v25;
      v30[6] = v15;
      v39 = partial apply for closure #2 in SyncedLyricsViewController.menuHandler(_:);
      v40 = v30;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v38 = &block_descriptor_240;
      v31 = _Block_copy(&aBlock);
      v32 = v16;
      v33 = v29;

      [v26 animateWithDuration:v28 animations:v31 completion:0.25];
      _Block_release(v31);
      _Block_release(v28);
    }

    else
    {

      outlined destroy of TaskPriority?(&aBlock, &_s7LyricsX06SyncedA14TimingProvider_pSgMd);
    }
  }
}

void specialized SyncedLyricsViewController.displayLinkFired(_:)()
{
  v3 = v1;
  v4 = SyncedLyricsViewController.visibleLineViews.getter();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    p_cache = (&OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line + 16);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    p_cache = &OBJC_METACLASS____TtCC7LyricsX20SyncedLyricsLineView4Line.cache;
    if (v6)
    {
LABEL_3:
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = p_cache[430];
        v10 = v5 & 0xC000000000000001;
        v11 = &OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
        v45 = v9;
        v46 = v5;
        while (1)
        {
          if (v10)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v5 + 8 * v8 + 32);
          }

          v13 = v12;
          v14 = *&v12[*v11];
          if (!v14)
          {
            goto LABEL_6;
          }

          type metadata accessor for SyncedLyricsLineView.SBS_TextContentView();
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
            goto LABEL_6;
          }

          v16 = *&v9[v3];
          if (!v16)
          {
            goto LABEL_6;
          }

          v17 = v6;
          v18 = v10;
          v19 = v11;
          v48 = v15;
          swift_beginAccess();
          v20 = *(v16 + 96);
          if (v20)
          {
            break;
          }

          v11 = v19;
          v10 = v18;
          v6 = v17;
          v5 = v46;
LABEL_6:
          ++v8;

          if (v6 == v8)
          {
            goto LABEL_36;
          }
        }

        v47 = v14;

        v21 = outlined copy of (@escaping @callee_guaranteed () -> ())?(v20);
        v22 = v20(v21);
        swift_beginAccess();
        if (*(v16 + 88) == 1)
        {
          v23 = Lyrics.spatialOffset.getter();
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v20);
        }

        else
        {

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v20);
          v23 = 0.0;
        }

        v24 = v22 - v23;
        v25 = v48;
        v11 = v19;
        if (v24 == *(v48 + OBJC_IVAR___MusicSBS_TextContentView_progress))
        {
          v10 = v18;
          v6 = v17;
          v9 = v45;
          v5 = v46;
        }

        else
        {
          *(v48 + OBJC_IVAR___MusicSBS_TextContentView_progress) = v24;
          v27 = *(v25 + OBJC_IVAR___MusicSBS_TextContentView_textView);
          v9 = v45;
          if (!v27)
          {
            goto LABEL_58;
          }

          v10 = v18;
          v28 = *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
          v6 = v17;
          if (v28 != v24 && (v24 >= v28 || v28 - v24 >= 0.5))
          {
            *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = v24;
            v30 = v27;
            SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(1, v24);

            v25 = v48;
          }

          v31 = *(v25 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
          v5 = v46;
          if (v31)
          {
            v32 = *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
            if (v32 != v24 && (v24 >= v32 || v32 - v24 >= 0.5))
            {
              *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = v24;
              v34 = v31;
              SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(1, v24);

              v26 = v13;
              v13 = v34;
              goto LABEL_20;
            }
          }
        }

        v26 = v47;
LABEL_20:

        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_52;
    }
  }

LABEL_36:

  if (*(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    return;
  }

  v0 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView;
  v6 = *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
  if (!v6)
  {
    goto LABEL_48;
  }

  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v1 = *(v3 + v2);
  if (!(v1 >> 62))
  {
    v35 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_52:
  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (!v35)
  {
LABEL_48:
    if (*(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager))
    {

      SyncedLyricsManager.update()();
    }

    return;
  }

LABEL_40:
  v36 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_55:
    v43 = v6;

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_45;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v36 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v1 + 8 * v36 + 32);
    v38 = v6;
    v39 = v37;
LABEL_45:
    v40 = *(v3 + v2);
    v49 = v6;
    __chkstk_darwin();
    v44[2] = &v49;

    v41 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v44, v40);

    if ((v41 & 1) == 0)
    {
      v42 = *(v3 + v0);
      *(v3 + v0) = 0;

      SyncedLyricsViewController.dismissInstrumentalView(_:currentView:)(v6, v39);
      SyncedLyricsLineView.reset()();
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t specialized SyncedLyricsViewController.gestureRecognizer(_:shouldReceive:)(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 2)
  {
    return 1;
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v6] != 1)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v1[v7])
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  if (*&v1[v8] <= 0.0)
  {
    return 0;
  }

  v9 = [v1 view];
  [a1 locationInView:v9];
  v11 = v10;

  result = [v1 view];
  if (result)
  {
    v12 = result;
    [result frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21.origin.x = v14;
    v21.origin.y = v16;
    v21.size.width = v18;
    v21.size.height = v20;
    return CGRectGetHeight(v21) - *&v1[v8] < v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized SyncedLyricsViewController.scrollViewWillBeginDragging(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v1[v2])
  {
    return;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v1[v3] != 1)
  {
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 2)
    {
      v1[v3] = 1;
      v6 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        (*(v7 + 16))(v1, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }
  }

  SyncedLyricsViewController.removeAllBlurs()();
  SyncedLyricsViewController.cancelAnimations()();
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 0;
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] invalidate];
  v10 = *&v1[v9];
  *&v1[v9] = 0;

  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
  swift_beginAccess();
  v12 = *&v1[v11];
  if ((v12 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type SyncedLyricsLineView and conformance NSObject, type metadata accessor for SyncedLyricsLineView);
    Set.Iterator.init(_cocoa:)();
    v12 = v48;
    v13 = v49;
    v14 = v50;
    v15 = v51;
    v16 = v52;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);

    v15 = 0;
  }

  v40 = v14;
  v20 = (v14 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_23;
        }

        v22 = *(v13 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_35:

      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_29:
      SyncedLyricsLineView.setFocused(_:animated:)(0, 1);

      __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
LABEL_32:
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      *(v37 + 16) = v1;
      v43 = partial apply for closure #1 in SyncedLyricsViewController.scrollViewWillBeginDragging(_:);
      v44 = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      v42 = &block_descriptor_256;
      v38 = _Block_copy(aBlock);
      v39 = v1;

      [v36 animateWithDuration:v38 animations:0.2];
      _Block_release(v38);
      return;
    }

LABEL_17:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v12 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      break;
    }

    while (1)
    {
      [v25 setAlpha:{1.0, v40}];
      swift_beginAccess();
      v27 = specialized Set._Variant.remove(_:)(v25);
      swift_endAccess();

      v15 = v23;
      v16 = v24;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v26 = __CocoaSet.Iterator.next()();
      if (v26)
      {
        *&v45 = v26;
        type metadata accessor for SyncedLyricsLineView();
        swift_dynamicCast();
        v25 = aBlock[0];
        v23 = v15;
        v24 = v16;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  v28 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (!v28)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    goto LABEL_31;
  }

  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v28 + v29, &v45, &_s7LyricsX0A4Line_pSgMd);
  if (!*(&v46 + 1))
  {
LABEL_31:
    outlined destroy of TaskPriority?(&v45, &_s7LyricsX0A4Line_pSgMd);
    goto LABEL_32;
  }

  outlined init with take of ActionPerforming(&v45, aBlock);
  v30 = v42;
  v31 = v43;
  __swift_project_boxed_opaque_existential_0Tm(aBlock, v42);
  v32 = (*(v31 + 2))(v30, v31);
  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v34 = *&v1[v33];
  if ((v34 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v32 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v34 + 8 * v32 + 32);
    goto LABEL_29;
  }

  __break(1u);
}

void specialized SyncedLyricsViewController.scrollViewDidEndDragging(_:willDecelerate:)()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in SyncedLyricsViewController.scrollViewDidEndDragging(_:willDecelerate:);
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_250;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
    _Block_release(v4);
    v6 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer);
    *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) = v5;
  }
}

void specialized SyncedLyricsViewController.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v7)
  {
    return;
  }

  v8 = [v3 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 2)
  {
    if (a3 <= 0.0)
    {
      if (a3 < 0.0)
      {
        v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
        swift_beginAccess();
        if (v4[v14] == 1)
        {
          v4[v14] = 0;
          v15 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v16 = *(v15 + 1);
            ObjectType = swift_getObjectType();
            (*(v16 + 24))(v4, ObjectType, v16);
            swift_unknownObjectRelease();
          }
        }

        v18 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          v20 = swift_getObjectType();
          (*(v19 + 32))(v4, v20, v19);
          goto LABEL_13;
        }
      }
    }

    else
    {
      v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      if (v4[v10] != 1)
      {
        v4[v10] = 1;
        v11 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 1);
          v13 = swift_getObjectType();
          (*(v12 + 16))(v4, v13, v12);
LABEL_13:
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(v7 + 659) != 1)
  {
    return;
  }

  v21 = *(v7 + 48);
  if (v21 & 0x80000000) == 0 || (v21)
  {
    return;
  }

  v22 = v7[3];
  v86 = v7[4];
  v87 = v7[2];
  rect = v7[5];
  v23 = *(a1 + 8);
  v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v24] frame];
  Width = CGRectGetWidth(v96);
  [*&v4[v24] frame];
  Height = CGRectGetHeight(v97);
  v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v83 = v27;
  v28 = *(v27 + v4);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v28 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v84 = a1;
    if (!i)
    {
      break;
    }

    a1 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v30 = *(v28 + 8 * a1 + 32);
      }

      v31 = v30;
      v27 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [v30 frame];
      v101.origin.x = 0.0;
      v101.origin.y = v23;
      v101.size.width = Width;
      v101.size.height = Height;
      if (CGRectIntersectsRect(v98, v101))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++a1;
      if (v27 == i)
      {
        v32 = aBlock[0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  v88 = 0;
  v34 = 0;
  v35 = v22 + v23;
  v36 = INFINITY;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v38 + v39, aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A4Line_pMd);
    if (swift_dynamicCast())
    {
    }

    else
    {
      v40 = v38;
      [v40 frame];
      v42 = v41;
      [v40 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v51 = v42 + CGRectGetHeight(v99) * 0.5;
      v100.size.width = v86;
      v100.origin.x = v87;
      v100.origin.y = v35;
      v100.size.height = rect;
      v52 = vabdd_f64(v51, CGRectGetMidY(v100));
      if (v52 >= v36)
      {
      }

      else
      {

        v36 = v52;
        v88 = v40;
      }
    }

    ++v34;
  }

  while (v33 != v34);
  if (!v88)
  {
LABEL_67:

    return;
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel;
  v53 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  v27 = &OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(v53 + v54, &v93, &_s7LyricsX0A4Line_pSgMd);
    if (*(&v94 + 1))
    {
      outlined init with take of ActionPerforming(&v93, aBlock);
      v55 = v90;
      v56 = v91;
      __swift_project_boxed_opaque_existential_0Tm(aBlock, v90);
      v57 = (*(v56 + 2))(v55, v56);
      v58 = *(v83 + v4);
      if ((v58 & 0xC000000000000001) == 0)
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v57 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v59 = *(v58 + 8 * v57 + 32);
LABEL_53:
          __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
          goto LABEL_56;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }

LABEL_70:

      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_53;
    }
  }

  else
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
  }

  outlined destroy of TaskPriority?(&v93, &_s7LyricsX0A4Line_pSgMd);
  v59 = 0;
LABEL_56:
  type metadata accessor for SyncedLyricsTimestampLabel();
  v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v61 = v60;
  v62 = *&v4[v28];
  *&v4[v28] = v60;
  if (v62)
  {
    v63 = v60;
    [v62 removeFromSuperview];
  }

  else
  {
    v64 = v60;
  }

  v65 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v88 + v65, aBlock);
  v66 = *v27;
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(aBlock, v61 + v66, &_s7LyricsX0A4Line_pSgMd);
  swift_endAccess();
  SyncedLyricsTimestampLabel.line.didset();
  outlined destroy of TaskPriority?(aBlock, &_s7LyricsX0A4Line_pSgMd);
  [v61 setAlpha:0.0];
  SyncedLyricsViewController.updateTimestampLabelFrame()();
  v67 = [v4 view];
  if (!v67)
  {
    goto LABEL_73;
  }

  v68 = v67;

  [v68 addSubview:v61];

  if (v59)
  {
    v69 = v59;
    SyncedLyricsLineView.setFocused(_:animated:)(0, 1);
  }

  SyncedLyricsLineView.setFocused(_:animated:)(1, 1);
  v70 = objc_opt_self();
  v71 = swift_allocObject();
  *(v71 + 16) = v61;
  v91 = partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
  v92 = v71;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  v90 = &block_descriptor_246;
  v72 = _Block_copy(aBlock);
  v73 = v61;

  [v70 animateWithDuration:v72 animations:0.2];
  _Block_release(v72);
  v74 = v88;
  v75 = UIView.untransformedFrame.getter();
  v77 = v76;
  v79 = v78;
  v81 = v80;

  SyncedLyricsViewController.contentOffset(for:)(v75, v77, v79, v81);
  *v84 = 0;
  v84[1] = v82;
}

uint64_t outlined destroy of Lyrics.TextLine(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SyncedLyricsViewController.Mode and conformance SyncedLyricsViewController.Mode()
{
  result = lazy protocol witness table cache variable for type SyncedLyricsViewController.Mode and conformance SyncedLyricsViewController.Mode;
  if (!lazy protocol witness table cache variable for type SyncedLyricsViewController.Mode and conformance SyncedLyricsViewController.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SyncedLyricsViewController.Mode and conformance SyncedLyricsViewController.Mode);
  }

  return result;
}

uint64_t sub_1004B32F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1004B3350(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1004B33A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1004B3418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004B34E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for SyncedLyricsSharingTransitionInfo()
{
  type metadata accessor for Lyrics.TextLine(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIAction(319, &_sSo6UIViewCML_2);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSTextAlignment(319);
      if (v2 <= 0x3F)
      {
        _sSo6CGRectVMa_2(319);
        if (v3 <= 0x3F)
        {
          _sSo17CGAffineTransformVMa_1(319);
          if (v4 <= 0x3F)
          {
            _syycMa_2();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for SyncedLyricsViewController()
{
  type metadata accessor for Lyrics.Translation?(319, &_s7LyricsX0A0C11TranslationVSgML_0, type metadata accessor for Lyrics.Translation);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.Translation?(319, &_s7LyricsX0A0C15TransliterationVSgML_0, type metadata accessor for Lyrics.Transliteration);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Lyrics.Translation?(319, &_s10Foundation4DateVSgML_1, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1004B3918()
{

  return swift_deallocObject();
}

uint64_t sub_1004B39B0()
{

  return swift_deallocObject();
}

uint64_t sub_1004B3A08()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1004B3A5C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1004B3ACC()
{

  return swift_deallocObject();
}

uint64_t sub_1004B3B04()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1004B3B60()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1004B3BB8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1004B3C14()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1004B3C7C()
{

  return swift_deallocObject();
}

uint64_t sub_1004B3CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1004B3D4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return outlined init with copy of ActionPerforming(v3 + v4, a2);
}

uint64_t sub_1004B3DB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1004B3E28()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of Lyrics.Transliteration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Lyrics.TextLine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B3F40()
{

  return swift_deallocObject();
}

id partial apply for closure #2 in SyncedLyricsViewController.startSharing(from:)()
{
  v1 = *(v0 + 16);
  [v1 setHidden:0];

  return [v1 setHighlighted:0];
}

uint64_t sub_1004B3FF8()
{

  return swift_deallocObject();
}

id partial apply for closure #1 in SyncedLyricsViewController.menuHandler(_:)()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  return [*(v1 + v4) setContentOffset:{v2, v3}];
}

uint64_t sub_1004B4098()
{

  return swift_deallocObject();
}

id partial apply for closure #5 in SyncedLyricsViewController.animate(line:to:elapsedTime:tapMode:gap:adjustedContentOffset:)()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1004B4184()
{

  return swift_deallocObject();
}

uint64_t sub_1004B41DC()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1004B4238()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004B4288()
{

  return swift_deallocObject();
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_3(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_332(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t sub_1004B44C8()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4548()
{

  return swift_deallocObject();
}

uint64_t sub_1004B45E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1004B4730(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C8TextLineVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationV4LineVSgMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for SyncedLyricsViewController.LineData()
{
  type metadata accessor for LyricsLine();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.Translation?(319, &lazy cache variable for type metadata for Lyrics.TextLine?, type metadata accessor for Lyrics.TextLine);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Lyrics.Translation?(319, &lazy cache variable for type metadata for Lyrics.Translation.Line?, type metadata accessor for Lyrics.Translation.Line);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for LyricsLine()
{
  result = lazy cache variable for type metadata for LyricsLine;
  if (!lazy cache variable for type metadata for LyricsLine)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LyricsLine);
  }

  return result;
}

void type metadata accessor for Lyrics.Translation?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

char *LineProgressGradientView.__allocating_init(color:featherWidth:direction:frame:)(void *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v16 = &v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  *&v15[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v15[v18] = [objc_allocWithZone(UIView) init];
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = a1;
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = a3;
  v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a2 & 1;
  v22.receiver = v15;
  v22.super_class = v7;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v22, "initWithFrame:", a4, a5, a6, a7);
  [v20 setClipsToBounds:{1, v22.receiver, v22.super_class}];
  [v20 addSubview:*&v20[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v20 addSubview:*&v20[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  LineProgressGradientView.updateDirection()();
  LineProgressGradientView.updateColors()();

  return v20;
}

char *LineProgressGradientView.init(color:featherWidth:direction:frame:)(void *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v15 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  *&v7[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v7[v17] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = a1;
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = a3;
  v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a2 & 1;
  v21.receiver = v7;
  v21.super_class = type metadata accessor for LineProgressGradientView();
  v18 = a1;
  v19 = objc_msgSendSuper2(&v21, "initWithFrame:", a4, a5, a6, a7);
  [v19 setClipsToBounds:{1, v21.receiver, v21.super_class}];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  LineProgressGradientView.updateDirection()();
  LineProgressGradientView.updateColors()();

  return v19;
}

uint64_t LineProgressGradientView.outerPadding.didset(uint64_t result, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  if (v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16])
  {
    if (a3)
    {
      return result;
    }
  }

  else if ((a3 & 1) == 0 && *v4 == *&result && v4[1] == *&a2)
  {
    return result;
  }

  [v3 setClipsToBounds:?];
  v6 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView;
  v7 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView];
  if (v4[2])
  {
    [v7 removeFromSuperview];
    v8 = *&v3[v6];
    *&v3[v6] = 0;
  }

  else
  {
    if (!v7)
    {
      v9 = [objc_allocWithZone(UIView) init];
      [v9 setBackgroundColor:*&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color]];
      [v3 addSubview:v9];
      v10 = *&v3[v6];
      *&v3[v6] = v9;
    }

    [v3 setNeedsLayout];
  }

  *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  return result;
}

Swift::Void __swiftcall LineProgressGradientView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LineProgressGradientView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  LineProgressGradientView.updateSubviewsFrames()();
}

void LineProgressGradientView.updateDirection()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction);
  v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  v3 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:v5];

  v7 = [*(v0 + v2) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, 0.0}];

  LineProgressGradientView.updateSubviewsFrames()();
}

void LineProgressGradientView.updateSubviewsFrames()()
{
  v1 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction;
  if (v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction])
  {
    v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth;
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth];
    v4 = 0.0;
    v5 = v3;
  }

  else
  {
    [v0 bounds];
    Width = CGRectGetWidth(v26);
    v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth;
    v5 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth];
    v4 = Width - v5;
    if (Width - v5 <= 0.0)
    {
      v3 = Width - v5;
    }

    else
    {
      v3 = 0.0;
    }
  }

  v7 = &v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  if (v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
  }

  v9 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView];
  [v0 bounds];
  [v9 setFrame:{v4, -v8, v5, v8 + v8 + CGRectGetHeight(v27)}];

  v10 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  v11 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView];
  [v0 bounds];
  v12 = CGRectGetWidth(v28) - *&v0[v2];
  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  [v0 bounds];
  [v11 setFrame:{v3, 0.0, v13, CGRectGetHeight(v29)}];

  if ((v7[2] & 1) == 0)
  {
    v14 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView];
    if (v14)
    {
      v15 = *v7;
      v16 = v7[1];
      v17 = v0[v1];
      v18 = *&v0[v10];
      v24 = v14;
      [v18 frame];
      if (v17 == 1)
      {
        MaxX = CGRectGetMaxX(*&v19);
      }

      else
      {
        MaxX = CGRectGetMinX(*&v19) - v15;
      }

      [v24 setFrame:{MaxX, -v16, v15, v16 + v16}];
    }
  }
}

id LineProgressGradientView.updateColors()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004F2EF0;
  v4 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color;
  v5 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color) CGColor];
  _sSo10CGColorRefaMa_1(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [*(v0 + v4) colorWithAlphaComponent:0.0];
  v9 = [v8 CGColor];

  *(v3 + 88) = v7;
  *(v3 + 64) = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  v11 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView);
  v12 = *(v0 + v4);

  return [v11 setBackgroundColor:v12];
}

id LineProgressGradientView.GradientView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t lazy protocol witness table accessor for type LineProgressGradientView.Direction and conformance LineProgressGradientView.Direction()
{
  result = lazy protocol witness table cache variable for type LineProgressGradientView.Direction and conformance LineProgressGradientView.Direction;
  if (!lazy protocol witness table cache variable for type LineProgressGradientView.Direction and conformance LineProgressGradientView.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LineProgressGradientView.Direction and conformance LineProgressGradientView.Direction);
  }

  return result;
}

unint64_t type metadata accessor for CAGradientLayer()
{
  result = _sSo15CAGradientLayerCML_0;
  if (!_sSo15CAGradientLayerCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo15CAGradientLayerCML_0);
  }

  return result;
}

void specialized LineProgressGradientView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView) = 0;
  v1 = v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  static vDSP.formWindow<A>(usingSequence:result:isHalfWindow:)();
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

uint64_t ArtworkImage.init(_:height:)()
{
  return ArtworkImage.init(_:height:)();
}

{
  return ArtworkImage.init(_:height:)();
}

Swift::UInt_optional __swiftcall _UnsafeBitSet.Iterator.next()()
{
  v0 = _UnsafeBitSet.Iterator.next()();
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t Path.init(_:)()
{
  return Path.init(_:)();
}

{
  return Path.init(_:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t static PartialMusicProperty<A>.offers.getter()
{
  return static PartialMusicProperty<A>.offers.getter();
}

{
  return static PartialMusicProperty<A>.offers.getter();
}

uint64_t static PartialMusicProperty<A>.albums.getter()
{
  return static PartialMusicProperty<A>.albums.getter();
}

{
  return static PartialMusicProperty<A>.albums.getter();
}

uint64_t static PartialMusicProperty<A>.tracks.getter()
{
  return static PartialMusicProperty<A>.tracks.getter();
}

{
  return static PartialMusicProperty<A>.tracks.getter();
}

uint64_t Artwork.init(_:)()
{
  return Artwork.init(_:)();
}

{
  return Artwork.init(_:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return String.init<A>(describing:)();
}

{
  return String.init<A>(describing:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

{
  String.append(_:)(a1._countAndFlagsBits, a1._object);
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t Sequence.flatMap<A>(_:)()
{
  return Sequence.flatMap<A>(_:)();
}

{
  return Sequence.flatMap<A>(_:)();
}

__C::_NSRange_optional __swiftcall _NSRange.intersection(_:)(__C::_NSRange a1)
{
  v1 = _NSRange.intersection(_:)(a1.location, a1.length);
  result.value.length = v2;
  result.value.location = v1;
  result.is_nil = v3;
  return result;
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = Substring.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v0 = BinaryInteger.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  StringRange = _CTLineGetStringRange(line);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}