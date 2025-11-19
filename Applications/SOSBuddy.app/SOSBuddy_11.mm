Swift::Int sub_1000F3A94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10019D07C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 < v11)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1000F4C88(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1000F3BF0(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = type metadata accessor for TargetTracks.TimePoint(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100356188);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v48 - v17;
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  v21 = [v1 startsAt];
  v54 = v13;
  v50 = v20;
  if (v21)
  {
    v49 = v9;
    v22 = v1;
    v23 = v20;
    v24 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = v13;
    v26 = *(v13 + 32);
    v26(v11, v18, v12);
    v27 = *(v25 + 56);
    v27(v11, 0, 1, v12);
    v28 = v23;
    v1 = v22;
    v9 = v49;
    v26(v28, v11, v12);
  }

  else
  {
    v27 = *(v13 + 56);
    v27(v11, 1, 1, v12);
    Date.init()();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_100008FA0(v11, &qword_100356188);
    }
  }

  v29 = [v1 endsAt];
  if (v29)
  {
    v30 = v29;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = *(v54 + 32);
    v31(v9, v18, v12);
    v27(v9, 0, 1, v12);
    v31(v53, v9, v12);
  }

  else
  {
    v32 = v54;
    v27(v9, 1, 1, v12);
    Date.init()();
    if ((*(v32 + 48))(v9, 1, v12) != 1)
    {
      sub_100008FA0(v9, &qword_100356188);
    }
  }

  v33 = [v1 readings];
  sub_10001D630(0, &qword_10035E400);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v34 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v12;
    if (v35)
    {
      goto LABEL_11;
    }

LABEL_23:
    v37 = &_swiftEmptyArrayStorage;
    goto LABEL_24;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = v12;
  if (!v35)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v35 < 1)
  {
    __break(1u);
    return;
  }

  v36 = 0;
  v37 = &_swiftEmptyArrayStorage;
  do
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    sub_1000F37F8(v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_10017C26C(0, v37[2] + 1, 1, v37);
    }

    v41 = v37[2];
    v40 = v37[3];
    if (v41 >= v40 >> 1)
    {
      v37 = sub_10017C26C(v40 > 1, v41 + 1, 1, v37);
    }

    ++v36;

    v37[2] = v41 + 1;
    sub_1000F8E7C(v5, v37 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v41, type metadata accessor for TargetTracks.TimePoint);
  }

  while (v35 != v36);
LABEL_24:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_10019D090(v37);
  }

  v42 = v50;
  v43 = v51;
  v44 = v37[2];
  v55[0] = v37 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v55[1] = v44;
  sub_1000F48B8(v55);
  v45 = *(v54 + 32);
  v46 = v52;
  v45(v52, v42, v43);
  v47 = type metadata accessor for TargetTracks(0);
  v45(v46 + *(v47 + 20), v53, v43);
  *(v46 + *(v47 + 24)) = v37;
}

void sub_1000F41F4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = *(*(a1 + 48) + 8 * v12);

      v15 = sub_100186880(v14);
      v17 = v16;

      if ((v17 & 1) == 0 || (v18 = *(*(a2 + 56) + 8 * v15), v19 = *(v18 + 16), v19 != *(v13 + 16)))
      {
LABEL_28:

        return;
      }

      if (v19)
      {
        v20 = v18 == v13;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v18 + 40);
        v22 = (v13 + 40);
        while (v19)
        {
          v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
          if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_28;
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_6:
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_14;
      }
    }

LABEL_32:
    __break(1u);
  }
}

uint64_t sub_1000F4390(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1001921EC(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4498(uint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    result = sub_1001868C8(v13);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = (*(a2 + 56) + 16 * result);
    v19 = v18[1];
    if (v19)
    {
      if (!v15)
      {
        return 0;
      }

      result = *v18;
      if (*v18 != v16 || v19 != v15)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v15)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F45D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v31 = (v4 + 63) >> 6;
  v32 = result;
  if (v6)
  {
    do
    {
      v7 = __clz(__rbit64(v6));
      v34 = (v6 - 1) & v6;
LABEL_12:
      v10 = v7 | (v2 << 6);
      v11 = *(*(result + 48) + 8 * v10);
      v12 = *(result + 56) + 40 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 25);
      v18 = *(v12 + 32);

      if (!v15)
      {
        return 1;
      }

      v19 = sub_1001921C8(v11);
      if ((v20 & 1) == 0)
      {
        goto LABEL_41;
      }

      v21 = *(a2 + 56) + 40 * v19;
      if (*v21 != v14)
      {
        goto LABEL_41;
      }

      result = *(v21 + 8);
      v22 = *(v21 + 24);
      v23 = *(v21 + 25);
      v24 = *(v21 + 32);
      if (result != v13 || v15 != *(v21 + 16))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      if (v16 != v22 || v17 != v23)
      {
        goto LABEL_41;
      }

      if (v24)
      {
        if (!v18)
        {
          goto LABEL_42;
        }

        v26 = *(v24 + 16);
        if (v26 != *(v18 + 16))
        {
LABEL_41:

LABEL_42:

          return 0;
        }

        if (v26)
        {
          v27 = v24 == v18;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v28 = (v24 + 40);
          v29 = (v18 + 40);
          while (v26)
          {
            result = *(v28 - 1);
            if (result != *(v29 - 1) || *v28 != *v29)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v28 += 2;
            v29 += 2;
            if (!--v26)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_46;
        }

LABEL_30:
      }

      else if (v18)
      {
        goto LABEL_41;
      }

      result = v32;
      v6 = v34;
    }

    while (v34);
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v31)
    {
      return 1;
    }

    v9 = *(v3 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000F4818(uint64_t a1)
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

Swift::Int sub_1000F48B8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TargetTracks.TimePoint(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for TargetTracks.TimePoint(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000F5250(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000F49E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000F49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for TargetTracks.TimePoint(0);
  v8 = *(v36 - 8);
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    type metadata accessor for Date();
    v18 = *(v8 + 72);
    v19 = v17 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v21;
    while (1)
    {
      sub_1000F8F2C(v22, v16, type metadata accessor for TargetTracks.TimePoint);
      sub_1000F8F2C(v19, v13, type metadata accessor for TargetTracks.TimePoint);
      sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date);
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1000F8E1C(v13, type metadata accessor for TargetTracks.TimePoint);
      result = sub_1000F8E1C(v16, type metadata accessor for TargetTracks.TimePoint);
      if (v24)
      {
LABEL_4:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_1000F8E7C(v22, v35, type metadata accessor for TargetTracks.TimePoint);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000F8E7C(v25, v19, type metadata accessor for TargetTracks.TimePoint);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000F4C88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10019DF64(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1000F5C10((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v12 >= v9) ^ (v16 < v17);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v12 < v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 < v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *(v23 - 24);
            v22[2] = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10017C168(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_10017C168((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_1000F5C10((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*v33 < v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000F5250(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v105 = a1;
  v118 = type metadata accessor for TargetTracks.TimePoint(0);
  v113 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v109 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v101 - v12;
  v13 = __chkstk_darwin(v11);
  v120 = &v101 - v14;
  result = __chkstk_darwin(v13);
  v119 = &v101 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_10019DF64(v19);
      v19 = result;
    }

    v121 = v19;
    v97 = *(v19 + 2);
    if (v97 >= 2)
    {
      while (*a3)
      {
        v98 = *&v19[16 * v97];
        v99 = *&v19[16 * v97 + 24];
        sub_1000F5E4C(*a3 + *(v113 + 72) * v98, *a3 + *(v113 + 72) * *&v19[16 * v97 + 16], *a3 + *(v113 + 72) * v99, v5);
        if (v6)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10019DF64(v19);
        }

        if (v97 - 2 >= *(v19 + 2))
        {
          goto LABEL_121;
        }

        v100 = &v19[16 * v97];
        *v100 = v98;
        *(v100 + 1) = v99;
        v121 = v19;
        result = sub_10019DED8(v97 - 1);
        v19 = v121;
        v97 = *(v121 + 2);
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v102 = a4;
  v18 = 0;
  v19 = &_swiftEmptyArrayStorage;
  v103 = a3;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v114 = v19;
    if (v18 + 1 >= v17)
    {
      v32 = v18 + 1;
    }

    else
    {
      v115 = v17;
      v104 = v6;
      v22 = *a3;
      v23 = *(v113 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v119;
      sub_1000F8F2C(v5, v119, type metadata accessor for TargetTracks.TimePoint);
      v25 = v22 + v23 * v20;
      v106 = v20;
      v26 = v120;
      sub_1000F8F2C(v25, v120, type metadata accessor for TargetTracks.TimePoint);
      type metadata accessor for Date();
      sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date);
      LODWORD(v112) = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_1000F8E1C(v26, type metadata accessor for TargetTracks.TimePoint);
      result = sub_1000F8E1C(v24, type metadata accessor for TargetTracks.TimePoint);
      v27 = v106 + 2;
      v116 = v23;
      v28 = v22 + v23 * (v106 + 2);
      while (v115 != v27)
      {
        v29 = v119;
        sub_1000F8F2C(v28, v119, type metadata accessor for TargetTracks.TimePoint);
        v30 = v120;
        sub_1000F8F2C(v5, v120, type metadata accessor for TargetTracks.TimePoint);
        v31 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        sub_1000F8E1C(v30, type metadata accessor for TargetTracks.TimePoint);
        v19 = v114;
        result = sub_1000F8E1C(v29, type metadata accessor for TargetTracks.TimePoint);
        ++v27;
        v28 += v116;
        v5 += v116;
        if ((v112 & 1) != v31)
        {
          v32 = v27 - 1;
          goto LABEL_11;
        }
      }

      v32 = v115;
LABEL_11:
      a3 = v103;
      v6 = v104;
      v20 = v106;
      if ((v112 & 1) == 0)
      {
        if (v32 < v106)
        {
          goto LABEL_124;
        }

        if (v106 < v32)
        {
          v33 = v116 * (v32 - 1);
          v5 = v32 * v116;
          v34 = v32;
          v35 = v106 * v116;
          do
          {
            if (v20 != --v32)
            {
              v36 = a3;
              v37 = *a3;
              if (!v37)
              {
                goto LABEL_130;
              }

              sub_1000F8E7C(v37 + v35, v109, type metadata accessor for TargetTracks.TimePoint);
              if (v35 < v33 || v37 + v35 >= v37 + v5)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v35 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1000F8E7C(v109, v37 + v33, type metadata accessor for TargetTracks.TimePoint);
              a3 = v36;
              v19 = v114;
            }

            ++v20;
            v33 -= v116;
            v5 -= v116;
            v35 += v116;
          }

          while (v20 < v32);
          v6 = v104;
          v20 = v106;
          v32 = v34;
        }
      }
    }

    v38 = a3[1];
    if (v32 < v38)
    {
      if (__OFSUB__(v32, v20))
      {
        goto LABEL_123;
      }

      if (v32 - v20 < v102)
      {
        if (__OFADD__(v20, v102))
        {
          goto LABEL_125;
        }

        if (v20 + v102 >= v38)
        {
          v39 = a3[1];
        }

        else
        {
          v39 = v20 + v102;
        }

        if (v39 < v20)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v32 != v39)
        {
          break;
        }
      }
    }

    v18 = v32;
    if (v32 < v20)
    {
      goto LABEL_122;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10017C168(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v41 = *(v19 + 2);
    v40 = *(v19 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_10017C168((v40 > 1), v41 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v42;
    v43 = &v19[16 * v41];
    *(v43 + 4) = v20;
    *(v43 + 5) = v18;
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_132;
    }

    if (v41)
    {
      while (1)
      {
        v44 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v19 + 4);
          v46 = *(v19 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_111;
          }

          v61 = &v19[16 * v42];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_114;
          }

          v67 = &v19[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_118;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v42 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v19[16 * v42];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_113;
        }

        v74 = &v19[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_116;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        v82 = v44 - 1;
        if (v44 - 1 >= v42)
        {
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
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v83 = *&v19[16 * v82 + 32];
        v84 = *&v19[16 * v44 + 40];
        sub_1000F5E4C(*a3 + *(v113 + 72) * v83, *a3 + *(v113 + 72) * *&v19[16 * v44 + 32], *a3 + *(v113 + 72) * v84, v5);
        if (v6)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10019DF64(v19);
        }

        if (v82 >= *(v19 + 2))
        {
          goto LABEL_108;
        }

        v85 = &v19[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        v121 = v19;
        result = sub_10019DED8(v44);
        v19 = v121;
        v42 = *(v121 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v19[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_109;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v56 = &v19[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_112;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_115;
      }

      if (v60 >= v52)
      {
        v78 = &v19[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v47 < v81)
        {
          v44 = v42 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_95;
    }
  }

  v104 = v6;
  v86 = *a3;
  type metadata accessor for Date();
  v87 = *(v113 + 72);
  v88 = v86 + v87 * (v32 - 1);
  v89 = -v87;
  v106 = v20;
  v107 = v87;
  v90 = v20 - v32;
  v116 = v86;
  v5 = v86 + v32 * v87;
  v108 = v39;
LABEL_86:
  v115 = v32;
  v110 = v5;
  v111 = v90;
  v112 = v88;
  v91 = v88;
  while (1)
  {
    v92 = v119;
    sub_1000F8F2C(v5, v119, type metadata accessor for TargetTracks.TimePoint);
    v93 = v120;
    sub_1000F8F2C(v91, v120, type metadata accessor for TargetTracks.TimePoint);
    sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date);
    v94 = dispatch thunk of static Comparable.< infix(_:_:)();
    sub_1000F8E1C(v93, type metadata accessor for TargetTracks.TimePoint);
    result = sub_1000F8E1C(v92, type metadata accessor for TargetTracks.TimePoint);
    if (v94)
    {
LABEL_85:
      v32 = v115 + 1;
      v18 = v108;
      v88 = v112 + v107;
      v90 = v111 - 1;
      v5 = v110 + v107;
      if (v115 + 1 != v108)
      {
        goto LABEL_86;
      }

      a3 = v103;
      v6 = v104;
      v19 = v114;
      v20 = v106;
      if (v108 < v106)
      {
        goto LABEL_122;
      }

      goto LABEL_35;
    }

    if (!v116)
    {
      break;
    }

    v95 = v117;
    sub_1000F8E7C(v5, v117, type metadata accessor for TargetTracks.TimePoint);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000F8E7C(v95, v91, type metadata accessor for TargetTracks.TimePoint);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1000F5C10(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (*v16 >= v19)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1000F5E4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for TargetTracks.TimePoint(0);
  v9 = __chkstk_darwin(v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v42 = &v35 - v12;
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

  v41 = result;
  v16 = (a2 - a1) / v14;
  v46 = a1;
  v45 = a4;
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

    v23 = a4 + v18;
    if (v18 >= 1)
    {
      v24 = -v14;
      v25 = a4 + v18;
      v37 = v24;
      v38 = a4;
      do
      {
        v35 = v23;
        v26 = a2 + v24;
        v39 = a2;
        v40 = a2 + v24;
        while (1)
        {
          if (a2 <= a1)
          {
            v46 = a2;
            v44 = v35;
            goto LABEL_58;
          }

          v36 = v23;
          v28 = a3 + v24;
          v29 = v25 + v24;
          v30 = v42;
          sub_1000F8F2C(v29, v42, type metadata accessor for TargetTracks.TimePoint);
          v31 = v26;
          v32 = v43;
          sub_1000F8F2C(v31, v43, type metadata accessor for TargetTracks.TimePoint);
          type metadata accessor for Date();
          sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date);
          v33 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_1000F8E1C(v32, type metadata accessor for TargetTracks.TimePoint);
          sub_1000F8E1C(v30, type metadata accessor for TargetTracks.TimePoint);
          if ((v33 & 1) == 0)
          {
            break;
          }

          v23 = v29;
          if (a3 < v25 || v28 >= v25)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v34 = a3 == v25;
            a3 = v28;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v29;
          a2 = v39;
          v27 = v29 > v38;
          v26 = v40;
          v24 = v37;
          if (!v27)
          {
            goto LABEL_56;
          }
        }

        if (a3 < v39 || v28 >= v39)
        {
          a3 = v28;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v36;
          v24 = v37;
        }

        else
        {
          v34 = a3 == v39;
          a3 = v28;
          a2 = v40;
          v23 = v36;
          v24 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v38);
    }

LABEL_56:
    v46 = a2;
    v44 = v23;
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

    v40 = a4 + v17;
    v44 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = v42;
      do
      {
        sub_1000F8F2C(a2, v20, type metadata accessor for TargetTracks.TimePoint);
        v21 = v43;
        sub_1000F8F2C(a4, v43, type metadata accessor for TargetTracks.TimePoint);
        type metadata accessor for Date();
        sub_1000F1E40(&qword_10035E408, &type metadata accessor for Date);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_1000F8E1C(v21, type metadata accessor for TargetTracks.TimePoint);
        sub_1000F8E1C(v20, type metadata accessor for TargetTracks.TimePoint);
        if (v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v14;
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
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_58:
  sub_1000F63B8(&v46, &v45, &v44);
  return 1;
}

uint64_t sub_1000F63B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TargetTracks.TimePoint(0);
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

void sub_1000F649C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v8 - 8);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ServiceOutages.Outage(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v30 = a1;
  Hasher._combine(_:)(v17);
  if (v17)
  {
    v18 = *(v13 + 20);
    v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = v14;
    v21 = (v5 + 48);
    v27 = *(v20 + 72);
    v28 = v18;
    v26 = (v5 + 32);
    v22 = (v5 + 8);
    do
    {
      sub_1000F8F2C(v19, v16, type metadata accessor for ServiceOutages.Outage);
      sub_100006C20(v16, v12, &qword_100356188);
      v23 = *v21;
      if ((*v21)(v12, 1, v4) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        (*v26)(v7, v12, v4);
        Hasher._combine(_:)(1u);
        sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        (*v22)(v7, v4);
      }

      v24 = v29;
      sub_100006C20(&v16[v28], v29, &qword_100356188);
      if (v23(v24, 1, v4) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        (*v26)(v7, v24, v4);
        Hasher._combine(_:)(1u);
        sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        (*v22)(v7, v4);
      }

      sub_1000F8E1C(v16, type metadata accessor for ServiceOutages.Outage);
      v19 += v27;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_1000F6898(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10009298C(&qword_10035E440, &qword_10035ABD0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040A8(&qword_10035ABD0);
            v9 = sub_1000F6A28(v13, i, a3);
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
        type metadata accessor for TryOutTranscriptItem(0);
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

uint64_t (*sub_1000F6A28(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000F6AA8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a1;

    sub_1000F41F4(v6, a3);
    LOBYTE(v6) = v8;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4 && (sub_100204870(a2, a4) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1000F6B40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v29 - v9);
  v11 = sub_1000040A8(&qword_100359F60);
  v12 = __chkstk_darwin(v11);
  v14 = &v29 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = a1[1];
  v18 = a2[1];
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    v15 = 0;
    if (v18 == 2 || ((v18 ^ v17) & 1) != 0)
    {
      return v15;
    }
  }

  v19 = a1[2];
  v20 = a2[2];
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v15 = 0;
  if (v20 != 2 && ((v20 ^ v19) & 1) == 0)
  {
LABEL_14:
    v21 = a1[3];
    v22 = a2[3];
    if (v21 == 4)
    {
      if (v22 != 4)
      {
        return 0;
      }
    }

    else if (v21 != v22)
    {
      return 0;
    }

    v23 = v12;
    v24 = *(type metadata accessor for LinkState(0) + 32);
    v25 = &a1[v24];
    v26 = *(v23 + 48);
    sub_100006C20(v25, v14, &qword_100354FD8);
    sub_100006C20(&a2[v24], &v14[v26], &qword_100354FD8);
    v27 = *(v5 + 48);
    if (v27(v14, 1, v4) == 1)
    {
      if (v27(&v14[v26], 1, v4) == 1)
      {
        sub_100008FA0(v14, &qword_100354FD8);
        return 1;
      }

      goto LABEL_23;
    }

    sub_100006C20(v14, v10, &qword_100354FD8);
    if (v27(&v14[v26], 1, v4) == 1)
    {
      sub_1000F8E1C(v10, type metadata accessor for TransmissionProgress);
LABEL_23:
      sub_100008FA0(v14, &qword_100359F60);
      return 0;
    }

    sub_1000F8E7C(&v14[v26], v7, type metadata accessor for TransmissionProgress);
    v28 = sub_1000F84AC(v10, v7);
    sub_1000F8E1C(v7, type metadata accessor for TransmissionProgress);
    sub_1000F8E1C(v10, type metadata accessor for TransmissionProgress);
    sub_100008FA0(v14, &qword_100354FD8);
    return v28;
  }

  return v15;
}

BOOL sub_1000F6EDC(uint64_t a1)
{
  v157 = type metadata accessor for ConnectionClosed(0);
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v3 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v4 - 8);
  v156 = &v150 - v5;
  v154 = sub_1000040A8(&qword_10035E3E0);
  __chkstk_darwin(v154);
  v158 = (&v150 - v6);
  v7 = type metadata accessor for LinkState(0);
  v163 = *(v7 - 8);
  v164 = v7;
  __chkstk_darwin(v7);
  v159 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v9 - 8);
  v160 = &v150 - v10;
  v162 = sub_1000040A8(&qword_10035E3E8);
  __chkstk_darwin(v162);
  v165 = &v150 - v11;
  v12 = type metadata accessor for SilencePeriod(0);
  v167 = *(v12 - 8);
  v168 = v12;
  __chkstk_darwin(v12);
  v161 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_10035E270);
  __chkstk_darwin(v14 - 8);
  v166 = &v150 - v15;
  v16 = sub_1000040A8(&qword_10035E3F0);
  __chkstk_darwin(v16);
  v169 = &v150 - v17;
  v18 = type metadata accessor for ServiceOutages(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v22 - 8);
  v24 = &v150 - v23;
  v25 = sub_1000040A8(&qword_10035E3F8);
  __chkstk_darwin(v25);
  v28 = &v150 - v27;
  v29 = *(v26 + 40);
  if (*(a1 + 40))
  {
    if ((*(v26 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *v26)
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }

    v153 = v3;
    v54 = a1;
    v55 = v26;
    if ((static Angle.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    if ((static Angle.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    if ((static Angle.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }

    v56 = static Angle.== infix(_:_:)();
    v26 = v55;
    a1 = v54;
    v3 = v153;
    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = *(a1 + 41);
  v31 = *(v26 + 41);
  if (v30 == 4)
  {
    if (v31 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v31 == 4)
    {
      return 0;
    }

    if (v30 == 3)
    {
      if (v31 != 3)
      {
        return 0;
      }
    }

    else if (v30 != v31)
    {
      return 0;
    }
  }

  v32 = *(v26 + 43);
  if (*(a1 + 43))
  {
    goto LABEL_6;
  }

  if (*(v26 + 43))
  {
    return 0;
  }

  v32 = *(v26 + 42);
  if (*(a1 + 42))
  {
LABEL_6:
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(v26 + 42))
  {
    return 0;
  }

  v153 = v3;
  v33 = a1;
  v34 = v26;
  v150 = type metadata accessor for ConnectionAssistantState(0);
  v151 = v33;
  v35 = *(v25 + 48);
  v36 = v33 + v150[7];
  v37 = v150[7];
  sub_100006C20(v36, v28, &qword_10035E268);
  v152 = v34;
  v38 = v34 + v37;
  v39 = v35;
  sub_100006C20(v38, &v28[v35], &qword_10035E268);
  v40 = *(v19 + 48);
  if (v40(v28, 1, v18) == 1)
  {
    if (v40(&v28[v39], 1, v18) == 1)
    {
      sub_100008FA0(v28, &qword_10035E268);
      goto LABEL_10;
    }

    goto LABEL_36;
  }

  sub_100006C20(v28, v24, &qword_10035E268);
  if (v40(&v28[v39], 1, v18) == 1)
  {
    sub_1000F8E1C(v24, type metadata accessor for ServiceOutages);
LABEL_36:
    v57 = &qword_10035E3F8;
LABEL_42:
    v59 = v28;
LABEL_43:
    sub_100008FA0(v59, v57);
    return 0;
  }

  sub_1000F8E7C(&v28[v39], v21, type metadata accessor for ServiceOutages);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_1000F8E1C(v21, type metadata accessor for ServiceOutages);
    sub_1000F8E1C(v24, type metadata accessor for ServiceOutages);
    v57 = &qword_10035E268;
    goto LABEL_42;
  }

  v58 = sub_100202114(*&v24[*(v18 + 24)], *&v21[*(v18 + 24)]);
  sub_1000F8E1C(v21, type metadata accessor for ServiceOutages);
  sub_1000F8E1C(v24, type metadata accessor for ServiceOutages);
  sub_100008FA0(v28, &qword_10035E268);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v42 = v150;
  v41 = v151;
  v43 = v150[8];
  v44 = *(v16 + 48);
  v45 = v169;
  sub_100006C20(v151 + v43, v169, &qword_10035E270);
  sub_100006C20(v152 + v43, v45 + v44, &qword_10035E270);
  v46 = v168;
  v47 = *(v167 + 48);
  if (v47(v45, 1, v168) == 1)
  {
    if (v47(v45 + v44, 1, v46) == 1)
    {
      sub_100008FA0(v45, &qword_10035E270);
      goto LABEL_13;
    }

    goto LABEL_47;
  }

  v61 = v166;
  sub_100006C20(v45, v166, &qword_10035E270);
  if (v47(v45 + v44, 1, v46) == 1)
  {
    sub_1000F8E1C(v61, type metadata accessor for SilencePeriod);
LABEL_47:
    v57 = &qword_10035E3F0;
LABEL_48:
    v59 = v45;
    goto LABEL_43;
  }

  v62 = v45 + v44;
  v63 = v161;
  sub_1000F8E7C(v62, v161, type metadata accessor for SilencePeriod);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    sub_1000F8E1C(v63, type metadata accessor for SilencePeriod);
    sub_1000F8E1C(v61, type metadata accessor for SilencePeriod);
    v57 = &qword_10035E270;
    goto LABEL_48;
  }

  v64 = static Date.== infix(_:_:)();
  sub_1000F8E1C(v63, type metadata accessor for SilencePeriod);
  sub_1000F8E1C(v61, type metadata accessor for SilencePeriod);
  sub_100008FA0(v45, &qword_10035E270);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v48 = v42[9];
  v49 = *(v162 + 48);
  v50 = v165;
  sub_100006C20(v41 + v48, v165, &qword_100359798);
  v51 = v152 + v48;
  v28 = v50;
  sub_100006C20(v51, v50 + v49, &qword_100359798);
  v52 = v164;
  v53 = *(v163 + 48);
  if (v53(v50, 1, v164) == 1)
  {
    if (v53(v50 + v49, 1, v52) == 1)
    {
      sub_100008FA0(v50, &qword_100359798);
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  v65 = v160;
  sub_100006C20(v28, v160, &qword_100359798);
  if (v53(&v28[v49], 1, v52) == 1)
  {
    sub_1000F8E1C(v65, type metadata accessor for LinkState);
LABEL_54:
    v57 = &qword_10035E3E8;
    goto LABEL_42;
  }

  v66 = &v28[v49];
  v67 = v159;
  sub_1000F8E7C(v66, v159, type metadata accessor for LinkState);
  v68 = sub_1000F6B40(v65, v67);
  sub_1000F8E1C(v67, type metadata accessor for LinkState);
  sub_1000F8E1C(v65, type metadata accessor for LinkState);
  sub_100008FA0(v28, &qword_100359798);
  if (!v68)
  {
    return 0;
  }

LABEL_57:
  v69 = v42[10];
  v70 = (v41 + v69);
  v71 = *(v41 + v69 + 16);
  v72 = v152;
  v73 = (v152 + v69);
  v74 = *(v152 + v69 + 16);
  if (v71 == 2)
  {
    if (v74 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v74 == 2)
    {
      return 0;
    }

    v75 = *v70;
    v76 = v70[1];
    v77 = v70[3];
    v78 = *(v70 + 16);
    v79 = *v73;
    v80 = v73[1];
    v81 = v73[3];
    v82 = *(v73 + 16);
    v213[0] = v75;
    v214 = v76;
    v215 = v71 & 1;
    v216 = v77;
    v217 = v78 & 0x101;
    v218[0] = v79;
    v219 = v80;
    v220 = v74 & 1;
    v221 = v81;
    v222 = v82 & 0x101;
    v83 = sub_100086A90(v213, v218);
    v72 = v152;
    if (!v83)
    {
      return 0;
    }
  }

  v84 = v42[11];
  v85 = (v41 + v84);
  v86 = *(v41 + v84 + 8);
  v87 = (v72 + v84);
  v88 = *(v72 + v84 + 8);
  if (v86 == 2)
  {
    if (v88 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v88 == 2)
    {
      return 0;
    }

    v89 = *v85;
    v90 = v85[2];
    v91 = v85[3];
    v92 = v85[4];
    v93 = *(v85 + 20);
    v94 = *v87;
    v96 = v87[2];
    v95 = v87[3];
    v97 = v87[4];
    v98 = *(v87 + 20);
    v201 = v89;
    v202 = v86 & 1;
    v203 = v90;
    v204 = v91 & 1;
    v205 = v92;
    v206 = v93 & 0x101;
    v207 = v94;
    v208 = v88 & 1;
    v209 = v96;
    v210 = v95 & 1;
    v211 = v97;
    v212 = v98 & 0x101;
    v99 = sub_10001FA68(&v201, &v207);
    v72 = v152;
    if (!v99)
    {
      return 0;
    }
  }

  v100 = v42[12];
  v101 = (v41 + v100);
  v102 = *(v41 + v100 + 8);
  v103 = (v72 + v100);
  v104 = v103[1];
  if (v102)
  {
    if (!v104)
    {
      return 0;
    }

    if (*v101 != *v103 || v102 != v104)
    {
      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v72 = v152;
      if ((v105 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v104)
  {
    return 0;
  }

  v106 = v42[13];
  v107 = v41 + v106;
  v108 = *(v41 + v106);
  v109 = (v72 + v106);
  v110 = *v109;
  if (v108 != 1)
  {
    if (v110 == 1)
    {
      return 0;
    }

    v115 = *(v107 + 8);
    v116 = v109[1];
    if (v108)
    {
      if (!v110)
      {

        goto LABEL_106;
      }

      sub_1000F8EE4(*v109);

      sub_1000F41F4(v108, v110);
      v118 = v117;

      if (v118)
      {
LABEL_100:
        if (v115)
        {
          if (v116)
          {
            v147 = sub_100204870(v115, v116);

            if ((v147 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_76;
          }
        }

        else
        {

          if (!v116)
          {
            goto LABEL_76;
          }
        }

LABEL_106:

        return 0;
      }
    }

    else
    {
      if (!v110)
      {

        goto LABEL_100;
      }

      sub_1000F8EE4(*v109);
    }

    goto LABEL_106;
  }

  if (v110 != 1)
  {
    return 0;
  }

LABEL_76:
  v111 = v150[14];
  v112 = *(v154 + 48);
  v113 = v158;
  sub_100006C20(v151 + v111, v158, &qword_100356510);
  sub_100006C20(v152 + v111, v113 + v112, &qword_100356510);
  v114 = *(v155 + 48);
  if (v114(v113, 1, v157) == 1)
  {
    if (v114(v158 + v112, 1, v157) == 1)
    {
      sub_100008FA0(v158, &qword_100356510);
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  v119 = v158;
  sub_100006C20(v158, v156, &qword_100356510);
  if (v114((v119 + v112), 1, v157) == 1)
  {
    sub_1000F8E1C(v156, type metadata accessor for ConnectionClosed);
LABEL_86:
    v57 = &qword_10035E3E0;
    v59 = v158;
    goto LABEL_43;
  }

  v120 = v158;
  v121 = v158 + v112;
  v122 = v153;
  sub_1000F8E7C(v121, v153, type metadata accessor for ConnectionClosed);
  v123 = v156;
  v124 = sub_1000F8120(v156, v122);
  sub_1000F8E1C(v122, type metadata accessor for ConnectionClosed);
  sub_1000F8E1C(v123, type metadata accessor for ConnectionClosed);
  sub_100008FA0(v120, &qword_100356510);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_92:
  v125 = v151 + v150[15];
  v126 = *(v125 + 48);
  v127 = *(v125 + 64);
  v196 = *(v125 + 80);
  v128 = *(v125 + 32);
  v129 = *(v125 + 16);
  v195[3] = *(v125 + 48);
  v195[4] = v127;
  v130 = *(v125 + 16);
  v195[0] = *v125;
  v195[1] = v130;
  v195[2] = v128;
  v131 = v152 + v150[15];
  v132 = *(v131 + 64);
  v133 = *(v131 + 16);
  v197[0] = *v131;
  v197[1] = v133;
  v134 = *(v131 + 32);
  v197[3] = *(v131 + 48);
  v197[4] = v132;
  v197[2] = v134;
  v135 = *(v125 + 64);
  v192 = v126;
  v193 = v135;
  v198 = *(v131 + 80);
  v136 = v195[0];
  v194 = *(v125 + 80);
  v190 = v129;
  v191 = v128;
  if (*(&v195[0] + 1))
  {
    if (*(&v197[0] + 1))
    {
      v170 = v197[0];
      v137 = *(v131 + 64);
      v173 = *(v131 + 48);
      v174 = v137;
      v175 = *(v131 + 80);
      v138 = *(v131 + 32);
      v171 = *(v131 + 16);
      v172 = v138;
      v183 = v175;
      v181 = v173;
      v182 = v137;
      v179 = v171;
      v180 = v138;
      v178 = v197[0];
      v139 = *(v125 + 64);
      v199[3] = *(v125 + 48);
      v199[4] = v139;
      v200 = *(v125 + 80);
      v140 = *(v125 + 32);
      v199[1] = *(v125 + 16);
      v199[2] = v140;
      v199[0] = v195[0];
      v141 = sub_10001F4B0(v199, &v178);
      sub_100006C20(v195, v176, &unk_10035CEF0);
      sub_100006C20(v197, v176, &unk_10035CEF0);
      sub_100008FA0(&v170, &unk_10035CEF0);
      v176[0] = v136;
      v176[3] = v192;
      v176[4] = v193;
      v177 = v194;
      v176[2] = v191;
      v176[1] = v190;
      sub_100008FA0(v176, &unk_10035CEF0);
      return v141;
    }

    goto LABEL_98;
  }

  if (*(&v197[0] + 1))
  {
LABEL_98:
    v178 = v195[0];
    v142 = *(v125 + 64);
    v181 = *(v125 + 48);
    v182 = v142;
    v143 = *(v125 + 80);
    v144 = *(v125 + 32);
    v179 = *(v125 + 16);
    v180 = v144;
    v183 = v143;
    v184 = v197[0];
    v189 = *(v131 + 80);
    v145 = *(v131 + 64);
    v187 = *(v131 + 48);
    v188 = v145;
    v146 = *(v131 + 32);
    v185 = *(v131 + 16);
    v186 = v146;
    sub_100006C20(v195, v199, &unk_10035CEF0);
    sub_100006C20(v197, v199, &unk_10035CEF0);
    v57 = &unk_10035A098;
    v59 = &v178;
    goto LABEL_43;
  }

  v178 = *&v195[0];
  v148 = *(v125 + 64);
  v181 = *(v125 + 48);
  v182 = v148;
  v183 = *(v125 + 80);
  v149 = *(v125 + 32);
  v179 = *(v125 + 16);
  v180 = v149;
  sub_100006C20(v195, v199, &unk_10035CEF0);
  sub_100006C20(v197, v199, &unk_10035CEF0);
  sub_100008FA0(&v178, &unk_10035CEF0);
  return 1;
}

uint64_t sub_1000F8120(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1000040A8(&qword_10035E3D0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v27 = a1;
  v14 = *a1;
  v15 = *a2;
  if (v14 == 12)
  {
    if (v15 != 12)
    {
      goto LABEL_11;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_11;
  }

  v16 = a2;
  v26 = type metadata accessor for ConnectionClosed(0);
  v17 = *(v26 + 20);
  v18 = *(v11 + 48);
  sub_100006C20(&v27[v17], v13, &qword_100356188);
  v19 = &v16[v17];
  v20 = v16;
  sub_100006C20(v19, &v13[v18], &qword_100356188);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_100008FA0(v13, &qword_100356188);
LABEL_14:
      v22 = sub_100204870(*&v27[*(v26 + 24)], *&v20[*(v26 + 24)]);
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_100006C20(v13, v10, &qword_100356188);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_100008FA0(v13, &qword_10035E3D0);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v10, v4);
  v20 = v16;
  sub_100008FA0(v13, &qword_100356188);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

BOOL sub_1000F84AC(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1000040A8(&qword_10035E3D0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = type metadata accessor for TransmissionProgress(0);
  v17 = *(v16 + 20);
  v18 = a1;
  v19 = *(v11 + 48);
  v33 = v16;
  v34 = v18;
  sub_100006C20(v18 + v17, v13, &qword_100356188);
  v35 = a2;
  sub_100006C20(a2 + v17, &v13[v19], &qword_100356188);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_100008FA0(v13, &qword_100356188);
      goto LABEL_16;
    }

LABEL_13:
    sub_100008FA0(v13, &qword_10035E3D0);
    return 0;
  }

  sub_100006C20(v13, v10, &qword_100356188);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_13;
  }

  (*(v5 + 32))(v7, &v13[v19], v4);
  sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_100008FA0(v13, &qword_100356188);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v24 = v33[6];
  v25 = (v34 + v24);
  v26 = *(v34 + v24 + 8);
  v27 = (v35 + v24);
  v28 = *(v35 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (*(v34 + v33[7]) != *(v35 + v33[7]))
  {
    return 0;
  }

  v29 = v33[8];
  v30 = *(v34 + v29);
  v31 = *(v35 + v29);
  if (v30 == 8)
  {
    return v31 == 8;
  }

  return v30 == v31;
}

BOOL sub_1000F88AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v7 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_1000040A8(&qword_10035E3D0);
  __chkstk_darwin(v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  v18 = *(v17 + 48);
  v40 = a1;
  sub_100006C20(a1, &v36 - v15, &qword_100356188);
  v41 = a2;
  sub_100006C20(a2, &v16[v18], &qword_100356188);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_100006C20(v16, v11, &qword_100356188);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = *(v5 + 32);
      v22 = &v16[v18];
      v23 = v5;
      v24 = v38;
      v21(v38, v22, v4);
      sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v23;
      v26 = *(v23 + 8);
      v26(v24, v4);
      v26(v11, v4);
      sub_100008FA0(v16, &qword_100356188);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    v20 = v16;
LABEL_14:
    sub_100008FA0(v20, &qword_10035E3D0);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v36 = v5;
  sub_100008FA0(v16, &qword_100356188);
LABEL_8:
  v27 = *(type metadata accessor for ServiceOutages.Outage(0) + 20);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_100006C20(v40 + v27, v39, &qword_100356188);
  sub_100006C20(v41 + v27, v29 + v28, &qword_100356188);
  if (v19(v29, 1, v4) == 1)
  {
    if (v19((v29 + v28), 1, v4) == 1)
    {
      sub_100008FA0(v29, &qword_100356188);
      return 1;
    }

    goto LABEL_13;
  }

  v30 = v37;
  sub_100006C20(v29, v37, &qword_100356188);
  if (v19((v29 + v28), 1, v4) == 1)
  {
    (*(v36 + 8))(v30, v4);
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  v32 = v36;
  v33 = v38;
  (*(v36 + 32))(v38, v29 + v28, v4);
  sub_1000F1E40(&unk_10035C9E0, &type metadata accessor for Date);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_100008FA0(v29, &qword_100356188);
  return (v34 & 1) != 0;
}

uint64_t sub_1000F8E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F8E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F8EE4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000F8F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F8F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035E418);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F9004()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000F904C()
{
  result = qword_1003580B0;
  if (!qword_1003580B0)
  {
    sub_10001D630(255, &qword_10035CF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003580B0);
  }

  return result;
}

unint64_t sub_1000F90F8()
{
  result = qword_10035E448;
  if (!qword_10035E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E448);
  }

  return result;
}

unint64_t sub_1000F9150()
{
  result = qword_10035E450;
  if (!qword_10035E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E450);
  }

  return result;
}

unint64_t sub_1000F91A8()
{
  result = qword_10035E458;
  if (!qword_10035E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E458);
  }

  return result;
}

uint64_t sub_1000F9208(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0x65646E6170786528;
}

uint64_t sub_1000F92A4()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for SettingsAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000F9418()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for SettingsAgent();

    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] deinit", v3, 0xCu);
    sub_100008964(v4);
  }

  return swift_deallocClassInstance();
}

unint64_t sub_1000F95D0()
{
  result = qword_10035E518;
  if (!qword_10035E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E518);
  }

  return result;
}

void sub_1000F9624()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);

  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v2 = 136446466;

    sub_1000040A8(&qword_100359C00);
    v3 = String.init<A>(describing:)();
    v5 = sub_10017C9E8(v3, v4, &v10);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    swift_errorRetain();
    sub_1000040A8(&qword_100355D88);
    v6 = String.init<A>(describing:)();
    v8 = sub_10017C9E8(v6, v7, &v10);

    *(v2 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Opening Settings result: %{public}s, %{public}s", v2, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000F9854(char a1)
{
  v2 = sub_1000040A8(&qword_100357468);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381C80);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v5;
    v32 = v6;
    v13 = v12;
    v14 = v8;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v13 = 136315138;
    v33 = a1;
    v16 = String.init<A>(describing:)();
    v18 = sub_10017C9E8(v16, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Opening Settings for %s", v13, 0xCu);
    sub_100008964(v15);
    v8 = v14;

    v5 = v31;
    v6 = v32;
  }

  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_100083738(v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to form Settings URL", v21, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v22 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v22 setSensitive:1];
    v23 = [objc_opt_self() defaultWorkspace];
    if (v23)
    {
      v24 = v23;

      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      aBlock[4] = sub_1000F9624;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100145D6C;
      aBlock[3] = &unk_100330368;
      v28 = _Block_copy(aBlock);
      v29 = v22;
      [v24 openURL:v27 configuration:v29 completionHandler:v28];
      _Block_release(v28);

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000F9CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F9CFC()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) != 0)
      {
        v2 = BYTE6(v3);
        goto LABEL_15;
      }

      return 0;
    }

    if (v2 == v2 >> 32)
    {
      return 0;
    }
  }

  if (v4 == 2)
  {
    v7 = v2 + 16;
    v5 = *(v2 + 16);
    v6 = *(v7 + 8);
    v8 = __OFSUB__(v6, v5);
    v2 = v6 - v5;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v8 = __OFSUB__(HIDWORD(v2), v2);
  LODWORD(v2) = HIDWORD(v2) - v2;
  if (v8)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v2 = v2;
LABEL_15:
  v8 = __OFSUB__(v2, 1);
  v9 = v2 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v9 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = 8 * v9;
  if (v10 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  return v10 + *(v0 + 32);
}

uint64_t sub_1000F9DE0(uint64_t result, unsigned __int8 a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = 8 - a2;
  if ((v3 & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v4 = result << (v3 & 7);
  if ((8 - a2) <= 8u)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((*(v2 + 32) | 8) == 8)
  {
    *(v2 + 32) = a2;
    swift_beginAccess();
    v22 = sub_1000040A8(&qword_10035E640);
    v23 = sub_1000FA484();
    LOBYTE(v21[0]) = v5;
    v24 = *sub_1000088DC(v21, v22);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_100008964(v21);
    return swift_endAccess();
  }

  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_19;
    }

    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v13)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v8);
    goto LABEL_19;
  }

  LODWORD(v10) = HIDWORD(v7) - v7;
  if (__OFSUB__(HIDWORD(v7), v7))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v10 = v10;
LABEL_19:
  if (__OFSUB__(v10, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      v14 = BYTE6(v8);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v9 != 2)
  {
    v14 = 0;
    goto LABEL_30;
  }

  v16 = *(v7 + 16);
  v15 = *(v7 + 24);
  v13 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (v13)
  {
    __break(1u);
LABEL_27:
    LODWORD(v14) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_44;
    }

    v14 = v14;
  }

LABEL_30:
  if (__OFSUB__(v14, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_10000F480(v7, v8);
  Data._Representation.subscript.getter();
  sub_10000F4E8(v7, v8);
  swift_beginAccess();
  Data._Representation.subscript.setter();
  result = swift_endAccess();
  v17 = *(v2 + 32) + a2;
  if ((v17 & 0x100) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v2 + 32) = v17;
  if (v17 >= 9u)
  {
    v18 = v17 - 8;
    *(v2 + 32) = v18;
    v19 = a2 - v18;
    if ((v19 & 0xFFFFFF00) == 0)
    {
      if ((v19 & 0xF8) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = v5 << (v19 & 7);
      }

      swift_beginAccess();
      v22 = sub_1000040A8(&qword_10035E640);
      v23 = sub_1000FA484();
      LOBYTE(v21[0]) = v20;
      sub_1000088DC(v21, v22);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_100008964(v21);
      return swift_endAccess();
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1000FA160(uint64_t a1)
{
  v2 = sub_1000F9CFC();
  v3 = v2;
  do
  {
    sub_1000F9DE0(v3 & 0x7F | ((v3 > 0x7F) << 7), 8u);
    v4 = v3 > 0x7F;
    v3 >>= 7;
  }

  while (v4);
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_10000F480(v5, v6);
  if (v2)
  {
    v7 = 0;
    v8 = v6 >> 62;
    v9 = (v2 - 1) >> 3;
    v19 = v2 - ((v2 - 1) & 0xF8);
    while (1)
    {
      if (v9 == v7)
      {
LABEL_25:
        v17 = Data._Representation.subscript.getter();
        sub_1000F9DE0(v17 >> (-v19 & 7), v19);
        return sub_10000F4E8(v5, v6);
      }

      if (v8 > 1)
      {
        break;
      }

      if (v8)
      {
        if (v7 < v5 || v7 >= v5 >> 32)
        {
          goto LABEL_29;
        }

        v15 = __DataStorage._bytes.getter();
        if (!v15)
        {
          goto LABEL_33;
        }

        v12 = v15;
        v16 = __DataStorage._offset.getter();
        v14 = v7 - v16;
        if (__OFSUB__(v7, v16))
        {
          __break(1u);
          goto LABEL_25;
        }

        goto LABEL_5;
      }

      if (v7 >= BYTE6(v6))
      {
        goto LABEL_28;
      }

      v20 = v5;
      v21 = v6;
      v22 = BYTE2(v6);
      v23 = BYTE3(v6);
      v24 = BYTE4(v6);
      v25 = BYTE5(v6);
      v10 = *(&v20 + v7);
LABEL_6:
      sub_1000F9DE0(v10, 8u);
      ++v7;
      v2 -= 8;
      if (!v2)
      {
        return sub_10000F4E8(v5, v6);
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

    if (v7 < *(v5 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    if (v7 >= *(v5 + 24))
    {
      goto LABEL_30;
    }

    v11 = __DataStorage._bytes.getter();
    if (!v11)
    {
      goto LABEL_34;
    }

    v12 = v11;
    v13 = __DataStorage._offset.getter();
    v14 = v7 - v13;
    if (__OFSUB__(v7, v13))
    {
      goto LABEL_31;
    }

LABEL_5:
    v10 = *(v12 + v14);
    goto LABEL_6;
  }

  return sub_10000F4E8(v5, v6);
}

uint64_t sub_1000FA428()
{
  sub_10000F4E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1000FA484()
{
  result = qword_10035E648;
  if (!qword_10035E648)
  {
    sub_100008CF0(&qword_10035E640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E648);
  }

  return result;
}

uint64_t sub_1000FA4E8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000FE760(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000FA564(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FA5AC(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1000FE7B4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000FA628(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000FA6D4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

unint64_t sub_1000FA810()
{
  v4 = v2;
  v113 = &_swiftEmptySetSingleton;
  v112 = &_swiftEmptySetSingleton;
  v5 = *(v1 + 96);
  v110 = v5;
  v105 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_205;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_206:
    if (v105)
    {
      v0 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v110;
      if (!v0)
      {
LABEL_220:
        if (v105)
        {
          v94 = _CocoaArrayWrapper.endIndex.getter();
          v5 = v110;
        }

        else
        {
          v94 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v109 = v112;
        v95 = v113;
        if (v94)
        {
          v96 = 0;
          v107 = v5 & 0xC000000000000001;
          v0 = v5 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v107)
            {
              v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v3 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
                goto LABEL_234;
              }
            }

            else
            {
              if (v96 >= *(v0 + 16))
              {
                goto LABEL_240;
              }

              v97 = *(v5 + 8 * v96 + 32);

              v3 = v96 + 1;
              if (__OFADD__(v96, 1))
              {
LABEL_234:
                __break(1u);
                goto LABEL_235;
              }
            }

            v98 = *(v97 + 48);

            sub_1000FC17C(v97, v98, v95, v109);
            if (v4)
            {
              break;
            }

            ++v96;
            v5 = v110;
            if (v3 == v94)
            {
              goto LABEL_235;
            }
          }
        }

LABEL_235:
      }
    }

    else
    {
      v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
        goto LABEL_220;
      }
    }

    v3 = 0;
    v89 = v5 & 0xC000000000000001;
    v90 = v5 & 0xFFFFFFFFFFFFFF8;
    v91 = v112;
    while (1)
    {
      if (v89)
      {
        v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v93 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }
      }

      else
      {
        if (v3 >= *(v90 + 16))
        {
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
          goto LABEL_247;
        }

        v92 = *(v5 + 8 * v3 + 32);

        v93 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_219;
        }
      }

      sub_1000FEC38(v92, v91);
      if (v4)
      {
      }

      sub_1000FF128(v92, v91);
      v4 = 0;

      ++v3;
      v5 = v110;
      if (v93 == v0)
      {
        goto LABEL_220;
      }
    }
  }

LABEL_3:
  v3 = 0;
  v7 = v5 & 0xC000000000000001;
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  v9 = v5 + 32;
  if (v5 < 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  v99 = v10;
  v100 = v6;
  v102 = v5 & 0xC000000000000001;
  v103 = v5 & 0xFFFFFFFFFFFFFF8;
  v101 = v5 + 32;
  while (1)
  {
    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = __OFADD__(v3++, 1);
      if (v12)
      {
        goto LABEL_241;
      }
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_242;
      }

      v11 = *(v9 + 8 * v3);

      v12 = __OFADD__(v3++, 1);
      if (v12)
      {
        goto LABEL_241;
      }
    }

    v14 = v11[2];
    v13 = v11[3];

    sub_1000FE960(v14, v13);
    if (v4)
    {
    }

    v104 = v3;

    v15 = v113;
    v17 = v11[2];
    v16 = v11[3];

    v18 = sub_10006E374(v17, v16, v15);

    v19 = v112;
    if (v18 & 1) != 0 || (v20 = v11[2], v21 = v11[3], , v22 = sub_10006E374(v20, v21, v19), , (v22))
    {

      v71 = v11[2];
      v70 = v11[3];
      sub_100091C0C();
      swift_allocError();
      *v72 = v71;
      *(v72 + 8) = v70;
      *(v72 + 16) = 0;
      *(v72 + 24) = 0;
      *(v72 + 32) = 1;
      swift_willThrow();
    }

    v23 = v11[2];
    v0 = v11[3];

    sub_1000FC7C4(&v111, v23, v0);

    v106 = v11;
    v24 = v11[5];
    v25 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v25)
    {
      break;
    }

LABEL_27:

    v3 = v106;
    v39 = v106[5];
    if (*(v106 + 32) <= 1u)
    {
      if (*(v106 + 32))
      {
        if (v39 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() <= 0)
          {
            goto LABEL_180;
          }
        }

        else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
        {
          goto LABEL_180;
        }

        v48 = v106[5];
        if (v48 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 64)
          {
LABEL_185:

            v79 = v106[2];
            v80 = v106[3];
            v81 = v106[5];
            if (v81 >> 62)
            {
              v76 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v76 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_100091C0C();
            swift_allocError();
            *v77 = v79;
            *(v77 + 8) = v80;
            v78 = 63;
            goto LABEL_191;
          }
        }

        else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 64)
        {
          goto LABEL_185;
        }

        v0 = v106[5];
        if (v0 >> 62)
        {
          v49 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v49 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v49)
        {
          v3 = 0;
          do
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v50 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_203;
              }
            }

            else
            {
              if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_204;
              }

              v42 = *(v0 + 8 * v3 + 32);

              v50 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_203;
              }
            }

            if (*(v42 + 40) == 1)
            {
              goto LABEL_176;
            }

            ++v3;
          }

          while (v50 != v49);
        }

        goto LABEL_82;
      }

      if (v39 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() <= 0)
        {
          goto LABEL_180;
        }
      }

      else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_180;
      }

      v40 = v106[5];
      if (!(v40 >> 62))
      {
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 128)
        {
          goto LABEL_182;
        }

        goto LABEL_33;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 128)
      {
LABEL_33:
        v0 = v106[5];
        if (v0 >> 62)
        {
          v41 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v41 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v41)
        {
          v3 = 0;
          do
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v43 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_201;
              }
            }

            else
            {
              if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_202;
              }

              v42 = *(v0 + 8 * v3 + 32);

              v43 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_201;
              }
            }

            if (*(v42 + 40) == 1)
            {
              goto LABEL_176;
            }

            ++v3;
          }

          while (v43 != v41);
        }

LABEL_82:

        goto LABEL_149;
      }

LABEL_182:

      v3 = v106[2];
      v0 = v106[3];
      v75 = v106[5];
      if (!(v75 >> 62))
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_184:
        sub_100091C0C();
        swift_allocError();
        *v77 = v3;
        *(v77 + 8) = v0;
        v78 = 127;
LABEL_191:
        *(v77 + 16) = v76;
        *(v77 + 24) = v78;
        *(v77 + 32) = 3;
        swift_willThrow();
      }

LABEL_253:
      v76 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_184;
    }

    if (*(v106 + 32) == 2)
    {
      if (!(v39 >> 62))
      {
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
        {
          goto LABEL_49;
        }

LABEL_180:

        v74 = v106[2];
        v73 = v106[3];
        sub_100091C0C();
        swift_allocError();
        *v68 = v74;
        *(v68 + 8) = v73;
        *(v68 + 16) = 0;
        *(v68 + 24) = 0;
        v69 = 2;
LABEL_177:
        *(v68 + 32) = v69;
        swift_willThrow();
      }

      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
        goto LABEL_180;
      }

LABEL_49:
      v44 = v106[5];
      if (v44 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 17)
        {
LABEL_51:
          v0 = v106[5];
          if (v0 >> 62)
          {
            v45 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v45 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v3 = 0;
          v46 = 0;
          while (v45 != v3)
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              if (__OFADD__(v3, 1))
              {
                goto LABEL_198;
              }
            }

            else
            {
              if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_199;
              }

              v42 = *(v0 + 8 * v3 + 32);

              if (__OFADD__(v3, 1))
              {
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                v6 = _CocoaArrayWrapper.endIndex.getter();
                v5 = v110;
                if (!v6)
                {
                  goto LABEL_206;
                }

                goto LABEL_3;
              }
            }

            if ((*(v42 + 40) & 1) == 0)
            {
LABEL_176:

              v67 = v106[2];
              v66 = v106[3];
              sub_100091C0C();
              swift_allocError();
              *v68 = v67;
              *(v68 + 8) = v66;
              *(v68 + 16) = v42;
              *(v68 + 24) = 0;
              v69 = 10;
              goto LABEL_177;
            }

            v47 = *(v42 + 48);

            ++v3;
            v12 = __OFADD__(v46, v47);
            v46 += v47;
            if (v12)
            {
              goto LABEL_200;
            }
          }

          if (v46 < 101)
          {
            goto LABEL_149;
          }

          v86 = v106[2];
          v85 = v106[3];
          sub_100091C0C();
          swift_allocError();
          *v68 = v86;
          *(v68 + 8) = v85;
          *(v68 + 16) = v46;
          *(v68 + 24) = 100;
          v69 = 4;
          goto LABEL_177;
        }
      }

      else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 17)
      {
        goto LABEL_51;
      }

      v82 = v106[2];
      v83 = v106[3];
      v84 = v106[5];
      if (v84 >> 62)
      {
        v76 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v76 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_100091C0C();
      swift_allocError();
      *v77 = v82;
      *(v77 + 8) = v83;
      v78 = 16;
      goto LABEL_191;
    }

    if (v39 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_181:

        sub_100091C0C();
        swift_allocError();
        v88 = 1;
        goto LABEL_197;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_181;
    }

    v51 = *(v106 + 64);
    if (*(v106 + 64))
    {
      if (v51 == 7)
      {
        if (v105)
        {
          v52 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v52 = *(v103 + 16);
        }

        if (!v52)
        {
          goto LABEL_194;
        }

        v12 = __OFSUB__(v52, 1);
        v54 = v52 - 1;
        if (v12)
        {
          goto LABEL_243;
        }

        if (v102)
        {
          v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_246;
          }

          if (v54 >= *(v103 + 16))
          {
LABEL_247:
            __break(1u);
LABEL_248:
            __break(1u);
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

          v0 = *(v101 + 8 * v54);
        }

        if (*(v0 + 16) == v106[2] && *(v0 + 24) == v106[3])
        {
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v56 & 1) == 0)
          {
            goto LABEL_194;
          }
        }
      }

      else if (v51 == 8)
      {

        sub_100091C0C();
        swift_allocError();
        v88 = 2;
        goto LABEL_197;
      }

      goto LABEL_149;
    }

    if (v105)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (!v53)
      {
        v57 = 0;
LABEL_124:
        v0 = v99;
        if (_CocoaArrayWrapper.endIndex.getter() < 2)
        {
          goto LABEL_148;
        }

        v58 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_126;
      }
    }

    else
    {
      v53 = *(v103 + 16);
      if (!v53)
      {
        goto LABEL_196;
      }
    }

    v12 = __OFSUB__(v53, 1);
    v55 = v53 - 1;
    if (v12)
    {
      goto LABEL_244;
    }

    if (v102)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_248;
      }

      if (v55 >= *(v103 + 16))
      {
        goto LABEL_249;
      }

      v0 = *(v101 + 8 * v55);
    }

    if (*(v0 + 16) == v106[2] && *(v0 + 24) == v106[3])
    {

      v57 = 1;
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (v105)
    {
      goto LABEL_124;
    }

    v58 = *(v103 + 16);
    if (v58 <= 1)
    {
      goto LABEL_148;
    }

LABEL_126:
    v12 = __OFSUB__(v58, 2);
    v59 = v58 - 2;
    if (v12)
    {
      goto LABEL_245;
    }

    if (v102)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_251;
      }

      if (v59 >= *(v103 + 16))
      {
        goto LABEL_252;
      }

      v0 = *(v101 + 8 * v59);
    }

    if (*(v0 + 16) == v106[2] && *(v0 + 24) == v106[3])
    {
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v60 & 1) == 0)
      {
        goto LABEL_148;
      }
    }

    if (v105)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *(v103 + 16);
    }

    v3 = v106;
    if (!v61)
    {
      goto LABEL_148;
    }

    v12 = __OFSUB__(v61, 1);
    result = v61 - 1;
    if (v12)
    {
      goto LABEL_250;
    }

    if (v102)
    {
      v0 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 64);
      swift_unknownObjectRelease();
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_257:
        __break(1u);
        return result;
      }

      if (result >= *(v103 + 16))
      {
        goto LABEL_257;
      }

      v0 = *(*(v101 + 8 * result) + 64);
    }

    if (v0 == 8)
    {
LABEL_148:
      if ((v57 & 1) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_149;
    }

    if ((v57 & 1) == 0 && v0 != 7)
    {
LABEL_196:

      sub_100091C0C();
      swift_allocError();
      v88 = 4;
      goto LABEL_197;
    }

LABEL_149:

    v9 = v101;
    v8 = v103;
    v3 = v104;
    v5 = v110;
    v7 = v102;
    if (v104 == v100)
    {
      goto LABEL_206;
    }
  }

  v0 = 0;
  v108 = v113;
  while ((v24 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v27 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      goto LABEL_192;
    }

LABEL_20:
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);

    sub_1000FE960(v29, v28);

    v31 = *(v26 + 16);
    v30 = *(v26 + 24);

    v32 = sub_10006E374(v31, v30, v108);

    if (v32 & 1) != 0 || (v33 = v112, v34 = *(v26 + 16), v35 = *(v26 + 24), , v36 = sub_10006E374(v34, v35, v33), , (v36))
    {

      v64 = *(v26 + 16);
      v63 = *(v26 + 24);
      sub_100091C0C();
      swift_allocError();
      *v65 = v64;
      *(v65 + 8) = v63;
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      *(v65 + 32) = 1;
      swift_willThrow();
    }

    v37 = *(v26 + 16);
    v38 = *(v26 + 24);

    sub_1000FC7C4(&v111, v37, v38);

    ++v0;
    if (v27 == v25)
    {
      goto LABEL_27;
    }
  }

  if (v0 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_193;
  }

  v26 = *(v24 + 8 * v0 + 32);

  v27 = v0 + 1;
  if (!__OFADD__(v0, 1))
  {
    goto LABEL_20;
  }

LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:

  sub_100091C0C();
  swift_allocError();
  v88 = 5;
LABEL_197:
  *v87 = v88;
  *(v87 + 8) = 0;
  *(v87 + 16) = 0;
  *(v87 + 24) = 0;
  *(v87 + 32) = 17;
  swift_willThrow();
}

unint64_t sub_1000FB8D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  switch(*(v0 + 32))
  {
    case 1:
      v50 = 0;
      _StringGuts.grow(_:)(71);
      v31._countAndFlagsBits = 0xD000000000000016;
      v31._object = 0x800000010029D490;
      String.append(_:)(v31);
      v32._countAndFlagsBits = v1;
      v32._object = v2;
      String.append(_:)(v32);
      v33 = " is already used by another question or option.";
      goto LABEL_36;
    case 2:
      v50 = 0;
      _StringGuts.grow(_:)(52);
      v22 = 0x800000010029D450;
      v23 = 0xD000000000000031;
      goto LABEL_33;
    case 3:
      v50 = 0;
      _StringGuts.grow(_:)(83);
      v16 = " allowed (encoding limitation).";
      v17 = 0xD00000000000001ALL;
      goto LABEL_13;
    case 4:
      v50 = 0;
      _StringGuts.grow(_:)(96);
      v16 = "t implemented yet";
      v17 = 0xD000000000000027;
LABEL_13:
      v24 = v16 | 0x8000000000000000;
      String.append(_:)(*&v17);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 0x65757120726F6620;
      v26._object = 0xEE00206E6F697473;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v1;
      v27._object = v2;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 0x2078614D202ELL;
      v28._object = 0xE600000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v10 = "extLimitBytes defined: ";
      v6 = 0xD00000000000001FLL;
      goto LABEL_39;
    case 5:
      v50 = 0;
      _StringGuts.grow(_:)(71);
      v23 = 0xD000000000000044;
      v22 = 0x800000010029D350;
LABEL_33:
      String.append(_:)(*&v23);
      goto LABEL_34;
    case 6:
      _StringGuts.grow(_:)(27);

      v30 = 0x6E6F697473657551;
      goto LABEL_38;
    case 7:
      _StringGuts.grow(_:)(25);

      v30 = 0x206E6F6974704FLL;
LABEL_38:
      v50 = v30;
      v43._countAndFlagsBits = v1;
      v43._object = v2;
      String.append(_:)(v43);
      v10 = "Options order for question ";
      v6 = 0xD000000000000010;
      goto LABEL_39;
    case 8:
      _StringGuts.grow(_:)(45);

      v50 = 0xD00000000000001BLL;
      v48._countAndFlagsBits = v1;
      v48._object = v2;
      String.append(_:)(v48);
      v49._countAndFlagsBits = 0x61766E6920736920;
      v49._object = 0xED0000203A64696CLL;
      String.append(_:)(v49);
      v39 = v4;
      v40 = v3;
      goto LABEL_42;
    case 9:
      v50 = 0;
      _StringGuts.grow(_:)(53);
      v20._countAndFlagsBits = 0xD000000000000017;
      v20._object = 0x800000010029D250;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v1;
      v21._object = v2;
      String.append(_:)(v21);
      v14 = 0xD00000000000001ALL;
      v15 = 0x800000010029D2F0;
      goto LABEL_9;
    case 0xA:
      v50 = 0;
      _StringGuts.grow(_:)(50);
      v44._countAndFlagsBits = 0x6E6F697473657551;
      v44._object = 0xE900000000000020;
      String.append(_:)(v44);
      v45._countAndFlagsBits = v1;
      v45._object = v2;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 0xD000000000000020;
      v46._object = 0x800000010029D2C0;
      String.append(_:)(v46);
      _print_unlocked<A, B>(_:_:)();
      v47._countAndFlagsBits = 10272;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);
      String.append(_:)(*(v4 + 16));
      v6 = 41;
      goto LABEL_43;
    case 0xB:
      _StringGuts.grow(_:)(40);

      v50 = 0xD000000000000022;
      v13._countAndFlagsBits = v1;
      v13._object = v2;
      String.append(_:)(v13);
      v14 = 8250;
      v15 = 0xE200000000000000;
LABEL_9:
      String.append(_:)(*&v14);
      v6 = v4;
      v7 = v3;
      goto LABEL_44;
    case 0xC:
      v50 = 0;
      _StringGuts.grow(_:)(55);
      v18._countAndFlagsBits = 0xD000000000000017;
      v18._object = 0x800000010029D250;
      String.append(_:)(v18);
      v19._countAndFlagsBits = v1;
      v19._object = v2;
      String.append(_:)(v19);
      v10 = "Condition for question ";
      v6 = 0xD00000000000001ELL;
      goto LABEL_39;
    case 0xD:
      v50 = 0;
      _StringGuts.grow(_:)(84);
      v41._countAndFlagsBits = 0xD000000000000023;
      v41._object = 0x800000010029D1F0;
      String.append(_:)(v41);
      v42._countAndFlagsBits = v1;
      v42._object = v2;
      String.append(_:)(v42);
      v33 = " refers to builtin question, it is not allowed.";
LABEL_36:
      v10 = (v33 - 32);
      v6 = 0xD00000000000002FLL;
      goto LABEL_39;
    case 0xE:
      v50 = 0;
      _StringGuts.grow(_:)(64);
      v11._countAndFlagsBits = 0xD000000000000014;
      v11._object = 0x800000010029D1A0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = v1;
      v12._object = v2;
      String.append(_:)(v12);
      v10 = "Built-in condition (";
      v6 = 0xD00000000000002ALL;
      goto LABEL_39;
    case 0xF:
      _StringGuts.grow(_:)(37);

      v50 = 0xD000000000000022;
LABEL_34:
      v39 = v1;
      v40 = v2;
LABEL_42:
      String.append(_:)(*&v39);
      v6 = 46;
LABEL_43:
      v7 = 0xE100000000000000;
      goto LABEL_44;
    case 0x10:
      v50 = 0;
      _StringGuts.grow(_:)(54);
      v8._countAndFlagsBits = 0x20656C646E7542;
      v8._object = 0xE700000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v1;
      v9._object = v2;
      String.append(_:)(v9);
      v10 = "duplicate optionId ";
      v6 = 0xD00000000000002DLL;
LABEL_39:
      v7 = v10 | 0x8000000000000000;
      goto LABEL_44;
    case 0x11:
      result = 0xD000000000000031;
      if (v4 | v2 | v1 | v3)
      {
        v35 = v4 | v2 | v3;
        if (v1 != 1 || v35 != 0)
        {
          if (v1 == 2 && v35 == 0)
          {
            return 0xD000000000000025;
          }

          else if (v1 == 3 && v35 == 0)
          {
            return 0xD000000000000020;
          }

          else if (v1 != 4 || v35)
          {
            return 0xD000000000000038;
          }

          else
          {
            return 0xD000000000000084;
          }
        }
      }

      return result;
    default:
      _StringGuts.grow(_:)(39);

      v50 = 0xD000000000000023;
      v5._countAndFlagsBits = v1;
      v5._object = v2;
      String.append(_:)(v5);
      v6 = 11815;
      v7 = 0xE200000000000000;
LABEL_44:
      String.append(_:)(*&v6);
      return v50;
  }
}

uint64_t sub_1000FC17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  type metadata accessor for QuestionCondition();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);

    v14 = sub_10006E374(v12, v13, a3);

    if (v14)
    {
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      v18 = *(v11 + 24);
      v17 = *(v11 + 32);
      v19 = v16 == v18 && v15 == v17;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100091C0C();
        swift_allocError();
        *v20 = v16;
        *(v20 + 8) = v15;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        v21 = 12;
        goto LABEL_30;
      }

      v49 = *(v4 + 104);
      if (*(v49 + 16))
      {

        v72 = sub_100186A08(v18, v17);
        v51 = v50;

        if (v51)
        {
          if (*(*(*(v49 + 56) + 8 * v72) + 32) != 3 || *(a1 + 32) == 3)
          {
          }

          sub_100091C0C();
          swift_allocError();
          *v20 = v16;
          *(v20 + 8) = v15;
          *(v20 + 16) = 0;
          *(v20 + 24) = 0;
          v21 = 13;
          goto LABEL_30;
        }
      }
    }

    v53 = *(v11 + 24);
    v52 = *(v11 + 32);
    sub_100091C0C();
    swift_allocError();
    *v20 = v53;
    *(v20 + 8) = v52;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = 6;
    goto LABEL_30;
  }

  type metadata accessor for OptionCondition();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);

    v26 = sub_10006E374(v24, v25, a4);

    if ((v26 & 1) == 0)
    {
      v43 = *(a1 + 16);
      v42 = *(a1 + 24);
      v45 = *(v23 + 16);
      v44 = *(v23 + 24);
      sub_100091C0C();
      swift_allocError();
      *v46 = v43;
      *(v46 + 8) = v42;
      *(v46 + 16) = v45;
      *(v46 + 24) = v44;
      *(v46 + 32) = 9;
      swift_willThrow();

LABEL_31:
    }

    v27 = *(v4 + 112);
    if (*(v27 + 16) && (v28 = *(v23 + 16), v29 = *(v23 + 24), , v30 = sub_100186A08(v28, v29), v32 = v31, , (v32 & 1) != 0))
    {
      v33 = *(*(v27 + 56) + 8 * v30);
      v35 = *(a1 + 16);
      v34 = *(a1 + 24);
      v36 = *(v33 + 16) == v35 && *(v33 + 24) == v34;
      if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100091C0C();
        swift_allocError();
        *v20 = v35;
        *(v20 + 8) = v34;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        v21 = 12;
      }

      else
      {
        if (*(v33 + 32) != 3)
        {
        }

        sub_100091C0C();
        swift_allocError();
        *v20 = v35;
        *(v20 + 8) = v34;
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        v21 = 13;
      }
    }

    else
    {
      v48 = *(v23 + 16);
      v47 = *(v23 + 24);
      sub_100091C0C();
      swift_allocError();
      *v20 = v48;
      *(v20 + 8) = v47;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v21 = 7;
    }

LABEL_30:
    *(v20 + 32) = v21;
    swift_willThrow();
    goto LABEL_31;
  }

  type metadata accessor for BuiltInCondition();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(a1 + 32) != 3)
    {
      v38 = sub_10017FEE4();
      v40 = v39;
      sub_100091C0C();
      swift_allocError();
      *v41 = v38;
      *(v41 + 8) = v40;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 14;
      return swift_willThrow();
    }

    return result;
  }

  type metadata accessor for LogicalCondition();
  v54 = swift_dynamicCastClass();
  if (!v54)
  {
LABEL_52:
    type metadata accessor for NoPrerequisites();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    v64 = *(a1 + 16);
    v63 = *(a1 + 24);
    sub_100091C0C();
    swift_allocError();
    *v65 = v64;
    *(v65 + 8) = v63;
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    v66 = 15;
LABEL_63:
    *(v65 + 32) = v66;
    swift_willThrow();
  }

  v55 = v54;
  type metadata accessor for NotCondition();
  v56 = swift_dynamicCastClass();
  if (!v56)
  {
    goto LABEL_38;
  }

  v57 = *(v56 + 24);
  if (!(v57 >> 62))
  {
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
LABEL_62:
    v68 = *(a1 + 16);
    v67 = *(a1 + 24);
    sub_100091C0C();
    swift_allocError();
    *v65 = v68;
    *(v65 + 8) = v67;
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    v66 = 5;
    goto LABEL_63;
  }

LABEL_38:
  v58 = *(v55 + 24);
  if (v58 >> 62)
  {
    goto LABEL_60;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

  if (v59)
  {
    v69 = a1;
    v70 = v58;
    v60 = 0;
    v73 = v58 & 0xC000000000000001;
    v71 = v58 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v73)
      {
        a1 = v59;
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      else
      {
        if (v60 >= *(v71 + 16))
        {
          __break(1u);
LABEL_60:
          v59 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_40;
        }

        a1 = v59;
        v61 = *(v58 + 8 * v60 + 32);

        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_51;
        }
      }

      sub_1000FC17C(v69, v61, a3, a4);
      if (v6)
      {
      }

      ++v60;
      v59 = a1;
      v19 = v62 == a1;
      v58 = v70;
    }

    while (!v19);
  }
}

uint64_t sub_1000FC7C4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_1000FD7B8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000FC930(void *a1, uint64_t a2)
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

      type metadata accessor for Option();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      v18 = sub_1000FCCAC(v7, result + 1);
      if (*(v18 + 24) <= *(v18 + 16))
      {
        sub_1000FD10C();
      }

      sub_1000FD5A4(v19, v18);

      *v3 = v18;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v2;

      sub_1000FD938(v17, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v21;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v6 + 48) + 8 * v12);
      v15 = *(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24);
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

uint64_t sub_1000FCB8C(_BYTE *a1, Swift::Int a2, uint64_t *a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1000FD648(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1000FCCAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000040A8(&qword_10035E678);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Option();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1000FD10C();
        }

        v2 = v14;
        Hasher.init(_seed:)();
        String.hash(into:)();
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

uint64_t sub_1000FCEAC()
{
  v1 = v0;
  v2 = *v0;
  sub_1000040A8(&qword_10035E650);
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

uint64_t sub_1000FD10C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000040A8(&qword_10035E678);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000FD35C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000040A8(a2);
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
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
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
      *(*(v6 + 48) + v14) = v18;
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

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_1000FD5A4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_1000FD648(Swift::Int result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000FD35C(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1000FDD70(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_1000FE30C(v6 + 1, a4);
  }

  v9 = *v4;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000FD7B8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000FCEAC();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000FDAB0();
      goto LABEL_16;
    }

    sub_1000FDEA0();
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

Swift::Int sub_1000FD938(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000FD10C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1000FDC0C();
      goto LABEL_16;
    }

    sub_1000FE0D8();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for Option();
    do
    {
      v11 = *(*(v8 + 48) + 8 * a2);
      if (*(v11 + 16) == *(v5 + 16) && *(v11 + 24) == *(v5 + 24))
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000FDAB0()
{
  v1 = v0;
  sub_1000040A8(&qword_10035E650);
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

void *sub_1000FDC0C()
{
  v1 = v0;
  sub_1000040A8(&qword_10035E678);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1000FDD70(uint64_t *a1)
{
  v2 = v1;
  sub_1000040A8(a1);
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
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
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

uint64_t sub_1000FDEA0()
{
  v1 = v0;
  v2 = *v0;
  sub_1000040A8(&qword_10035E650);
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

uint64_t sub_1000FE0D8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000040A8(&qword_10035E678);
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_1000FE30C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1000040A8(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
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
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v3 = v2;
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

uint64_t sub_1000FE524(void *a1, void *a2)
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

uint64_t sub_1000FE57C(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for Option();
      swift_dynamicCast();
      return v11;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    type metadata accessor for Option();
    swift_dynamicCast();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = -1 << *(a4 + 32);
    v5 = v6 & ~v7;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v8 = ~v7;
      do
      {
        v9 = *(*(a4 + 48) + 8 * v5);
        v10 = *(v9 + 16) == *(v11 + 16) && *(v9 + 24) == *(v11 + 24);
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_20;
        }

        v5 = (v5 + 1) & v8;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_20:
  }
}

uint64_t sub_1000FE760(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000FE7B4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000FE808(uint64_t a1, uint64_t a2)
{
  if (a1 != 65 || a2 != 0xE100000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_6;
    }

    if (a1 == 90 && a2 == 0xE100000000000000)
    {
      return 1;
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

LABEL_6:
  if (a1 == 97 && a2 == 0xE100000000000000)
  {
LABEL_8:
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = a1 == 95 && a2 == 0xE100000000000000;
    if ((v4 & 1) == 0 || v6)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 122 && a2 == 0xE100000000000000)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (a1 == 95 && a2 == 0xE100000000000000)
  {
    return 1;
  }

LABEL_16:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000FE960(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000FA564(a1, a2);
  if (!v5 || (v6 = sub_1000FE808(v4, v5), , (v6 & 1) == 0))
  {
    sub_100091C0C();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    swift_willThrow();
  }

  v7 = String.Iterator.next()();
  if (!v7.value._object)
  {
  }

  countAndFlagsBits = v7.value._countAndFlagsBits;
  object = v7.value._object;
  while (1)
  {
    if (countAndFlagsBits != 65 || object != 0xE100000000000000)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_10;
      }

      if (countAndFlagsBits == 90 && object == 0xE100000000000000)
      {
        goto LABEL_31;
      }
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_10:
    if (countAndFlagsBits == 97 && object == 0xE100000000000000)
    {
      goto LABEL_12;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 122 && object == 0xE100000000000000)
      {
        goto LABEL_31;
      }

LABEL_12:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v11 = object == 0xE100000000000000 && countAndFlagsBits == 95;
      if (v11 || (v10 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    if (countAndFlagsBits == 95 && object == 0xE100000000000000)
    {
      goto LABEL_31;
    }

LABEL_17:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_31;
    }

    if (countAndFlagsBits != 48 || object != 0xE100000000000000)
    {
      break;
    }

LABEL_20:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_35;
    }

LABEL_31:

LABEL_32:
    v12 = String.Iterator.next()();
    countAndFlagsBits = v12.value._countAndFlagsBits;
    object = v12.value._object;
    if (!v12.value._object)
    {
    }
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (countAndFlagsBits == 57 && object == 0xE100000000000000)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_35:
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_32;
  }

  sub_100091C0C();
  swift_allocError();
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  swift_willThrow();
}

uint64_t sub_1000FEC38(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112);
  if (v2)
  {
    v3 = result;
    v4 = &_swiftEmptySetSingleton;
    v48 = &_swiftEmptySetSingleton;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v2 + 40);
      while (v6 < *(v2 + 16))
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        if (v9 != 45 || v8 != 0xE100000000000000)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {

            if (!sub_10008C2EC(v9, v8))
            {

              v26 = sub_10006E374(v9, v8, a2);
              v28 = *(v3 + 16);
              v27 = *(v3 + 24);
              v46 = 0;
              v47 = 0xE000000000000000;
              if (v26)
              {

                _StringGuts.grow(_:)(43);

                v46 = 0x64496E6F6974706FLL;
                v47 = 0xE900000000000020;
                v29._countAndFlagsBits = v9;
                v29._object = v8;
                String.append(_:)(v29);

                v30._countAndFlagsBits = 0xD000000000000020;
                v30._object = 0x800000010029CE10;
                String.append(_:)(v30);
              }

              else
              {

                _StringGuts.grow(_:)(19);

                v46 = 0xD000000000000011;
                v47 = 0x800000010029CDF0;
                v37._countAndFlagsBits = v9;
                v37._object = v8;
                String.append(_:)(v37);
              }

              v38 = v46;
              v39 = v47;
              sub_100091C0C();
              swift_allocError();
              *v36 = v28;
              *(v36 + 8) = v27;
              *(v36 + 16) = v38;
              *(v36 + 24) = v39;
              goto LABEL_37;
            }

            if (sub_10006E374(v9, v8, v48))
            {

              v31 = *(v3 + 16);
              v32 = *(v3 + 24);
              v46 = 0;
              v47 = 0xE000000000000000;

              _StringGuts.grow(_:)(21);

              v46 = 0xD000000000000013;
              v47 = 0x800000010029CFB0;
              v33._countAndFlagsBits = v9;
              v33._object = v8;
              String.append(_:)(v33);

              v34 = v46;
              v35 = v47;
              sub_100091C0C();
              swift_allocError();
              *v36 = v31;
              *(v36 + 8) = v32;
              *(v36 + 16) = v34;
              *(v36 + 24) = v35;
LABEL_37:
              *(v36 + 32) = 8;
              return swift_willThrow();
            }

            sub_1000FC7C4(&v46, v9, v8);
          }
        }

        ++v6;
        v7 += 2;
        if (v5 == v6)
        {
          v4 = v48;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
    }

    else
    {
LABEL_15:
      if (v4[2])
      {
        v11 = 0;
        v12 = 0;
        v13 = v2 + 40;
        v14 = 1;
        while (2)
        {
          v45 = v11;
          v15 = (v13 + 16 * v12);
          do
          {
            if (v5 == v12)
            {
            }

            v11 = v12;
            v16 = *(v2 + 16);
            if (v12 >= v16)
            {
              goto LABEL_43;
            }

            result = *(v15 - 1);
            if (result == 45 && *v15 == 0xE100000000000000)
            {
              break;
            }

            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            v15 += 2;
            v12 = v11 + 1;
          }

          while ((result & 1) == 0);
          if (v11)
          {
            if (v11 == v16 - 1)
            {

              v42 = *(v3 + 16);
              v43 = *(v3 + 24);
              v21 = 0x800000010029CF40;
              sub_100091C0C();
              swift_allocError();
              *v22 = v42;
              *(v22 + 8) = v43;
              v23 = 0xD000000000000018;
            }

            else
            {
              v12 = v11 + 1;
              v18 = v14 | (v45 + 1 != v11);
              v14 = 0;
              v13 = v2 + 40;
              if (v18)
              {
                continue;
              }

              v19 = *(v3 + 16);
              v20 = *(v3 + 24);
              v21 = 0x800000010029CF10;
              sub_100091C0C();
              swift_allocError();
              *v22 = v19;
              *(v22 + 8) = v20;
              v23 = 0xD000000000000025;
            }
          }

          else
          {

            v40 = *(v3 + 16);
            v41 = *(v3 + 24);
            v21 = 0x800000010029CF60;
            sub_100091C0C();
            swift_allocError();
            *v22 = v40;
            *(v22 + 8) = v41;
            v23 = 0xD000000000000019;
          }

          break;
        }
      }

      else
      {

        v24 = *(v3 + 16);
        v25 = *(v3 + 24);
        v21 = 0x800000010029CF80;
        sub_100091C0C();
        swift_allocError();
        *v22 = v24;
        *(v22 + 8) = v25;
        v23 = 0xD000000000000024;
      }

      *(v22 + 16) = v23;
      *(v22 + 24) = v21;
      *(v22 + 32) = 8;

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000FF128(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 120);
    if (*(result + 32))
    {
      v6 = *(result + 16);
      v5 = *(result + 24);
      v35 = 0;
      v36 = 0xE000000000000000;

      _StringGuts.grow(_:)(77);
      v7._countAndFlagsBits = 0x206E6F6974704FLL;
      v7._object = 0xE700000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = v4;
      v8._object = v2;
      String.append(_:)(v8);
      v9 = "usedBitsInLastByte";
      v10 = 0xD000000000000044;
      goto LABEL_4;
    }

    if (!*(*(result + 56) + 16))
    {
      v6 = *(result + 16);
      v5 = *(result + 24);
      v35 = 0;
      v36 = 0xE000000000000000;

      _StringGuts.grow(_:)(74);
      v23._countAndFlagsBits = 0x206E6F6974704FLL;
      v23._object = 0xE700000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = v4;
      v24._object = v2;
      String.append(_:)(v24);
      v9 = "mentioned in optionsOrder";
      v10 = 0xD000000000000041;
      goto LABEL_4;
    }

    v16 = sub_10008C2EC(*(result + 120), v2);
    if (!v16)
    {
      v25 = sub_10006E374(v4, v2, a2);
      v6 = v3[2];
      v5 = v3[3];
      if ((v25 & 1) == 0)
      {

        _StringGuts.grow(_:)(19);

        v35 = 0xD000000000000011;
        v36 = 0x800000010029CDF0;
        v10 = v4;
        v11 = v2;
        goto LABEL_5;
      }

      _StringGuts.grow(_:)(43);

      v35 = 0x64496E6F6974706FLL;
      v36 = 0xE900000000000020;
      v26._countAndFlagsBits = v4;
      v26._object = v2;
      String.append(_:)(v26);
      v9 = "invalid optionId ";
      v10 = 0xD000000000000020;
LABEL_4:
      v11 = v9 | 0x8000000000000000;
LABEL_5:
      String.append(_:)(*&v10);
      v12 = v35;
      v13 = v36;
      sub_100091C0C();
      swift_allocError();
      *v14 = v6;
      *(v14 + 8) = v5;
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      *(v14 + 32) = 11;
      return swift_willThrow();
    }

    if (*(v16 + 40))
    {
      v18 = v3[2];
      v17 = v3[3];
      v35 = 0;
      v36 = 0xE000000000000000;

      _StringGuts.grow(_:)(72);
      v19._countAndFlagsBits = 0x206E6F6974704FLL;
      v19._object = 0xE700000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v4;
      v20._object = v2;
      String.append(_:)(v20);
      v21 = "fferent question";
      v22 = 46;
    }

    else
    {
      if (!v3[14])
      {
      }

      v35 = v4;
      v36 = v2;
      __chkstk_darwin(v16);
      v34[2] = &v35;
      if (sub_1000FA628(sub_1000FF50C, v34, v27))
      {
      }

      v18 = v3[2];
      v17 = v3[3];
      v35 = 0;
      v36 = 0xE000000000000000;

      _StringGuts.grow(_:)(66);
      v28._countAndFlagsBits = 0x206E6F6974704FLL;
      v28._object = 0xE700000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = v4;
      v29._object = v2;
      String.append(_:)(v29);
      v21 = "rted for Selection options only";
      v22 = 40;
    }

    v30._countAndFlagsBits = v22 | 0xD000000000000011;
    v30._object = (v21 | 0x8000000000000000);
    String.append(_:)(v30);
    v31 = v35;
    v32 = v36;
    sub_100091C0C();
    swift_allocError();
    *v33 = v18;
    *(v33 + 8) = v17;
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    *(v33 + 32) = 11;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000FF50C(void *a1)
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

uint64_t sub_1000FF564(uint64_t a1)
{
  if ((*(a1 + 32) & 0x1Fu) <= 0x10)
  {
    return *(a1 + 32) & 0x1F;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_1000FF580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 33))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000FF5C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 239;
    *(result + 8) = 0;
    if (a3 >= 0xEF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000FF610(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x11)
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    LOBYTE(a2) = 17;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_1000FF668()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MetalView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = [v1 traitCollection];
    [v6 displayScale];
    v8 = v7;

    [v4 setContentsScale:v8];
    [v4 bounds];
    Width = CGRectGetWidth(v16);
    [v4 contentsScale];
    v11 = Width * v10;
    [v4 bounds];
    Height = CGRectGetHeight(v17);
    [v4 contentsScale];
    v14 = v13;

    [v4 setDrawableSize:{v11, Height * v14}];
  }
}

id sub_1000FF9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetalView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000FFA28()
{
  result = qword_10035E6A8[0];
  if (!qword_10035E6A8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_10035E6A8);
  }

  return result;
}

uint64_t sub_1000FFA74(uint64_t result, uint64_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = vdiv_f32(a3, a5);
  v6 = vdiv_f32(a4, a5);
  v7 = a2;
  v8 = (1.0 - (vmuls_lane_f32(0.5, v6, 1) + 0.5)) * a2;
  v9 = ((0.5 * v6.f32[0]) + 0.5) * result;
  v10 = (1.0 - (vmuls_lane_f32(0.5, v5, 1) + 0.5)) * a2;
  v11 = floorf(((0.5 * v5.f32[0]) + 0.5) * result);
  if (v11 <= result)
  {
    v12 = v11;
  }

  else
  {
    v12 = result;
  }

  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = floorf(v8);
  if (v14 <= v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = a2;
  }

  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = ceilf(v9) - v13;
  if ((result - v13) < v17)
  {
    v17 = result - v13;
  }

  if (v17 < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v17;
  }

  v19 = ceilf(v10) - v16;
  v20 = v7 - v16;
  if (v20 < v19)
  {
    v19 = v20;
  }

  if (v19 < 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  v23 = (LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF && v12 >= 0.0;
  if (v13 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v25 = (LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF && v15 >= 0.0;
  if (v16 <= -9.2234e18)
  {
    goto LABEL_60;
  }

  if (v16 >= 9.2234e18)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v27 = (LODWORD(v17) & 0x7FFFFFFFu) > 0x7F7FFFFF && v17 >= 0.0;
  if (v18 <= -9.2234e18)
  {
    goto LABEL_62;
  }

  if (v18 >= 9.2234e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v29 = (LODWORD(v19) & 0x7FFFFFFFu) > 0x7F7FFFFF && v19 >= 0.0;
  if (v23 || v25 || v27 || v29)
  {
    goto LABEL_64;
  }

  if (v21 <= -9.2234e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v21 < 9.2234e18)
  {
    return v13;
  }

LABEL_66:
  __break(1u);
  return result;
}

void sub_1000FFC5C()
{
  sub_1000FFE90();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NavigationCancellationItem();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000FFCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = type metadata accessor for NavigationCancellationItem();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000FFDD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for NavigationCancellationItem();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000FFE90()
{
  if (!qword_100359EE8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100359EE8);
    }
  }
}

uint64_t sub_1000FFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000040A8(&qword_10035E740);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  static ToolbarItemPlacement.principal.getter();
  v11 = a1;
  v12 = a2;
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_10035E748, &qword_10035E740);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001000DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v21 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000040A8(&qword_10035E758);
  v7 = *(v20 - 8);
  v8 = __chkstk_darwin(v20);
  v10 = v19 - v9;
  v12 = *v2;
  v11 = v2[1];
  (*(v4 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v3, v8);
  v13 = sub_1000040A8(&qword_10035E760);
  v14 = sub_100009274(qword_10035E768, &qword_10035E760);
  View.navigationBarTitleDisplayMode(_:)();
  (*(v4 + 8))(v6, v3);
  v22 = v12;
  v23 = v11;
  sub_1000040A8(&qword_10035E738);
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = sub_100008CF0(&qword_10035E740);
  v16 = sub_100009274(&qword_10035E748, &qword_10035E740);
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  View.toolbar<A>(content:)();
  return (*(v7 + 8))(v10, v17);
}

uint64_t sub_1001003C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v63 = a3;
  v61 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v68 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v56 = &v48 - v9;
  sub_100008CF0(&qword_10035E730);
  v10 = *(a2 + 16);
  v65 = *(a2 + 24);
  v66 = v10;
  v11 = type metadata accessor for ToolbarItem();
  v12 = swift_getWitnessTable();
  v67 = v11;
  v68 = v12;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for TupleToolbarContent();
  v54 = WitnessTable;
  v55 = v6;
  v67 = v6;
  v68 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v58 = OpaqueTypeMetadata2;
  v67 = OpaqueTypeMetadata2;
  v68 = v13;
  v50 = OpaqueTypeConformance2;
  v69 = OpaqueTypeConformance2;
  v70 = v15;
  v16 = v15;
  v51 = swift_getOpaqueTypeMetadata2();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = &v48 - v20;
  v21 = sub_1000040A8(qword_100356970);
  __chkstk_darwin(v21 - 8);
  v23 = &v48 - v22;
  v24 = type metadata accessor for ToolbarItemPlacement();
  v64 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = *(a2 + 36);
  v62 = v3;
  v29 = (v3 + v28);
  if (*v29 == 1)
  {
    v27 = static Color.red.getter();
  }

  v30 = type metadata accessor for NavigationCancellationItem();
  sub_100101558(&v29[*(v30 + 36)], v23);
  v31 = v64;
  v32 = *(v64 + 48);
  v33 = v32(v23, 1, v24);
  v48 = v24;
  if (v33 == 1)
  {
    static ToolbarItemPlacement.navigationBarTrailing.getter();
    if (v32(v23, 1, v24) != 1)
    {
      sub_1001015C8(v23);
    }
  }

  else
  {
    (*(v31 + 32))(v26, v23, v24);
  }

  v34 = v59;
  v35 = v49;
  v36 = v61;
  (*(v59 + 104))(v49, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v61);
  swift_checkMetadataState();
  v37 = v56;
  View.navigationBarTitleDisplayMode(_:)();
  v38 = (*(v34 + 8))(v35, v36);
  __chkstk_darwin(v38);
  v39 = v65;
  *(&v48 - 6) = v66;
  *(&v48 - 5) = v39;
  *(&v48 - 4) = v62;
  *(&v48 - 3) = v26;
  *(&v48 - 2) = v27;
  v40 = swift_checkMetadataState();
  v41 = v58;
  v42 = v50;
  View.toolbar<A>(content:)();

  (*(v57 + 8))(v37, v41);
  v67 = v41;
  v68 = v40;
  v69 = v42;
  v70 = v16;
  v43 = swift_getOpaqueTypeConformance2();
  v45 = v51;
  v44 = v52;
  sub_10009A58C(v18, v51, v43);
  v46 = *(v53 + 8);
  v46(v18, v45);
  sub_10009A58C(v44, v45, v43);
  v46(v44, v45);
  return (*(v64 + 8))(v26, v48);
}

uint64_t sub_100100A88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a3;
  v62 = a2;
  v59 = a6;
  v67 = a4;
  v65 = a5;
  v7 = type metadata accessor for ToolbarItem();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v49 - v8;
  WitnessTable = swift_getWitnessTable();
  v70 = v7;
  v71 = WitnessTable;
  v63 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v49 - v13;
  v14 = sub_1000040A8(&qword_10035E738);
  v56 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v49 - v15;
  v16 = type metadata accessor for ToolbarItemPlacement();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v68 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000040A8(&qword_10035E740);
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v49 - v19;
  v60 = sub_1000040A8(&qword_10035E730);
  __chkstk_darwin(v60);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v69 = &v49 - v25;
  v26 = a1;
  v27 = a1[1];
  if (v27)
  {
    v28 = v26;
    v50 = v18;
    v29 = *v26;
    v51 = v16;
    v30 = v14;
    v31 = static ToolbarItemPlacement.principal.getter();
    __chkstk_darwin(v31);
    *(&v49 - 2) = v29;
    *(&v49 - 1) = v27;
    v26 = v28;
    v32 = v20;
    ToolbarItem<>.init(placement:content:)();
    v33 = sub_100009274(&qword_10035E748, &qword_10035E740);
    v34 = v53;
    v35 = v50;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v36 = v56;
    (*(v56 + 16))(v22, v34, v30);
    (*(v36 + 56))(v22, 0, 1, v30);
    v70 = v35;
    v71 = v33;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100101640(v22);
    v37 = v30;
    v16 = v51;
    (*(v36 + 8))(v34, v37);
    (*(v52 + 8))(v32, v35);
  }

  else
  {
    (*(v56 + 56))(v22, 1, 1, v14, v24);
    v38 = sub_100009274(&qword_10035E748, &qword_10035E740);
    v70 = v18;
    v71 = v38;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100101640(v22);
  }

  v39 = (*(v57 + 16))(v68, v62, v16);
  __chkstk_darwin(v39);
  v40 = v65;
  *(&v49 - 4) = v67;
  *(&v49 - 3) = v40;
  *(&v49 - 2) = v26;
  v41 = v54;
  ToolbarItem<>.init(placement:content:)();
  v42 = v61;
  v43 = v63;
  ToolbarContent.containerTint(_:)();
  (*(v55 + 8))(v41, v7);
  v70 = v7;
  v71 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v64;
  v45 = OpaqueTypeMetadata2;
  (*(v10 + 16))(v64, v42, OpaqueTypeMetadata2);
  v46 = *(v10 + 8);
  v46(v42, v45);
  sub_1001016B4();
  v47 = v69;
  sub_100101434(v69, v44, v60, v45);
  v46(v44, v45);
  return sub_100101640(v47);
}

uint64_t sub_1001011F4@<X0>(uint64_t a1@<X8>)
{
  sub_100031770();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.headline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000317C4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1001012D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  v12 = a1 + *(type metadata accessor for NavigationTitleToolbarViewModifier() + 36);
  v13 = type metadata accessor for NavigationCancellationItem();
  (*(v12 + *(v13 + 40)))();
  sub_10009A58C(v8, a2, a3);
  v14 = *(v6 + 8);
  v14(v8, a2);
  sub_10009A58C(v11, a2, a3);
  return (v14)(v11, a2);
}

uint64_t sub_100101434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = &v15 - v10;
  v13 = *(v12 + 48);
  (*(*(a3 - 8) + 16))(&v15 - v10, a1, a3, v9);
  (*(*(a4 - 8) + 16))(&v11[v13], a2, a4);
  return TupleToolbarContent.init(_:)();
}

uint64_t sub_100101558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(qword_100356970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001015C8(uint64_t a1)
{
  v2 = sub_1000040A8(qword_100356970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100101640(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035E730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001016B4()
{
  result = qword_10035E750;
  if (!qword_10035E750)
  {
    sub_100008CF0(&qword_10035E730);
    sub_100008CF0(&qword_10035E740);
    sub_100009274(&qword_10035E748, &qword_10035E740);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E750);
  }

  return result;
}

uint64_t sub_1001017B8()
{
  type metadata accessor for NavigationTitleToolbarViewModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100008CF0(&qword_10035E730);
  type metadata accessor for ToolbarItem();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleToolbarContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001019CC()
{
  sub_100008CF0(&qword_10035E758);
  sub_100008CF0(&qword_10035E738);
  sub_100008CF0(&qword_10035E760);
  sub_100009274(qword_10035E768, &qword_10035E760);
  swift_getOpaqueTypeConformance2();
  sub_100008CF0(&qword_10035E740);
  sub_100009274(&qword_10035E748, &qword_10035E740);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100101B44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100101B80(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100101BBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_100101C04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100101CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_100008CF0(&qword_10035B050);
  v27 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v24 = &protocol conformance descriptor for VStack<A>;
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058);
  v3 = *(a1 + 32);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  *&v4 = vdupq_laneq_s64(v27, 1).u64[0];
  *(&v4 + 1) = v3;
  v23 = *(a1 + 48);
  v37 = v4;
  v38 = v23;
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v22[1] = swift_getWitnessTable();
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  sub_100008CF0(&qword_10035B068);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  v28 = v27;
  v16 = *(a1 + 40);
  v29 = v3;
  v30 = v16;
  v31 = v23;
  v32 = v25;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  sub_100102CEC();
  v17 = swift_getWitnessTable();
  sub_10002BE68();
  (*(v6 + 8))(v8, v5);
  v18 = sub_100009274(&qword_10035B070, &qword_10035B068);
  v33 = v17;
  v34 = v18;
  v19 = swift_getWitnessTable();
  sub_10009A58C(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_10009A58C(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t sub_10010227C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(__int128 *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a7;
  v70 = a1;
  v78 = a4;
  v79 = a6;
  v74 = a8;
  v75 = a5;
  *&v115 = a3;
  v77 = a3;
  *(&v115 + 1) = a4;
  *&v116 = a6;
  *(&v116 + 1) = a7;
  v68 = type metadata accessor for ScrollableContentWithFloatingPanelView();
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for TupleView();
  v67 = *(v9 - 8);
  __chkstk_darwin(v9);
  v66 = &v60 - v10;
  v64 = *(a2 - 8);
  __chkstk_darwin(v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v60 - v14;
  sub_100008CF0(&qword_10035B050);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ZStack();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  v71 = v22;
  v81 = v9;
  v23 = type metadata accessor for _ConditionalContent();
  v72 = *(v23 - 8);
  v73 = v23;
  __chkstk_darwin(v23);
  v80 = &v60 - v24;
  v25 = a2;
  *&v115 = a2;
  *(&v115 + 1) = v77;
  *&v116 = v78;
  v26 = v75;
  *(&v116 + 1) = v75;
  *&v117 = v79;
  v27 = v69;
  *(&v117 + 1) = v69;
  type metadata accessor for ScrollableContentWithPanelsView();
  v28 = v70;
  v29 = sub_100102CEC();
  if (v29)
  {
    v76 = &v60;
    __chkstk_darwin(v29);
    v31 = v77;
    v30 = v78;
    *(&v60 - 8) = v25;
    *(&v60 - 7) = v31;
    *(&v60 - 6) = v30;
    *(&v60 - 5) = v26;
    *(&v60 - 4) = v79;
    *(&v60 - 3) = v27;
    v59 = v28;
    static Alignment.center.getter();
    ZStack.init(alignment:content:)();
    v32 = v71;
    v33 = swift_getWitnessTable();
    sub_10009A58C(v18, v32, v33);
    v34 = *(v16 + 8);
    v34(v18, v32);
    sub_10009A58C(v21, v32, v33);
    swift_getWitnessTable();
    sub_100096F00(v18, v32);
    v34(v18, v32);
    v34(v21, v32);
  }

  else
  {
    v35 = v28;
    v36 = v65;
    (*(v28 + 16))();
    v61 = v25;
    sub_10009A58C(v36, v25, v26);
    v37 = v64;
    v38 = *(v64 + 8);
    v62 = v64 + 8;
    WitnessTable = v38;
    v38(v36, v25);
    v39 = *(v28 + 32);
    v40 = *(v28 + 40);
    v41 = *(v35 + 48);
    v42 = *(v35 + 56);
    v43 = *(v35 + 64);

    v59 = v27;
    sub_100211268(v39, v40, v41, v42, v43, &v115);
    v44 = v68;
    v45 = swift_getWitnessTable();
    sub_10009A58C(&v115, v44, v45);
    v112[8] = v123;
    v112[9] = v124;
    v112[10] = v125;
    v112[11] = v126;
    v112[4] = v119;
    v112[5] = v120;
    v112[6] = v121;
    v112[7] = v122;
    v112[0] = v115;
    v112[1] = v116;
    v112[2] = v117;
    v112[3] = v118;
    v46 = *(v44 - 8);
    v47 = *(v46 + 8);
    v47(v112, v44);
    v79 = v47;
    v48 = v61;
    (*(v37 + 16))(v36, v76, v61);
    v113[8] = v108;
    v113[9] = v109;
    v113[10] = v110;
    v113[11] = v111;
    v113[4] = v104;
    v113[5] = v105;
    v113[6] = v106;
    v113[7] = v107;
    v113[0] = v100;
    v113[1] = v101;
    v113[2] = v102;
    v113[3] = v103;
    v95 = v108;
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v94 = v107;
    v87 = v100;
    v88 = v101;
    v89 = v102;
    v90 = v103;
    v99[0] = v36;
    v99[1] = &v87;
    (*(v46 + 16))(&v115, v113, v44);
    v86[0] = v48;
    v86[1] = v44;
    v84 = v75;
    v85 = v45;
    v49 = v66;
    sub_1000970F0(v99, 2uLL, v86);
    v114[8] = v95;
    v114[9] = v96;
    v114[10] = v97;
    v114[11] = v98;
    v114[4] = v91;
    v114[5] = v92;
    v114[6] = v93;
    v114[7] = v94;
    v114[0] = v87;
    v114[1] = v88;
    v114[2] = v89;
    v114[3] = v90;
    v47(v114, v44);
    v50 = WitnessTable;
    WitnessTable(v36, v48);
    v51 = v71;
    swift_getWitnessTable();
    v52 = v81;
    swift_getWitnessTable();
    sub_100096FF8(v49, v51, v52);
    (*(v67 + 8))(v49, v52);
    v123 = v108;
    v124 = v109;
    v125 = v110;
    v126 = v111;
    v119 = v104;
    v120 = v105;
    v121 = v106;
    v122 = v107;
    v115 = v100;
    v116 = v101;
    v117 = v102;
    v118 = v103;
    v79(&v115, v44);
    v50(v76, v48);
  }

  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v82 = v53;
  v83 = v54;
  v55 = v73;
  v56 = swift_getWitnessTable();
  v57 = v80;
  sub_10009A58C(v80, v55, v56);
  return (*(v72 + 8))(v57, v55);
}

uint64_t sub_100102CEC()
{
  if (*v0)
  {
    v1 = *(*v0 + 112);
    v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

    return v2 & 1;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100104988(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100102D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a7;
  v53 = a6;
  v55 = a8;
  sub_100008CF0(&qword_10035B058);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  v49 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v46 = type metadata accessor for VStack();
  v51 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37 - v13;
  v50 = type metadata accessor for ModifiedContent();
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v37 - v16;
  sub_100008CF0(&qword_10035B050);
  v38 = a2;
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v41 = &protocol conformance descriptor for VStack<A>;
  v43 = swift_getWitnessTable();
  v17 = type metadata accessor for ScrollView();
  v56 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v39 = &v37 - v21;
  static Axis.Set.vertical.getter();
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v22 = v53;
  v23 = v54;
  v68 = v53;
  v69 = v54;
  v70 = a1;
  ScrollView.init(_:showsIndicators:content:)();
  v40 = swift_getWitnessTable();
  sub_10009A58C(v19, v17, v40);
  v24 = *(v56 + 8);
  v42 = v56 + 8;
  v43 = v24;
  v24(v19, v17);
  v57 = v38;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v61 = v22;
  v62 = v23;
  v63 = a1;
  static HorizontalAlignment.center.getter();
  v25 = v45;
  VStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  v26 = v46;
  v27 = swift_getWitnessTable();
  v28 = v44;
  View.ignoresSafeArea(_:edges:)();
  (*(v51 + 8))(v25, v26);
  v74[2] = v27;
  v74[3] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v29 = v50;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_10009A58C(v28, v29, v30);
  v32 = v52;
  v33 = *(v52 + 8);
  v33(v28, v29);
  v34 = v39;
  (*(v56 + 16))(v19, v39, v17);
  v74[0] = v19;
  (*(v32 + 16))(v28, v31, v29);
  v74[1] = v28;
  v73[0] = v17;
  v73[1] = v29;
  v71 = v40;
  v72 = v30;
  sub_1000970F0(v74, 2uLL, v73);
  v33(v31, v29);
  v35 = v43;
  v43(v34, v17);
  v33(v28, v29);
  return v35(v19, v17);
}

uint64_t sub_10010348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v25 = a8;
  sub_100008CF0(&qword_10035B050);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(v15, v12, WitnessTable);
  v20 = *(v13 + 8);
  v20(v15, v12);
  sub_10009A58C(v18, v12, WitnessTable);
  return (v20)(v18, v12);
}

uint64_t sub_1001036AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a6;
  v52 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v43 - v21;
  (*(v23 + 16))(v20);
  v47 = v22;
  v24 = v10;
  sub_10009A58C(v18, a2, v53);
  v45 = v15;
  v46 = v18;
  v25 = v18;
  v26 = a2;
  v48 = *(v15 + 8);
  v49 = v15 + 8;
  v27 = v48(v25, a2);
  (*(a1 + 32))(v27);
  v50 = v13;
  sub_10009A58C(v10, a3, v54);
  v28 = *(v52 + 8);
  v29 = a3;
  v28(v24, a3);
  v30 = static Color.clear.getter();
  v70 = *(a1 + 72);
  *&v71 = *(a1 + 88);
  sub_1000040A8(&qword_100359F88);
  State.wrappedValue.getter();
  v31 = *(v68 + 1);
  v70 = *(a1 + 72);
  *&v71 = *(a1 + 88);
  State.wrappedValue.getter();
  v32 = *(v68 + 1);
  static Alignment.center.getter();
  if (v31 > v32)
  {
    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    v44 = v29;
    v34 = v26;
    v35 = v33;
    os_log(_:dso:log:_:_:)();

    v26 = v34;
    v29 = v44;
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v68[0] = v30;
  v36 = v46;
  v37 = v47;
  (*(v45 + 16))(v46, v47, v26);
  v67[0] = v36;
  v38 = v50;
  (*(v52 + 16))(v24, v50, v29);
  v63 = v68[4];
  v64 = v68[5];
  v65 = v68[6];
  v66 = v69;
  v59 = v68[0];
  v60 = v68[1];
  v61 = v68[2];
  v62 = v68[3];
  v67[1] = v24;
  v67[2] = &v59;
  sub_10009A0B0(v68, &v70);
  v58[0] = v26;
  v58[1] = v29;
  v58[2] = sub_1000040A8(&qword_10035B050);
  v55 = v53;
  v56 = v54;
  v57 = sub_10009A120();
  sub_1000970F0(v67, 3uLL, v58);
  sub_10009A1A4(v68);
  v28(v38, v29);
  v39 = v37;
  v40 = v28;
  v41 = v48;
  v48(v39, v26);
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v77 = v66;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  sub_10009A1A4(&v70);
  v40(v24, v29);
  return v41(v36, v26);
}

uint64_t sub_100103B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v25 = a8;
  sub_100008CF0(&qword_10035B058);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for ZStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  static Alignment.bottom.getter();
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = a1;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(v15, v12, WitnessTable);
  v20 = *(v13 + 8);
  v20(v15, v12);
  v36 = 0;
  v37 = 1;
  v38[0] = &v36;
  (*(v13 + 16))(v15, v18, v12);
  v38[1] = v15;
  v35[0] = &type metadata for Spacer;
  v35[1] = v12;
  v33 = &protocol witness table for Spacer;
  v34 = WitnessTable;
  sub_1000970F0(v38, 2uLL, v35);
  v20(v18, v12);
  return (v20)(v15, v12);
}

uint64_t sub_100103E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a5;
  v63 = a6;
  v9 = a4;
  v60 = a2;
  v61 = a3;
  v73 = a8;
  v11 = *(a4 - 8);
  __chkstk_darwin(a1);
  v74 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModifiedContent();
  v67 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v59 - v14;
  sub_100008CF0(&qword_10035B060);
  v15 = type metadata accessor for ModifiedContent();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v65 = &v59 - v16;
  type metadata accessor for AccessibilityAttachmentModifier();
  v69 = v15;
  v17 = type metadata accessor for ModifiedContent();
  v70 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v66 = &v59 - v20;
  __chkstk_darwin(v21);
  v71 = &v59 - v22;
  v95 = *(a1 + 72);
  v96 = *(a1 + 88);
  v79 = *(a1 + 72);
  v80 = *(a1 + 88);
  sub_1000040A8(&qword_100359F88);
  State.wrappedValue.getter();
  v23 = *(&v88 + 1);
  v79 = v95;
  v80 = v96;
  State.wrappedValue.getter();
  v24 = *(&v88 + 1);
  static Alignment.center.getter();
  if (v23 > v24)
  {
    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    v59 = v9;
    v26 = v17;
    v27 = v11;
    v28 = v13;
    v29 = a7;
    v30 = v25;
    os_log(_:dso:log:_:_:)();

    a7 = v29;
    v13 = v28;
    v11 = v27;
    v17 = v26;
    v9 = v59;
  }

  v31 = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(a1 + 48))(v31);
  static Edge.Set.bottom.getter();
  if (*a1)
  {
    v32 = qword_100353988;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = v64;
    v34 = v74;
    View.padding(_:_:)();
    (*(v11 + 8))(v34, v9);
    v35 = swift_allocObject();
    v37 = v60;
    v36 = v61;
    *(v35 + 16) = v60;
    *(v35 + 24) = v36;
    v39 = v62;
    v38 = v63;
    *(v35 + 32) = v9;
    *(v35 + 40) = v39;
    *(v35 + 48) = v38;
    *(v35 + 56) = a7;
    v40 = *(a1 + 144);
    *(v35 + 192) = *(a1 + 128);
    *(v35 + 208) = v40;
    *(v35 + 224) = *(a1 + 160);
    *(v35 + 240) = *(a1 + 176);
    v41 = *(a1 + 80);
    *(v35 + 128) = *(a1 + 64);
    *(v35 + 144) = v41;
    v42 = *(a1 + 112);
    *(v35 + 160) = *(a1 + 96);
    *(v35 + 176) = v42;
    v43 = *(a1 + 16);
    *(v35 + 64) = *a1;
    *(v35 + 80) = v43;
    v44 = *(a1 + 48);
    *(v35 + 96) = *(a1 + 32);
    *(v35 + 112) = v44;
    *&v79 = v37;
    *(&v79 + 1) = v36;
    v80 = v9;
    *&v81 = v39;
    *(&v81 + 1) = v38;
    *&v82 = a7;
    v45 = type metadata accessor for ScrollableContentWithPanelsView();
    (*(*(v45 - 8) + 16))(&v79, a1, v45);
    type metadata accessor for CGSize(0);
    v78[6] = a7;
    v78[7] = &protocol witness table for _PaddingLayout;
    WitnessTable = swift_getWitnessTable();
    sub_100104988(&qword_100356A00, type metadata accessor for CGSize);
    v47 = v65;
    View.onGeometryChange<A>(of:do:)();

    (*(v67 + 8))(v33, v13);
    v48 = sub_100009274(&qword_10035B078, &qword_10035B060);
    v78[4] = WitnessTable;
    v78[5] = v48;
    v49 = v69;
    v50 = swift_getWitnessTable();
    v51 = v66;
    View.accessibilitySortPriority(_:)();
    (*(v68 + 8))(v47, v49);
    v52 = sub_100104988(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    v78[2] = v50;
    v78[3] = v52;
    v53 = swift_getWitnessTable();
    v54 = v71;
    sub_10009A58C(v51, v17, v53);
    v55 = v70;
    v56 = *(v70 + 8);
    v56(v51, v17);
    v84 = v91;
    v85 = v92;
    v86 = v93;
    v87 = v94;
    v81 = v88;
    v82 = v89;
    *&v79 = 0;
    *(&v79 + 1) = 6;
    v80 = 0x3FF0000000000000;
    v83 = v90;
    v78[0] = &v79;
    v57 = v72;
    (*(v55 + 16))(v72, v54, v17);
    v78[1] = v57;
    v77[0] = sub_1000040A8(&qword_10035B058);
    v77[1] = v17;
    v75 = sub_100099FA0();
    v76 = v53;
    sub_1000970F0(v78, 2uLL, v77);
    v56(v54, v17);
    return (v56)(v57, v17);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100104988(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}