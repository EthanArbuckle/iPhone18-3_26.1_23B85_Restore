uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;

      v17 = closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(&v45, &v44);
      if (v4)
      {

        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if (!v18)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;

    v29 = closure #1 in MOEventBundle.typeSortedAssetReferencesForInterstitial.getter(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;

    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v35 = __dst;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 < 8 || v35 <= v6)
    {
      goto LABEL_65;
    }

    while (2)
    {
      v56 = v35;
      v36 = v35 - 1;
      --v5;
      v37 = v14;
      v60 = v36;
      while (1)
      {
        v38 = v4;
        v39 = *--v37;
        v40 = *v36;
        v41 = v39;
        v42 = v40;
        v43 = [v41 rankingDictionary];
        v44 = 0.0;
        if (v43)
        {
          v45 = v43;
          v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          strcpy(v57, "rankingScore");
          BYTE5(v57[1]) = 0;
          HIWORD(v57[1]) = -5120;
          AnyHashable.init<A>(_:)();
          if (*(v46 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(v58), (v48 & 1) != 0))
          {
            outlined init with copy of Any(*(v46 + 56) + 32 * v47, v59);
            outlined destroy of AnyHashable(v58);

            if (swift_dynamicCast())
            {
              v44 = v57[0];
            }
          }

          else
          {

            outlined destroy of AnyHashable(v58);
          }
        }

        v49 = [v42 rankingDictionary];
        if (!v49)
        {
          goto LABEL_55;
        }

        v50 = v49;
        v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        strcpy(v57, "rankingScore");
        BYTE5(v57[1]) = 0;
        HIWORD(v57[1]) = -5120;
        AnyHashable.init<A>(_:)();
        if (!*(v51 + 16))
        {
          break;
        }

        v52 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
        if ((v53 & 1) == 0)
        {
          break;
        }

        outlined init with copy of Any(*(v51 + 56) + 32 * v52, v59);
        outlined destroy of AnyHashable(v58);

        if (!swift_dynamicCast())
        {
          goto LABEL_55;
        }

        v4 = v38;
        if (v57[0] < v44)
        {
          goto LABEL_58;
        }

LABEL_56:
        if (v5 + 1 != v14)
        {
          *v5 = *v37;
        }

        --v5;
        v14 = v37;
        v36 = v60;
        if (v37 <= v4)
        {
          v14 = v37;
          v35 = v56;
          goto LABEL_65;
        }
      }

      outlined destroy of AnyHashable(v58);
LABEL_55:

      v4 = v38;
      if (v44 > 0.0)
      {
LABEL_58:
        v54 = v60;
        if (v5 + 1 != v56)
        {
          *v5 = *v60;
        }

        if (v14 <= v4 || (v35 = v54, v54 <= v6))
        {
          v35 = v54;
          goto LABEL_65;
        }

        continue;
      }

      goto LABEL_56;
    }
  }

  if (a4 != __src || &__src[v9] <= a4)
  {
    memmove(a4, __src, 8 * v9);
  }

  v14 = &v4[v9];
  if (v7 >= 8 && __dst < v5)
  {
    v15 = __dst;
    while (1)
    {
      v16 = v14;
      v17 = v15;
      v18 = *v15;
      v60 = v4;
      v19 = *v4;
      v20 = v18;
      v21 = v19;
      v22 = [v20 rankingDictionary];
      v23 = 0.0;
      if (!v22)
      {
        break;
      }

      v24 = v22;
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v57, "rankingScore");
      BYTE5(v57[1]) = 0;
      HIWORD(v57[1]) = -5120;
      AnyHashable.init<A>(_:)();
      v15 = v17;
      if (!*(v25 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v58), (v27 & 1) == 0))
      {

        outlined destroy of AnyHashable(v58);
LABEL_19:
        v14 = v16;
        goto LABEL_20;
      }

      outlined init with copy of Any(*(v25 + 56) + 32 * v26, v59);
      outlined destroy of AnyHashable(v58);

      v14 = v16;
      if (swift_dynamicCast())
      {
        v23 = v57[0];
      }

LABEL_20:
      v28 = [v21 rankingDictionary];
      if (v28)
      {
        v29 = v28;
        v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        strcpy(v57, "rankingScore");
        BYTE5(v57[1]) = 0;
        HIWORD(v57[1]) = -5120;
        AnyHashable.init<A>(_:)();
        if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v58), (v32 & 1) != 0))
        {
          outlined init with copy of Any(*(v30 + 56) + 32 * v31, v59);
          outlined destroy of AnyHashable(v58);

          if (swift_dynamicCast())
          {

            v4 = v60;
            if (v57[0] >= v23)
            {
              goto LABEL_25;
            }

            goto LABEL_32;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v58);
        }
      }

      v4 = v60;
      if (v23 <= 0.0)
      {
LABEL_25:
        v33 = v4;
        v34 = v6 == v4++;
        if (v34)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v6 = *v33;
        goto LABEL_27;
      }

LABEL_32:
      v33 = v15;
      v34 = v6 == v15++;
      if (!v34)
      {
        goto LABEL_26;
      }

LABEL_27:
      ++v6;
      if (v4 >= v14 || v15 >= v5)
      {
        goto LABEL_63;
      }
    }

    v15 = v17;
    goto LABEL_19;
  }

LABEL_63:
  v35 = v6;
LABEL_65:
  if (v35 != v4 || v35 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v35, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v31 = __dst;
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 < 8 || v31 <= v6)
    {
      goto LABEL_63;
    }

    while (2)
    {
      v50 = v31;
      v32 = v31 - 8;
      v5 -= 8;
      v33 = v14;
      v53 = v32;
      while (1)
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v35 = *v32;
        v36 = *(v34 + 16);

        v37 = [v36 rankingDictionary];
        v38 = 0.0;
        if (v37)
        {
          v39 = v37;
          v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          AnyHashable.init<A>(_:)();
          if (*(v40 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v51), (v42 & 1) != 0))
          {
            outlined init with copy of Any(*(v40 + 56) + 32 * v41, v52);
            outlined destroy of AnyHashable(v51);

            if (swift_dynamicCast())
            {
              v38 = 1.67436463e243;
            }
          }

          else
          {

            outlined destroy of AnyHashable(v51);
          }
        }

        v43 = [*(v35 + 16) rankingDictionary];
        if (!v43)
        {
          goto LABEL_53;
        }

        v44 = v43;
        v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        AnyHashable.init<A>(_:)();
        if (!*(v45 + 16))
        {
          break;
        }

        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
        if ((v47 & 1) == 0)
        {
          break;
        }

        outlined init with copy of Any(*(v45 + 56) + 32 * v46, v52);
        outlined destroy of AnyHashable(v51);

        if (!swift_dynamicCast())
        {
          goto LABEL_53;
        }

        if (v38 > 1.67436463e243)
        {
          goto LABEL_56;
        }

LABEL_54:
        if (v5 + 8 != v14)
        {
          *v5 = *v33;
        }

        v5 -= 8;
        v14 = v33;
        v32 = v53;
        if (v33 <= v4)
        {
          v14 = v33;
          v31 = v50;
          goto LABEL_63;
        }
      }

      outlined destroy of AnyHashable(v51);
LABEL_53:

      if (v38 > 0.0)
      {
LABEL_56:
        v48 = v53;
        if (v5 + 8 != v50)
        {
          *v5 = *v53;
        }

        if (v14 <= v4 || (v31 = v48, v48 <= v6))
        {
          v31 = v48;
          goto LABEL_63;
        }

        continue;
      }

      goto LABEL_54;
    }
  }

  if (a4 != __src || &__src[8 * v9] <= a4)
  {
    memmove(a4, __src, 8 * v9);
  }

  v14 = &v4[8 * v9];
  if (v7 >= 8 && __dst < v5)
  {
    v15 = __dst;
    do
    {
      v16 = *v4;
      v17 = *(*v15 + 16);

      v18 = [v17 rankingDictionary];
      v19 = 0.0;
      if (v18)
      {
        v20 = v18;
        v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        AnyHashable.init<A>(_:)();
        if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v51), (v23 & 1) != 0))
        {
          outlined init with copy of Any(*(v21 + 56) + 32 * v22, v52);
          outlined destroy of AnyHashable(v51);

          if (swift_dynamicCast())
          {
            v19 = 1.67436463e243;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v51);
        }
      }

      v24 = [*(v16 + 16) rankingDictionary];
      if (v24)
      {
        v25 = v24;
        v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        AnyHashable.init<A>(_:)();
        if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v51), (v28 & 1) != 0))
        {
          outlined init with copy of Any(*(v26 + 56) + 32 * v27, v52);
          outlined destroy of AnyHashable(v51);

          if (swift_dynamicCast())
          {

            if (v19 <= 1.67436463e243)
            {
              goto LABEL_23;
            }

            goto LABEL_30;
          }
        }

        else
        {

          outlined destroy of AnyHashable(v51);
        }
      }

      if (v19 <= 0.0)
      {
LABEL_23:
        v29 = v4;
        v30 = v6 == v4;
        v4 += 8;
        if (v30)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v6 = *v29;
        goto LABEL_25;
      }

LABEL_30:
      v29 = v15;
      v30 = v6 == v15;
      v15 += 8;
      if (!v30)
      {
        goto LABEL_24;
      }

LABEL_25:
      v6 += 8;
    }

    while (v4 < v14 && v15 < v5);
  }

  v31 = v6;
LABEL_63:
  if (v31 != v4 || v31 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v31, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
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

uint64_t specialized FlattenSequence<>.startIndex.getter(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 8 * v3);
      if (v5 >> 62)
      {
        v6 = result;
        v7 = _CocoaArrayWrapper.endIndex.getter();
        result = v6;
        if (v7)
        {
          return v3;
        }
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v3;
      }

      ++v3;
    }

    while (result != v3);
  }

  return result;
}

uint64_t specialized FlattenSequence<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 < result)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (*(a7 + 16) <= a4)
      {
        goto LABEL_46;
      }

      v8 = *(a7 + 8 * a4 + 32);
      if (v8 >> 62)
      {
        goto LABEL_49;
      }

      if ((a6 & 1) == 0)
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = __OFSUB__(a5, v9);
        result = a5 - v9;
        if (v10)
        {
          goto LABEL_52;
        }

        goto LABEL_11;
      }

      goto LABEL_61;
    }

    goto LABEL_18;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    while (1)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v25 = a7;
      v26 = a2;
      v27 = a3;
      v28 = a4;
      v29 = a5;
      v30 = a6;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_61;
      }

      a5 = v29;
      a4 = v28;
      a3 = v27;
      a2 = v26;
      a7 = v25;
      v10 = __OFSUB__(v29, result);
      result = v29 - result;
      if (v10)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        v31 = a7;
        v32 = a2;
        v33 = a4;
        v34 = a5;
        v35 = a6;
        v36 = _CocoaArrayWrapper.endIndex.getter();
        a6 = v35;
        a5 = v34;
        a4 = v33;
        a7 = v31;
        v10 = __OFSUB__(v36, v32);
        result = v36 - v32;
        if (v10)
        {
          goto LABEL_55;
        }

LABEL_23:
        v11 = 1;
        a2 = a5;
        a3 = a6;
        v12 = a4;
        a4 = v7;
      }

      else
      {
LABEL_11:
        v11 = -1;
        v12 = v7;
      }

      v7 = a4 + 1;
      if ((a4 + 1) >= v12)
      {
LABEL_34:
        if (a3)
        {
          return result;
        }

        if (v12 < 0)
        {
          goto LABEL_56;
        }

        if (v12 >= *(a7 + 16))
        {
          goto LABEL_57;
        }

        v10 = __OFADD__(result, a2 * v11);
        result += a2 * v11;
        if (v10)
        {
          goto LABEL_58;
        }

        return result;
      }

      v15 = *(a7 + 16);
      v16 = (a7 + 8 * a4 + 40);
      while (v7 < v15)
      {
        if (*v16 >> 62)
        {
          v20 = result;
          v21 = a7;
          v22 = a2;
          v23 = a3;
          v24 = _CocoaArrayWrapper.endIndex.getter();
          a3 = v23;
          a2 = v22;
          a7 = v21;
          v17 = v24;
          result = v20;
        }

        else
        {
          v17 = *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = v17 * v11;
        v10 = __OFADD__(result, v18);
        result += v18;
        if (v10)
        {
          goto LABEL_40;
        }

        v19 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_41;
        }

        ++v7;
        ++v16;
        if (v19 >= v12)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }
  }

  if (a3)
  {
    goto LABEL_59;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (*(a7 + 16) <= a4)
  {
    goto LABEL_48;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
    __break(1u);
LABEL_18:
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (*(a7 + 16) <= v7)
    {
      goto LABEL_47;
    }

    if (a3)
    {
      goto LABEL_60;
    }

    v13 = *(a7 + 8 * v7 + 32);
    if (v13 >> 62)
    {
      goto LABEL_53;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFSUB__(v14, a2);
    result = v14 - a2;
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  return result;
}

uint64_t specialized static MOAssetAndMediaType.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    if (a3)
    {
      v14 = a6;
      return v14 & 1;
    }

LABEL_7:
    v14 = (a2 == a5) & ~a6;
    return v14 & 1;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = v15 & a6;
  if ((v15 & 1) != 0 && (a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  return v14 & 1;
}

_UNKNOWN **specialized MOSuggestionCollectionViewCellViewModel.assetSizes(style:assetCount:)(unsigned __int8 a1, size_t a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return &outlined read-only object #0 of MOSuggestionCollectionViewCellViewModel.assetSizes(style:assetCount:);
    }

    if (a1 == 4)
    {
      return &outlined read-only object #1 of MOSuggestionCollectionViewCellViewModel.assetSizes(style:assetCount:);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v11 + 16) = a2;
        v12 = (v11 + 32);
        v13 = 8;
        goto LABEL_27;
      }

      return _swiftEmptyArrayStorage;
    }

    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for tileSizesByCount != -1)
      {
        swift_once();
      }

      if (!*(static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v3 & 1) == 0))
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, static MOAngelLogger.assets);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_33;
        }

        v7 = swift_slowAlloc();
        v8 = v7;
        *v7 = 134218240;
        *(v7 + 4) = 1;
        goto LABEL_32;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v11 + 16) = a2;
        v12 = (v11 + 32);
        v13 = 3;
LABEL_27:
        memset(v12, v13, a2);
        return v11;
      }

      return _swiftEmptyArrayStorage;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_30;
  }

  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  if (*(static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
    }
  }

  if (one-time initialization token for assets != -1)
  {
    goto LABEL_36;
  }

LABEL_30:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static MOAngelLogger.assets);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218240;
    *(v7 + 4) = 0;
LABEL_32:
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "[MOSuggestionCollectionViewCellViewModel] Cannot resolve asset sizes for %ld and count: %ld", v8, 0x16u);
  }

LABEL_33:

  return 0;
}

uint64_t sub_10014DC94()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10014DDCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014DE04()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)()
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for MOSuggestionCollectionViewCellViewModel();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v15 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return v15(v7, v6, 1, v4);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v2, 0);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t specialized SuggestionCellStyle.init(rawValue:)(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t type metadata accessor for MOSuggestionCollectionViewModel(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014E444()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014E47C()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10014E53C()
{

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionCollectionViewInteractionState and conformance MOSuggestionCollectionViewInteractionState()
{
  result = lazy protocol witness table cache variable for type MOSuggestionCollectionViewInteractionState and conformance MOSuggestionCollectionViewInteractionState;
  if (!lazy protocol witness table cache variable for type MOSuggestionCollectionViewInteractionState and conformance MOSuggestionCollectionViewInteractionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionCollectionViewInteractionState and conformance MOSuggestionCollectionViewInteractionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionCellStyle and conformance SuggestionCellStyle()
{
  result = lazy protocol witness table cache variable for type SuggestionCellStyle and conformance SuggestionCellStyle;
  if (!lazy protocol witness table cache variable for type SuggestionCellStyle and conformance SuggestionCellStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionCellStyle and conformance SuggestionCellStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOAssetAndMediaType and conformance MOAssetAndMediaType()
{
  result = lazy protocol witness table cache variable for type MOAssetAndMediaType and conformance MOAssetAndMediaType;
  if (!lazy protocol witness table cache variable for type MOAssetAndMediaType and conformance MOAssetAndMediaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOAssetAndMediaType and conformance MOAssetAndMediaType);
  }

  return result;
}

uint64_t sub_10014E80C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014E8B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

uint64_t sub_10014E908(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 472);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10014E968@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014EA10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  return result;
}

uint64_t sub_10014EA64(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 520);

  return v2(v3);
}

uint64_t sub_10014EAC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014EB68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014EC10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 640))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014ECB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 696))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014ED60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_10014EDF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10014EE40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_10014EEA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10014EEF4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_10014EF5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014EFF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014F094@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10014F13C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_10014F190(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

void type metadata completion function for MOSuggestionCollectionViewModel()
{
  type metadata accessor for (OSSignpostIntervalState, OSSignpostID)?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for (OSSignpostIntervalState, OSSignpostID)?()
{
  if (!lazy cache variable for type metadata for (OSSignpostIntervalState, OSSignpostID)?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s2os23OSSignpostIntervalStateC_AA0B2IDVtMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (OSSignpostIntervalState, OSSignpostID)?);
    }
  }
}

uint64_t sub_10014F38C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10014F45C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10014F540(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10014F61C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for [MOSuggestionSheetAssetViewModel](319, a4, type metadata accessor for MOSuggestionSheetAssetViewModel, a5);
  if (v5 <= 0x3F)
  {
    type metadata accessor for Int?();
    if (v6 <= 0x3F)
    {
      type metadata accessor for [MOSuggestionSheetAssetViewModel](319, &lazy cache variable for type metadata for UUID?, &type metadata accessor for UUID, &type metadata accessor for Optional);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [MOSuggestionSheetAssetViewModel](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOAssetAndMediaType(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for MOAssetAndMediaType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10014F8E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Bool) -> (@out ())(char a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

uint64_t sub_10014F9B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014FA20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t objectdestroy_157Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014FB3C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined init with copy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014FBE4()
{
  v1 = (type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)()
{
  v1 = *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #3 in closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel.fetchAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:style:typeSorted:completionHandler:)(v2, v3, v4, v5);
}

uint64_t outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *_sSa9repeating5countSayxGx_SitcfCyp_Tt1g5(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4[2] = v2;
      v5 = (v4 + 4);
      do
      {
        outlined init with copy of Any(v3, v5);
        v5 += 32;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    __swift_destroy_boxed_opaque_existential_0(v3);
    return v4;
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.updateLayout()()
{
  MOSuggestionInterstitialCarouselView.setPageControlVisibility()();
  v1 = specialized static MOAngelRootViewController.isLandscape.getter();
  v2 = (*((swift_isaMask & *v0) + 0xC8))();
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      isa = MOSuggestionInterstitialCarouselView.generateLandscapeLayout()().super.isa;
      [v3 setCollectionViewLayout:isa animated:0];
    }

    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerViewBottomConstraint);
    if (v5)
    {
      v6 = 0.0;
LABEL_10:
      v5 = [v5 setConstant:v6];
    }
  }

  else
  {
    if (v2)
    {
      v7 = MOSuggestionInterstitialCarouselView.generateLayout()().super.isa;
      [v3 setCollectionViewLayout:v7 animated:0];
    }

    v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerViewBottomConstraint);
    if (v5)
    {
      v6 = 100.0;
      goto LABEL_10;
    }
  }

  v8 = *((swift_isaMask & *v0) + 0xC8);
  v9 = (v8)(v5);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 collectionViewLayout];

    [v11 invalidateLayout];
  }

  v12 = v8();
  if (v12)
  {
    v13 = v12;
    [v12 layoutIfNeeded];
  }
}

uint64_t MOSuggestionInterstitialCarouselView.assetTypeSummary.getter()
{
  v35 = [objc_allocWithZone(NSCountedSet) init];
  v39 = v0;
  v1 = (*((swift_isaMask & *v0) + 0xE0))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v40 = v2 + 32;
    v41 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = i;
    v37 = v2;
    v38 = v2 & 0xC000000000000001;
    while (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_38;
      }

LABEL_13:
      v8 = (*(*v6 + 632))();
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = v8;
      v10 = (*(*v6 + 656))();
      if (v10 == 26)
      {

LABEL_5:

        goto LABEL_6;
      }

      v11 = v10;
      v12 = (*((swift_isaMask & *v39) + 0x110))();
      v42[0] = (*(*v6 + 512))();
      v42[1] = v13;
      v42[9] = 35;
      v42[10] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.components<A>(separatedBy:)();

      if (!v14[2])
      {
        goto LABEL_40;
      }

      v15 = v14[4];
      v16 = v14[5];

      if (*(v12 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(v12 + 32);
        v19 = v17 & ~v18;
        if ((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(v12 + 48) + 16 * v19);
            v22 = *v21 == v15 && v21[1] == v16;
            if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
          if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
          {

            i = v36;
            v2 = v37;
            v5 = v38;
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            i = v36;
            v2 = v37;
            v5 = v38;
            if ((v28 & 1) == 0)
            {
LABEL_35:
              LOBYTE(v42[0]) = v11;
              [v35 addObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
              swift_unknownObjectRelease();
              goto LABEL_37;
            }
          }

          v30 = (*(*v6 + 1400))(v29);
          if (v31)
          {
            goto LABEL_35;
          }

          v42[3] = &type metadata for MOSuggestionAssetVisualSubType;
          LOBYTE(v42[0]) = v11;
          _sSa9repeating5countSayxGx_SitcfCyp_Tt1g5(v42, v30);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v35 addObjectsFromArray:isa];

LABEL_37:

          goto LABEL_6;
        }

LABEL_25:

        i = v36;
        v2 = v37;
        v5 = v38;
      }

      else
      {

        v5 = v38;
      }

LABEL_6:
      if (v4 == i)
      {
        goto LABEL_42;
      }
    }

    if (v4 >= *(v41 + 16))
    {
      goto LABEL_39;
    }

    v6 = *(v40 + 8 * v4);

    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:

  if (one-time initialization token for COMMA_SEPARATOR != -1)
  {
    swift_once();
  }

  v33 = specialized static MOSuggestionInterstitialListAssetViewModel.assetVisualSubTypesToCountString(_:includeCount:separator:)(v35, 1, static MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR, *(&static MOSuggestionInterstitialListAssetViewModel.COMMA_SEPARATOR + 1));

  return v33;
}

void MOSuggestionInterstitialCarouselView.reloadCell(_:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + 0xE0);
  v7 = (v6)();
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= a2)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  v9 = *((swift_isaMask & *v3) + 0xF0);

  v10 = v9(v31);
  v12 = v11;
  v6 = *v11;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v12 = v6;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    *v12 = v6;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_14:
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static MOAngelLogger.shared);
    v28 = v3;
    oslog = Logger.logObject.getter();
    LOBYTE(v3) = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v3))
    {

      v20 = v28;
      goto LABEL_19;
    }

    a1 = swift_slowAlloc();
    *a1 = 134218240;
    *(a1 + 4) = a2;
    *(a1 + 12) = 2048;
    v18 = (v6)();
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

      *(a1 + 14) = v19;

      _os_log_impl(&_mh_execute_header, oslog, v3, "[MOSuggestionInterstitialCarouselView] reloadCell index out of bounds=%ld, size=%ld", a1, 0x16u);

      v20 = oslog;
LABEL_19:

      return;
    }

LABEL_30:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a1;

  v14 = v10(v31, 0);
  v15 = *(*a1 + 512);
  if (v15(v14) == 0x6C6F686563616C70 && v16 == 0xEB00000000726564)
  {

LABEL_25:
    MOSuggestionInterstitialCarouselView.reloadAll()();
    return;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    goto LABEL_25;
  }

  v31[0] = v15(v22);
  v31[1] = v23;
  v30[0] = 35;
  v30[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v24 = StringProtocol.components<A>(separatedBy:)();

  if (v24[2])
  {
    v25 = v24[4];
    v26 = v24[5];

    v27 = (*((swift_isaMask & *v3) + 0x120))(v31);
    specialized Set._Variant.insert(_:)(v30, v25, v26);

    v27(v31, 0);
    goto LABEL_25;
  }

  __break(1u);
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.reloadAll()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v3 = *(v9 - 8);
  __chkstk_darwin(v9);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MOSuggestionInterstitialCarouselView.configurePageControl()();
  MOSuggestionInterstitialCarouselView.refreshCheckmarksState()();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionInterstitialCarouselView.reloadAll();
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_23;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v10 + 8))(v2, v0);
  (*(v3 + 8))(v5, v9);
}

uint64_t MOSuggestionInterstitialCarouselView.updateSelectedAssets(_:)()
{
  v3 = *((swift_isaMask & *v0) + 0x118);

  return v3(v1);
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.refreshCheckmarksState()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((swift_isaMask & *v0) + 0xE0))(v4);
  v33 = v7;
  if (v7 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v39 = v33 & 0xFFFFFFFFFFFFFF8;
    v40 = v33 & 0xC000000000000001;
    v37 = i;
    v38 = v33 + 32;
    v35 = "sUIService.Views";
    v36 = (v3 + 8);
    v34 = v6;
    while (v40)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_31;
      }

LABEL_9:
      v12 = (*(*v10 + 512))();
      v3 = v13;
      v41 = v12;
      v42 = v13;
      v43 = 35;
      v44 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v14 = StringProtocol.components<A>(separatedBy:)();

      if (!v14[2])
      {
        goto LABEL_33;
      }

      v15 = v14[4];
      v16 = v14[5];

      v17 = IndexPath.init(row:section:)();
      v18 = (*((swift_isaMask & *v1) + 0x110))(v17);
      if (*(v18 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v19 = Hasher._finalize()(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = v2;
        v23 = ~v20;
        while (1)
        {
          v24 = (*(v18 + 48) + 16 * v21);
          v25 = *v24 == v15 && v24[1] == v16;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v23;
          if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            v3 = 0;
            goto LABEL_22;
          }
        }

        v3 = 1;
LABEL_22:
        v2 = v22;
        v6 = v34;
      }

      else
      {
        v3 = 0;
      }

      v27 = (*((swift_isaMask & *v1) + 0xC8))(v26);
      if (!v27 || (v28 = v27, v29 = String._bridgeToObjectiveC()(), isa = IndexPath._bridgeToObjectiveC()().super.isa, v31 = [v28 supplementaryViewForElementKind:v29 atIndexPath:isa], v28, v29, isa, !v31))
      {

        goto LABEL_28;
      }

      type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {

LABEL_28:
        (*v36)(v6, v2);
        goto LABEL_5;
      }

      (*((swift_isaMask & **(v32 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0xA0))(v3);

      (*v36)(v6, v2);

LABEL_5:
      v9 = v11;
      if (v11 == v37)
      {
        goto LABEL_35;
      }
    }

    if (v9 >= *(v39 + 16))
    {
      goto LABEL_32;
    }

    v10 = *(v38 + 8 * v9);

    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:
}

void *MOSuggestionInterstitialCarouselView.dataSource.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionInterstitialCarouselView.dataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionInterstitialCarouselView.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MOSuggestionInterstitialCarouselView.collectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_collectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOSuggestionInterstitialCarouselView.selectedAssetIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_selectedAssetIdentifiers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  result = (*((swift_isaMask & *v1) + 0x190))(v4);
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*MOSuggestionInterstitialCarouselView.selectedAssetIdentifiers.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionInterstitialCarouselView.selectedAssetIdentifiers.modify;
}

uint64_t MOSuggestionInterstitialCarouselView.selectedAssetIdentifiers.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = (*((swift_isaMask & **(a1 + 24)) + 0x190))(result);
    if (result)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t MOSuggestionInterstitialCarouselView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MOSuggestionInterstitialCarouselView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MOSuggestionSheetAssetGridView.delegate.modify;
}

void MOSuggestionInterstitialCarouselView.controller.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*MOSuggestionInterstitialCarouselView.controller.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_controller;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MOSuggestionSheetInterstitialView.controller.modify;
}

id MOSuggestionInterstitialCarouselView.init(controller:)(void *a1)
{
  v19 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v16 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_collectionView] = 0;
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_assetViewModels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_denySelectionList] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_selectedAssetIdentifiers] = &_swiftEmptySetSingleton;
  v7 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerView;
  *&v1[v7] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControlConstraints] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl;
  *&v1[v8] = [objc_allocWithZone(UIPageControl) init];
  *&v1[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_queue;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v1[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_beginAccess();
  v9 = v19;
  swift_unknownObjectWeakAssign();
  v10 = type metadata accessor for MOSuggestionInterstitialCarouselView();
  v20.receiver = v1;
  v20.super_class = v10;
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionInterstitialCarouselView.configureViewsAndLayouts()();
  MOSuggestionInterstitialCarouselView.configureDataSource()();

  return v11;
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.configureViewsAndLayouts()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerView;
  [v0 addSubview:*(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerView)];
  [*(v0 + v2) setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *(v0 + v2);
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:0.0];
    if (v8)
    {
      [v8 setActive:1];
    }
  }

  else
  {
    v8 = 0;
    v5 = v3;
  }

  v9 = *(v1 + v2);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v9 trailingAnchor];
    v13 = [v11 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:0.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = *(v1 + v2);
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v15 topAnchor];
    v19 = [v17 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:0.0];
    if (v20)
    {
      [v20 setActive:1];
    }
  }

  else
  {
    v20 = 0;
    v17 = v15;
  }

  v21 = specialized static MOAngelRootViewController.isLandscape.getter();
  v22 = *(v1 + v2);
  v23 = [v22 superview];
  if (v23)
  {
    v24 = v23;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v22 bottomAnchor];
    v26 = [v24 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    if (v27)
    {
      v28 = -100.0;
      if (v21)
      {
        v28 = -0.0;
      }

      [v27 setConstant:v28];
      [v27 setActive:1];
    }
  }

  else
  {
    v27 = 0;
    v24 = v22;
  }

  v29 = *(v1 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerViewBottomConstraint);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerViewBottomConstraint) = v27;

  if (specialized static MOAngelRootViewController.isLandscape.getter())
  {
    v30.super.isa = MOSuggestionInterstitialCarouselView.generateLandscapeLayout()().super.isa;
  }

  else
  {
    v30.super.isa = MOSuggestionInterstitialCarouselView.generateLayout()().super.isa;
  }

  isa = v30.super.isa;
  [*(v1 + v2) bounds];
  v36 = [objc_allocWithZone(UICollectionView) initWithFrame:isa collectionViewLayout:{v32, v33, v34, v35}];
  v37 = *(v1 + v2);
  v38 = v36;
  [v37 addSubview:v38];
  v39 = *((swift_isaMask & *v1) + 0xD0);
  v40 = v38;
  v39(v38);
  [v40 setClipsToBounds:0];

  [v40 setAutoresizingMask:18];
  [v40 setDelegate:v1];
  [v40 setAllowsSelection:1];
  [v40 setAllowsMultipleSelection:1];
  v41 = v40;
  [v41 setShowsHorizontalScrollIndicator:0];
  [v41 setDecelerationRate:UIScrollViewDecelerationRateFast];
  [v41 setPagingEnabled:0];
  [v41 setBouncesHorizontally:1];
  [v41 setContentInset:{0.0, 50.0, 0.0, 10.0}];

  type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = String._bridgeToObjectiveC()();
  v44 = String._bridgeToObjectiveC()();
  [v41 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v43 withReuseIdentifier:v44];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static MOAngelLogger.shared);
  v53 = v41;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54 = v49;
    *v48 = 136315138;
    [v53 contentOffset];
    v50 = CGPoint.debugDescription.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v54);

    *(v48 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v46, v47, "[MOSuggestionInterstitialCarouselView] currentOffset=%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  [*(v1 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

  MOSuggestionInterstitialCarouselView.setPageControlVisibility()();
  MOSuggestionInterstitialCarouselView.configurePageControl()();
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.configureDataSource()()
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_16MomentsUIService024MOSuggestionInterstitiald9CheckmarkB0CGMd);
  v38 = *(v40 - 8);
  v1 = __chkstk_darwin(v40);
  v35 = v2;
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_16MomentsUIService032MOSuggestionInterstitialCarouselbD0CAF0h10SheetAssetB5ModelCGMd);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  v7 = __chkstk_darwin(v5);
  v8 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for MOSuggestionInterstitialCarouselViewCell();
  type metadata accessor for MOSuggestionSheetAssetViewModel(0);
  v11 = v0;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
  v39 = v4;
  v12 = v37;
  v13 = v38;
  v14 = UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v15 = (*((swift_isaMask & *v11) + 0xC8))(v14);
  if (v15)
  {
    v16 = v15;
    v17 = *(v12 + 16);
    v34 = v10;
    v17(v8, v10, v5);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    v20 = v12;
    v21 = v19;
    v22 = v20;
    (*(v20 + 32))(v19 + v18, v8, v5);
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #3 in MOSuggestionInterstitialCarouselView.configureDataSource();
    *(v23 + 24) = v21;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy16MomentsUIService19InterstitialSectionOAD022MOSuggestionSheetAssetC5ModelCGMd));
    v24 = v16;
    v25 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v26 = (*((swift_isaMask & *v11) + 0xB8))(v25);
    v27 = (*((swift_isaMask & *v11) + 0xB0))(v26);
    if (v27)
    {
      v28 = v27;
      v29 = v36;
      v30 = v40;
      (*(v13 + 16))(v36, v39, v40);
      v31 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v32 = swift_allocObject();
      (*(v13 + 32))(v32 + v31, v29, v30);
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

      v24 = v28;
    }

    v10 = v34;
    v12 = v22;
  }

  (*(v13 + 8))(v39, v40);
  (*(v12 + 8))(v10, v5);
}

id MOSuggestionInterstitialCarouselView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionInterstitialCarouselView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t closure #1 in MOSuggestionInterstitialCarouselView.generateLayout()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = (*((swift_isaMask & *Strong) + 0xE0))();
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v7, 1))
  {
    v42 = v7 - 1;
    if (v7 - 1 == a1)
    {
      v9 = -40.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [objc_opt_self() layoutAnchorWithEdges:12 absoluteOffset:{v9, 0.0}];
    v11 = objc_opt_self();
    v12 = [v11 absoluteDimension:39.0];
    v40 = a1;
    v13 = [v11 absoluteDimension:39.0];
    v14 = objc_opt_self();
    v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

    v16 = v15;
    v17 = v10;
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() supplementaryItemWithLayoutSize:v16 elementKind:v18 containerAnchor:v17];
    v41 = v16;

    [v19 setPinToVisibleBounds:1];
    v20 = [v11 fractionalWidthDimension:1.0];
    v21 = [v11 fractionalWidthDimension:1.0];
    v22 = [v14 sizeWithWidthDimension:v20 heightDimension:v21];

    v39 = v22;
    v23 = [objc_opt_self() itemWithLayoutSize:v22];
    [objc_msgSend(a2 "container")];
    v25 = v24;
    swift_unknownObjectRelease();
    v26 = v25 + -100.0;
    v27 = [v11 absoluteDimension:v26];
    v28 = [v11 absoluteDimension:v26];
    v29 = [v14 sizeWithWidthDimension:v27 heightDimension:v28];

    v30 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002A4A70;
    *(v31 + 32) = v23;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
    v32 = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v34 = [v30 horizontalGroupWithLayoutSize:v29 subitems:isa];

    v35 = [objc_opt_self() sectionWithGroup:v34];
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1002A4A70;
    *(v36 + 32) = v19;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
    v37 = v19;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v35 setBoundarySupplementaryItems:v38];

    if (v42 == v40)
    {
      [v35 setContentInsets:{0.0, 0.0, 0.0, 40.0}];
    }

    return v35;
  }

  __break(1u);
  return result;
}

id MOSuggestionInterstitialCarouselView.generateLayout()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  [v5 setInterSectionSpacing:10.0];
  [v5 setScrollDirection:1];
  v6 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v10[4] = a1;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v10[3] = a2;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithSectionProvider:v7 configuration:v5];

  _Block_release(v7);

  return v8;
}

uint64_t closure #1 in MOSuggestionInterstitialCarouselView.generateLandscapeLayout()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = *((swift_isaMask & *Strong) + 0xE0);
  v7 = v6();
  if (v7 >> 62)
  {
    v2 = v7;
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v10 = v8 - 1 == a1;
    }

    else
    {
      v10 = 0;
    }

    v2 = v10;
    v11 = (v6)(v9);
    v50 = a1;
    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  v54 = v12;

  v51 = v2;
  if ((v2 & (v12 > 3)) != 0)
  {
    v13 = -40.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = [objc_opt_self() layoutAnchorWithEdges:12 absoluteOffset:{v13, 0.0}];
  v15 = objc_opt_self();
  v16 = [v15 absoluteDimension:39.0];
  v17 = [v15 absoluteDimension:39.0];
  v18 = objc_opt_self();
  v19 = [v18 sizeWithWidthDimension:v16 heightDimension:v17];

  v20 = v19;
  v21 = v14;
  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() supplementaryItemWithLayoutSize:v20 elementKind:v22 containerAnchor:v21];
  v53 = v20;

  v52 = v21;
  [v23 setPinToVisibleBounds:1];
  v24 = [v15 fractionalWidthDimension:1.0];
  v25 = [v15 fractionalWidthDimension:1.0];
  v26 = [v18 sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() itemWithLayoutSize:v26];
  [objc_msgSend(a2 "container")];
  v29 = v28;
  swift_unknownObjectRelease();
  v30 = [v15 absoluteDimension:v29];
  v31 = [v15 absoluteDimension:v29];
  v32 = [v18 sizeWithWidthDimension:v30 heightDimension:v31];

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1002A4A70;
  *(v34 + 32) = v27;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v35 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = [v33 horizontalGroupWithLayoutSize:v32 subitems:isa];

  v38 = [objc_opt_self() sectionWithGroup:v37];
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1002A4A70;
  *(v39 + 32) = v23;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
  v40 = v23;
  v41 = Array._bridgeToObjectiveC()().super.isa;
  v42 = v54;

  [v38 setBoundarySupplementaryItems:v41];

  if (v54 > 3 || v50)
  {
LABEL_20:
    if (v51 && v42 >= 4)
    {
      [v38 setContentInsets:{0.0, 0.0, 0.0, 40.0}];
      v46 = v5;
      v47 = v32;
      v48 = v40;
      v49 = v37;
      v5 = v52;
      v32 = v53;
    }

    else
    {
      v47 = v52;
      v46 = v53;
      v48 = v26;
      v49 = v35;
      v35 = v37;
      v26 = v40;
    }

    return v38;
  }

  [objc_msgSend(a2 "container")];
  v44 = v43;
  v42 = v54;
  result = swift_unknownObjectRelease();
  if (!__OFSUB__(v54, 1))
  {
    [v38 setContentInsets:{0.0, (v44 - ((v54 - 1) * 10.0 + v29 * v54)) * 0.5 + -50.0, 0.0, 0.0}];
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void MOSuggestionInterstitialCarouselView.setPageControlVisibility()()
{
  if (specialized static MOAngelRootViewController.isLandscape.getter())
  {
    v1 = objc_opt_self();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 deactivateConstraints:isa];

    v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl];

    [v3 removeFromSuperview];
  }

  else
  {
    v4 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl;
    [v0 addSubview:*&v0[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002A48D0;
    v6 = [*&v0[v4] topAnchor];
    v7 = [*&v0[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerView] bottomAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    *(v5 + 32) = v8;
    v9 = [*&v0[v4] trailingAnchor];
    v10 = [v0 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(v5 + 40) = v11;
    v12 = [*&v0[v4] leadingAnchor];
    v13 = [v0 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v5 + 48) = v14;
    v15 = [*&v0[v4] bottomAnchor];
    v16 = [v0 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v5 + 56) = v17;
    *&v0[OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControlConstraints] = v5;

    v18 = objc_opt_self();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);

    v19 = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:v19];
  }
}

id MOSuggestionInterstitialCarouselView.configurePageControl()()
{
  v1 = *((swift_isaMask & *v0) + 0xE0);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl;
  v5 = *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl);
  v6 = "setHidden:";
  if (v3 < 2)
  {
    v19 = 1;
  }

  else
  {
    [v5 setHidden:0];
    v7 = *(v0 + v4);
    v8 = v1();
    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [v7 setNumberOfPages:v9];

    v10 = *(v0 + v4);
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 labelColor];
    [v12 setCurrentPageIndicatorTintColor:v13];

    v14 = *(v0 + v4);
    v15 = [v11 grayColor];
    v16 = [v15 colorWithAlphaComponent:0.5];

    [v14 setPageIndicatorTintColor:v16];
    [*(v0 + v4) setAccessibilityContainerType:4];
    v17 = *(v0 + v4);
    v18 = [v11 clearColor];
    [v17 setBackgroundColor:v18];

    [*(v0 + v4) setUserInteractionEnabled:0];
    v5 = *(v0 + v4);
    v6 = "setDirection:";
    v19 = 0;
  }

  return [v5 v6];
}

uint64_t closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v25 = a4;
  v26 = type metadata accessor for IndexPath();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v26);
  v22[1] = v7;
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((swift_isaMask & *a1) + 0xA8);

  v9(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v6 + 16);
  v12 = a2;
  v13 = v26;
  v23(v8, v12, v26);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v22[0] = *(v6 + 32);
  (v22[0])(v15 + v14, v8, v13);
  v16 = *((swift_isaMask & *a1) + 0x78);

  v16(partial apply for closure #1 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource(), v15);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v26;
  v23(v8, v24, v26);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (v22[0])(v19 + v14, v8, v18);
  v20 = *((swift_isaMask & *a1) + 0x90);

  v20(partial apply for closure #2 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource(), v19);
}

void closure #1 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = IndexPath.section.getter();
    v3 = (*((swift_isaMask & *v1) + 0x108))(v4);
    specialized Set._Variant.insert(_:)(&v5, v2);
    v3(v4, 0);
  }
}

uint64_t closure #2 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource()(uint64_t a1, void *a2)
{
  v29 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v30 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v27[1] = *(result + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_queue);
    static DispatchTime.now()();
    + infix(_:_:)();
    v20 = v12 + 8;
    v21 = *(v12 + 8);
    v27[0] = v20;
    v28 = v11;
    v21(v15, v11);
    (*(v8 + 16))(v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v7);
    v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    (*(v8 + 32))(v23 + v22, v10, v7);
    aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource();
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_64_0;
    v24 = _Block_copy(aBlock);
    v29 = v19;
    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v25 = v30;
    v26 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);
    (*(v33 + 8))(v25, v26);
    (*(v31 + 8))(v6, v32);
    v21(v17, v28);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource()(void *a1)
{
  v2 = IndexPath.section.getter();
  v3 = (*((swift_isaMask & *a1) + 0x108))(v5);
  specialized Set._Variant.remove(_:)(v2);
  return v3(v5, 0);
}

void closure #2 in MOSuggestionInterstitialCarouselView.configureDataSource()(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((swift_isaMask & *Strong) + 0x1A8))();
    if (v4)
    {
      v5 = v4;
      v6 = (*((swift_isaMask & *v4) + 0x1B0))();
      v7 = objc_opt_self();
      v8 = &selRef_systemBlueColor;
      if ((v6 & 1) == 0)
      {
        v8 = &selRef_systemIndigoColor;
      }

      v9 = [v7 *v8];
      (*((swift_isaMask & *a1) + 0x68))(v9);

      v3 = v5;
    }
  }
}

uint64_t closure #3 in MOSuggestionInterstitialCarouselView.configureDataSource()()
{
  type metadata accessor for MOSuggestionInterstitialCarouselViewCell();
  type metadata accessor for MOSuggestionSheetAssetViewModel(0);

  v0 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v0;
}

uint64_t MOSuggestionInterstitialCarouselView.updatedSnapshot(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy16MomentsUIService31MOSuggestionSheetAssetViewModelCGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  type metadata accessor for MOSuggestionSheetAssetViewModel(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type MOSuggestionSheetAssetViewModel and conformance MOSuggestionSheetAssetViewModel, type metadata accessor for MOSuggestionSheetAssetViewModel);
  v9 = NSDiffableDataSourceSectionSnapshot.init()();
  v10 = (*((swift_isaMask & *v2) + 0xE0))(v9);
  if (v10 >> 62)
  {
    v2 = v10;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002A4A70;
    *(v13 + 32) = v12;
    v15 = 0;
    swift_beginAccess();

    NSDiffableDataSourceSectionSnapshot.append(_:to:)();
    swift_endAccess();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((a1 & 0x8000000000000000) == 0)
    {
      while (v11 > a1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          goto LABEL_10;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v12 = *(v10 + 8 * a1 + 32);

          goto LABEL_7;
        }

        __break(1u);
LABEL_12:
        v11 = v10;
        v10 = v2;
        if ((a1 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }
  }

  swift_beginAccess();
  (*(v6 + 16))(a2, v8, v5);
  return (*(v6 + 8))(v8, v5);
}

void closure #1 in MOSuggestionInterstitialCarouselView.reloadAll()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy16MomentsUIService31MOSuggestionSheetAssetViewModelCGMd);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *((swift_isaMask & *Strong) + 0xE0);
    v26 = (swift_isaMask & *Strong) + 224;
    v27 = v9;
    v10 = v9();
    if (v10 >> 62)
    {
      goto LABEL_25;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    while (1)
    {
      if (!v11)
      {
LABEL_21:
        MOSuggestionInterstitialCarouselView.printViewModels()();

        return;
      }

      v13 = 0;
      v25 = (v1 + 16);
      v14 = (v1 + 8);
      v23 = xmmword_1002A4A70;
      v24 = v6;
      while (1)
      {
        if (v13 >= 0xD)
        {
          goto LABEL_8;
        }

        v12 = (*((swift_isaMask & *v8) + 0xB0))(v12);
        if (!v12)
        {
          goto LABEL_8;
        }

        v15 = v12;
        type metadata accessor for MOSuggestionSheetAssetViewModel(0);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type MOSuggestionSheetAssetViewModel and conformance MOSuggestionSheetAssetViewModel, type metadata accessor for MOSuggestionSheetAssetViewModel);
        v16 = NSDiffableDataSourceSectionSnapshot.init()();
        v17 = (v27)(v16);
        if (!(v17 >> 62))
        {
          if (v13 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          goto LABEL_6;
        }

        v20 = v17;
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21 < 0)
        {
          break;
        }

        v22 = v21;
        v17 = v20;
        if (v13 < v22)
        {
LABEL_13:
          if ((v17 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v13 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v18 = *(v17 + 8 * v13 + 32);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v19 = swift_allocObject();
          *(v19 + 16) = v23;
          *(v19 + 32) = v18;
          v29 = 0;
          swift_beginAccess();

          NSDiffableDataSourceSectionSnapshot.append(_:to:)();
          swift_endAccess();

          v6 = v24;
          goto LABEL_7;
        }

LABEL_6:

LABEL_7:
        swift_beginAccess();
        (*v25)(v6, v4, v0);
        v1 = *v14;
        (*v14)(v4, v0);
        v28 = v13;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        v12 = (v1)(v6, v0);
LABEL_8:
        if (v11 == ++v13)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v11 = _CocoaArrayWrapper.endIndex.getter();

      if (v11 < 0)
      {
        __break(1u);
        return;
      }
    }
  }
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.printViewModels()()
{
  v40 = type metadata accessor for UUID();
  v1 = *(v40 - 8);
  v2 = __chkstk_darwin(v40);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*((swift_isaMask & *v0) + 0xE0))(v2);
  v6 = v4;
  if (!(v4 >> 62))
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_16:

    goto LABEL_18;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v36 = (v1 + 8);
    v37 = (v1 + 16);
    v10 = &off_100333000;
    v11 = static MOAngelLogger.assets;
    *&v5 = 136315394;
    v34 = v5;
    v38 = v6;
    v35 = v6 & 0xC000000000000001;
    do
    {
      if (v9)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v6 + 8 * v8 + 32);
      }

      if (v10[207] != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, v11);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v12 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v43;
        *v12 = v34;
        v13 = *(*v30 + 512);
        v42 = v32;
        v14 = v13();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v44);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = v39;
        v18 = v40;
        (*v37)(v39, v30 + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetAssetViewModel_uuid, v40);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v33;
        v20 = v11;
        v21 = v10;
        v22 = v7;
        v23 = v19;
        v25 = v24;
        v26 = v18;
        v9 = v35;
        (*v36)(v17, v26);
        v27 = v23;
        v7 = v22;
        v10 = v21;
        v11 = v20;
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v25, &v44);
        v6 = v38;

        *(v12 + 14) = v28;
        v29 = v42;
        _os_log_impl(&_mh_execute_header, v42, v41, "assetViewModel id=%s, uuid=%s", v12, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      ++v8;
    }

    while (v7 != v8);
LABEL_18:

    return;
  }

  __break(1u);
}

uint64_t MOSuggestionInterstitialCarouselView.scrollToIndex(index:shouldScroll:velocity:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*((swift_isaMask & *v3) + 0xC8))(v10);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  if (a1 < 0 || ((v15 = (*((swift_isaMask & *v3) + 0xE0))(), v15 >> 62) ? (v16 = _CocoaArrayWrapper.endIndex.getter()) : (v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v16 <= a1))
  {

LABEL_20:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static MOAngelLogger.shared);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v34, v35, "[MOSuggestionInterstitialCarouselView] index out of bounds=%ld", v36, 0xCu);
    }

    return 0;
  }

  IndexPath.init(row:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v18 = [v14 layoutAttributesForItemAtIndexPath:isa];

  if (!v18)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static MOAngelLogger.shared);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v38, v39, "[MOSuggestionInterstitialCarouselView] layout nil for index=%ld", v40, 0xCu);
    }

    return 0;
  }

  [v18 center];
  v20 = v19;
  [v14 frame];
  v21 = v20 + CGRectGetWidth(v42) * -0.5;
  if (v21 > 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  if (a1)
  {
    v23 = v21 > 0.0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = -50.0;
  }

  [v14 contentOffset];
  v26 = v25;
  if (a2)
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v14;
    *(v28 + 24) = v24;
    *(v28 + 32) = v26;
    aBlock[4] = partial apply for closure #1 in MOSuggestionInterstitialCarouselView.scrollToIndex(index:shouldScroll:velocity:);
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_27;
    v29 = _Block_copy(aBlock);
    v30 = v14;

    [v27 animateWithDuration:v29 animations:a3];
    _Block_release(v29);
  }

  v31 = *(v4 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl);
  [v31 setCurrentPage:a1];

  return *&v24;
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.scrollViewWillBeginDragging(_:)(UIScrollView a1)
{
  v1 = UIView.userInteractionEnabled(_:)();
}

Swift::Void __swiftcall MOSuggestionInterstitialCarouselView.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView _, Swift::Bool willDecelerate)
{
  v2 = UIView.userInteractionEnabled(_:)();
}

void MOSuggestionInterstitialCarouselView.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, uint64_t *a2, double a3)
{
  v4 = v3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static MOAngelLogger.shared);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a3;
    *(v11 + 12) = 2048;
    *(v11 + 14) = *a2;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOSuggestionInterstitialCarouselView] velocity=%f, userTarget=%f", v11, 0x16u);
  }

  if (((*((swift_isaMask & *v4) + 0x128))() & 1) == 0)
  {
    [a1 frame];
    v12 = CGRectGetWidth(v42) + -100.0;
    [a1 contentOffset];
    v14 = v13;
    v15 = v12 * 1.5;
    if (v13 >= v15 + v15)
    {
      [a1 contentSize];
      if (v17 - v15 >= v14)
      {
        goto LABEL_11;
      }

      v16 = -50.0;
    }

    else
    {
      v16 = 50.0;
    }

    v14 = v14 + v16;
LABEL_11:
    v18 = v14 / v12;
    v19 = round(v14 / v12);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = *a2;
        [a1 setDecelerationRate:UIScrollViewDecelerationRateFast];
        if (fabs(a3) < 0.7)
        {
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 134217984;
            *(v23 + 4) = a3;
            _os_log_impl(&_mh_execute_header, v21, v22, "[MOSuggestionInterstitialCarouselView] Rejecting scroll due to small velocity =%f", v23, 0xCu);
          }

          [a1 setDecelerationRate:10.0];
        }

        if (v20 >= v14)
        {
          if (a3 < 0.0)
          {
            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 134217984;
              *(v26 + 4) = a3;
              v27 = "[MOSuggestionInterstitialCarouselView] Rejecting scroll due to invalid velocity (+) direction =%f";
              goto LABEL_25;
            }

LABEL_26:

            [a1 setDecelerationRate:2.0];
            return;
          }

LABEL_33:
          v30 = v18;
          v29 = ceilf(v30);
          if ((LODWORD(v29) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (v29 > -9.2234e18)
            {
              if (v29 < 9.2234e18)
              {
LABEL_36:
                v31 = v29;
                v32 = MOSuggestionInterstitialCarouselView.scrollToIndex(index:shouldScroll:velocity:)(v29, 0, 0.2);
                if (v33)
                {
                  v34 = Logger.logObject.getter();
                  v35 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v34, v35))
                  {
                    v36 = swift_slowAlloc();
                    *v36 = 134217984;
                    *(v36 + 4) = v20;
                    _os_log_impl(&_mh_execute_header, v34, v35, "[MOSuggestionInterstitialCarouselView] fall back to currentTargetOffset=%f", v36, 0xCu);
                  }

                  *a2 = v20;
                }

                else
                {
                  v37 = v32;
                  *a2 = v32;
                  oslog = Logger.logObject.getter();
                  v38 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(oslog, v38))
                  {
                    v39 = swift_slowAlloc();
                    *v39 = 134218496;
                    *(v39 + 4) = v31;
                    *(v39 + 12) = 2048;
                    *(v39 + 14) = v14;
                    *(v39 + 22) = 2048;
                    *(v39 + 24) = v37;
                    _os_log_impl(&_mh_execute_header, oslog, v38, "[MOSuggestionInterstitialCarouselView] scrolling to index=%ld, currentTargetOffset=%f, newPoint=%f", v39, 0x20u);
                  }
                }

                return;
              }

LABEL_52:
              __break(1u);
              return;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          goto LABEL_49;
        }

        if (a3 > 0.0)
        {
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 134217984;
            *(v26 + 4) = a3;
            v27 = "[MOSuggestionInterstitialCarouselView] Rejecting scroll due to invalid velocity (-) direction =%f";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 0xCu);

            goto LABEL_26;
          }

          goto LABEL_26;
        }

        v28 = v18;
        v29 = floorf(v28);
        if ((LODWORD(v29) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v29 <= -9.2234e18)
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          if (v29 < 9.2234e18)
          {
            goto LABEL_36;
          }

          __break(1u);
          goto LABEL_33;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_47;
  }
}

uint64_t MOSuggestionInterstitialCarouselView.toggleSelectionState(_:view:indexPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = (*a1 + 512);
  v6 = *v5;
  if ((*v5)() == 0x6C6F686563616C70 && v7 == 0xEB00000000726564)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v11 = (*((swift_isaMask & *v2) + 0x110))(result);
      v28 = v6();
      v29 = v12;
      v30 = 35;
      v31 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v13 = StringProtocol.components<A>(separatedBy:)();

      if (!v13[2])
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v14 = v13[4];
      v15 = v13[5];

      v16 = specialized Set.contains(_:)(v14, v15, v11);

      if (v16)
      {
        v28 = (v6)(v17);
        v29 = v18;
        v30 = 35;
        v31 = 0xE100000000000000;
        v19 = StringProtocol.components<A>(separatedBy:)();

        if (v19[2])
        {
          v20 = v19[4];
          v21 = v19[5];

          v22 = (*((swift_isaMask & *v3) + 0x120))(&v28);
          specialized Set._Variant.remove(_:)(v20, v21);

          v22(&v28, 0);
          return (*((swift_isaMask & **(a2 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0xA0))(0);
        }

        goto LABEL_17;
      }

      v28 = (v6)(v17);
      v29 = v23;
      v30 = 35;
      v31 = 0xE100000000000000;
      v24 = StringProtocol.components<A>(separatedBy:)();

      if (!v24[2])
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v25 = v24[4];
      v26 = v24[5];

      v27 = (*((swift_isaMask & *v3) + 0x120))(&v28);
      specialized Set._Variant.insert(_:)(&v30, v25, v26);

      v27(&v28, 0);
      return (*((swift_isaMask & **(a2 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0xA0))(1);
    }
  }

  return result;
}

void MOSuggestionInterstitialCarouselView.toggleSelectionState(indexPath:)(unint64_t a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *v1) + 0xC8))();
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v5 supplementaryViewForElementKind:v6 atIndexPath:isa];

    if (v15)
    {
      type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        v10 = (*((swift_isaMask & *v2) + 0xE0))();
        v11 = a1;
        v12 = IndexPath.section.getter();
        if (v10 >> 62)
        {
          v11 = v12;
          v12 = _CocoaArrayWrapper.endIndex.getter();
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          __break(1u);
LABEL_19:
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:

          MOSuggestionInterstitialCarouselView.toggleSelectionState(_:view:indexPath:)(v14, v9);
        }

        else
        {
          v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if ((v12 & 0x8000000000000000) == 0)
          {
            while (v12 < v13)
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                goto LABEL_19;
              }

              if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v14 = *(v10 + 8 * v12 + 32);

                goto LABEL_10;
              }

              __break(1u);
LABEL_21:
              v13 = v12;
              v12 = v11;
              if ((v11 & 0x8000000000000000) != 0)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
      }
    }
  }
}

void MOSuggestionInterstitialCarouselView.forceCheckmark(indexPath:selected:)(uint64_t a1, char a2)
{
  v4 = (*((swift_isaMask & *v2) + 0xC8))();
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [v5 supplementaryViewForElementKind:v6 atIndexPath:isa];

    if (v9)
    {
      type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        (*((swift_isaMask & **(v8 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0xA0))(a2 & 1);
      }
    }
  }
}

void MOSuggestionInterstitialCarouselView.updateCheckmarkVisibity(indexPath:hidden:)(uint64_t a1, char a2)
{
  v4 = (*((swift_isaMask & *v2) + 0xC8))();
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [v5 supplementaryViewForElementKind:v6 atIndexPath:isa];

    if (v9)
    {
      type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        [*(v8 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView) setHidden:a2 & 1];
      }
    }
  }
}

uint64_t @objc MOSuggestionInterstitialCarouselView.collectionView(_:didSelectItemAt:)(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  MOSuggestionInterstitialCarouselView.toggleSelectionState(indexPath:)(v5);

  return (*(v3 + 8))(v5, v2);
}

BOOL MOSuggestionInterstitialCarouselView.collectionView(_:shouldSelectItemAt:)()
{
  v1 = (*((swift_isaMask & *v0) + 0xF8))();
  v2 = IndexPath.section.getter();
  v3 = specialized Set.contains(_:)(v2, v1);

  return !v3;
}

BOOL @objc MOSuggestionInterstitialCarouselView.collectionView(_:shouldSelectItemAt:)(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *((swift_isaMask & *a1) + 0xF8);
  v7 = a1;
  v8 = v6();
  v9 = IndexPath.section.getter();
  v10 = specialized Set.contains(_:)(v9, v8);

  (*(v3 + 8))(v5, v2);
  return !v10;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void *_sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5Tf4gn_n(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
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

void *_sSa9repeating5countSayxGx_SitcfC16MomentsUIService31MOSuggestionSheetAssetViewModelC_Tt1g5Tf4gn_n(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    type metadata accessor for MOSuggestionSheetAssetViewModel(0);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

uint64_t sub_100157244()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001572C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #3 in MOSuggestionInterstitialCarouselView.configureDataSource()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_16MomentsUIService032MOSuggestionInterstitialCarouselbD0CAF0h10SheetAssetB5ModelCGMd);

  return closure #3 in MOSuggestionInterstitialCarouselView.configureDataSource()();
}

uint64_t sub_1001573B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #4 in MOSuggestionInterstitialCarouselView.configureDataSource()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_16MomentsUIService024MOSuggestionInterstitiald9CheckmarkB0CGMd);
  type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void specialized MOSuggestionInterstitialCarouselView.init(coder:)()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v1 - 8);
  v11 = v1;
  __chkstk_darwin(v1);
  v9 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_assetViewModels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_denySelectionList) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_selectedAssetIdentifiers) = &_swiftEmptySetSingleton;
  v5 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_containerViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControlConstraints) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_pageControl;
  *(v0 + v6) = [objc_allocWithZone(UIPageControl) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16MomentsUIService36MOSuggestionInterstitialCarouselView_queue;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v0 + v8) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100157840()
{

  return _swift_deallocObject(v0, 40, 7);
}

void specialized MOSuggestionInterstitialCarouselView.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 0xD000000000000032 && 0x80000001002B67B0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for MOSuggestionInterstitialSupplementaryCheckmarkView();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v51 = v13;
      v16 = v10;
      v17 = *((swift_isaMask & *v5) + 0xE0);
      v18 = (swift_isaMask & *v5) + 224;
      v52 = a1;
      v19 = v17();
      v50 = a4;
      v20 = IndexPath.section.getter();
      if (v19 >> 62)
      {
        v45 = v20;
        v46 = _CocoaArrayWrapper.endIndex.getter();
        if (v46 < 0)
        {
          __break(1u);
          goto LABEL_19;
        }

        v21 = v46;
        v20 = v45;
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_24:

          return;
        }
      }

      if (v20 < v21)
      {
        if ((v19 & 0xC000000000000001) == 0)
        {
          if (v20 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v18 = v16;
          v22 = *(v19 + 8 * v20 + 32);

LABEL_11:
          v16 = v51;
          v51 = v11;

          v24 = (*((swift_isaMask & *v5) + 0x110))(v23);
          v25 = *v22;
          v48 = *(*v22 + 512);
          v49 = v25 + 512;
          v55[0] = v48();
          v55[1] = v26;
          v53 = 35;
          v54 = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v27 = StringProtocol.components<A>(separatedBy:)();

          if (v27[2])
          {
            v28 = v27[4];
            v29 = v27[5];

            LODWORD(v19) = specialized Set.contains(_:)(v28, v29, v24);

            (*((swift_isaMask & **(v15 + OBJC_IVAR____TtC16MomentsUIService50MOSuggestionInterstitialSupplementaryCheckmarkView_checkmarkView)) + 0xA0))(v19 & 1);
            if (one-time initialization token for shared == -1)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          swift_once();
LABEL_13:
          v30 = type metadata accessor for Logger();
          __swift_project_value_buffer(v30, static MOAngelLogger.shared);
          v31 = v51;
          (*(v51 + 2))(v16, v50, v18);

          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            LODWORD(v50) = v19;
            v36 = v31;
            v55[0] = v35;
            *v34 = 136315650;
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            v39 = v38;
            v36[1](v16, v18);
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v55);

            *(v34 + 4) = v40;
            *(v34 + 12) = 2080;
            v42 = (v48)(v41);
            v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v55);

            *(v34 + 14) = v44;
            *(v34 + 22) = 1024;
            *(v34 + 24) = v50 & 1;
            _os_log_impl(&_mh_execute_header, v32, v33, "[MOSuggestionInterstitialCarouselView] will display supplementary view at %s, id=%s, shouldBeSelected=%{BOOL}d", v34, 0x1Cu);
            swift_arrayDestroy();
          }

          else
          {

            v31[1](v16, v18);
          }

          return;
        }

LABEL_19:
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v16;
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }
}

uint64_t sub_100157E74@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_100157ED0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xB8);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100157F38@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_100157F94(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_100157FFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_100158058(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_1001580BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_100158118(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x100);

  return v2(v3);
}

uint64_t sub_100158184@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_1001581E8(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x118);

  return v2(v3);
}

uint64_t sub_100158254@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x190))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001582B8(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0x198);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_100158334@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x1A8))();
  *a2 = result;
  return result;
}

uint64_t sub_100158398(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x1B0);
  v4 = *a1;
  return v3(v2);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100158558()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MOSuggestionInterstitialCarouselView.configureDataSource()(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t one-time initialization function for CommonLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static BTask.CommonLogger);
  __swift_project_value_buffer(v0, static BTask.CommonLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t BTask.CommonLogger.unsafeMutableAddressor()
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static BTask.CommonLogger);
}

uint64_t static BTask.CommonLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static BTask.CommonLogger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in BTask.init(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static BTask.CommonLogger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001002B6A70, v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "BTask.%{public}s Cancelling background task for: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_beginAccess();
  *(a3 + 16) = 1;
  return result;
}

uint64_t specialized closure #2 in BTask.init(name:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(specialized closure #2 in BTask.init(name:operation:), 0, 0);
}

uint64_t specialized closure #2 in BTask.init(name:operation:)()
{
  v14 = v0;
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static BTask.CommonLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001002B6A70, &v13);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "BTask.%{public}s Starting background task for: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = v0[4];
  v8 = v0[6] + 16;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v8;
  v12 = (v7 + *v7);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = specialized closure #2 in BTask.init(name:operation:);

  return v12(partial apply for closure #1 in closure #2 in BTask.init(name:operation:), v9);
}

{

  return _swift_task_switch(specialized closure #2 in BTask.init(name:operation:), 0, 0);
}

{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001002B6A70, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "BTask.%{public}s Finishing background task for: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v0[11] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized closure #2 in BTask.init(name:operation:), v7, v6);
}

{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 sharedApplication];

  return _swift_task_switch(specialized closure #2 in BTask.init(name:operation:), 0, 0);
}

{
  v1 = v0[13];
  [v1 endBackgroundTask:v0[7]];

  v2 = v0[1];

  return v2();
}

uint64_t static BTask.detached(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = one-time initialization token for CommonLogger;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static BTask.CommonLogger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001002B6A30, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "BTask.%{public}s Creating background task for: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = [objc_opt_self() sharedApplication];
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v16;
  aBlock[4] = partial apply for closure #1 in static BTask.detached(name:operation:);
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v20 = _Block_copy(aBlock);

  v21 = [v17 beginBackgroundTaskWithName:v18 expirationHandler:v20];
  _Block_release(v20);

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  v23[8] = v16;
  v23[9] = v21;

  v24 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in static BTask.detached(name:operation:), v23);

  outlined destroy of TaskPriority?(v10);

  return v24;
}

uint64_t closure #1 in static BTask.detached(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static BTask.CommonLogger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v11[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001002B6A30, v11);
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "BTask.%{public}s Cancelling background task for: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = swift_beginAccess();
  *(a3 + 16) = 1;
  return result;
}

uint64_t specialized closure #2 in static BTask.detached(name:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(specialized closure #2 in static BTask.detached(name:operation:), 0, 0);
}

uint64_t specialized closure #2 in static BTask.detached(name:operation:)()
{
  v14 = v0;
  if (one-time initialization token for CommonLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static BTask.CommonLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001002B6A30, &v13);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "BTask.%{public}s Starting background task for: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v7 = v0[4];
  v8 = v0[6] + 16;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *(v9 + 16) = v8;
  v12 = (v7 + *v7);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = specialized closure #2 in static BTask.detached(name:operation:);

  return v12(partial apply for closure #1 in closure #2 in static BTask.detached(name:operation:), v9);
}

{

  return _swift_task_switch(specialized closure #2 in static BTask.detached(name:operation:), 0, 0);
}

{
  v10 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001002B6A30, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "BTask.%{public}s Finishing background task for: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v0[11] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(specialized closure #2 in static BTask.detached(name:operation:), v7, v6);
}

{
  v1 = *(v0 + 88);

  *(v0 + 104) = [v1 sharedApplication];

  return _swift_task_switch(specialized closure #2 in static BTask.detached(name:operation:), 0, 0);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t specialized BTask.init(name:operation:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = one-time initialization token for CommonLogger;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static BTask.CommonLogger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136446466;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001002B6A70, aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "BTask.%{public}s Creating background task for: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = [objc_opt_self() sharedApplication];
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v16;
  aBlock[4] = partial apply for closure #1 in BTask.init(name:operation:);
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24_0;
  v20 = _Block_copy(aBlock);

  v21 = [v17 beginBackgroundTaskWithName:v18 expirationHandler:v20];
  _Block_release(v20);

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  v23[8] = v16;
  v23[9] = v21;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in BTask.init(name:operation:), v23);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #2 in static BTask.detached(name:operation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return specialized closure #2 in static BTask.detached(name:operation:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015A4A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_15(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_2Tm_1()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t objectdestroy_5Tm_0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t partial apply for specialized closure #2 in BTask.init(name:operation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return specialized closure #2 in BTask.init(name:operation:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #2 in BTask.init(name:operation:)()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *v1;
}

void *MOSuggestionStateOfMindAssetView.__allocating_init(image:assignedTileSize:frame:valenceClassificationAndReflectiveInterval:reflectiveInterval:labels:labelsShortened:domains:domainsShortened:associatedColorsLight:associatedColorsDark:startDate:)(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v77 = v20;
  v29 = objc_allocWithZone(v20);
  *&v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors] = 0;
  *&v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient] = 0;
  v30 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabel;
  *&v29[v30] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.primaryLabel();
  v31 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabel;
  *&v29[v31] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(&selRef_secondaryLabelColor);
  v32 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabel;
  *&v29[v32] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(&selRef_tertiaryLabelColor);
  v33 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_labelStack;
  v34 = [objc_allocWithZone(UIStackView) init];
  [v34 setAxis:1];
  [v34 setSpacing:1.0];
  [v34 setAlignment:1];
  *&v29[v33] = v34;
  v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_assignedTileSize] = a2;
  v35 = &v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_valenceClassificationAndReflectiveInterval];
  *v35 = a3;
  v35[1] = a4;
  *&v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsLight] = a18;
  *&v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsDark] = a19;
  v36 = objc_opt_self();
  v75 = a4;

  v76 = v36;
  v37 = [v36 mainBundle];
  v80._object = 0x80000001002B2F20;
  v38._countAndFlagsBits = 0x206E6F69746F6D45;
  v38._object = 0xAD0000402520B7C2;
  v39._object = 0x80000001002B2F00;
  v80._countAndFlagsBits = 0xD000000000000046;
  v39._countAndFlagsBits = 0x1000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v37, v38, v80);

  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  v40 = static MODateFormatter.shortTimeFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v42 = [v40 stringForObjectValue:isa];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = a15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1002A48B0;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v48 + 32) = v43;
  *(v48 + 40) = v45;
  v49 = static String.localizedStringWithFormat(_:_:)();
  v51 = v50;

  if (a5 == 2)
  {

    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v53 = &v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabelText];
  *v53 = v49;
  v53[1] = v51;
  if (a7)
  {
    v54 = HIBYTE(a7) & 0xF;
    if ((a7 & 0x2000000000000000) == 0)
    {
      v54 = a6 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {

      v55 = a6;
      v56 = a8;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v56 = 0;
  a13 = 0xE000000000000000;
  a7 = v75;
  v55 = a3;
LABEL_16:
  v57 = &v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelText];
  *v57 = v55;
  v57[1] = a7;
  v58 = &v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelTextShortened];
  *v58 = v56;
  v58[1] = a13;
  if (!a15)
  {
LABEL_22:
    a16 = 0;
    v46 = v51;
    a17 = 0xE000000000000000;
    goto LABEL_23;
  }

  v59 = HIBYTE(a15) & 0xF;
  if ((a15 & 0x2000000000000000) == 0)
  {
    v59 = a14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {

    goto LABEL_22;
  }

  v49 = a14;
LABEL_23:

  v61 = &v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelText];
  *v61 = v49;
  v61[1] = v46;
  v62 = &v29[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelTextShortened];
  *v62 = a16;
  v62[1] = a17;
  v79.receiver = v29;
  v79.super_class = v77;
  v63 = objc_msgSendSuper2(&v79, "initWithFrame:", a9, a10, a11, a12);
  [v63 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1002A48B0;
  *(v64 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v64 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v65 = (*((swift_isaMask & *v63) + 0x198))(a1);
  (*((swift_isaMask & *v63) + 0x190))(v65);
  [v63 setIsAccessibilityElement:1];
  v66 = [v76 mainBundle];
  v81._object = 0x80000001002B2F70;
  v67._countAndFlagsBits = 0x666F206574617453;
  v67._object = 0xED0000646E696D20;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0xD00000000000002CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v81);

  v69 = String._bridgeToObjectiveC()();

  [v63 setAccessibilityLabel:v69];

  v70 = type metadata accessor for Date();
  (*(*(v70 - 8) + 8))(a20, v70);
  return v63;
}

id closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.primaryLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  [v0 setFont:isa];
  v3 = v0;
  [v3 setOverrideUserInterfaceStyle:1];
  v4 = [objc_opt_self() labelColor];
  v5 = [v4 colorWithAlphaComponent:0.6];

  [v3 setTextColor:v5];
  [v3 setPreferredVibrancy:1];
  [v3 setTextAlignment:4];
  [v3 setLineBreakMode:4];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  [v3 setNumberOfLines:2];
  return v3;
}

id MOSuggestionStateOfMindAssetView.primaryLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionStateOfMindAssetView.primaryLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionStateOfMindAssetView.secondaryLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionStateOfMindAssetView.secondaryLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(SEL *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v2 setFont:v3];

  v4 = v2;
  [v4 setOverrideUserInterfaceStyle:1];
  v5 = [objc_opt_self() *a1];
  [v4 setTextColor:v5];

  [v4 setLineBreakMode:4];
  [v4 setTextAlignment:4];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setNumberOfLines:2];
  [v4 setPreferredVibrancy:1];
  [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  return v4;
}

id MOSuggestionStateOfMindAssetView.typeLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionStateOfMindAssetView.typeLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MOSuggestionStateOfMindAssetView.labelStack.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_labelStack;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionStateOfMindAssetView.labelStack.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_labelStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *MOSuggestionStateOfMindAssetView.init(image:assignedTileSize:frame:valenceClassificationAndReflectiveInterval:reflectiveInterval:labels:labelsShortened:domains:domainsShortened:associatedColorsLight:associatedColorsDark:startDate:)(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  *&v20[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors] = 0;
  *&v20[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient] = 0;
  v30 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabel;
  *&v20[v30] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.primaryLabel();
  v31 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabel;
  *&v20[v31] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(&selRef_secondaryLabelColor);
  v32 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabel;
  *&v20[v32] = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(&selRef_tertiaryLabelColor);
  v33 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_labelStack;
  v34 = [objc_allocWithZone(UIStackView) init];
  [v34 setAxis:1];
  [v34 setSpacing:1.0];
  [v34 setAlignment:1];
  *&v20[v33] = v34;
  v20[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_assignedTileSize] = a2;
  v35 = &v20[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_valenceClassificationAndReflectiveInterval];
  v73 = a3;
  *v35 = a3;
  *(v35 + 1) = a4;
  *&v20[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsLight] = a18;
  *&v20[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsDark] = a19;
  v36 = objc_opt_self();

  v76 = v36;
  v37 = [v36 mainBundle];
  v79._object = 0x80000001002B2F20;
  v38._countAndFlagsBits = 0x206E6F69746F6D45;
  v38._object = 0xAD0000402520B7C2;
  v39._object = 0x80000001002B2F00;
  v79._countAndFlagsBits = 0xD000000000000046;
  v39._countAndFlagsBits = 0x1000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v37, v38, v79);

  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  v40 = static MODateFormatter.shortTimeFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v42 = [v40 stringForObjectValue:isa];

  if (v42)
  {
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = a15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1002A48B0;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v48 + 32) = v43;
  *(v48 + 40) = v45;
  v49 = static String.localizedStringWithFormat(_:_:)();
  v51 = v50;

  if (a5 == 2)
  {

    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v53 = &v21[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabelText];
  *v53 = v49;
  v53[1] = v51;
  if (a7)
  {
    v54 = HIBYTE(a7) & 0xF;
    if ((a7 & 0x2000000000000000) == 0)
    {
      v54 = a6 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {

      v55 = a6;
      v56 = a8;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v56 = 0;
  a13 = 0xE000000000000000;
  a7 = a4;
  v55 = v73;
LABEL_16:
  v57 = &v21[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelText];
  *v57 = v55;
  *(v57 + 1) = a7;
  v58 = &v21[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelTextShortened];
  *v58 = v56;
  *(v58 + 1) = a13;
  if (!a15)
  {
LABEL_22:
    a16 = 0;
    v46 = v51;
    a17 = 0xE000000000000000;
    goto LABEL_23;
  }

  v59 = HIBYTE(a15) & 0xF;
  if ((a15 & 0x2000000000000000) == 0)
  {
    v59 = a14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {

    goto LABEL_22;
  }

  v49 = a14;
LABEL_23:

  v61 = &v21[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelText];
  *v61 = v49;
  v61[1] = v46;
  v62 = &v21[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelTextShortened];
  *v62 = a16;
  *(v62 + 1) = a17;
  v78.receiver = v21;
  v78.super_class = type metadata accessor for MOSuggestionStateOfMindAssetView();
  v63 = objc_msgSendSuper2(&v78, "initWithFrame:", a9, a10, a11, a12);
  [v63 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1002A48B0;
  *(v64 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v64 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v65 = (*((swift_isaMask & *v63) + 0x198))(a1);
  (*((swift_isaMask & *v63) + 0x190))(v65);
  [v63 setIsAccessibilityElement:1];
  v66 = [v76 mainBundle];
  v80._object = 0x80000001002B2F70;
  v67._countAndFlagsBits = 0x666F206574617453;
  v67._object = 0xED0000646E696D20;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0xD00000000000002CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v80);

  v69 = String._bridgeToObjectiveC()();

  [v63 setAccessibilityLabel:v69];

  v70 = type metadata accessor for Date();
  (*(*(v70 - 8) + 8))(a20, v70);
  return v63;
}

Swift::Void __swiftcall MOSuggestionStateOfMindAssetView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors) = *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsLight);

    v4 = (*((swift_isaMask & *v0) + 0x128))(v3);
    v5 = objc_opt_self();
    v6 = [v5 labelColor];
    v7 = [v6 colorWithAlphaComponent:0.6];

    [v4 setTextColor:v7];
    v8 = (*((swift_isaMask & *v0) + 0x140))();
    v9 = [v5 secondaryLabelColor];
    [v8 setTextColor:v9];

    v10 = (*((swift_isaMask & *v0) + 0x158))();
    v11 = [v5 tertiaryLabelColor];
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors) = *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColorsDark);

    v13 = (*((swift_isaMask & *v0) + 0x128))(v12);
    v14 = objc_opt_self();
    v15 = [v14 whiteColor];
    v16 = [v15 colorWithAlphaComponent:0.6];

    [v13 setTextColor:v16];
    v17 = (*((swift_isaMask & *v0) + 0x140))();
    v18 = [v14 whiteColor];
    v19 = [v18 colorWithAlphaComponent:0.6];

    [v17 setTextColor:v19];
    v10 = (*((swift_isaMask & *v0) + 0x158))();
    v20 = [v14 whiteColor];
    v11 = [v20 colorWithAlphaComponent:0.6];
  }

  [v10 setTextColor:v11];

  v21 = *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient);
  if (!v21)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002A4A00;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CGColorRefaSgMd);
  *(v22 + 56) = v23;
  v24 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors;
  v25 = *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors);
  if (!v25)
  {
    goto LABEL_14;
  }

  if (v25 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_14:
    *(v22 + 32) = 0;
    v30 = v21;
    goto LABEL_15;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v35 = v21;

    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v26 = *(v25 + 32);
    v27 = v21;
    v28 = v26;
  }

  v29 = [v28 CGColor];

  *(v22 + 32) = v29;
LABEL_15:
  *(v22 + 88) = v23;
  v31 = *(v0 + v24);
  if (v31)
  {
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (v32)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_18:
        v33 = v32 - 1;
        if (!__OFSUB__(v32, 1))
        {
          if ((v31 & 0xC000000000000001) == 0)
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v33 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v34 = *(v31 + v33 + 4);
LABEL_23:
              v31 = [v34 CGColor];

              goto LABEL_26;
            }

            __break(1u);
            return;
          }

LABEL_32:

          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          goto LABEL_23;
        }

        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    v31 = 0;
  }

LABEL_26:
  *(v22 + 64) = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 setColors:isa];
}

Swift::Void __swiftcall MOSuggestionStateOfMindAssetView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOSuggestionStateOfMindAssetView();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    [v2 setFrame:?];
  }
}

Swift::Void __swiftcall MOSuggestionStateOfMindAssetView.makeUIView(image:)(UIImage image)
{
  v3 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v3];

  type metadata accessor for MOSuggestionRoundView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [objc_allocWithZone(UIImageView) initWithImage:image.super.isa];
  v6 = [objc_allocWithZone(UIView) init];
  v7 = [objc_allocWithZone(CAGradientLayer) init];
  v8 = [v6 layer];
  [v8 addSublayer:v7];

  v9 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient);
  *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient) = v7;
  v280 = v7;

  v282 = v6;
  [v1 addSubview:v6];
  v10 = v5;
  [v10 setContentMode:1];
  v11 = v4;
  [v11 addSubview:v10];
  [v1 addSubview:v11];
  v12 = [v10 heightAnchor];
  v13 = [v11 heightAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 multiplier:0.99];

  [v14 setActive:1];
  v15 = [v10 widthAnchor];

  v16 = [v11 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:0.99];

  [v17 setActive:1];
  v18 = [v10 superview];
  if (v18)
  {
    v19 = v18;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v10 centerYAnchor];
    v21 = [v19 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:0.0];
    [v22 setActive:1];
  }

  v23 = [v10 superview];
  v281 = v10;
  if (!v23)
  {
LABEL_8:
    v28 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_assignedTileSize);
    if (v28 == 8)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v24 = v23;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [v10 centerXAnchor];
  v26 = [v24 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  [v27 setConstant:0.0];
  if (!v27)
  {

    goto LABEL_8;
  }

  [v27 setActive:1];

  v28 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_assignedTileSize);
  if (v28 == 8)
  {
    goto LABEL_13;
  }

LABEL_9:
  v29 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelTextShortened + 8);
  if (v29 && (!*(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelTextShortened) && v29 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_13:
    v30 = (*((swift_isaMask & *v1) + 0x128))();
    if (*(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabelText + 8))
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    [v30 setText:v31];

    if (v28 == 8)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v32 = (*((swift_isaMask & *v1) + 0x128))();
  if (v29)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  [v32 setText:v29];

LABEL_21:
  v33 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelTextShortened + 8);
  if (!v33 || (*(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelTextShortened) || v33 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v34 = (*((swift_isaMask & *v1) + 0x140))();
    if (!v33)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_25:
  v34 = (*((swift_isaMask & *v1) + 0x140))();
  if (*(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelText + 8))
  {
LABEL_28:
    v33 = String._bridgeToObjectiveC()();
    goto LABEL_30;
  }

  v33 = 0;
LABEL_30:
  [v34 setText:v33];

  v279 = *((swift_isaMask & *v1) + 0x158);
  v35 = v279();
  v285 = v11;
  v277 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabelText);
  v278 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabelText + 8);
  if (v278)
  {
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  [v35 setText:v36];

  v283 = *((swift_isaMask & *v1) + 0x128);
  v37 = v283();
  v38 = [v37 text];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v40 setLineSpacing:0.0];
    [v40 setLineBreakMode:4];
    [v40 setLineHeightMultiple:0.95];
    LODWORD(v41) = 0.5;
    [v40 setHyphenationFactor:v41];
    v42 = [v37 attributedText];
    if (v42)
    {
      v43 = v42;

      v44 = &selRef_initWithAttributedString_;
      v39 = v43;
    }

    else
    {
      v44 = &selRef_initWithString_;
    }

    v45 = [objc_allocWithZone(NSMutableAttributedString) *v44];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A00;
    *(inited + 32) = NSBaselineOffsetAttributeName;
    *(inited + 40) = 0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 72) = NSParagraphStyleAttributeName;
    *(inited + 104) = type metadata accessor for NSMutableParagraphStyle();
    *(inited + 80) = v40;
    v47 = NSBaselineOffsetAttributeName;
    v48 = NSParagraphStyleAttributeName;
    v49 = v40;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v45 addAttributes:isa range:{0, objc_msgSend(v45, "length")}];

    [v37 setAttributedText:v45];
  }

  else
  {
  }

  v284 = *((swift_isaMask & *v1) + 0x140);
  v51 = v284();
  v52 = [v51 text];
  if (v52)
  {
    v53 = v52;
    v54 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v54 setLineSpacing:0.0];
    [v54 setLineBreakMode:4];
    [v54 setLineHeightMultiple:0.95];
    LODWORD(v55) = 0.5;
    [v54 setHyphenationFactor:v55];
    v56 = [v51 attributedText];
    if (v56)
    {
      v57 = v56;

      v58 = &selRef_initWithAttributedString_;
      v53 = v57;
    }

    else
    {
      v58 = &selRef_initWithString_;
    }

    v60 = [objc_allocWithZone(NSMutableAttributedString) *v58];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_1002A4A00;
    *(v61 + 32) = NSBaselineOffsetAttributeName;
    *(v61 + 40) = 0;
    *(v61 + 64) = &type metadata for CGFloat;
    *(v61 + 72) = NSParagraphStyleAttributeName;
    *(v61 + 104) = type metadata accessor for NSMutableParagraphStyle();
    *(v61 + 80) = v54;
    v62 = NSBaselineOffsetAttributeName;
    v63 = NSParagraphStyleAttributeName;
    v64 = v54;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v61);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v65 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v60 addAttributes:v65 range:{0, objc_msgSend(v60, "length")}];

    [v51 setAttributedText:v60];
    if (v28 <= 4)
    {
      v59 = v285;
      if (v28 == 2)
      {
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    v59 = v285;
    if ((v28 - 6) >= 2)
    {
      goto LABEL_64;
    }

LABEL_75:
    v125 = [v59 superview];
    if (v125)
    {
      v126 = v125;
      [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
      v127 = [v59 leadingAnchor];
      v128 = [v126 leadingAnchor];
      v129 = [v127 constraintEqualToAnchor:v128];

      [v129 setConstant:8.0];
      [v129 setActive:1];
    }

    v130 = [v59 superview];
    if (v130)
    {
      v131 = v130;
      [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
      v132 = [v59 topAnchor];
      v133 = [v131 topAnchor];
      v134 = [v132 constraintEqualToAnchor:v133];

      [v134 setConstant:8.0];
      [v134 setActive:1];
    }

    v135 = [v59 widthAnchor];

    v136 = [v59 heightAnchor];
    v137 = [v135 constraintEqualToAnchor:v136];

    [v137 setActive:1];
    [v1 frame];
    v139 = v138 + -16.0;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v140 = [v59 widthAnchor];
    v141 = [v140 constraintEqualToConstant:v139];

    [v141 setActive:1];
    v142 = [v59 superview];
    if (v142)
    {
      v143 = v142;
      [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
      v144 = [v59 bottomAnchor];
      v145 = [v143 bottomAnchor];
      v146 = [v144 constraintEqualToAnchor:v145];

      if (v146)
      {
        [v146 setConstant:-8.0];
        [v146 setActive:1];
      }
    }

    v147 = *((swift_isaMask & *v1) + 0x170);
    v148 = v147();
    v149 = v283();
    [v148 addArrangedSubview:v149];

    v151 = *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelText + 8);
    if (v278)
    {
      v150 = v277;
      if (v151)
      {
        if (v277 == *(v1 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabelText) && v278 == v151 || (v150 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v150 & 1) != 0))
        {
LABEL_96:
          v162 = v147();
          v163 = v279();
          [v162 addArrangedSubview:v163];

          v164 = v147();
          [v164 setTranslatesAutoresizingMaskIntoConstraints:0];

          v165 = v147();
          [v1 addSubview:v165];

          v166 = v147();
          [v166 setTranslatesAutoresizingMaskIntoConstraints:0];
          v167 = [v166 leadingAnchor];
          v168 = [v59 trailingAnchor];
          v169 = [v167 constraintEqualToAnchor:v168];

          p_align = &stru_100327FE8.align;
          [v169 setConstant:8.0];
          [v169 setActive:1];

          v171 = v147();
          v172 = [v171 superview];
          if (v172)
          {
            v173 = v172;
            [v171 setTranslatesAutoresizingMaskIntoConstraints:0];
            v174 = [v171 centerYAnchor];
            v175 = [v173 centerYAnchor];
            v176 = [v174 constraintEqualToAnchor:v175];

            [v176 setConstant:0.0];
            if (v176)
            {
              [v176 setActive:1];
            }

            p_align = (&stru_100327FE8 + 24);
          }

          else
          {
            v176 = 0;
            v173 = v171;
          }

          v177 = v147();
          v178 = [v177 superview];
          if (v178)
          {
            v179 = v178;
            [v177 *(p_align + 222)];
            v180 = [v177 trailingAnchor];
            v181 = [v179 trailingAnchor];
            v182 = [v180 constraintEqualToAnchor:v181];

            [v182 setConstant:-8.0];
LABEL_106:
            [v182 setActive:1];

            return;
          }

          goto LABEL_107;
        }
      }
    }

    else if (!v151)
    {
      goto LABEL_96;
    }

    v160 = (v147)(v150);
    v161 = v284();
    [v160 addArrangedSubview:v161];

    goto LABEL_96;
  }

  v59 = v285;

  if (v28 <= 4)
  {
    if (v28 == 2)
    {
      goto LABEL_62;
    }

LABEL_48:
    if (v28 != 3)
    {
      if (v28 == 4)
      {
        v66 = [v59 superview];
        if (v66)
        {
          v67 = v66;
          [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
          v68 = [v59 leadingAnchor];
          v69 = [v67 leadingAnchor];
          v70 = [v68 constraintEqualToAnchor:v69];

          [v70 setConstant:8.0];
          [v70 setActive:1];
        }

        v71 = [v59 superview];
        if (v71)
        {
          v72 = v71;
          [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
          v73 = [v59 topAnchor];
          v74 = [v72 topAnchor];
          v75 = [v73 constraintEqualToAnchor:v74];

          [v75 setConstant:8.0];
          [v75 setActive:1];
        }

        v76 = [v59 widthAnchor];

        v77 = [v59 heightAnchor];
        v78 = [v76 constraintEqualToAnchor:v77];

        [v78 setActive:1];
        [v1 frame];
        v80 = v79 + -16.0;
        [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
        v81 = [v59 widthAnchor];
        v82 = [v81 constraintEqualToConstant:v80];

        [v82 setActive:1];
        v83 = [v59 superview];
        if (v83)
        {
          v84 = v83;
          [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
          v85 = [v59 bottomAnchor];
          v86 = [v84 bottomAnchor];
          v87 = [v85 constraintEqualToAnchor:v86];

          if (v87)
          {
            [v87 setConstant:-8.0];
            [v87 setActive:1];
          }
        }

        v88 = *((swift_isaMask & *v1) + 0x170);
        v89 = v88();
        v90 = v283();
        [v89 addArrangedSubview:v90];

        v91 = v88();
        v92 = v284();
        [v91 addArrangedSubview:v92];

        v93 = v88();
        [v93 setTranslatesAutoresizingMaskIntoConstraints:0];

        v94 = v88();
        [v1 addSubview:v94];

        v95 = v88();
        [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
        v96 = [v95 leadingAnchor];
        v97 = [v59 trailingAnchor];
        v98 = [v96 constraintEqualToAnchor:v97];

        [v98 setConstant:8.0];
        [v98 setActive:1];

        v99 = v88();
        v100 = [v99 superview];
        if (v100)
        {
          v101 = v100;
          [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
          v102 = [v99 centerYAnchor];
          v103 = [v101 centerYAnchor];
          v104 = [v102 constraintEqualToAnchor:v103];

          [v104 setConstant:0.0];
          if (v104)
          {
            [v104 setActive:1];
          }
        }

        else
        {
          v104 = 0;
          v101 = v99;
        }

        v177 = v88();
        v183 = [v177 superview];
        if (v183)
        {
          v179 = v183;
          [v177 setTranslatesAutoresizingMaskIntoConstraints:0];
          v184 = [v177 trailingAnchor];
          v185 = [v179 trailingAnchor];
          v182 = [v184 constraintEqualToAnchor:v185];

          [v182 setConstant:-5.0];
          goto LABEL_106;
        }

LABEL_107:

        goto LABEL_108;
      }

LABEL_89:

LABEL_108:
      return;
    }

LABEL_62:

    UIView.fillSuper(horizontalMargin:verticalMargin:)(8.0, 8.0);

    return;
  }

  if ((v28 - 6) < 2)
  {
    goto LABEL_75;
  }

LABEL_64:
  if (v28 == 5)
  {

    v152 = v283();
    [v1 addSubview:v152];

    v153 = v284();
    [v1 addSubview:v153];

    v154 = v283();
    v155 = [v154 superview];
    if (v155)
    {
      v156 = v155;
      [v154 setTranslatesAutoresizingMaskIntoConstraints:0];
      v157 = [v154 topAnchor];
      v158 = [v156 topAnchor];
      v159 = [v157 constraintEqualToAnchor:v158];

      [v159 setConstant:12.0];
      if (v159)
      {
        [v159 setActive:1];
      }
    }

    else
    {
      v159 = 0;
      v156 = v154;
    }

    v186 = v283();
    v187 = [v186 superview];
    if (v187)
    {
      v188 = v187;
      [v186 setTranslatesAutoresizingMaskIntoConstraints:0];
      v189 = [v186 leadingAnchor];
      v190 = [v188 leadingAnchor];
      v191 = [v189 constraintEqualToAnchor:v190];

      [v191 setConstant:12.0];
      if (v191)
      {
        [v191 setActive:1];
      }
    }

    else
    {
      v191 = 0;
      v188 = v186;
    }

    v192 = v283();
    v193 = [v192 superview];
    if (v193)
    {
      v194 = v193;
      [v192 setTranslatesAutoresizingMaskIntoConstraints:0];
      v195 = [v192 trailingAnchor];
      v196 = [v194 trailingAnchor];
      v197 = [v195 constraintEqualToAnchor:v196];

      [v197 setConstant:-12.0];
      if (v197)
      {
        [v197 setActive:1];
      }
    }

    else
    {
      v197 = 0;
      v194 = v192;
    }

    v198 = v283();
    [v198 setTextAlignment:1];

    v199 = v284();
    v200 = [v199 superview];
    if (v200)
    {
      v201 = v200;
      [v199 setTranslatesAutoresizingMaskIntoConstraints:0];
      v202 = [v199 bottomAnchor];
      v203 = [v201 bottomAnchor];
      v204 = [v202 constraintEqualToAnchor:v203];

      if (v204)
      {
        [v204 setConstant:-12.0];
        [v204 setActive:1];
      }
    }

    else
    {
      v204 = 0;
      v201 = v199;
    }

    v205 = v284();
    v206 = [v205 superview];
    if (v206)
    {
      v207 = v206;
      [v205 setTranslatesAutoresizingMaskIntoConstraints:0];
      v208 = [v205 leadingAnchor];
      v209 = [v207 leadingAnchor];
      v210 = [v208 constraintEqualToAnchor:v209];

      [v210 setConstant:12.0];
      if (v210)
      {
        [v210 setActive:1];
      }
    }

    else
    {
      v210 = 0;
      v207 = v205;
    }

    v211 = v284();
    v212 = [v211 superview];
    if (v212)
    {
      v213 = v212;
      [v211 setTranslatesAutoresizingMaskIntoConstraints:0];
      v214 = [v211 trailingAnchor];
      v215 = [v213 trailingAnchor];
      v216 = [v214 constraintEqualToAnchor:v215];

      [v216 setConstant:-12.0];
      if (v216)
      {
        [v216 setActive:1];
      }
    }

    else
    {
      v216 = 0;
      v213 = v211;
    }

    v217 = v284();
    [v217 setTextAlignment:1];

    v218 = [v59 superview];
    if (v218)
    {
      v219 = v218;
      [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
      v220 = [v59 centerXAnchor];
      v221 = [v219 centerXAnchor];
      v222 = [v220 constraintEqualToAnchor:v221];

      [v222 setConstant:0.0];
      [v222 setActive:1];
    }

    v223 = v283();
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v224 = [v59 topAnchor];
    v225 = [v223 bottomAnchor];
    v226 = [v224 constraintEqualToAnchor:v225];

    [v226 setConstant:5.0];
    [v226 setActive:1];

    v227 = v284();
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v228 = [v59 bottomAnchor];
    v229 = [v227 topAnchor];
    v230 = [v228 constraintEqualToAnchor:v229];

    [v230 setConstant:-5.0];
    [v230 setActive:1];

    goto LABEL_168;
  }

  if (v28 != 8)
  {
    goto LABEL_89;
  }

  v105 = v283;
  v106 = v283();
  [v1 addSubview:v106];

  v107 = v284();
  [v1 addSubview:v107];

  if (!specialized static MOSuggestionAssetTileSize.__derived_enum_equals(_:_:)(8u, 8u))
  {
LABEL_70:
    v119 = v105();
    v120 = [v119 superview];
    if (v120)
    {
      v121 = v120;
      [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
      v122 = [v119 topAnchor];
      v123 = [v121 topAnchor];
      v124 = [v122 constraintEqualToAnchor:v123];

      [v124 setConstant:12.0];
      if (v124)
      {
        [v124 setActive:1];
      }
    }

    else
    {
      v124 = 0;
      v121 = v119;
    }

    v231 = v283();
    v232 = [v231 superview];
    if (v232)
    {
      v233 = v232;
      [v231 setTranslatesAutoresizingMaskIntoConstraints:0];
      v234 = [v231 leadingAnchor];
      v235 = [v233 leadingAnchor];
      v236 = [v234 constraintEqualToAnchor:v235];

      [v236 setConstant:12.0];
      if (v236)
      {
        [v236 setActive:1];
      }
    }

    else
    {
      v236 = 0;
      v233 = v231;
    }

    v237 = v283();
    v238 = [v237 superview];
    if (v238)
    {
      v239 = v238;
      [v237 setTranslatesAutoresizingMaskIntoConstraints:0];
      v240 = [v237 trailingAnchor];
      v241 = [v239 trailingAnchor];
      v242 = [v240 constraintEqualToAnchor:v241];

      [v242 setConstant:-12.0];
      if (v242)
      {
        [v242 setActive:1];
      }

      v243 = v283;
    }

    else
    {
      v242 = 0;
      v239 = v237;
      v243 = v283;
    }

    v244 = v243();
    [v244 setTextAlignment:1];

    v245 = v284();
    v246 = [v245 superview];
    if (v246)
    {
      v247 = v246;
      [v245 setTranslatesAutoresizingMaskIntoConstraints:0];
      v248 = [v245 bottomAnchor];
      v249 = [v247 bottomAnchor];
      v250 = [v248 constraintEqualToAnchor:v249];

      if (v250)
      {
        [v250 setConstant:-12.0];
        [v250 setActive:1];
      }
    }

    else
    {
      v250 = 0;
      v247 = v245;
    }

    v251 = v284();
    v252 = [v251 superview];
    if (v252)
    {
      v253 = v252;
      [v251 setTranslatesAutoresizingMaskIntoConstraints:0];
      v254 = [v251 leadingAnchor];
      v255 = [v253 leadingAnchor];
      v256 = [v254 constraintEqualToAnchor:v255];

      [v256 setConstant:12.0];
      if (v256)
      {
        [v256 setActive:1];
      }
    }

    else
    {
      v256 = 0;
      v253 = v251;
    }

    v257 = v284();
    v258 = [v257 superview];
    if (v258)
    {
      v259 = v258;
      [v257 setTranslatesAutoresizingMaskIntoConstraints:0];
      v260 = [v257 trailingAnchor];
      v261 = [v259 trailingAnchor];
      v262 = [v260 constraintEqualToAnchor:v261];

      [v262 setConstant:-12.0];
      if (v262)
      {
        v263 = &stru_100327FE8.align;
        [v262 setActive:1];
        v264 = v285;
      }

      else
      {
        v264 = v285;
        v263 = &stru_100327FE8.align;
      }
    }

    else
    {
      v262 = 0;
      v259 = v257;
      v264 = v285;
      v263 = (&stru_100327FE8 + 24);
    }

    v265 = v284();
    [v265 setTextAlignment:1];

    v266 = [v264 superview];
    if (v266)
    {
      v267 = v266;
      [v264 setTranslatesAutoresizingMaskIntoConstraints:0];
      v268 = [v264 centerXAnchor];
      v269 = [v267 centerXAnchor];
      v270 = [v268 constraintEqualToAnchor:v269];

      [v270 setConstant:0.0];
      [v270 *(v263 + 270)];
    }

    v271 = v283();
    [v264 setTranslatesAutoresizingMaskIntoConstraints:0];
    v272 = [v264 topAnchor];
    v273 = [v271 bottomAnchor];
    v274 = [v272 constraintEqualToAnchor:v273];

    [v274 setConstant:5.0];
    [v274 *(v263 + 270)];

    v227 = v284();
    [v264 setTranslatesAutoresizingMaskIntoConstraints:0];
    v275 = [v264 bottomAnchor];
    v276 = [v227 topAnchor];
    v230 = [v275 constraintEqualToAnchor:v276];

    [v230 setConstant:-5.0];
    [v230 *(v263 + 270)];

LABEL_168:
    return;
  }

  v108 = v283();
  v109 = objc_opt_self();
  v110 = [v109 preferredFontForTextStyle:UIFontTextStyleBody];
  v111 = [v110 fontDescriptor];
  v112 = [v111 fontDescriptorWithSymbolicTraits:2];

  if (v112)
  {
    v113 = [v109 fontWithDescriptor:v112 size:0.0];

    [v108 setFont:v113];
    v114 = v284();
    v115 = [v109 preferredFontForTextStyle:UIFontTextStyleBody];
    v116 = [v115 fontDescriptor];
    v117 = [v116 fontDescriptorWithSymbolicTraits:2];

    if (v117)
    {
      v118 = [v109 fontWithDescriptor:v117 size:0.0];

      [v114 setFont:v118];
      v105 = v283;
      goto LABEL_70;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MOSuggestionStateOfMindAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionStateOfMindAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionStateOfMindAssetView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_associatedColors) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_gradient) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_primaryLabel;
  *(v0 + v1) = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.primaryLabel();
  v2 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_secondaryLabel;
  *(v0 + v2) = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(&selRef_secondaryLabelColor);
  v3 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_typeLabel;
  *(v0 + v3) = closure #1 in variable initialization expression of MOSuggestionStateOfMindAssetView.secondaryLabel(&selRef_tertiaryLabelColor);
  v4 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionStateOfMindAssetView_labelStack;
  v5 = [objc_allocWithZone(UIStackView) init];
  [v5 setAxis:1];
  [v5 setSpacing:1.0];
  [v5 setAlignment:1];
  *(v0 + v4) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for NSMutableParagraphStyle()
{
  result = lazy cache variable for type metadata for NSMutableParagraphStyle;
  if (!lazy cache variable for type metadata for NSMutableParagraphStyle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  }

  return result;
}

uint64_t sub_10015F3C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_10015F494@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t sub_10015F564@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_10015F634@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t specialized Sequence.sorted(by:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);

    goto LABEL_3;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (v6)
  {
    v7 = v6;
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5(v6, 0);

    specialized Array._copyContents(initializing:)((v2 + 4), v7, a1);
    v9 = v8;

    if (v9 == v7)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_3:
  v10 = v2;
  specialized MutableCollection<>.sort(by:)(&v10, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), type metadata accessor for MOResource, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  v3 = v10;
  if (v1)
  {
  }

  return v3;
}

{
  if (!(a1 >> 62))
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);

    goto LABEL_3;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (v6)
  {
    v7 = v6;
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5(v6, 0);

    specialized Array._copyContents(initializing:)((v2 + 4), v7, a1);
    v9 = v8;

    if (v9 == v7)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_3:
  v10 = v2;
  specialized MutableCollection<>.sort(by:)(&v10, specialized _ContiguousArrayBuffer._consumeAndCreateNew(), &type metadata accessor for Asset, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  v3 = v10;
  if (v1)
  {
  }

  return v3;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t MOEventBundle.asSuggestion.getter()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17SuggestionSubTypeOSgMd);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI14SuggestionTypeOSgMd);
  v1[11] = swift_task_alloc();
  type metadata accessor for Date();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17SuggestionRankingC18VisibilityCategoryOSgMd);
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for SuggestionRanking.VisibilityCategory();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(MOEventBundle.asSuggestion.getter, 0, 0);
}

{
  v34 = v0;
  v1 = MOEventBundle.suggestionRanking.getter();
  v0[22] = v1;
  if (!v1)
  {
LABEL_9:
    v9 = v0[2];
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[15];
      v13 = v0[16];
      v29 = v0[14];
      v30 = v0[4];
      v15 = v0[2];
      v31 = v0[3];
      v32 = v0[5];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315394;
      v18 = [v15 suggestionID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = UUID.uuidString.getter();
      v21 = v20;
      (*(v14 + 8))(v13, v29);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2048;
      v23 = [v15 interfaceType];

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "[asSuggestion] suppressed ineligible suggestion, id=%s, interfaceType=%lu", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);

      (*(v30 + 8))(v32, v31);
    }

    else
    {
      v25 = v0[4];
      v24 = v0[5];
      v27 = v0[2];
      v26 = v0[3];

      (*(v25 + 8))(v24, v26);
    }

    v28 = v0[1];

    return v28(0);
  }

  v2 = v1;
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  SuggestionRanking.visibilityCategory.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[18];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v6, &_s9MomentsUI17SuggestionRankingC18VisibilityCategoryOSgMd);
    goto LABEL_9;
  }

  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  if ((SuggestionRanking.VisibilityCategory.shouldBeVisible.getter() & 1) == 0)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    goto LABEL_9;
  }

  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = MOEventBundle.asSuggestion.getter;

  return MOEventBundle.assets.getter();
}

{
  v91 = v0;
  if (static DefaultsManager.Processing.shouldDropSuggestionsWithNoAssets.getter())
  {
    v1 = v0[24];
    if (!v1)
    {
      v18 = v0[22];
      (*(v0[20] + 8))(v0[21], v0[19]);

LABEL_33:
      v88 = 0;
      goto LABEL_34;
    }

    if (!(v1 >> 62))
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }

    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
LABEL_32:
      v68 = v0[22];
      (*(v0[20] + 8))(v0[21], v0[19]);

      goto LABEL_33;
    }
  }

LABEL_5:
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[2];
  v5 = [v4 suggestionID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  MOEventBundle.title.getter();
  v6 = [v4 displayStartDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v4 displayEndDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = objc_allocWithZone(type metadata accessor for DateRange());
  DateRange.init(startDate:endDate:)();
  MOEventBundle.suggestionRanking.getter();
  MOEventBundle.suggestionType.getter(v3);
  MOEventBundle.suggestionSubType.getter(v2);
  v9 = [v4 promptLanguages];
  if (!v9)
  {
LABEL_23:
    v81 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = _swiftEmptyArrayStorage;
  v90 = _swiftEmptyArrayStorage;
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v11 + 40;
    while (v14 < *(v11 + 16))
    {
      objc_allocWithZone(type metadata accessor for TemplatedString());

      TemplatedString.init(template:)();
      v12 = &v90;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v14;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v15 += 16;
      if (v13 == v14)
      {
        v12 = v90;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

LABEL_13:

  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_15:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v12 + 32);
  }

  v81 = v17;

LABEL_24:
  v19 = v0[14];
  v21 = v0[8];
  v20 = v0[9];
  v22 = *(v0[15] + 56);
  v22(v20, 1, 1, v19);
  v22(v21, 1, 1, v19);
  v23 = objc_allocWithZone(type metadata accessor for Suggestion());
  v71 = v20;
  v70 = v81;
  v24 = Suggestion.init(suggestionID:title:subtitle:dateRange:ranking:assets:suggestionType:suggestionSubType:prompt:transferID:id:)();
  type metadata accessor for CommonLogger();
  v25 = v0[2];
  if (!v24)
  {
    static CommonLogger.processing.getter();
    v43 = v25;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[21];
    v89 = v0[22];
    v49 = v0[19];
    v48 = v0[20];
    if (v46)
    {
      v87 = v0[19];
      v51 = v0[15];
      v50 = v0[16];
      v74 = v0[14];
      v78 = v0[4];
      v83 = v0[3];
      v85 = v0[7];
      v52 = v0[2];
      v80 = v0[21];
      v53 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v90 = v76;
      *v53 = 136315394;
      v54 = [v52 suggestionID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = UUID.uuidString.getter();
      v57 = v56;
      (*(v51 + 8))(v50, v74);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v90);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2048;
      v59 = [v52 interfaceType];

      *(v53 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v44, v45, "[asSuggestion] failed to create suggestion, suggestionID=%s, interfaceType=%lu", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v76);

      (*(v78 + 8))(v85, v83);
      (*(v48 + 8))(v80, v87);
    }

    else
    {
      v64 = v0[7];
      v65 = v0[3];
      v66 = v0[4];
      v67 = v0[2];

      (*(v66 + 8))(v64, v65);
      (*(v48 + 8))(v47, v49);
    }

    goto LABEL_33;
  }

  v88 = v24;
  static CommonLogger.processing.getter();
  v26 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[21];
  v86 = v0[22];
  v32 = v0[19];
  v31 = v0[20];
  if (v29)
  {
    v34 = v0[15];
    v33 = v0[16];
    v72 = v0[14];
    v75 = v0[4];
    v79 = v0[3];
    v82 = v0[6];
    v84 = v0[21];
    v35 = v0[2];
    v77 = v0[19];
    v36 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v73;
    *v36 = 136315394;
    v37 = [v35 suggestionID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = UUID.uuidString.getter();
    v40 = v39;
    (*(v34 + 8))(v33, v72);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v90);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2048;
    v42 = [v35 interfaceType];

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v27, v28, "[asSuggestion] created suggestion, id=%s, interfaceType=%lu", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v73);

    (*(v75 + 8))(v82, v79);
    (*(v31 + 8))(v84, v77);
  }

  else
  {
    v60 = v0[6];
    v61 = v0[3];
    v62 = v0[4];
    v63 = v0[2];

    (*(v62 + 8))(v60, v61);
    (*(v31 + 8))(v30, v32);
  }

LABEL_34:

  v69 = v0[1];

  return v69(v88);
}

uint64_t MOEventBundle.asSuggestion.getter(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(MOEventBundle.asSuggestion.getter, 0, 0);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v14, a3, a4, a5);
  return specialized ContiguousArray._endMutation()();
}

uint64_t MOEventBundle.suggestionRanking.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v61 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI17SuggestionRankingC18VisibilityCategoryOSgMd);
  __chkstk_darwin(v8 - 8);
  v9 = &selRef_data;
  v10 = [v0 rankingDictionary];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = 0xD000000000000017;
  v65 = 0x80000001002B6760;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v14 & 1) == 0))
  {

    outlined destroy of AnyHashable(v66);
LABEL_14:
    v67 = 0u;
    v68 = 0u;
    goto LABEL_15;
  }

  outlined init with copy of Any(*(v12 + 56) + 32 * v13, &v67);
  outlined destroy of AnyHashable(v66);

  if (!*(&v68 + 1))
  {
LABEL_15:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v63 = v66[0];
    v15 = [v1 rankingDictionary];
    if (v15)
    {
      v16 = v15;
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(&v67, "rankingScore");
      BYTE13(v67) = 0;
      HIWORD(v67) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v19 & 1) != 0))
      {
        outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v67);
        outlined destroy of AnyHashable(v66);

        v9 = &selRef_data;
        if (*(&v68 + 1))
        {
          v20 = swift_dynamicCast();
          v21 = v66[0];
          if (!v20)
          {
            v21 = 0;
          }

          v62 = v21;
          v22 = v20 ^ 1;
LABEL_26:
          LODWORD(v61) = v22;
          v40 = [v1 v9[252]];
          if (v40)
          {
            v41 = v40;
            v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v67 = 0x726F635365736162;
            *(&v67 + 1) = 0xE900000000000065;
            AnyHashable.init<A>(_:)();
            if (*(v42 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v44 & 1) != 0))
            {
              outlined init with copy of Any(*(v42 + 56) + 32 * v43, &v67);
              outlined destroy of AnyHashable(v66);

              v9 = &selRef_data;
              if (*(&v68 + 1))
              {
                swift_dynamicCast();
                goto LABEL_34;
              }
            }

            else
            {

              outlined destroy of AnyHashable(v66);
              v67 = 0u;
              v68 = 0u;
              v9 = &selRef_data;
            }
          }

          else
          {
            v67 = 0u;
            v68 = 0u;
          }

          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd);
LABEL_34:
          v45 = [v1 v9[252]];
          if (v45)
          {
            v46 = v45;
            v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v67 = 0xD000000000000013;
            *(&v67 + 1) = 0x80000001002AEF80;
            AnyHashable.init<A>(_:)();
            if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v66), (v49 & 1) != 0))
            {
              outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v67);
              outlined destroy of AnyHashable(v66);

              v9 = &selRef_data;
              if (*(&v68 + 1))
              {
                swift_dynamicCast();
                goto LABEL_42;
              }
            }

            else
            {

              outlined destroy of AnyHashable(v66);
              v67 = 0u;
              v68 = 0u;
              v9 = &selRef_data;
            }
          }

          else
          {
            v67 = 0u;
            v68 = 0u;
          }

          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd);
LABEL_42:
          v50 = [v1 v9[252]];
          if (v50)
          {
            v51 = v50;
            v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *&v67 = 0xD00000000000001BLL;
            *(&v67 + 1) = 0x80000001002B6CF0;
            AnyHashable.init<A>(_:)();
            if (*(v52 + 16))
            {
              v53 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
              if (v54)
              {
                outlined init with copy of Any(*(v52 + 56) + 32 * v53, &v67);
                outlined destroy of AnyHashable(v66);

                if (*(&v68 + 1))
                {
                  swift_dynamicCast();
                  goto LABEL_50;
                }

LABEL_49:
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd);
LABEL_50:
                v55 = [v1 rankingDictionary];
                if (v55)
                {
                  v56 = v55;
                  v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                  *&v67 = 0x7469736E65537369;
                  *(&v67 + 1) = 0xEB00000000657669;
                  AnyHashable.init<A>(_:)();
                  if (*(v57 + 16))
                  {
                    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
                    if (v59)
                    {
                      outlined init with copy of Any(*(v57 + 56) + 32 * v58, &v67);
                      outlined destroy of AnyHashable(v66);

                      if (*(&v68 + 1))
                      {
                        swift_dynamicCast();
LABEL_58:
                        SuggestionRanking.VisibilityCategory.init(rawValue:)();
                        v60 = objc_allocWithZone(type metadata accessor for SuggestionRanking());
                        return SuggestionRanking.init(rankingScore:baseScore:visibilityCategory:goodnessScore:isSensitive:ordinalRankInRecommendedTab:)();
                      }

LABEL_57:
                      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd);
                      goto LABEL_58;
                    }
                  }

                  outlined destroy of AnyHashable(v66);
                }

                v67 = 0u;
                v68 = 0u;
                goto LABEL_57;
              }
            }

            outlined destroy of AnyHashable(v66);
          }

          v67 = 0u;
          v68 = 0u;
          goto LABEL_49;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v66);
        v67 = 0u;
        v68 = 0u;
        v9 = &selRef_data;
      }
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v67, &_sypSgMd);
    v62 = 0;
    v22 = 1;
    goto LABEL_26;
  }

LABEL_16:
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v23 = v1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v26 = 136315650;
    v27 = [v23 suggestionID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = UUID.uuidString.getter();
    v30 = v29;
    (*(v61 + 8))(v4, v2);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v66);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2048;
    v32 = [v23 interfaceType];

    *(v26 + 14) = v32;
    *(v26 + 22) = 2080;
    v33 = [v23 rankingDictionary];
    if (v33)
    {
      v34 = v33;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = Dictionary.description.getter();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v66);

    *(v26 + 24) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "[suggestionRanking] malformed ranking dictionary, id=%s, interfaceType=%lu, rankingDictionary=%s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v62 + 8))(v7, v63);
  return 0;
}

uint64_t MOEventBundle.assets.getter()
{
  v1[3] = v0;
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(MOEventBundle.assets.getter, 0, 0);
}

{
  v503 = v0;
  v1 = v0;
  v2 = [*(v0 + 24) resources];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for MOResource();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = specialized Sequence.sorted(by:)(v4);
    v1[39] = v5;

    if (v5 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
LABEL_4:
        v6 = v1[3];
        v1[2] = _swiftEmptyArrayStorage;
        v7 = &selRef_data;
        v8 = [v6 suggestionID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v9 = [v6 promptLanguages];
        if (v9)
        {
          v10 = v9;
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v11 = 0;
        }

        v12 = v1[38];
        v13 = v1[35];
        v14 = v1[36];
        v15 = specialized static MOEventBundle.constructedReflectionAssets(resources:suggestionID:promptLanguages:)(v5, v12, v11);

        v16 = *(v14 + 8);
        v1[40] = v16;
        v1[41] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v16(v12, v13);
        v17 = v1[3];
        v496 = v5;
        v497 = v1;
        v501 = v16;
        if (v15)
        {

          specialized Array.append<A>(contentsOf:)(v18);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v19 = v17;

          v20 = v19;
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v498 = swift_slowAlloc();
            v502[0] = v498;
            *v23 = 134218498;
            if (v15 >> 62)
            {
              v24 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v25 = v1[37];
            v26 = v1[35];
            v457 = v1[9];
            v465 = v1[8];
            v480 = v1[34];
            v27 = v1[3];
            *(v23 + 4) = v24;

            *(v23 + 12) = 2080;
            v28 = [v27 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v29 = UUID.uuidString.getter();
            v31 = v30;
            v501(v25, v26);
            v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v502);
            v1 = v497;

            *(v23 + 14) = v32;

            *(v23 + 22) = 2048;
            v33 = [v27 interfaceType];

            *(v23 + 24) = v33;

            _os_log_impl(&_mh_execute_header, v21, v22, "[assets] mapped reflection assets, count=%ld, suggestionID=%s, interfaceType=%lu", v23, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v498);

            v7 = &selRef_data;

            v16 = v501;
            v34 = *(v457 + 8);
            v34(v480, v465);
          }

          else
          {
            v51 = v1[34];
            v53 = v1[8];
            v52 = v1[9];
            v54 = v1[3];

            swift_bridgeObjectRelease_n();
            v34 = *(v52 + 8);
            v34(v51, v53);
            v16 = v501;
          }
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v35 = v17;
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = v1[37];
            v39 = v1[35];
            v499 = v1[33];
            v40 = v1[9];
            v481 = v1[8];
            v41 = v1[3];
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v502[0] = v43;
            *v42 = 136315394;
            v44 = [v41 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v45 = UUID.uuidString.getter();
            v47 = v46;
            v501(v38, v39);
            v48 = v45;
            v1 = v497;
            v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v502);
            v16 = v501;

            *(v42 + 4) = v49;

            *(v42 + 12) = 2048;
            v50 = [v41 interfaceType];

            *(v42 + 14) = v50;
            _os_log_impl(&_mh_execute_header, v36, v37, "[assets] no constructed reflection assets, suggestionID=%s, interfaceType=%lu", v42, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v43);
            v5 = v496;

            v34 = *(v40 + 8);
            v34(v499, v481);
            v7 = &selRef_data;
          }

          else
          {
            v55 = v1[33];
            v57 = v1[8];
            v56 = v1[9];
            v58 = v1[3];

            v34 = *(v56 + 8);
            v34(v55, v57);
          }
        }

        v500 = v34;
        v1[42] = v34;
        v59 = v1[37];
        v60 = v1[35];
        v61 = [v1[3] v7[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = specialized static MOEventBundle.constructedLocationAsset(resources:suggestionID:)(v5, v59);
        v16(v59, v60);
        v63 = v1[3];
        if (v62)
        {

          specialized Array.append<A>(contentsOf:)(v64);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v65 = v63;

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v482 = swift_slowAlloc();
            v502[0] = v482;
            *v68 = 134218498;
            if (v62 >> 62)
            {
              v69 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v69 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v70 = v1[37];
            v71 = v1[35];
            v458 = v1[8];
            v466 = v1[32];
            v72 = v1[3];
            *(v68 + 4) = v69;

            *(v68 + 12) = 2080;
            v73 = [v72 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v74 = UUID.uuidString.getter();
            v76 = v75;
            v501(v70, v71);
            v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v502);
            v1 = v497;

            *(v68 + 14) = v77;

            *(v68 + 22) = 2048;
            v78 = [v72 interfaceType];

            *(v68 + 24) = v78;

            _os_log_impl(&_mh_execute_header, v66, v67, "[assets] mapped location assets, count=%ld, suggestionID=%s, interfaceType=%lu", v68, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v482);

            v7 = &selRef_data;

            v16 = v501;
            v500(v466, v458);
            v5 = v496;
          }

          else
          {
            v96 = v1[32];
            v97 = v1[8];
            v98 = v1[3];

            swift_bridgeObjectRelease_n();
            v500(v96, v97);
            v16 = v501;
          }
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v79 = v63;
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = v1[37];
            v83 = v1[35];
            v467 = v1[8];
            v483 = v1[31];
            v84 = v1[3];
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v502[0] = v86;
            *v85 = 136315394;
            v87 = [v84 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v88 = UUID.uuidString.getter();
            v90 = v89;
            v501(v82, v83);
            v91 = v88;
            v1 = v497;
            v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v90, v502);
            v16 = v501;

            *(v85 + 4) = v92;

            *(v85 + 12) = 2048;
            v93 = [v84 interfaceType];

            *(v85 + 14) = v93;
            _os_log_impl(&_mh_execute_header, v80, v81, "[assets] no constructed location assets, suggestionID=%s, interfaceType=%lu", v85, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v86);
            v5 = v496;

            v7 = &selRef_data;
            v95 = v467;
            v94 = v483;
          }

          else
          {
            v99 = v1[31];
            v100 = v1[8];
            v101 = v1[3];

            v94 = v99;
            v95 = v100;
          }

          v500(v94, v95);
        }

        v102 = v1[37];
        v103 = v1[35];
        v104 = [v1[3] v7[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v105 = specialized static MOEventBundle.constructedWorkoutAssets(resources:suggestionID:)(v5, v102);
        v16(v102, v103);
        v106 = v1[3];
        if (v105)
        {

          specialized Array.append<A>(contentsOf:)(v107);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v108 = v106;
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v109, v110))
          {
            v140 = v1[30];
            v141 = v1[8];
            v142 = v1[3];

            v500(v140, v141);
            v16 = v501;
            goto LABEL_35;
          }

          v111 = v1[37];
          v112 = v1[35];
          v468 = v1[8];
          v484 = v1[30];
          v113 = v1[3];
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v502[0] = v115;
          *v114 = 136315394;
          v116 = [v113 v7[253]];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v117 = UUID.uuidString.getter();
          v119 = v118;
          v501(v111, v112);
          v120 = v117;
          v7 = &selRef_data;
          v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, v502);

          *(v114 + 4) = v121;

          *(v114 + 12) = 2048;
          v122 = [v113 interfaceType];

          *(v114 + 14) = v122;

          _os_log_impl(&_mh_execute_header, v109, v110, "[assets] mapped workout assets,  suggestionID=%s, interfaceType=%lu", v114, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v115);
          v1 = v497;

          v5 = v496;

          v16 = v501;
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v123 = v106;
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v124, v125))
          {
            v143 = v1[29];
            v144 = v1[8];
            v145 = v1[3];

            v138 = v143;
            v139 = v144;
            goto LABEL_34;
          }

          v126 = v1[37];
          v127 = v1[35];
          v468 = v1[8];
          v484 = v1[29];
          v128 = v1[3];
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v502[0] = v130;
          *v129 = 136315394;
          v131 = [v128 suggestionID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v132 = UUID.uuidString.getter();
          v134 = v133;
          v501(v126, v127);
          v135 = v132;
          v1 = v497;
          v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v134, v502);
          v16 = v501;

          *(v129 + 4) = v136;

          *(v129 + 12) = 2048;
          v137 = [v128 interfaceType];

          *(v129 + 14) = v137;
          v5 = v496;
          _os_log_impl(&_mh_execute_header, v124, v125, "[assets] no constructed workout assets, suggestionID=%s, interfaceType=%lu", v129, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v130);

          v7 = &selRef_data;
        }

        v139 = v468;
        v138 = v484;
LABEL_34:
        v500(v138, v139);
LABEL_35:
        v146 = v1[37];
        v147 = v1[35];
        v148 = [v1[3] v7[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v149 = specialized static MOEventBundle.constructedMotionActivityAssets(resources:suggestionID:)(v5, v146);
        v16(v146, v147);
        v150 = v1[3];
        if (v149)
        {

          specialized Array.append<A>(contentsOf:)(v151);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v152 = v150;

          v153 = Logger.logObject.getter();
          v154 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            v485 = swift_slowAlloc();
            v502[0] = v485;
            *v155 = 134218498;
            if (v149 >> 62)
            {
              v156 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v156 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v157 = v1[37];
            v158 = v1[35];
            v459 = v1[8];
            v469 = v1[28];
            v159 = v1[3];
            *(v155 + 4) = v156;

            *(v155 + 12) = 2080;
            v160 = [v159 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v161 = UUID.uuidString.getter();
            v163 = v162;
            v501(v157, v158);
            v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v163, v502);
            v1 = v497;

            *(v155 + 14) = v164;

            *(v155 + 22) = 2048;
            v165 = [v159 interfaceType];

            *(v155 + 24) = v165;

            _os_log_impl(&_mh_execute_header, v153, v154, "[assets] mapped motion assets, count=%ld, suggestionID=%s, interfaceType=%lu", v155, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v485);

            v7 = &selRef_data;

            v16 = v501;
            v500(v469, v459);
            v5 = v496;
          }

          else
          {
            v183 = v1[28];
            v184 = v1[8];
            v185 = v1[3];

            swift_bridgeObjectRelease_n();
            v500(v183, v184);
            v16 = v501;
          }
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v166 = v150;
          v167 = Logger.logObject.getter();
          v168 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v167, v168))
          {
            v169 = v1[37];
            v170 = v1[35];
            v470 = v1[8];
            v486 = v1[27];
            v171 = v1[3];
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v502[0] = v173;
            *v172 = 136315394;
            v174 = [v171 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v175 = UUID.uuidString.getter();
            v177 = v176;
            v501(v169, v170);
            v178 = v175;
            v1 = v497;
            v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v177, v502);
            v16 = v501;

            *(v172 + 4) = v179;

            *(v172 + 12) = 2048;
            v180 = [v171 interfaceType];

            *(v172 + 14) = v180;
            v5 = v496;
            _os_log_impl(&_mh_execute_header, v167, v168, "[assets] no constructed motion assets, suggestionID=%s, interfaceType=%lu", v172, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v173);

            v7 = &selRef_data;
            v182 = v470;
            v181 = v486;
          }

          else
          {
            v186 = v1[27];
            v187 = v1[8];
            v188 = v1[3];

            v181 = v186;
            v182 = v187;
          }

          v500(v181, v182);
        }

        v189 = v1[37];
        v190 = v1[35];
        v191 = [v1[3] v7[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v192 = specialized static MOEventBundle.constructedFirstPartyMediaAssets(resources:suggestionID:)(v5, v189);
        v16(v189, v190);
        v193 = v1[3];
        if (v192)
        {

          specialized Array.append<A>(contentsOf:)(v194);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v195 = v193;

          v196 = Logger.logObject.getter();
          v197 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v487 = swift_slowAlloc();
            v502[0] = v487;
            *v198 = 134218498;
            if (v192 >> 62)
            {
              v199 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v199 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v200 = v1[37];
            v201 = v1[35];
            v460 = v1[8];
            v471 = v1[26];
            v202 = v1[3];
            *(v198 + 4) = v199;

            *(v198 + 12) = 2080;
            v203 = [v202 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v204 = UUID.uuidString.getter();
            v206 = v205;
            v501(v200, v201);
            v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, v502);
            v1 = v497;

            *(v198 + 14) = v207;

            *(v198 + 22) = 2048;
            v208 = [v202 interfaceType];

            *(v198 + 24) = v208;

            _os_log_impl(&_mh_execute_header, v196, v197, "[assets] mapped 1P media assets, count=%ld, suggestionID=%s, interfaceType=%lu", v198, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v487);

            v7 = &selRef_data;

            v16 = v501;
            v500(v471, v460);
            v5 = v496;
          }

          else
          {
            v226 = v1[26];
            v227 = v1[8];
            v228 = v1[3];

            swift_bridgeObjectRelease_n();
            v500(v226, v227);
            v16 = v501;
          }
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v209 = v193;
          v210 = Logger.logObject.getter();
          v211 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v210, v211))
          {
            v212 = v1[37];
            v213 = v1[35];
            v472 = v1[8];
            v488 = v1[25];
            v214 = v1[3];
            v215 = swift_slowAlloc();
            v216 = swift_slowAlloc();
            v502[0] = v216;
            *v215 = 136315394;
            v217 = [v214 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v218 = UUID.uuidString.getter();
            v220 = v219;
            v501(v212, v213);
            v221 = v218;
            v1 = v497;
            v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v221, v220, v502);
            v16 = v501;

            *(v215 + 4) = v222;

            *(v215 + 12) = 2048;
            v223 = [v214 interfaceType];

            *(v215 + 14) = v223;
            v5 = v496;
            _os_log_impl(&_mh_execute_header, v210, v211, "[assets] no constructed 1P media assets, suggestionID=%s, interfaceType=%lu", v215, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v216);

            v7 = &selRef_data;
            v225 = v472;
            v224 = v488;
          }

          else
          {
            v229 = v1[25];
            v230 = v1[8];
            v231 = v1[3];

            v224 = v229;
            v225 = v230;
          }

          v500(v224, v225);
        }

        v232 = v1[37];
        v233 = v1[35];
        v234 = [v1[3] v7[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v235 = specialized static MOEventBundle.constructedThirdPartyMediaAssets(resources:suggestionID:)(v5, v232);
        v16(v232, v233);
        v236 = v1[3];
        if (v235)
        {

          specialized Array.append<A>(contentsOf:)(v237);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v238 = v236;

          v239 = Logger.logObject.getter();
          v240 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v239, v240))
          {
            v241 = swift_slowAlloc();
            v489 = swift_slowAlloc();
            v502[0] = v489;
            *v241 = 134218498;
            if (v235 >> 62)
            {
              v242 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v242 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v243 = v1[37];
            v244 = v1[35];
            v461 = v1[8];
            v473 = v1[24];
            v245 = v1[3];
            *(v241 + 4) = v242;

            *(v241 + 12) = 2080;
            v246 = [v245 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v247 = UUID.uuidString.getter();
            v249 = v248;
            v501(v243, v244);
            v250 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v247, v249, v502);
            v1 = v497;

            *(v241 + 14) = v250;

            *(v241 + 22) = 2048;
            v251 = [v245 interfaceType];

            *(v241 + 24) = v251;

            _os_log_impl(&_mh_execute_header, v239, v240, "[assets] mapped 3P media assets, count=%ld, suggestionID=%s, interfaceType=%lu", v241, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v489);

            v7 = &selRef_data;

            v16 = v501;
            v500(v473, v461);
            v5 = v496;
          }

          else
          {
            v269 = v1[24];
            v270 = v1[8];
            v271 = v1[3];

            swift_bridgeObjectRelease_n();
            v500(v269, v270);
            v16 = v501;
          }
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v252 = v236;
          v253 = Logger.logObject.getter();
          v254 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v253, v254))
          {
            v255 = v1[37];
            v256 = v1[35];
            v474 = v1[8];
            v490 = v1[23];
            v257 = v1[3];
            v258 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v502[0] = v259;
            *v258 = 136315394;
            v260 = [v257 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v261 = UUID.uuidString.getter();
            v263 = v262;
            v501(v255, v256);
            v264 = v261;
            v1 = v497;
            v265 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v264, v263, v502);
            v16 = v501;

            *(v258 + 4) = v265;

            *(v258 + 12) = 2048;
            v266 = [v257 interfaceType];

            *(v258 + 14) = v266;
            v5 = v496;
            _os_log_impl(&_mh_execute_header, v253, v254, "[assets] no constructed 3P media assets, suggestionID=%s, interfaceType=%lu", v258, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v259);

            v7 = &selRef_data;
            v268 = v474;
            v267 = v490;
          }

          else
          {
            v272 = v1[23];
            v273 = v1[8];
            v274 = v1[3];

            v267 = v272;
            v268 = v273;
          }

          v500(v267, v268);
        }

        v275 = v1[37];
        v276 = v1[35];
        v277 = [v1[3] v7[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v278 = specialized static MOEventBundle.constructedStateOfMindAssets(resources:suggestionID:)(v5, v275);
        v16(v275, v276);
        v279 = v1[3];
        if (v278)
        {

          specialized Array.append<A>(contentsOf:)(v280);
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v281 = v279;

          v282 = Logger.logObject.getter();
          v283 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v282, v283))
          {
            v284 = swift_slowAlloc();
            v285 = swift_slowAlloc();
            v502[0] = v285;
            *v284 = 134218498;
            if (v278 >> 62)
            {
              v286 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v286 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v287 = v1[37];
            v288 = v1[35];
            v475 = v1[8];
            v491 = v1[22];
            v289 = v1[3];
            *(v284 + 4) = v286;

            *(v284 + 12) = 2080;
            v290 = [v289 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v291 = UUID.uuidString.getter();
            v293 = v292;
            v501(v287, v288);
            v294 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v291, v293, v502);
            v1 = v497;

            *(v284 + 14) = v294;

            *(v284 + 22) = 2048;
            v295 = [v289 interfaceType];

            *(v284 + 24) = v295;

            _os_log_impl(&_mh_execute_header, v282, v283, "[assets] mapped State of Mind assets, count=%ld, suggestionID=%s, interfaceType=%lu", v284, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v285);

            v500(v491, v475);
            v5 = v496;
LABEL_76:
            if ([v1[3] bundleSuperType] != 3)
            {
              goto LABEL_88;
            }

            v317 = v1[37];
            v318 = v1[35];
            v320 = v1[6];
            v319 = v1[7];
            v321 = v1[4];
            v322 = v1[5];
            v323 = v1[3];
            v324 = [v323 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v325 = [v323 startDate];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v326 = [v323 endDate];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v327 = specialized static MOEventBundle.constructedContactAssets(resources:suggestionID:startDate:endDate:)(v5, v317, v319, v320);
            v328 = *(v322 + 8);
            v328(v320, v321);
            v328(v319, v321);
            v501(v317, v318);
            v329 = v1[3];
            if (v327)
            {

              specialized Array.append<A>(contentsOf:)(v330);
              type metadata accessor for CommonLogger();
              static CommonLogger.processing.getter();
              v331 = v329;

              v332 = Logger.logObject.getter();
              v333 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v332, v333))
              {
                v334 = swift_slowAlloc();
                v335 = swift_slowAlloc();
                v502[0] = v335;
                *v334 = 134218498;
                if (v327 >> 62)
                {
                  v336 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v336 = *((v327 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v337 = v1[37];
                v338 = v1[35];
                v477 = v1[8];
                v493 = v1[20];
                v339 = v1[3];
                *(v334 + 4) = v336;

                *(v334 + 12) = 2080;
                v340 = [v339 suggestionID];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v341 = UUID.uuidString.getter();
                v343 = v342;
                v501(v337, v338);
                v344 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v343, v502);
                v1 = v497;

                *(v334 + 14) = v344;

                *(v334 + 22) = 2048;
                v345 = [v339 interfaceType];

                *(v334 + 24) = v345;

                _os_log_impl(&_mh_execute_header, v332, v333, "[assets] mapped Contact assets, count=%ld, suggestionID=%s, interfaceType=%lu", v334, 0x20u);
                __swift_destroy_boxed_opaque_existential_0(v335);

                v500(v493, v477);
                v5 = v496;
LABEL_88:
                if ([v1[3] bundleSuperType] == 10)
                {
                  v367 = [v1[3] clusterMetadata];
                  if (v367 && (v368 = v367, v369 = [v367 phenotypePersonUUIDs], v368, v369))
                  {
                    v370 = v1[37];
                    v371 = v1[35];
                    v372 = v1[7];
                    v373 = v497[6];
                    v374 = v497[5];
                    v454 = v497[4];
                    v462 = v371;
                    v375 = v497[3];
                    v376 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    v378 = specialized _ArrayProtocol.filter(_:)(v377, v376);

                    v379 = [v375 suggestionID];
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v380 = [v375 startDate];
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v381 = [v375 endDate];
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v382 = specialized static MOEventBundle.constructedContactAssets(resources:suggestionID:startDate:endDate:)(v378, v370, v372, v373);
                    v383 = *(v374 + 8);
                    v384 = v373;
                    v1 = v497;
                    v383(v384, v454);
                    v383(v372, v454);
                    v501(v370, v462);
                    v385 = v497[3];
                    if (v382)
                    {

                      specialized Array.append<A>(contentsOf:)(v386);
                      type metadata accessor for CommonLogger();
                      static CommonLogger.processing.getter();
                      v387 = v385;

                      v388 = Logger.logObject.getter();
                      v389 = static os_log_type_t.info.getter();
                      if (os_log_type_enabled(v388, v389))
                      {
                        v390 = swift_slowAlloc();
                        v463 = swift_slowAlloc();
                        v502[0] = v463;
                        *v390 = 134218498;
                        if (v382 >> 62)
                        {
                          v391 = _CocoaArrayWrapper.endIndex.getter();
                        }

                        else
                        {
                          v391 = *((v382 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        v1 = v497;
                        v392 = v497[37];
                        v393 = v497[35];
                        v453 = v497[8];
                        v455 = v497[18];
                        v394 = v497[3];
                        *(v390 + 4) = v391;

                        *(v390 + 12) = 2080;
                        v395 = [v394 suggestionID];
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v396 = UUID.uuidString.getter();
                        v398 = v397;
                        v501(v392, v393);
                        v399 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v396, v398, v502);

                        *(v390 + 14) = v399;

                        *(v390 + 22) = 2048;
                        v400 = [v394 interfaceType];

                        *(v390 + 24) = v400;

                        v401 = &selRef_data;

                        _os_log_impl(&_mh_execute_header, v388, v389, "[assets] mapped Contact assets, count=%ld, suggestionID=%s, interfaceType=%lu", v390, 0x20u);
                        __swift_destroy_boxed_opaque_existential_0(v463);

                        v402 = v453;
                        v403 = v455;
                        goto LABEL_101;
                      }

                      v436 = v497[18];
                      v437 = v497[8];
                      v438 = v497[3];

                      swift_bridgeObjectRelease_n();
                    }

                    else
                    {
                      type metadata accessor for CommonLogger();
                      static CommonLogger.processing.getter();
                      v423 = v385;
                      v424 = Logger.logObject.getter();
                      v425 = static os_log_type_t.debug.getter();
                      if (os_log_type_enabled(v424, v425))
                      {
                        v426 = v497[37];
                        v452 = v497[35];
                        v456 = v497[8];
                        v464 = v497[17];
                        v427 = v497[3];
                        v428 = swift_slowAlloc();
                        v429 = swift_slowAlloc();
                        v502[0] = v429;
                        *v428 = 136315394;
                        v430 = [v427 suggestionID];
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v431 = UUID.uuidString.getter();
                        v433 = v432;
                        v501(v426, v452);
                        v434 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v431, v433, v502);

                        *(v428 + 4) = v434;

                        *(v428 + 12) = 2048;
                        v435 = [v427 interfaceType];

                        *(v428 + 14) = v435;

                        _os_log_impl(&_mh_execute_header, v424, v425, "[assets] no constructed Contact assets, suggestionID=%s, interfaceType=%lu", v428, 0x16u);
                        __swift_destroy_boxed_opaque_existential_0(v429);
                        v1 = v497;

                        v401 = &selRef_data;
                        v402 = v456;
                        v403 = v464;
LABEL_101:
                        v500(v403, v402);
                        v5 = v496;
                        goto LABEL_106;
                      }

                      v436 = v497[17];
                      v437 = v497[8];
                      v439 = v497[3];
                    }

                    v500(v436, v437);
                    v5 = v496;
                  }

                  else
                  {
                    v404 = v1[3];
                    type metadata accessor for CommonLogger();
                    static CommonLogger.processing.getter();
                    v405 = v404;
                    v406 = Logger.logObject.getter();
                    v407 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v406, v407))
                    {
                      v408 = v1[37];
                      v409 = v1[35];
                      v479 = v1[8];
                      v495 = v1[16];
                      v410 = v1[3];
                      v411 = swift_slowAlloc();
                      v412 = swift_slowAlloc();
                      v502[0] = v412;
                      *v411 = 136315394;
                      v413 = [v410 suggestionID];
                      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                      v414 = UUID.uuidString.getter();
                      v416 = v415;
                      v501(v408, v409);
                      v417 = v414;
                      v1 = v497;
                      v418 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v417, v416, v502);

                      *(v411 + 4) = v418;

                      *(v411 + 12) = 2048;
                      v419 = [v410 interfaceType];

                      *(v411 + 14) = v419;
                      v5 = v496;
                      _os_log_impl(&_mh_execute_header, v406, v407, "[assets] no phenotypePersonUUIDs for thematic summary. Skip constructing contact assets suggestionID=%s, interfaceType=%lu", v411, 0x16u);
                      __swift_destroy_boxed_opaque_existential_0(v412);

                      v401 = &selRef_data;
                      v500(v495, v479);
LABEL_106:
                      v1[43] = 0;
                      v440 = [v1[3] v401[253]];
                      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                      v441 = swift_task_alloc();
                      v1[44] = v441;
                      *v441 = v1;
                      v441[1] = MOEventBundle.assets.getter;
                      v442 = v1[37];

                      return (specialized static MOEventBundle.constructedPhotoAssets(resources:suggestionID:))(v5, v442);
                    }

                    v420 = v1[16];
                    v421 = v1[8];
                    v422 = v1[3];

                    v500(v420, v421);
                  }
                }

                v401 = &selRef_data;
                goto LABEL_106;
              }

              v363 = v1[20];
              v364 = v1[8];
              v365 = v1[3];

              swift_bridgeObjectRelease_n();
            }

            else
            {
              type metadata accessor for CommonLogger();
              static CommonLogger.processing.getter();
              v346 = v329;
              v347 = Logger.logObject.getter();
              v348 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v347, v348))
              {
                v349 = v1[37];
                v350 = v1[35];
                v478 = v1[8];
                v494 = v1[19];
                v351 = v1[3];
                v352 = swift_slowAlloc();
                v353 = swift_slowAlloc();
                v502[0] = v353;
                *v352 = 136315394;
                v354 = [v351 suggestionID];
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v355 = UUID.uuidString.getter();
                v357 = v356;
                v501(v349, v350);
                v358 = v355;
                v1 = v497;
                v359 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v358, v357, v502);

                *(v352 + 4) = v359;

                *(v352 + 12) = 2048;
                v360 = [v351 interfaceType];

                *(v352 + 14) = v360;
                v5 = v496;
                _os_log_impl(&_mh_execute_header, v347, v348, "[assets] no constructed Contact assets, suggestionID=%s, interfaceType=%lu", v352, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v353);

                v362 = v478;
                v361 = v494;
LABEL_87:
                v500(v361, v362);
                goto LABEL_88;
              }

              v363 = v1[19];
              v364 = v1[8];
              v366 = v1[3];
            }

            v361 = v363;
            v362 = v364;
            goto LABEL_87;
          }

          v313 = v1[22];
          v314 = v1[8];
          v315 = v1[3];

          swift_bridgeObjectRelease_n();
        }

        else
        {
          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v296 = v279;
          v297 = Logger.logObject.getter();
          v298 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v297, v298))
          {
            v299 = v1[37];
            v300 = v1[35];
            v476 = v1[8];
            v492 = v1[21];
            v301 = v1[3];
            v302 = swift_slowAlloc();
            v303 = swift_slowAlloc();
            v502[0] = v303;
            *v302 = 136315394;
            v304 = [v301 suggestionID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v305 = UUID.uuidString.getter();
            v307 = v306;
            v501(v299, v300);
            v308 = v305;
            v1 = v497;
            v309 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v308, v307, v502);

            *(v302 + 4) = v309;

            *(v302 + 12) = 2048;
            v310 = [v301 interfaceType];

            *(v302 + 14) = v310;
            v5 = v496;
            _os_log_impl(&_mh_execute_header, v297, v298, "[assets] no constructed State of Minda assets, suggestionID=%s, interfaceType=%lu", v302, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v303);

            v312 = v476;
            v311 = v492;
LABEL_75:
            v500(v311, v312);
            goto LABEL_76;
          }

          v313 = v1[21];
          v314 = v1[8];
          v316 = v1[3];
        }

        v311 = v313;
        v312 = v314;
        goto LABEL_75;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v444 = Logger.logObject.getter();
    v445 = static os_log_type_t.error.getter();
    v446 = os_log_type_enabled(v444, v445);
    v448 = v1[9];
    v447 = v1[10];
    v449 = v1[8];
    if (v446)
    {
      v450 = swift_slowAlloc();
      *v450 = 0;
      _os_log_impl(&_mh_execute_header, v444, v445, "[MOEventBundle.assets] cannot render bundle with 0 resources", v450, 2u);
    }

    (*(v448 + 8))(v447, v449);
  }

  v451 = v1[1];

  return v451(0);
}

{
  v140 = v0;
  v1 = *(v0 + 24);
  v2 = &selRef_data;
  if (!*(v0 + 360))
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 336);
    if (v24)
    {
      v130 = *(v0 + 320);
      v133 = *(v0 + 328);
      v26 = *(v0 + 296);
      v27 = *(v0 + 280);
      v135 = *(v0 + 72);
      v137 = *(v0 + 64);
      v138 = *(v0 + 112);
      v28 = *(v0 + 24);
      v134 = *(v0 + 336);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v139[0] = v30;
      *v29 = 136315394;
      v31 = [v28 suggestionID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = UUID.uuidString.getter();
      v34 = v33;
      v130(v26, v27);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v139);

      *(v29 + 4) = v35;

      *(v29 + 12) = 2048;
      v36 = [v28 interfaceType];

      *(v29 + 14) = v36;
      v2 = &selRef_data;
      _os_log_impl(&_mh_execute_header, v22, v23, "[assets] no constructed Photo assets, suggestionID=%s, interfaceType=%lu", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);

      v134(v138, v137);
    }

    else
    {
      v41 = *(v0 + 112);
      v42 = *(v0 + 64);
      v43 = *(v0 + 24);

      v25(v41, v42);
    }

    goto LABEL_10;
  }

  specialized Array.append<A>(contentsOf:)(v3);
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v5, v6))
  {
    v37 = *(v0 + 336);
    v38 = *(v0 + 120);
    v39 = *(v0 + 64);
    v40 = *(v0 + 24);

    swift_bridgeObjectRelease_n();
    v37(v38, v39);
    goto LABEL_10;
  }

  LODWORD(v138) = v6;
  v7 = *(v0 + 360);
  v8 = swift_slowAlloc();
  v137 = swift_slowAlloc();
  v139[0] = v137;
  *v8 = 134218498;
  if (v7 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v135 = *(v0 + 336);
    v10 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 280);
    v134 = *(v0 + 120);
    v133 = *(v0 + 64);
    v13 = *(v0 + 24);
    *(v8 + 4) = i;

    *(v8 + 12) = 2080;
    v14 = [v13 v2[253]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = UUID.uuidString.getter();
    v17 = v16;
    v10(v11, v12);
    v18 = v15;
    v2 = &selRef_data;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v139);

    *(v8 + 14) = v19;

    *(v8 + 22) = 2048;
    v20 = [v13 interfaceType];

    *(v8 + 24) = v20;

    _os_log_impl(&_mh_execute_header, v5, v138, "[assets] mapped Photo assets, count=%ld, suggestionID=%s, interfaceType=%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v137);

    (v135)(v134, v133);
LABEL_10:
    v44 = *(v0 + 320);
    v45 = *(v0 + 312);
    v46 = *(v0 + 296);
    v47 = *(v0 + 280);
    v48 = [*(v0 + 24) v2[253]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = specialized static MOEventBundle.constructedPosterAssets(resources:suggestionID:)(v45, v46);
    v44(v46, v47);
    v50 = *(v0 + 24);
    if (v49)
    {

      specialized Array.append<A>(contentsOf:)(v51);
      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      v52 = v50;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v139[0] = v137;
        *v55 = 134218498;
        LODWORD(v138) = v54;
        v56 = v49 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v135 = *(v0 + 336);
        v57 = *(v0 + 320);
        v58 = *(v0 + 296);
        v59 = *(v0 + 280);
        v134 = *(v0 + 104);
        v133 = *(v0 + 64);
        v60 = *(v0 + 24);
        *(v55 + 4) = v56;

        *(v55 + 12) = 2080;
        v61 = [v60 v2[253]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = UUID.uuidString.getter();
        v64 = v63;
        v57(v58, v59);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v139);

        *(v55 + 14) = v65;

        *(v55 + 22) = 2048;
        v66 = [v60 interfaceType];

        *(v55 + 24) = v66;

        _os_log_impl(&_mh_execute_header, v53, v138, "[assets] mapped Poster assets, count=%ld, suggestionID=%s, interfaceType=%lu", v55, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v137);

        (v135)(v134, v133);
      }

      else
      {
        v83 = *(v0 + 336);
        v84 = *(v0 + 104);
        v85 = *(v0 + 64);
        v86 = *(v0 + 24);

        swift_bridgeObjectRelease_n();
        v83(v84, v85);
      }
    }

    else
    {
      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      v67 = v50;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 336);
      if (v70)
      {
        v131 = *(v0 + 320);
        v133 = *(v0 + 328);
        v72 = *(v0 + 296);
        v73 = *(v0 + 280);
        v135 = *(v0 + 72);
        v137 = *(v0 + 64);
        v138 = *(v0 + 96);
        v74 = *(v0 + 24);
        v134 = *(v0 + 336);
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v139[0] = v76;
        *v75 = 136315394;
        v77 = [v74 suggestionID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v78 = UUID.uuidString.getter();
        v80 = v79;
        v131(v72, v73);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v139);

        *(v75 + 4) = v81;

        *(v75 + 12) = 2048;
        v82 = [v74 interfaceType];

        *(v75 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v68, v69, "[assets] no constructed Poster assets, suggestionID=%s, interfaceType=%lu", v75, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v76);

        v134(v138, v137);
      }

      else
      {
        v87 = *(v0 + 96);
        v88 = *(v0 + 64);
        v89 = *(v0 + 24);

        v71(v87, v88);
      }
    }

    v8 = *(v0 + 16);
    v2 = (v8 >> 62);
    if (v8 >> 62)
    {
      break;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_45;
    }

LABEL_21:
    v90 = specialized Sequence.sorted(by:)(v8);
    v5 = v90;
    if (v90 >> 62)
    {
      v91 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v92 = static DefaultsManager.Processing.numberOfAssetsMaxCount.getter();
    if (v92 >= v91)
    {
      v93 = v91;
    }

    else
    {
      v93 = v92;
    }

    if ((v93 & 0x8000000000000000) == 0)
    {
      v97 = specialized Array.subscript.getter(0, v93, v5);
      if ((v96 & 1) == 0)
      {
        goto LABEL_28;
      }

      v100 = v96;
      v101 = v95;
      v102 = v94;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v103 = swift_dynamicCastClass();
      if (!v103)
      {
        swift_unknownObjectRelease();
        v103 = _swiftEmptyArrayStorage;
      }

      v104 = v103[2];

      if (__OFSUB__(v100 >> 1, v101))
      {
        __break(1u);
      }

      else
      {
        if (v104 == (v100 >> 1) - v101)
        {
          v99 = swift_dynamicCastClass();
          if (!v99)
          {
            swift_unknownObjectRelease();
            v99 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v96 = v100;
          v95 = v101;
          v94 = v102;
LABEL_28:
          specialized _copyCollectionToContiguousArray<A>(_:)(v97, v94, v95, v96);
          v99 = v98;
        }

        v105 = *(v0 + 24);
        swift_unknownObjectRelease();
        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v106 = v105;
        swift_retain_n();
        v107 = v106;

        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.info.getter();
        v138 = v99;
        if (!os_log_type_enabled(v108, v109))
        {
          v136 = *(v0 + 336);
          v112 = *(v0 + 88);
          v113 = *(v0 + 64);
          v114 = *(v0 + 24);

          swift_bridgeObjectRelease_n();

          v136(v112, v113);
          goto LABEL_46;
        }

        v135 = v108;
        v101 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v139[0] = v110;
        *v101 = 134218754;
        v133 = v110;
        if (v2)
        {
          v111 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v111 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v101 + 4) = v111;

        *(v101 + 12) = 2048;
        v2 = &selRef_data;
        LOBYTE(v134) = v109;
        if ((v99 & 0x8000000000000000) == 0 && (v99 & 0x4000000000000000) == 0)
        {
          v115 = *(v99 + 16);
LABEL_43:
          v116 = *(v0 + 320);
          v117 = *(v0 + 296);
          v118 = *(v0 + 280);
          v129 = *(v0 + 88);
          v132 = *(v0 + 336);
          v128 = *(v0 + 64);
          v119 = *(v0 + 24);

          *(v101 + 14) = v115;

          *(v101 + 22) = 2080;
          v120 = [v119 v2[253]];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v121 = UUID.uuidString.getter();
          v123 = v122;
          v116(v117, v118);
          v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v139);

          *(v101 + 24) = v124;

          *(v101 + 32) = 2048;
          v125 = [v119 interfaceType];

          *(v101 + 34) = v125;

          _os_log_impl(&_mh_execute_header, v135, v134, "[assets] constructed assets, count=%ld,trimmed count=%ld suggestionID=%s, interfaceType=%lu", v101, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v133);

          v132(v129, v128);
          goto LABEL_46;
        }
      }

      v115 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_43;
    }

    __break(1u);
LABEL_51:
    ;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 1)
  {
    goto LABEL_21;
  }

LABEL_45:

  v138 = 0;
LABEL_46:

  v126 = *(v0 + 8);

  return v126(v138);
}