Swift::Int specialized MutableCollection<>.sort(by:)(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  *a1 = v7;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = (&v30 - v14);
  result = __chkstk_darwin(v13);
  v19 = (&v30 - v18);
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v31 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v36 = a3;
    v33 = v25;
    v34 = v24;
    v26 = v24;
    v35 = v22;
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25, v19);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v22, v15);
      v27 = v19[2];
      v28 = v15[2];
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
      if (v28 >= v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v22 = v35 + v31;
        v24 = v34 - 1;
        v25 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v12, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v36 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v8 = *(*(v36 - 8) + 64);
  v9 = __chkstk_darwin(v36);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24, v18);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v21, v14);
      v25 = *(v18 + 3);
      v26 = *(v14 + 3);
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v109 = a1;
  v119 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v115 = *(v119 - 8);
  v9 = *(v115 + 64);
  v10 = __chkstk_darwin(v119);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v118 = &v104 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = (&v104 - v15);
  result = __chkstk_darwin(v14);
  v19 = (&v104 - v18);
  v117 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v109;
    if (!*v109)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v22 = result;
    }

    v120 = v22;
    v100 = *(v22 + 2);
    if (v100 >= 2)
    {
      while (*v117)
      {
        v101 = *&v22[16 * v100];
        v102 = *&v22[16 * v100 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v117 + *(v115 + 72) * v101, *v117 + *(v115 + 72) * *&v22[16 * v100 + 16], *v117 + *(v115 + 72) * v102, v5);
        if (v6)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        if (v100 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v103 = &v22[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        v120 = v22;
        result = specialized Array.remove(at:)(v100 - 1);
        v22 = v120;
        v100 = *(v120 + 2);
        if (v100 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v107 = a4;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = v23;
      v26 = *v117;
      v27 = *(v115 + 72);
      v5 = *v117 + v27 * v24;
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v19);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v26 + v27 * v25, v16);
      v28 = v19[2];
      v29 = v16[2];
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
      v108 = v25;
      v30 = v25 + 2;
      v116 = v27;
      v31 = v26 + v27 * v30;
      while (v20 != v30)
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v31, v19);
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v16);
        v32 = v19[2];
        v33 = v16[2];
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
        result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
        ++v30;
        v31 += v116;
        v5 += v116;
        if (v29 < v28 == v33 >= v32)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v108;
      if (v29 < v28)
      {
        if (v20 < v108)
        {
          goto LABEL_123;
        }

        if (v108 < v20)
        {
          v105 = v22;
          v106 = v6;
          v34 = v116 * (v20 - 1);
          v35 = v20 * v116;
          v114 = v20;
          v36 = v20;
          v37 = v108;
          v38 = v108 * v116;
          do
          {
            if (v37 != --v36)
            {
              v5 = *v117;
              if (!*v117)
              {
                goto LABEL_129;
              }

              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5 + v38, v111);
              if (v38 < v34 || v5 + v38 >= v5 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v111, v5 + v34);
            }

            ++v37;
            v34 -= v116;
            v35 -= v116;
            v38 += v116;
          }

          while (v37 < v36);
          v22 = v105;
          v6 = v106;
          v23 = v108;
          v20 = v114;
        }
      }
    }

    v39 = v117[1];
    if (v20 < v39)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_122;
      }

      if (v20 - v23 < v107)
      {
        if (__OFADD__(v23, v107))
        {
          goto LABEL_124;
        }

        if (v23 + v107 >= v39)
        {
          v40 = v117[1];
        }

        else
        {
          v40 = v23 + v107;
        }

        if (v40 < v23)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v20 != v40)
        {
          break;
        }
      }
    }

    v41 = v20;
    if (v20 < v23)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v43 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v44 = &v22[16 * v43];
    *(v44 + 4) = v23;
    *(v44 + 5) = v41;
    v45 = *v109;
    if (!*v109)
    {
      goto LABEL_131;
    }

    v112 = v41;
    if (v43)
    {
      while (1)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v47 = *(v22 + 4);
          v48 = *(v22 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_52:
          if (v50)
          {
            goto LABEL_110;
          }

          v63 = &v22[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_113;
          }

          v69 = &v22[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_117;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v73 = &v22[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_66:
        if (v68)
        {
          goto LABEL_112;
        }

        v76 = &v22[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_115;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_73:
        v84 = v46 - 1;
        if (v46 - 1 >= v5)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v117)
        {
          goto LABEL_128;
        }

        v85 = *&v22[16 * v84 + 32];
        v5 = *&v22[16 * v46 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v117 + *(v115 + 72) * v85, *v117 + *(v115 + 72) * *&v22[16 * v46 + 32], *v117 + *(v115 + 72) * v5, v45);
        if (v6)
        {
        }

        if (v5 < v85)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        if (v84 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v86 = &v22[16 * v84];
        *(v86 + 4) = v85;
        *(v86 + 5) = v5;
        v120 = v22;
        result = specialized Array.remove(at:)(v46);
        v22 = v120;
        v5 = *(v120 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v22[16 * v5 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_108;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_109;
      }

      v58 = &v22[16 * v5];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_111;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_114;
      }

      if (v62 >= v54)
      {
        v80 = &v22[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v49 < v83)
        {
          v46 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v117[1];
    v21 = v112;
    if (v112 >= v20)
    {
      goto LABEL_94;
    }
  }

  v105 = v22;
  v106 = v6;
  v87 = *v117;
  v88 = *(v115 + 72);
  v89 = *v117 + v88 * (v20 - 1);
  v90 = v20;
  v91 = -v88;
  v108 = v23;
  v92 = v23 - v90;
  v114 = v90;
  v110 = v88;
  v93 = v87 + v90 * v88;
  v112 = v40;
LABEL_85:
  v5 = v93;
  v113 = v92;
  v94 = v92;
  v116 = v89;
  v95 = v89;
  while (1)
  {
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v19);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v95, v16);
    v96 = v19[2];
    v97 = v16[2];
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
    result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
    if (v97 >= v96)
    {
LABEL_84:
      v89 = v116 + v110;
      v92 = v113 - 1;
      v93 += v110;
      v41 = v112;
      if (++v114 != v112)
      {
        goto LABEL_85;
      }

      v22 = v105;
      v6 = v106;
      v23 = v108;
      if (v112 < v108)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    v98 = v118;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, v118);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v98, v95);
    v95 += v91;
    v5 += v91;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

{
  v107 = a1;
  v120 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v114 = *(v120 - 8);
  v7 = *(v114 + 64);
  v8 = __chkstk_darwin(v120);
  v110 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v119 = &v103 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v103 - v13;
  result = __chkstk_darwin(v12);
  v17 = &v103 - v16;
  v116 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_98:
    v4 = *v107;
    if (!*v107)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v14 = v118;
    if ((result & 1) == 0)
    {
LABEL_130:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v20 = result;
    }

    v121 = v20;
    v99 = *(v20 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = *&v20[16 * v99];
        v101 = *&v20[16 * v99 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * v100, *v116 + *(v114 + 72) * *&v20[16 * v99 + 16], *v116 + *(v114 + 72) * v101, v4);
        if (v14)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        if (v99 - 2 >= *(v20 + 2))
        {
          goto LABEL_124;
        }

        v102 = &v20[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        v121 = v20;
        result = specialized Array.remove(at:)(v99 - 1);
        v20 = v121;
        v99 = *(v121 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v105 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v111 = v14;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v22 = *v116;
      v23 = *(v114 + 72);
      v4 = *v116 + v23 * (v19 + 1);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v17);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v22 + v23 * v19, v14);
      v24 = *(v17 + 3);
      v112 = *(v14 + 3);
      v113 = v24;
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
      v106 = v19;
      v25 = v19 + 2;
      v115 = v23;
      v26 = v22 + v23 * (v19 + 2);
      while (v18 != v25)
      {
        LODWORD(v117) = v113 < v112;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v26, v17);
        v27 = v17;
        v28 = v111;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v111);
        v29 = *(v27 + 24);
        v30 = v18;
        v31 = v20;
        v32 = *(v28 + 24);
        v33 = v28;
        v17 = v27;
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v33);
        result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v27);
        v34 = v29 < v32;
        v20 = v31;
        v18 = v30;
        v35 = !v34;
        ++v25;
        v26 += v115;
        v4 += v115;
        if (((v117 ^ v35) & 1) == 0)
        {
          v18 = v25 - 1;
          break;
        }
      }

      v14 = v111;
      v21 = v106;
      if (v113 < v112)
      {
        if (v18 < v106)
        {
          goto LABEL_127;
        }

        if (v106 < v18)
        {
          v104 = v20;
          v36 = v115 * (v18 - 1);
          v37 = v18 * v115;
          v38 = v18;
          v39 = v106 * v115;
          do
          {
            if (v21 != --v38)
            {
              v117 = v38;
              v4 = *v116;
              if (!*v116)
              {
                goto LABEL_133;
              }

              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4 + v39, v110);
              if (v39 < v36 || v4 + v39 >= v4 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
                v38 = v117;
              }

              else
              {
                v38 = v117;
                if (v39 != v36)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v110, v4 + v36);
            }

            ++v21;
            v36 -= v115;
            v37 -= v115;
            v39 += v115;
          }

          while (v21 < v38);
          v20 = v104;
          v21 = v106;
        }
      }
    }

    v40 = v116[1];
    if (v18 < v40)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_126;
      }

      if (v18 - v21 < v105)
      {
        if (__OFADD__(v21, v105))
        {
          goto LABEL_128;
        }

        if (v21 + v105 >= v40)
        {
          v41 = v116[1];
        }

        else
        {
          v41 = v21 + v105;
        }

        if (v41 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v18 != v41)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v43 = *(v20 + 2);
    v42 = *(v20 + 3);
    v4 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v4;
    v44 = &v20[16 * v43];
    *(v44 + 4) = v21;
    *(v44 + 5) = v19;
    v45 = *v107;
    if (!*v107)
    {
      goto LABEL_135;
    }

    if (v43)
    {
      while (1)
      {
        v46 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v47 = *(v20 + 4);
          v48 = *(v20 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_55:
          if (v50)
          {
            goto LABEL_114;
          }

          v63 = &v20[16 * v4];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_117;
          }

          v69 = &v20[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_121;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v73 = &v20[16 * v4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_69:
        if (v68)
        {
          goto LABEL_116;
        }

        v76 = &v20[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_119;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_76:
        v84 = v46 - 1;
        if (v46 - 1 >= v4)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v116)
        {
          goto LABEL_132;
        }

        v85 = *&v20[16 * v84 + 32];
        v4 = *&v20[16 * v46 + 40];
        v86 = v118;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * v85, *v116 + *(v114 + 72) * *&v20[16 * v46 + 32], *v116 + *(v114 + 72) * v4, v45);
        v118 = v86;
        if (v86)
        {
        }

        if (v4 < v85)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        }

        if (v84 >= *(v20 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v20[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v4;
        v121 = v20;
        result = specialized Array.remove(at:)(v46);
        v20 = v121;
        v4 = *(v121 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v20[16 * v4 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_112;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_113;
      }

      v58 = &v20[16 * v4];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_115;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_118;
      }

      if (v62 >= v54)
      {
        v80 = &v20[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_122;
        }

        if (v49 < v83)
        {
          v46 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = v116[1];
    if (v19 >= v18)
    {
      goto LABEL_98;
    }
  }

  v104 = v20;
  v88 = v18;
  v89 = *v116;
  v90 = *(v114 + 72);
  v91 = *v116 + v90 * (v88 - 1);
  v92 = v21;
  v93 = -v90;
  v106 = v92;
  v94 = v92 - v88;
  v117 = v88;
  v108 = v90;
  v109 = v41;
  v4 = v89 + v88 * v90;
LABEL_88:
  v112 = v4;
  v113 = v94;
  v115 = v91;
  while (1)
  {
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v17);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v91, v14);
    v95 = *(v17 + 3);
    v96 = *(v14 + 3);
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
    if (v95 >= v96)
    {
LABEL_87:
      v19 = v109;
      v91 = v115 + v108;
      v94 = v113 - 1;
      v4 = v112 + v108;
      if (++v117 != v109)
      {
        goto LABEL_88;
      }

      v20 = v104;
      v21 = v106;
      if (v109 < v106)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v89)
    {
      break;
    }

    v97 = v119;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4, v119);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v97, v91);
    v91 += v93;
    v4 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v8 = *(*(v45 - 8) + 64);
  v9 = __chkstk_darwin(v45);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = (&v40 - v12);
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v49 = a1;
  v48 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v19;
    if (v19 >= 1)
    {
      v26 = -v15;
      v27 = a4 + v19;
      v43 = v26;
      v44 = a4;
      do
      {
        v41 = v25;
        v28 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v49 = a2;
            v25 = v41;
            goto LABEL_57;
          }

          v30 = a3;
          v42 = v25;
          a3 += v26;
          v31 = v27 + v26;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v31, v13);
          v32 = v28;
          v33 = v28;
          v34 = v13;
          v35 = v46;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v33, v46);
          v36 = *(v34 + 16);
          v37 = *(v35 + 16);
          v38 = v35;
          v13 = v34;
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v38);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v34);
          if (v37 < v36)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v31;
            }
          }

          v27 = v25;
          v29 = v31 > v44;
          v26 = v43;
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        if (v30 < a2 || a3 >= a2)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
        }

        else
        {
          v39 = v30 == a2;
          a2 = v32;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v42;
      }

      while (v27 > v44);
    }

LABEL_55:
    v49 = a2;
LABEL_57:
    v47 = v25;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v47 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      do
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a2, v13);
        v22 = v46;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a4, v46);
        v23 = v13[2];
        v24 = *(v22 + 16);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v22);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v49 = a1;
      }

      while (a4 < v20 && a2 < a3);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v49, &v48, &v47);
  return 1;
}

{
  v43 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v8 = *(*(v43 - 8) + 64);
  v9 = __chkstk_darwin(v43);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v44 = &v37 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        while (1)
        {
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v37;
            goto LABEL_58;
          }

          v29 = a3;
          v38 = v24;
          a3 += v25;
          v30 = v26 + v25;
          v31 = v26 + v25;
          v32 = v44;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v31, v44);
          v33 = v28;
          v34 = v45;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v28, v45);
          v35 = *(v32 + 24);
          v36 = *(v34 + 24);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v34);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v32);
          if (v35 < v36)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v33;
            v25 = v39;
            a1 = v40;
          }

          else
          {
            v28 = v33;
            v25 = v39;
            a1 = v40;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v30;
          v27 = v42;
          if (v30 <= v41)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v29 < v42 || a3 >= v42)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v33;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v48 = a2;
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v44;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a2, v44);
        v21 = v45;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a4, v45);
        v22 = *(v20 + 24);
        v23 = *(v21 + 24);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v21);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v20);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v48, &v47, &v46);
  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMd, &_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMd, &_ss18_DictionaryStorageCySiSay20MomentsUIServiceCore13MOMapLocationCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v20 = *v4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      specialized _NativeDictionary._delete(at:)(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v12 = *v2;

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v26 + v27 * (v25 | (v20 << 6)), v12);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v12, v15);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
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
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
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

uint64_t specialized MOSuggestionAssetMapsClusterer.distanceMatrix(clusters:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = *(*a1 + 16);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v4[2] = v2;
    memset_pattern16(v4 + 4, &unk_1AC90, 8 * v2);
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 0;
    v4 = _swiftEmptyArrayStorage;
  }

  v6 = _sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5Tf4gn_n(v4, v5);

  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = v8 - 1;
    if (v8 == 1)
    {
      return v6;
    }

    v10 = 0;
    v31 = v1;
    v32 = v1 + 8;
    v11 = 5;
    v12 = 1;
    v13 = v8 - 1;
    v29 = v8 - 1;
    v30 = *(v1 + 16);
    while (v10 != v9)
    {
      v14 = *(v1 + 16);
      if (v8 > v14 || v10 + 1 >= v14)
      {
        goto LABEL_32;
      }

      v33 = v10 + 1;
      v16 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = *(v16 + 72);
      v19 = (v1 + v17 + v18 * v10);
      v34 = v12;
      v35 = v11;
      v20 = (v32 + v17 + v18 * v12);
      v21 = v13;
      do
      {
        v22 = *v19;
        v23 = v19[1];
        v25 = *(v20 - 1);
        v24 = *v20;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v6 = result;
        }

        if (v10 >= v6[2])
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v26 = v6[v10 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v6[v10 + 4] = v26;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          v26 = result;
          v6[v10 + 4] = result;
        }

        if ((v11 - 4) >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        v27 = (v22 - v25) * (v22 - v25) + (v23 - v24) * (v23 - v24);
        *(v26 + 8 * v11) = v27;
        if ((v11 - 4) >= v6[2])
        {
          goto LABEL_29;
        }

        v28 = v6[v11];
        result = swift_isUniquelyReferenced_nonNull_native();
        v6[v11] = v28;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
          v28 = result;
          v6[v11] = result;
        }

        if (v10 >= *(v28 + 16))
        {
          goto LABEL_30;
        }

        *(v28 + 8 * v10 + 32) = v27;
        ++v11;
        v20 = (v20 + v18);
        --v21;
      }

      while (v21);
      --v13;
      v11 = v35 + 1;
      v12 = v34 + 1;
      ++v10;
      v9 = v29;
      v8 = v30;
      v1 = v31;
      if (v33 == v29)
      {
        return v6;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram()() & 1;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "&\b");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v20 = xmmword_1AC80;
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v9, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = v20;
      v22 = 0;
      v23 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v12._countAndFlagsBits = 0x616E6964726F6F63;
      v12._object = 0xED0000203A736574;
      String.append(_:)(v12);
      v21 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SdtMd, &_sSd_SdtMR);
      _print_unlocked<A, B>(_:_:)();
      v13._countAndFlagsBits = 0x6E6174736964202CLL;
      v13._object = 0xEC000000203A6563;
      String.append(_:)(v13);
      countAndFlagsBits = v7[1]._countAndFlagsBits;
      Double.write<A>(to:)();
      v15._countAndFlagsBits = 0x3A746E756F63202CLL;
      v15._object = 0xE900000000000020;
      String.append(_:)(v15);
      v21._countAndFlagsBits = v7[1]._object;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 0x3A6E69616863202CLL;
      v17._object = 0xE900000000000020;
      String.append(_:)(v17);
      String.append(_:)(v7[2]);
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v7);
      v18 = v22;
      v19 = v23;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 32) = v18;
      *(v11 + 40) = v19;
      print(_:separator:terminator:)();

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_187FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_68.segname[swift_isaMask & **a1])();
  *a2 = result;
  return result;
}

uint64_t sub_18858(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *&stru_68.segname[(swift_isaMask & **a2) + 8];

  return v3(v4);
}

uint64_t sub_188BC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_68.size + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

uint64_t sub_18918(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(&stru_68.offset + (swift_isaMask & **a2));

  return v3(v4);
}

uint64_t sub_18990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18A50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MOSuggestionAssetMapsClusterer.Cluster()
{
  type metadata accessor for (Double, Double)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GEOMapItem?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (Double, Double)()
{
  if (!lazy cache variable for type metadata for (Double, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Double, Double));
    }
  }
}

void type metadata accessor for GEOMapItem?()
{
  if (!lazy cache variable for type metadata for GEOMapItem?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo10GEOMapItem_pMd, &_sSo10GEOMapItem_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GEOMapItem?);
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}