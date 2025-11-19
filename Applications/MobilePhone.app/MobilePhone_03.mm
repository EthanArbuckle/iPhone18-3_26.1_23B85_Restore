void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MobilePhone7Message_p_Tt1g5Tm(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1);
    outlined consume of Set<CHHandle>.Iterator._Variant();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void *_ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC11MobilePhone7Message_p_Tt0g5Tm(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
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
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MobilePhone7Message_p_Tt1g5Tm(v5, 0);
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

uint64_t specialized OrderedSet._appendNew(_:in:)(void *a1)
{
  v2 = a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v4 = *(v1[1] + 16);
  if (*v1)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v4)
    {
      result = swift_isUniquelyReferenced_native();
      v5 = *v1;
      if ((result & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        v6 = _HashTable.copy()();

        *v1 = v6;
        v5 = v6;
      }

      if (v5)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v4 < 0x10)
  {
    return result;
  }

  return specialized OrderedSet._regenerateHashTable()();
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  if (v2 || *(v3 + 16) >= 0x10uLL)
  {
    v5 = static _HashTable.scale(forCapacity:)();
    if (v2 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v2;
    }

    v4 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy11MobilePhone9MessageIDCG_Tt2g5(v3, v6, 0, v2);
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy11MobilePhone9MessageIDCG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, Swift::Int *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *a3;
        v7 = *(v9 + 8 * v5);
        result = NSObject._rawHashValue(seed:)(v6);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
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

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    v7 = _HashTable.BucketIterator.currentValue.getter();
    if ((v8 & 1) == 0)
    {
      type metadata accessor for MessageID(0);
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v7 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
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
    v13 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy11MobilePhone9MessageIDCG_Tt2g5(v9, v10, 0, v8);

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

void specialized OrderedSet._removeExistingMember(at:in:)(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_15:
    specialized ContiguousArray.remove(at:)(a1);
    return;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    specialized ContiguousArray.remove(at:)(a1);
    specialized OrderedSet._regenerateHashTable()();
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = _HashTable.copy()();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(a1, a1 + 1, v4, (v9 + 16));

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t specialized ContiguousArray.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    *v1 = result;
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
    specialized ContiguousArray._endMutation()();
    return v8;
  }

  return result;
}

void specialized _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(uint64_t a1, Swift::Int *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v19)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_25:
        __break(1u);
        return;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(a4 + 8);
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_23;
      }

      v11 = *a2;
      v12 = *(v10 + 8 * v8 + 32);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = 1 << *a2;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_24;
      }

      v15 = (v14 - 1) & v13;
      if (v6 >= v7)
      {
        if (v15 >= v7 && v6 >= v15)
        {
LABEL_18:
          _HashTable.BucketIterator.currentValue.getter();
          v6 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v15 >= v7 || v6 >= v15)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.UnsafeHandle.subscript.setter();
}

void specialized _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_58;
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
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (a1)
        {
          v11 = 0;
          while (1)
          {
            v12 = *a4;
            v13 = *(v10 + 32 + 8 * v11);
            NSObject._rawHashValue(seed:)(v12);
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v14 = _HashTable.BucketIterator.currentValue.getter();
                if ((v15 & 1) == 0 && v14 == v11)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            _HashTable.BucketIterator.currentValue.setter();

            if (v11 == a1)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v21 = _HashTable.BucketIterator.currentValue.getter();
      if ((v22 & 1) != 0 || v21 >= a1)
      {
LABEL_33:
        _HashTable.BucketIterator.advance()();
LABEL_18:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v20 = (v19 & (((v16 >> 6) - v5) >> 63)) + (v16 >> 6) - v5;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v5))
      {
        _HashTable.BucketIterator.currentValue.setter();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v23 = _HashTable.BucketIterator.currentValue.getter();
      if ((v24 & 1) == 0 && v23 >= v4)
      {
        if (__OFSUB__(v23, v5))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v4 = a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v9 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v9 != v4)
    {
      do
      {
        v25 = *a4;
        v26 = *(a3 + 32 + 8 * v4);
        NSObject._rawHashValue(seed:)(v25);
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v27 = _HashTable.BucketIterator.currentValue.getter();
            if ((v28 & 1) == 0 && v27 == v4)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      while (++v4 != v9);
    }
  }
}

uint64_t specialized closure #1 in OrderedDictionary.sort(by:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  specialized _copySequenceToContiguousArray<A>(_:)(a1, a2, specialized closure #1 in closure #1 in OrderedDictionary.sort(by:));
  v7 = v6;
  v8 = variable initialization expression of PHCarPlayFavoritesTableViewCell.contact();
  v9 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy11MobilePhone9MessageIDCG_Tt2g5(v7, 0, 1, v8);
  if (*(v7 + 16) <= 0xFuLL)
  {

    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v7;

  specialized _copySequenceToContiguousArray<A>(_:)(a1, a2, specialized closure #2 in closure #1 in OrderedDictionary.sort(by:));
  a3[2] = v10;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    v16 = a4;
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v62 = (v16 + 16 * v12);
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_51;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v59 = v9;
      v19 = v7;
      v20 = *v8;
      v21 = *(v8 + 1);
      v22 = v8;
      v23 = *v16;
      v24 = *(v16 + 8);
      v25 = v16;
      v67 = v20;
      v65 = v23;
      v66 = v21;
      v64 = v24;
      v26 = v20;
      swift_unknownObjectRetain();
      v27 = v23;
      swift_unknownObjectRetain();
      v28 = a5(&v67, &v66, &v65, &v64);
      if (v5)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v51 = &v62[-v25 + 15];
        if (&v62[-v25] >= 0)
        {
          v51 = &v62[-v25];
        }

        v49 = v59;
        if (v59 < v25 || v59 >= v25 + (v51 & 0xFFFFFFFFFFFFFFF0) || v59 != v25)
        {
          v52 = 16 * (v51 >> 4);
          v50 = v25;
          goto LABEL_57;
        }

        return 1;
      }

      v29 = v28;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v29)
      {
        break;
      }

      v17 = v25;
      v16 = v25 + 16;
      v8 = v22;
      v18 = v59;
      v7 = v19;
      if (v59 != v25)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 = v18 + 16;
      if (v16 >= v62)
      {
        goto LABEL_10;
      }
    }

    v30 = v22;
    v17 = v22;
    v8 = v22 + 16;
    v18 = v59;
    v7 = v19;
    v16 = v25;
    if (v59 == v30)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v18 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v15] <= a4)
  {
    v31 = a4;
    memmove(a4, __src, 16 * v15);
    a4 = v31;
  }

  v62 = (a4 + 16 * v15);
  v32 = v13 < 16;
  v16 = a4;
  if (v32 || v8 <= v9)
  {
LABEL_51:
    v53 = &v62[-v16 + 15];
    if (&v62[-v16] >= 0)
    {
      v53 = &v62[-v16];
    }

    if (v8 < v16 || v8 >= v16 + (v53 & 0xFFFFFFFFFFFFFFF0) || v8 != v16)
    {
      v52 = 16 * (v53 >> 4);
      v49 = v8;
      v50 = v16;
LABEL_57:
      memmove(v49, v50, v52);
      return 1;
    }

    return 1;
  }

  v33 = -a4;
  v57 = a4;
  v60 = v9;
  v55 = -a4;
LABEL_25:
  v63 = v6;
  v56 = v8 - 16;
  v34 = v62;
  v35 = &v62[v33];
  v36 = v7 - 16;
  v58 = v8;
  while (1)
  {
    v37 = v36;
    v38 = *(v34 - 2);
    v39 = *(v34 - 1);
    v34 -= 16;
    v40 = *(v8 - 2);
    v41 = *(v8 - 1);
    v67 = v38;
    v65 = v40;
    v66 = v39;
    v64 = v41;
    v42 = v38;
    swift_unknownObjectRetain();
    v43 = v40;
    swift_unknownObjectRetain();
    v44 = a5(&v67, &v66, &v65, &v64);
    if (v63)
    {
      break;
    }

    v45 = v44;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v7 = v37;
    v46 = v37 + 16;
    if (v45)
    {
      if (v46 != v58)
      {
        *v37 = *v56;
      }

      v16 = v57;
      v6 = 0;
      if (v62 <= v57 || (v8 = v56, v33 = v55, v56 <= v60))
      {
        v8 = v56;
        goto LABEL_51;
      }

      goto LABEL_25;
    }

    v8 = v58;
    if (v46 != v62)
    {
      *v37 = *v34;
    }

    v35 -= 16;
    v36 = v37 - 16;
    v62 = v34;
    if (v34 <= v57)
    {
      v62 = v34;
      v16 = v57;
      goto LABEL_51;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v35 >= 0)
  {
    v47 = v35;
  }

  else
  {
    v47 = v35 + 15;
  }

  v48 = v47 >> 4;
  v50 = v57;
  v49 = v58;
  if (v58 < v57 || v58 >= &v57[v47 & 0xFFFFFFFFFFFFFFF0])
  {
    v52 = 16 * v48;
    goto LABEL_57;
  }

  if (v58 != v57)
  {
    memmove(v58, v57, 16 * v48);
  }

  return 1;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
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

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for MessageID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11MobilePhone9MessageIDC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMd, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMR, type metadata accessor for MessageID, specialized _NativeSet.resize(capacity:));
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MessageID(0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native, specialized _NativeSet.resize(capacity:), type metadata accessor for MessageID, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMd);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

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

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for CHHandle();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11MobilePhone9MessageIDC_Tt1g5Tm(v7, result + 1, &_ss11_SetStorageCySo8CHHandleCGMd, &_ss11_SetStorageCySo8CHHandleCGMR, type metadata accessor for CHHandle, specialized _NativeSet.resize(capacity:));
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for CHHandle();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native, specialized _NativeSet.resize(capacity:), type metadata accessor for CHHandle, &_ss11_SetStorageCySo8CHHandleCGMd);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11MobilePhone9MessageIDC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          a6(v15 + 1);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

void *specialized _NativeSet.subtracting<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = _CocoaArrayWrapper.endIndex.getter();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = v2 + 7;
      while (1)
      {
        if (v50)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = NSObject._rawHashValue(seed:)(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for MessageID(0);
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        __chkstk_darwin(v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = specialized _NativeSet.extractSubset(using:count:)(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = NSObject._rawHashValue(seed:)(v2[5]);
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(v24[6] + 8 * v26);
              v31 = static NSObject.== infix(_:_:)();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      specialized closure #1 in _NativeSet.subtracting<A>(_:)(v39, v42, v37, v8, v53);
      v2 = v40;
    }

LABEL_40:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for MessageID(0);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
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

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t), void (*a5)(void), uint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a5;
    a4(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a6);
      goto LABEL_12;
    }

    v11 = a5;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a6);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
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

{
  v1 = v0;
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
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

{
  v1 = v0;
  v32 = type metadata accessor for Handle();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
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

id specialized closure #1 in closure #1 in OrderedDictionary.sort(by:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v4 = a1;
  if (!a2)
  {
    v6 = _swiftEmptyArrayStorage;
    v11 = 0;
    goto LABEL_31;
  }

  if (a2 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[3];
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 25;
    }

    v9 = (2 * (v8 >> 3)) | 1;
    v6[2] = a2;
    v6[3] = v9;
    if (v4)
    {
LABEL_6:
      if ((a2 & 0x8000000000000000) == 0)
      {
        v10 = v4 + 16 * a2;
        if (v4)
        {
          goto LABEL_8;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (a2 < 0)
  {
    goto LABEL_41;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_8:
  v11 = (v9 >> 1) - a2;
  v12 = a2 - 1;
  v13 = v6 + 5;
  if (v4 == v10)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = *(v4 + 8);
      v36 = *v4;
      v37 = v14;
      v15 = v36;
      swift_unknownObjectRetain();
      a3(&v35, &v36);
      swift_unknownObjectRelease();

      *(v13 - 1) = v35;
      if (!v12)
      {
        break;
      }

      --v12;
      ++v13;
      v4 += 16;
      if (v4 == v10)
      {
        goto LABEL_11;
      }
    }
  }

  v16 = v4 + 16;
  if (v16 != v10)
  {
    v34 = a3;
    do
    {
      v17 = *(v16 + 8);
      v36 = *v16;
      v37 = v17;
      v18 = v36;
      swift_unknownObjectRetain();
      v34(&v35, &v36);
      swift_unknownObjectRelease();

      v19 = v35;
      if (!v11)
      {
        v20 = v6[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v23 = swift_allocObject();
        v24 = _swift_stdlib_malloc_size(v23);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 25;
        }

        v26 = v25 >> 3;
        v23[2] = v22;
        v23[3] = (2 * (v25 >> 3)) | 1;
        v27 = (v23 + 4);
        v28 = v6[3] >> 1;
        if (v6[2])
        {
          v29 = v6 + 4;
          if (v23 != v6 || v27 >= v29 + 8 * v28)
          {
            memmove(v23 + 4, v29, 8 * v28);
          }

          v6[2] = 0;
        }

        v13 = (v27 + 8 * v28);
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v6 = v23;
      }

      v30 = __OFSUB__(v11--, 1);
      if (v30)
      {
        goto LABEL_39;
      }

      v16 += 16;
      *v13++ = v19;
    }

    while (v16 != v10);
  }

LABEL_31:
  v31 = v6[3];
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v30 = __OFSUB__(v32, v11);
  v33 = v32 - v11;
  if (v30)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v6[2] = v33;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v24 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(a1 + 32 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      swift_beginAccess();
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = v9 + 32;
      v12 = *(v9 + 16);
      if (v10)
      {

        v13 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v7, v11, v12, (v10 + 16));
        v15 = v14;
        v17 = v16;

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v12)
      {
        type metadata accessor for MessageID(0);
        v13 = 0;
        while (1)
        {
          v18 = *(v11 + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_4;
          }
        }

        v17 = 0;
LABEL_19:
        specialized OrderedSet._removeExistingMember(at:in:)(v13, v17);

        specialized ContiguousArray.remove(at:)(v13);
        swift_endAccess();
        swift_unknownObjectRelease();
        v21 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_5;
      }

LABEL_4:
      swift_endAccess();
LABEL_5:

      if (v5 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

void _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC11MobilePhone9MessageIDC_AH0L0_pSayAJ_AhK_ptGTt0g5Tf4g_n(uint64_t a1)
{
  v21 = 0;
  v22 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC11MobilePhone7Message_p_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC11MobilePhone7Message_p_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0);
  specialized ContiguousArray.reserveCapacity(_:)();
  v20 = v2;
  if (!v2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    v7 = *(a1 + 32 + 16 * v3);
    v8 = (v22 + 4);
    v9 = v22[2];
    if (!v21)
    {
      break;
    }

    v10 = v7;
    swift_unknownObjectRetain();

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v10, v8, v9, (v21 + 16));
    LOBYTE(v10) = v11;

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_15:
    v15 = v7;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v16 = v22[2];
    if (v21)
    {
      swift_beginAccess();
      if (static _HashTable.maximumCapacity(forScale:)() >= v16)
      {
        v18 = v21;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v19 = _HashTable.copy()();

          v21 = v19;
          v18 = v19;
        }

        if (!v18)
        {
          goto LABEL_28;
        }

        _HashTable.UnsafeHandle.subscript.setter();
      }

      else
      {
        v17 = *(v21 + 24) & 0x3FLL;
        if (v16 > 0xF || v17)
        {
          goto LABEL_3;
        }

        v21 = 0;
      }
    }

    else if (v16 > 0xF)
    {
      v17 = 0;
LABEL_3:
      v4 = static _HashTable.scale(forCapacity:)();
      if (v17 <= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v17;
      }

      v6 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy11MobilePhone9MessageIDCG_Tt2g5(v22, v5, 0, v17);

      v21 = v6;
    }

    ++v3;
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_unknownObjectRelease();

    if (v3 == v20)
    {
      return;
    }
  }

  v12 = v7;
  swift_unknownObjectRetain();
  if (!v9)
  {
    goto LABEL_15;
  }

  type metadata accessor for MessageID(0);
  while (1)
  {
    v13 = *v8;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    ++v8;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  __break(1u);
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone9MessageIDC3key_AC0F0_p5valuetGMd);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 17;
    }

    v9 = v8 >> 4;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (a1 + 32);
      v12 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v13 = v4 - 1;
      v14 = 4;
      while (1)
      {
        v15 = &v6[v14];
        v9 = *v11;
        v16 = *v12;
        *v15 = *v11;
        v15[1] = v16;
        if (!v13)
        {
          break;
        }

        v17 = v9;
        swift_unknownObjectRetain();
        v14 += 2;
        ++v11;
        ++v12;
        --v13;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }

    v18 = v9;
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  v20 = v6[3];
  if (v20 < 2)
  {
    return v6;
  }

  v21 = v20 >> 1;
  v22 = __OFSUB__(v21, v2);
  v23 = v21 - v2;
  if (!v22)
  {
    v6[2] = v23;
    return v6;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_90:
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v9 = a4;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v8)
    {
      v25 = v10 + 1;
    }

    else
    {
      v109 = v8;
      v13 = *v7;
      v14 = *v7 + 16 * (v10 + 1);
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v13 + 16 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v115 = v16;
      v116 = v15;
      v113 = v19;
      v114 = v18;
      v20 = v15;
      swift_unknownObjectRetain();
      v10 = v18;
      swift_unknownObjectRetain();
      v107 = a5(&v116, &v115, &v114, &v113);
      if (v6)
      {
LABEL_101:

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v21 = v12;
      v22 = v12 + 2;
      v103 = v21;
      v23 = 16 * v21;
      v24 = (v13 + 16 * v21 + 24);
      while (1)
      {
        v25 = v109;
        if (v109 == v22)
        {
          break;
        }

        v26 = v24[1];
        v27 = *(v24 - 1);
        v28 = *v24;
        v115 = v24[2];
        v116 = v26;
        v113 = v28;
        v114 = v27;
        v29 = v26;
        swift_unknownObjectRetain();
        v10 = v27;
        swift_unknownObjectRetain();
        LODWORD(v27) = a5(&v116, &v115, &v114, &v113);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        ++v22;
        v24 += 2;
        if ((v107 ^ v27))
        {
          v25 = v22 - 1;
          break;
        }
      }

      v7 = a3;
      v12 = v103;
      v9 = a4;
      if (v107)
      {
        if (v25 < v103)
        {
          goto LABEL_124;
        }

        if (v103 < v25)
        {
          v30 = 16 * v25 - 16;
          v31 = v25;
          v32 = v103;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v34 = *(v33 + v23);
              *(v33 + v23) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 16;
            v23 += 16;
          }

          while (v32 < v31);
        }
      }

      v6 = 0;
    }

    v35 = v7[1];
    if (v25 >= v35)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v25, v12))
    {
      goto LABEL_120;
    }

    if (v25 - v12 >= v9)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v12, v9))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v12 + v9 >= v35)
    {
      v36 = v7[1];
    }

    else
    {
      v36 = v12 + v9;
    }

    if (v36 < v12)
    {
      goto LABEL_123;
    }

    if (v25 == v36)
    {
LABEL_29:
      v37 = v25;
      if (v25 < v12)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v99 = v11;
      v100 = v36;
      v112 = v6;
      v85 = *v7;
      v86 = *v7 + 16 * v25 - 16;
      v104 = v12;
      v87 = v12 - v25;
      do
      {
        v108 = v86;
        v110 = v25;
        v88 = *(v85 + 16 * v25);
        v101 = v87;
        do
        {
          v89 = *v86;
          v90 = *(v86 + 8);
          v115 = *(&v88 + 1);
          v116 = v88;
          v113 = v90;
          v114 = v89;
          v20 = v88;
          swift_unknownObjectRetain();
          v10 = v89;
          swift_unknownObjectRetain();
          v91 = a5(&v116, &v115, &v114, &v113);
          if (v112)
          {
            goto LABEL_101;
          }

          v92 = v91;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v92 & 1) == 0)
          {
            break;
          }

          if (!v85)
          {
            goto LABEL_126;
          }

          v93 = *v86;
          v88 = *(v86 + 16);
          *v86 = v88;
          *(v86 + 16) = v93;
          v86 -= 16;
        }

        while (!__CFADD__(v87++, 1));
        v25 = v110 + 1;
        v86 = v108 + 16;
        v37 = v100;
        v87 = v101 - 1;
      }

      while (v110 + 1 != v100);
      v6 = 0;
      v7 = a3;
      v12 = v104;
      v11 = v99;
      if (v100 < v104)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v39 = *(v11 + 2);
    v38 = *(v11 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v11);
    }

    *(v11 + 2) = v40;
    v41 = &v11[16 * v39];
    *(v41 + 4) = v12;
    *(v41 + 5) = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v10 = v37;
    if (v39)
    {
      break;
    }

LABEL_3:
    v8 = v7[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    if (v40 >= 4)
    {
      v48 = &v11[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = &v11[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = &v11[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_118;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v40 == 3)
    {
      v44 = *(v11 + 4);
      v45 = *(v11 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_49:
      if (v47)
      {
        goto LABEL_108;
      }

      v60 = &v11[16 * v40];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v66 = &v11[16 * v43 + 32];
      v68 = *v66;
      v67 = *(v66 + 1);
      v54 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v54)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v64, v69))
      {
        goto LABEL_115;
      }

      if (v64 + v69 >= v46)
      {
        if (v46 < v69)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v70 = &v11[16 * v40];
    v72 = *v70;
    v71 = *(v70 + 1);
    v54 = __OFSUB__(v71, v72);
    v64 = v71 - v72;
    v65 = v54;
LABEL_63:
    if (v65)
    {
      goto LABEL_110;
    }

    v73 = &v11[16 * v43];
    v75 = *(v73 + 4);
    v74 = *(v73 + 5);
    v54 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v54)
    {
      goto LABEL_113;
    }

    if (v76 < v64)
    {
      goto LABEL_3;
    }

LABEL_70:
    v81 = v43 - 1;
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_125;
    }

    v82 = *&v11[16 * v81 + 32];
    v83 = *&v11[16 * v43 + 40];
    specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v82), (*v7 + 16 * *&v11[16 * v43 + 32]), (*v7 + 16 * v83), v42, a5);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v83 < v82)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
    }

    if (v81 >= *(v11 + 2))
    {
      goto LABEL_105;
    }

    v84 = &v11[16 * v81];
    *(v84 + 4) = v82;
    *(v84 + 5) = v83;
    v117 = v11;
    specialized Array.remove(at:)(v43);
    v11 = v117;
    v40 = *(v117 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
LABEL_92:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v96 = *&v11[16 * v95];
      v97 = *&v11[16 * v95 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v10, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      }

      if (v95 - 2 >= *(v11 + 2))
      {
        goto LABEL_117;
      }

      v98 = &v11[16 * v95];
      *v98 = v96;
      *(v98 + 1) = v97;
      v117 = v11;
      specialized Array.remove(at:)(v95 - 1);
      v11 = v117;
      v95 = *(v117 + 2);
      if (v95 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 16 * a3 - 16;
    v9 = a1 - a3;
LABEL_3:
    v20 = v8;
    v21 = a3;
    v10 = *(v7 + 16 * a3);
    v19 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = *(v8 + 8);
      v26 = *(&v10 + 1);
      v27 = v10;
      v24 = v12;
      v25 = v11;
      v23 = v10;
      swift_unknownObjectRetain();
      v13 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = a5(&v27, &v26, &v25, &v24);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v21 + 1;
        v8 = v20 + 16;
        v9 = v19 - 1;
        if (v21 + 1 != a2)
        {
          goto LABEL_3;
        }

        return;
      }

      if (!v7)
      {
        __break(1u);
        return;
      }

      v16 = *v8;
      v10 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 16) = v16;
      v8 -= 16;
      v17 = __CFADD__(v9++, 1);
      v6 = 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9MessageIDC3key_AA0C0_p5valuetMd);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }
}

void specialized MutableCollection<>.sort(by:)(void **a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = v4[2];
  v6[0] = (v4 + 4);
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, a2);
  *a1 = v4;
}

void *specialized CachedVoicemailManager.Cache.__allocating_init(voicemails:shouldSort:)(unint64_t a1, char a2)
{
  LOBYTE(v5) = a2;
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_115;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = _swiftEmptyArrayStorage;
    v106 = v6;
    v105 = v5;
    if (i)
    {
      v111[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_63;
      }

      v2 = 0;
      v8 = v111[0];
      v9 = v6 & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(v6 + 8 * v2 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v5 identifier];
        v111[0] = v8;
        v4 = v8[2];
        v11 = v8[3];
        if (v4 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v4 + 1, 1);
          v10 = v13;
          v6 = v106;
          v8 = v111[0];
        }

        ++v2;
        v8[2] = v4 + 1;
        v12 = &v8[2 * v4];
        v12[4] = v10;
        v12[5] = v5;
      }

      while (i != v2);
    }

    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MobilePhone9MessageIDC_SayAC0E0_pGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v110 = v8[2];
    if (v110)
    {
      break;
    }

LABEL_44:
    v4 = v3 + 64;
    v45 = 1 << *(v3 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v6 = v46 & *(v3 + 64);
    v47 = (v45 + 63) >> 6;
    v2 = v3;

    v48 = 0;
    v110 = 0;
    v3 = _swiftEmptyArrayStorage;
    while (v6)
    {
LABEL_52:
      v50 = (v48 << 9) | (8 * __clz(__rbit64(v6)));
      v5 = *(*(v2 + 48) + v50);
      v51 = *(*(v2 + 56) + v50);
      if (v51 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if (v52 > 1)
      {
        v108 = v5;

        v5 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        }

        v54 = *(v3 + 16);
        v53 = *(v3 + 24);
        if (v54 >= v53 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v3);
        }

        *(v3 + 16) = v54 + 1;
        v55 = v3 + 16 * v54;
        *(v55 + 32) = v108;
        *(v55 + 40) = v51;
        v8 = v5;
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_109;
      }

      if (v49 >= v47)
      {
        break;
      }

      v6 = *(v4 + 8 * v49);
      ++v48;
      if (v6)
      {
        v48 = v49;
        goto LABEL_52;
      }
    }

    if (!*(v3 + 16))
    {

      if (one-time initialization token for logger == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_119;
    }

    if (one-time initialization token for logger != -1)
    {
      goto LABEL_117;
    }

LABEL_63:
    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, logger);

    v57 = Logger.logObject.getter();
    LOBYTE(v5) = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v57, v5))
    {
      v107 = v5;
      v58 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111[0] = v104;
      *v58 = 136315394;
      v59 = *(v3 + 16);
      v109 = v58;
      if (v59)
      {
        v112 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v60 = (v3 + 32);
        v61 = v59;
        do
        {
          v62 = *v60;
          v60 += 2;
          v63 = v62;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v61;
        }

        while (v61);
        v58 = v109;
      }

      type metadata accessor for MessageID(0);
      v68 = Array.description.getter();
      v6 = v69;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v6, v111);

      *(v58 + 4) = v70;
      *(v58 + 12) = 2080;
      if (v59)
      {
        v103 = v57;
        v112 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
        v71 = 40;
        v72 = v112;
        do
        {
          v73 = *(v3 + v71);
          v112 = v72;
          v75 = v72[2];
          v74 = v72[3];
          v6 = v75 + 1;

          if (v75 >= v74 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
            v72 = v112;
          }

          v72[2] = v6;
          v72[v75 + 4] = v73;
          v71 += 16;
          --v59;
        }

        while (v59);

        v57 = v103;
        v58 = v109;
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone7Message_pGMd);
      v76 = Array.description.getter();
      v78 = v77;

      v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v111);

      *(v58 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v57, v107, "CachedVoicemailManager.Cache.init(voicemails:) with duplicate keys: %s, voicemails: %s", v58, 0x16u);
      LOBYTE(v5) = v104;
      swift_arrayDestroy();
    }

    else
    {
    }

    v79 = 1 << *(v2 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v3 = v80 & *(v2 + 64);
    v81 = (v79 + 63) >> 6;

    v82 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v3)
    {
LABEL_89:
      v84 = (v82 << 9) | (8 * __clz(__rbit64(v3)));
      v6 = *(*(v2 + 48) + v84);
      v85 = *(*(v2 + 56) + v84);
      if (v85 >> 62)
      {
        v86 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 &= v3 - 1;
      if (v86)
      {
        if ((v85 & 0xC000000000000001) != 0)
        {
          v92 = v6;

          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_121;
          }

          v87 = *(v85 + 32);
          v88 = v6;
          swift_unknownObjectRetain();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
        }

        v90 = v8[2];
        v89 = v8[3];
        v5 = v90 + 1;
        if (v90 >= v89 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v8);
        }

        v8[2] = v5;
        v91 = &v8[2 * v90];
        v91[4] = v6;
        v91[5] = v87;
      }
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v81)
      {

        while (1)
        {
          _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC11MobilePhone9MessageIDC_AH0L0_pSayAJ_AhK_ptGTt0g5Tf4g_n(v8);
          v94 = v93;
          v96 = v95;
          v98 = v97;

          type metadata accessor for CachedVoicemailManager.Cache();
          result = swift_allocObject();
          result[2] = v94;
          v100 = result + 2;
          result[3] = v96;
          result[4] = v98;
          if ((v105 & 1) == 0)
          {
            return result;
          }

          v101 = result;
          swift_beginAccess();
          v112 = specialized _copySequenceToContiguousArray<A>(_:)(v96, v98);
          specialized MutableCollection<>.sort(by:)(&v112, closure #1 in CachedVoicemailManager.Cache.sort());
          if (v110)
          {
            goto LABEL_122;
          }

          v102 = v112[2];
          if (v102 == *(v98 + 16))
          {
            specialized closure #1 in OrderedDictionary.sort(by:)((v112 + 4), v102, v100);

            swift_endAccess();
            return v101;
          }

          __break(1u);
LABEL_119:
          swift_once();
LABEL_69:
          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, logger);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "CachedVoicemailManager.Cache.init(voicemails:) without duplicate keys", v67, 2u);
          }
        }
      }

      v3 = *(v4 + 8 * v83);
      ++v82;
      if (v3)
      {
        v82 = v83;
        goto LABEL_89;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    ;
  }

  v14 = 0;
  v15 = v8 + 5;
  while (1)
  {
    if (v14 >= v8[2])
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v4 = *v15;
    v17 = *(v3 + 16);
    v5 = *(v15 - 1);
    swift_unknownObjectRetain_n();
    v18 = v5;
    v6 = v18;
    if (v17)
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v20)
      {
        v5 = *(*(v3 + 56) + 8 * v19);
        v111[0] = v5;
        swift_unknownObjectRetain();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = v3;
        if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = v111[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v2;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
        v24 = *(v2 + 16);
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_113;
        }

        LOBYTE(v5) = v23;
        if (*(v2 + 24) >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v22;
            specialized _NativeDictionary.copy()();
            v22 = v42;
            v40 = v112;
            if (v5)
            {
              goto LABEL_37;
            }

            goto LABEL_41;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
          v22 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
          if ((v5 & 1) != (v28 & 1))
          {
            goto LABEL_121;
          }
        }

        v40 = v112;
        if (v5)
        {
LABEL_37:
          v41 = v40[7];
          v5 = *(v41 + 8 * v22);
          *(v41 + 8 * v22) = v3;
          swift_unknownObjectRelease();

          v3 = v40;
LABEL_43:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

LABEL_41:
        v40[(v22 >> 6) + 8] |= 1 << v22;
        *(v40[6] + 8 * v22) = v6;
        *(v40[7] + 8 * v22) = v3;
        v43 = v40[2];
        v26 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v26)
        {
          goto LABEL_114;
        }

        v3 = v40;
        v40[2] = v44;

        swift_unknownObjectRelease();
        goto LABEL_43;
      }
    }

    v2 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100209A80;
    *(v29 + 32) = v4;
    v30 = v3;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v111[0] = v30;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_111;
    }

    LOBYTE(v5) = v31;
    if (*(v30 + 24) < v35)
    {
      break;
    }

    if (v3)
    {
      v3 = v111[0];
      if ((v31 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v3 = v111[0];
      if ((v5 & 1) == 0)
      {
LABEL_33:
        *(v3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(*(v3 + 48) + 8 * v32) = v6;
        *(*(v3 + 56) + 8 * v32) = v29;
        v38 = *(v3 + 16);
        v26 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v26)
        {
          goto LABEL_112;
        }

        *(v3 + 16) = v39;
        swift_unknownObjectRelease();

        goto LABEL_15;
      }
    }

LABEL_14:
    v16 = *(v3 + 56);
    v5 = *(v16 + 8 * v32);
    *(v16 + 8 * v32) = v29;
    swift_unknownObjectRelease();

LABEL_15:
    v8 = v2;
LABEL_16:
    ++v14;
    v15 += 2;
    if (v110 == v14)
    {
      goto LABEL_44;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v3);
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if ((v5 & 1) == (v37 & 1))
  {
    v32 = v36;
    v3 = v111[0];
    if ((v5 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_14;
  }

LABEL_121:
  type metadata accessor for MessageID(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_122:

  __break(1u);
  return result;
}

uint64_t sub_1000FD5CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FD614()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FD678@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

char *sub_1000FD6FC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySiGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t get_enum_tag_for_layout_string_11MobilePhone22CachedVoicemailManagerC5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for CachedVoicemailManager.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CachedVoicemailManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for CachedVoicemailManager.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t get_enum_tag_for_layout_string_11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t getEnumTagSinglePayload for CachedVoicemailManager.Cache.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CachedVoicemailManager.Cache.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for CachedVoicemailManager.Cache.State(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1000FD944()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in CachedVoicemailManager.message(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in CachedVoicemailManager.message(for:)(v2, v3, v4);
}

uint64_t sub_1000FDA44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in CachedVoicemailManager.fetchMessages()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in CachedVoicemailManager.fetchMessages()(v2, v3);
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

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11MobilePhone9MessageIDC_SayAFGTt0g5Tf4g_nTm(unint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, void (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  a2(0);
  while (1)
  {
    lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(a3, a4);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v11 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      a2 = v12;
      v13 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v12);

      ++v11;
      if (v13 == a3)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v14 = a2;
    _CocoaArrayWrapper.endIndex.getter();
    v14(0);
  }

  a4 = result;
  a3 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t type metadata accessor for CHHandle()
{
  result = lazy cache variable for type metadata for CHHandle;
  if (!lazy cache variable for type metadata for CHHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CHHandle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PHVoicemailNavigationController.startObservingPreferences()()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (static Defaults.isInternalInstall)
    {
      v2 = objc_allocWithZone(NSUserDefaults);

      v3 = [v2 init];
      v4 = type metadata accessor for Defaults.Observation();
      v5 = objc_allocWithZone(v4);
      v6 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_key];
      *v6 = 0xD00000000000001CLL;
      *(v6 + 1) = 0x80000001002405F0;
      *&v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_userDefault] = v3;
      v7 = &v5[OBJC_IVAR____TtCC11MobilePhone8Defaults11Observation_onChange];
      *v7 = partial apply for closure #1 in PHVoicemailNavigationController.startObservingPreferences();
      v7[1] = v1;
      v13.receiver = v5;
      v13.super_class = v4;
      v8 = v3;

      v9 = objc_msgSendSuper2(&v13, "init");
      v10 = String._bridgeToObjectiveC()();
      [v8 addObserver:v9 forKeyPath:v10 options:0 context:{0, v13.receiver, v13.super_class}];

      v11 = [v0 observations];
      [v11 insertObject:v9 atIndex:0];
    }

    else
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v12 = 0u;
      *(v12 + 16) = 0u;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0;
      *(v12 + 72) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1000FE098()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in PHVoicemailNavigationController.startObservingPreferences()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _updateUIState];
  }
}

Swift::Void __swiftcall PHVoicemailNavigationController.stopObservingPreferences()()
{
  type metadata accessor for NSMutableArray();
  v1 = NSArray.init(arrayLiteral:)();
  [v0 setObservations:v1];
}

unint64_t type metadata accessor for NSMutableArray()
{
  result = lazy cache variable for type metadata for NSMutableArray;
  if (!lazy cache variable for type metadata for NSMutableArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableArray);
  }

  return result;
}

uint64_t PHVoicemailNavigationController.isAccountProvisioningRequired.getter()
{
  if (one-time initialization token for isInternalInstall != -1)
  {
LABEL_40:
    swift_once();
  }

  swift_beginAccess();
  if (static Defaults.isInternalInstall == 1)
  {
    v1 = specialized Defaults.getValueFromUserDefaults<A>(key:suiteName:)(0xD00000000000001CLL, 0x80000001002405F0, 0, 0);
    if (v1 != 2 && (v1 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
    swift_allocError();
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0;
    *(v3 + 72) = 2;
    swift_willThrow();
  }

  if (one-time initialization token for featureFlags != -1)
  {
    swift_once();
  }

  if (TUCallScreeningEnabled())
  {
    return 0;
  }

  result = [v0 voicemailController];
  if (result)
  {
    v4 = result;
    v5 = [result accountManager];

    v6 = [v5 accounts];
    swift_unknownObjectRelease();
    type metadata accessor for VoicemailAccount();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v0;
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = 0;
LABEL_15:
    if (v9 != v8)
    {
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v0 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v11 = *(v7 + 8 * v9 + 32);
          v0 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        if (v11[OBJC_IVAR___MPVoicemailAccount_hasHandle] == 1)
        {
          v12 = v11[OBJC_IVAR___MPVoicemailAccount_provisioned];

          if ((v12 & 1) == 0)
          {
            v9 = v0;
            if (!__OFADD__(v10++, 1))
            {
              goto LABEL_15;
            }

            __break(1u);
            break;
          }
        }

        else
        {
        }

        ++v9;
      }

      while (v0 != v8);
    }

    if (!v10)
    {
      goto LABEL_34;
    }

    if (v7 >> 62)
    {
      if (v10 != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_34;
      }
    }

    else if (v10 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:

      return 0;
    }

    result = [v17 voicemailController];
    if (result)
    {
      v14 = result;

      v15 = [v14 voicemailManager];

      v16 = [v15 estimatedCount];
      swift_unknownObjectRelease();
      return v16 == 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PhoneTabBarController.presentAppleSupportGuidedHelp()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SupportFlowCore0aB10IdentifierOSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for SupportFlowIdentifier();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = objc_allocWithZone(type metadata accessor for SupportFlowViewController());
  v7 = SupportFlowViewController.init(flowIdentifier:showsSearchBar:)();
  [v1 presentViewController:v7 animated:1 completion:0];
}

void specialized PhoneTabBarController.applyDetailsPresenter(to:with:presentingFrom:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = [v5 recentsController];

  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = [objc_allocWithZone(type metadata accessor for CallReportingViewModel()) init];
  v8 = type metadata accessor for RecentsDetailPresenter();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.mobilePhone);
  (*(*(v11 - 8) + 16))(&v9[v10], v12, v11);
  v13 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
  *&v9[v13] = [objc_allocWithZone(TUFeatureFlags) init];
  *&v9[OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore] = 1;
  *&v9[OBJC_IVAR___MPRecentsDetailPresenter_recentsController] = v6;
  *&v9[OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v14 = objc_msgSendSuper2(&v17, "init");
  RecentsViewController.recentsDataSource.getter();
  lazy protocol witness table accessor for type RecentsDetailPresenter and conformance RecentsDetailPresenter();
  type metadata accessor for DetailsPresenter();
  swift_allocObject();
  v15 = v14;
  v16 = a3;
  DetailsPresenter.init(dataSource:presentingViewController:recentsDetailProvider:)();
  MPSearchViewController.detailsPresenter.setter();
}

uint64_t specialized PhoneTabBarController.makeFavoritesListViewController(with:recentsViewController:navigationController:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FavoritesList();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  type metadata accessor for FavoritesDataSource();
  swift_allocObject();
  v12 = a1;
  FavoritesDataSource.init(controller:)();
  RecentsViewController.recentsDataSource.getter();
  type metadata accessor for DetailsPresenter();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  swift_allocObject();
  v13 = a3;
  DetailsPresenter.init(dataSource:presentingViewController:recentsDetailProvider:)();
  v14 = objc_allocWithZone(type metadata accessor for FavoritesListViewController());

  FavoritesList.init(dataSource:detailsPresenter:isInTab:editOnAppear:dismiss:)();
  (*(v6 + 16))(v9, v11, v5);
  v15 = UIHostingController.init(rootView:)();

  (*(v6 + 8))(v11, v5);
  return v15;
}

unint64_t lazy protocol witness table accessor for type RecentsDetailPresenter and conformance RecentsDetailPresenter()
{
  result = lazy protocol witness table cache variable for type RecentsDetailPresenter and conformance RecentsDetailPresenter;
  if (!lazy protocol witness table cache variable for type RecentsDetailPresenter and conformance RecentsDetailPresenter)
  {
    type metadata accessor for RecentsDetailPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsDetailPresenter and conformance RecentsDetailPresenter);
  }

  return result;
}

id VMVoicemailGreeting.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(VMVoicemailGreeting) init];
  [v1 duration];
  [v6 setDuration:?];
  [v6 setType:{objc_msgSend(v1, "type")}];
  v7 = [v1 url];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = 0;
  }

  [v6 setUrl:v11];

  return v6;
}

uint64_t AccelerometerOrientationMonitorWrapper.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10020B360;
  *(v0 + 32) = 0xED0000726574656DLL;
  *(v0 + 40) = PHVoicemailInboxListViewController.refreshTableHeaderView();
  *(v0 + 48) = 0;
  AccelerometerOrientationMonitorWrapper.wrapped.getter();

  return v0;
}

void *AccelerometerOrientationMonitorWrapper.wrapped.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for OrientationMonitorAccelerometer();
    swift_allocObject();
    v1 = OrientationMonitorAccelerometer.init(onOrientationChange:)(partial apply for closure #1 in AccelerometerOrientationMonitorWrapper.wrapped.getter, v2);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t closure #1 in AccelerometerOrientationMonitorWrapper.wrapped.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (*(*result + 128))(result);

    v3(a1);
  }

  return result;
}

uint64_t key path setter for AccelerometerOrientationMonitorWrapper.onOrientationChangeEvent : AccelerometerOrientationMonitorWrapper(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 136);

  return v6(_sSo19UIDeviceOrientationVytIegnr_ABIegy_TRTA_0, v5);
}

uint64_t AccelerometerOrientationMonitorWrapper.onOrientationChangeEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AccelerometerOrientationMonitorWrapper.onOrientationChangeEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t AccelerometerOrientationMonitorWrapper.currentOrientation.getter()
{
  v0 = AccelerometerOrientationMonitorWrapper.wrapped.getter();
  v1 = (*(*v0 + 176))(v0);

  return v1;
}

uint64_t AccelerometerOrientationMonitorWrapper.orientationEventsEnabled.setter(uint64_t a1)
{
  v3 = AccelerometerOrientationMonitorWrapper.wrapped.getter();
  (*(*v3 + 136))(a1);

  v4 = *(**(v1 + 16) + 160);

  v4((a1 & 1) == 0);
}

uint64_t AccelerometerOrientationMonitorWrapper.orientationEventsEnabled.getter()
{
  v0 = AccelerometerOrientationMonitorWrapper.wrapped.getter();
  v1 = (*(*v0 + 128))(v0);

  return v1 & 1;
}

uint64_t (*AccelerometerOrientationMonitorWrapper.orientationEventsEnabled.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  v3 = AccelerometerOrientationMonitorWrapper.wrapped.getter();
  v4 = (*(*v3 + 128))(v3);

  *(a1 + 8) = v4 & 1;
  return AccelerometerOrientationMonitorWrapper.orientationEventsEnabled.modify;
}

uint64_t AccelerometerOrientationMonitorWrapper.orientationEventsEnabled.modify(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(**(*a1 + 16) + 136);

  v3(v2);

  v4 = *(**(v1 + 16) + 160);

  v4(v2 ^ 1);
}

uint64_t AccelerometerOrientationMonitorWrapper.init()()
{
  *(v0 + 16) = xmmword_10020B360;
  *(v0 + 32) = 0xED0000726574656DLL;
  *(v0 + 40) = PHVoicemailInboxListViewController.refreshTableHeaderView();
  *(v0 + 48) = 0;
  AccelerometerOrientationMonitorWrapper.wrapped.getter();

  return v0;
}

uint64_t AccelerometerOrientationMonitorWrapper.deinit()
{

  return v0;
}

uint64_t AccelerometerOrientationMonitorWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for OrientationMonitorOrientationChangeSource.sourceName.getter in conformance AccelerometerOrientationMonitorWrapper()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t (*protocol witness for OrientationMonitorOrientationChangeSource.onOrientationChangeEvent.modify in conformance AccelerometerOrientationMonitorWrapper(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 144))();
  return protocol witness for OrientationMonitorOrientationChangeSource.onOrientationChangeEvent.modify in conformance AccelerometerOrientationMonitorWrapper;
}

uint64_t (*protocol witness for OrientationMonitorOrientationChangeSource.orientationEventsEnabled.modify in conformance AccelerometerOrientationMonitorWrapper(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 176))();
  return protocol witness for OrientationMonitorOrientationChangeSource.orientationEventsEnabled.modify in conformance AccelerometerOrientationMonitorWrapper;
}

void protocol witness for OrientationMonitorOrientationChangeSource.onOrientationChangeEvent.modify in conformance AccelerometerOrientationMonitorWrapper(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000FF9A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 128))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = _sSo19UIDeviceOrientationVIegy_ABytIegnr_TRTA_0;
  a2[1] = result;
  return result;
}

uint64_t sub_1000FFA30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000FFAEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sSo19UIDeviceOrientationVytIegnr_ABIegy_TRTA_0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1000FFB88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t one-time initialization function for title()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  __swift_allocate_value_buffer(v6, static OpenMobilePhoneAppDeepLinks.title);
  __swift_project_value_buffer(v6, static OpenMobilePhoneAppDeepLinks.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t one-time initialization function for description()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  __chkstk_darwin(v0 - 8);
  v16 = &v14 - v1;
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v15 = type metadata accessor for LocalizedStringResource();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = type metadata accessor for IntentDescription();
  __swift_allocate_value_buffer(v9, static OpenMobilePhoneAppDeepLinks.description);
  v14 = __swift_project_value_buffer(v9, static OpenMobilePhoneAppDeepLinks.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v10 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v11 = *(v3 + 104);
  v11(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v11(v5, v10, v2);
  v12 = v16;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v8 + 56))(v12, 0, 1, v15);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t OpenMobilePhoneAppDeepLinks.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static OpenMobilePhoneAppDeepLinks.title.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t key path getter for OpenMobilePhoneAppDeepLinks.target : OpenMobilePhoneAppDeepLinks@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*OpenMobilePhoneAppDeepLinks.target.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return OpenMobilePhoneAppDeepLinks.target.modify;
}

uint64_t protocol witness for OpenIntent.target.getter in conformance OpenMobilePhoneAppDeepLinks@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*protocol witness for OpenIntent.target.modify in conformance OpenMobilePhoneAppDeepLinks(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for OpenIntent.target.modify in conformance OpenMobilePhoneAppDeepLinks;
}

void OpenMobilePhoneAppDeepLinks.target.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t protocol witness for static _URLRepresentableIntent.urlRepresentation.getter in conformance OpenMobilePhoneAppDeepLinks(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();
  v5 = lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t protocol witness for static AppIntent.title.getter in conformance OpenMobilePhoneAppDeepLinks@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static OpenMobilePhoneAppDeepLinks.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenMobilePhoneAppDeepLinks(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();
  v7 = lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();
  v8 = lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  *v5 = v2;
  v5[1] = protocol witness for AppIntent.perform() in conformance OpenMobilePhoneAppDeepLinks;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t protocol witness for AppIntent.perform() in conformance OpenMobilePhoneAppDeepLinks()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t protocol witness for AppIntent.init() in conformance OpenMobilePhoneAppDeepLinks@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of OpenMobilePhoneAppDeepLinks.init(target:)(&outlined read-only object #0 of OpenMobilePhoneAppDeepLinks.init());
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance OpenMobilePhoneAppDeepLinks(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t default argument 0 of OpenMobilePhoneAppDeepLinks.init(target:)(uint64_t a1)
{
  v20 = a1;
  v19 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy11MobilePhone0efA9DeepLinksOGMd);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v14 + 56))(v12, 1, 1, v13);
  v21 = 5;
  v15 = type metadata accessor for IntentDialog();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v19);
  lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t lazy protocol witness table accessor for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks()
{
  result = lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks;
  if (!lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenMobilePhoneAppDeepLinks and conformance OpenMobilePhoneAppDeepLinks);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Never and conformance Never()
{
  result = lazy protocol witness table cache variable for type Never and conformance Never;
  if (!lazy protocol witness table cache variable for type Never and conformance Never)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Never and conformance Never);
  }

  return result;
}

uint64_t sub_100100EFC@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

id VoicemailSearchTableViewController.contactAvatarCardController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController;
  v2 = *&v0[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController];
LABEL_5:
    v9 = v2;
    return v3;
  }

  result = [v0 tableView];
  if (result)
  {
    objc_allocWithZone(type metadata accessor for ContactAvatarCardController());
    v5 = v0;
    v6 = v0;
    v7 = ContactAvatarCardController.init(tableViewController:tableView:)();
    v8 = *&v0[v1];
    *&v6[v1] = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id VoicemailSearchTableViewController.voicemails.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "voicemails");

  return v1;
}

void VoicemailSearchTableViewController.voicemails.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "setVoicemails:", a1);

  *(v1 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload) = 1;
}

void (*VoicemailSearchTableViewController.voicemails.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[3].receiver = [(objc_super *)v4 voicemails];
  return VoicemailSearchTableViewController.voicemails.modify;
}

void VoicemailSearchTableViewController.voicemails.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, "setVoicemails:", receiver);
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, "setVoicemails:", receiver);

    *(super_class + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload) = 1;
  }

  free(v2);
}

uint64_t VoicemailSearchTableViewController.detailsPresenter.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*VoicemailSearchTableViewController.detailsPresenter.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_detailsPresenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return VoicemailSearchTableViewController.detailsPresenter.modify;
}

void VoicemailSearchTableViewController.detailsPresenter.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t VoicemailSearchTableViewController.searchText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t VoicemailSearchTableViewController.searchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t VoicemailSearchTableViewController.folderName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t VoicemailSearchTableViewController.folderName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

BOOL VoicemailSearchTableViewController.hasContentToDisplay.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, "voicemails");
  v2 = [v1 count];

  return v2 > 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Message) -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  LOBYTE(v1) = v1(v2);

  swift_unknownObjectRelease();
  return v1 & 1;
}

Swift::Void __swiftcall VoicemailSearchTableViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for VoicemailSearchViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

    v5 = [v0 tableView];
    if (v5)
    {
      v6 = v5;
      [v5 setSeparatorInsetReference:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall VoicemailSearchTableViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1);
  v4 = VoicemailSearchTableViewController.contactAvatarCardController.getter();
  v5 = ContactAvatarCardController.cardController.getter();

  v6 = [v2 view];
  [v5 setSourceView:v6];

  v7 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload;
  if (*(v2 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload) == 1)
  {
    v8 = [v2 tableView];
    if (v8)
    {
      v9 = v8;
      [v8 reloadData];

      *(v2 + v7) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void VoicemailSearchTableViewController.performTableViewDestructiveAction(at:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd);
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100209AA0;
  (*(v4 + 16))(v6 + v5, a1, v3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v11[4] = partial apply for closure #1 in VoicemailSearchTableViewController.performTableViewDestructiveAction(at:);
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Message]) -> ();
  v11[3] = &block_descriptor_4;
  v9 = _Block_copy(v11);
  v10 = v1;

  [v10 performDeleteAtIndexPaths:isa dataSourceActions:v9 completionBlock:0];
  _Block_release(v9);
}

void closure #1 in VoicemailSearchTableViewController.performTableViewDestructiveAction(at:)(int a1, id a2)
{
  v2 = [a2 voicemailController];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v3 trashMessages:isa];
  }
}

uint64_t sub_100101FC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [Message]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *VoicemailSearchTableViewController.tableView(_:cellForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:isa];

  type metadata accessor for VoicemailSearchViewCell();
  v13 = swift_dynamicCastClassUnconditional();
  type metadata accessor for ContactSearchViewCell();
  v14 = v12;
  v15 = [v3 traitCollection];
  v16 = [v15 preferredContentSizeCategory];

  static ContactSearchViewCell.separatorInset(for:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v13 setSeparatorInset:{v18, v20, v22, v24}];
  v25 = [v3 messageAtIndex:IndexPath.row.getter()];
  if (v25)
  {
    v26 = v25;
    v27 = [v3 voicemailMessageViewModelForVoicemail:v25 isExpanded:1];
    v28 = [v3 voicemailController];
    if (!v28 || (v29 = v28, v30 = [v28 senderContactForMessage:v26], v29, !v30))
    {
      v30 = [v3 unknownContactForMessage:v26];
    }

    VoicemailSearchViewCell.configureWithVoicemailMessageViewModel(item:contact:)(v27, v30);
    v31 = &v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
    swift_beginAccess();
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31;

      if (String.count.getter() <= 0)
      {
      }

      else
      {
        v34 = v14;
        v35._countAndFlagsBits = v33;
        v35._object = v32;
        VoicemailSearchViewCell.highlight(text:)(v35);
      }
    }

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v26;
    v42 = &v13[OBJC_IVAR____TtC11MobilePhone23VoicemailSearchViewCell_callButtonTapHandler];
    swift_beginAccess();
    v43 = *v42;
    *v42 = partial apply for closure #1 in VoicemailSearchTableViewController.tableView(_:cellForRowAt:);
    v42[1] = v41;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v43);
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      v39 = IndexPath.row.getter();
      (*(v7 + 8))(v9, v6);
      *(v38 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to get the voicemail message at index: %ld", v38, 0xCu);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  return v13;
}

Swift::Void __swiftcall VoicemailSearchTableViewController.highlightMatchedText(in:)(UITableViewCell in)
{
  v3 = (v1 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;

    if (String.count.getter() >= 1)
    {
      type metadata accessor for VoicemailSearchViewCell();
      if (swift_dynamicCastClass())
      {
        v6 = in.super.super.super.isa;
        v7._countAndFlagsBits = v5;
        v7._object = v4;
        VoicemailSearchViewCell.highlight(text:)(v7);
      }
    }
  }
}

void closure #1 in VoicemailSearchTableViewController.tableView(_:cellForRowAt:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    VoicemailSearchTableViewController.handleDialRequest(for:)(a2);
  }

  v5 = [objc_opt_self() shared];
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = v6 + OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText;
  swift_beginAccess();
  if (!*(v8 + 8))
  {

LABEL_7:
    v9 = -1;
    goto LABEL_8;
  }

  v9 = String.count.getter();

LABEL_8:
  [v5 logSearchResultInteraction:2 cellType:3 searchLength:v9];
}

void VoicemailSearchTableViewController.handleDialRequest(for:)(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 voicemailController];
  if (v7 && (v8 = v7, v9 = [v7 callProviderManager], v8, v9))
  {
    v34 = *&v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_featureFlags];
    v10 = v9;
    swift_unknownObjectRetain();
    v11 = VoicemailTableViewModel.dialRequest.getter(v34, v10, a1);
    if (v11)
    {
      v12 = v11;
      v13 = v11;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v33 = v4;
        v17 = v16;
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v13;
        *v18 = v12;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Initiating voicemail call with dial request: %@", v17, 0xCu);
        outlined destroy of NSObject?(v18);

        v4 = v33;
      }

      v20 = [objc_opt_self() sharedApplication];
      v21 = [v13 URL];
      if (v21)
      {
        v22 = v21;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        (*(v4 + 8))(v6, v3);
      }

      else
      {
        v25 = 0;
      }

      aBlock[4] = PHVoicemailInboxListViewController.refreshTableHeaderView();
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_14;
      v32 = _Block_copy(aBlock);
      [v20 openURL:v25 withCompletionHandler:v32];
      _Block_release(v32);
      swift_unknownObjectRelease();

      return;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to dial back, dialRequest is nil", v30, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v34 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v34, v26, "Failed to dial back, callProviderManager is nil", v27, 2u);
    }
  }

  v31 = v34;
}

void VoicemailSearchTableViewController.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for RecentsItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (![*&v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_featureFlags] callExperiencePhoneAppEnabled] || !objc_msgSend(v1, "messageAtIndex:", IndexPath.row.getter()))
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17.receiver = v2;
    v17.super_class = ObjectType;
    objc_msgSendSuper2(&v17, "tableView:didSelectRowAtIndexPath:", a1, isa);

    goto LABEL_7;
  }

  type metadata accessor for FTMessage();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC11MobilePhone9FTMessage_ftMessage);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v11 = v10;
      RecentsItem.init(message:callProviderManager:)();
      dispatch thunk of DetailsPresenter.presentDetailsView(for:)();
      swift_unknownObjectRelease();

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_7:
    v13 = [objc_opt_self() shared];
    v14 = &v2[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
    swift_beginAccess();
    if (*(v14 + 1))
    {

      v15 = String.count.getter();
    }

    else
    {
      v15 = -1;
    }

    [v13 logSearchResultInteraction:1 cellType:3 searchLength:v15];

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t VoicemailSearchTableViewController.configure(cardController:presentationResultForIndex:)(void *a1)
{
  v2 = v1;
  v4 = [v1 messageAtIndex:IndexPath.row.getter()];
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = [v2 voicemailController];
  if (!v6 || (v7 = v6, v8 = [v6 senderContactForMessage:v5], v7, !v8))
  {
    v8 = [v2 unknownContactForMessage:v5];
  }

  [a1 setContact:v8];
  v9 = [v2 voicemailMessageViewModelForVoicemail:v5 isExpanded:1];
  v10 = [v9 localizedSubtitle];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [a1 setMessage:v10];
  swift_unknownObjectRelease_n();

  return 0;
}

id VoicemailSearchTableViewController.__allocating_init(navigationController:voicemailController:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithNavigationController:a1 voicemailController:a2];

  return v5;
}

id VoicemailSearchTableViewController.init(navigationController:voicemailController:)(void *a1, void *a2)
{
  v4 = specialized VoicemailSearchTableViewController.init(navigationController:voicemailController:)(a1, a2);

  return v4;
}

id VoicemailSearchTableViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle:a1];
}

id VoicemailSearchTableViewController.init(style:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_featureFlags;
  *&v1[v4] = [objc_allocWithZone(TUFeatureFlags) init];
  v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController] = 0;
  swift_weakInit();
  v5 = &v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x49414D4543494F56;
  v10.value._countAndFlagsBits = 0x746E656365524850;
  v9._object = 0xEA0000000000534CLL;
  v10.value._object = 0xE900000000000073;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v15);

  *v6 = v12;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "initWithStyle:", a1);
}

id VoicemailSearchTableViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VoicemailSearchTableViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_featureFlags;
  *&v3[v7] = [objc_allocWithZone(TUFeatureFlags) init];
  v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController] = 0;
  swift_weakInit();
  v8 = &v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v20._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x49414D4543494F56;
  v13.value._countAndFlagsBits = 0x746E656365524850;
  v12._object = 0xEA0000000000534CLL;
  v13.value._object = 0xE900000000000073;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v20);

  *v9 = v15;
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id VoicemailSearchTableViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v4 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_featureFlags;
  *&v1[v4] = [objc_allocWithZone(TUFeatureFlags) init];
  v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController] = 0;
  swift_weakInit();
  v5 = &v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v16._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x49414D4543494F56;
  v10.value._countAndFlagsBits = 0x746E656365524850;
  v9._object = 0xEA0000000000534CLL;
  v10.value._object = 0xE900000000000073;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16);

  *v6 = v12;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

uint64_t sub_100103C48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100103C80()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

id specialized VoicemailSearchTableViewController.init(navigationController:voicemailController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_featureFlags;
  *&v3[v7] = [objc_allocWithZone(TUFeatureFlags) init];
  v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_dataSourceNeedsReload] = 1;
  *&v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController____lazy_storage___contactAvatarCardController] = 0;
  swift_weakInit();
  v8 = &v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_searchText];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MobilePhone34VoicemailSearchTableViewController_folderName];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x49414D4543494F56;
  v13.value._countAndFlagsBits = 0x746E656365524850;
  v12._object = 0xEA0000000000534CLL;
  v13.value._object = 0xE900000000000073;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v18);

  *v9 = v15;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "initWithNavigationController:voicemailController:", a1, a2);
}

uint64_t sub_100103E84@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for VoicemailSearchTableViewController()
{
  result = type metadata singleton initialization cache for VoicemailSearchTableViewController;
  if (!type metadata singleton initialization cache for VoicemailSearchTableViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailSearchTableViewController()
{
  result = type metadata accessor for Logger();
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

void *OrientationMonitor.__allocating_init(logger:lockSource:orientationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = specialized OrientationMonitor.init(logger:lockSource:orientationSource:)(a1, a2, a3);
  (*(*(*(v4 + 88) - 8) + 8))(a3);
  (*(*(*(v4 + 80) - 8) + 8))(a2);
  return v8;
}

uint64_t @objc OrientationMonitor.orientationEventsEnabled.setter(uint64_t a1, uint64_t a2, char a3)
{

  OrientationMonitor.orientationEventsEnabled.setter(a3);
}

void OrientationMonitor.orientationEventsEnabled.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  OrientationMonitor.orientationEventsEnabled.didset();
}

void OrientationMonitor.orientationEventsEnabled.didset()
{
  v1 = v0;
  v2 = *v0;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    swift_beginAccess();
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "setOrientationEventsEnabled: %{BOOL}d", v5, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  swift_beginAccess();
  (*(*(v2 + 104) + 56))(v6, *(v2 + 88));
  v7 = swift_endAccess();
  if (*(v1 + 16) == 1)
  {
    OrientationMonitor.updateCachedOrientationValues()(v7);
  }
}

uint64_t (*OrientationMonitor.orientationEventsEnabled.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return OrientationMonitor.orientationEventsEnabled.modify;
}

uint64_t @objc OrientationMonitor.deviceOrientation.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  OrientationMonitor.deviceOrientation.setter(a3);
}

uint64_t OrientationMonitor.deviceOrientation.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return OrientationMonitor.deviceOrientation.didset();
}

uint64_t OrientationMonitor.deviceOrientation.didset()
{
  result = (*(*v0 + 256))();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = v0[3];
    if ((result - 1) <= 3)
    {
      return (*(*v0 + 240))();
    }
  }

  return result;
}

uint64_t (*OrientationMonitor.deviceOrientation.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return OrientationMonitor.deviceOrientation.modify;
}

uint64_t OrientationMonitor.orientationEventsEnabled.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t @objc OrientationMonitor.interfaceOrientation.getter()
{

  v0 = OrientationMonitor.interfaceOrientation.getter();

  return v0;
}

uint64_t OrientationMonitor.interfaceOrientation.getter()
{
  v1 = (*(*v0 + 256))();
  v2 = *v0;
  if (v1)
  {
    return *(v0 + *(v2 + 168));
  }

  v4 = *(v2 + 232);

  return v4();
}

uint64_t @objc OrientationMonitor.lastValidInterfaceOrientation.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  *(a1 + 32) = a3;
  return result;
}

uint64_t OrientationMonitor.lastValidInterfaceOrientation.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

void OrientationMonitor.isOrientationLocked.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (v2[40] == v3)
  {
    return;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_20;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v16 = v7;
  *v6 = 67109378;
  *(v6 + 4) = v2[40];
  *(v6 + 8) = 2080;
  v8 = *&v2[*(*v2 + 168)];

  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v9 = 0xEE00746867695265;
      goto LABEL_15;
    }

    if (v8 == 5)
    {
      v9 = 0xE600000000000000;
      v10 = 0x705565636166;
      goto LABEL_19;
    }

    if (v8 != 6)
    {
LABEL_16:
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      goto LABEL_19;
    }

    v9 = 0xE800000000000000;
    v10 = 0x6E776F4465636166;
  }

  else
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v9 = 0x80000001002427E0;
        v10 = 0xD000000000000012;
        goto LABEL_19;
      }

      if (v8 == 3)
      {
        v9 = 0xED00007466654C65;
LABEL_15:
        v10 = 0x70616373646E616CLL;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v9 = 0xE800000000000000;
    v10 = 0x7469617274726F70;
  }

LABEL_19:
  v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v16);

  *(v6 + 10) = v11;
  _os_log_impl(&_mh_execute_header, v4, v5, "set orientation locked: %{BOOL}d to orientation: %s", v6, 0x12u);
  __swift_destroy_boxed_opaque_existential_0(v7);

LABEL_20:

  if ((v2[40] & 1) == 0)
  {
    v12 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for inCallOrientationMonitorEvent != -1)
    {
      swift_once();
    }

    v13 = static NSNotificationName.inCallOrientationMonitorEvent;
    v14 = OrientationMonitor.notificationInfo.getter();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 postNotificationName:v13 object:0 userInfo:isa];
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    type metadata accessor for NSNumber();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void OrientationMonitor.isOrientationLocked.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  OrientationMonitor.isOrientationLocked.didset(v3);
}

uint64_t OrientationMonitor.lockedOrientation.setter(uint64_t a1)
{
  *(v1 + *(*v1 + 168)) = a1;
  result = *(v1 + *(*v1 + 168));
  if ((result - 1) <= 3)
  {
    return (*(*v1 + 240))();
  }

  return result;
}

void *OrientationMonitor.init(logger:lockSource:orientationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = specialized OrientationMonitor.init(logger:lockSource:orientationSource:)(a1, a2, a3);
  (*(*(*(v6 + 88) - 8) + 8))(a3);
  (*(*(*(v6 + 80) - 8) + 8))(a2);
  return v7;
}

uint64_t closure #2 in OrientationMonitor.init(logger:lockSource:orientationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = *(a4 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 88;
  v16 = *(v15 - 8);
  __chkstk_darwin(v12);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 88;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    if (v10)
    {
      swift_beginAccess();
      v31 = v20[40];
      v20[40] = 0;
LABEL_39:
      OrientationMonitor.isOrientationLocked.didset(v31);
    }

    v21 = *(*result + 152);
    swift_beginAccess();
    (*(v16 + 16))(v18, &v20[v21], a3);
    v22 = (*(a5 + 40))(a3, a5);
    (*(v16 + 8))(v18, a3);
    v23 = [objc_opt_self() currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if (v24 == 1)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_36;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50[0] = v28;
      *v27 = 136315138;
      if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            v29 = 0x70616373646E616CLL;
            v30 = 0xEE00746867695265;
            goto LABEL_35;
          case 5:
            v30 = 0xE600000000000000;
            v29 = 0x705565636166;
            goto LABEL_35;
          case 6:
            v30 = 0xE800000000000000;
            v29 = 0x6E776F4465636166;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            v29 = 0x7469617274726F70;
            v30 = 0xE800000000000000;
            goto LABEL_35;
          case 2:
            v29 = 0xD000000000000012;
            v30 = 0x80000001002427E0;
            goto LABEL_35;
          case 3:
            v29 = 0x70616373646E616CLL;
            v30 = 0xED00007466654C65;
LABEL_35:
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v50);

            *(v27 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v25, v26, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %s", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v28);

LABEL_36:

            *&v20[*(*v20 + 168)] = v22;
            v39 = *v20;
            v40 = *&v20[*(*v20 + 168)];
            if ((v40 - 1) >= 4)
            {
LABEL_38:
              swift_beginAccess();
              v31 = v20[40];
              v20[40] = 1;
              goto LABEL_39;
            }

LABEL_37:
            (*(v39 + 240))(v40);
            goto LABEL_38;
        }
      }

      v30 = 0xE700000000000000;
      v29 = 0x6E776F6E6B6E75;
      goto LABEL_35;
    }

    swift_retain_n();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v32, v33))
    {

      goto LABEL_57;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v50[0] = v35;
    *v34 = 136315394;
    v49 = v35;
    if (v22 > 3)
    {
      if (v22 == 4)
      {
        v36 = 0x70616373646E616CLL;
        v37 = 0xEE00746867695265;
        goto LABEL_42;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          v37 = 0xE800000000000000;
          v36 = 0x6E776F4465636166;
          goto LABEL_42;
        }

        goto LABEL_31;
      }

      v37 = 0xE600000000000000;
      v36 = 0x705565636166;
    }

    else
    {
      if (v22 == 1)
      {
        v37 = 0xE800000000000000;
        v36 = 0x7469617274726F70;
        goto LABEL_42;
      }

      if (v22 != 2)
      {
        if (v22 == 3)
        {
          v36 = 0x70616373646E616CLL;
          v37 = 0xED00007466654C65;
          goto LABEL_42;
        }

LABEL_31:
        v37 = 0xE700000000000000;
        v36 = 0x6E776F6E6B6E75;
        goto LABEL_42;
      }

      v36 = 0xD000000000000012;
      v37 = 0x80000001002427E0;
    }

LABEL_42:
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v50);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = *(*v20 + 160);
    swift_beginAccess();
    (*(v11 + 16))(v14, &v20[v42], a4);
    v43 = (*(a6 + 40))(a4, a6);
    (*(v11 + 8))(v14, a4);

    if (v43 > 3)
    {
      switch(v43)
      {
        case 4:
          v44 = 0x70616373646E616CLL;
          v45 = 0xEE00746867695265;
          goto LABEL_56;
        case 5:
          v45 = 0xE600000000000000;
          v44 = 0x705565636166;
          goto LABEL_56;
        case 6:
          v45 = 0xE800000000000000;
          v44 = 0x6E776F4465636166;
          goto LABEL_56;
      }
    }

    else
    {
      switch(v43)
      {
        case 1:
          v45 = 0xE800000000000000;
          v44 = 0x7469617274726F70;
          goto LABEL_56;
        case 2:
          v44 = 0xD000000000000012;
          v45 = 0x80000001002427E0;
          goto LABEL_56;
        case 3:
          v44 = 0x70616373646E616CLL;
          v45 = 0xED00007466654C65;
LABEL_56:
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v50);

          *(v34 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v32, v33, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %s, but using %s", v34, 0x16u);
          swift_arrayDestroy();

LABEL_57:
          v47 = *(*v20 + 160);
          swift_beginAccess();
          (*(v11 + 16))(v14, &v20[v47], a4);
          v48 = (*(a6 + 40))(a4, a6);
          (*(v11 + 8))(v14, a4);
          *&v20[*(*v20 + 168)] = v48;
          v39 = *v20;
          v40 = *&v20[*(*v20 + 168)];
          if ((v40 - 1) > 3)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
      }
    }

    v45 = 0xE700000000000000;
    v44 = 0x6E776F6E6B6E75;
    goto LABEL_56;
  }

  return result;
}

void OrientationMonitor.updateCachedOrientationValues()(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v21 - v7;
  v9 = v3[11];
  v10 = *(v9 - 8);
  __chkstk_darwin(v6);
  v12 = &v21 - v11;
  v13 = v3[20];
  swift_beginAccess();
  (*(v10 + 16))(v12, &v2[v13], v9);
  v14 = (*(v3[13] + 40))(v9);
  (*(v10 + 8))(v12, v9);
  (*(*v2 + 208))(v14);
  v15 = *(*v2 + 152);
  swift_beginAccess();
  v16 = *(v5 + 16);
  v16(v8, &v2[v15], v4);
  v17 = v3[12];
  LOBYTE(v12) = (*(v17 + 48))(v4, v17);
  v18 = *(v5 + 8);
  v18(v8, v4);
  if (v12)
  {
    v16(v8, &v2[v15], v4);
    v19 = (*(v17 + 40))(v4, v17);
    v18(v8, v4);
    *&v2[*(*v2 + 168)] = v19;
    if ((*&v2[*(*v2 + 168)] - 1) <= 3)
    {
      (*(*v2 + 240))();
    }

    swift_beginAccess();
    v20 = v2[40];
    v2[40] = 1;
    OrientationMonitor.isOrientationLocked.didset(v20);
  }
}

uint64_t *OrientationMonitor.deinit()
{
  v1 = *v0;
  v2 = direct field offset for OrientationMonitor.logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 152));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 160));
  return v0;
}

uint64_t OrientationMonitor.__deallocating_deinit()
{
  OrientationMonitor.deinit();

  return swift_deallocClassInstance();
}

void *specialized OrientationMonitor.init(logger:lockSource:orientationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  *(v4 + 16) = 0;
  v4[3] = 0;
  v4[4] = 0;
  *(v4 + 40) = 0;
  *(v4 + v8[21]) = 0;
  v9 = direct field offset for OrientationMonitor.logger;
  v25 = type metadata accessor for Logger();
  v27 = *(v25 - 8);
  (*(v27 + 16))(v4 + v9, a1, v25);
  v10 = v8[10];
  v24 = v10;
  (*(*(v10 - 8) + 16))(v4 + *(*v4 + 152), a2);
  v11 = v8[11];
  (*(*(v11 - 8) + 16))(v4 + *(*v4 + 160), a3, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v14 = v8[12];
  v13[4] = v14;
  v15 = v8[13];
  v13[5] = v15;
  v13[6] = v12;
  swift_beginAccess();
  v16 = *(v15 + 24);

  v16(partial apply for closure #1 in OrientationMonitor.init(logger:lockSource:orientationSource:), v13, v11, v15);
  swift_endAccess();

  v17 = swift_allocObject();
  swift_weakInit();

  v18 = swift_allocObject();
  *&v19 = v24;
  *(&v19 + 1) = v11;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  *(v18 + 16) = v19;
  *(v18 + 32) = v20;
  *(v18 + 48) = v17;
  swift_beginAccess();
  v21 = *(v14 + 24);

  v21(partial apply for closure #2 in OrientationMonitor.init(logger:lockSource:orientationSource:), v18, v24, v14);
  swift_endAccess();

  OrientationMonitor.updateCachedOrientationValues()(v22);
  (*(v27 + 8))(a1, v25);
  return v4;
}

uint64_t sub_100106384@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

__n128 sub_100106428(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100106434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1001064D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_100106574@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for OrientationMonitor()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber[0];
  if (!lazy cache variable for type metadata for NSNumber[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t sub_100106790()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001067C8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t *VoicemailAccountManagerUpdate.all.unsafeMutableAddressor()
{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.all;
}

uint64_t *VoicemailAccountManagerUpdate.subscriptionStatus.unsafeMutableAddressor()
{
  if (one-time initialization token for subscriptionStatus != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.subscriptionStatus;
}

uint64_t *VoicemailAccountManagerUpdate.onlineStatus.unsafeMutableAddressor()
{
  if (one-time initialization token for onlineStatus != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.onlineStatus;
}

uint64_t *VoicemailAccountManagerUpdate.storageUsage.unsafeMutableAddressor()
{
  if (one-time initialization token for storageUsage != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.storageUsage;
}

uint64_t *VoicemailAccountManagerUpdate.transcribingStatus.unsafeMutableAddressor()
{
  if (one-time initialization token for transcribingStatus != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.transcribingStatus;
}

uint64_t *VoicemailAccountManagerUpdate.accounts.unsafeMutableAddressor()
{
  if (one-time initialization token for accounts != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.accounts;
}

uint64_t specialized SetAlgebra.isDisjoint(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v17, "init");
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v9 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v8;
  v10 = objc_allocWithZone(ObjectType);
  *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v9;
  v16.receiver = v10;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v15.receiver = v12;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  LOBYTE(ObjectType) = static NSObject.== infix(_:_:)();

  return ObjectType & 1;
}

id VoicemailAccountManagerUpdate.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id VoicemailAccountManagerUpdate.init(rawValue:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id one-time initialization function for allCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10020BBA0;
  if (one-time initialization token for onlineStatus != -1)
  {
    swift_once();
  }

  v1 = static VoicemailAccountManagerUpdate.onlineStatus;
  *(v0 + 32) = static VoicemailAccountManagerUpdate.onlineStatus;
  v2 = one-time initialization token for capabilities;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static VoicemailAccountManagerUpdate.capabilities;
  *(v0 + 40) = static VoicemailAccountManagerUpdate.capabilities;
  v5 = one-time initialization token for subscriptionStatus;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = static VoicemailAccountManagerUpdate.subscriptionStatus;
  *(v0 + 48) = static VoicemailAccountManagerUpdate.subscriptionStatus;
  v8 = one-time initialization token for syncInProgress;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static VoicemailAccountManagerUpdate.syncInProgress;
  *(v0 + 56) = static VoicemailAccountManagerUpdate.syncInProgress;
  v11 = one-time initialization token for storageUsage;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static VoicemailAccountManagerUpdate.storageUsage;
  *(v0 + 64) = static VoicemailAccountManagerUpdate.storageUsage;
  v14 = one-time initialization token for transcribingStatus;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static VoicemailAccountManagerUpdate.transcribingStatus;
  *(v0 + 72) = static VoicemailAccountManagerUpdate.transcribingStatus;
  v17 = one-time initialization token for accounts;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static VoicemailAccountManagerUpdate.accounts;
  *(v0 + 80) = static VoicemailAccountManagerUpdate.accounts;
  v20 = one-time initialization token for greeting;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = static VoicemailAccountManagerUpdate.greeting;
  *(v0 + 88) = static VoicemailAccountManagerUpdate.greeting;
  v23 = one-time initialization token for voicemails;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = static VoicemailAccountManagerUpdate.voicemails;
  *(v0 + 96) = static VoicemailAccountManagerUpdate.voicemails;
  static VoicemailAccountManagerUpdate.allCases = v0;

  return v25;
}

uint64_t *VoicemailAccountManagerUpdate.capabilities.unsafeMutableAddressor()
{
  if (one-time initialization token for capabilities != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.capabilities;
}

uint64_t *VoicemailAccountManagerUpdate.syncInProgress.unsafeMutableAddressor()
{
  if (one-time initialization token for syncInProgress != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.syncInProgress;
}

uint64_t *VoicemailAccountManagerUpdate.greeting.unsafeMutableAddressor()
{
  if (one-time initialization token for greeting != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.greeting;
}

uint64_t *VoicemailAccountManagerUpdate.voicemails.unsafeMutableAddressor()
{
  if (one-time initialization token for voicemails != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.voicemails;
}

uint64_t *VoicemailAccountManagerUpdate.allCases.unsafeMutableAddressor()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  return &static VoicemailAccountManagerUpdate.allCases;
}

uint64_t static VoicemailAccountManagerUpdate.allCases.getter()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }
}

id one-time initialization function for onlineStatus(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for VoicemailAccountManagerUpdate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, "init");
  *a3 = result;
  return result;
}

id @objc static VoicemailAccountManagerUpdate.onlineStatus.getter(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id static VoicemailAccountManagerUpdate.| infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) | *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v3;
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, "init");
}

id static VoicemailAccountManagerUpdate.& infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v3;
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, "init");
}

id static VoicemailAccountManagerUpdate.^ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v3;
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, "init");
}

id static VoicemailAccountManagerUpdate.~ prefix(_:)(uint64_t a1)
{
  v2 = ~*(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

BOOL VoicemailAccountManagerUpdate.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      v4 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    outlined destroy of Any?(v7);
  }

  return 0;
}

id protocol witness for OptionSet.init(rawValue:) in conformance VoicemailAccountManagerUpdate@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, "init");
  *a2 = result;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance VoicemailAccountManagerUpdate@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for allCases != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = static VoicemailAccountManagerUpdate.allCases;
}

id protocol witness for SetAlgebra.init() in conformance VoicemailAccountManagerUpdate@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

void protocol witness for SetAlgebra.union(_:) in conformance VoicemailAccountManagerUpdate(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void protocol witness for SetAlgebra.intersection(_:) in conformance VoicemailAccountManagerUpdate(Class a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *(v6 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

void protocol witness for SetAlgebra.symmetricDifference(_:) in conformance VoicemailAccountManagerUpdate(Class a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  v8 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v9 = objc_allocWithZone(a1);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v16.receiver = v9;
  v16.super_class = a1;
  v10 = [(objc_class *)&v16 init];
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v11;
  v13 = objc_allocWithZone(a1);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12;
  v15.receiver = v13;
  v15.super_class = a1;
  v14 = [(objc_class *)&v15 init];

  *a3 = v14;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance VoicemailAccountManagerUpdate(char **a1, char **a2)
{
  v2 = *a2;
  v3 = specialized OptionSet<>.insert(_:)(a1, *a2);

  return v3;
}

BOOL specialized OptionSet<>.insert(_:)(char **a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v7 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v8 = type metadata accessor for VoicemailAccountManagerUpdate();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, "init");
  v11 = *&v10[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v12 = *&a2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = static NSObject.== infix(_:_:)();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, "init");

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id protocol witness for SetAlgebra.remove(_:) in conformance VoicemailAccountManagerUpdate@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized OptionSet<>.remove(_:)(*a1);
  *a2 = result;
  return result;
}

id specialized OptionSet<>.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v6 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v7 = type metadata accessor for VoicemailAccountManagerUpdate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, "init");
  v10 = *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v11 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, "init");
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, "init");
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, "init");
    v20 = *&v19[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, "init");
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, "init");

    *v2 = v26;
  }

  return v13;
}

void protocol witness for SetAlgebra.update(with:) in conformance VoicemailAccountManagerUpdate(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = specialized OptionSet<>.update(with:)(*a1);

  *a2 = v4;
}

id specialized OptionSet<>.update(with:)(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, "init");
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, "init");
  LOBYTE(v6) = static NSObject.== infix(_:_:)();

  if (v6)
  {

    return 0;
  }

  return v12;
}

void protocol witness for SetAlgebra.formUnion(_:) in conformance VoicemailAccountManagerUpdate(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] | v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

id protocol witness for SetAlgebra.formIntersection(_:) in conformance VoicemailAccountManagerUpdate(uint64_t *a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  result = objc_msgSendSuper2(&v9, "init");
  *v2 = result;
  return result;
}

void protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance VoicemailAccountManagerUpdate(void **a1, objc_class *a2)
{
  v4 = *a1;
  v5 = *(*v2 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);

  v6 = *&v4[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] ^ v5;
  v7 = objc_allocWithZone(a2);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v6;
  v9.receiver = v7;
  v9.super_class = a2;
  v8 = objc_msgSendSuper2(&v9, "init");

  *v2 = v8;
}

void protocol witness for SetAlgebra.subtracting(_:) in conformance VoicemailAccountManagerUpdate(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = specialized SetAlgebra.subtracting(_:)(*a1);

  *a2 = v5;
}

id specialized SetAlgebra.subtracting(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v21, "init");
  v7 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v8 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v7;
  v9 = objc_allocWithZone(ObjectType);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v20.receiver = v9;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "init");
  v11 = objc_allocWithZone(ObjectType);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v19.receiver = v11;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "init");
  v13 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v14 = *(v10 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
  v15 = objc_allocWithZone(ObjectType);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v14;
  v18.receiver = v15;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "init");

  return v16;
}

uint64_t specialized SetAlgebra.isSubset(of:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v4;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "init");
  v7 = *&v6[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v8 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v7;
  v9 = objc_allocWithZone(ObjectType);
  *&v9[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v8;
  v13.receiver = v9;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, "init");
  v11 = static NSObject.== infix(_:_:)();

  return v11 & 1;
}

uint64_t protocol witness for SetAlgebra.isEmpty.getter in conformance VoicemailAccountManagerUpdate(objc_class *a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(a1);
  *&v2[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = [(objc_class *)&v5 init];
  LOBYTE(v1) = static NSObject.== infix(_:_:)();

  return v1 & 1;
}

void specialized SetAlgebra.subtract(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
  v5 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
  v6 = type metadata accessor for VoicemailAccountManagerUpdate();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v5;
  v19.receiver = v7;
  v19.super_class = v6;
  v8 = objc_msgSendSuper2(&v19, "init");
  v9 = *&v8[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

  v10 = *(a1 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) ^ v9;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
  v18.receiver = v11;
  v18.super_class = v6;
  v12 = objc_msgSendSuper2(&v18, "init");
  v13 = *&v3[v4];

  v14 = *(v12 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v14;
  v17.receiver = v15;
  v17.super_class = v6;
  v16 = objc_msgSendSuper2(&v17, "init");

  *v1 = v16;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance VoicemailAccountManagerUpdate@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t VoicemailAccountManagerUpdate.description.getter()
{
  swift_getObjectType();
  if (one-time initialization token for onlineStatus != -1)
  {
    swift_once();
  }

  v0 = static VoicemailAccountManagerUpdate.onlineStatus;
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    return 0x7453656E696C6E6FLL;
  }

  if (one-time initialization token for capabilities != -1)
  {
    swift_once();
  }

  v3 = static VoicemailAccountManagerUpdate.capabilities;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 0x696C696261706163;
  }

  if (one-time initialization token for subscriptionStatus != -1)
  {
    swift_once();
  }

  v5 = static VoicemailAccountManagerUpdate.subscriptionStatus;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return 0xD000000000000012;
  }

  if (one-time initialization token for syncInProgress != -1)
  {
    swift_once();
  }

  v7 = static VoicemailAccountManagerUpdate.syncInProgress;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 0x72506E49636E7973;
  }

  if (one-time initialization token for storageUsage != -1)
  {
    swift_once();
  }

  v9 = static VoicemailAccountManagerUpdate.storageUsage;
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    return 0xD000000000000013;
  }

  if (one-time initialization token for transcribingStatus != -1)
  {
    swift_once();
  }

  v11 = static VoicemailAccountManagerUpdate.transcribingStatus;
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    return 0xD000000000000012;
  }

  if (one-time initialization token for accounts != -1)
  {
    swift_once();
  }

  v13 = static VoicemailAccountManagerUpdate.accounts;
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    return 0x73746E756F636361;
  }

  if (one-time initialization token for greeting != -1)
  {
    swift_once();
  }

  v15 = static VoicemailAccountManagerUpdate.greeting;
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    return 0x676E697465657267;
  }

  if (one-time initialization token for voicemails != -1)
  {
    swift_once();
  }

  v17 = static VoicemailAccountManagerUpdate.voicemails;
  v18 = static NSObject.== infix(_:_:)();

  if (v18)
  {
    return 0x69616D6563696F56;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  return String.init<A>(_:radix:uppercase:)();
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [VoicemailAccountManagerUpdate] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [VoicemailAccountManagerUpdate] and conformance [A];
  if (!lazy protocol witness table cache variable for type [VoicemailAccountManagerUpdate] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11MobilePhone29VoicemailAccountManagerUpdateCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [VoicemailAccountManagerUpdate] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VoicemailAccountManagerUpdate and conformance VoicemailAccountManagerUpdate(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccountManagerUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._getElementSlowPath(_:)(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for VoicemailAccountManagerUpdate();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for VoicemailAccountManagerUpdate();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "ng";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x800000010020BD50;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

char *specialized SetAlgebra<>.init(arrayLiteral:)(unint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerUpdate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, "init");
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, a1);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v10 = *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, "init");
      v13 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      v14 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v15 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, "init");
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, "init");

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

id static TUMetadataDestinationID.metadataDestinationID(with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = static TUMetadataDestinationID._metadataDestinationID(with:countryCodeKey:destinationIDKey:)();

  return v0;
}

id static TUMetadataDestinationID._metadataDestinationID(with:countryCodeKey:destinationIDKey:)()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  if (v8)
  {
    v0 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v0 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v0)
    {
      swift_unknownObjectRetain();
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v1 = objc_opt_self();
      v2 = String._bridgeToObjectiveC()();

      v3 = String._bridgeToObjectiveC()();

      v4 = [v1 normalizedPhoneNumberHandleForValue:v2 isoCountryCode:v3];

      if (v4)
      {
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v4];

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

void key path getter for Message.senderISOCountryCode : Message(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void *static TUMetadataDestinationID.metadataDestinationIDs(for:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_60:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 & 0xC000000000000001;
  v37 = v2;
  v38 = v1;
  v39 = v1 & 0xC000000000000001;
  if (!v3)
  {
    goto LABEL_55;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    while (1)
    {
      if (v4)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_57;
        }

        swift_unknownObjectRetain();
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      v7 = [swift_unknownObjectRetain() senderDestinationID];
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      swift_unknownObjectRelease();

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {

        goto LABEL_8;
      }

      v13 = [swift_unknownObjectRetain() senderISOCountryCode];
      if (v13)
      {
        break;
      }

LABEL_7:
      swift_unknownObjectRelease();
LABEL_8:
      swift_unknownObjectRelease();
LABEL_9:
      ++v6;
      if (v5 == v3)
      {
        goto LABEL_31;
      }
    }

    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();

    v2 = v37;
    v17 = String._bridgeToObjectiveC()();
    v1 = v38;

    v18 = [v15 normalizedPhoneNumberHandleForValue:v16 isoCountryCode:v17];

    v4 = v39;
    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v18];

    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_9;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v39;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v5 != v3);
LABEL_31:
  v20 = 0;
  v36 = v3;
  do
  {
    v21 = v20;
    while (1)
    {
      if (v4)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v21 >= *(v2 + 16))
        {
          goto LABEL_59;
        }

        swift_unknownObjectRetain();
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_58;
        }
      }

      v22 = [swift_unknownObjectRetain() receiverDestinationID];
      if (!v22)
      {
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      swift_unknownObjectRelease();

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {

        v4 = v39;
        goto LABEL_34;
      }

      v28 = [swift_unknownObjectRetain() receiverISOCountryCode];
      if (!v28)
      {

        swift_unknownObjectRelease();
        v4 = v39;
        goto LABEL_34;
      }

      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      v30 = objc_opt_self();
      v31 = String._bridgeToObjectiveC()();

      v32 = String._bridgeToObjectiveC()();
      v3 = v36;

      v33 = [v30 normalizedPhoneNumberHandleForValue:v31 isoCountryCode:v32];

      v2 = v37;
      v1 = v38;
      v4 = v39;
      if (v33)
      {
        break;
      }

LABEL_34:
      swift_unknownObjectRelease();
LABEL_35:
      ++v21;
      if (v20 == v3)
      {
        goto LABEL_55;
      }
    }

    v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v33];

    swift_unknownObjectRelease();
    if (!v34)
    {
      goto LABEL_35;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v39;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v20 != v36);
LABEL_55:
  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
  return _swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = specialized Sequence._copySequenceContents(initializing:)(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = outlined consume of Set<CHHandle>.Iterator._Variant();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](&lazy protocol witness table cache variable for type [Message] and conformance [A], &_sSay11MobilePhone7Message_pGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone7Message_pGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](&lazy protocol witness table cache variable for type [MessageID] and conformance [A], &_sSay11MobilePhone9MessageIDCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MobilePhone9MessageIDCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MessageID(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](&lazy protocol witness table cache variable for type [TUMetadataDestinationID] and conformance [A], &_sSaySo23TUMetadataDestinationIDCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23TUMetadataDestinationIDCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TUMetadataDestinationID);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](&lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A], &_sSaySo18NSLayoutConstraintCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](&lazy protocol witness table cache variable for type [UIMenuElement] and conformance [A], &_sSaySo13UIMenuElementCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13UIMenuElementCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIMenuElement);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UIMenuElement] and conformance [A](&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], &_sSaySo15UIBarButtonItemCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}