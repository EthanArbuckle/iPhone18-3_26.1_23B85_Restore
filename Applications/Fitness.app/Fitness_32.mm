uint64_t sub_1003CCD10(id *a1, id *a2, id *a3, void **a4)
{
  v56 = type metadata accessor for Date();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 endDate];
        v41 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = [v39 endDate];
        v43 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v42) = static Date.> infix(_:_:)();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 endDate];
        v21 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = [v19 endDate];
        v23 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v22) = static Date.> infix(_:_:)();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

void *sub_1003CD1AC(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1003CDB5C(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1003CD224(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

    v8 = sub_1003CE774(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1003CD2B4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_100157084(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

char *sub_1003CD3A8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v47 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v5);
        v19 = Hasher._finalize()();
        v20 = -1 << v6[32];
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & v13[v2 >> 6]) == 0);
      v21 = *(v6 + 6);
      if (*(v21 + v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & v13[v2 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, v6 + 56, v5);
      v40 = sub_1003CD828(v39, v14, v6, v2, v49);

      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    __chkstk_darwin(v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, v6 + 56, v5);
    v24 = *(v6 + 2);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v47 << 6)));
      Hasher.init(_seed:)();
      v2 = &v48;
      Hasher._combine(_:)(v5);
      v30 = Hasher._finalize()();
      v31 = -1 << v6[32];
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = *(v6 + 6);
        if (*(v35 + v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_1004C0F1C(v14, v42, v44, v6);
LABEL_43:
    sub_100022DEC();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

Swift::Int sub_1003CD828(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1004C0F1C(v7, a2, v9, a3);
}

uint64_t sub_1003CD9FC(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1003CDB5C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1003CD1AC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

void *sub_1003CDB5C(unint64_t *a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v41 = a1;
  v4 = sub_100140278(&qword_1008E5C70);
  v5 = __chkstk_darwin(v4 - 8);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v40 - v13;
  v14 = type metadata accessor for MetricDetailViewModel();
  v51 = *(v14 - 8);
  v52 = v14;
  result = __chkstk_darwin(v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = 0;
  v18 = 0;
  v53 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v54 = (v10 + 48);
  v44 = (v10 + 8);
  v45 = (v10 + 32);
  v47 = v8;
  while (v24)
  {
    v27 = __clz(__rbit64(v24));
    v55 = (v24 - 1) & v24;
LABEL_13:
    v30 = v27 | (v18 << 6);
    v31 = v53[7];
    v32 = *(v51 + 72);
    v50 = v30;
    sub_10002910C(v31 + v32 * v30, v17);
    sub_10001B104(v17 + *(v52 + 36), v8, &qword_1008E5C70);
    v33 = *v54;
    v34 = (*v54)(v8, 1, v9);
    v26 = v8;
    if (v34 == 1)
    {
LABEL_5:
      sub_10000EA04(v26, &qword_1008E5C70);
      result = sub_1000292B4(v17, type metadata accessor for MetricDetailViewModel);
      v24 = v55;
    }

    else
    {
      v35 = v46;
      v49 = *v45;
      v49(v46, v8, v9);
      v36 = v48;
      sub_100062880(v17[4], *(v17 + 40), v48);
      if (v33(v36, 1, v9) == 1)
      {
        (*v44)(v35, v9);
        v26 = v36;
        v8 = v47;
        goto LABEL_5;
      }

      v37 = v43;
      v49(v43, v36, v9);
      LODWORD(v49) = static DateInterval.== infix(_:_:)();
      v38 = *v44;
      (*v44)(v37, v9);
      v38(v35, v9);
      result = sub_1000292B4(v17, type metadata accessor for MetricDetailViewModel);
      v8 = v47;
      v24 = v55;
      if (v49)
      {
        *(v41 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return sub_1003CDFF8(v41, v40, v42, v53);
        }
      }
    }
  }

  v28 = v18;
  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      return sub_1003CDFF8(v41, v40, v42, v53);
    }

    v29 = v20[v18];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v55 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003CDFF8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for MetricDetailViewModel();
  v44 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v43 = &v40 - v11;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v42 = v10;
  sub_100140278(&qword_1008EB7C8);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 8;
  v17 = v42;
  v40 = a4;
  v41 = result;
  while (v14)
  {
    v18 = v17;
    v19 = __clz(__rbit64(v14));
    v45 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 24 * v22);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = v24[16];
    v28 = v43;
    v46 = *(v44 + 72);
    sub_10002910C(v23 + v46 * v22, v43);
    sub_10002AFD4(v28, v18, type metadata accessor for MetricDetailViewModel);
    v13 = v41;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v25);
    if ((v27 & 1) == 0)
    {
      Hasher._combine(_:)(3uLL);
    }

    Hasher._combine(_:)(v26);
    v29 = Hasher._finalize()();
    v30 = -1 << *(v13 + 32);
    v31 = v29 & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~v16[v31 >> 6]) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      result = v42;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = v16[v32];
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_28;
        }
      }

      goto LABEL_33;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~v16[v31 >> 6])) | v31 & 0x7FFFFFFFFFFFFFC0;
    result = v42;
LABEL_28:
    *(v16 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = v13[6] + 24 * v33;
    *v38 = v25;
    *(v38 + 8) = v26;
    *(v38 + 16) = v27;
    v17 = result;
    result = sub_10002AFD4(result, v13[7] + v33 * v46, type metadata accessor for MetricDetailViewModel);
    ++v13[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_34;
    }

    a4 = v40;
    v14 = v45;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v17;
      v19 = __clz(__rbit64(v21));
      v45 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void *sub_1003CE35C(unint64_t a1, uint64_t a2, int a3, void (*a4)(void))
{
  v31 = a4;
  v40 = a3;
  v39 = a2;
  v38 = type metadata accessor for Date();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DateComponents();
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_24:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = a1 & 0xC000000000000001;
      v33 = (v5 + 8);
      v29 = (v32 + 8);
      v30 = v32 + 32;
      v11 = &_swiftEmptyDictionarySingleton;
      v28 = xmmword_1006D4E70;
      while (1)
      {
        if (v35)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v34 + 16))
          {
            goto LABEL_21;
          }

          v12 = *(a1 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v15 = a1;
        v16 = [v12 startDate];
        a1 = v37;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1004A9C98(v39, v40 & 1, v8);
        (*v33)(a1, v38);
        v5 = sub_1004C59D4(v8);
        v18 = v11[2];
        v19 = (v17 & 1) == 0;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_22;
        }

        v20 = v17;
        if (v11[3] < v18 + v19)
        {
          v31();
          v11 = v41;
          v21 = sub_1004C59D4(v8);
          if ((v20 & 1) != (v22 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v5 = v21;
        }

        if (v20)
        {
          (*v29)(v8, v36);
          v5 = v11[7] + 8 * v5;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          a1 = v15;
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            a1 = v15;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_100140278(&unk_1008E4E20);
          a1 = swift_allocObject();
          *(a1 + 16) = v28;
          *(a1 + 32) = v13;
          v11[(v5 >> 6) + 8] |= 1 << v5;
          (*(v32 + 32))(v11[6] + *(v32 + 72) * v5, v8, v36);
          *(v11[7] + 8 * v5) = a1;
          v23 = v11[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_23;
          }

          v11[2] = v25;
          a1 = v15;
        }

        ++v10;
        if (v14 == v9)
        {
          return v11;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

void *sub_1003CE774(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v27 = a2;
  v32 = a4;
  v28 = a1;
  v5 = type metadata accessor for MetricDetailViewModel();
  v31 = *(v5 - 8);
  result = __chkstk_darwin(v5 - 8);
  v29 = 0;
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v33 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v16 = v30;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v34 = (v14 - 1) & v14;
LABEL_11:
    v20 = v17 | (v8 << 6);
    v21 = (v33[6] + 24 * v20);
    v22 = *(v21 + 1);
    v23 = v21[16];
    v24 = v20;
    v25 = *v21;
    sub_10002910C(v33[7] + *(v31 + 72) * v20, v16);
    LOBYTE(v22) = v32(v25, v22, v23, v16);
    result = sub_1000292B4(v16, type metadata accessor for MetricDetailViewModel);
    v14 = v34;
    if (v22)
    {
      *(v28 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1003CDFF8(v28, v27, v29, v33);
      }
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_1003CDFF8(v28, v27, v29, v33);
    }

    v19 = v10[v8];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v34 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003CE990(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1003CE774(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1003CD224(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1003CEB10()
{
  swift_getObjectType();
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  v2 = os_log_type_enabled(HKLogActivity, v0);
  if (v2)
  {
    v3 = v1;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10000AFDC(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v3, v0, "%s did receive summariesDidChange notification", v4, 0xCu);
    sub_100005A40(v5);
  }

  __chkstk_darwin(v2);
  UnfairLock.acquire<A>(_:)();
  LOBYTE(v10) = 0;

  PassthroughSubject.send(_:)();

  sub_100049A20(0);
  sub_10001D544();
}

uint64_t sub_1003CED38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CEDE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100140278(&qword_1008EB7D8) - 8);
  v8 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for DateInterval() - 8);
  return sub_100028AE8(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), v3 + v8, *(v3 + v9), v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));
}

uint64_t sub_1003CEF4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v13 = *(v1 + 40);
  v11 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BBC0;

  return sub_1003C5C94(a1, v4, v5, v8, v13, v11, v6, v7);
}

uint64_t sub_1003CF090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1003C57C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1003CF17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DC408);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003CF288(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v68 = a1;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v62 = *(v15 - 8);
  __chkstk_darwin(v15);
  v59 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateInterval();
  v60 = *(v17 - 8);
  v61 = v17;
  __chkstk_darwin(v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 136) = 0;
  [a3 distanceInMeters];
  *(v7 + 32) = v20;
  *(v7 + 40) = 0;
  [a3 duration];
  *(v7 + 64) = v21;
  v63 = a3;
  result = [a3 dateInterval];
  if (result)
  {
    v23 = result;
    v54 = a5;
    v57 = a6;
    v24 = v19;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = dispatch_group_create();
    v58 = v13;
    v56 = a2;
    v55 = v15;
    if (a2)
    {
      v26 = [a2 workoutConfiguration];
      v27 = [v26 activityType];

      v28 = v68;
    }

    else
    {
      v28 = v68;
      v27 = [v68 workoutActivityType];
    }

    dispatch_group_enter(v25);
    v68 = v24;
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v30 = swift_allocObject();
    *(v30 + 16) = v7;
    *(v30 + 24) = v25;
    v74 = sub_1003D1F58;
    v75 = v30;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_100212B08;
    v73 = &unk_100856568;
    v31 = _Block_copy(&aBlock);

    v67 = v25;

    v66 = a4;
    [a4 averageHeartRateForWorkout:v28 during:isa completion:v31];
    _Block_release(v31);

    v32 = v28;
    if (v27 == 37 || v27 == 13)
    {
      v33 = v67;
      dispatch_group_enter(v67);
      v34 = DateInterval._bridgeToObjectiveC()().super.isa;
      v35 = swift_allocObject();
      *(v35 + 16) = v7;
      *(v35 + 24) = v33;
      v74 = sub_1003D1F5C;
      v75 = v35;
      aBlock = _NSConcreteStackBlock;
      v71 = 1107296256;
      v72 = sub_100212B08;
      v73 = &unk_100856608;
      v36 = _Block_copy(&aBlock);

      v37 = v33;

      v38 = v66;
      [v66 averagePowerForWorkout:v32 during:v34 completion:v36];
      _Block_release(v36);

      dispatch_group_enter(v37);
      v39 = DateInterval._bridgeToObjectiveC()().super.isa;
      v40 = swift_allocObject();
      *(v40 + 16) = v7;
      *(v40 + 24) = v37;
      v74 = sub_1003D1F60;
      v75 = v40;
      aBlock = _NSConcreteStackBlock;
      v71 = 1107296256;
      v72 = sub_100212B08;
      v73 = &unk_100856658;
      v41 = _Block_copy(&aBlock);

      v42 = v37;

      [v38 averageCadenceForWorkout:v32 during:v39 completion:v41];
      _Block_release(v41);
    }

    sub_1000059F8(0, &qword_1008E3FD0);
    v53 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    v44 = v54;
    v45 = v57;
    *(v43 + 16) = v54;
    *(v43 + 24) = v45;
    v74 = sub_1003D1F64;
    v75 = v43;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_1000449A8;
    v73 = &unk_1008565B8;
    v46 = _Block_copy(&aBlock);
    sub_10000B210(v44);
    v47 = v59;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_1000261C4();
    sub_100140278(&unk_1008E7F50);
    sub_10002621C();
    v48 = v32;
    v49 = v64;
    v50 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v51 = v53;
    v52 = v67;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v46);

    sub_1000245E0(v44);
    (*(v65 + 8))(v49, v50);
    (*(v62 + 8))(v47, v55);

    (*(v60 + 8))(v68, v61);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003CF9C8(void *a1, void *a2, void *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v74 = a6;
  v75 = a7;
  v77 = a5;
  LODWORD(v76) = a4;
  v66 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v11 - 8);
  __chkstk_darwin(v11);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  v17 = type metadata accessor for DateInterval();
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin(v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 136) = 0;
  v20 = [a2 distance];
  if (v20)
  {
    v21 = [objc_opt_self() meterUnit];
    [v20 doubleValueForUnit:v21];
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *(v7 + 32) = v23;
  *(v7 + 40) = v20 == 0;
  [a2 elapsedTime];
  *(v7 + 64) = v24;
  v25 = [a2 activeEnergy];
  v26 = *(v7 + 88);
  *(v7 + 88) = v25;

  result = [a2 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v28 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a2 endDate];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v29 = result;
  v67 = v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.init(start:end:)();
  if ([a1 supportsTrackWorkout] && (v76 & 1) == 0)
  {
    v30 = [a1 workoutEvents];
    if (v30)
    {
      v31 = v30;
      sub_1000059F8(0, &qword_1008DC000);
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    v33 = v66;
    __chkstk_darwin(v30);
    *(&v63 - 2) = v19;
    v34 = sub_100324618(sub_1003D1F00, (&v63 - 4), v32);

    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    *(v8 + 48) = v35;
    *(v8 + 56) = (v34 & 1) == 0;
  }

  v65 = v13;
  v66 = a2;
  v36 = dispatch_group_create();
  v37 = [a1 workoutActivityType];
  dispatch_group_enter(v36);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v39 = swift_allocObject();
  *(v39 + 16) = v8;
  *(v39 + 24) = v36;
  v83 = sub_1003D1F58;
  v84 = v39;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v40 = v19;
  v81 = sub_100212B08;
  v82 = &unk_1008567E8;
  v41 = a1;
  v42 = _Block_copy(&aBlock);

  v43 = v36;

  v44 = v77;
  v76 = v41;
  [v77 averageHeartRateForWorkout:v41 during:isa completion:v42];
  _Block_release(v42);

  if (v37 == 37 || v37 == 13)
  {
    dispatch_group_enter(v43);
    v45 = DateInterval._bridgeToObjectiveC()().super.isa;
    v46 = swift_allocObject();
    *(v46 + 16) = v8;
    *(v46 + 24) = v43;
    v83 = sub_1003D1F5C;
    v84 = v46;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100212B08;
    v82 = &unk_100856888;
    v47 = _Block_copy(&aBlock);

    v48 = v43;

    v49 = v76;
    [v44 averagePowerForWorkout:v76 during:v45 completion:v47];
    _Block_release(v47);

    dispatch_group_enter(v48);
    v50 = DateInterval._bridgeToObjectiveC()().super.isa;
    v51 = swift_allocObject();
    *(v51 + 16) = v8;
    *(v51 + 24) = v48;
    v83 = sub_1003D1F60;
    v84 = v51;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_100212B08;
    v82 = &unk_1008568D8;
    v52 = _Block_copy(&aBlock);

    v53 = v48;

    [v44 averageCadenceForWorkout:v49 during:v50 completion:v52];
    _Block_release(v52);
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v63 = static OS_dispatch_queue.main.getter();
  v54 = swift_allocObject();
  v56 = v74;
  v55 = v75;
  *(v54 + 16) = v74;
  *(v54 + 24) = v55;
  v83 = sub_1003D1F64;
  v84 = v54;
  aBlock = _NSConcreteStackBlock;
  v80 = 1107296256;
  v81 = sub_1000449A8;
  v82 = &unk_100856838;
  v57 = _Block_copy(&aBlock);
  sub_10000B210(v56);
  v64 = v40;
  v58 = v70;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v59 = v43;
  v60 = v72;
  v61 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v62 = v63;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v57);

  sub_1000245E0(v56);
  (*(v73 + 8))(v60, v61);
  (*(v71 + 8))(v58, v65);

  (*(v68 + 8))(v64, v69);
  return v8;
}

uint64_t sub_1003D02E4(void **a1)
{
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if ([v7 type] == 3)
  {
    v8 = [v7 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = DateInterval.intersects(_:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1003D0414(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a6;
  v84 = a5;
  v88 = a2;
  v87 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  __chkstk_darwin(v13 - 8);
  v89 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v79 = type metadata accessor for DateInterval();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v91 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&qword_1008EAC00);
  __chkstk_darwin(v17 - 8);
  v19 = &v77 - v18;
  v20 = type metadata accessor for IntervalWorkoutKeyPath();
  v77 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 1;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 1;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 136) = 0;
  v23 = a3;
  v24 = [v23 distance];
  v92 = v23;
  if (v24)
  {
    v25 = [objc_opt_self() meterUnit];
    [v24 doubleValueForUnit:v25];
    v27 = v26;

    v23 = v92;
  }

  else
  {
    v27 = 0;
  }

  v90 = a1;
  v28 = a4;
  *(v7 + 32) = v27;
  *(v7 + 40) = v24 == 0;
  [v23 elapsedTime];
  *(v7 + 64) = v29;
  v30 = [v23 activeEnergy];
  v31 = *(v7 + 88);
  *(v7 + 88) = v30;

  v32 = [v23 stepKeyPath];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *(v7 + 16) = v34;
  *(v7 + 24) = v36;

  v37 = v92;
  [v92 distanceGoalAchievedTime];
  *(v7 + 72) = v38;
  *(v7 + 80) = 0;
  v39 = [v37 stepKeyPath];
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    IntervalWorkoutKeyPath.init(serializedString:)();
    v41 = v77;
    if ((v77)[6](v19, 1, v20) == 1)
    {
      sub_100389DAC(v19);
LABEL_18:
      v37 = v92;
      goto LABEL_19;
    }

    (v41)[4](v22, v19, v20);
    if (v88)
    {
      v42 = v88;
      v43 = IntervalWorkoutConfiguration.intervalWorkout.getter();

      IntervalWorkout.stepForKeyPath(_:)();
      v44 = WorkoutStep.goal.getter();
      v45 = [v44 goalTypeIdentifier];

      if (v45 != 1)
      {
        (v41[1])(v22, v20);

        goto LABEL_18;
      }

      v46 = WorkoutStep.goal.getter();
      v47 = [v46 value];

      if (v47)
      {
        v48 = [v47 _unit];

        v37 = v92;
        if (v48)
        {
          v49 = FIUIDistanceUnitForHKUnit();

          (v41[1])(v22, v20);
          *(v7 + 48) = v49;
          *(v7 + 56) = 0;
        }

        else
        {
          (v41[1])(v22, v20);
        }

        goto LABEL_19;
      }
    }

    (v41[1])(v22, v20);
    goto LABEL_18;
  }

LABEL_19:
  v50 = [v37 startDate];
  if (!v50)
  {
    __break(1u);
    goto LABEL_27;
  }

  v51 = v50;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = [v37 endDate];
  v53 = v90;
  if (!v52)
  {
LABEL_27:
    __break(1u);
    return;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.init(start:end:)();
  v54 = dispatch_group_create();
  v55 = [v53 workoutActivityType];
  dispatch_group_enter(v54);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v57 = swift_allocObject();
  *(v57 + 16) = v7;
  *(v57 + 24) = v54;
  v98 = sub_1003D1F58;
  v99 = v57;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100212B08;
  v97 = &unk_1008566A8;
  v58 = _Block_copy(&aBlock);

  v89 = v54;

  [v28 averageHeartRateForWorkout:v53 during:isa completion:v58];
  _Block_release(v58);

  if (v55 == 37 || v55 == 13)
  {
    v59 = v89;
    dispatch_group_enter(v89);
    v60 = DateInterval._bridgeToObjectiveC()().super.isa;
    v61 = swift_allocObject();
    *(v61 + 16) = v7;
    *(v61 + 24) = v59;
    v98 = sub_1003D1F5C;
    v99 = v61;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100212B08;
    v97 = &unk_100856748;
    v62 = _Block_copy(&aBlock);

    v63 = v59;

    [v28 averagePowerForWorkout:v53 during:v60 completion:v62];
    _Block_release(v62);

    dispatch_group_enter(v63);
    v64 = DateInterval._bridgeToObjectiveC()().super.isa;
    v65 = swift_allocObject();
    *(v65 + 16) = v7;
    *(v65 + 24) = v63;
    v98 = sub_1003D1F60;
    v99 = v65;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100212B08;
    v97 = &unk_100856798;
    v66 = _Block_copy(&aBlock);

    v67 = v63;

    [v28 averageCadenceForWorkout:v53 during:v64 completion:v66];
    _Block_release(v66);
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v68 = static OS_dispatch_queue.main.getter();
  v69 = swift_allocObject();
  v77 = v28;
  v70 = v84;
  v71 = v86;
  *(v69 + 16) = v84;
  *(v69 + 24) = v71;
  v98 = sub_1003D1F64;
  v99 = v69;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_1000449A8;
  v97 = &unk_1008566F8;
  v72 = _Block_copy(&aBlock);
  sub_10000B210(v70);
  v73 = v80;
  static DispatchQoS.unspecified.getter();
  v93 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v74 = v82;
  v75 = v87;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v76 = v89;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v72);

  sub_1000245E0(v70);
  (*(v85 + 8))(v74, v75);
  (*(v81 + 8))(v73, v83);
  (*(v78 + 8))(v91, v79);
}

void sub_1003D0F58(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v73 = a6;
  v71 = a5;
  v75 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = type metadata accessor for DateInterval();
  v65 = *(v16 - 8);
  v66 = v16;
  __chkstk_darwin(v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 72) = 0;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0;
  *(v6 + 128) = 1;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 136) = 0;
  v19 = a2;
  v20 = [v19 distance];
  if (v20)
  {
    v21 = [objc_opt_self() meterUnit];
    [v20 doubleValueForUnit:v21];
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *(v6 + 32) = v23;
  *(v6 + 40) = v20 == 0;
  *(v6 + 48) = a3;
  *(v6 + 56) = 0;
  [v19 elapsedTime];
  *(v6 + 64) = v24;
  v25 = [v19 activeEnergy];
  v26 = *(v6 + 88);
  *(v6 + 88) = v25;

  v27 = objc_opt_self();
  v28 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v19, "lapIndex")}];
  v29 = [v27 localizedStringFromNumber:v28 numberStyle:0];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v6 + 16) = v30;
  *(v6 + 24) = v32;

  v33 = [v19 startDate];
  if (!v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  v34 = v33;
  v64 = v11;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = [v19 endDate];
  v63 = v19;

  if (!v35)
  {
LABEL_11:
    __break(1u);
    return;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.init(start:end:)();
  v36 = dispatch_group_create();
  v37 = [a1 workoutActivityType];
  dispatch_group_enter(v36);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v39 = swift_allocObject();
  *(v39 + 16) = v7;
  *(v39 + 24) = v36;
  v81 = sub_1003D1EB4;
  v82 = v39;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_100212B08;
  v80 = &unk_100856428;
  v40 = _Block_copy(&aBlock);

  v74 = v36;

  [v75 averageHeartRateForWorkout:a1 during:isa completion:v40];
  _Block_release(v40);

  if (v37 == 37 || v37 == 13)
  {
    v41 = v74;
    dispatch_group_enter(v74);
    v42 = DateInterval._bridgeToObjectiveC()().super.isa;
    v43 = swift_allocObject();
    *(v43 + 16) = v7;
    *(v43 + 24) = v41;
    v81 = sub_1003D1EC0;
    v82 = v43;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_100212B08;
    v80 = &unk_1008564C8;
    v44 = _Block_copy(&aBlock);

    v45 = v41;

    v46 = v75;
    [v75 averagePowerForWorkout:a1 during:v42 completion:v44];
    _Block_release(v44);

    dispatch_group_enter(v45);
    v47 = DateInterval._bridgeToObjectiveC()().super.isa;
    v48 = swift_allocObject();
    *(v48 + 16) = v7;
    *(v48 + 24) = v45;
    v81 = sub_1003D1EC8;
    v82 = v48;
    aBlock = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_100212B08;
    v80 = &unk_100856518;
    v49 = _Block_copy(&aBlock);

    v50 = v45;

    [v46 averageCadenceForWorkout:a1 during:v47 completion:v49];
    _Block_release(v49);
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v51 = static OS_dispatch_queue.main.getter();
  v52 = swift_allocObject();
  v61 = a1;
  v62 = v18;
  v53 = v71;
  v54 = v73;
  *(v52 + 16) = v71;
  *(v52 + 24) = v54;
  v81 = sub_1003D1EBC;
  v82 = v52;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_1000449A8;
  v80 = &unk_100856478;
  v55 = _Block_copy(&aBlock);
  sub_10000B210(v53);
  v56 = v67;
  static DispatchQoS.unspecified.getter();
  v76 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v57 = v69;
  v58 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v74;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v55);

  sub_1000245E0(v53);
  (*(v72 + 8))(v57, v58);
  (*(v68 + 8))(v56, v70);
  (*(v65 + 8))(v62, v66);
}

uint64_t sub_1003D1800(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 128) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 136) = 0;
  v4 = dispatch thunk of DownhillRun.distance.getter();
  if (v4)
  {
    v5 = [objc_opt_self() meterUnit];
    [v4 doubleValueForUnit:v5];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(v2 + 32) = v7;
  *(v2 + 40) = v4 == 0;
  dispatch thunk of DownhillRun.workoutTime.getter();
  *(v2 + 64) = v8;
  v9 = DownhillRun.maximumSpeed.getter();
  v10 = *(v2 + 144);
  *(v2 + 144) = v9;

  v11 = DownhillRun.averageSpeed.getter();
  v12 = *(v2 + 136);
  *(v2 + 136) = v11;

  v13 = DownhillRun.elevationDescended.getter();
  v14 = *(v2 + 152);
  *(v2 + 152) = v13;

  v15 = dispatch thunk of DownhillRun.averageHeartRate.getter();
  v16 = *(v2 + 104);
  *(v2 + 104) = v15;

  return v2;
}

uint64_t sub_1003D1958()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0;
  v1 = DownhillRunsStats.distance.getter();
  v2 = [objc_opt_self() meterUnit];
  [v1 doubleValueForUnit:v2];
  v4 = v3;

  *(v0 + 32) = v4;
  *(v0 + 40) = 0;
  DownhillRunsStats.duration.getter();
  *(v0 + 64) = v5;
  v6 = DownhillRunsStats.maximumSpeed.getter();
  v7 = *(v0 + 144);
  *(v0 + 144) = v6;

  v8 = DownhillRunsStats.averageSpeed.getter();
  v9 = *(v0 + 136);
  *(v0 + 136) = v8;

  v10 = DownhillRunsStats.elevationDescended.getter();
  v11 = *(v0 + 152);
  *(v0 + 152) = v10;

  v12 = DownhillRunsStats.averageHeartRate.getter();

  v13 = *(v0 + 104);
  *(v0 + 104) = v12;

  return v0;
}

uint64_t sub_1003D1A74(double a1, double a2)
{
  result = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 136) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 64) = a2;
  return result;
}

void sub_1003D1ABC(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    *(v7 + 56) = v11;
    v8 = sub_100005994((v7 + 32));
    (*(*(v11 - 8) + 16))(v8);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  v9 = *(a3 + 104);
  *(a3 + 104) = a1;
  v10 = a1;

  dispatch_group_leave(a4);
}

void sub_1003D1BD4(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    *(v7 + 56) = v11;
    v8 = sub_100005994((v7 + 32));
    (*(*(v11 - 8) + 16))(v8);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  v9 = *(a3 + 112);
  *(a3 + 112) = a1;
  v10 = a1;

  dispatch_group_leave(a4);
}

void sub_1003D1CEC(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    *(v7 + 56) = v11;
    v8 = sub_100005994((v7 + 32));
    (*(*(v11 - 8) + 16))(v8);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  v9 = *(a3 + 96);
  *(a3 + 96) = a1;
  v10 = a1;

  dispatch_group_leave(a4);
}

id *sub_1003D1E04()
{

  return v0;
}

uint64_t sub_1003D1E5C()
{
  sub_1003D1E04();

  return swift_deallocClassInstance();
}

uint64_t sub_1003D1ED0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1003D1F9C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        return type metadata accessor for ActivitySharingFriendDetailPaletteTableViewCell();
      }

      return type metadata accessor for ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell();
    }

    if (a1 == 7)
    {
      return type metadata accessor for ActivitySharingCompetitionActionListSwiftUITableViewCell();
    }

    else if (a1 == 8)
    {
      return type metadata accessor for WorkoutsListTableViewCell();
    }

    else
    {
      return type metadata accessor for AwardsActivityTile();
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      return type metadata accessor for ActivitySharingFriendDetailCompetitionScoreTableViewCell();
    }

    else
    {
      return type metadata accessor for ActivitySharingHeaderSwiftUITableViewCell();
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return type metadata accessor for TodayActivityTile();
      }

      return type metadata accessor for ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell();
    }

    return type metadata accessor for ActivitySharingFriendDetailCompetitionGraphTableViewCell();
  }
}

uint64_t sub_1003D20C4(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 - 7 < 3)
    {
      return result;
    }
  }

  else if (a1 < 3u)
  {
    return result;
  }

  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t sub_1003D2230(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        return result;
      }
    }

    else if (a1 - 2 < 2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a1 > 7u || a1 - 6 < 2)
  {
LABEL_9:
    v3 = [objc_opt_self() mainBundle];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 localizedStringForKey:v4 value:0 table:0];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v6;
  }

  return result;
}

unint64_t sub_1003D2448(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1003D24A8()
{
  result = qword_1008EA778;
  if (!qword_1008EA778)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA778);
  }

  return result;
}

id sub_1003D2500(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v3 = [v2 meterUnit];
      }

      else
      {
        v3 = [v2 kilocalorieUnit];
      }

LABEL_14:

      return v3;
    }

    if (a1 == 2)
    {
      v3 = [v2 minuteUnit];
      goto LABEL_14;
    }

    v15 = v2;
    v5 = [v2 secondUnit];
    v6 = [v15 meterUnit];
    v7 = [v5 unitDividedByUnit:v6];
LABEL_18:
    v16 = v7;

    return v16;
  }

  if (a1 <= 5u)
  {
    if (a1 != 4)
    {
      v3 = [v2 countUnit];
      goto LABEL_14;
    }

    v4 = v2;
    v5 = [v2 meterUnitWithMetricPrefix:9];
    v6 = [v4 hourUnit];
    v7 = [v5 unitDividedByUnit:v6];
    goto LABEL_18;
  }

  if (a1 == 6)
  {
    v8 = v2;
    v9 = [v2 literUnitWithMetricPrefix:4];
    v10 = [v8 gramUnitWithMetricPrefix:9];
    v11 = [v8 minuteUnit];
    v12 = [v9 unitDividedByUnit:v10];
    v13 = [v12 unitDividedByUnit:v11];
  }

  else
  {
    v17 = v2;
    v18 = [v2 kilocalorieUnit];
    v19 = [v17 hourUnit];
    v20 = [v17 gramUnitWithMetricPrefix:9];
    v12 = [v18 unitDividedByUnit:v19];
    v13 = [v12 unitDividedByUnit:v20];
  }

  return v13;
}

unint64_t sub_1003D2814@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003D2970(*a1);
  *a2 = result;
  return result;
}

void sub_1003D2844(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1818321771;
  v5 = 0xE600000000000000;
  v6 = 0x78614D324F76;
  if (v2 != 6)
  {
    v6 = 7628141;
    v5 = 0xE300000000000000;
  }

  v7 = 0x6465657073;
  if (v2 != 4)
  {
    v7 = 0x746E756F63;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6574756E696DLL;
  if (v2 != 2)
  {
    v9 = 1701011824;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x726574656DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1003D291C()
{
  result = qword_1008EBA68;
  if (!qword_1008EBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EBA68);
  }

  return result;
}

unint64_t sub_1003D2970(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008458A0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003D29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1003D2A54, v6, v5);
}

uint64_t sub_1003D2A54()
{
  v3 = (&async function pointer to dispatch thunk of VoiceAssetsObserver.observeAssetChanges() + async function pointer to dispatch thunk of VoiceAssetsObserver.observeAssetChanges());
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1003D2B04;

  return v3();
}

uint64_t sub_1003D2B04()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001E0470, v3, v2);
}

void sub_1003D2C24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v6 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_100140278(&unk_1008EBBE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    type metadata accessor for LiveWorkoutConfiguration();
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = type metadata accessor for CatalogWorkout();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = a1;
    v24 = v20;
    v25 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();
    WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter();
    sub_10032F118(v25);
    v26 = LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityBeginDate:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)();
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v29 = v26;
    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v28;
    v31[5] = v29;

    sub_10026E198(0, 0, v8, &unk_1006EDCC0, v31);
  }

  else
  {
    static WOLog.app.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "activityPausedRingsObserver is nil, unable to start workout", v34, 2u);
    }

    (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_1003D3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[27] = v7;
  v5[28] = v6;

  return _swift_task_switch(sub_1003D3100, v7, v6);
}

uint64_t sub_1003D3100()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[25];
    v3 = *(Strong + OBJC_IVAR___CHWorkoutBrowsingViewController_workoutController);
    v0[29] = v3;
    v4 = Strong;
    v5 = v3;

    v6 = [objc_opt_self() defaultDeadline];
    v0[30] = v6;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1003D3398;
    v7 = swift_continuation_init();
    v0[17] = sub_100140278(&unk_1008EBBF0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001D09D8;
    v0[13] = &unk_100856B40;
    v0[14] = v7;
    [v5 startSessionWith:v2 countdownDeadline:v6 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR___CHWorkoutBrowsingViewController_workoutController);

      v11 = [v10 activeWorkout];
      if (v11)
      {
        v12 = [v11 sessionActivity];

        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();
        [v12 setSavingDelegate:v13];
      }
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1003D3398()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return _swift_task_switch(sub_1003D34A0, v2, v1);
}

uint64_t sub_1003D34A0()
{
  v2 = v0[29];
  v1 = v0[30];

  v3 = v0[21];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___CHWorkoutBrowsingViewController_workoutController);

    v7 = [v6 activeWorkout];
    if (v7)
    {
      v8 = [v7 sessionActivity];

      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      [v8 setSavingDelegate:v9];
    }
  }

  v10 = v0[1];

  return v10();
}

void sub_1003D36AC()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008EBBC0);
  __chkstk_darwin(v2 - 8);
  sub_1003D6180(&v36 - v3);
  v4 = objc_allocWithZone(sub_100140278(&qword_1008EBBD8));
  v5 = UIHostingController.init(rootView:)();
  [v0 addChildViewController:v5];
  v6 = type metadata accessor for WorkoutBrowsingViewController();
  v36.receiver = v0;
  v36.super_class = v6;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  v7 = [v5 view];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v5 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v11 addSubview:v8];

  [v5 didMoveToParentViewController:v1];
  sub_100140278(&unk_1008E4E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006D5300;
  v14 = [v8 leadingAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v13 + 32) = v18;
  v19 = [v8 trailingAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v13 + 40) = v23;
  v24 = [v8 topAnchor];
  v25 = [v1 view];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 topAnchor];

    v28 = [v24 constraintEqualToAnchor:v27];
    *(v13 + 48) = v28;
    v29 = [v8 bottomAnchor];
    v30 = [v1 view];
    if (v30)
    {
      v31 = v30;
      v32 = objc_opt_self();
      v33 = [v31 bottomAnchor];

      v34 = [v29 constraintEqualToAnchor:v33];
      *(v13 + 56) = v34;
      sub_1000059F8(0, &qword_1008DC980);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v32 activateConstraints:isa];

      return;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D3B60(char a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for WorkoutBrowsingViewController();
  objc_msgSendSuper2(&v23, "viewDidAppear:", a1 & 1);
  v3 = [*&v1[OBJC_IVAR___CHWorkoutBrowsingViewController_visibilityObservers] allObjects];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        if (v9)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1001A2F68(0, v7[2] + 1, 1, v7);
    }

    v14 = v7[2];
    v13 = v7[3];
    if (v14 >= v13 >> 1)
    {
      v7 = sub_1001A2F68((v13 > 1), v14 + 1, 1, v7);
    }

    v7[2] = v14 + 1;
    v15 = &v7[2 * v14];
    v15[4] = v9;
    v15[5] = v11;
  }

  while (v6 != v5);
LABEL_25:

  v17 = v7[2];
  if (!v17)
  {
  }

  v18 = 0;
  v19 = v7 + 5;
  while (v18 < v7[2])
  {
    ++v18;
    v20 = *v19;
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 8);
    swift_unknownObjectRetain();
    v22(ObjectType, v20);
    result = swift_unknownObjectRelease();
    v19 += 2;
    if (v17 == v18)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D3E20(char a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for WorkoutBrowsingViewController();
  objc_msgSendSuper2(&v23, "viewDidDisappear:", a1 & 1);
  v3 = [*&v1[OBJC_IVAR___CHWorkoutBrowsingViewController_visibilityObservers] allObjects];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_3:
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(v4 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        if (v9)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1001A2F68(0, v7[2] + 1, 1, v7);
    }

    v14 = v7[2];
    v13 = v7[3];
    if (v14 >= v13 >> 1)
    {
      v7 = sub_1001A2F68((v13 > 1), v14 + 1, 1, v7);
    }

    v7[2] = v14 + 1;
    v15 = &v7[2 * v14];
    v15[4] = v9;
    v15[5] = v11;
  }

  while (v6 != v5);
LABEL_25:

  v17 = v7[2];
  if (!v17)
  {
  }

  v18 = 0;
  v19 = v7 + 5;
  while (v18 < v7[2])
  {
    ++v18;
    v20 = *v19;
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 16);
    swift_unknownObjectRetain();
    v22(ObjectType, v20);
    result = swift_unknownObjectRelease();
    v19 += 2;
    if (v17 == v18)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_1003D40E0()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel;
  if (!*(v0 + OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel))
  {
    __break(1u);
    goto LABEL_7;
  }

  ConfigurationNavigationModel.browsingNavigationPath.getter();

  v7 = NavigationPath.isEmpty.getter();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    return;
  }

  if (!*(v1 + v6))
  {
LABEL_7:
    __break(1u);
    return;
  }

  ConfigurationNavigationModel.browsingNavigationPath.getter();
  v9 = NavigationPath.count.getter();
  v8(v5, v2);
  v10 = ConfigurationNavigationModel.browsingNavigationPath.modify();
  NavigationPath.removeLast(_:)(v9);
  v10(v11, 0);
}

uint64_t sub_1003D42B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 168) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for WorkoutDevice();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for WorkoutDeviceType();
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 128) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 136) = v10;
  *(v5 + 144) = v9;

  return _swift_task_switch(sub_1003D4470, v10, v9);
}

uint64_t sub_1003D4470()
{
  v42 = v0;
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = sub_1003D4900;

    return sub_1003D7DA0(1.0);
  }

  else
  {
    type metadata accessor for WorkoutDevicesProvider();
    v3 = static WorkoutDevicesProvider.shared.getter();
    v4 = dispatch thunk of WorkoutDevicesProvider.devices.getter();

    v5 = *(v4 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v7 = *(v0 + 112);
      v8 = *(v0 + 88);
      v41 = _swiftEmptyArrayStorage;
      sub_100186298(0, v5, 0);
      v6 = _swiftEmptyArrayStorage;
      v10 = *(v8 + 16);
      v9 = v8 + 16;
      v36 = v4;
      v11 = v4 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v37 = *(v9 + 56);
      v38 = v10;
      do
      {
        v12 = *(v0 + 96);
        v13 = *(v0 + 80);
        v38(v12, v11, v13);
        WorkoutDevice.type.getter();
        (*(v9 - 8))(v12, v13);
        v41 = v6;
        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          sub_100186298(v14 > 1, v15 + 1, 1);
          v6 = v41;
        }

        v16 = *(v0 + 120);
        v17 = *(v0 + 104);
        v6[2] = v15 + 1;
        (*(v7 + 32))(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
        v11 += v37;
        --v5;
      }

      while (v5);
      v4 = v36;
    }

    v18 = WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(v6, 1);

    if (v18)
    {
      v19 = *(v0 + 40);
      result = (*(v0 + 24))(v4);
      if (!*(v19 + OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel))
      {
        __break(1u);
        return result;
      }

      ConfigurationNavigationModel.startWorkout(workoutConfiguration:startSource:)();
    }

    else
    {
      v20 = *(v0 + 16);

      static WOLog.app.getter();
      v21 = v20;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      v24 = os_log_type_enabled(v22, v23);
      v26 = *(v0 + 64);
      v25 = *(v0 + 72);
      v27 = *(v0 + 56);
      if (v24)
      {
        v40 = *(v0 + 72);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v41 = v30;
        *v28 = 136315395;
        v31 = _typeName(_:qualified:)();
        v39 = v27;
        v33 = sub_10000AFDC(v31, v32, &v41);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2113;
        v34 = dispatch thunk of WorkoutConfiguration.activityType.getter();
        *(v28 + 14) = v34;
        *v29 = v34;
        _os_log_impl(&_mh_execute_header, v22, v23, "[%s]: Designated workout configuration cannot start with currently available devices. Browsing to activity type %{private}@", v28, 0x16u);
        sub_10000EA04(v29, &unk_1008DB8B0);

        sub_100005A40(v30);

        (*(v26 + 8))(v40, v39);
      }

      else
      {

        (*(v26 + 8))(v25, v27);
      }

      sub_1005D4C54();
      dispatch thunk of WorkoutConfiguration.activityType.getter();
      dispatch thunk of WorkoutScrollingCoordinator.scrollToActivityType.setter();
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1003D4900(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_1003D4A28, v4, v3);
}

uint64_t sub_1003D4A28()
{
  v40 = v0;
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v39 = _swiftEmptyArrayStorage;
    sub_100186298(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v7 = *(v5 + 16);
    v6 = v5 + 16;
    v34 = v1;
    v8 = v1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v35 = *(v6 + 56);
    v36 = v7;
    do
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 80);
      v36(v9, v8, v10);
      WorkoutDevice.type.getter();
      (*(v6 - 8))(v9, v10);
      v39 = v3;
      v12 = v3[2];
      v11 = v3[3];
      if (v12 >= v11 >> 1)
      {
        sub_100186298(v11 > 1, v12 + 1, 1);
        v3 = v39;
      }

      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v3[2] = v12 + 1;
      (*(v4 + 32))(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v13, v14);
      v8 += v35;
      --v2;
    }

    while (v2);
    v1 = v34;
  }

  v15 = WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(v3, 1);

  if (v15)
  {
    v16 = *(v0 + 40);
    result = (*(v0 + 24))(v1);
    if (!*(v16 + OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel))
    {
      __break(1u);
      return result;
    }

    ConfigurationNavigationModel.startWorkout(workoutConfiguration:startSource:)();
  }

  else
  {
    v18 = *(v0 + 16);

    static WOLog.app.getter();
    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);
    v25 = *(v0 + 56);
    if (v22)
    {
      v38 = *(v0 + 72);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v26 = 136315395;
      v29 = _typeName(_:qualified:)();
      v37 = v25;
      v31 = sub_10000AFDC(v29, v30, &v39);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2113;
      v32 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      *(v26 + 14) = v32;
      *v27 = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s]: Designated workout configuration cannot start with currently available devices. Browsing to activity type %{private}@", v26, 0x16u);
      sub_10000EA04(v27, &unk_1008DB8B0);

      sub_100005A40(v28);

      (*(v24 + 8))(v38, v37);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    sub_1005D4C54();
    dispatch thunk of WorkoutConfiguration.activityType.getter();
    dispatch thunk of WorkoutScrollingCoordinator.scrollToActivityType.setter();
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1003D4E18()
{
  v1 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutConfiguration();
  static WorkoutConfiguration.uuid(from:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000EA04(v6, &unk_1008DB8A0);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = dispatch thunk of WorkoutConfigurationOccurrenceStore.cachedConfiguration(for:)();
  if (v12 || (v12 = dispatch thunk of WorkoutConfigurationOccurrenceStore.alternativeConfiguration(for:)()) != 0 || (v12 = static WorkoutConfiguration.configuration(from:)()) != 0)
  {
    v13 = v12;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v13;
    v16 = v0;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    v18[5] = v15;
    sub_10026E198(0, 0, v3, &unk_1006EDC50, v18);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1003D5108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001D0380;

  return sub_1003D42B0(a5, 1, sub_1003D51E0, 0);
}

uint64_t sub_1003D51E0(uint64_t a1)
{
  v24 = type metadata accessor for WorkoutDeviceType();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v25 = type metadata accessor for WorkoutDevice();
  v8 = *(v25 - 8);
  v9 = __chkstk_darwin(v25);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a1 + 16);
  v26 = a1;
  v27 = v13;
  v23 = v8 + 16;
  v22 = enum case for WorkoutDeviceType.watch(_:);
  v14 = (v2 + 8);
  v20 = v8 + 8;
  v21 = (v2 + 104);
  while (v27 != v12)
  {
    v15 = v25;
    (*(v8 + 16))(v11, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v25, v9);
    WorkoutDevice.type.getter();
    v16 = v24;
    (*v21)(v4, v22, v24);
    v17 = static WorkoutDeviceType.== infix(_:_:)();
    v18 = *v14;
    (*v14)(v4, v16);
    v18(v7, v16);
    (*(v8 + 8))(v11, v15);
    if (v17)
    {
      return 19;
    }
  }

  return 18;
}

uint64_t sub_1003D5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_1003D5628, v9, v8);
}

uint64_t sub_1003D5628()
{
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v1 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v2 = static WorkoutConfiguration.importFromData(_:with:validator:)();
  *(v0 + 88) = v2;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1003D585C;

  return sub_1003D42B0(v3, 1, sub_1003D59EC, 0);
}

uint64_t sub_1003D585C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1003D597C, v3, v2);
}

uint64_t sub_1003D597C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003D59EC(uint64_t a1)
{
  v24 = type metadata accessor for WorkoutDeviceType();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v25 = type metadata accessor for WorkoutDevice();
  v8 = *(v25 - 8);
  v9 = __chkstk_darwin(v25);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a1 + 16);
  v26 = a1;
  v27 = v13;
  v23 = v8 + 16;
  v22 = enum case for WorkoutDeviceType.watch(_:);
  v14 = (v2 + 8);
  v20 = v8 + 8;
  v21 = (v2 + 104);
  while (v27 != v12)
  {
    v15 = v25;
    (*(v8 + 16))(v11, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v25, v9);
    WorkoutDevice.type.getter();
    v16 = v24;
    (*v21)(v4, v22, v24);
    v17 = static WorkoutDeviceType.== infix(_:_:)();
    v18 = *v14;
    (*v14)(v4, v16);
    v18(v7, v16);
    (*(v8 + 8))(v11, v15);
    if (v17)
    {
      return 20;
    }
  }

  return 5;
}

void sub_1003D5DD0(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v22 = a2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100140278(&qword_1008EBBD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v21 = objc_opt_self();
  (*(v11 + 16))(v14, a1, v10);
  (*(v8 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v8 + 32))(v17 + v16, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_1003D8204;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CA96C;
  aBlock[3] = &unk_100856A28;
  v18 = _Block_copy(aBlock);
  v19 = v22;

  v20 = [v21 scheduledTimerWithTimeInterval:1 repeats:v18 block:0.1];
  _Block_release(v18);
}

uint64_t sub_1003D60B0(void *a1, double a2)
{
  v4 = *(dispatch thunk of WorkoutDevicesProvider.devices.getter() + 16);

  if (v4)
  {
    [a1 invalidate];
    dispatch thunk of WorkoutDevicesProvider.devices.getter();
  }

  else
  {
    result = Date.timeIntervalSinceNow.getter();
    if (fabs(v6) <= a2)
    {
      return result;
    }

    [a1 invalidate];
  }

  sub_100140278(&qword_1008EBBD0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1003D6180@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = type metadata accessor for WorkoutTabRootView();
  __chkstk_darwin(v3);
  v5 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008EBB68);
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  __chkstk_darwin(v6);
  v74 = v65 - v8;
  v9 = sub_100140278(&qword_1008EBB70);
  v10 = *(v9 - 8);
  v80 = v9;
  v81 = v10;
  __chkstk_darwin(v9);
  v75 = v65 - v11;
  v79 = sub_100140278(&qword_1008EBB78) - 8;
  __chkstk_darwin(v79);
  v76 = v65 - v12;
  v66 = sub_100140278(&qword_1008EBB80);
  __chkstk_darwin(v66);
  v68 = v65 - v13;
  v67 = sub_100140278(&qword_1008EBB88);
  __chkstk_darwin(v67);
  v69 = v65 - v14;
  v71 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_activityMoveMode);
  v15 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_formattingManager);
  v16 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_healthStore);
  v17 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_occurrenceStore);
  v18 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_fitnessAppContext);
  v19 = OBJC_IVAR___CHWorkoutBrowsingViewController_inferenceClient;
  v20 = *(v3 + 48);
  v21 = type metadata accessor for InferenceClient();
  (*(*(v21 - 8) + 16))(&v5[v20], v2 + v19, v21);
  v22 = OBJC_IVAR___CHWorkoutBrowsingViewController_snapshotClient;
  v23 = *(v3 + 52);
  v24 = type metadata accessor for SnapshotClient();
  (*(*(v24 - 8) + 16))(&v5[v23], v2 + v22, v24);
  v72 = type metadata accessor for StandardActivityItemsViewModel();
  v73 = sub_100055EDC(&qword_1008EBB90, type metadata accessor for StandardActivityItemsViewModel);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = EnvironmentObject.init()();
  v31 = v30;
  v32 = type metadata accessor for WorkoutOnboardingCoordinatoriOS();
  v33 = sub_100055EDC(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
  v65[2] = v32;
  v65[1] = v33;
  *v5 = EnvironmentObject.init()();
  *(v5 + 1) = v34;
  *(v5 + 2) = v29;
  *(v5 + 3) = v31;
  v35 = type metadata accessor for WorkoutVoiceAvailabilityProvider();
  v36 = sub_100055EDC(&qword_1008DB070, &type metadata accessor for WorkoutVoiceAvailabilityProvider);
  *(v5 + 4) = Environment.init<A>(_:)();
  v5[40] = v37 & 1;
  *(v5 + 6) = v71;
  *(v5 + 7) = v25;
  *(v5 + 8) = v26;
  *(v5 + 9) = v27;
  *(v5 + 10) = v28;
  v38 = sub_100055EDC(&qword_1008EBB98, type metadata accessor for WorkoutTabRootView);
  v39 = v74;
  View.environment<A>(_:)();
  sub_1003D7C84(v5);
  v40 = type metadata accessor for VoiceAssetsObserver();
  v82 = v3;
  v83 = v35;
  v84 = v38;
  v85 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_100055EDC(&qword_1008EBBA0, &type metadata accessor for VoiceAssetsObserver);
  v43 = v75;
  v44 = v77;
  View.environment<A>(_:)();
  (*(v78 + 8))(v39, v44);
  type metadata accessor for WorkoutScrollingCoordinator();
  v82 = v44;
  v83 = v40;
  v84 = OpaqueTypeConformance2;
  v85 = v42;
  swift_getOpaqueTypeConformance2();
  sub_100055EDC(&qword_1008EBBA8, &type metadata accessor for WorkoutScrollingCoordinator);
  v45 = v76;
  v46 = v80;
  View.environment<A>(_:)();
  (*(v81 + 8))(v43, v46);
  v47 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_viewModel);
  result = static ObservableObject.environmentStore.getter();
  v49 = (v45 + *(v79 + 44));
  *v49 = result;
  v49[1] = v47;
  v50 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel);
  if (v50)
  {
    type metadata accessor for ConfigurationNavigationModel();
    sub_100055EDC(&qword_1008EBBB0, &type metadata accessor for ConfigurationNavigationModel);
    v51 = v47;

    v52 = static ObservableObject.environmentStore.getter();
    v53 = v68;
    sub_100015E80(v45, v68, &qword_1008EBB78);
    v54 = (v53 + *(v66 + 36));
    *v54 = v52;
    v54[1] = v50;
    v55 = v2 + OBJC_IVAR___CHWorkoutBrowsingViewController__workoutOnboardingCoordinatoriOS;
    swift_beginAccess();
    v56 = *(v55 + 8);
    v57 = static ObservableObject.environmentStore.getter();
    v58 = v53;
    v59 = v69;
    sub_100015E80(v58, v69, &qword_1008EBB80);
    v60 = (v59 + *(v67 + 36));
    *v60 = v57;
    v60[1] = v56;
    v61 = *(v2 + OBJC_IVAR___CHWorkoutBrowsingViewController_pickerModel);
    type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
    sub_100055EDC(&qword_1008EBBB8, &type metadata accessor for WorkoutVoiceOnboardingPickerViewModel);

    v62 = static ObservableObject.environmentStore.getter();
    v63 = v70;
    sub_100015E80(v59, v70, &qword_1008EBB88);
    result = sub_100140278(&qword_1008EBBC0);
    v64 = (v63 + *(result + 36));
    *v64 = v62;
    v64[1] = v61;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003D6A2C()
{
  result = [v0 presentedViewController];
  if (result)
  {
    v2 = result;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 viewControllers];
      sub_1000059F8(0, &qword_1008E4DD0);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_5:
          if ((v5 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v6 = *(v5 + 32);
          }

          v7 = v6;

          type metadata accessor for MirroredStartViewController();
          v8 = swift_dynamicCastClass();
          if (v8)
          {
            v9 = v8;
            MirrorViewMonitor.sessionViewModel.getter();
            MirroredStartViewController.mirroredStartViewModel.getter();
            MirroredStartViewModel.workoutConfiguration.getter();

            dispatch thunk of SessionViewModel.workoutConfiguration.setter();

            return v9;
          }

          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_1003D6C68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutBrowsingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003D6E48()
{
  result = type metadata accessor for InferenceClient();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SnapshotClient();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003D6F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v8;
  v5[10] = v7;

  return _swift_task_switch(sub_1003D7074, v8, v7);
}

uint64_t sub_1003D7074()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___CHWorkoutBrowsingViewController_currentQuickStartContext;
  if (*(v1 + OBJC_IVAR___CHWorkoutBrowsingViewController_currentQuickStartContext))
  {

    static WOLog.app.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Already handling existing quick start workout configuration. Skipping...", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);

    v10 = v0[1];

    return v10();
  }

  else
  {
    static WOLog.app.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "handle quick start workout configuration", v14, 2u);
    }

    v16 = v0[5];
    v15 = v0[6];
    v18 = v0[3];
    v17 = v0[4];

    (*(v16 + 8))(v15, v17);
    v19 = *(v1 + v2);
    *(v1 + v2) = v18;
    v20 = v18;

    v21 = *&v20[OBJC_IVAR___CHQuickStartWorkoutActionContext_configuration];
    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = sub_1003D72F4;

    return sub_1003D42B0(v21, 1, sub_1003D75E4, 0);
  }
}

uint64_t sub_1003D72F4()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1003D7414, v3, v2);
}

uint64_t sub_1003D7414()
{
  v1 = *(v0 + 16);

  sub_1003D7490(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003D7490(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "finished handling quick start workout configuration", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(a1 + OBJC_IVAR___CHWorkoutBrowsingViewController_currentQuickStartContext);
  *(a1 + OBJC_IVAR___CHWorkoutBrowsingViewController_currentQuickStartContext) = 0;
}

uint64_t sub_1003D75E4(uint64_t a1)
{
  v24 = type metadata accessor for WorkoutDeviceType();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v25 = type metadata accessor for WorkoutDevice();
  v8 = *(v25 - 8);
  v9 = __chkstk_darwin(v25);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a1 + 16);
  v26 = a1;
  v27 = v13;
  v23 = v8 + 16;
  v22 = enum case for WorkoutDeviceType.watch(_:);
  v14 = (v2 + 8);
  v20 = v8 + 8;
  v21 = (v2 + 104);
  while (v27 != v12)
  {
    v15 = v25;
    (*(v8 + 16))(v11, v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v25, v9);
    WorkoutDevice.type.getter();
    v16 = v24;
    (*v21)(v4, v22, v24);
    v17 = static WorkoutDeviceType.== infix(_:_:)();
    v18 = *v14;
    (*v14)(v4, v16);
    v18(v7, v16);
    (*(v8 + 8))(v11, v15);
    if (v17)
    {
      return 19;
    }
  }

  return 21;
}

void sub_1003D7A0C()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel;
  if (!*(v0 + OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  ConfigurationNavigationModel.browsingNavigationPath.getter();

  v7 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    dispatch thunk of WorkoutScrollingCoordinator.scrollToTop.setter();
    return;
  }

  if (!*(v1 + v6))
  {
    goto LABEL_8;
  }

  ConfigurationNavigationModel.resetNavigationPath()();
}

uint64_t sub_1003D7BC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_1003D6F74(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D7C84(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutTabRootView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D7CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1003D5108(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D7DA0(double a1)
{
  *(v1 + 24) = a1;
  v2 = type metadata accessor for Date();
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v2 - 8);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = type metadata accessor for MainActor();
  *(v1 + 64) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 72) = v4;
  *(v1 + 80) = v3;

  return _swift_task_switch(sub_1003D7E98, v4, v3);
}

uint64_t sub_1003D7E98()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for WorkoutDevicesProvider();
  v3 = static WorkoutDevicesProvider.shared.getter();
  v0[11] = v3;
  dispatch thunk of WorkoutDevicesProvider.startScanning()();
  Date.init()();
  v4 = static MainActor.shared.getter();
  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = sub_100140278(&qword_1008EBBC8);
  *v6 = v0;
  v6[1] = sub_1003D7FEC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v4, &protocol witness table for MainActor, 0xD000000000000017, 0x800000010075B1E0, sub_1003D81F8, v5, v7);
}

uint64_t sub_1003D7FEC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1003D814C, v3, v2);
}

uint64_t sub_1003D814C()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  v5 = v0[2];
  dispatch thunk of WorkoutDevicesProvider.stopScanning()();

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1003D8204(void *a1)
{
  v3 = *(sub_100140278(&qword_1008EBBD0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + ((*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D60B0(a1, v7);
}

void sub_1003D8314()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel) = 0;
  v2 = OBJC_IVAR___CHWorkoutBrowsingViewController_workoutScrollingCoordinator;
  type metadata accessor for WorkoutScrollingCoordinator();
  swift_allocObject();
  *(v0 + v2) = WorkoutScrollingCoordinator.init()();
  *(v0 + OBJC_IVAR___CHWorkoutBrowsingViewController_currentQuickStartContext) = 0;
  v3 = OBJC_IVAR___CHWorkoutBrowsingViewController_visibilityObservers;
  *(v1 + v3) = [objc_opt_self() weakObjectsHashTable];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003D83E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002BBC0;

  return sub_1003D5530(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003D84B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1003D29BC(a1, v4, v5, v6);
}

uint64_t sub_1003D8570(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BBC0;

  return sub_1003D3068(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D8648(unsigned __int8 a1)
{
  result = Calendar.shortWeekdaySymbols.getter();
  v3 = *(result + 16);
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (v3 >= 4)
        {
          v4 = 80;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v3 >= 3)
      {
        v4 = 64;
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 >= 2)
      {
        v4 = 48;
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a1 <= 4u)
  {
    if (a1 != 3)
    {
      if (v3 >= 6)
      {
        v4 = 112;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v3 >= 5)
    {
      v4 = 96;
LABEL_21:
      v5 = *(result + v4);

      return v5;
    }

    goto LABEL_25;
  }

  if (a1 == 5)
  {
    if (v3 >= 7)
    {
      v4 = 128;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v3)
  {
    v4 = 32;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003D876C(uint64_t a1)
{
  result = Calendar.weekdaySymbols.getter();
  v3 = *(a1 + OBJC_IVAR____TtC10FitnessApp7GoalDay_day);
  v4 = *(result + 16);
  if (v3 <= 2)
  {
    if (*(a1 + OBJC_IVAR____TtC10FitnessApp7GoalDay_day))
    {
      if (v3 != 1)
      {
        if (v4 >= 4)
        {
          v5 = 80;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      if (v4 >= 3)
      {
        v5 = 64;
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 >= 2)
      {
        v5 = 48;
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(a1 + OBJC_IVAR____TtC10FitnessApp7GoalDay_day) <= 4u)
  {
    if (v3 != 3)
    {
      if (v4 >= 6)
      {
        v5 = 112;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    if (v4 >= 5)
    {
      v5 = 96;
LABEL_21:
      v6 = *(result + v5);

      return v6;
    }

    goto LABEL_25;
  }

  if (v3 == 5)
  {
    if (v4 >= 7)
    {
      v5 = 128;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v4)
  {
    v5 = 32;
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003D88C4()
{
  v0 = sub_100140278(&qword_1008DC638);
  sub_100163368(v0, qword_100925818);
  sub_10001AC90(v0, qword_100925818);
  type metadata accessor for FitnessPlusSampleContentTip();
  v1 = type metadata accessor for FitnessPlusFeatures();
  v4[3] = v1;
  v4[4] = sub_1003DA090(&qword_1008DC5F8, &type metadata accessor for FitnessPlusFeatures);
  v2 = sub_100005994(v4);
  (*(*(v1 - 8) + 104))(v2, enum case for FitnessPlusFeatures.sampleContent(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005A40(v4);
  LOBYTE(v4[0]) = v1 & 1;
  sub_100140278(&qword_1008EBCD8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1003D8AC0()
{
  v0 = sub_100140278(&qword_1008DC638);
  sub_100163368(v0, qword_100925830);
  sub_10001AC90(v0, qword_100925830);
  type metadata accessor for FitnessPlusSampleContentTip();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1003D8BD0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100140278(&qword_1008DC638);
  sub_100163368(v3, a2);
  sub_10001AC90(v3, a2);
  type metadata accessor for FitnessPlusSampleContentTip();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1003D8C8C()
{
  v0 = sub_100140278(&qword_1008DC638);
  sub_100163368(v0, qword_100925878);
  sub_10001AC90(v0, qword_100925878);
  type metadata accessor for FitnessPlusSampleContentTip();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1003D8D40()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  LOBYTE(v2) = v6;
  v7 = Text.foregroundStyle<A>(_:)();
  sub_10004642C(v3, v5, v2 & 1);

  return v7;
}

uint64_t sub_1003D8E8C()
{
  v0 = sub_100140278(&qword_1008DC638);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v19 - v2;
  v4 = type metadata accessor for Tips.Rule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1008DAA10 != -1)
  {
    swift_once();
  }

  v8 = sub_10001AC90(v0, qword_100925818);
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  Tips.Rule.init<A>(_:_:)();
  v19[3] = static Tips.RuleBuilder.buildExpression(_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (qword_1008DAA20 != -1)
  {
    swift_once();
  }

  v11 = sub_10001AC90(v0, qword_100925848);
  swift_beginAccess();
  v9(v3, v11, v0);
  Tips.Rule.init<A>(_:_:)();
  v19[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  v12 = v9;
  if (qword_1008DAA18 != -1)
  {
    swift_once();
  }

  v13 = sub_10001AC90(v0, qword_100925830);
  swift_beginAccess();
  v12(v3, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  v19[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  if (qword_1008DAA30 != -1)
  {
    swift_once();
  }

  v14 = sub_10001AC90(v0, qword_100925878);
  swift_beginAccess();
  v12(v3, v14, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v4);
  v15 = v4;
  if (qword_1008DAA28 != -1)
  {
    swift_once();
  }

  v16 = sub_10001AC90(v0, qword_100925860);
  swift_beginAccess();
  v12(v3, v16, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v10(v7, v15);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v17 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v17;
}

uint64_t sub_1003D9450@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_100140278(&qword_1008EBC98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_100140278(&qword_1008EBCA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10014A6B0(&qword_1008EBCA8, &qword_1008EBCA0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_100140278(&qword_1008EBCB0);
  a2[4] = sub_1003D9A14();
  sub_100005994(a2);
  sub_10014A6B0(&qword_1008EBCD0, &qword_1008EBC98);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void *sub_1003D9798()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Tips.Action.init(id:perform:_:)();
  sub_100140278(&qword_1008EBCE0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D46C0;
  (*(v1 + 32))(v5 + v4, v3, v0);
  v6 = sub_1003D9D48(v5);
  swift_setDeallocating();
  (*(v1 + 8))(v5 + v4, v0);
  swift_deallocClassInstance();
  return v6;
}

uint64_t sub_1003D995C@<X0>(uint64_t *a1@<X8>)
{
  sub_1003DA090(&qword_1008EBCF0, type metadata accessor for FitnessPlusSampleContentTip);
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1003D9A14()
{
  result = qword_1008EBCB8;
  if (!qword_1008EBCB8)
  {
    sub_100141EEC(&qword_1008EBCB0);
    sub_10014A6B0(&qword_1008EBCC0, &qword_1008EBCA0);
    sub_1003D9ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EBCB8);
  }

  return result;
}

unint64_t sub_1003D9ACC()
{
  result = qword_1008EBCC8;
  if (!qword_1008EBCC8)
  {
    sub_100141EEC(&qword_1008EBC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EBCC8);
  }

  return result;
}

size_t sub_1003D9B50(size_t a1, int64_t a2, char a3)
{
  result = sub_1003D9B70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003D9B70(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_100140278(&qword_1008EBCE0);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1003D9D48(uint64_t a1)
{
  v2 = type metadata accessor for Tips.Action();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100140278(&qword_1008EBCE8);
  __chkstk_darwin(v30);
  v29 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v31 = _swiftEmptyArrayStorage;
  sub_1003D9B50(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_1003D9FB8(v16, v9);
      Tips.Action.with(index:)();
      sub_1003DA028(v9);
      v31 = v10;
      v19 = v2;
      v21 = v10[2];
      v20 = v10[3];
      if (v21 >= v20 >> 1)
      {
        sub_1003D9B50(v20 > 1, v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      v10[2] = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

uint64_t sub_1003D9FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EBCE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DA028(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EBCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003DA090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DA10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v5 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v5 - 8);
  v38 = &v37 - v6;
  v7 = type metadata accessor for Font.Leading();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  sub_10000FCBC();

  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Font.footnote.getter();
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  Font.leading(_:)();

  (*(v8 + 8))(v10, v7);
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;

  sub_10004642C(v11, v13, v15 & 1);

  LODWORD(v40) = static HierarchicalShapeStyle.secondary.getter();
  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  LOBYTE(v10) = v24;
  sub_10004642C(v16, v18, v20 & 1);

  v25 = enum case for Font.Design.rounded(_:);
  v26 = type metadata accessor for Font.Design();
  v27 = *(v26 - 8);
  v28 = v38;
  (*(v27 + 104))(v38, v25, v26);
  (*(v27 + 56))(v28, 0, 1, v26);
  v29 = Text.fontDesign(_:)();
  v31 = v30;
  LOBYTE(v27) = v32;
  v34 = v33;
  sub_10004642C(v21, v23, v10 & 1);

  result = sub_1000465F8(v28);
  v36 = v39;
  *v39 = v29;
  v36[1] = v31;
  *(v36 + 16) = v27 & 1;
  v36[3] = v34;
  return result;
}

uint64_t sub_1003DA444()
{
  v1 = OBJC_IVAR____TtC10FitnessApp31DailyGoalChartPointDataProvider__dailyGoals;
  v2 = sub_100140278(&qword_1008EBDF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DailyGoalChartPointDataProvider()
{
  result = qword_1008EBD28;
  if (!qword_1008EBD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DA540()
{
  sub_1003DA5D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003DA5D0()
{
  if (!qword_1008EBD38)
  {
    sub_100141EEC(&unk_1008EBD40);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008EBD38);
    }
  }
}

uint64_t sub_1003DA634@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DailyGoalChartPointDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *sub_1003DA674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView;
  v7 = [objc_allocWithZone(ASCompetitionScoreView) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell();
  v9 = objc_msgSendSuper2(&v18, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  v11 = [v10 contentView];
  v12 = OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView;
  [v11 addSubview:*&v10[OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView]];

  v13 = objc_opt_self();
  v14 = *&v10[v12];
  v15 = [v10 contentView];
  UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();

  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  return v10;
}

void sub_1003DA870(void *a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView;
  [*&v1[OBJC_IVAR____TtC10FitnessApp60ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell_totalWinsView] removeFromSuperview];
  v4 = [a1 isCompetitionActive];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 companionTotalWinsFriendDetailConfiguration];
    if (!v6)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v7 = v6;
    [v7 setPrimaryScoreBaselineOffset:9.0];
    [v7 setBottomMargin:7.0];
  }

  else
  {
    v8 = [v5 companionTotalWinsStandaloneFriendDetailConfiguration];
    if (!v8)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v7 = v8;
    [v7 setPrimaryScoreBaselineOffset:12.0];
  }

  [v7 setNameBaselineOffset:15.0];
  v9 = [objc_allocWithZone(ASCompetitionScoreView) initWithConfiguration:v7];

  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *&v1[v3];
  *&v1[v3] = v9;
  v11 = v9;

  v12 = [a1 currentCompetition];
  [v11 setFriend:a1 competition:v12];

  v13 = [v1 contentView];
  [v13 addSubview:*&v1[v3]];

  v14 = objc_opt_self();
  v15 = *&v1[v3];
  v16 = [v1 contentView];
  UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)();

  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];
}

id sub_1003DABC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendDetailCompetitionTotalWinsTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003DAC48(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      sub_1003DBBD4();

      sub_1006943D0();
    }

    else if (a1 == 3)
    {
      v2 = *(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator);
      if (v2)
      {
        v3 = *(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2);
        v4 = v2;
        [v3 removeFromSuperview];
        [*(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2) removeFromSuperview];
        [*(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1) removeFromSuperview];
        __chkstk_darwin([*(v1 + OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1) removeFromSuperview]);
        v5[3] = sub_100140278(&qword_1008EBE28);
        v5[4] = sub_1003DC080();
        sub_100005994(v5);
        sub_1003DC0E4();
        UIHostingConfiguration<>.init(content:)();
        UITableViewCell.contentConfiguration.setter();
      }
    }
  }

  else
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return;
      }

      sub_1003DB4A0();
    }

    else
    {
      sub_1003DAE1C();
    }

    sub_1006943D0();

    sub_100694E08();
  }
}

void sub_1003DAE1C()
{
  v1 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator];
  if (v1)
  {
    v2 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
    v3 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = v1;
    v54 = v4;
    v7 = [v4 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v5 setText:v9];
    v10 = *&v0[v2];
    v11 = objc_opt_self();
    v12 = v10;
    v53 = v11;
    v13 = [v11 defaultFontForTextStyle:UIFontTextStyleBody];
    [v12 setFont:v13];

    v14 = *&v0[v2];
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 labelColor];
    [v16 setTextColor:v17];

    v18 = [v0 contentView];
    [v18 addSubview:*&v0[v2]];

    v19 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
    v20 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    v52 = v6;
    static Published.subscript.getter();

    v66[8] = v63;
    v66[9] = v64;
    v67[0] = *v65;
    *(v67 + 9) = *&v65[9];
    v66[4] = v59;
    v66[5] = v60;
    v66[6] = v61;
    v66[7] = v62;
    v66[0] = v55;
    v66[1] = v56;
    v66[2] = v57;
    v66[3] = v58;

    sub_10021D28C(v66);
    v22 = String._bridgeToObjectiveC()();

    [v21 setText:v22];

    v23 = *&v0[v19];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 diveColors];
    if (v26)
    {
      v27 = v26;
      v51 = v24;
      v28 = [v26 nonGradientTextColor];

      [v25 setTextColor:v28];
      v29 = qword_1008DAFE8;
      v30 = *&v0[v19];
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = qword_1009261E0;
      [v30 setFont:qword_1009261E0];

      [*&v0[v19] setNumberOfLines:0];
      v32 = [v0 contentView];
      [v32 addSubview:*&v0[v19]];

      v33 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
      v34 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2];
      v35 = [v54 mainBundle];
      v36 = String._bridgeToObjectiveC()();
      v37 = [v35 localizedStringForKey:v36 value:0 table:0];

      if (!v37)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = String._bridgeToObjectiveC()();
      }

      [v34 setText:v37];
      v38 = *&v0[v33];
      v39 = [v53 defaultFontForTextStyle:UIFontTextStyleBody];
      [v38 setFont:v39];

      v40 = *&v0[v33];
      v41 = [v15 labelColor];
      [v40 setTextColor:v41];

      v42 = [v0 contentView];
      [v42 addSubview:*&v0[v33]];

      v43 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
      v44 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2];
      v45 = [v51 diveColors];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 nonGradientTextColor];

        [v44 setTextColor:v47];
        [*&v0[v43] setFont:v31];
        v48 = *&v0[v43];
        v49 = sub_1006003A0();
        [v48 setAttributedText:v49];

        [*&v0[v43] setNumberOfLines:0];
        v50 = [v0 contentView];
        [v50 addSubview:*&v0[v43]];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1003DB4A0()
{
  v1 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator];
  if (v1)
  {
    v2 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
    v3 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = v1;
    v55 = v4;
    v7 = [v4 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v5 setText:v9];
    v10 = *&v0[v2];
    v11 = objc_opt_self();
    v12 = v10;
    v54 = v11;
    v13 = [v11 defaultFontForTextStyle:UIFontTextStyleBody];
    [v12 setFont:v13];

    v14 = *&v0[v2];
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 labelColor];
    [v16 setTextColor:v17];

    v18 = [v0 contentView];
    [v18 addSubview:*&v0[v2]];

    v19 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
    v20 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    v53 = v6;
    static Published.subscript.getter();

    v78[8] = v75;
    v78[9] = v76;
    v79[0] = v77[0];
    *(v79 + 9) = *(v77 + 9);
    v78[4] = v71;
    v78[5] = v72;
    v78[6] = v73;
    v78[7] = v74;
    v78[0] = v67;
    v78[1] = v68;
    v78[2] = v69;
    v78[3] = v70;

    sub_10021D28C(v78);
    v22 = String._bridgeToObjectiveC()();

    [v21 setText:v22];

    v23 = *&v0[v19];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 elapsedTimeColors];
    if (v26)
    {
      v27 = v26;
      v52 = v24;
      v28 = [v26 nonGradientTextColor];

      [v25 setTextColor:v28];
      v29 = qword_1008DAFE8;
      v30 = *&v0[v19];
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = qword_1009261E0;
      [v30 setFont:qword_1009261E0];

      [*&v0[v19] setNumberOfLines:0];
      v32 = [v0 contentView];
      [v32 addSubview:*&v0[v19]];

      v33 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
      v34 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2];
      v35 = [v55 mainBundle];
      v36 = String._bridgeToObjectiveC()();
      v37 = [v35 localizedStringForKey:v36 value:0 table:0];

      if (!v37)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = String._bridgeToObjectiveC()();
      }

      [v34 setText:v37];
      v38 = *&v0[v33];
      v39 = [v54 defaultFontForTextStyle:UIFontTextStyleBody];
      [v38 setFont:v39];

      v40 = *&v0[v33];
      v41 = [v15 labelColor];
      [v40 setTextColor:v41];

      v42 = [v0 contentView];
      [v42 addSubview:*&v0[v33]];

      v43 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
      v44 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2];
      v45 = [v52 elapsedTimeColors];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 nonGradientTextColor];

        [v44 setTextColor:v47];
        [*&v0[v43] setFont:v31];
        v48 = *&v0[v43];
        swift_getKeyPath();
        swift_getKeyPath();
        v49 = v48;
        static Published.subscript.getter();

        v75 = v64;
        v76 = v65;
        v77[0] = *v66;
        *(v77 + 9) = *&v66[9];
        v71 = v60;
        v72 = v61;
        v73 = v62;
        v74 = v63;
        v67 = v56;
        v68 = v57;
        v69 = v58;
        v70 = v59;

        sub_10021D28C(&v67);
        v50 = String._bridgeToObjectiveC()();

        [v49 setText:v50];

        [*&v0[v43] setNumberOfLines:0];
        v51 = [v0 contentView];
        [v51 addSubview:*&v0[v43]];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1003DBBD4()
{
  v1 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator];
  if (v1)
  {
    v2 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
    v3 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = v1;
    v7 = [v4 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v5 setText:v9];
    v10 = *&v0[v2];
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 defaultFontForTextStyle:UIFontTextStyleBody];
    [v12 setFont:v13];

    v14 = *&v0[v2];
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 labelColor];
    [v16 setTextColor:v17];

    v18 = [v0 contentView];
    [v18 addSubview:*&v0[v2]];

    v19 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
    v20 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    static Published.subscript.getter();

    v43[8] = v40;
    v43[9] = v41;
    v44[0] = *v42;
    *(v44 + 9) = *&v42[9];
    v43[4] = v36;
    v43[5] = v37;
    v43[6] = v38;
    v43[7] = v39;
    v43[0] = v32;
    v43[1] = v33;
    v43[2] = v34;
    v43[3] = v35;

    sub_10021D28C(v43);
    v22 = String._bridgeToObjectiveC()();

    [v21 setText:v22];

    v23 = *&v0[v19];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 paceColors];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 nonGradientTextColor];

      [v25 setTextColor:v28];
      v29 = qword_1008DAFE8;
      v30 = *&v0[v19];
      if (v29 != -1)
      {
        swift_once();
      }

      [v30 setFont:qword_1009261E0];

      [*&v0[v19] setNumberOfLines:0];
      v31 = [v0 contentView];
      [v31 addSubview:*&v0[v19]];

      [*&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2] removeFromSuperview];
      [*&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2] removeFromSuperview];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1003DC008@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *a1 = sub_100192CBC;
  *(a1 + 8) = v3;
  *(a1 + 16) = 256;

  return v5;
}

unint64_t sub_1003DC080()
{
  result = qword_1008EBE30;
  if (!qword_1008EBE30)
  {
    sub_100141EEC(&qword_1008EBE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EBE30);
  }

  return result;
}

unint64_t sub_1003DC0E4()
{
  result = qword_1008EBE38;
  if (!qword_1008EBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EBE38);
  }

  return result;
}

uint64_t sub_1003DC138()
{
  v1 = sub_1003DEDA0(20);
  v105 = v1;
  v2 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
  swift_beginAccess();
  v91 = v0;
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    do
    {
      sub_100007C5C(v5, v102);
      v6 = v103;
      v7 = v104;
      sub_1000066AC(v102, v103);
      v8 = (*(v7 + 16))(v6, v7);
      if (v10 != 3 || (v8 | v9) != 0)
      {
        v93 = v4;
        sub_10001D4F8(v8, v9, v10);
        v12 = v103;
        v13 = v104;
        sub_1000066AC(v102, v103);
        v14 = (*(v13 + 16))(v12, v13);
        v16 = v15;
        v18 = v17;
        v19 = sub_1000490C8(v14, v15, v17);
        sub_10001D4F8(v14, v16, v18);
        v20 = v105;
        if (!v105[2] || (sub_1004CD4B0(v19), (v21 & 1) == 0))
        {
          v22 = v103;
          v23 = v104;
          sub_1000066AC(v102, v103);
          v24 = (*(v23 + 16))(v22, v23);
          v26 = v25;
          LOBYTE(v23) = v27;
          v28 = sub_1000490C8(v24, v25, v27);
          sub_10001D4F8(v24, v26, v23);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101[0] = v20;
          sub_10048FB70(_swiftEmptyArrayStorage, v28, isUniquelyReferenced_nonNull_native);
          v105 = v101[0];
        }

        v30 = v103;
        v31 = v104;
        sub_1000066AC(v102, v103);
        v32 = (*(v31 + 16))(v30, v31);
        v34 = v33;
        v36 = v35;
        sub_100078198(v32, v33, v35, &v98);
        sub_10001D4F8(v32, v34, v36);
        v37 = v99;
        v38 = v100;
        sub_1000066AC(&v98, v99);
        v39 = v103;
        v40 = v104;
        sub_1000066AC(v102, v103);
        v41 = (*(v40 + 16))(v39, v40);
        v43 = v42;
        v45 = v44;
        v47 = v103;
        v46 = v104;
        sub_1000066AC(v102, v103);
        LOBYTE(v46) = (*(v46 + 24))(v47, v46);
        sub_100007C5C(v102, &v96);
        v49 = v103;
        v48 = v104;
        sub_1000066AC(v102, v103);
        v50 = (*(v48 + 32))(v49, v48);
        (*(v38 + 16))(v101, v41, v43, v45, v46 & 1, &v96, v50 & 1, v37, v38);
        sub_10001D4F8(v41, v43, v45);
        sub_10000EA04(&v96, &qword_1008DCC60);
        sub_100005A40(&v98);
        v51 = v103;
        v52 = v104;
        sub_1000066AC(v102, v103);
        v53 = (*(v52 + 16))(v51, v52);
        v55 = v54;
        LOBYTE(v52) = v56;
        v57 = sub_1000490C8(v53, v54, v56);
        sub_10001D4F8(v53, v55, v52);
        v59 = sub_100538518(v95, v57);
        if (*v58)
        {
          v60 = v58;
          sub_10001B104(v101, &v96, &qword_1008DCC60);
          if (v97)
          {
            sub_100006260(&v96, &v98);
          }

          else
          {
            sub_100007C5C(v102, &v98);
            if (v97)
            {
              sub_10000EA04(&v96, &qword_1008DCC60);
            }
          }

          v61 = *v60;
          v62 = swift_isUniquelyReferenced_nonNull_native();
          *v60 = v61;
          if ((v62 & 1) == 0)
          {
            v61 = sub_1001A1E58(0, v61[2] + 1, 1, v61);
            *v60 = v61;
          }

          v64 = v61[2];
          v63 = v61[3];
          if (v64 >= v63 >> 1)
          {
            v61 = sub_1001A1E58((v63 > 1), v64 + 1, 1, v61);
            *v60 = v61;
          }

          v4 = v93;
          v61[2] = v64 + 1;
          sub_100006260(&v98, &v61[5 * v64 + 4]);
          (v59)(v95, 0);
          sub_10000EA04(v101, &qword_1008DCC60);
        }

        else
        {
          (v59)(v95, 0);
          sub_10000EA04(v101, &qword_1008DCC60);
          v4 = v93;
        }
      }

      sub_100005A40(v102);
      v5 += 40;
      --v4;
    }

    while (v4);

    v1 = v105;
  }

  v65 = v1 + 8;
  v66 = 1 << *(v1 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v1[8];
  v94 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context;
  v69 = (v66 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v70 = 0;
  v71 = v1;
  v92 = v1;
  while (v68)
  {
LABEL_33:
    v73 = __clz(__rbit64(v68)) | (v70 << 6);
    v74 = *(v1[6] + v73);
    v75 = *(v91 + v94);
    v102[0] = *(v1[7] + 8 * v73);
    swift_bridgeObjectRetain_n();
    v76 = v75;
    sub_100478034(v102, v76);

    v77 = v102[0];
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v102[0] = v71;
    v79 = sub_1004CD4B0(v74);
    v81 = v71[2];
    v82 = (v80 & 1) == 0;
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_45;
    }

    v85 = v80;
    if (v71[3] < v84)
    {
      sub_100488838(v84, v78);
      v79 = sub_1004CD4B0(v74);
      if ((v85 & 1) != (v86 & 1))
      {
        goto LABEL_47;
      }

LABEL_38:
      v71 = v102[0];
      if (v85)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v78)
    {
      goto LABEL_38;
    }

    v89 = v79;
    sub_10049294C();
    v79 = v89;
    v71 = v102[0];
    if (v85)
    {
LABEL_26:
      *(v71[7] + 8 * v79) = v77;

      goto LABEL_27;
    }

LABEL_39:
    v71[(v79 >> 6) + 8] |= 1 << v79;
    *(v71[6] + v79) = v74;
    *(v71[7] + 8 * v79) = v77;
    v87 = v71[2];
    v83 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v83)
    {
      goto LABEL_46;
    }

    v71[2] = v88;
LABEL_27:
    v68 &= v68 - 1;

    v1 = v92;
  }

  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v72 >= v69)
    {

      return v71;
    }

    v68 = v65[v72];
    ++v70;
    if (v68)
    {
      v70 = v72;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);

  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003DC880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v3 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C5C(a1, v23);
  sub_100007C5C(a2, v22);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  sub_100006260(v23, v14 + 24);
  sub_100006260(v22, v14 + 64);
  *(v14 + 104) = ObjectType;
  aBlock[4] = sub_1003E4064;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008572A0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1003DCBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for AppAction();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1003DCC9C, 0, 0);
}

uint64_t sub_1003DCC9C()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v0[6] = *(*(*(*(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_browsingCoordinator) + 16);
  *v2 = *(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode);
  (*(v3 + 104))();
  type metadata accessor for MainActor();

  v0[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003DCDA0, v5, v4);
}

uint64_t sub_1003DCDA0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  AppCoordinator.send(_:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

id sub_1003DCE40()
{
  [*(*(*(*&v0[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider) + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) removeObject:v0];
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_notificationCenterObservers];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v1 + 32;

    do
    {
      sub_10000B1B4(v4, v8);
      v5 = [v3 defaultCenter];
      sub_1000066AC(v8, v8[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      sub_100005A40(v8);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SummaryCoordinator();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1003DD208()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v29 - v5;
  v39 = type metadata accessor for DispatchPredicate();
  v7 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
    swift_beginAccess();
    v12 = *&v10[v11];
    v36 = *(v12 + 16);
    v37 = v11;
    if (v36)
    {
      v34 = v12 + 32;
      v35 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue;
      v33 = enum case for DispatchPredicate.onQueue(_:);
      v32 = (v7 + 104);
      v31 = (v7 + 8);
      v13 = (v1 + 8);
      v29[1] = v12;

      v14 = 0;
      v30 = v10;
      while (1)
      {
        sub_100007C5C(v34 + 40 * v14, v42);
        v15 = *&v10[v35];
        v17 = v38;
        v16 = v39;
        *v38 = v15;
        (*v32)(v17, v33, v16);
        v18 = v15;
        LOBYTE(v15) = _dispatchPreconditionTest(_:)();
        (*v31)(v17, v16);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v19 = *&v10[v37];
        v20 = *(v19 + 16);
        v40 = v14;
        v41 = v19;

        if (v20)
        {
          v21 = 0;
          v22 = (v41 + 32);
          while (1)
          {
            v23 = v22[3];
            v24 = v22[4];
            sub_1000066AC(v22, v23);
            (*(v24 + 8))(v23, v24);
            v25 = v43;
            v26 = v44;
            sub_1000066AC(v42, v43);
            (*(v26 + 8))(v25, v26);
            v27 = static UUID.== infix(_:_:)();
            v28 = *v13;
            (*v13)(v3, v0);
            v28(v6, v0);
            if (v27)
            {
              break;
            }

            ++v21;
            v22 += 5;
            if (v20 == v21)
            {
              goto LABEL_4;
            }
          }

          sub_100636B98(v42);
        }

        else
        {
LABEL_4:
        }

        v14 = v40 + 1;
        sub_100005A40(v42);
        v10 = v30;
        if (v14 == v36)
        {

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1003DD608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_100140278(&qword_1008EBF58);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003DD6D4, 0, 0);
}

uint64_t sub_1003DD6D4()
{
  v1 = *(*(*(v0 + 40) + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_highlightDataProvider);
  *(v0 + 72) = v1;

  return _swift_task_switch(sub_1003DD764, v1, 0);
}

uint64_t sub_1003DD764()
{
  swift_beginAccess();
  sub_100140278(&qword_1008E9FE8);
  Published.projectedValue.getter();
  swift_endAccess();

  return _swift_task_switch(sub_1003DD81C, 0, 0);
}

uint64_t sub_1003DD81C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10014A6B0(&qword_1008EBF60, &qword_1008EBF58);
  v5 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  *(v4 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsHighlightStateCancellable) = v5;

  v6 = v0[1];

  return v6();
}

void sub_1003DD944()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100069D98(0x29u);
  }
}

void sub_1003DD99C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100069D98(0x30u);
  }
}

uint64_t sub_1003DD9F4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = ObjectType;
  aBlock[4] = sub_1003E3BE0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100857098;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_1003DDD18(uint64_t a1, unsigned int a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  v86 = v4;
  if (os_log_type_enabled(HKLogActivity, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v93 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, &v93);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v5, "%s Calling updateCards", v8, 0xCu);
    sub_100005A40(v9);
  }

  v13 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context;
  v14 = *(*&v4[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
  sub_100154C08(a2);

  v15 = *(*&v4[v13] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  static Published.subscript.getter();

  v85 = v93;
  v17 = static os_log_type_t.default.getter();
  v18 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v17))
  {
    swift_bridgeObjectRetain_n();
    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v93 = v21;
    *v20 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = sub_10000AFDC(v22, v23, &v93);

    *(v20 + 4) = v24;
    v4 = v86;
    *(v20 + 12) = 2048;
    v25 = *(v85 + 16);

    *(v20 + 14) = v25;

    _os_log_impl(&_mh_execute_header, v19, v17, "%s currentCardConfiguration.count: %ld", v20, 0x16u);
    sub_100005A40(v21);
  }

  v26 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
  swift_beginAccess();
  v27 = *&v4[v26];
  v84 = *(v27 + 16);
  v82 = v26;
  if (v84)
  {
    v28 = v27 + 32;

    v30 = 0;
    v31 = &_swiftEmptyDictionarySingleton;
    v83 = v29;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v87 = v28;
      sub_100007C5C(v28, &v93);
      v33 = v94;
      v34 = v95;
      sub_1000066AC(&v93, v94);
      v35 = (*(v34 + 16))(v33, v34);
      v37 = v36;
      v39 = v38;
      v40 = v94;
      v41 = v95;
      sub_1000066AC(&v93, v94);
      v42 = (*(v41 + 24))(v40, v41);
      sub_100007C5C(&v93, &v91);
      v43 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v31;
      v46 = sub_1004C602C(v35, v37, v39 | ((v42 & 1) << 8));
      v47 = v31[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_41;
      }

      v50 = v45;
      if (v43[3] >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_100494AE8();
          if ((v50 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_10048C714(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_1004C602C(v35, v37, v39 | ((v42 & 1) << 8));
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_44;
        }

        v46 = v51;
        if ((v50 & 1) == 0)
        {
LABEL_18:
          v31 = v88[0];
          *(v88[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v53 = v31[6] + 24 * v46;
          *v53 = v35;
          *(v53 + 8) = v37;
          *(v53 + 16) = v39;
          *(v53 + 17) = v42 & 1;
          sub_100006260(&v91, v31[7] + 40 * v46);
          v54 = v31[2];
          v55 = __OFADD__(v54, 1);
          v56 = v54 + 1;
          if (v55)
          {
            goto LABEL_43;
          }

          v31[2] = v56;
          goto LABEL_9;
        }
      }

      sub_10001D4F8(v35, v37, v39);
      v31 = v88[0];
      v32 = *(v88[0] + 56) + 40 * v46;
      sub_100005A40(v32);
      sub_100006260(&v91, v32);
LABEL_9:
      ++v30;
      sub_100005A40(&v93);
      v28 = v87 + 40;
      v29 = v83;
      if (v84 == v30)
      {

        goto LABEL_24;
      }
    }
  }

  v31 = &_swiftEmptyDictionarySingleton;
LABEL_24:
  v57 = v31;
  v58 = v85;
  v59 = *(v85 + 16);
  if (v59)
  {
    v60 = 0;
    v61 = _swiftEmptyArrayStorage;
    v62 = (v85 + 49);
    while (v60 < *(v58 + 16))
    {
      v63 = *v62;
      v64 = *(v62 - 9);
      v65 = *(v62 - 17);
      v66 = *(v62 - 1);
      v88[0] = v65;
      v88[1] = v64;
      v89 = v66;
      v90 = v63;
      sub_10001D510(v65, v64, v66);
      sub_1003DE544(v88, v57, v86);
      sub_10001D4F8(v65, v64, v66);
      if (v92)
      {
        sub_100006260(&v91, &v93);
        sub_100006260(&v93, &v91);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_1001A1E58(0, v61[2] + 1, 1, v61);
        }

        v68 = v61[2];
        v67 = v61[3];
        if (v68 >= v67 >> 1)
        {
          v61 = sub_1001A1E58((v67 > 1), v68 + 1, 1, v61);
        }

        v61[2] = v68 + 1;
        sub_100006260(&v91, &v61[5 * v68 + 4]);
      }

      else
      {
        sub_10000EA04(&v91, &qword_1008DCC60);
      }

      ++v60;
      v62 += 24;
      v58 = v85;
      if (v59 == v60)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_42;
  }

  v61 = _swiftEmptyArrayStorage;
LABEL_36:

  v69 = v86;
  *&v86[v82] = v61;

  v70 = static os_log_type_t.default.getter();
  v71 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v70))
  {
    v72 = v86;
    v73 = v71;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v93 = v75;
    *v74 = 136315394;
    v76 = _typeName(_:qualified:)();
    v78 = sub_10000AFDC(v76, v77, &v93);

    *(v74 + 4) = v78;
    *(v74 + 12) = 2048;
    v79 = *(*&v86[v82] + 16);

    *(v74 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v73, v70, "%s activeCards updated with count: %ld, copying to client properties.", v74, 0x16u);
    sub_100005A40(v75);
    v69 = v86;
  }

  v80 = swift_allocObject();
  *(v80 + 16) = v69;
  *(v80 + 24) = v61;
  v81 = v69;
  sub_100074864(sub_1003E3BEC, v80);
}

uint64_t sub_1003DE544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v24 = *(a1 + 17);
  if (*(a2 + 16) && (!*(a1 + 17) ? (v8 = 0) : (v8 = 256), v9 = sub_1004C602C(v4, v5, v8 | v6), (v10 & 1) != 0))
  {
    sub_100007C5C(*(a2 + 56) + 40 * v9, v29);
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
  }

  v11 = static os_log_type_t.default.getter();
  v12 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v11))
  {
    log = v12;
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10000AFDC(v14, v15, &v31);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v25[0] = v4;
    v25[1] = v5;
    v26 = v6;
    sub_10001D510(v4, v5, v6);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000AFDC(v17, v18, &v31);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v11, "%s Calling makeCard for: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_100078198(v4, v5, v6, v25);
  v20 = v27;
  v21 = v28;
  sub_1000066AC(v25, v27);
  (*(v21 + 8))(v4, v5, v6, v24, v29, *(a3 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode), v20, v21);
  sub_10000EA04(v29, &qword_1008DCC60);
  return sub_100005A40(v25);
}

uint64_t sub_1003DE7C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&unk_1008EE810);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = type metadata accessor for OSSignposter();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_10006B4C0(v5, 0);
    swift_unknownObjectRelease();
    sub_10000EA04(v5, &unk_1008EE810);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000744F0(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003DE8EC(unint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state;
    v11 = *(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state + 8);
    v12 = static os_log_type_t.default.getter();
    v13 = HKLogActivity;
    v14 = os_log_type_enabled(HKLogActivity, v12);
    if (v11)
    {
      if (v14)
      {
        v15 = v13;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = v17;
        *v16 = 136315138;
        v18 = _typeName(_:qualified:)();
        v20 = sub_10000AFDC(v18, v19, &v28);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v15, v12, "%s Calling updateCards and setting up observers.", v16, 0xCu);
        sub_100005A40(v17);
      }

      sub_1003DD9F4(a1);
      sub_100074CB8(a1);
      result = sub_1003C31D0();
    }

    else
    {
      if (v14)
      {
        v21 = v13;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v28 = v23;
        *v22 = 136315138;
        v24 = _typeName(_:qualified:)();
        v26 = sub_10000AFDC(v24, v25, &v28);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v21, v12, "%s state is active. Calling updateCards.", v22, 0xCu);
        sub_100005A40(v23);
      }

      result = sub_1003DD9F4(a1);
    }

    *v10 = a1;
    *(v10 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003DEC24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SummaryCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_1003DEC80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(*(Strong + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_summaryUserProfileProvider);
    v3 = *&v2[OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_protectedState];
    v4 = v2;
    os_unfair_lock_lock((v3 + 28));
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    os_unfair_lock_unlock((v3 + 28));

    if (v6)
    {
      static os_log_type_t.default.getter();
      v7 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      v8 = &v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state];
      *v8 = 1;
      v8[8] = 1;
    }

    else
    {
      sub_1003DE8EC(v5);
    }
  }
}

void *sub_1003DEDA0(int a1)
{
  LODWORD(v2) = a1;
  v3 = sub_100140278(&unk_1008DB8A0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v127 - v7;
  v9 = type metadata accessor for UUID();
  v144 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v151 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state + 8))
  {
    static os_log_type_t.error.getter();
    v12 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    return sub_1004C9558(_swiftEmptyArrayStorage);
  }

  v152 = v10;
  v150 = v8;
  v140 = *(v1 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state);
  v141 = v1;
  v14 = _swiftEmptyArrayStorage;
  if (v2 != 20)
  {
    v15 = _swiftEmptyArrayStorage;
    if (v2 != 9)
    {
      goto LABEL_12;
    }
  }

  v16 = [*(*(v141 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager) allFriends];
  if (v16)
  {
    v17 = v16;
    sub_1000059F8(0, &qword_1008E53D0);
    sub_1003E2D24();
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_136:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_10029CE74(_swiftEmptyArrayStorage);
        v18 = v126;
        goto LABEL_11;
      }
    }

    v18 = &_swiftEmptySetSingleton;
  }

LABEL_11:
  v15 = sub_100311230(v18);

LABEL_12:
  *&v157 = v14;
  if (v15 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v142 = v2;
    v143 = v6;
    if (i)
    {
      v20 = 0;
      v2 = v15 & 0xC000000000000001;
      v6 = (v15 & 0xFFFFFFFFFFFFFF8);
      v153 = (v15 & 0xC000000000000001);
      v154 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v2)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v6 + 2))
          {
            goto LABEL_49;
          }

          v21 = *&v15[8 * v20 + 32];
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (![v21 isFriendshipCurrentlyActive] || (objc_msgSend(v22, "isMe") & 1) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v2 = v153;
          v6 = v154;
        }

        ++v20;
        if (v23 == i)
        {
          v154 = v157;
          v6 = v143;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v154 = _swiftEmptyArrayStorage;
LABEL_28:

    if ((v154 & 0x8000000000000000) == 0 && (v154 & 0x4000000000000000) == 0)
    {
      v24 = *(v154 + 16);
      if (!v24)
      {
        break;
      }

      goto LABEL_31;
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      break;
    }

LABEL_31:
    v25 = 0;
    v148 = (v144 + 56);
    v149 = v154 & 0xC000000000000001;
    v147 = (v144 + 48);
    v153 = _swiftEmptyArrayStorage;
    v145 = (v144 + 32);
    v146 = v24;
    v15 = &unk_1008DB8A0;
    v2 = &unk_1006DBA20;
    while (1)
    {
      if (v149)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v154 + 16))
        {
          goto LABEL_51;
        }

        v27 = *(v154 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v30 = v15;
      v31 = [v27 UUID];
      if (v31)
      {
        v32 = v31;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = v152;
      (*v148)(v6, v33, 1, v152);
      v35 = v150;
      v15 = v30;
      sub_100015E80(v6, v150, v30);
      if ((*v147)(v35, 1, v34) == 1)
      {
        sub_10000EA04(v35, v30);
        v26 = v146;
      }

      else
      {
        v36 = *v145;
        (*v145)(v151, v35, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_1001A1D2C(0, *(v153 + 2) + 1, 1, v153);
        }

        v38 = *(v153 + 2);
        v37 = *(v153 + 3);
        v26 = v146;
        if (v38 >= v37 >> 1)
        {
          v153 = sub_1001A1D2C(v37 > 1, v38 + 1, 1, v153);
        }

        v39 = v152;
        v40 = v153;
        *(v153 + 2) = v38 + 1;
        v36(&v40[((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v38], v151, v39);
        v6 = v143;
        v15 = v30;
      }

      ++v25;
      if (v29 == v26)
      {
        goto LABEL_55;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v153 = _swiftEmptyArrayStorage;
LABEL_55:

  v41 = v141;
  v42 = *(v141 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context);
  v43 = *(v42 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider);
  v44 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
  swift_beginAccess();
  v45 = *&v43[v44];
  swift_beginAccess();
  *&v157 = v45;
  v46 = v43;

  sub_10019EDE4(v47);
  v48 = v157;
  swift_beginAccess();
  v138 = v46;
  *&v157 = v48;

  sub_10019EDE4(v49);
  v50 = v157;
  v51 = *(v42 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
  v52 = sub_100153A94(v153, v50, v140);

  v153 = v52;
  v53 = *(v52 + 2);
  if (!v53)
  {
    v56 = &_swiftEmptyDictionarySingleton;
LABEL_133:

    return v56;
  }

  v54 = 0;
  v148 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode;
  v143 = v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory;
  v133 = (v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_catalogTipCardFactory);
  v134 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_quickStartWorkoutCardFactory;
  v140 = v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsCardsFactory;
  v131 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_awardCardFactory;
  v132 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_fitnessPlusCardFactory;
  v139 = v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_metricsCardFactory;
  v130 = (v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory);
  v128 = v41 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_ringsCardFactory;
  v129 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_loadCardFactory;
  v55 = v153 + 49;
  v135 = v53 - 1;
  v56 = &_swiftEmptyDictionarySingleton;
  v137 = xmmword_1006D46C0;
  v14 = v41;
  LODWORD(v2) = v142;
  v6 = v53;
  v147 = v53;
  v136 = v153 + 49;
  while (2)
  {
    v57 = &v55[24 * v54];
    v58 = v54;
    v149 = v56;
    while (2)
    {
      if (v58 >= *(v153 + 2))
      {
        __break(1u);
        goto LABEL_135;
      }

      v59 = *(v57 - 17);
      v60 = *(v57 - 9);
      v61 = *(v57 - 1);
      LODWORD(v154) = *v57;
      if (v61 <= 1)
      {
        if (!v61)
        {
          v62 = byte_1006EE10A[v59];
          goto LABEL_72;
        }

LABEL_71:
        sub_10001D510(v59, v60, v61);
        v62 = 9;
        goto LABEL_72;
      }

      if (v61 == 2)
      {
LABEL_65:
        v62 = 8;
        goto LABEL_72;
      }

      if (v59 > 4)
      {
        if (v59 > 6)
        {
          if (!(v59 ^ 7 | v60))
          {
            v62 = 4;
            goto LABEL_72;
          }

          if (v59 ^ 8 | v60)
          {
            v62 = 19;
            goto LABEL_72;
          }

          goto LABEL_65;
        }

        if (v59 ^ 5 | v60)
        {
          v62 = 6;
        }

        else
        {
          v62 = 5;
        }
      }

      else
      {
        if (v59 > 1)
        {
          if (!(v59 ^ 2 | v60))
          {
            v62 = 3;
            goto LABEL_72;
          }

          if (!(v59 ^ 3 | v60))
          {
            v62 = 10;
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        if (v59 | v60)
        {
          v62 = 7;
        }

        else
        {
          v62 = 0;
        }
      }

LABEL_72:
      if (v2 != 20 && v62 != v2)
      {
        sub_10001D4F8(v59, v60, v61);
        goto LABEL_59;
      }

      if (v56[2])
      {
        v63 = v62;
        sub_1004CD4B0(v62);
        if (v64)
        {
        }

        else
        {
          v65 = _swiftEmptyArrayStorage;
        }

        LODWORD(v62) = v63;
      }

      else
      {
        v65 = _swiftEmptyArrayStorage;
      }

      v151 = v59;
      v152 = v60;
      LODWORD(v146) = v62;
      v150 = v65;
      if (v61 > 1)
      {
        if (v61 == 2)
        {
LABEL_85:
          v73 = v143;
          v74 = *(v143 + 3);
          v159 = *(v143 + 2);
          v160 = v74;
          v161 = *(v143 + 8);
          v75 = *(v143 + 1);
          v157 = *v143;
          v158 = v75;
          v165 = &type metadata for TrendsCardFactory;
          v166 = &off_100854130;
          v76 = swift_allocObject();
          v162 = v76;
          v77 = *(v73 + 3);
          *(v76 + 48) = *(v73 + 2);
          *(v76 + 64) = v77;
          *(v76 + 80) = *(v73 + 8);
          v78 = *(v73 + 1);
          *(v76 + 16) = *v73;
          *(v76 + 32) = v78;
          sub_10007B028(&v157, v155);
          goto LABEL_118;
        }

        if (v59 > 4)
        {
          if (v59 <= 6)
          {
            if (v59 ^ 5 | v60)
            {
              v165 = &type metadata for FitnessPlusSampleContentCardFactory;
              v166 = &off_100866988;
            }

            else
            {
              v165 = &type metadata for FitnessPlusCardFactory;
              v166 = &off_10084CFA8;
              v162 = swift_allocObject();
              sub_1003E2BAC(v14 + v132, v162 + 16);
            }

            goto LABEL_118;
          }

          if (!(v59 ^ 7 | v60))
          {
            v103 = *v133;
            v104 = v133[1];
            v165 = &type metadata for CatalogTipCardFactory;
            v166 = &off_1008653F8;
            v162 = v103;
            v163 = v104;

            goto LABEL_115;
          }

          if (!(v59 ^ 8 | v60))
          {
            goto LABEL_85;
          }

          v79 = *(v14 + v134);
          started = type metadata accessor for QuickStartWorkoutCardFactory();
          v81 = &off_100852980;
        }

        else
        {
          if (v59 <= 1)
          {
            if (v59 | v60)
            {
              v105 = *(v14 + v129);
              v166 = &off_1008647E8;
              v165 = &type metadata for LoadCardFactory;
              v162 = v105;
              v106 = v105;
            }

            else
            {
              v66 = *v128;
              v67 = *(v128 + 1);
              v68 = *(v128 + 2);
              v166 = &off_1008560A8;
              v162 = v66;
              v163 = v67;
              v69 = &type metadata for ActivityRingsCardFactory;
LABEL_83:
              v164 = v68;
              v165 = v69;
              v70 = v66;
              v71 = v67;
              v72 = v68;
            }

            goto LABEL_118;
          }

          if (!(v59 ^ 2 | v60))
          {
            v97 = v130;
            v98 = v130[1];
            v157 = *v130;
            v158 = v98;
            v99 = v130[3];
            v159 = v130[2];
            v160 = v99;
            v165 = &type metadata for HistoryCardFactory;
            v166 = &off_100852888;
            v100 = swift_allocObject();
            v162 = v100;
            v101 = v97[1];
            v100[1] = *v97;
            v100[2] = v101;
            v102 = v97[3];
            v100[3] = v97[2];
            v100[4] = v102;
            sub_1003E2C08(&v157, v155);
            goto LABEL_118;
          }

          if (v59 ^ 3 | v60)
          {
            goto LABEL_91;
          }

          v79 = *(v14 + v131);
          started = type metadata accessor for AwardsCardFactory();
          v81 = &off_100861AC8;
        }

        v165 = started;
        v166 = v81;
        v162 = v79;
LABEL_115:

        goto LABEL_118;
      }

      if (!v61)
      {
        v66 = *v139;
        v67 = *(v139 + 1);
        v68 = *(v139 + 2);
        v166 = &off_1008575E0;
        v162 = v66;
        v163 = v67;
        v69 = &type metadata for MetricsCardFactory;
        goto LABEL_83;
      }

LABEL_91:
      LODWORD(v145) = v61;
      v82 = *v140;
      v144 = *(v140 + 1);
      v83 = v144;
      v84 = *(v140 + 2);
      v85 = *(v140 + 3);
      v87 = *(v140 + 4);
      v86 = *(v140 + 5);
      v88 = *(v140 + 6);
      v165 = &type metadata for FriendCardFactory;
      v166 = &off_10085CD48;
      v89 = swift_allocObject();
      v162 = v89;
      v89[2] = v82;
      v89[3] = v83;
      v61 = v145;
      v89[4] = v84;
      v89[5] = v85;
      v89[6] = v87;
      v89[7] = v86;
      v89[8] = v88;
      v90 = v82;

      v91 = v84;
      v92 = v85;
      v93 = v87;
      v94 = v141;
      v95 = v86;
      v14 = v94;
      v96 = v88;
LABEL_118:
      v107 = v165;
      v108 = v166;
      sub_1000066AC(&v162, v165);
      v156 = 0;
      memset(v155, 0, sizeof(v155));
      v109 = v14;
      v110 = *(v148 + v14);
      v6 = v151;
      v14 = v152;
      (v108[2])(&v157, v151, v152, v61, v154, v155, v110, v107, v108);
      sub_10000EA04(v155, &qword_1008DCC60);
      if (!*(&v158 + 1))
      {

        sub_10000EA04(&v157, &qword_1008DCC60);
        sub_100005A40(&v162);
        sub_10001D4F8(v6, v14, v61);
        LODWORD(v2) = v142;
        v56 = v149;
        v14 = v109;
        v6 = v147;
LABEL_59:
        ++v58;
        v57 += 24;
        if (v6 == v58)
        {
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    sub_100006260(&v157, v167);
    sub_100005A40(&v162);
    sub_100140278(&qword_1008DDE98);
    inited = swift_initStackObject();
    *(inited + 16) = v137;
    sub_100007C5C(v167, inited + 32);
    *&v157 = v150;
    sub_10019EDF8(inited);
    v112 = v157;
    v113 = v149;
    LODWORD(v2) = swift_isUniquelyReferenced_nonNull_native();
    *&v157 = v113;
    v114 = sub_1004CD4B0(v146);
    v116 = *(v113 + 16);
    v117 = (v115 & 1) == 0;
    v118 = __OFADD__(v116, v117);
    v119 = v116 + v117;
    if (v118)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v120 = v115;
    v14 = v109;
    if (*(v113 + 24) >= v119)
    {
      v122 = v6;
      if ((v2 & 1) == 0)
      {
        v125 = v114;
        sub_10049294C();
        v114 = v125;
      }

LABEL_126:
      LODWORD(v2) = v142;
      v6 = v147;
      v56 = v157;
      if (v120)
      {
        *(*(v157 + 56) + 8 * v114) = v112;
      }

      else
      {
        *(v157 + 8 * (v114 >> 6) + 64) |= 1 << v114;
        *(v56[6] + v114) = v146;
        *(v56[7] + 8 * v114) = v112;
        v123 = v56[2];
        v118 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v118)
        {
          __break(1u);
          goto LABEL_139;
        }

        v56[2] = v124;
      }

      v55 = v136;
      v54 = v58 + 1;
      sub_100005A40(v167);
      sub_10001D4F8(v122, v152, v61);
      if (v135 != v58)
      {
        continue;
      }

      goto LABEL_133;
    }

    break;
  }

  sub_100488838(v119, v2);
  v114 = sub_1004CD4B0(v146);
  if ((v120 & 1) == (v121 & 1))
  {
    v122 = v6;
    goto LABEL_126;
  }

LABEL_139:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003DFD90()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();

    v3 = sub_10049AB14(v2);

    v4 = sub_10019F85C(v3);

    v5 = sub_100070098(v4);

    if (v5[2])
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v1;
      *(v6 + 24) = v5;
      v7 = v1;
      sub_100074864(sub_100074028, v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003DFEA8(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1000066AC(a1, v11);
  (*(v12 + 8))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  sub_1000066AC(a2, v13);
  (*(v14 + 8))(v13, v14);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1003E0038(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1000066AC(a1, v11);
  (*(v12 + 8))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  sub_1000066AC(a2, v13);
  (*(v14 + 8))(v13, v14);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1003E01B8(uint64_t a1, uint64_t a2, int a3)
{
  v26 = a3;
  v25 = a2;
  ObjectType = swift_getObjectType();
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008EBF18);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v17 = *(v16 + 56);
  *&v15[v17] = sub_1003E0624();
  v27 = *(v3 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C5C(a1, v36);
  sub_10001B104(v15, v12, &qword_1008EBF18);
  v19 = (*(v10 + 80) + 73) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  sub_100006260(v36, v20 + 24);
  *(v20 + 64) = v25;
  *(v20 + 72) = v26 & 1;
  sub_100015E80(v12, v20 + v19, &qword_1008EBF18);
  *(v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1003E2D94;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100856E68;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  v23 = v29;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v33 + 8))(v23, v22);
  (*(v31 + 8))(v8, v32);
  sub_10000EA04(v15, &qword_1008EBF18);
}

uint64_t sub_1003E0624()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v10, "addCardTest", "", v9, 2u);
  }

  (*(v1 + 16))(v3, v6, v0);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v11 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v1 + 8))(v6, v0);
  return v11;
}

void sub_1003E0820(uint64_t a1, void *a2, unint64_t a3, int a4, uint64_t a5)
{
  v9 = sub_100140278(&qword_1008EBF18);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v79 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v86 = a4;
    v84 = v10;
    v85 = v11;
    v83 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context;
    v16 = *(*(Strong + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    static Published.subscript.getter();

    v19 = v94[0];
    __chkstk_darwin(v18);
    *(&v79 - 2) = a2;
    v20 = sub_100321E00(sub_10025728C, (&v79 - 4), v19);

    if (v20)
    {
      v21 = static os_log_type_t.default.getter();
      v22 = HKLogActivity;
      sub_100007C5C(a2, v94);
      if (os_log_type_enabled(v22, v21))
      {
        v23 = v22;
        v24 = a3;
        v25 = swift_slowAlloc();
        *&v89 = swift_slowAlloc();
        *v25 = 136315650;
        v26 = _typeName(_:qualified:)();
        v28 = sub_10000AFDC(v26, v27, &v89);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        v29 = v95;
        v30 = v96;
        sub_1000066AC(v94, v95);
        v31 = (*(v30 + 40))(v29, v30);
        v33 = v32;
        sub_100005A40(v94);
        v34 = sub_10000AFDC(v31, v33, &v89);

        *(v25 + 14) = v34;
        *(v25 + 22) = 2080;
        *&v91 = v24;
        BYTE8(v91) = v86 & 1;
        sub_100140278(&qword_1008DECE8);
        v35 = Optional.description.getter();
        v37 = sub_10000AFDC(v35, v36, &v89);

        *(v25 + 24) = v37;
        _os_log_impl(&_mh_execute_header, v23, v21, "%s Attempted to insert %s at index %s however we already have that card in our summary.", v25, 0x20u);
        swift_arrayDestroy();

        return;
      }
    }

    else
    {
      v80 = v13;
      v79 = a5;
      v81 = a3;
      v38 = a2[3];
      v39 = a2[4];
      sub_1000066AC(a2, v38);
      v40 = (*(v39 + 16))(v38, v39);
      v42 = v41;
      v44 = v43;
      sub_100078198(v40, v41, v43, &v91);
      sub_10001D4F8(v40, v42, v44);
      v45 = v92;
      v46 = v93;
      v82 = sub_1000066AC(&v91, v92);
      v48 = a2[3];
      v47 = a2[4];
      sub_1000066AC(a2, v48);
      v49 = (*(v47 + 16))(v48, v47);
      v51 = v50;
      v53 = v52;
      v55 = a2[3];
      v54 = a2[4];
      sub_1000066AC(a2, v55);
      v56 = (*(v54 + 24))(v55, v54);
      v88 = 0;
      memset(v87, 0, sizeof(v87));
      (*(v46 + 8))(&v89, v49, v51, v53, v56 & 1, v87, v15[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode], v45, v46);
      sub_10001D4F8(v49, v51, v53);
      sub_10000EA04(v87, &qword_1008DCC60);
      if (!v90)
      {

        sub_10000EA04(&v89, &qword_1008DCC60);
        v78 = &v91;
        goto LABEL_15;
      }

      sub_100006260(&v89, v94);
      sub_100005A40(&v91);
      v57 = v81;
      v58 = v80;
      if (v86)
      {
        v59 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
        swift_beginAccess();
        v57 = *(*&v15[v59] + 16);
      }

      sub_100007C5C(v94, &v91);
      v60 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
      swift_beginAccess();
      v61 = *(*&v15[v60] + 16);
      swift_beginAccess();
      if ((v57 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      if (v57 >= v61)
      {
        v57 = v61;
      }

      sub_100006260(&v91, &v89);
      sub_1003E2AD8(v57, v57, &v89);
      swift_endAccess();
      v62 = v83;
      v63 = *(*&v15[v83] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);

      sub_100154A0C(v64);

      v65 = *(*&v15[v62] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
      v66 = v95;
      v67 = v96;
      sub_1000066AC(v94, v95);
      v68 = *(v67 + 16);
      v69 = v65;
      v70 = v68(v66, v67);
      v72 = v71;
      v74 = v73;
      sub_1001567F0(v70, v71, v73);
      sub_10001D4F8(v70, v72, v74);

      sub_10001B104(v79, v58, &qword_1008EBF18);
      v75 = (*(v84 + 80) + 24) & ~*(v84 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v15;
      sub_100015E80(v58, v76 + v75, &qword_1008EBF18);
      v77 = v15;
      sub_100074864(sub_1003E2E3C, v76);
    }

    v78 = v94;
LABEL_15:
    sub_100005A40(v78);
  }
}

uint64_t sub_1003E0F8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&qword_1008EBF18);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_100140278(&unk_1008EE810);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10001B104(a2, v8, &qword_1008EBF18);

    v13 = type metadata accessor for OSSignposter();
    v14 = *(v13 - 8);
    (*(v14 + 32))(v11, v8, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    sub_10001B104(a2, v5, &qword_1008EBF18);
    sub_10006B4C0(v11, *&v5[*(v3 + 48)]);

    swift_unknownObjectRelease();
    sub_10000EA04(v11, &unk_1008EE810);
    return (*(v14 + 8))(v5, v13);
  }

  return result;
}

uint64_t sub_1003E11C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C5C(a1, v20);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_100006260(v20, v12 + 24);
  *(v12 + 64) = ObjectType;
  aBlock[4] = sub_1003E2EAC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100856EE0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

void sub_1003E1504(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v47[1] = a3;
    v48 = v6;
    v15 = __chkstk_darwin(Strong);
    v47[-2] = a2;
    v17 = *(v16 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
    *v12 = v17;
    (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9, v15);
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v12, v9);
    if (v17)
    {
      v19 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
      swift_beginAccess();
      v20 = *&v14[v19];

      v21 = sub_10047CE14(sub_1003E2EBC, &v47[-4], v20);
      v23 = v22;

      if (v23)
      {
        v24 = static os_log_type_t.default.getter();
        v25 = HKLogActivity;
        sub_100007C5C(a2, &v50);
        if (os_log_type_enabled(v25, v24))
        {
          v26 = v25;
          v27 = swift_slowAlloc();
          v49[0] = swift_slowAlloc();
          *v27 = 136315394;
          v28 = _typeName(_:qualified:)();
          v30 = sub_10000AFDC(v28, v29, v49);

          *(v27 + 4) = v30;
          *(v27 + 12) = 2080;
          v31 = *(&v51 + 1);
          v32 = v52;
          sub_1000066AC(&v50, *(&v51 + 1));
          (*(v32 + 8))(v31, v32);
          sub_100026988(&qword_1008EE840, 255, &type metadata accessor for UUID);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = v34;
          (*(v48 + 8))(v8, v5);
          sub_100005A40(&v50);
          v36 = sub_10000AFDC(v33, v35, v49);

          *(v27 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v26, v24, "%s Unable to remove card with uuid: %s", v27, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100005A40(&v50);
        }
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        sub_100007C5C(a2, v49);
        sub_100636E50(1, &v50, v49);
        sub_10000EA04(v49, &qword_1008DCC60);
        sub_10000EA04(&v50, &qword_1008DCC60);
        v37 = *(*&v14[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);
        v38 = a2[3];
        v39 = a2[4];
        sub_1000066AC(a2, v38);
        v40 = *(v39 + 16);
        v41 = v37;
        v42 = v40(v38, v39);
        v44 = v43;
        v46 = v45;
        sub_1001564EC(v42, v43, v45);
        sub_10001D4F8(v42, v44, v46);

        sub_1003E1A20(v21);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003E1A20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1003E2EC4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100856F30;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1003E1D34(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    sub_1004D9AD8(a2, v9);
    sub_100005A40(v9);
    swift_endAccess();
    v5 = *(*&v4[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);

    sub_100154A0C(v6);

    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_100074864(sub_1003E2ECC, v7);
  }

  return result;
}

void sub_1003E1E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v45[1] = a4;
    v46 = v7;
    v17 = a3;
    v47 = v8;
    v18 = __chkstk_darwin(Strong);
    v45[-2] = a2;
    v20 = *(v19 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
    *v14 = v20;
    (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11, v18);
    v21 = v20;
    LOBYTE(v20) = _dispatchPreconditionTest(_:)();
    (*(v12 + 8))(v14, v11);
    if (v20)
    {
      v22 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
      swift_beginAccess();
      v23 = *&v16[v22];

      v24 = sub_10047CE14(sub_1003E40D0, &v45[-4], v23);
      v26 = v25;

      if (v26)
      {
        v27 = static os_log_type_t.default.getter();
        v28 = HKLogActivity;
        sub_100007C5C(a2, v49);
        if (os_log_type_enabled(v28, v27))
        {
          v29 = v28;
          v30 = swift_slowAlloc();
          v48[0] = swift_slowAlloc();
          *v30 = 136315394;
          v31 = _typeName(_:qualified:)();
          v33 = sub_10000AFDC(v31, v32, v48);

          *(v30 + 4) = v33;
          *(v30 + 12) = 2080;
          v34 = v50;
          v35 = v51;
          sub_1000066AC(v49, v50);
          (*(v35 + 8))(v34, v35);
          sub_100026988(&qword_1008EE840, 255, &type metadata accessor for UUID);
          v36 = v46;
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v38;
          (*(v47 + 8))(v10, v36);
          sub_100005A40(v49);
          v40 = sub_10000AFDC(v37, v39, v48);

          *(v30 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v29, v27, "%s Unable to remove card with uuid: %s", v30, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100005A40(v49);
        }

        return;
      }

      sub_100007C5C(v17, v49);
      sub_100007C5C(a2, v48);
      sub_100636E50(2, v49, v48);
      sub_10000EA04(v48, &qword_1008DCC60);
      sub_10000EA04(v49, &qword_1008DCC60);
      swift_beginAccess();
      sub_1004D9AD8(v24, v49);
      sub_100005A40(v49);
      if (*(*&v16[v22] + 16) >= v24)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          sub_100007C5C(v17, v49);
          sub_1003E2AD8(v24, v24, v49);
          swift_endAccess();
          v41 = *(*&v16[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);

          sub_100154A0C(v42);

          v43 = swift_allocObject();
          *(v43 + 16) = v16;
          v44 = v16;
          sub_100074864(sub_1003E40CC, v43);

          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1003E23F4()
{
  v0 = sub_100140278(&unk_1008EE810);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = type metadata accessor for OSSignposter();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_10006B4C0(v2, 0);
    swift_unknownObjectRelease();
    return sub_10000EA04(v2, &unk_1008EE810);
  }

  return result;
}

uint64_t sub_1003E24E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1003E2D8C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100856E18;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_1003E2804(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(a2 + 16);
    if (v9)
    {
      v11 = *(v4 + 16);
      v10 = v4 + 16;
      v25 = v11;
      v26 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_cardForId;
      v12 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *(v10 + 56);
      v14 = (v10 - 8);
      v15 = _swiftEmptyArrayStorage;
      v24 = v10;
      v11(v6, v12, v3);
      while (1)
      {
        v16 = *&v8[v26];
        if (!*(v16 + 16))
        {
          goto LABEL_5;
        }

        v17 = sub_10005F9DC(v6);
        if ((v18 & 1) == 0)
        {
          break;
        }

        sub_100007C5C(*(v16 + 56) + 40 * v17, v27);
        (*v14)(v6, v3);

        sub_100006260(v27, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1001A1E58(0, v15[2] + 1, 1, v15);
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          v15 = sub_1001A1E58((v19 > 1), v20 + 1, 1, v15);
        }

        v15[2] = v20 + 1;
        sub_100006260(v28, &v15[5 * v20 + 4]);
LABEL_6:
        v12 += v13;
        if (!--v9)
        {
          goto LABEL_16;
        }

        v25(v6, v12, v3);
      }

LABEL_5:
      (*v14)(v6, v3);
      goto LABEL_6;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_16:
    v21 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards;
    swift_beginAccess();
    *&v8[v21] = v15;

    v22 = *(*&v8[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider);

    sub_100154A0C(v23);

    sub_100074864(0, 0);
  }
}

unint64_t sub_1003E2AD8(unint64_t result, uint64_t a2, uint64_t a3)
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

    v5 = sub_1001A1E58(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1005F08BC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1003E2C64(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1001A1BE0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1005F0CAC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1003E2D24()
{
  result = qword_1008EE6C0;
  if (!qword_1008EE6C0)
  {
    sub_1000059F8(255, &qword_1008E53D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE6C0);
  }

  return result;
}

void sub_1003E2D94()
{
  v1 = *(sub_100140278(&qword_1008EBF18) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = v0 + ((*(v1 + 80) + 73) & ~*(v1 + 80));

  sub_1003E0820(v2, (v0 + 24), v3, v4, v5);
}

uint64_t sub_1003E2E3C()
{
  v1 = *(sub_100140278(&qword_1008EBF18) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1003E0F8C(v2, v3);
}

uint64_t sub_1003E2EF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_10002DF70(result, 1);

  return sub_1005F0E24(v6, v5, 1, v3);
}

char *sub_1003E2FE4(char *a1)
{
  v2 = v1;
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v98 = &v98 - v5;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v111 = *(v6 - 1);
  v112 = v6;
  __chkstk_darwin(v6);
  v8 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v110 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_internalQueue;
  v109 = sub_1000059F8(0, &qword_1008E3FD0);
  v108 = "tor] Waiting for user profile";
  static DispatchQoS.userInitiated.getter();
  *&v114 = _swiftEmptyArrayStorage;
  sub_100026988(&qword_1008EA878, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100140278(&qword_1008EA880);
  sub_10014A6B0(&qword_1008EA888, &qword_1008EA880);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v111[13](v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v112);
  *&v110[v1] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_notificationCenterObservers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_activeCards] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_cardForId] = &_swiftEmptyDictionarySingleton;
  v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_editMode] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_10029D76C(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_fitnessPlusDataProviderCancellables] = v11;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsSetupStateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsHighlightStateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] = a1;
  v12 = &v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_state];
  *v12 = 0;
  v12[8] = 1;
  v110 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager];
  v112 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_highlightDataProvider];
  v13 = v112;
  v14 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_achievementLocalizationProvider];
  v15 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_badgeImageFactory];
  v16 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext];
  v17 = *&v16[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider];
  v18 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fiuiFormattingManager];
  v111 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendsSetupCoordinator];
  v19 = v111;
  v20 = &v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_friendsCardsFactory];
  *v20 = v110;
  *(v20 + 1) = v13;
  *(v20 + 2) = v14;
  *(v20 + 3) = v15;
  *(v20 + 4) = v17;
  *(v20 + 5) = v18;
  v21 = v17;
  *(v20 + 6) = v19;
  v108 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_metricsDataProvider];
  v109 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_healthStore];
  v22 = v109;
  v23 = &v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_metricsCardFactory];
  *v23 = v108;
  v23[1] = v18;
  v23[2] = v22;
  v106 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_activityDataProvider];
  v107 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_pauseRingsCoordinator];
  v24 = v107;
  v25 = &v1[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_ringsCardFactory];
  *v25 = v106;
  *(v25 + 1) = v24;
  *(v25 + 2) = v18;
  v26 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_awardsDataProvider];
  v101 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_historyDataProvider];
  v27 = v101;
  v102 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutFormattingManager];
  v28 = v102;
  v103 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutImageProvider];
  v29 = v103;
  v104 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_mindfulnessSessionFormattingManager];
  v30 = v104;
  v105 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_stackFormattingManager];
  v31 = v105;
  v32 = &v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_historyCardFactory];
  *v32 = v26;
  *(v32 + 1) = v27;
  *(v32 + 2) = v28;
  *(v32 + 3) = v29;
  *(v32 + 4) = v30;
  *(v32 + 5) = v31;
  *(v32 + 6) = v21;
  *(v32 + 7) = v16;
  v33 = v21;
  v99 = v16;
  *(&v115 + 1) = type metadata accessor for AAUIAwardsDataProvider();
  *&v116 = &protocol witness table for AAUIAwardsDataProvider;
  *&v114 = v26;
  type metadata accessor for AwardsCardFactory();
  v34 = swift_allocObject();
  *(v34 + 80) = 0;
  *(v34 + 88) = 0;
  sub_100140278(&qword_1008E8648);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 96) = v35;
  *(v34 + 104) = 2;
  *(v34 + 112) = 0;
  sub_100006260(&v114, v34 + 16);
  *(v34 + 56) = v14;
  *(v34 + 64) = v15;
  *&v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_awardCardFactory] = v34;
  v36 = *&a1[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_balanceDataProvider];
  *&v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_loadCardFactory] = v36;
  *(v34 + 72) = v18;
  v100 = OBJC_IVAR___CHFitnessAppContext_dependencies;
  v37 = v18;
  v38 = v14;
  v39 = v15;
  v40 = v26;
  v41 = v33;
  v42 = v37;
  v43 = v40;
  v44 = v38;
  v45 = v39;
  v46 = v41;
  v47 = a1;
  v48 = v110;

  v49 = v111;
  v50 = v108;
  v51 = v109;
  v52 = v106;
  v53 = v107;
  v54 = v101;
  v55 = v102;

  v56 = v104;
  v57 = v105;
  v58 = v99;
  v59 = v99;
  v60 = v36;

  sub_100140278(&qword_1008F5530);
  Dependencies.resolve<A>(failureHandler:)();

  v61 = v100;
  v62 = v58;
  v63 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessPlusCardDataProvider];

  sub_100140278(&unk_1008F13B0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100007C5C(v119, v117);
  *&v114 = v63;
  v64 = &v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_fitnessPlusCardFactory];
  v65 = v115;
  *v64 = v114;
  *(v64 + 1) = v65;
  *(v64 + 10) = v118;
  *(v64 + 4) = v117[1];
  v66 = v117[0];
  *(v64 + 2) = v116;
  *(v64 + 3) = v66;
  v67 = *&v62[v61];
  v68 = &v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_catalogTipCardFactory];
  *v68 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_catalogTipDataProvider];
  *(v68 + 1) = v67;
  v69 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsDataProvider];
  v70 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager];
  v71 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsFormattingManager];
  v73 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName];
  v74 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserFirstName + 8];
  v75 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_wheelchairUseCache];
  LOBYTE(v114) = v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics + 16];
  v72 = v114;
  v76 = &v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_trendsCardFactory];
  v77 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsUserCharacteristics];
  *v76 = v69;
  *(v76 + 1) = v70;
  *(v76 + 2) = v71;
  *(v76 + 24) = v77;
  v76[40] = v72;
  *(v76 + 6) = v73;
  *(v76 + 7) = v74;
  *(v76 + 8) = v75;
  v78 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_standardActivityItemsViewModel];
  v112 = *&v47[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_workoutVoiceAvailabilityProvider];
  type metadata accessor for QuickStartWorkoutCardFactory();
  swift_allocObject();
  v111 = v78;

  v79 = v69;
  v80 = v70;
  v81 = v71;
  v82 = v75;
  v83 = v112;

  v84 = sub_100317380(v78, v83);

  *&v2[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_quickStartWorkoutCardFactory] = v84;
  v85 = type metadata accessor for SummaryCoordinator();
  v113.receiver = v2;
  v113.super_class = v85;
  v86 = objc_msgSendSuper2(&v113, "init");
  v87 = OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context;
  *(*(*&v86[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_summaryUserProfileProvider) + OBJC_IVAR____TtC10FitnessApp26SummaryUserProfileProvider_delegate + 8) = &off_100860AA0;
  swift_unknownObjectWeakAssign();
  v88 = *(*&v86[v87] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_summaryUserProfileProvider);
  v89 = v86;
  v90 = v88;
  sub_1001B206C();

  v91 = *&v89[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_quickStartWorkoutCardFactory];
  *(v91 + OBJC_IVAR____TtC10FitnessApp28QuickStartWorkoutCardFactory_delegate + 8) = &off_100847380;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    v92 = type metadata accessor for TaskPriority();
    v93 = v98;
    (*(*(v92 - 8) + 56))(v98, 1, 1, v92);
    v94 = swift_allocObject();
    v94[2] = 0;
    v94[3] = 0;
    v94[4] = v91;
    sub_10026E198(0, 0, v93, &unk_1006EE0B8, v94);
  }

  v95 = *&v89[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_awardCardFactory];
  *(v95 + 80) = v89;
  *(v95 + 88) = &off_10084B658;
  v96 = v89;
  swift_unknownObjectRelease();

  sub_1005AB540();

  sub_100005A40(v119);
  return v96;
}

uint64_t sub_1003E3B2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_100315E7C();
}

uint64_t *sub_1003E3BF4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1003E3E10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003E3E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1003DD608(a1, v4, v5, v6);
}

uint64_t sub_1003E3F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1005E1894(a1, v4, v5, v6);
}

Swift::Int sub_1003E40D4()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 40);
  String.hash(into:)();
  String.hash(into:)();
  if (!v1)
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 56))
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 56))
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003E41C0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:

  return String.hash(into:)();
}

uint64_t sub_1003E42B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1003E42FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1003E4364()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (!v1)
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003E445C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1003E5E70(v7, v9) & 1;
}

unint64_t sub_1003E44CC()
{
  result = qword_1008EBF68;
  if (!qword_1008EBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EBF68);
  }

  return result;
}

uint64_t sub_1003E453C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_100140278(&qword_1008EBF88);
  __chkstk_darwin(v3 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008EBF90);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v31 = sub_100140278(&qword_1008EBF98);
  v29 = *(v31 - 8);
  v14 = v29;
  __chkstk_darwin(v31);
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  *v13 = static VerticalAlignment.top.getter();
  *(v13 + 1) = 0x4010000000000000;
  v13[16] = 0;
  v19 = sub_100140278(&qword_1008EBFA0);
  sub_1003E4C84(a1, &v13[*(v19 + 44)]);
  (*(v8 + 104))(v10, enum case for DynamicTypeSize.large(_:), v7);
  sub_10014A6B0(&qword_1008EBFA8, &qword_1008EBF90);
  View.dynamicTypeSize(_:)();
  (*(v8 + 8))(v10, v7);
  sub_10000EA04(v13, &qword_1008EBF90);
  v20 = v32;
  sub_1003E4934();
  v21 = *(v14 + 16);
  v23 = v30;
  v22 = v31;
  v21(v30, v18, v31);
  v24 = v33;
  sub_10001B104(v20, v33, &qword_1008EBF88);
  v25 = v34;
  v21(v34, v23, v22);
  v26 = sub_100140278(&qword_1008EBFB0);
  sub_10001B104(v24, &v25[*(v26 + 48)], &qword_1008EBF88);
  sub_10000EA04(v20, &qword_1008EBF88);
  v27 = *(v29 + 8);
  v27(v18, v22);
  sub_10000EA04(v24, &qword_1008EBF88);
  return (v27)(v23, v22);
}

uint64_t sub_1003E4934()
{
  v1 = sub_100140278(&qword_1008DDBE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_100140278(&qword_1008EBFB8);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_100140278(&qword_1008EBFC0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (*(v0 + 40))
  {
    v11 = *(v0 + 32);
    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0x4000000000000000;
    v10[16] = 0;
    v12 = sub_100140278(&qword_1008EBFD0);
    sub_1003E5088(v0, v11, &v10[*(v12 + 44)]);
    sub_10001B104(v10, v7, &qword_1008EBFC0);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008EBFC8, &qword_1008EBFC0);
    v14 = &type metadata for Text;
    v15 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v10, &qword_1008EBFC0);
  }

  else
  {
    sub_1003E5714(v4);
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008EBFC8, &qword_1008EBFC0);
    v14 = &type metadata for Text;
    v15 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1003E4C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100140278(&qword_1008EBFF0);
  __chkstk_darwin(v3);
  v5 = &v43[-v4];
  v6 = sub_100140278(&qword_1008EBFF8);
  __chkstk_darwin(v6 - 8);
  v45 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v43[-v9];
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v44 = *(a1 + 80);

  v13 = Image.init(systemName:)();
  v14 = (v5 + *(sub_100140278(&qword_1008E9840) + 36));
  v15 = *(sub_100140278(&qword_1008E97F8) + 28);
  v16 = enum case for Image.Scale.small(_:);
  v17 = type metadata accessor for Image.Scale();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v5 = v13;
  v18 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v20 = (v5 + *(sub_100140278(&qword_1008EC000) + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  *(v5 + *(v3 + 36)) = static HierarchicalShapeStyle.tertiary.getter();
  sub_1003E5C90();
  View.accessibilityHidden(_:)();
  sub_10000EA04(v5, &qword_1008EBFF0);
  v47 = v11;
  v48 = v12;
  sub_10000FCBC();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(KeyPath) = v24;
  static Font.caption.getter();
  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v14) = v28;

  sub_10004642C(v21, v23, KeyPath & 1);

  LODWORD(v47) = static HierarchicalShapeStyle.tertiary.getter();
  v29 = Text.foregroundStyle<A>(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10004642C(v25, v27, v14 & 1);

  if (v44)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  v37 = swift_getKeyPath();
  v38 = v45;
  sub_1003E5E00(v10, v45);
  v39 = v46;
  sub_1003E5E00(v38, v46);
  v40 = v39 + *(sub_100140278(&qword_1008EC018) + 48);
  *v40 = v29;
  *(v40 + 8) = v31;
  v41 = v33 & 1;
  *(v40 + 16) = v41;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = v36;
  *(v40 + 48) = 0;
  sub_10006965C(v29, v31, v41);

  sub_10000EA04(v10, &qword_1008EBFF8);
  sub_10004642C(v29, v31, v41);

  return sub_10000EA04(v38, &qword_1008EBFF8);
}

uint64_t sub_1003E5088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_100140278(&qword_1008DDBE0);
  v24 = *(v4 - 8);
  v5 = v24;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_100140278(&qword_1008EBFD8);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  sub_1003E52E8(*(a1 + 48), *(a1 + 56), &v23 - v15);
  sub_1003E5714(v10);
  sub_10001B104(v16, v13, &qword_1008EBFD8);
  v17 = *(v5 + 16);
  v18 = v4;
  v17(v7, v10, v4);
  v19 = v26;
  sub_10001B104(v13, v26, &qword_1008EBFD8);
  v20 = sub_100140278(&qword_1008EBFE0);
  v17((v19 + *(v20 + 48)), v7, v18);
  v21 = *(v24 + 8);
  v21(v10, v18);
  sub_10000EA04(v16, &qword_1008EBFD8);
  v21(v7, v18);
  return sub_10000EA04(v13, &qword_1008EBFD8);
}

uint64_t sub_1003E52E8@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a1;
  v34 = a3;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E0AD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_100140278(&qword_1008EBFE8);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v29 = sub_100140278(&qword_1008EBFD8);
  __chkstk_darwin(v29);
  v28 = &v28 - v14;

  Image.init(systemName:)();
  v15 = enum case for Image.TemplateRenderingMode.original(_:);
  v16 = type metadata accessor for Image.TemplateRenderingMode();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v9, v15, v16);
  (*(v17 + 56))(v9, 0, 1, v16);
  v18 = Image.renderingMode(_:)();

  sub_10000EA04(v9, &qword_1008E0AD8);
  v19 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v37 = v18;
  v38 = KeyPath;
  v39 = v19;
  (*(v4 + 104))(v6, enum case for DynamicTypeSize.large(_:), v3);
  v21 = sub_100140278(&qword_1008E2BE8);
  v22 = sub_1002397DC();
  View.dynamicTypeSize(_:)();
  (*(v4 + 8))(v6, v3);

  v23 = v33;
  if (v32)
  {
    v24 = v32;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v37 = v23;
  v38 = v24;

  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  v25 = v28;
  v26 = v30;
  View.accessibilityLabel<A>(_:)();

  (*(v31 + 8))(v13, v26);
  ModifiedContent<>.accessibilityHidden(_:)();
  return sub_10000EA04(v25, &qword_1008EBFD8);
}

uint64_t sub_1003E5714@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for DynamicTypeSize();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&qword_1008DC448);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v45 = v7;
  v46 = v8;
  sub_10000FCBC();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.title.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_10004642C(v9, v11, v13 & 1);

  v19 = enum case for Font.Design.rounded(_:);
  v20 = type metadata accessor for Font.Design();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v6, v19, v20);
  (*(v21 + 56))(v6, 0, 1, v20);
  v22 = Text.fontDesign(_:)();
  v24 = v23;
  LOBYTE(v21) = v25;
  sub_10004642C(v14, v16, v18 & 1);

  sub_10000EA04(v6, &qword_1008DC448);
  static Font.Weight.medium.getter();
  v26 = Text.fontWeight(_:)();
  v28 = v27;
  v30 = v29;
  sub_10004642C(v22, v24, v21 & 1);

  LODWORD(v45) = static HierarchicalShapeStyle.secondary.getter();
  v31 = Text.foregroundStyle<A>(_:)();
  v33 = v32;
  LOBYTE(v24) = v34;
  v36 = v35;
  sub_10004642C(v26, v28, v30 & 1);

  v45 = v31;
  v46 = v33;
  v47 = v24 & 1;
  v48 = v36;
  v38 = v41;
  v37 = v42;
  v39 = v43;
  (*(v42 + 104))(v41, enum case for DynamicTypeSize.large(_:), v43);
  View.dynamicTypeSize(_:)();
  (*(v37 + 8))(v38, v39);
  sub_10004642C(v31, v33, v24 & 1);
}

uint64_t sub_1003E5AB4()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EBF70);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v8;
  v12[4] = *(v0 + 64);
  v13 = *(v0 + 80);
  v9 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v10 = sub_100140278(&qword_1008EBF78);
  sub_1003E453C(v12, &v7[*(v10 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10014A6B0(&qword_1008EBF80, &qword_1008EBF70);
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v7, &qword_1008EBF70);
}

unint64_t sub_1003E5C90()
{
  result = qword_1008EC008;
  if (!qword_1008EC008)
  {
    sub_100141EEC(&qword_1008EBFF0);
    sub_1003E5D48();
    sub_10014A6B0(&qword_1008DD728, &qword_1008DD730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC008);
  }

  return result;
}

unint64_t sub_1003E5D48()
{
  result = qword_1008EC010;
  if (!qword_1008EC010)
  {
    sub_100141EEC(&qword_1008EC000);
    sub_100341980();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC010);
  }

  return result;
}

uint64_t sub_1003E5E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008EBFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003E5E70(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8)
  {
    if (v9 && (a1[6] == a2[6] && v8 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_23:
  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1003E5F98()
{
  sub_1000059F8(0, &qword_1008F73C0);
  v0 = UIFontDescriptorSystemDesignRounded;
  v1 = static UIFont.systemFont(ofSize:weight:design:)();

  qword_1008EC020 = v1;
}

id sub_1003E601C()
{
  result = sub_1003E603C();
  qword_1008EC028 = result;
  return result;
}

id sub_1003E603C()
{
  sub_100140278(&qword_1008EC090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100140278(&qword_1008EC098);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  sub_100140278(&qword_1008EC0A0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1006D1F70;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(v2 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v4 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(v2 + 40) = 38;
  *(v2 + 48) = v4;
  *(v2 + 56) = 1;
  v5 = UIFontDescriptorFeatureSettingsAttribute;
  v6 = v3;
  v7 = v4;
  v8 = sub_1004C9778(v2);
  swift_setDeallocating();
  sub_100140278(&qword_1008EC0A8);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  *(inited + 40) = v1;
  v9 = sub_1004C9D90(inited);
  swift_setDeallocating();
  sub_1003E7E44(inited + 32);
  if (qword_1008DAA38 != -1)
  {
    swift_once();
  }

  v10 = qword_1008EC020;
  v11 = [qword_1008EC020 fontDescriptor];
  sub_100376848(v9);

  type metadata accessor for AttributeName(0);
  sub_10005FB9C(&qword_1008DBA98, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 fontDescriptorByAddingAttributes:isa];

  [v10 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}