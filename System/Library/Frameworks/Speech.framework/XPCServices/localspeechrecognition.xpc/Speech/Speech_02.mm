Swift::Int sub_10002D928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    sub_10000ECEC(a3, a4);
    v8 = sub_10004739C();
    v22 = v8;
    sub_10004731C();
    while (1)
    {
      v9 = sub_10004734C();
      if (!v9)
      {

        return v8;
      }

      v20 = v9;
      sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
      swift_dynamicCast();
      a6(a5);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        sub_10002DFF0();
      }

      v8 = v22;
      result = sub_1000470CC(*(v22 + 40));
      v11 = v22 + 64;
      v12 = -1 << *(v22 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v22 + 64 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v22 + 48) + 8 * v15) = v21;
      *(*(v22 + 56) + 8 * v15) = v20;
      ++*(v22 + 16);
    }

    v16 = 0;
    v17 = (63 - v12) >> 6;
    while (++v14 != v17 || (v16 & 1) == 0)
    {
      v18 = v14 == v17;
      if (v14 == v17)
      {
        v14 = 0;
      }

      v16 |= v18;
      v19 = *(v11 + 8 * v14);
      if (v19 != -1)
      {
        v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10002DB48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000ECEC(&qword_10006FF38, &qword_10004D2E8);
  v44 = a2;
  v7 = sub_10004738C();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v42 = v3;
  v43 = v5;
  v8 = 0;
  v9 = v5;
  sub_100030FCC();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (v9[v8])
      {
        sub_100030F34();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_31;
    }

    v40 = *(v5 + 32);
    sub_100006E00();
    v3 = v42;
    if (v41 >= 64)
    {
      sub_1000312E8(v41);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v20 = v16 | (v8 << 6);
    v21 = (*(v5 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(v5 + 56) + 16 * v20);
    v25 = v24[1];
    v45 = *v24;
    if ((v44 & 1) == 0)
    {
    }

    v26 = v7[5];
    sub_10004745C();
    sub_100046EAC();
    v27 = sub_10004748C();
    sub_10000BEEC(v27);
    if (((v30 << v29) & ~v15[v28]) == 0)
    {
      break;
    }

    sub_10003127C();
LABEL_22:
    sub_100031234();
    *(v15 + v35) |= v36;
    v38 = (v7[6] + 16 * v37);
    *v38 = v22;
    v38[1] = v23;
    v39 = (v7[7] + 16 * v37);
    *v39 = v45;
    v39[1] = v25;
    ++v7[2];
    v5 = v43;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  sub_100031268();
  while (++v31 != v33 || (v32 & 1) == 0)
  {
    v34 = v31 == v33;
    if (v31 == v33)
    {
      v31 = 0;
    }

    v32 |= v34;
    if (v15[v31] != -1)
    {
      sub_100031254();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_10002DD84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000ECEC(&qword_10006FEC8, &qword_10004D278);
  result = sub_10004738C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v32 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      sub_10000373C(0, (v31 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v20;
      swift_unknownObjectRetain();
    }

    result = sub_1000470CC(*(v8 + 40));
    v23 = -1 << *(v8 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v8 + 48) + 8 * v26) = v20;
    *(*(v8 + 56) + 8 * v26) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v15 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_10002DFF0()
{
  sub_100031290();
  v3 = v0;
  v5 = v4;
  v6 = *v0;
  if (*(*v0 + 24) > v7)
  {
    v8 = *(*v0 + 24);
  }

  sub_10000ECEC(v1, v2);
  v9 = sub_10004738C();
  if (!*(v6 + 16))
  {

LABEL_31:
    *v3 = v9;
    sub_1000312AC();
    return;
  }

  v39 = v3;
  v10 = 0;
  sub_100030FCC();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v9 + 8;
  if ((v12 & v11) == 0)
  {
LABEL_6:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      ++v18;
      if (*(v6 + 8 * v10))
      {
        sub_100030F34();
        v13 = v20 & v19;
        goto LABEL_11;
      }
    }

    if (v5)
    {
      v37 = *(v6 + 32);
      sub_100006E00();
      if (v38 >= 64)
      {
        sub_1000312E8(v38);
      }

      else
      {
        *v6 = -1 << v38;
      }

      *(v6 + 16) = 0;
    }

    v3 = v39;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v21 = v17 | (v10 << 6);
    v22 = *(*(v6 + 48) + 8 * v21);
    v23 = *(*(v6 + 56) + 8 * v21);
    if ((v5 & 1) == 0)
    {
      v24 = v22;
      v25 = v23;
    }

    v26 = sub_1000470CC(v9[5]);
    sub_10000BEEC(v26);
    if (((v29 << v28) & ~v16[v27]) == 0)
    {
      break;
    }

    sub_10003127C();
LABEL_22:
    sub_100031234();
    *(v16 + v34) |= v35;
    *(v9[6] + 8 * v36) = v22;
    *(v9[7] + 8 * v36) = v23;
    ++v9[2];
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  sub_100031268();
  while (++v30 != v32 || (v31 & 1) == 0)
  {
    v33 = v30 == v32;
    if (v30 == v32)
    {
      v30 = 0;
    }

    v31 |= v33;
    if (v16[v30] != -1)
    {
      sub_100031254();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

BOOL sub_10002E1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046C3C();
  v5 = sub_100004E00(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002B2C();
  v12 = v11 - v10;
  v29 = v2;
  v13 = *v2;
  v14 = *(*v2 + 40);
  sub_1000041AC();
  sub_100030C98(v15, v16);
  v33 = a2;
  v17 = sub_100046D9C();
  v31 = v13;
  v32 = v13 + 56;
  v18 = ~(-1 << *(v13 + 32));
  while (1)
  {
    v19 = v17 & v18;
    v20 = (1 << (v17 & v18)) & *(v32 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v20)
    {
      v26 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v12, v33, v4);
      v34 = *v29;
      sub_10002F1F8(v12, v19, isUniquelyReferenced_nonNull_native);
      *v29 = v34;
      (*(v7 + 32))(a1, v33, v4);
      return v20 == 0;
    }

    v21 = *(v7 + 72) * v19;
    v22 = *(v7 + 16);
    v22(v12, *(v31 + 48) + v21, v4);
    sub_1000041AC();
    sub_100030C98(&qword_10006FF30, v23);
    v24 = sub_100046DBC();
    v25 = *(v7 + 8);
    v25(v12, v4);
    if (v24)
    {
      break;
    }

    v17 = v19 + 1;
  }

  v25(v33, v4);
  v22(a1, *(v31 + 48) + v21, v4);
  return v20 == 0;
}

BOOL sub_10002E450(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10004745C();
  sub_100046EAC();
  v9 = sub_10004748C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1000473EC() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_10002F484(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_10002E59C(void *a1, void *a2)
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

    v9 = sub_10004718C();

    if (v9)
    {

      sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_10004717C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10002E7C0(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_10002EF50(v17 + 1);
        }

        v18 = v8;
        sub_10002F174(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    v11 = sub_1000470CC(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        sub_10002F5EC(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1000470DC();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

Swift::Int sub_10002E7C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000ECEC(&qword_10006FEB0, &qword_10004D260);
    v2 = sub_10004720C();
    v15 = v2;
    sub_10004716C();
    while (1)
    {
      if (!sub_10004719C())
      {

        return v2;
      }

      sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10002EF50(v3 + 1);
      }

      v2 = v15;
      result = sub_1000470CC(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10002E99C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_100046C3C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000ECEC(&qword_10006FF18, &qword_10004D2D8);
  result = sub_1000471FC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_10000373C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_100030C98(&qword_10006F878, &type metadata accessor for Locale);
    result = sub_100046D9C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002ECF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ECEC(&qword_10006F130, &qword_10004CCC0);
  result = sub_1000471FC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_10000373C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_10004745C();
    sub_100046EAC();
    result = sub_10004748C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002EF50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ECEC(&qword_10006FEB0, &qword_10004D260);
  result = sub_1000471FC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_10000373C(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = sub_1000470CC(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10002F174(uint64_t a1, uint64_t a2)
{
  sub_1000470CC(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10004715C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10002F1F8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_100046C3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10002E99C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10002FC08(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_100030C98(&qword_10006F878, &type metadata accessor for Locale);
      v15 = sub_100046D9C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_100030C98(&qword_10006FF30, &type metadata accessor for Locale);
        v17 = sub_100046DBC();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_10002F750();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1000473FC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

Swift::Int sub_10002F484(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10002ECF4(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10002FF20(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_10004745C();
      sub_100046EAC();
      result = sub_10004748C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1000473EC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10002F960();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1000473FC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int sub_10002F5EC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10002EF50(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_100030154(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_1000470CC(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1000470DC();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_10002FAB8();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_1000473FC();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

void sub_10002F750()
{
  v1 = v0;
  v2 = sub_100046C3C();
  v3 = sub_100004E00(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B2C();
  v10 = v9 - v8;
  sub_10000ECEC(&qword_10006FF18, &qword_10004D2D8);
  v11 = *v0;
  v12 = sub_1000471EC();
  if (*(v11 + 16))
  {
    v29 = v1;
    v13 = *(v12 + 32);
    sub_100006E00();
    v16 = (v15 + 63) >> 6;
    if (v12 != v11 || v14 >= v11 + 56 + 8 * v16)
    {
      memmove(v14, (v11 + 56), 8 * v16);
    }

    v18 = 0;
    *(v12 + 16) = *(v11 + 16);
    v19 = *(v11 + 32);
    sub_100006E00();
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 56);
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v28 = *(v5 + 72) * (v24 | (v18 << 6));
      (*(v5 + 16))(v10, *(v11 + 48) + v28, v2);
      (*(v5 + 32))(*(v12 + 48) + v28, v10, v2);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v1 = v29;
        goto LABEL_21;
      }

      ++v25;
      if (*(v11 + 56 + 8 * v18))
      {
        sub_100030F34();
        v22 = v27 & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v12;
  }
}

void *sub_10002F960()
{
  v1 = v0;
  sub_10000ECEC(&qword_10006F130, &qword_10004CCC0);
  v2 = *v0;
  v3 = sub_1000471EC();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_10002FAB8()
{
  v1 = v0;
  sub_10000ECEC(&qword_10006FEB0, &qword_10004D260);
  v2 = *v0;
  v3 = sub_1000471EC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_10002FC08(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100046C3C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000ECEC(&qword_10006FF18, &qword_10004D2D8);
  v10 = sub_1000471FC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_100030C98(&qword_10006F878, &type metadata accessor for Locale);
        result = sub_100046D9C();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10002FF20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ECEC(&qword_10006F130, &qword_10004CCC0);
  result = sub_1000471FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_10004745C();

        sub_100046EAC();
        result = sub_10004748C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100030154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000ECEC(&qword_10006FEB0, &qword_10004D260);
  result = sub_1000471FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_1000470CC(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100030364(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_10004736C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_10004726C();
  *v1 = result;
  return result;
}

void sub_100030404(uint64_t a1, void *a2)
{
  isa = sub_100046FAC().super.isa;

  [a2 setTaskTypeFilter:isa];
}

uint64_t sub_100030478(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100046EFC();

  return v4;
}

void sub_1000304CC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_100046E4C();

  [a3 *a4];
}

id sub_100030538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100046E4C();

  v5 = [a3 isValid:v4];

  return v5;
}

void sub_100030594(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_100046B2C().super.isa;
  [a3 setUserProfileData:isa];
}

id sub_1000305EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_100046E4C();

  v7 = sub_100046E4C();

  v8 = [a5 isAdaptableToSpeechModelVersion:v6 locale:v7];

  return v8;
}

uint64_t sub_100030678(void *a1)
{
  v1 = [a1 taskTypeFilter];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046FBC();

  return v3;
}

uint64_t sub_1000306D8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_100046E5C();
  }

  return sub_1000041C4();
}

void sub_100030734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100046E4C();
  [a3 setLeftContextText:v4];
}

uint64_t sub_10003078C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10004736C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10000AD1C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100030994();
        for (i = 0; i != v7; ++i)
        {
          sub_10000ECEC(&qword_10006FE60, &qword_10004D248);
          v9 = sub_100030900(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100030900(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_10002CF8C(a3);
  sub_100026424(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10004725C();
  }

  *a1 = v7;
  return sub_10003098C;
}

unint64_t sub_100030994()
{
  result = qword_10006FE68;
  if (!qword_10006FE68)
  {
    sub_1000179D4(&qword_10006FE60, &qword_10004D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006FE68);
  }

  return result;
}

uint64_t sub_100030A00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100030A58(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    v5 = sub_100046C3C();
    v6 = a1;
    v7 = 1;
  }

  else
  {
    if (v3 >= v4)
    {
      __break(1u);
      return;
    }

    v10 = (*v1 + 16 * v3 + 32);
    v8 = *v10;
    v9 = v10[1];
    v1[1] = v3 + 1;
    v12 = v1[2];
    v11 = v1[3];
    v13[0] = v8;
    v13[1] = v9;

    v12(v13);

    v5 = sub_100046C3C();
    v6 = a1;
    v7 = 0;
  }

  sub_1000045DC(v6, v7, 1, v5);
}

uint64_t sub_100030B18(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100030BE8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000029E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100030C38(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100030C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030CE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100031048(a1, a2, a3, a4);
  sub_10000417C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000041C4();
  v9(v8);
  return v4;
}

uint64_t sub_100030D2C(uint64_t a1)
{
  v3 = v2;
  v5 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_10000BDE8(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + v9);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v1 + v10);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10000C1AC;

  return sub_100027450(a1, v11, v12, v1 + v7, v14, v15);
}

uint64_t sub_100030E74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100031048(a1, a2, a3, a4);
  sub_10000417C(v5);
  v7 = *(v6 + 40);
  v8 = sub_1000041C4();
  v9(v8);
  return v4;
}

uint64_t sub_100030EC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100031048(a1, a2, a3, a4);
  sub_10000417C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000041C4();
  v9(v8);
  return v4;
}

uint64_t sub_100030F0C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100030F1C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100030F44()
{
}

BOOL sub_100030F60(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100030F7C()
{
}

BOOL sub_100030FB0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100030FFC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_10003101C()
{
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  v4 = v0[168];
  v5 = v0[141] + v0[171];
}

uint64_t sub_100031048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10000ECEC(a3, a4);
}

void sub_1000310B8()
{
  v1 = v0[187];
  v2 = v0[155];
  v3 = v0[149];
}

id sub_1000310C8()
{
  v3 = *(v1 + 1608);

  return [v0 v3];
}

uint64_t sub_1000310E0(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_100004EB4(0xD00000000000002BLL, (v3 - 32) | 0x8000000000000000, va);
}

id sub_100031164()
{
  v3 = *(v1 + 1632);

  return [v0 v3];
}

uint64_t sub_10003117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_100025B6C(5457241, 0xE300000000000000, a3, v5 | 0x8000000000000000, a5);
}

id sub_1000311A0()
{
  v3 = *(v1 + 1608);

  return [v0 v3];
}

BOOL sub_1000312C8()
{

  return sub_1000472EC(v0, v1);
}

uint64_t sub_1000312E8@<X0>(uint64_t a1@<X8>)
{

  return sub_10000373C(0, (a1 + 63) >> 6, v1);
}

void sub_100031308(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100031328()
{

  return sub_10004732C();
}

uint64_t sub_100031348()
{

  return swift_slowAlloc();
}

uint64_t sub_100031360()
{

  return swift_task_alloc();
}

void sub_100031378(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

id sub_100031390(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_1000313D0(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = &v6[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_cachedLastStringFromFinalResult];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a1];
  v13 = OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_connection;
  *&v6[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_connection] = v12;
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARSpeechRecognitionResultStream];
  [v15 setRemoteObjectInterface:v16];

  [*&v6[v13] activate];
  v17 = [*&v6[v13] remoteObjectProxy];
  sub_10004712C();
  swift_unknownObjectRelease();
  sub_10000ECEC(&unk_100070040, &unk_10004D380);
  swift_dynamicCast();
  *&v6[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy] = v25;
  *&v6[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_modelContextDelegateInterface] = a3;
  sub_10000612C(a2, &v6[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_asrID]);
  v6[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_isSpaceAgnostic] = a4;
  v18 = v11[1];
  *v11 = a5;
  v11[1] = a6;
  v19 = a3;

  v24.receiver = v6;
  v24.super_class = type metadata accessor for EARSpeechRecognitionResultStream();
  v20 = objc_msgSendSuper2(&v24, "init");

  sub_10000619C(a2);
  return v20;
}

id sub_1000315C0()
{
  [*&v0[OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARSpeechRecognitionResultStream();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EARSpeechRecognitionResultStream()
{
  result = qword_10006FFF0;
  if (!qword_10006FFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003170C(uint64_t a1, void *a2)
{
  if (qword_10006DD30 != -1)
  {
    swift_once();
  }

  v4 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_modelContextDelegateInterface);
  v5 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName);
  v6 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName + 8);
  v7 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_pendingANECompilationContextEvents;
  swift_beginAccess();
  v8 = *(v4 + v7);

  sub_10000D238();

  v9 = *(v4 + v7);
  *(v4 + v7) = _swiftEmptyArrayStorage;

  v10 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy);
  if (a2)
  {
    swift_errorRetain();
    sub_10000ECEC(&unk_10006FAE0, &unk_10004CFD0);
    type metadata accessor for LSRError(0);
    if (swift_dynamicCast())
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (sub_100023AD4(v11))
  {
    goto LABEL_11;
  }

  if (a2)
  {
    swift_errorRetain();
LABEL_11:
    a2 = sub_100046A6C();
  }

  [v10 speechRecognizerDidFinishRecognitionWithError:a2];
}

void sub_100031A48(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_isSpaceAgnostic))
  {
    v4 = 0;
  }

  else
  {
    sub_100024F98(a2);
    v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_cachedLastStringFromFinalResult);
    v6 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_cachedLastStringFromFinalResult);
    v7 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_cachedLastStringFromFinalResult + 8);

    sub_100004E90();
    v8 = sub_100046E4C();

    v9 = sub_100046E4C();

    v10 = sub_100004E90();
    v4 = NeedsSpaceBetween(v10, v11);

    v12 = sub_100024E30(a2);
    v13 = v5[1];
    *v5 = v12;
    v5[1] = v14;
  }

  v15 = [objc_allocWithZone(EARSpeechRecognitionResultPackage) initWithPackage:a2 needsLeadingSpace:v4];
  [*(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy) speechRecognizerDidRecognizeFinalResultPackage:v15];
}

void sub_100031C18(uint64_t a1, void *a2, SEL *a3)
{
  sub_10000ECEC(&qword_100070010, &qword_10004D378);
  v4 = sub_10004737C();
  v5 = v4;
  v6 = 0;
  v32 = a2;
  v9 = a2[8];
  v8 = a2 + 8;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v31 = v4 + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (v32[6] + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v32[7] + 8 * v17);
      v22 = objc_allocWithZone(EARSpeechRecognitionResultPackage);

      v23 = [v22 initWithPackage:v21 needsLeadingSpace:0];
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v24 = (v5[6] + 16 * v17);
      *v24 = v19;
      v24[1] = v20;
      *(v5[7] + 8 * v17) = v23;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v5[2] = v27;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
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
        __break(1u);
        goto LABEL_17;
      }

      if (v6 >= v13)
      {
        break;
      }

      v16 = v8[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v28 = *(v29 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy);
    sub_1000029E4(0, &unk_100070018, EARSpeechRecognitionResultPackage_ptr);
    isa = sub_100046D6C().super.isa;

    [v28 *a3];
  }
}

uint64_t sub_100031E38(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  sub_1000029E4(0, &unk_100070030, _EARSpeechRecognitionResultPackage_ptr);
  sub_100046D7C();
  v8 = a3;
  v9 = a1;
  a5();
}

void sub_100031EE4(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_isSpaceAgnostic))
  {
    v4 = 0;
  }

  else
  {
    sub_10002514C(a2);
    v5 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_cachedLastStringFromFinalResult);
    v6 = *(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_cachedLastStringFromFinalResult + 8);

    sub_100004E90();
    v7 = sub_100046E4C();

    v8 = sub_100046E4C();

    v9 = sub_100004E90();
    v4 = NeedsSpaceBetween(v9, v10);
  }

  v11 = [objc_allocWithZone(EARSpeechRecognitionResult) initWithResult:a2 needsLeadingSpace:v4];
  [*(v2 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy) speechRecognizerDidRecognizePartialResult:v11];
}

void sub_100032070(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [objc_allocWithZone(EARSpeechRecognitionResultPackage) initWithPackage:a2 needsLeadingSpace:0];
  [*(v3 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy) *a3];
}

void sub_1000321F0(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(v8 + OBJC_IVAR____TtC22localspeechrecognition32EARSpeechRecognitionResultStream_resultStreamProxy);
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  isa = sub_100046EEC().super.isa;
  [v15 speechRecognizerDidProduceEndpointFeaturesWithWordCount:a5 trailingSilenceDuration:a6 eosLikelihood:isa pauseCounts:a8 silencePosterior:a1 processedAudioDurationInMilliseconds:a2 acousticEndpointerScore:a3];
}

void sub_1000324E8()
{
  sub_1000175D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

double ClientInfo.init(identifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ClientInfo(0) + 32);
  v7 = type metadata accessor for ClientInfo.LoggingInfo(0);
  sub_1000045DC(a3 + v6, 1, 1, v7);
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = xmmword_10004D3D0;
  *(a3 + 48) = xmmword_10004D3D0;
  return result;
}

uint64_t ClientInfo.init(identifier:source:applicationName:inputOrigin:loggingInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  v10 = a9 + *(type metadata accessor for ClientInfo(0) + 32);

  return sub_10003274C(a10, v10);
}

uint64_t sub_100032714(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003274C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ClientInfo.init(identifier:applicationName:source:inputOrigin:dictationUIInteractionId:)()
{
  sub_100005458();

  return sub_100002BE8();
}

uint64_t ClientInfo.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1000041C4();
}

uint64_t ClientInfo.source.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1000041C4();
}

uint64_t ClientInfo.applicationName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1000041C4();
}

uint64_t ClientInfo.inputOrigin.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1000041C4();
}

uint64_t ClientInfo.loggingInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientInfo(0) + 32);

  return sub_100032940(v3, a1);
}

uint64_t sub_100032940(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClientInfo.LoggingInfo.asrID.getter()
{
  v0 = sub_100046BBC();
  sub_10000417C(v0);
  v2 = *(v1 + 16);
  v3 = sub_1000041C4();

  return v4(v3);
}

uint64_t ClientInfo.LoggingInfo.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClientInfo.LoggingInfo(0) + 20);
  v4 = sub_100046BBC();
  v5 = sub_10000417C(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ClientInfo.LoggingInfo.dictationUIInteractionID.getter()
{
  v1 = (v0 + *(type metadata accessor for ClientInfo.LoggingInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return sub_1000041C4();
}

uint64_t ClientInfo.LoggingInfo.init(asrID:requestID:dictationUIInteractionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100046BBC();
  sub_10000417C(v10);
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = (v12)(a5 + *(v13 + 20), a2, v10);
  v15 = (a5 + *(v13 + 24));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t static ClientInfo.LoggingInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_100046B9C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = *(v4 + 20);
  if ((sub_100046B9C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1000473EC();
}

uint64_t ClientInfo.LoggingInfo.hash(into:)()
{
  v1 = v0;
  sub_100046BBC();
  sub_100004E9C();
  sub_100033494(v2, v3);
  sub_100046DAC();
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = v0 + *(v4 + 20);
  sub_100046DAC();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_100046EAC();
}

Swift::Int ClientInfo.LoggingInfo.hashValue.getter()
{
  v1 = v0;
  sub_10004745C();
  sub_100046BBC();
  sub_100004E9C();
  sub_100033494(v2, v3);
  sub_100046DAC();
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = v0 + *(v4 + 20);
  sub_100046DAC();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_100046EAC();
  return sub_10004748C();
}

uint64_t static ClientInfo.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = sub_10000417C(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_10000ECEC(&qword_100070108, &qword_10004D3E8);
  v15 = sub_10000417C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = *a1 == *a2 && a1[1] == a2[1];
  if (!v20 && (sub_1000473EC() & 1) == 0)
  {
    return 0;
  }

  v21 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v21 && (sub_1000473EC() & 1) == 0)
  {
    return 0;
  }

  v22 = a1[5];
  v23 = a2[5];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = a1[4] == a2[4] && v22 == v23;
    if (!v24 && (sub_1000473EC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = a1[7];
  v26 = a2[7];
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = a1[6] == a2[6] && v25 == v26;
    if (!v27 && (sub_1000473EC() & 1) == 0)
    {
      return 0;
    }

LABEL_29:
    v28 = *(type metadata accessor for ClientInfo(0) + 32);
    v29 = *(v14 + 48);
    sub_100032940(a1 + v28, v19);
    sub_100032940(a2 + v28, &v19[v29]);
    sub_100005C38(v19);
    if (v20)
    {
      sub_100005C38(&v19[v29]);
      if (v20)
      {
LABEL_33:
        sub_1000064CC(v19, &qword_1000700F8, &qword_10004D3E0);
        return 1;
      }
    }

    else
    {
      sub_100032940(v19, v13);
      sub_100005C38(&v19[v29]);
      if (!v31)
      {
        sub_100033114(&v19[v29], v9);
        v34 = sub_100046B9C();
        if (v34)
        {
          v35 = *(v4 + 20);
          if (sub_100046B9C())
          {
            v36 = *(v4 + 24);
            v37 = *&v13[v36];
            v38 = *&v13[v36 + 8];
            v39 = &v9[v36];
            v40 = v37 == *v39 && v38 == *(v39 + 1);
            if (v40 || (sub_1000473EC() & 1) != 0)
            {
              sub_1000330B8(v9);
              sub_1000330B8(v13);
              goto LABEL_33;
            }
          }
        }

        sub_1000330B8(v9);
        sub_1000330B8(v13);
        v32 = &qword_1000700F8;
        v33 = &qword_10004D3E0;
        goto LABEL_47;
      }

      sub_1000330B8(v13);
    }

    v32 = &qword_100070108;
    v33 = &qword_10004D3E8;
LABEL_47:
    sub_1000064CC(v19, v32, v33);
    return 0;
  }

  if (!v26)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_1000330B8(uint64_t a1)
{
  v2 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100033114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ClientInfo.hash(into:)()
{
  v1 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v2 = sub_10000417C(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_100046EAC();
  v13 = v0[2];
  v14 = v0[3];
  sub_100046EAC();
  if (v0[5])
  {
    v15 = v0[4];
    sub_10004747C(1u);
    sub_100046EAC();
  }

  else
  {
    sub_10004747C(0);
  }

  if (v0[7])
  {
    v16 = v0[6];
    sub_10004747C(1u);
    sub_100046EAC();
  }

  else
  {
    sub_10004747C(0);
  }

  v17 = type metadata accessor for ClientInfo(0);
  sub_100032940(v0 + *(v17 + 32), v10);
  if (sub_100004844(v10, 1, v1) == 1)
  {
    sub_10004747C(0);
  }

  else
  {
    sub_100033114(v10, v6);
    sub_10004747C(1u);
    sub_100046BBC();
    sub_100004E9C();
    sub_100033494(v18, v19);
    sub_100046DAC();
    v20 = &v6[*(v1 + 20)];
    sub_100046DAC();
    v21 = &v6[*(v1 + 24)];
    v22 = *v21;
    v23 = *(v21 + 1);
    sub_100046EAC();
    sub_1000330B8(v6);
  }
}

Swift::Int ClientInfo.hashValue.getter()
{
  sub_10004745C();
  ClientInfo.hash(into:)();
  return sub_10004748C();
}

Swift::Int sub_100033408(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_10004745C();
  a4(v6);
  return sub_10004748C();
}

uint64_t sub_100033494(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003354C()
{
  sub_1000335E0();
  if (v0 <= 0x3F)
  {
    sub_100033630();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000335E0()
{
  if (!qword_100070188)
  {
    v0 = sub_10004710C();
    if (!v1)
    {
      atomic_store(v0, &qword_100070188);
    }
  }
}

void sub_100033630()
{
  if (!qword_100070190)
  {
    type metadata accessor for ClientInfo.LoggingInfo(255);
    v0 = sub_10004710C();
    if (!v1)
    {
      atomic_store(v0, &qword_100070190);
    }
  }
}

uint64_t sub_1000336B0()
{
  result = sub_100046BBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003372C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = &_swiftEmptyArrayStorage;
  sub_100004A54(0, v1, 0);
  v2 = &_swiftEmptyArrayStorage;
  result = sub_10000404C(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v24 = v3 + 64;
  v25 = v3 + 56;
  v26 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v29 = v6;
      v27 = v8;
      v28 = v5;
      sub_10000408C(*(v3 + 48) + 40 * v7, v31);
      sub_10000408C(v31, v30);
      swift_dynamicCast();
      result = sub_100030B94(v31);
      v12 = v32;
      v11 = v33;
      v34 = v2;
      v14 = v2[2];
      v13 = v2[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_100004A54((v13 > 1), v14 + 1, 1);
        v2 = v34;
      }

      v2[2] = v14 + 1;
      v15 = &v2[2 * v14];
      v15[4] = v12;
      v15[5] = v11;
      if (v29)
      {
        goto LABEL_29;
      }

      v9 = v25;
      v3 = v26;
      v16 = 1 << *(v26 + 32);
      if (v7 >= v16)
      {
        goto LABEL_26;
      }

      v17 = *(v25 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v26 + 36) != v28)
      {
        goto LABEL_28;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_100004B9C(v7, v28, 0);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        result = sub_100004B9C(v7, v28, 0);
      }

LABEL_19:
      v8 = v27 + 1;
      if (v27 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v26 + 36);
      v7 = v16;
      if (v16 < 0)
      {
        break;
      }
    }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10003399C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = &_swiftEmptyArrayStorage;
  sub_100004CB4(0, v1, 0);
  v2 = &_swiftEmptyArrayStorage;
  result = sub_10000404C(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v23 = v3 + 64;
  v24 = v1;
  v25 = v3;
  v26 = v3 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v11 = v6;
      v27 = v5;
      sub_10000408C(*(v3 + 48) + 40 * v7, v29);
      sub_10000408C(v29, v28);
      swift_dynamicCast();
      result = sub_100030B94(v29);
      v12 = v30;
      v31 = v2;
      v14 = v2[2];
      v13 = v2[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_100004CB4((v13 > 1), v14 + 1, 1);
        v2 = v31;
      }

      v2[2] = v14 + 1;
      v2[v14 + 4] = v12;
      if (v11)
      {
        goto LABEL_29;
      }

      v3 = v25;
      v9 = v26;
      v15 = 1 << *(v25 + 32);
      if (v7 >= v15)
      {
        goto LABEL_26;
      }

      v16 = *(v26 + 8 * v10);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v25 + 36) != v27)
      {
        goto LABEL_28;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_100004B9C(v7, v27, 0);
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        result = sub_100004B9C(v7, v27, 0);
      }

LABEL_19:
      if (++v8 == v24)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v25 + 36);
      v7 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

char *sub_100033C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_100003C48(*(a1 + 16), 0);
  v4 = sub_100034EE4(&v6, v3 + 4, v1, a1);

  sub_100003C40();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_100003E24(&v6);
  return v6;
}

uint64_t sub_100033E74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3 + *a3;
  os_unfair_lock_lock(v6);
  v7 = *(v6 + 8);
  if (*(v7 + 16) && (v8 = sub_1000041D0(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v6);
  return v10;
}

id sub_100033F10(void *a1, uint64_t (*a2)(void))
{
  if (qword_10006DD38 != -1)
  {
    sub_100004E14();
  }

  v5 = sub_100046D1C();
  sub_100004D64(v5, qword_1000714A0);
  v6 = v2;
  v7 = sub_100046D0C();
  v8 = sub_10004701C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = &v6[*a1];
    v12 = *v11;
    v13 = v11[1];

    v14 = sub_100004EB4(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "No longer observing %s asset updates.", v9, 0xCu);
    sub_1000050D4(v10);
    sub_100002BBC();

    sub_100002BBC();
  }

  v15 = a2();
  v18.receiver = v6;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, "dealloc");
}

uint64_t sub_1000340D0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + *a4 + 8);

  sub_100006524(a1 + *a5 + 8, &qword_100070510, &qword_10004D5E0);
  return sub_100006524(a1 + *a6 + 8, &qword_100070518, &qword_10004D5E8);
}

uint64_t sub_100034160(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile;
  v6 = sub_100046B0C();
  sub_1000045DC(v2 + v5, 1, 1, v6);
  v7 = (v2 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames) = 0;
  *(v2 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates) = 0;
  v8 = *(v6 - 8);
  (*(v8 + 16))(v2 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot, a1, v6);
  v9 = [a2 assetType];
  *(v2 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_assetType) = v9;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 modelQualityTypeStatusStringWithConfig:a2];

  if (v11)
  {
    v12 = sub_100046E5C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = (v2 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
  *v15 = v12;
  v15[1] = v14;
  sub_1000026A8();

  (*(v8 + 8))(a1, v6);
  return v2;
}

uint64_t sub_1000342FC()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot;
  v2 = sub_100046B0C();
  sub_100004110(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType + 8);

  sub_100006524(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile, &qword_10006FED0, &qword_10004CF38);
  v5 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8);

  v6 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);

  v7 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);

  return v0;
}

uint64_t sub_1000343B8()
{
  sub_1000342FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

char *sub_100034418(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000ECEC(&unk_1000704E0, &qword_10004D5C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_100034518(char *a1, int64_t a2, char a3)
{
  result = sub_100004BBC(a1, a2, a3, *v3, &qword_100070520, &qword_10004D5F0);
  *v3 = result;
  return result;
}

unint64_t sub_100034548(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000470CC(*(v2 + 40));

  return sub_10003458C(a1, v4);
}

unint64_t sub_10003458C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1000470DC();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100034664(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = &_swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1000473EC();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1000473EC();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_1000473EC();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_100034418(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 2);
      v38 = *(v8 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_100034418((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v40;
      v41 = v8 + 32;
      v42 = &v8[16 * v39 + 32];
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[16 * v40 - 16];
          v45 = &v8[16 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 4);
            v47 = *(v8 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = *(v45 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = *(v44 + 1);
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = *(v45 + 1);
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = *(v44 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[16 * v43 - 16];
          v76 = *v75;
          v77 = &v41[16 * v43];
          v78 = *(v77 + 1);
          result = sub_100034C98((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 2);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          *(v75 + 1) = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove(&v41[16 * v43], v77 + 16, 16 * (v80 - 1 - v43));
          *(v79 + 2) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[16 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = *(v45 + 1);
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = *(v44 + 1);
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_100034B6C(&v89, *v83, a3);
}

uint64_t sub_100034B6C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100034E5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100034C98((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100034C98(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1000473EC() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1000473EC() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

void *sub_100034E70(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v4 = sub_10000BFBC();
    sub_1000037A0(v4, v5, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_100034EE4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100035040()
{
  result = qword_10006E820;
  if (!qword_10006E820)
  {
    type metadata accessor for LSRError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E820);
  }

  return result;
}

void sub_100035D10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    _Block_object_dispose(&STACK[0x220], 8);
    objc_begin_catch(a1);
    v4 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(STACK[0x220]) = 136315138;
      STACK[0x224] = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Exception while training.", &STACK[0x220], 0xCu);
    }

    v5 = SFAnalyticsEventTypeGetName();
    v6 = v2;
    AnalyticsSendEventLazy();

    objc_end_catch();
    JUMPOUT(0x100035CA4);
  }

  _Unwind_Resume(a1);
}

id sub_100035E78(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v6[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v6[1] = kSFCoreAnalyticsFailedOperationKey;
  v7[0] = &stru_100066A98;
  v7[1] = @"transitionArtifact";
  v6[2] = kSFCoreAnalyticsTotalTimeKey;
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:v4];

  return v2;
}

id sub_100035F90(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v8[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v8[1] = kSFCoreAnalyticsFailedOperationKey;
  v9[0] = &stru_100066A98;
  v9[1] = @"readNgramCounts";
  v8[2] = kSFCoreAnalyticsTotalTimeKey;
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = [NSNumber numberWithDouble:v4 - *(a1 + 40)];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 addEntriesFromDictionary:v6];

  return v2;
}

id sub_1000360CC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v9[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v3 = [*(a1 + 40) getVersion];
  v10[0] = v3;
  v10[1] = @"parseCustomProns";
  v9[1] = kSFCoreAnalyticsFailedOperationKey;
  v9[2] = kSFCoreAnalyticsTotalTimeKey;
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  v6 = [NSNumber numberWithDouble:v5 - *(a1 + 48)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 addEntriesFromDictionary:v7];

  return v2;
}

uint64_t sub_10003621C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100036234(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v5 = [v3 prons];
  v4 = [v3 orthography];

  [v2 setObject:v5 forKey:v4];
}

id sub_1000362BC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v9[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v3 = [*(a1 + 40) getVersion];
  v10[0] = v3;
  v10[1] = @"readLanguageModel";
  v9[1] = kSFCoreAnalyticsFailedOperationKey;
  v9[2] = kSFCoreAnalyticsTotalTimeKey;
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  v6 = [NSNumber numberWithDouble:v5 - *(a1 + 48)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 addEntriesFromDictionary:v7];

  return v2;
}

id sub_10003640C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v9[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v3 = [*(a1 + 40) getVersion];
  v10[0] = v3;
  v10[1] = @"createSpeechProfile";
  v9[1] = kSFCoreAnalyticsFailedOperationKey;
  v9[2] = kSFCoreAnalyticsTotalTimeKey;
  v4 = +[NSProcessInfo processInfo];
  [v4 systemUptime];
  v6 = [NSNumber numberWithDouble:v5 - *(a1 + 48)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 addEntriesFromDictionary:v7];

  return v2;
}

id sub_10003655C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v12[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v3 = [*(a1 + 40) getVersion];
  v13[0] = v3;
  v12[1] = kSFCoreAnalyticsModelBuildTimeKey;
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v13[1] = v4;
  v12[2] = kSFCoreAnalyticsCustomPronParseTime;
  v5 = [NSNumber numberWithDouble:*(a1 + 56)];
  v13[2] = v5;
  v12[3] = kSFCoreAnalyticsProfileBuildTime;
  v6 = [NSNumber numberWithDouble:*(a1 + 64)];
  v13[3] = v6;
  v12[4] = kSFCoreAnalyticsTotalTimeKey;
  v7 = +[NSProcessInfo processInfo];
  [v7 systemUptime];
  v9 = [NSNumber numberWithDouble:v8 - *(a1 + 72)];
  v13[4] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  [v2 addEntriesFromDictionary:v10];

  return v2;
}

id sub_100036724(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 addEntriesFromDictionary:*(a1 + 32)];
  v8[0] = kSFCoreAnalyticsArtifactIdentifierKey;
  v8[1] = kSFCoreAnalyticsFailedOperationKey;
  v9[0] = &stru_100066A98;
  v9[1] = @"unknown";
  v8[2] = kSFCoreAnalyticsTotalTimeKey;
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = [NSNumber numberWithDouble:v4 - *(a1 + 40)];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 addEntriesFromDictionary:v6];

  return v2;
}

void sub_100036B50(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[NSSet set];
  [v2 setObject:v4 forKey:v3];
}

void sub_100036BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) sanitizedStringWithString:a2];
  if (!v5 || ![v5 count])
  {
    v7 = [*(a1 + 32) pronunciationsForOrthography:v6];

    v5 = v7;
  }

  v8 = [[_EARWordPart alloc] initWithOrthography:v6 pronunciations:v5 tagName:@"\\unknown-first" frequency:1];
  v9 = *(a1 + 32);
  v11 = v8;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v9 addWordWithParts:v10 templateName:@"\\NT-appvocab"];
}

void sub_1000373B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    v3 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *(v2 - 128) = 136315138;
      *(v2 - 124) = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Exception while training.", (v2 - 128), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1000372DCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1000382D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = +[NSSet set];
  [v2 setObject:v4 forKey:v3];
}

void sub_10003834C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100038558;
  v11 = &unk_1000661E8;
  v12 = objc_alloc_init(NSMutableSet);
  v13 = *(a1 + 32);
  v7 = v12;
  [v5 enumerateObjectsUsingBlock:&v8];

  [*(a1 + 40) setObject:v7 forKey:{v6, v8, v9, v10, v11}];
}

void sub_100038438(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) sanitizedStringWithString:a2];
  if (!v5 || ![v5 count])
  {
    v7 = [*(a1 + 32) pronunciationsForOrthography:v6];

    v5 = v7;
  }

  v8 = [[_EARWordPart alloc] initWithOrthography:v6 pronunciations:v5 tagName:@"\\unknown-first" frequency:1];
  v9 = *(a1 + 32);
  v11 = v8;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v9 addWordWithParts:v10 templateName:@"\\NT-appvocab"];
}

void sub_100038558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nvAsrPhoneSequenceForXsampaProns:a2];
  [v2 addObject:v3];
}

void sub_100038B84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2)
  {
    objc_begin_catch(a1);
    v9 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = "[LSRSpeechAssets _geoLMCompatibleWithMainAsset:geoAssetConfig:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s GeoLM: Exception thrown while reading json configs", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x100038AB0);
  }

  _Unwind_Resume(a1);
}

void sub_100039408(id a1)
{
  qword_100071418 = objc_alloc_init(LSRSpeechAssets);

  _objc_release_x1();
}

id sub_1000398FC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSOrderedSet orderedSetWithArray:a2];
  v5 = [v4 array];

  v6 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = [[AFSpeechUtterance alloc] initWithInterpretationIndices:&__NSArray0__struct confidenceScore:0];
      [v8 setSource:2];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [v5 count]);
  }

  v46 = v5;
  v9 = objc_alloc_init(NSMutableArray);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v3;
  v47 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v47)
  {
    v10 = 0;
    v11 = 0;
    v45 = *v60;
    do
    {
      for (i = 0; i != v47; i = i + 1)
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        v14 = objc_alloc_init(AFSpeechPhrase);
        v15 = objc_alloc_init(NSMutableOrderedSet);
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100039DB0;
        v53[3] = &unk_100066320;
        v16 = v6;
        v57 = v11;
        v54 = v16;
        v55 = v13;
        v58 = v10 & 1;
        v17 = v15;
        v56 = v17;
        [v46 enumerateObjectsUsingBlock:v53];
        v18 = [v17 count];
        if (v18)
        {
          v19 = v18;
          v20 = [v13 firstObject];
          [v20 lastObject];
          v22 = v21 = v6;
          v10 = [v22 hasSpaceAfter] ^ 1;

          v23 = [v17 array];
          v24 = [v23 copy];
          [v14 setInterpretations:v24];

          v6 = v21;
          [v14 setIsLowConfidence:v19 != 1];
          [v9 addObject:v14];
          ++v11;
        }
      }

      v47 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v47);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = v6;
  v25 = [v48 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(v48);
        }

        v29 = *(*(&v49 + 1) + 8 * j);
        v30 = [v29 interpretationIndices];
        v31 = [v30 count];

        if (v31)
        {
          v32 = 0;
          v33 = 0;
          do
          {
            v34 = [v29 interpretationIndices];
            v35 = [v34 objectAtIndex:v32];
            v36 = [v35 unsignedIntegerValue];

            v37 = [v9 objectAtIndex:v32];
            v38 = [v37 interpretations];
            v39 = [v38 objectAtIndex:v36];

            v40 = [v39 tokens];
            v33 += [v40 count];

            ++v32;
            v41 = [v29 interpretationIndices];
            v42 = [v41 count];
          }

          while (v32 < v42);
          if (v33)
          {
            [v29 setConfidenceScore:{(objc_msgSend(v29, "confidenceScore") / v33)}];
          }
        }
      }

      v26 = [v48 countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v26);
  }

  return v9;
}

void sub_100039DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v5 objectAtIndexedSubscript:*(a1 + 56)];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 40) objectAtIndexedSubscript:v8];
  v10 = sub_10003A008(v9, *(a1 + 64));
  if ([v10 count])
  {
    v11 = objc_alloc_init(AFSpeechInterpretation);
    [v11 setTokens:v10];
    v12 = [*(a1 + 48) containsObject:v11];
    v13 = *(a1 + 48);
    if (v12)
    {
      v14 = [v13 indexOfObject:v11];
    }

    else
    {
      v14 = [v13 count];
      [*(a1 + 48) addObject:v11];
    }

    v15 = [v6 interpretationIndices];
    v16 = [NSNumber numberWithUnsignedInteger:v14];
    v17 = [v15 arrayByAddingObject:v16];
    [v6 setInterpretationIndices:v17];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      v22 = 0.0;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v25 + 1) + 8 * i) confidence];
          v22 = v22 + v24;
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = 0.0;
    }

    [v6 setConfidenceScore:{(v22 + objc_msgSend(v6, "confidenceScore"))}];
  }
}

id sub_10003A008(void *a1, char a2)
{
  v3 = a1;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = objc_alloc_init(AFSpeechToken);
        v12 = [v10 tokenName];
        [v11 setText:v12];

        v13 = [v10 phoneSequence];
        [v11 setPhoneSequence:v13];

        [v10 start];
        [v11 setStartTime:?];
        [v10 silenceStart];
        [v11 setSilenceStartTime:?];
        [v10 end];
        [v11 setEndTime:?];
        [v11 setRemoveSpaceBefore:a2 & 1];
        a2 = [v10 hasSpaceAfter] ^ 1;
        [v10 confidence];
        [v11 setConfidenceScore:v14];
        v15 = [v10 ipaPhoneSequence];
        [v11 setIpaPhoneSequence:v15];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

void SetQuasarLoggingLevel(void *a1)
{
  v1 = a1;
  if (SFIsInternalInstall())
  {
    v18[0] = kSFSpeechRecognizerTaskCaptioning;
    v18[1] = kSFSpeechRecognizerTaskOfflineTranscription;
    v18[2] = kSFSpeechRecognizerTaskLiveTranscription;
    v18[3] = kSFSpeechRecognizerTaskVoiceMail;
    v18[4] = kSFSpeechRecognizerTaskTranslateApp;
    v18[5] = kSFSpeechRecognizerTaskDictationCC;
    v18[6] = kSFSpeechRecognizerTaskSpellCC;
    v2 = [NSArray arrayWithObjects:v18 count:7];
    if (![v2 containsObject:v1])
    {
LABEL_18:

      goto LABEL_19;
    }

    v13 = 0;
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 stringForKey:kSFSpeechRecognizerQuasarLoggingKey];

    if (!v4)
    {
      v13 = 2;
      v12 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "SetQuasarLoggingLevel";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s No Quasar log level preference, using default", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v5 = [NSScanner scannerWithString:v4];
    if ([v5 scanInt:&v13] && objc_msgSend(v5, "isAtEnd"))
    {
      v6 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "SetQuasarLoggingLevel";
        v16 = 1024;
        LODWORD(v17) = v13;
        v7 = "%s Customized Quasar log level to:%d";
        v8 = v6;
        v9 = 18;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v7, buf, v9);
      }
    }

    else
    {
      v13 = 2;
      v11 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "SetQuasarLoggingLevel";
        v16 = 2112;
        v17 = v4;
        v7 = "%s Invalid Quasar log level preference %@, using default";
        v8 = v11;
        v9 = 22;
        goto LABEL_13;
      }
    }

LABEL_17:
    QuasarC_setLogLevel();

    goto LABEL_18;
  }

  v10 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "SetQuasarLoggingLevel";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Customer install, using default Quasar log level", buf, 0xCu);
  }

  QuasarC_setLogLevel();
LABEL_19:
}

uint64_t NeedsSpaceBetween(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [a1 UTF8String];
  v7 = [v5 UTF8String];

  return _QuasarC_needsSpaceBetween(v6, v7);
}

void sub_10003AFD8(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  [v2 localSpeechRecognitionDidProcessAudioDuration:*(a1 + 40)];
}

void sub_10003B0F8(id *a1)
{
  v2 = a1[4];
  v3 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v54 = *(a1[5] + 3);
    *buf = 136315650;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2112;
    *v66 = v54;
    *&v66[8] = 2112;
    v67 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s connection is %@, error %@", buf, 0x20u);
  }

  if (qword_100071430 == *(a1[5] + 2))
  {
    v4 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s Schedule cooldown timer only after active request finishes", buf, 0xCu);
    }

    +[LSRConnection _scheduleCooldownTimer];
  }

  v5 = +[NSProcessInfo processInfo];
  [v5 systemUptime];
  v7 = v6;

  v8 = a1[5];
  v9 = v8[14];
  if (v9 <= v7)
  {
    v11 = v7 - v9;
  }

  else
  {
    v10 = SFLogConnection;
    v11 = -1.0;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = [NSNumber numberWithDouble:v9];
      v14 = [NSNumber numberWithDouble:v7];
      *buf = 136315650;
      v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
      v65 = 2112;
      *v66 = v13;
      *&v66[8] = 2112;
      v67 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s _recognitionBeginTime (%@) is greater than recognitionEndTime (%@)", buf, 0x20u);

      v8 = a1[5];
    }
  }

  v15 = v8[15];
  v16 = v8[19];
  v17 = 0.0;
  if (v8[18] - v8[17] - v16 >= 0.0)
  {
    v18 = v8[18] - v8[17] - v16;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = [a1[6] recognitionStatistics];
  v20 = v19;
  v21 = *(a1[5] + 13) * 1000.0;
  if (v21 > 0.0)
  {
    v22 = [v19 objectForKey:EARRecognitionStatisticRecogCpuTime];
    [v22 doubleValue];
    v17 = v23 / v21;

    if (v17 < 0.0)
    {
      v17 = 0.0;
    }
  }

  v24 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    v25 = *(a1[5] + 13);
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s audioDuration: %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v11;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s recognitionDuration: %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  v26 = v7 - v15;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s responseTime(Audio finish to recognizer finish): %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v27 = *(a1[5] + 16);
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s modelLoadTime: %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v18;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s TTFW: %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v17;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s cpuRtf: %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v28 = *(a1[5] + 20);
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s jitLmeProcessingTime: %lf", buf, 0x16u);
    v24 = SFLogConnection;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v29 = *(a1[5] + 21);
    *buf = 136315394;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 2048;
    *v66 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s asrInitializationTime: %lf", buf, 0x16u);
  }

  v30 = [a1[6] concatenateUtterances];
  v31 = a1[5];
  if (v30 && v31[6])
  {
    v32 = [a1[5] _delegate];
    [v32 localSpeechRecognitionDidFinishRecognition:*(a1[5] + 6)];

    v33 = a1[5];
    v34 = v33[6];
    v33[6] = 0;

    v31 = a1[5];
  }

  v35 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    v36 = *(v31 + 57);
    v37 = *(v31 + 56);
    *buf = 136315650;
    v64 = "[LSRConnection speechRecognizer:didFinishRecognitionWithError:]_block_invoke";
    v65 = 1024;
    *v66 = v36;
    *&v66[4] = 1024;
    *&v66[6] = v37;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s _recognitionResultIsFinal=%d _recognitionResultPackageGenerated=%d", buf, 0x18u);
    v31 = a1[5];
  }

  if ((*(v31 + 57) & 1) == 0 && *(v31 + 56) == 1)
  {
    v38 = [v31 _delegate];
    v39 = [LSRUtilities emptyResultWithIsFinal:1];
    [v38 localSpeechRecognitionDidFinishRecognition:v39];

    v31 = a1[5];
  }

  if ((v31[7] & 1) == 0)
  {
    v40 = kAFAssistantErrorDomain;
    v61 = NSLocalizedDescriptionKey;
    v62 = @"No speech detected";
    v41 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v42 = [NSError errorWithDomain:v40 code:1110 userInfo:v41];

    v2 = v42;
  }

  if (!v2)
  {
    v47 = SFAnalyticsEventTypeGetName();
    v56 = a1[5];
    AnalyticsSendEventLazy();

    v48 = SFAnalyticsEventTypeGetName();
    v55 = a1[5];
    AnalyticsSendEventLazy();

    v49 = [a1[5] _delegate];
    [v49 localSpeechRecognitionDidSucceed];

    v2 = 0;
    goto LABEL_53;
  }

  v43 = [v2 domain];
  v44 = [v43 isEqualToString:EARErrorDomain];

  if (v44)
  {
    if ([v2 code] == 2)
    {
      v59 = NSLocalizedDescriptionKey;
      v60 = @"Recognition request was canceled";
      v45 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v46 = 301;
    }

    else
    {
      if ([v2 code] && objc_msgSend(v2, "code") != 3)
      {
        goto LABEL_52;
      }

      v57 = NSLocalizedDescriptionKey;
      v58 = @"Failed to recognize the request";
      v45 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v46 = 300;
    }

    v50 = [NSError errorWithDomain:@"kLSRErrorDomain" code:v46 userInfo:v45];

    v2 = v50;
  }

LABEL_52:
  [a1[5] reportFailureWithError:v2];
LABEL_53:
  [*(a1[5] + 2) cancelRecognition];
  v51 = a1[5];
  v52 = v51[2];
  v53 = qword_100071430;
  if (v52 == qword_100071430)
  {
    qword_100071430 = 0;

    v51 = a1[5];
    v52 = v51[2];
  }

  v51[2] = 0;
}

id sub_10003BA60(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) _requestContext];
  [v2 addEntriesFromDictionary:v3];

  v14[0] = kSFCoreAnalyticsAudioDurationKey;
  v4 = [NSNumber numberWithDouble:*(*(a1 + 32) + 104)];
  v15[0] = v4;
  v14[1] = kSFCoreAnalyticsRecognitionDurationKey;
  v5 = [NSNumber numberWithDouble:*(a1 + 40)];
  v15[1] = v5;
  v14[2] = kSFCoreAnalyticsRecognitionResponseTimeKey;
  v6 = [NSNumber numberWithDouble:*(a1 + 48)];
  v15[2] = v6;
  v14[3] = kSFCoreAnalyticsModelLoadTimeKey;
  v7 = [NSNumber numberWithDouble:*(*(a1 + 32) + 128)];
  v15[3] = v7;
  v14[4] = kSFCoreAnalyticsTTFWKey;
  v8 = [NSNumber numberWithDouble:*(a1 + 56)];
  v15[4] = v8;
  v14[5] = kSFCoreAnalyticsCpuRtfKey;
  v9 = [NSNumber numberWithDouble:*(a1 + 64)];
  v15[5] = v9;
  v14[6] = kSFCoreAnalyticsJitLmeProcessingTimeKey;
  v10 = [NSNumber numberWithDouble:*(*(a1 + 32) + 160)];
  v15[6] = v10;
  v14[7] = kSFCoreAnalyticsAsrInitializationTimeKey;
  v11 = [NSNumber numberWithDouble:*(*(a1 + 32) + 168)];
  v15[7] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
  [v2 addEntriesFromDictionary:v12];

  return v2;
}

void sub_10003BD94(id *a1)
{
  v2 = a1[4];
  if (v2[18] == 0.0)
  {
    v3 = +[NSProcessInfo processInfo];
    [v3 systemUptime];
    *(a1[4] + 18) = v4;

    v2 = a1[4];
  }

  if (v2[19] == 0.0)
  {
    v5 = [a1[5] recognition];
    v6 = [v5 oneBest];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003C048;
    v21[3] = &unk_1000668D8;
    v7 = a1[5];
    v21[4] = a1[4];
    v22 = v7;
    [v6 enumerateObjectsUsingBlock:v21];
  }

  v8 = SFAnalyticsEventTypeGetName();
  v19 = a1[4];
  v20 = a1[5];
  AnalyticsSendEventLazy();

  v9 = [LSRUtilities recognizedResultFromEARPackage:a1[5], _NSConcreteStackBlock, 3221225472, sub_10003C0CC, &unk_100066528, v19];
  v10 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[5];
    v16 = v10;
    v17 = [v15 isFinal];
    v18 = "NO";
    if (v17)
    {
      v18 = "YES";
    }

    *buf = 136315394;
    v24 = "[LSRConnection speechRecognizer:didRecognizeFinalResultPackage:]_block_invoke";
    v25 = 2080;
    v26 = v18;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s package isFinal=%s", buf, 0x16u);
  }

  *(a1[4] + 56) = 1;
  if ([a1[5] isFinal])
  {
    *(a1[4] + 57) = 1;
  }

  v11 = [a1[6] concatenateUtterances];
  v12 = a1[4];
  if (v11)
  {
    v13 = v9;
    v14 = v12[6];
    v12[6] = v13;
  }

  else
  {
    v14 = [a1[4] _delegate];
    [v14 localSpeechRecognitionDidFinishRecognition:v9];
  }
}

double sub_10003C048(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = *(*(a1 + 32) + 152);
  if (result == 0.0)
  {
    v7 = *(a1 + 40);
    v8 = a2;
    [v7 utteranceStart];
    v10 = v9;
    [v8 silenceStart];
    v12 = v11;

    result = v10 + v12;
    *(*(a1 + 32) + 152) = v10 + v12;
    *a4 = 1;
  }

  return result;
}

id sub_10003C0CC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) _requestContext];
  [v2 addEntriesFromDictionary:v3];

  v11[0] = kSFCoreAnalyticsTextNotEmptyKey;
  v4 = [*(a1 + 40) recognition];
  v5 = [v4 oneBest];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 count] != 0);
  v12[0] = v6;
  v11[1] = kSFCoreAnalyticsIsFinalKey;
  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) isFinal]);
  v12[1] = v7;
  v11[2] = kSFCoreAnalyticsNumberOfTokensKey;
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) numTokensExcludingTriggerPhrase]);
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v2 addEntriesFromDictionary:v9];

  return v2;
}

void sub_10003C31C(uint64_t a1)
{
  if (*(*(a1 + 32) + 144) == 0.0)
  {
    v2 = +[NSProcessInfo processInfo];
    [v2 systemUptime];
    *(*(a1 + 32) + 144) = v3;
  }

  v4 = [*(a1 + 40) tokens];
  v5 = [LSRUtilities transcriptionsWithEARTokens:v4];

  v6 = [*(a1 + 40) preITNTokens];
  v7 = [LSRUtilities transcriptionsWithEARTokens:v6];

  v8 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v11 = v8;
    v12 = [v10 tokens];
    v13 = 136315394;
    v14 = "[LSRConnection speechRecognizer:didRecognizePartialResult:]_block_invoke";
    v15 = 2048;
    v16 = [v12 count];
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Recognized %lu partial result tokens.", &v13, 0x16u);
  }

  v9 = [*(a1 + 32) _delegate];
  [v9 localSpeechRecognitionDidRecognizePartialResult:v5 rawPartialResult:v7];
}

void sub_10003C860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 name];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v8 = [v4 distance];
  v7 = [v4 name];

  [v6 setObject:v8 forKey:v7];
}

uint64_t sub_10003D318(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003D574(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003D800(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10003DDA8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL sub_10003DDC0()
{
  v0 = +[NSXPCConnection currentConnection];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 valueForEntitlement:@"com.apple.assistant.dictation.prerecorded"];
    v3 = (objc_opt_respondsToSelector() & 1) != 0 && ([v2 BOOLValue] & 1) != 0;
  }

  else
  {
    v4 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "hasSPIAccess";
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s Called from outside of an XPC connection", &v6, 0xCu);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t sub_10003E538(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003E974(void *a1)
{
  v2 = sub_10003DDC0();
  v3 = SFLogConnection;
  if (v2)
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v4 = a1[4];
      *buf = 136315394;
      v17 = "[LSRConnection initializeLmWithAssetPath:completion:]_block_invoke";
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Initialize Language Model with assetPath=%@", buf, 0x16u);
    }

    v5 = [[LSRLanguageModel alloc] initWithAssetPath:a1[4]];
    v6 = a1[5];
    v7 = *(v6 + 192);
    *(v6 + 192) = v5;

    v8 = a1[6];
    if (v8)
    {
      if (*(a1[5] + 192))
      {
        (*(v8 + 16))(a1[6], 0);
      }

      else
      {
        v11 = [NSString stringWithFormat:@"Error initializing", NSLocalizedDescriptionKey];
        v15 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v13 = [NSError errorWithDomain:@"kLSRErrorDomain" code:400 userInfo:v12];
        (*(v8 + 16))(v8, v13);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[LSRConnection initializeLmWithAssetPath:completion:]_block_invoke";
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Request not authorized", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1700 userInfo:0];
      (*(v9 + 16))(v9, v10);
    }
  }
}

void sub_10003ECB0(void *a1)
{
  v2 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    *buf = 136315394;
    v14 = "[LSRConnection initializeLmWithLocale:clientID:completion:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Initialize Language Model with locale=%@", buf, 0x16u);
  }

  v4 = [[LSRLanguageModel alloc] initWithLocale:a1[4] clientID:a1[6]];
  v5 = a1[5];
  v6 = *(v5 + 192);
  *(v5 + 192) = v4;

  v7 = a1[7];
  if (v7)
  {
    if (*(a1[5] + 192))
    {
      (*(v7 + 16))(a1[7], 0);
    }

    else
    {
      v8 = [NSString stringWithFormat:@"Error initializing", NSLocalizedDescriptionKey];
      v12 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v10 = [NSError errorWithDomain:@"kLSRErrorDomain" code:400 userInfo:v9];
      (*(v7 + 16))(v7, v10);
    }
  }
}

uint64_t sub_10003F0A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003F0BC(void *a1)
{
  v2 = [[SFEntitledAssetConfig alloc] initWithLanguage:a1[4] taskHint:1002];
  v3 = +[SFEntitledAssetManager sharedInstance];
  v4 = [v3 installedAssetWithConfig:v2 regionId:0 shouldSubscribe:1 subscriberId:a1[5] expiration:0];

  if (v4)
  {
    v5 = [v4 stringByAppendingPathComponent:@"mini.json"];
    v6 = [LSRSpeechAssets assetConfigParameters:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"voicemail-confidence-parameters"];
      if (v8)
      {
        v9 = *(a1[6] + 16);
      }

      else
      {
        v12 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315138;
          v15 = "[LSRConnection configParametersForVoicemailWithLanguage:clientID:completion:]_block_invoke_2";
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to find voicemail config parameters", &v14, 0xCu);
        }

        v9 = *(a1[7] + 16);
      }

      v9();
    }

    else
    {
      v11 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "[LSRConnection configParametersForVoicemailWithLanguage:clientID:completion:]_block_invoke";
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to read json config parameters from file: %@", &v14, 0x16u);
      }

      (*(a1[7] + 16))();
    }
  }

  else
  {
    v10 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = 136315394;
      v15 = "[LSRConnection configParametersForVoicemailWithLanguage:clientID:completion:]_block_invoke";
      v16 = 2112;
      v17 = v13;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to find asset path for language:%@", &v14, 0x16u);
    }

    (*(a1[7] + 16))();
  }
}

void sub_10003F450(void *a1)
{
  v5 = [[SFEntitledAssetConfig alloc] initWithLanguage:a1[4] taskHint:0];
  v2 = +[SFEntitledAssetManager sharedInstance];
  v3 = [v2 installedAssetWithConfig:v5 regionId:0 shouldSubscribe:1 subscriberId:a1[5] expiration:0];

  v4 = a1[6];
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

void sub_10003F730(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  [v2 localSpeechRecognitionDidFinishDownloadingAssets:0 error:*(a1 + 40)];
}

void sub_10003F788(uint64_t a1)
{
  v2 = SFAnalyticsEventTypeGetName();
  v25[5] = _NSConcreteStackBlock;
  v25[6] = 3221225472;
  v25[7] = sub_10003FA08;
  v25[8] = &unk_100066490;
  v26 = *(a1 + 32);
  AnalyticsSendEventLazy();

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10003FAEC;
  v25[3] = &unk_1000665C8;
  v25[4] = *(a1 + 40);
  v3 = objc_retainBlock(v25);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003FB6C;
  v22[3] = &unk_1000665F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v23 = v4;
  v24 = v5;
  v6 = objc_retainBlock(v22);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003FE40;
  v13[3] = &unk_100066748;
  v14 = v8;
  v10 = *(a1 + 32);
  v19 = *(a1 + 64);
  v15 = v10;
  v18 = v20;
  v11 = v3;
  v16 = v11;
  v12 = v6;
  v17 = v12;
  [SFEntitledAssetManager subscribeToAssetWithConfig:v7 regionId:0 subscriberId:v14 expiration:v9 completionHandler:v13];

  _Block_object_dispose(v20, 8);
}

void sub_10003F9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003FA08(uint64_t a1)
{
  v6[0] = kSFCoreAnalyticsLanguageKey;
  v2 = [*(a1 + 32) language];
  v7[0] = v2;
  v6[1] = kSFCoreAnalyticsAssetTypeKey;
  [*(a1 + 32) assetType];
  v3 = SFEntitledAssetTypeToString();
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_10003FAEC(uint64_t a1, uint64_t a2, char a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100040818;
  block[3] = &unk_1000665A0;
  block[4] = *(a1 + 32);
  block[5] = a2;
  v4 = a3;
  dispatch_async(qword_100071428, block);
}

void sub_10003FB6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v32 = "[LSRConnection downloadAssetsForConfig:clientID:expiration:detailedProgress:]_block_invoke_6";
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Failed to download assets with error=%@", buf, 0x16u);
    }

    v13 = SFAnalyticsEventTypeGetName();
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1000404FC;
    v28 = &unk_100066528;
    v9 = &v29;
    v29 = *(a1 + 32);
    v14 = v7;
    v30 = v14;
    AnalyticsSendEventLazy();

    v15 = qword_100071428;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100040670;
    v23[3] = &unk_1000664B8;
    v23[4] = *(a1 + 40);
    v24 = v14;
    dispatch_async(v15, v23);

    v11 = v30;
  }

  else
  {
    v8 = SFAnalyticsEventTypeGetName();
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000406C8;
    v21 = &unk_100066490;
    v9 = &v22;
    v22 = *(a1 + 32);
    AnalyticsSendEventLazy();

    v10 = qword_100071428;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000407C0;
    block[3] = &unk_1000664B8;
    block[4] = *(a1 + 40);
    v17 = v5;
    dispatch_async(v10, block);
    v11 = v17;
  }
}

void sub_10003FE40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FF60;
  block[3] = &unk_100066720;
  v13 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v17 = *(a1 + 72);
  v16 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v11 = v3;
  dispatch_async(v4, block);
}

void sub_10003FF60(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      v20 = v2;
      [v18 assetType];
      v21 = SFEntitledAssetTypeToString();
      v22 = [*(a1 + 48) language];
      v23 = *(a1 + 32);
      *buf = 136316162;
      v38 = "[LSRConnection downloadAssetsForConfig:clientID:expiration:detailedProgress:]_block_invoke_6";
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v21;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = v23;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed to subscribe %@ to the %@ asset for %@ with error: %@", buf, 0x34u);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v3 = +[SFEntitledAssetManager sharedInstance];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100040328;
    v34[3] = &unk_100066618;
    v36 = *(a1 + 72);
    v35 = *(a1 + 56);
    [v3 downloadStatusWithConfig:v4 regionId:0 subscriberId:v5 progressHandler:v34 completionHandler:&stru_100066658];
  }

  v6 = +[SFEntitledAssetManager sharedInstance];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100040350;
  v31[3] = &unk_100066680;
  v33 = *(a1 + 80);
  v32 = *(a1 + 56);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100040370;
  v28[3] = &unk_1000666A8;
  v30 = *(a1 + 80);
  v29 = *(a1 + 64);
  [v6 downloadStatusWithConfig:v8 regionId:0 subscriberId:v7 progressHandler:v31 completionHandler:v28];

  if (*(a1 + 80) == 1)
  {
    dispatch_assert_queue_V2(qword_100071428);
    v9 = qword_100071490;
    if (!qword_100071490)
    {
      v10 = dispatch_queue_create("com.apple.speech.localspeechrecognition.detailedProgressWait", 0);
      v11 = qword_100071490;
      qword_100071490 = v10;

      v9 = qword_100071490;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004038C;
    block[3] = &unk_1000666F8;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v27 = *(a1 + 72);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v25 = v17;
    v26 = v16;
    dispatch_async(v9, block);
  }
}

uint64_t sub_100040328(uint64_t result)
{
  v1 = atomic_load((*(*(result + 40) + 8) + 24));
  if ((v1 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100040350(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100040370(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_10004038C(uint64_t a1)
{
  v2 = +[SFEntitledAssetManager sharedInstance];
  [v2 wait];

  v3 = +[SFEntitledAssetManager sharedInstance];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000404C4;
  v8[3] = &unk_100066618;
  v10 = *(a1 + 64);
  v9 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000404E8;
  v6[3] = &unk_1000666D0;
  v7 = *(a1 + 56);
  [v3 downloadStatusWithConfig:v5 regionId:0 subscriberId:v4 progressHandler:v8 completionHandler:v6];
}

id sub_1000404FC(uint64_t a1)
{
  v9[0] = kSFCoreAnalyticsLanguageKey;
  v2 = [*(a1 + 32) language];
  v10[0] = v2;
  v10[1] = &__kCFBooleanFalse;
  v9[1] = kSFCoreAnalyticsSuccessKey;
  v9[2] = kSFCoreAnalyticsAssetTypeKey;
  [*(a1 + 32) assetType];
  v3 = SFEntitledAssetTypeToString();
  v10[2] = v3;
  v9[3] = kSFCoreAnalyticsErrorCode;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) code]);
  v5 = [v4 stringValue];
  v10[3] = v5;
  v9[4] = kSFCoreAnalyticsErrorDomain;
  v6 = [*(a1 + 40) domain];
  v10[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

void sub_100040670(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  [v2 localSpeechRecognitionDidFinishDownloadingAssets:0 error:*(a1 + 40)];
}

id sub_1000406C8(uint64_t a1)
{
  v6[0] = kSFCoreAnalyticsLanguageKey;
  v2 = [*(a1 + 32) language];
  v7[0] = v2;
  v7[1] = &__kCFBooleanTrue;
  v6[1] = kSFCoreAnalyticsSuccessKey;
  v6[2] = kSFCoreAnalyticsAssetTypeKey;
  [*(a1 + 32) assetType];
  v3 = SFEntitledAssetTypeToString();
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void sub_1000407C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  [v2 localSpeechRecognitionDidFinishDownloadingAssets:*(a1 + 40) error:0];
}

void sub_100040818(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegate];
  [v2 localSpeechRecognitionDidDownloadAssetsWithProgress:*(a1 + 40) isStalled:*(a1 + 48)];
}

void sub_100040AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100040B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SFEntitledAssetStatusIsInstalled())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_100040B78(uint64_t a1)
{
  v2 = +[LSRSpeechAssets sharedInstance];
  [v2 installedLanguagesForAssetType:*(a1 + 40) completion:*(a1 + 32)];
}

id sub_100040F3C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) _requestContext];
  [v2 addEntriesFromDictionary:v3];

  v9[0] = kSFCoreAnalyticsErrorCode;
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) code]);
  v5 = [v4 stringValue];
  v10[0] = v5;
  v9[1] = kSFCoreAnalyticsErrorDomain;
  v6 = [*(a1 + 40) domain];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 addEntriesFromDictionary:v7];

  return v2;
}

void sub_100041248(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6 = 0;
  v3 = [v2 _consumeSandboxExtensions:v1 error:&v6];
  v4 = v6;
  v5 = SFLogConnection;
  if (v3)
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[LSRConnection initializeWithSandboxExtensions:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v8 = "[LSRConnection initializeWithSandboxExtensions:]_block_invoke";
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions: %@", buf, 0x16u);
  }
}

void sub_100041490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained cancelRecognition];

  [*(*(a1 + 32) + 16) endAudio];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  [*(*(a1 + 32) + 80) discard];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  v7 = SFAnalyticsEventTypeGetName();
  v8 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

void sub_100041688(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    [v3 endAudio];
  }

  else
  {
    *(v2 + 40) = 1;
  }

  v4 = SFAnalyticsEventTypeGetName();
  v7 = *(a1 + 32);
  AnalyticsSendEventLazy();

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;
}

id sub_100041874(uint64_t a1)
{
  v2 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = v2;
    v11 = 136315394;
    v12 = "[LSRConnection addAudioPacket:]_block_invoke";
    v13 = 2048;
    v14 = [v9 length];
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Adding audio packet: %zu", &v11, 0x16u);
  }

  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  *(*(a1 + 40) + 120) = v4;

  v5 = *(a1 + 40);
  if (*(v5 + 136) == 0.0)
  {
    v6 = +[NSProcessInfo processInfo];
    [v6 systemUptime];
    *(*(a1 + 40) + 136) = v7;

    v5 = *(a1 + 40);
  }

  if (*(v5 + 16))
  {
    [*(*(a1 + 40) + 16) addAudioSamples:objc_msgSend(*(a1 + 32) count:{"bytes"), objc_msgSend(*(a1 + 32), "length") >> 1}];
    [*(a1 + 40) updateAudioDuration:*(a1 + 32)];
  }

  else
  {
    [*(v5 + 32) addObject:*(a1 + 32)];
  }

  result = *(*(a1 + 40) + 80);
  if (result)
  {
    return [result appendBytes:*(a1 + 32)];
  }

  return result;
}

id sub_100043524(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = EtiquetteReplacementsForLanguage(*(*(a1 + 32) + 88));
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  return v2;
}

id VoicemailConfidenceSubtractionForLanguage(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = sub_1000438E8(v1, @"voicemail_confidence_subtraction.json", v2);

  return v3;
}

id EtiquetteConfidenceSubtraction(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000438D4;
    v5[3] = &unk_100066440;
    v6 = objc_alloc_init(NSMutableDictionary);
    v2 = v6;
    [v1 enumerateKeysAndObjectsUsingBlock:v5];

    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000436D8(void *a1)
{
  v1 = a1;
  v2 = [v1 samplingRateFilter];
  v3 = [v1 taskTypeFilter];
  v4 = [v1 farFieldFilter];
  v5 = [v1 deviceIdFilter];
  v6 = [v1 bluetoothDeviceIdFilter];
  v7 = [v1 atypicalSpeechFilter];

  v8 = [NSString stringWithFormat:@"sampling rate = %@\ntask type = %@\nfar field = %@\ndevice ID = %@\n[DEPRECATED] bluetooth device ID = %@\natypical speech = %@\n", v2, v3, v4, v5, v6, v7];

  return v8;
}

id sub_1000437D4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) _requestContext];
  [v2 addEntriesFromDictionary:v3];

  v7 = kSFCoreAnalyticsModelVersionKey;
  v4 = [qword_100071478 version];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v2 addEntriesFromDictionary:v5];

  return v2;
}

id sub_1000438E8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 stringByAppendingPathComponent:v6];
    v27 = 0;
    v8 = [NSData dataWithContentsOfFile:v7 options:0 error:&v27];
    v9 = v27;
    if (!v8)
    {
      v15 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ReplacementDictionaryForLanguage";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v29 = v9;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Could not read %@: %@", buf, 0x20u);
      }

      v13 = 0;
      goto LABEL_21;
    }

    v26 = v9;
    v10 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v26];
    v11 = v26;

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v29) = 1;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100043CF8;
        v22[3] = &unk_100066998;
        v25 = a3;
        v23 = v6;
        v24 = buf;
        [v12 enumerateKeysAndObjectsUsingBlock:v22];
        if (*(*&buf[8] + 24))
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      v17 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        v19 = v17;
        v20 = objc_opt_class();
        *buf = 136315650;
        *&buf[4] = "ReplacementDictionaryForLanguage";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v29 = v20;
        v21 = v20;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s %@ is wrong type: %@", buf, 0x20u);
      }
    }

    else
    {
      v16 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ReplacementDictionaryForLanguage";
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v29 = v11;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Could not parse %@: %@", buf, 0x20u);
      }
    }

    v13 = 0;
LABEL_20:

    v9 = v11;
LABEL_21:

    goto LABEL_22;
  }

  v14 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "ReplacementDictionaryForLanguage";
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Could not locate asset.", buf, 0xCu);
  }

  v13 = 0;
LABEL_22:

  return v13;
}

void sub_100043CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043CF8(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = a1[6], (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v12 = 136315906;
      v13 = "ReplacementDictionaryForLanguage_block_invoke";
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s %@ contains bogus key/value pair: %@ => %@", &v12, 0x2Au);
    }

    *a4 = 1;
    *(*(a1[5] + 8) + 24) = 0;
  }
}

id EtiquetteReplacementsForLanguage(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = sub_1000438E8(v1, @"etiquette.json", v2);

  return v3;
}

void sub_100045050(id a1, NSNumber *a2, unint64_t a3, BOOL *a4)
{
  [(NSNumber *)a2 longLongValue:a3];

  sandbox_extension_release();
}

void sub_100045278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100045294(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v3 = v2;
      v4 = +[NSXPCListener _UUID];
      v12 = 136315650;
      v13 = "[LSRConnection initWithXPCConnection:]_block_invoke";
      v14 = 2112;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@ cancelling instance %@", &v12, 0x20u);
    }

    [WeakRetained[2] cancelRecognition];
    v5 = WeakRetained[2];
    v6 = qword_100071430;
    if (v5 == qword_100071430)
    {
      qword_100071430 = 0;

      v5 = WeakRetained[2];
    }

    WeakRetained[2] = 0;

    [WeakRetained[4] removeAllObjects];
    objc_storeWeak(WeakRetained + 1, 0);
    [WeakRetained[3] invalidate];
    v7 = WeakRetained[3];
    WeakRetained[3] = 0;

    objc_storeWeak(WeakRetained + 1, 0);
    v8 = WeakRetained[25];
    WeakRetained[25] = 0;

    v9 = WeakRetained[26];
    WeakRetained[26] = 0;

    v10 = WeakRetained[27];
    WeakRetained[27] = 0;

    v11 = WeakRetained[28];
    WeakRetained[28] = 0;
  }
}

void sub_100045428(id a1)
{
  v1 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[LSRConnection initWithXPCConnection:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s Handling SIGTERM", &v2, 0xCu);
  }

  exit(0);
}

uint64_t sub_1000464F0(uint64_t a1)
{
  v2 = [NSNumber numberWithUnsignedLongLong:qword_100071440];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}