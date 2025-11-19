void *sub_100120CF4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = __CocoaSet.makeIterator()();
    sub_10008E5A4(0, &qword_1003D0520);
    sub_10012310C();
    Set.Iterator.init(_cocoa:)();
    v5 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v9 = v66;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v7 = v11;
    v8 = 0;
  }

  v57 = v5;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v48 = v7;
  v14 = (v7 + 64) >> 6;
  v54 = v4 + 7;
  v61 = v9;
  v50 = v6;
  v51 = v14;
  if (v5 < 0)
  {
LABEL_17:
    v19 = __CocoaSet.Iterator.next()();
    if (!v19)
    {
      goto LABEL_51;
    }

    v55 = v19;
    sub_10008E5A4(0, &qword_1003D0520);
    swift_dynamicCast();
    v2 = v56;
    v15 = v8;
    v53 = v9;
    if (!v56)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_10:
    v15 = v8;
    v16 = v9;
    v17 = v8;
    if (v9)
    {
LABEL_14:
      v3 = ((v16 - 1) & v16);
      v2 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      v18 = v2;
      v15 = v17;
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_55;
        }

        if (v17 >= v14)
        {
          break;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v3 = 0;
    }

    v57 = v5;
    v58 = v6;
    v59 = v48;
    v60 = v15;
    v53 = v3;
    v61 = v3;
    if (!v2)
    {
      goto LABEL_51;
    }
  }

  v20 = v2;
  v21 = NSObject._rawHashValue(seed:)(v4[5]);
  v52 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v21 & v52;
    v6 = (v21 & v52) >> 6;
    v14 = 1 << (v21 & v52);
    if ((v14 & v54[v6]) == 0)
    {

      v8 = v15;
      v9 = v53;
      v6 = v50;
      v14 = v51;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    sub_10008E5A4(0, &qword_1003D0520);
    v3 = *(v4[6] + 8 * v8);
    v2 = static NSObject.== infix(_:_:)();

    if (v2)
    {
      break;
    }

    v21 = v8 + 1;
  }

  v23 = *(v4 + 32);
  v45 = ((1 << v23) + 63) >> 6;
  v2 = 8 * v45;
  v3 = v51;
  if ((v23 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v46 = &v44;
    __chkstk_darwin(v22);
    v24 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v24, v54, v2);
    v44 = 0;
    v25 = *&v24[8 * v6] & ~v14;
    v26 = v4[2];
    v52 = v24;
    *&v24[8 * v6] = v25;
    v27 = v26 - 1;
    v28 = v50;
    v6 = v53;
    v49 = v5;
    while (1)
    {
      v47 = v27;
LABEL_29:
      if (v5 < 0)
      {
        v33 = __CocoaSet.Iterator.next()();
        if (!v33)
        {
          goto LABEL_50;
        }

        v55 = v33;
        swift_dynamicCast();
        v31 = v56;
        if (!v56)
        {
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      if (!v6)
      {
        break;
      }

LABEL_35:
      v30 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v31 = *(*(v5 + 48) + ((v15 << 9) | (8 * v30)));
      v32 = v31;
LABEL_36:
      v57 = v5;
      v58 = v28;
      v59 = v48;
      v60 = v15;
      v61 = v6;
      if (!v31)
      {
LABEL_50:
        v4 = sub_100121FB4(v52, v45, v47, v4);
        goto LABEL_51;
      }

LABEL_40:
      v53 = v6;
      v2 = v31;
      v34 = NSObject._rawHashValue(seed:)(v4[5]);
      v35 = v4;
      v8 = ~(-1 << *(v4 + 32));
      do
      {
        v36 = v34 & v8;
        v37 = (v34 & v8) >> 6;
        v38 = 1 << (v34 & v8);
        if ((v38 & v54[v37]) == 0)
        {

          v4 = v35;
          v5 = v49;
          v28 = v50;
          v3 = v51;
          v6 = v53;
          goto LABEL_29;
        }

        v14 = *(v35[6] + 8 * v36);
        v2 = static NSObject.== infix(_:_:)();

        v34 = v36 + 1;
      }

      while ((v2 & 1) == 0);

      v3 = v51;
      v39 = *(v52 + 8 * v37);
      *(v52 + 8 * v37) = v39 & ~v38;
      v40 = (v39 & v38) == 0;
      v4 = v35;
      v5 = v49;
      v28 = v50;
      v6 = v53;
      if (v40)
      {
        goto LABEL_29;
      }

      v27 = v47 - 1;
      if (__OFSUB__(v47, 1))
      {
        __break(1u);
      }

      if (v47 == 1)
      {

        v4 = &_swiftEmptySetSingleton;
        goto LABEL_51;
      }
    }

    while (1)
    {
      v29 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v29 >= v3)
      {
        v31 = 0;
        v6 = 0;
        goto LABEL_36;
      }

      v6 = *(v28 + 8 * v29);
      ++v15;
      if (v6)
      {
        v15 = v29;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v42 = swift_slowAlloc();
  v43 = sub_100121EA4(v42, v45, v54, v45, v4, v8, &v57);

  v4 = v43;
LABEL_51:
  sub_100123174();
  return v4;
}

_BYTE *sub_1001212FC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v43 = 0;
  v8 = a1 + 56;
  v7 = *(a1 + 56);
  v9 = -1;
  v10 = -1 << *(a1 + 32);
  v47 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = ((63 - v10) >> 6);
  v52 = a2 + 7;

  v15 = 0;
  v49 = v13;
  v50 = v8;
  v51 = v14;
  if (!v12)
  {
LABEL_7:
    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_39;
      }

      if (v16 >= v13)
      {
        break;
      }

      v12 = *(v8 + 8 * v16);
      ++v17;
      if (v12)
      {
        goto LABEL_11;
      }
    }

LABEL_36:
    sub_100123174();
    return v6;
  }

LABEL_6:
  v16 = v15;
LABEL_11:
  v18 = __clz(__rbit64(v12));
  v12 &= v12 - 1;
  v2 = *(*(v14 + 48) + ((v16 << 9) | (8 * v18)));
  Hasher.init(_seed:)();

  sub_10012317C(__src, v2);
  v19 = Hasher._finalize()();
  v20 = ~(-1 << v6[32]);
  while (1)
  {
    v13 = (v19 & v20);
    v9 = (v19 & v20) >> 6;
    v3 = 1 << (v19 & v20);
    if ((v3 & v52[v9]) == 0)
    {

      v15 = v16;
      v8 = v50;
      v14 = v51;
      v13 = v49;
      v9 = -1;
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v4 = v6;

    sub_10012338C(v21, v2);
    v5 = v22;

    if (v5)
    {
      break;
    }

    v19 = (v13 + 1);
  }

  v55 = v47;
  v56 = v16;
  v57 = v12;
  v5 = v50;
  v54[0] = v51;
  v54[1] = v50;

  v8 = v6;
  v24 = v6[32];
  v44 = ((1 << v24) + 63) >> 6;
  v2 = 8 * v44;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v45 = &v42;
    __chkstk_darwin(v23);
    v13 = &v42 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v13, v52, v2);
    v25 = *&v13[8 * v9] & ~v3;
    v26 = *(v8 + 16);
    v48 = v13;
    *&v13[8 * v9] = v25;
    v27 = v26 - 1;
    v28 = v49;
    while (1)
    {
      v46 = v27;
LABEL_20:
      if (!v12)
      {
        break;
      }

LABEL_25:
      v30 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v31 = *(*(v51 + 48) + ((v16 << 9) | (8 * v30)));
      Hasher.init(_seed:)();

      sub_10012317C(__src, v31);
      v13 = __src;
      v32 = Hasher._finalize()();
      v33 = ~(-1 << *(v8 + 32));
      do
      {
        v34 = v32 & v33;
        v9 = (v32 & v33) >> 6;
        v3 = 1 << (v32 & v33);
        if ((v3 & v52[v9]) == 0)
        {

          v8 = v4;
          v28 = v49;
          v5 = v50;
          goto LABEL_20;
        }

        v13 = *(v4[6] + 8 * v34);

        sub_10012338C(v35, v31);
        v2 = v36;

        v32 = v34 + 1;
      }

      while ((v2 & 1) == 0);

      v37 = v48[v9];
      v48[v9] = v37 & ~v3;
      v8 = v4;
      v28 = v49;
      v5 = v50;
      if ((v37 & v3) == 0)
      {
        goto LABEL_20;
      }

      v27 = v46 - 1;
      if (__OFSUB__(v46, 1))
      {
        __break(1u);
      }

      if (v46 == 1)
      {

        v6 = &_swiftEmptySetSingleton;
        goto LABEL_36;
      }
    }

    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v28)
      {
        v6 = sub_1001221A0(v48, v44, v46, v8);
        goto LABEL_36;
      }

      v12 = *(v5 + 8 * v29);
      ++v16;
      if (v12)
      {
        v16 = v29;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();
  v40 = v43;
  v41 = sub_100121F2C(v39, v44, v52, v44, v8, v13, v54);
  if (!v40)
  {
    v6 = v41;

    v47 = v55;
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001217F0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_10008E5A4(0, &qword_1003D0520);
    v8 = NSObject._rawHashValue(seed:)(*(v4 + 40));
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v10);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v2;
        v16 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100120128();
          v14 = v16;
        }

        v7 = *(*(v14 + 48) + 8 * v10);
        sub_1001224A4(v10);
        *v2 = v16;
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  v5 = a1;
  v6 = __CocoaSet.contains(_:)();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_100122348();

  return v7;
}

uint64_t sub_100121970(uint64_t a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  sub_10012317C(__src, a1);
  v4 = Hasher._finalize()();
  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      return 0;
    }

    sub_10012338C(v7, a1);
    v9 = v8;

    if (v9)
    {
      break;
    }

    v4 = v6 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  __src[0] = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100120278();
    v12 = __src[0];
  }

  v10 = *(*(v12 + 48) + 8 * v6);
  sub_100122638(v6);
  *v1 = __src[0];
  return v10;
}

void sub_100121A80(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_25;
      }

      sub_10008E5A4(0, &qword_1003D0520);
      swift_dynamicCast();
      v13 = v29;
      if (!v29)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_100121FB4(a1, a2, v26, a3);
      return;
    }

LABEL_15:
    v16 = NSObject._rawHashValue(seed:)(*(a3 + 40));
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_10008E5A4(0, &qword_1003D0520);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = a1[v19];
    a1[v19] = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_27;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t *sub_100121CC4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v24 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v23 = v7;
LABEL_3:
    v9 = a5[3];
    v10 = a5[4];
    if (!v10)
    {
      break;
    }

    v11 = a5[3];
LABEL_8:
    v12 = *(*(*a5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    a5[3] = v11;
    a5[4] = (v10 - 1) & v10;
    Hasher.init(_seed:)();

    sub_10012317C(__src, v12);
    v13 = Hasher._finalize()();
    v14 = ~(-1 << *(a3 + 32));
    do
    {
      v15 = v13 & v14;
      v16 = (v13 & v14) >> 6;
      v17 = 1 << (v13 & v14);
      if ((v17 & *(v8 + 8 * v16)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      sub_10012338C(v18, v12);
      v20 = v19;

      v13 = v15 + 1;
    }

    while ((v20 & 1) == 0);

    v21 = v24[v16];
    v24[v16] = v21 & ~v17;
    a5 = v26;
    if ((v21 & v17) == 0)
    {
      goto LABEL_3;
    }

    v7 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_19;
    }

    if (v23 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v9;
      a5[4] = 0;

      return sub_1001221A0(v24, a2, v23, a3);
    }

    v10 = *(a5[1] + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100121EA4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_100121A80(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t *sub_100121F2C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100121CC4(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_100121FB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100080FB4(&qword_1003CE718);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1001221A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100080FB4(&qword_1003CE720);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();

    sub_10012317C(__src, v16);
    Hasher._finalize()();
    result = _HashTable.nextHole(atOrAfter:)();
    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v6 + 48) + 8 * result) = v16;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100122348()
{

  v0 = __CocoaSet.count.getter();
  v1 = swift_unknownObjectRetain();
  v2 = sub_10011F268(v1, v0);
  v12 = v2;
  v3 = *(v2 + 40);

  v4 = NSObject._rawHashValue(seed:)(v3);
  v5 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      break;
    }

    sub_10008E5A4(0, &qword_1003D0520);
    v7 = *(*(v2 + 48) + 8 * v6);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {

      v9 = *(*(v2 + 48) + 8 * v6);
      sub_1001224A4(v6);
      if (static NSObject.== infix(_:_:)())
      {
        *v11 = v12;
        return v9;
      }

      __break(1u);
      break;
    }

    v4 = v6 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001224A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100122638(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();

        sub_10012317C(__src, v10);

        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001227E4(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100122874()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001228E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100122940()
{
  sub_1000EDA60();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000A7644;
  sub_100123EC4();
  sub_1001240F8();

  return sub_100117DD4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100122A04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100122A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100122A94()
{

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_100122B48(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100122B78()
{
  type metadata accessor for Date();
  sub_100098B7C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100122C1C(void *a1)
{
  v3 = type metadata accessor for Date();
  sub_1000B046C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100111F4C(a1, v1 + v8, v10, v11);
}

uint64_t sub_100122CBC()
{
  sub_1000B7E4C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100122CF8()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100122D2C()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_100027A00();

  return sub_10010E5B0(v3);
}

uint64_t sub_100122DB8()
{
  swift_unknownObjectRelease();

  sub_1000EDD24();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100122DFC()
{
  sub_1000B072C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_100123EC4();
  sub_1000B0718();

  return sub_10011DB18(v3, v4, v5, v6, v7);
}

uint64_t sub_100122EA0()
{
  sub_1001077A8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100122ED4()
{

  sub_1000B069C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100122F2C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100122F88()
{
  v1 = sub_1000B045C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100122FFC()
{

  sub_1000B069C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100123060()
{
  sub_10008BE9C();
  v1 = swift_task_alloc();
  v2 = sub_1000B00E0(v1);
  *v2 = v3;
  sub_1000B00B4(v2);

  return sub_10010A79C(v0);
}

void *sub_1001230E4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_10012310C()
{
  result = qword_1003CE710;
  if (!qword_1003CE710)
  {
    sub_10008E5A4(255, &qword_1003D0520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE710);
  }

  return result;
}

void sub_10012317C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10008E5A4(0, &qword_1003D0520);
    sub_10012310C();
    Set.Iterator.init(_cocoa:)();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
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

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v7)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v15)));
    for (i = v17; ; i = v17)
    {
      v16 = NSObject._rawHashValue(seed:)(v3);

      v11 ^= v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_20;
      }

      sub_10008E5A4(0, &qword_1003D0520);
      swift_dynamicCast();
    }
  }

  v14 = v6;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
LABEL_20:
      sub_100123174();
      Hasher._combine(_:)(v11);
      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v14;
    if (v7)
    {
      v6 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_10012338C(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v6, v5);
      return;
    }

    v7 = v5;
    v8 = a2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
LABEL_18:

    sub_1001235E4(v7, v8);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v24 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v6 = sub_10008E5A4(0, &qword_1003D0520);
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v25 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v26 = (v11 - 1) & v11;
LABEL_33:
        v17 = *(a2 + 40);
        v18 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v19 = NSObject._rawHashValue(seed:)(v17);
        v20 = ~(-1 << *(a2 + 32));
        do
        {
          v21 = v19 & v20;
          if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {

            return;
          }

          v22 = *(*(a2 + 48) + 8 * v21);
          v23 = static NSObject.== infix(_:_:)();

          v19 = v21 + 1;
        }

        while ((v23 & 1) == 0);

        v13 = v25;
        v11 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return;
      }

      v16 = *(v24 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
  }
}

void sub_1001235E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001236E4()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100123718()
{

  sub_1000EDD24();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100123784()
{

  v0 = sub_1000B045C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001237CC()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v3 = sub_100123BD0(v1);

  return v4(v3);
}

uint64_t sub_100123860()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000B045C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1001238A0()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v3 = sub_100123BD0(v1);

  return v4(v3);
}

uint64_t sub_100123934()
{
  _Block_release(*(v0 + 24));
  v1 = sub_1000B045C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012396C()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  v3 = sub_100123BD0(v1);

  return v4(v3);
}

uint64_t sub_100123A00()
{
  sub_10008BE9C();

  return sub_100112C84();
}

uint64_t sub_100123AE8()
{

  return swift_once();
}

void sub_100123BF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *v18 = a9;
  v20 = v17;
  v21 = v16;

  String.append(_:)(*&v20);
}

uint64_t sub_100123C6C()
{

  return swift_beginAccess();
}

uint64_t sub_100123CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + v1);
  *(v2 + 56) = *v3;
  result = v3[1];
  *(v2 + 64) = result;
  return result;
}

unint64_t sub_100123CD0(uint64_t a1, uint64_t a2, unint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100080210(a2, a3, va);
}

unint64_t sub_100123D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v6 + 4) = v4;
  *(v6 + 12) = 2082;

  return sub_100080210(a2, v5, va);
}

uint64_t sub_100123D58()
{
}

void sub_100123D74()
{

  sub_100235408(0, 0, v0, &unk_1002F0FA8, v1);
}

void sub_100123E00()
{

  _StringGuts.grow(_:)(73);
}

void sub_100123E3C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100123E5C()
{

  return swift_beginAccess();
}

void sub_100123E80()
{
  v1 = 2108704;
  v2 = 0xE300000000000000;

  String.append(_:)(*&v1);
}

void sub_100123EA8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_100123EE0(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v1;
  a1[5] = v4;
  a1[6] = v2;

  return swift_retain_n();
}

uint64_t sub_100123F08()
{

  return _BridgedStoredNSError.init(_:userInfo:)();
}

void sub_100123F60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v14;
  v17 = v13;

  String.append(_:)(*&v16);
}

uint64_t sub_100123F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100081DFC(v4, 1, 1, a4);
}

uint64_t sub_100123FA0()
{
}

void sub_100123FBC(uint64_t a1, uint64_t a2)
{
  v3 = 0xD00000000000001DLL;

  String.append(_:)(*(&a2 - 1));
}

uint64_t sub_100123FD4()
{

  return type metadata accessor for SKLogger();
}

uint64_t sub_100123FEC()
{
}

uint64_t sub_100124008()
{

  return swift_allocObject();
}

void sub_100124020()
{
  v1 = 0x20726F6620;
  v2 = 0xE500000000000000;

  String.append(_:)(*&v1);
}

void *sub_100124068(void *result)
{
  *(v3 + 88) = result;
  result[2] = v4;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t sub_10012409C(uint64_t result)
{
  *(v1 + 218) = result;
  *(v1 + 216) = 0;
  return result;
}

uint64_t sub_1001240E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[2] = v4;
  v3[3] = result;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

void sub_100124114(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100124134()
{
}

uint64_t sub_100124154()
{
}

uint64_t sub_100124174()
{

  return swift_task_alloc();
}

uint64_t sub_1001241A0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return sub_100081D0C(a1 + v9, a2, v8);
  }

  type metadata accessor for TransactionQuery.Kind(0);
  sub_1000B9378();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1001242D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    type metadata accessor for TransactionQuery.Kind(0);
    sub_1000B9378();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  sub_100081DFC(a1 + v11, a2, a2, v10);
}

uint64_t sub_1001243E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100124420()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TransactionQuery.Kind(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001244D4()
{
  sub_10012458C(319, &qword_1003CE860, sub_1000B784C);
  if (v0 <= 0x3F)
  {
    sub_10012458C(319, &qword_1003CE868, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10012458C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001245D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100318B10 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6873696E69666E75 && a2 == 0xEA00000000006465;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001247E8(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x49746375646F7270;
      break;
    case 3:
      result = 0x746361736E617274;
      break;
    case 4:
      result = 0x6873696E69666E75;
      break;
    case 5:
      result = 0x73657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001248C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044)
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

uint64_t sub_10012496C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1001249DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65636E6973 && a2 == 0xE500000000000000)
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

uint64_t sub_100124A64(void *a1)
{
  sub_100080FB4(&qword_1003CE950);
  sub_1000890DC();
  v79 = v3;
  v80 = v2;
  sub_100089118();
  __chkstk_darwin(v4);
  sub_1000891AC();
  v76 = v5;
  type metadata accessor for Date();
  sub_1000890DC();
  v77 = v7;
  v78 = v6;
  __chkstk_darwin(v6);
  sub_100093D40();
  v75 = v9 - v8;
  sub_100080FB4(&qword_1003CE958);
  sub_1000890DC();
  v73 = v11;
  v74 = v10;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_1000891AC();
  v70 = v13;
  sub_100080FB4(&qword_1003CE960);
  sub_1000890DC();
  v71 = v15;
  v72 = v14;
  sub_100089118();
  __chkstk_darwin(v16);
  sub_1000891AC();
  v69 = v17;
  sub_100080FB4(&qword_1003CE968);
  sub_1000890DC();
  v67 = v19;
  v68 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  sub_1000891AC();
  v66 = v21;
  sub_100080FB4(&qword_1003CE970);
  sub_1000890DC();
  v64 = v23;
  v65 = v22;
  sub_100089118();
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  v27 = sub_100080FB4(&qword_1003CE978);
  sub_1000890DC();
  v63 = v28;
  sub_100089118();
  __chkstk_darwin(v29);
  v31 = &v62 - v30;
  type metadata accessor for TransactionQuery.Kind(0);
  sub_100098B7C();
  __chkstk_darwin(v32);
  sub_100093D40();
  v35 = v34 - v33;
  sub_100080FB4(&qword_1003CE980);
  sub_1000890DC();
  v81 = v37;
  v82 = v36;
  sub_100089118();
  __chkstk_darwin(v38);
  sub_100089230();
  v39 = a1[3];
  sub_100086D24(a1, v39);
  sub_100126E78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001270C4(v83, v35, type metadata accessor for TransactionQuery.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100127D60();
      sub_100126FC8();
      v45 = v66;
      v46 = v82;
      sub_100127CBC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v68;
      KeyedEncodingContainer.encode(_:forKey:)();

      v48 = v67;
      goto LABEL_7;
    case 2u:
      v86 = 3;
      sub_100126F74();
      v45 = v69;
      v46 = v82;
      sub_100127CBC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v72;
      KeyedEncodingContainer.encode(_:forKey:)();

      v48 = v71;
LABEL_7:
      (*(v48 + 8))(v45, v47);
      v42 = sub_100127CB0();
      v44 = v46;
      goto LABEL_8;
    case 3u:
      v49 = v77;
      v50 = v75;
      v51 = v35;
      v52 = v78;
      (*(v77 + 32))(v75, v51, v78);
      v88 = 5;
      sub_100126ECC();
      v53 = v76;
      v54 = v82;
      sub_100127CBC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100127CC8();
      sub_100126C20(v55, v56);
      v57 = v80;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v79 + 8))(v53, v57);
      (*(v49 + 8))(v50, v52);
      v42 = sub_100127CB0();
      v44 = v54;
      goto LABEL_8;
    case 4u:
      v84 = 0;
      sub_100127070();
      sub_100127C7C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v31, v27);
      goto LABEL_10;
    case 5u:
      v87 = 4;
      sub_100126F20();
      v59 = v70;
      sub_100127C7C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v73 + 8))(v59, v74);
LABEL_10:
      v60 = sub_100127CB0();
      result = v61(v60, v39);
      break;
    default:
      v85 = 1;
      sub_10012701C();
      v40 = v82;
      sub_100127CBC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v65;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

      (*(v64 + 8))(v26, v41);
      v42 = sub_100127CB0();
      v44 = v40;
LABEL_8:
      result = v43(v42, v44);
      break;
  }

  return result;
}

uint64_t sub_1001251F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v111 = sub_100080FB4(&qword_1003CE8E0);
  sub_1000890DC();
  v120 = v4;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v118 = v6;
  sub_100080FB4(&qword_1003CE8E8);
  sub_1000890DC();
  v109 = v8;
  v110 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v117 = v10;
  v108 = sub_100080FB4(&qword_1003CE8F0);
  sub_1000890DC();
  v114 = v11;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_1000891AC();
  v123 = v13;
  v107 = sub_100080FB4(&qword_1003CE8F8);
  sub_1000890DC();
  v113 = v14;
  sub_100089118();
  __chkstk_darwin(v15);
  sub_1000891AC();
  v116 = v16;
  v104 = sub_100080FB4(&qword_1003CE900);
  sub_1000890DC();
  v112 = v17;
  sub_100089118();
  __chkstk_darwin(v18);
  sub_1000891AC();
  v115 = v19;
  v106 = sub_100080FB4(&qword_1003CE908);
  sub_1000890DC();
  v105 = v20;
  sub_100089118();
  __chkstk_darwin(v21);
  sub_1000891AC();
  v122 = v22;
  v125 = sub_100080FB4(&qword_1003CE910);
  sub_1000890DC();
  v121 = v23;
  sub_100089118();
  __chkstk_darwin(v24);
  sub_100089230();
  v124 = type metadata accessor for TransactionQuery.Kind(0);
  sub_100098B7C();
  v26 = __chkstk_darwin(v25);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v97 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v97 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v97 - v36;
  __chkstk_darwin(v35);
  v39 = &v97 - v38;
  v40 = a1[3];
  v126 = a1;
  sub_100086D24(a1, v40);
  sub_100126E78();
  v41 = v127;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    goto LABEL_11;
  }

  v100 = v37;
  v101 = v34;
  v102 = v31;
  v42 = v122;
  v103 = v28;
  v127 = v39;
  v43 = v125;
  v44 = KeyedDecodingContainer.allKeys.getter();
  sub_100162698(v44, 0);
  if (v46 == v47 >> 1)
  {
    v48 = v2;
    v49 = v121;
LABEL_10:
    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    sub_100080FB4(&qword_1003CC798);
    *v65 = v124;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v65, enum case for DecodingError.typeMismatch(_:), v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v48, v43);
LABEL_11:
    v66 = v126;
    return sub_100080F0C(v66);
  }

  v99 = 0;
  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    JUMPOUT(0x100125CE0);
  }

  v98 = *(v45 + v46);
  sub_100162694(v46 + 1);
  v51 = v50;
  v53 = v52;
  swift_unknownObjectRelease();
  v54 = v120;
  if (v51 != v53 >> 1)
  {
    v48 = v2;
    v49 = v121;
    v43 = v125;
    goto LABEL_10;
  }

  v55 = v124;
  v56 = v119;
  v57 = v99;
  switch(v98)
  {
    case 1:
      v129 = 1;
      sub_10012701C();
      v73 = v125;
      sub_100127CBC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
        v60 = sub_100127C90();
        v62 = v73;
        goto LABEL_23;
      }

      v72 = v104;
      sub_100127D34();
      KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      sub_100127D44();
      v90 = sub_100127D10();
      v91(v90);
      v92 = sub_100127C90();
      v93(v92, v125);
      sub_100127D20(&v133);
      goto LABEL_28;
    case 2:
      sub_100127D60();
      sub_100126FC8();
      sub_100127C7C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
        goto LABEL_22;
      }

      v72 = v107;
      sub_100127D34();
      KeyedDecodingContainer.decode(_:forKey:)();
      sub_100127D44();
      v82 = sub_100127D10();
      v83(v82);
      v84 = sub_100127C90();
      v85(v84, v125);
      sub_100127D20(&v134);
      goto LABEL_28;
    case 3:
      v130 = 3;
      sub_100126F74();
      sub_100127C7C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
        goto LABEL_22;
      }

      v72 = v108;
      sub_100127D34();
      KeyedDecodingContainer.decode(_:forKey:)();
      sub_100127D44();
      v86 = sub_100127D10();
      v87(v86);
      v88 = sub_100127C90();
      v89(v88, v125);
      sub_100127D20(&v135);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v71 = v127;
      sub_100126D68(v72, v127);
      goto LABEL_29;
    case 4:
      v131 = 4;
      sub_100126F20();
      v68 = v117;
      sub_100127C7C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
        goto LABEL_22;
      }

      swift_unknownObjectRelease();
      (*(v109 + 8))(v68, v110);
      v69 = sub_100127C90();
      v70(v69, v55);
      v71 = v127;
      goto LABEL_25;
    case 5:
      v132 = 5;
      sub_100126ECC();
      v74 = v118;
      sub_100127C7C();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
LABEL_22:
        v60 = sub_100127C90();
        v62 = v55;
        goto LABEL_23;
      }

      type metadata accessor for Date();
      sub_100127CC8();
      sub_100126C20(v77, v78);
      v79 = v103;
      v80 = v74;
      v81 = v111;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      (*(v54 + 8))(v80, v81);
      v94 = sub_100127C90();
      v95(v94, v125);
      swift_storeEnumTagMultiPayload();
      v71 = v127;
      sub_100126D68(v79, v127);
      v96 = v126;
      v56 = v119;
      goto LABEL_30;
    default:
      v128 = 0;
      sub_100127070();
      v58 = v42;
      v59 = v125;
      sub_100127CBC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v57)
      {
        v60 = sub_100127C90();
        v62 = v59;
LABEL_23:
        v61(v60, v62);
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      swift_unknownObjectRelease();
      (*(v105 + 8))(v58, v106);
      v75 = sub_100127C90();
      v76(v75, v59);
      v71 = v127;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_29:
      v96 = v126;
LABEL_30:
      sub_100126D68(v71, v56);
      v66 = v96;
      break;
  }

  return sub_100080F0C(v66);
}

uint64_t sub_100125CF8(uint64_t a1)
{
  v2 = sub_100127070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100125D34(uint64_t a1)
{
  v2 = sub_100127070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100125D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001245D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100125DA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001247E0();
  *a1 = result;
  return result;
}

uint64_t sub_100125DC8(uint64_t a1)
{
  v2 = sub_100126E78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100125E04(uint64_t a1)
{
  v2 = sub_100126E78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100125E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001248C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100125E70(uint64_t a1)
{
  v2 = sub_10012701C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100125EAC(uint64_t a1)
{
  v2 = sub_10012701C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100125EEC(uint64_t a1)
{
  v2 = sub_100126FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100125F28(uint64_t a1)
{
  v2 = sub_100126FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100125F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012496C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100125F90(uint64_t a1)
{
  v2 = sub_100126F74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100125FCC(uint64_t a1)
{
  v2 = sub_100126F74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100126008(uint64_t a1)
{
  v2 = sub_100126F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100126044(uint64_t a1)
{
  v2 = sub_100126F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100126084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001249DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001260B0(uint64_t a1)
{
  v2 = sub_100126ECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001260EC(uint64_t a1)
{
  v2 = sub_100126ECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100126158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6946746E65696C63 && a2 == 0xEC0000007265746CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x61727453636E7973 && a2 == 0xEC00000079676574;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_100126304(char a1)
{
  result = 0x6946746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x61727453636E7973;
      break;
    case 4:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001263C4(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003CE8C8);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100086D24(a1, a1[3]);
  sub_100126CC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = *v3;
  v17[14] = 0;
  sub_100126E24();
  sub_1000B9360();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for TransactionQuery(0);
    v17[13] = 1;
    type metadata accessor for ClientOverride(0);
    sub_100127CF8();
    sub_100126C20(v12, v13);
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100127D60();
    type metadata accessor for TransactionQuery.Kind(0);
    sub_100127CE0();
    sub_100126C20(v14, v15);
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[11] = v3[*(v11 + 28)];
    v17[10] = 3;
    sub_1000B90D0();
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[9] = 4;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100126638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33[0] = a2;
  type metadata accessor for TransactionQuery.Kind(0);
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_100093D40();
  v6 = v5 - v4;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v7);
  v9 = v33 - v8;
  sub_100080FB4(&qword_1003CE8A8);
  sub_1000890DC();
  v33[1] = v11;
  v33[2] = v10;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_100089230();
  v36 = type metadata accessor for TransactionQuery(0);
  sub_100098B7C();
  __chkstk_darwin(v13);
  sub_100093D40();
  v16 = (v15 - v14);
  v17 = a1[3];
  v35 = a1;
  sub_100086D24(a1, v17);
  sub_100126CC0();
  v18 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100080F0C(v35);
  }

  v34 = v6;
  v41 = 0;
  sub_100126D14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v16;
  *v16 = v42;
  type metadata accessor for ClientOverride(0);
  v40 = 1;
  sub_100127CF8();
  sub_100126C20(v21, v22);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v36;
  sub_100086E28(v9, v20 + *(v36 + 20));
  sub_100127D60();
  sub_100127CE0();
  sub_100126C20(v24, v25);
  v26 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100126D68(v26, v20 + v23[6]);
  v38 = 3;
  sub_1000B8F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + v23[7]) = v39;
  v37 = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v28;
  v30 = sub_100127CA0();
  v31(v30);
  v32 = (v20 + v23[8]);
  *v32 = v27;
  v32[1] = v29;
  sub_1001270C4(v20, v33[0], type metadata accessor for TransactionQuery);
  sub_100080F0C(v35);
  return sub_100126DCC(v20, type metadata accessor for TransactionQuery);
}

uint64_t sub_100126ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100126158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100126AF4(uint64_t a1)
{
  v2 = sub_100126CC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100126B30(uint64_t a1)
{
  v2 = sub_100126CC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100126B9C(uint64_t a1)
{
  *(a1 + 8) = sub_100126C20(&qword_1003CE278, type metadata accessor for TransactionQuery);
  result = sub_100126C20(&qword_1003CE898, type metadata accessor for TransactionQuery);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100126C20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100126C68(uint64_t a1)
{
  result = sub_100126C20(&qword_1003CE8A0, type metadata accessor for TransactionQuery);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100126CC0()
{
  result = qword_1003CE8B0;
  if (!qword_1003CE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE8B0);
  }

  return result;
}

unint64_t sub_100126D14()
{
  result = qword_1003CE8B8;
  if (!qword_1003CE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE8B8);
  }

  return result;
}

uint64_t sub_100126D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionQuery.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100126DCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100126E24()
{
  result = qword_1003CE8D0;
  if (!qword_1003CE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE8D0);
  }

  return result;
}

unint64_t sub_100126E78()
{
  result = qword_1003CE918;
  if (!qword_1003CE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE918);
  }

  return result;
}

unint64_t sub_100126ECC()
{
  result = qword_1003CE920;
  if (!qword_1003CE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE920);
  }

  return result;
}

unint64_t sub_100126F20()
{
  result = qword_1003CE928;
  if (!qword_1003CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE928);
  }

  return result;
}

unint64_t sub_100126F74()
{
  result = qword_1003CE930;
  if (!qword_1003CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE930);
  }

  return result;
}

unint64_t sub_100126FC8()
{
  result = qword_1003CE938;
  if (!qword_1003CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE938);
  }

  return result;
}

unint64_t sub_10012701C()
{
  result = qword_1003CE940;
  if (!qword_1003CE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE940);
  }

  return result;
}

unint64_t sub_100127070()
{
  result = qword_1003CE948;
  if (!qword_1003CE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE948);
  }

  return result;
}

uint64_t sub_1001270C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for TransactionQuery.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransactionQuery.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100127278);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100127308(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001273A4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransactionQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001274A8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001274E4()
{
  result = qword_1003CE988;
  if (!qword_1003CE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE988);
  }

  return result;
}

unint64_t sub_10012753C()
{
  result = qword_1003CE990;
  if (!qword_1003CE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE990);
  }

  return result;
}

unint64_t sub_100127594()
{
  result = qword_1003CE998;
  if (!qword_1003CE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE998);
  }

  return result;
}

unint64_t sub_1001275EC()
{
  result = qword_1003CE9A0;
  if (!qword_1003CE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9A0);
  }

  return result;
}

unint64_t sub_100127644()
{
  result = qword_1003CE9A8;
  if (!qword_1003CE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9A8);
  }

  return result;
}

unint64_t sub_10012769C()
{
  result = qword_1003CE9B0;
  if (!qword_1003CE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9B0);
  }

  return result;
}

unint64_t sub_1001276F4()
{
  result = qword_1003CE9B8;
  if (!qword_1003CE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9B8);
  }

  return result;
}

unint64_t sub_10012774C()
{
  result = qword_1003CE9C0;
  if (!qword_1003CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9C0);
  }

  return result;
}

unint64_t sub_1001277A4()
{
  result = qword_1003CE9C8;
  if (!qword_1003CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9C8);
  }

  return result;
}

unint64_t sub_1001277FC()
{
  result = qword_1003CE9D0;
  if (!qword_1003CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9D0);
  }

  return result;
}

unint64_t sub_100127854()
{
  result = qword_1003CE9D8;
  if (!qword_1003CE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9D8);
  }

  return result;
}

unint64_t sub_1001278AC()
{
  result = qword_1003CE9E0;
  if (!qword_1003CE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9E0);
  }

  return result;
}

unint64_t sub_100127904()
{
  result = qword_1003CE9E8;
  if (!qword_1003CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9E8);
  }

  return result;
}

unint64_t sub_10012795C()
{
  result = qword_1003CE9F0;
  if (!qword_1003CE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9F0);
  }

  return result;
}

unint64_t sub_1001279B4()
{
  result = qword_1003CE9F8;
  if (!qword_1003CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE9F8);
  }

  return result;
}

unint64_t sub_100127A0C()
{
  result = qword_1003CEA00;
  if (!qword_1003CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA00);
  }

  return result;
}

unint64_t sub_100127A64()
{
  result = qword_1003CEA08;
  if (!qword_1003CEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA08);
  }

  return result;
}

unint64_t sub_100127ABC()
{
  result = qword_1003CEA10;
  if (!qword_1003CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA10);
  }

  return result;
}

unint64_t sub_100127B14()
{
  result = qword_1003CEA18;
  if (!qword_1003CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA18);
  }

  return result;
}

unint64_t sub_100127B6C()
{
  result = qword_1003CEA20;
  if (!qword_1003CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA20);
  }

  return result;
}

unint64_t sub_100127BC4()
{
  result = qword_1003CEA28;
  if (!qword_1003CEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA28);
  }

  return result;
}

unint64_t sub_100127C1C()
{
  result = qword_1003CEA30;
  if (!qword_1003CEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEA30);
  }

  return result;
}

void *sub_100127D20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  v3[1] = v2;
  return v3;
}

uint64_t sub_100127D44()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_100127D6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100127E74(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x437972746E756F63;
  }

  return 0x656C61636F6CLL;
}

uint64_t sub_100127EC4(void *a1, void *a2)
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

  type metadata accessor for StorefrontInternal();

  return static Locale.== infix(_:_:)();
}

uint64_t type metadata accessor for StorefrontInternal()
{
  result = qword_1003CEA90;
  if (!qword_1003CEA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100127FC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Locale();
    v9 = a1 + *(a3 + 24);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_10012805C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = v5 + *(a4 + 24);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001280DC()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100128164(void *a1)
{
  v3 = sub_100080FB4(&qword_1003CEAD0);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100086D24(a1, a1[3]);
  sub_100128744();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for StorefrontInternal();
    v10[13] = 2;
    type metadata accessor for Locale();
    sub_100128798(&qword_1003CEAE0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100128324@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Locale();
  sub_1000890DC();
  v21 = v4;
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100080FB4(&qword_1003CEAE8);
  sub_1000890DC();
  v23 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for StorefrontInternal();
  __chkstk_darwin(v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100086D24(a1, a1[3]);
  sub_100128744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  v20 = a1;
  v13 = v24;
  v28 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v14;
  v27 = 1;
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v15;
  v26 = 2;
  sub_100128798(&qword_1003CEAF0);
  v19[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_100128A4C();
  v17(v16);
  (*(v21 + 32))(v12 + *(v10 + 24), v7, v13);
  sub_1001287DC(v12, v22);
  sub_100080F0C(v20);
  return sub_10009E910(v12);
}

uint64_t sub_100128664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100127D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012868C(uint64_t a1)
{
  v2 = sub_100128744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001286C8(uint64_t a1)
{
  v2 = sub_100128744();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100128738@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_100128744()
{
  result = qword_1003CEAD8;
  if (!qword_1003CEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEAD8);
  }

  return result;
}

uint64_t sub_100128798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001287DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorefrontInternal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for StorefrontInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10012890CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100128948()
{
  result = qword_1003CEAF8;
  if (!qword_1003CEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEAF8);
  }

  return result;
}

unint64_t sub_1001289A0()
{
  result = qword_1003CEB00;
  if (!qword_1003CEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEB00);
  }

  return result;
}

unint64_t sub_1001289F8()
{
  result = qword_1003CEB08;
  if (!qword_1003CEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEB08);
  }

  return result;
}

Class sub_100128AA0()
{
  v0 = type metadata accessor for Insecure.SHA1();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Insecure.SHA1Digest();
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001BEBD8();
  sub_100128C74();
  dispatch thunk of HashFunction.init()();
  v7 = sub_100128CCC();
  sub_1000BC808(v7, v8);
  v9 = sub_100128CCC();
  sub_1001C4B70(v9, v10);
  v11 = sub_100128CCC();
  sub_10008E168(v11, v12);
  dispatch thunk of HashFunction.finalize()();
  (*(v1 + 8))(v3, v0);
  v13 = sub_100128CCC();
  sub_10008E168(v13, v14);
  v15 = sub_1001BF094(v6);
  v17 = v16;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v15, v17);
  return isa;
}

unint64_t sub_100128C74()
{
  result = qword_1003CEB10;
  if (!qword_1003CEB10)
  {
    type metadata accessor for Insecure.SHA1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CEB10);
  }

  return result;
}

uint64_t sub_100128CD8(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[26] = v3;
  sub_1000B046C(v3);
  v2[27] = v4;
  v2[28] = sub_1000B05D0();
  v5 = type metadata accessor for DispatchQoS();
  v2[29] = v5;
  sub_1000B046C(v5);
  v2[30] = v6;
  v2[31] = sub_1000B05D0();
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v2[32] = v7;
  sub_1000B046C(v7);
  v2[33] = v8;
  v2[34] = sub_1000B05D0();
  v9 = type metadata accessor for ProcessPurchaseResultRequest();
  v2[35] = v9;
  sub_1000B046C(v9);
  v2[36] = v10;
  v2[37] = *(v11 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for SKLogger();
  v2[41] = sub_1000B05D0();
  v12 = sub_100080FB4(&unk_1003D0540);
  v2[42] = v12;
  sub_1000B046C(v12);
  v2[43] = v13;
  v2[44] = *(v14 + 64);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_100128F30, 0, 0);
}

uint64_t sub_100128F30()
{
  v61 = v0;
  URL.init(string:)();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[41];
  v4 = v0[39];
  v5 = v0[24];
  v6 = v0[25];
  v7 = sub_10007EDA4(v0[40], qword_1003F26C8);
  sub_10012A794(v7, v3, type metadata accessor for SKLogger);
  sub_10012ADB0();
  sub_10012A794(v6, v4, v8);
  sub_10012A7F8(v1, v2);
  v9 = v5;
  v10 = Logger.logObject.getter();
  type metadata accessor for Logger();
  sub_10012ADC8();
  (*(v11 + 8))(v3);
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v10, v12);
  v14 = v0[46];
  if (v13)
  {
    v56 = v0[45];
    v15 = v0[39];
    v54 = v0[24];
    v16 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v16 = 136315651;
    v17 = *v15;
    v18 = v15[1];

    sub_10012A868(v15);
    v19 = sub_100080210(v17, v18, &v59);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100080210(*(v54 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID), *(v54 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8), &v59);
    *(v16 + 22) = 2081;
    sub_10012A7F8(v14, v56);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_10012AD54(v14, &unk_1003D0540);
    v23 = sub_100080210(v20, v22, &v59);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v12, "[%s] Processing purchase result for %{public}s with install URL: %{private}s", v16, 0x20u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
    v24 = v0[39];

    sub_10012AD54(v14, &unk_1003D0540);
    sub_10012A868(v24);
  }

  v25 = sub_100129D34();
  v0[48] = v25;
  v26 = v25;
  v27 = [v25 error];
  if (v27)
  {
    v28 = v27;
    v29 = v0[25];
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v30 = v60;
    v0[20] = v59;
    v0[21] = v30;
    v31._object = 0x8000000100318B70;
    v31._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v31);
    v0[23] = v28;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v32 = v0[21];
    v33 = v29[1];
    v55 = *v29;
    v57 = v0[20];
    v34 = static os_log_type_t.error.getter();

    v35 = Logger.logObject.getter();

    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      swift_slowAlloc();
      sub_10012ADD4(4.8752e-34);
      v37._countAndFlagsBits = v55;
      v37._object = v33;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 8285;
      v38._object = 0xE200000000000000;
      String.append(_:)(v38);
      v39 = sub_100080210(v59, v60, &v58);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v40 = sub_100080210(v57, v32, &v58);

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v35, v34, "%{public}s%{public}s", v36, 0x16u);
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

LABEL_15:
    swift_willThrow();

    sub_10012AD54(v0[47], &unk_1003D0540);

    v42 = v0[1];

    return v42();
  }

  v41 = sub_10012A8C4(v26);
  v0[49] = v41;
  if (!v41)
  {
    v43 = v0[25];
    v44 = *v43;
    v45 = v43[1];
    v46 = static os_log_type_t.error.getter();

    v47 = Logger.logObject.getter();

    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      swift_slowAlloc();
      sub_10012ADD4(4.8752e-34);
      v49._countAndFlagsBits = v44;
      v49._object = v45;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 8285;
      v50._object = 0xE200000000000000;
      String.append(_:)(v50);
      v51 = sub_100080210(v59, v60, &v58);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_100080210(0xD00000000000002CLL, 0x8000000100318B40, &v58);
      _os_log_impl(&_mh_execute_header, v47, v46, "%{public}s%{public}s", v48, 0x16u);
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    swift_allocError();
    *v52 = 10;
    goto LABEL_15;
  }

  return _swift_task_switch(sub_100129690, 0, 0);
}

uint64_t sub_100129690()
{
  v1 = v0[47];
  v28 = v0[49];
  v2 = v0[45];
  v24 = v0[43];
  v3 = v0[38];
  v26 = v0[44];
  v27 = v0[37];
  v25 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[32];
  v30 = v0[31];
  v34 = v0[30];
  v35 = v0[29];
  v33 = v0[27];
  v7 = v0[25];
  v31 = v0[28];
  v32 = v0[26];
  v8 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_1001299F4;
  v23 = swift_continuation_init();
  sub_10008E5A4(0, &qword_1003CC1F0);
  (*(v4 + 104))(v5, enum case for DispatchQoS.QoSClass.background(_:), v6);
  v29 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v5, v6);
  sub_10012A7F8(v1, v2);
  sub_10012ADB0();
  sub_10012A794(v7, v3, v9);
  v10 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v11 = (v26 + *(v25 + 80) + v10) & ~*(v25 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v28;
  *(v12 + 24) = v8;
  sub_1000B71B8(v2, v12 + v10);
  sub_10012ABE0(v3, v12 + v11);
  *(v12 + ((v27 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v0[14] = sub_10012AC44;
  v0[15] = v12;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10019E0C0;
  v0[13] = &unk_100389888;
  v13 = _Block_copy(v0 + 10);
  v14 = v8;
  static DispatchQoS.unspecified.getter();
  v0[22] = _swiftEmptyArrayStorage;
  sub_10008E508(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10008E34C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v33 + 8))(v31, v32);
  (*(v34 + 8))(v30, v35);

  return _swift_continuation_await(v0 + 2, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1001299F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_100129C2C;
  }

  else
  {
    *(v1 + 408) = *(v1 + 128);
    *(v1 + 416) = *(v1 + 136);
    *(v1 + 432) = *(v1 + 152);
    v3 = sub_100129B28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100129B28()
{
  v1 = *(v0 + 376);

  sub_10012AD54(v1, &unk_1003D0540);

  v2 = *(v0 + 8);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);

  return v2(v5, v6, v3, v4);
}

uint64_t sub_100129C2C()
{
  sub_10012AD54(*(v0 + 376), &unk_1003D0540);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100129D34()
{
  sub_10008E5A4(0, &qword_1003CEB18);
  sub_10008E5A4(0, &qword_1003CEB20);
  result = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v0 && !result)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v2 = type metadata accessor for SKLogger();
    sub_10007EDA4(v2, qword_1003F26C8);
    _StringGuts.grow(_:)(42);

    v3._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v3);

    if (qword_1003CBE98 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v4 = static os_log_type_t.error.getter();

    v5 = Logger.logObject.getter();

    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v6 = 136446466;
      v7._countAndFlagsBits = 0xD000000000000028;
      v7._object = 0x8000000100318C00;
      String.append(_:)(v7);
      v8._countAndFlagsBits = 8285;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
      v9 = sub_100080210(91, 0xE100000000000000, &v12);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      v10 = sub_100080210(0xD000000000000028, 0x8000000100318C00, &v12);

      *(v6 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v11 = 10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10012A050(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  sub_10012A7F8(a3, v11);
  v13 = type metadata accessor for URL();
  v15 = 0;
  if (sub_100081D0C(v11, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v17 = String._bridgeToObjectiveC()();

  v18 = sub_100027E30(v12.super.isa, a2, v15, 2, v17, 1u, 0);

  sub_100080FB4(&unk_1003CE640);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v19 + 16))
  {
    v20 = *(v19 + 32);
    v21 = off_1003CB110;
    v58 = off_1003CB110;
    type metadata accessor for SKServerKey(0);
    sub_10008E508(&qword_1003CC3B8, type metadata accessor for SKServerKey);

    v22 = v21;
    AnyHashable.init<A>(_:)();
    sub_1001DAA40(&v60, v20, &v62);

    sub_10008E550(&v60);
    if (!v63)
    {

      sub_10012AD54(&v62, &unk_1003CCB70);
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      v23 = v58;
      v57 = v59;
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for SKLogger();
      sub_10007EDA4(v24, qword_1003F26C8);
      v60 = 0;
      v61 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v60 = 0x20646E756F46;
      v61 = 0xE600000000000000;
      v25 = *(v19 + 16);

      *&v62 = v25;
      v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v26);

      v27._object = 0x8000000100318BE0;
      v27._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v27);
      v28 = v61;
      v56 = v60;
      v30 = *a4;
      v29 = a4[1];
      v31 = static os_log_type_t.default.getter();

      v32 = Logger.logObject.getter();

      if (os_log_type_enabled(v32, v31))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v55 = v23;
        *&v62 = v34;
        *v33 = 136446466;
        v60 = 91;
        v61 = 0xE100000000000000;
        v35._countAndFlagsBits = v30;
        v35._object = v29;
        String.append(_:)(v35);
        v36._countAndFlagsBits = 8285;
        v36._object = 0xE200000000000000;
        String.append(_:)(v36);
        v37 = sub_100080210(v60, v61, &v62);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        v38 = sub_100080210(v56, v28, &v62);

        *(v33 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v32, v31, "%{public}s%{public}s", v33, 0x16u);
        swift_arrayDestroy();
        v23 = v55;
      }

      else
      {
      }

      TaskLocal.get()();
      v52 = v61;
      v53 = *(*(a5 + 64) + 40);
      *v53 = v60;
      v53[1] = v52;
      v54 = v57;
      v53[2] = v23;
      v53[3] = v54;
      return swift_continuation_throwingResume();
    }
  }

LABEL_14:
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for SKLogger();
  sub_10007EDA4(v39, qword_1003F26C8);
  v40 = *a4;
  v41 = a4[1];
  v42 = static os_log_type_t.error.getter();

  v43 = Logger.logObject.getter();

  if (os_log_type_enabled(v43, v42))
  {
    v44 = swift_slowAlloc();
    *&v62 = swift_slowAlloc();
    *v44 = 136446466;
    v60 = 91;
    v61 = 0xE100000000000000;
    v45._countAndFlagsBits = v40;
    v45._object = v41;
    String.append(_:)(v45);
    v46._countAndFlagsBits = 8285;
    v46._object = 0xE200000000000000;
    String.append(_:)(v46);
    v47 = sub_100080210(v60, v61, &v62);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2082;
    *(v44 + 14) = sub_100080210(0xD000000000000041, 0x8000000100318B90, &v62);
    _os_log_impl(&_mh_execute_header, v43, v42, "%{public}s%{public}s", v44, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  v48 = swift_allocError();
  *v49 = 10;
  sub_100080FB4(&qword_1003CCCB0);
  swift_allocError();
  *v50 = v48;
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_10012A794(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10012ADC8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10012A7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D0540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012A868(uint64_t a1)
{
  v2 = type metadata accessor for ProcessPurchaseResultRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012A8C4(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10012A930()
{
  v1 = sub_100080FB4(&unk_1003D0540);
  sub_1000B046C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for ProcessPurchaseResultRequest();
  v8 = *(*(v7 - 8) + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);

  v11 = type metadata accessor for URL();
  if (!sub_100081D0C(v0 + v4, 1, v11))
  {
    sub_10012ADC8();
    (*(v12 + 8))(v0 + v4, v11);
  }

  v13 = (v0 + v9 + *(v7 + 20));
  v14 = type metadata accessor for ClientOverride(0);
  if (!sub_100081D0C(v13, 1, v14))
  {
    v23 = v10;
    v15 = v13[1];
    if (v15 >> 60 != 15)
    {
      sub_10008E168(*v13, v15);
    }

    v16 = *(v14 + 28);
    v17 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v13 + v16, 3, v17))
    {
      sub_10012ADC8();
      (*(v18 + 8))(v13 + v16, v11);
    }

    v19 = *(v14 + 40);
    v20 = type metadata accessor for UUID();
    v10 = v23;
    if (!sub_100081D0C(v13 + v19, 1, v20))
    {
      sub_10012ADC8();
      (*(v21 + 8))(v13 + v19, v20);
    }
  }

  sub_10008E168(*(v0 + v9 + *(v7 + 28)), *(v0 + v9 + *(v7 + 28) + 8));

  return _swift_deallocObject(v0, ((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_10012ABE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessPurchaseResultRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012AC44()
{
  v1 = sub_100080FB4(&unk_1003D0540);
  sub_1000B046C(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ProcessPurchaseResultRequest();
  sub_1000B046C(v6);
  v8 = v7;
  v10 = v9;
  v11 = (v3 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = *(v0 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);

  return sub_10012A050(v13, v14, v0 + v3, (v0 + v11), v12);
}

uint64_t sub_10012AD3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012AD54(uint64_t a1, uint64_t *a2)
{
  sub_100080FB4(a2);
  sub_10012ADC8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10012ADF0@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ClientOverride.Server(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100080FB4(&unk_1003D20F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  type metadata accessor for Client(0);
  sub_1001A9D84();
  sub_1000ED008(v10, v8);
  v11 = type metadata accessor for ClientOverride(0);
  if (sub_100081D0C(v8, 1, v11) == 1)
  {
    v12 = sub_100086DC0(v8);
LABEL_4:
    v13 = sub_10012B0E4(v12);
    goto LABEL_5;
  }

  sub_10012B1EC(&v8[*(v11 + 28)], v4);
  sub_10012B250(v8, type metadata accessor for ClientOverride);
  v13 = sub_10012AFC8();
  v12 = sub_10012B250(v4, type metadata accessor for ClientOverride.Server);
  if (v13 == 4)
  {
    goto LABEL_4;
  }

LABEL_5:
  *a1 = v13;
  v14 = type metadata accessor for ClientTypeResponse();
  return sub_100086E28(v10, &a1[*(v14 + 20)]);
}

uint64_t sub_10012AFC8()
{
  v1 = type metadata accessor for ClientOverride.Server(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012B1EC(v0, v3);
  v4 = sub_100080FB4(&qword_1003CCB50);
  v5 = 3;
  switch(sub_100081D0C(v3, 3, v4))
  {
    case 1u:
      v5 = 4;
      break;
    case 2u:
      v5 = 2;
      break;
    case 3u:
      return v5;
    default:
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 8))(v3, v6);
      v5 = 0;
      break;
  }

  return v5;
}

uint64_t sub_10012B1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012B250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012B2B0(uint64_t a1)
{
  *(v2 + 352) = a1;
  *(v2 + 360) = v1;
  return _swift_task_switch(sub_10012B2D0, 0, 0);
}

uint64_t sub_10012B2D0()
{
  v68 = v0;
  if (qword_1003CBE58 != -1)
  {
LABEL_43:
    swift_once();
  }

  v1 = type metadata accessor for SKLogger();
  *(v0 + 368) = sub_10007EDA4(v1, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  *(v0 + 376) = qword_1003F2700;
  TaskLocal.get()();
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = static os_log_type_t.default.getter();

  v5 = Logger.logObject.getter();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v65 = v7;
    v66 = 91;
    v67 = 0xE100000000000000;
    v8._countAndFlagsBits = v3;
    v8._object = v2;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 8285;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    v10 = sub_100080210(v66, v67, &v65);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_100080210(0xD000000000000027, 0x8000000100318C30, &v65);
    _os_log_impl(&_mh_execute_header, v5, v4, "%{public}s%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  v11 = *(*(v0 + 360) + 16);
  type metadata accessor for LegacyRestoreCompletedTransactionsRequest();
  v60 = v11;
  sub_1001A8A94();
  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  v64 = v12;

  v18 = 0;
  v19 = _swiftEmptyDictionarySingleton;
  v61 = v17;
  v62 = v13;
  v63 = v0;
  if (v16)
  {
    while (1)
    {
LABEL_13:
      v21 = __clz(__rbit64(v16)) | (v18 << 6);
      v22 = *(*(v64 + 48) + 8 * v21);
      sub_100080F58(*(v64 + 56) + 32 * v21, v0 + 24);
      *(v0 + 16) = v22;
      sub_1000D3538(v0 + 16, v0 + 56);
      v23 = *(v0 + 56);
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      v27 = v22;

      sub_1000D3538(v0 + 16, v0 + 96);
      sub_10008B5D0((v0 + 104), (v0 + 136));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v19;
      v29 = sub_1000B6328(v24, v26);
      v31 = v19[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v34 = v29;
      v35 = v30;
      sub_100080FB4(&qword_1003CCA88);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
      {
        v36 = sub_1000B6328(v24, v26);
        if ((v35 & 1) != (v37 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v34 = v36;
      }

      if (v35)
      {

        v19 = v66;
        v38 = (*(v66 + 56) + 32 * v34);
        sub_100080F0C(v38);
        v0 = v63;
        sub_10008B5D0((v63 + 136), v38);
        sub_10008B69C(v63 + 16, &qword_1003CDB60);
      }

      else
      {
        v19 = v66;
        *(v66 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v39 = (v19[6] + 16 * v34);
        *v39 = v24;
        v39[1] = v26;
        v0 = v63;
        sub_10008B5D0((v63 + 136), (v19[7] + 32 * v34));
        sub_10008B69C(v63 + 16, &qword_1003CDB60);
        v40 = v19[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_42;
        }

        v19[2] = v42;
      }

      v16 &= v16 - 1;
      sub_100080F0C(v0 + 64);
      v17 = v61;
      v13 = v62;
      if (!v16)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_13;
    }
  }

  v43 = *(v0 + 360);

  v44 = *(v43 + 8);
  if (v44)
  {
    v45 = **(v0 + 360);
    v46 = &type metadata for String;
    v47 = v44;
  }

  else
  {
    v45 = 0;
    v47 = 0;
    v46 = 0;
    *(v0 + 184) = 0;
  }

  *(v0 + 168) = v45;
  *(v0 + 176) = v47;
  *(v0 + 192) = v46;
  if (v44)
  {
    sub_10008B5D0((v0 + 168), (v0 + 264));

    swift_isUniquelyReferenced_nonNull_native();
    v66 = v19;
    sub_10023E7C0();
    v19 = v66;
    v48 = v60;
  }

  else
  {
    sub_10008B69C(v0 + 168, &unk_1003CCB70);
    v49 = sub_1000B6328(0xD000000000000013, 0x8000000100316500);
    if (v50)
    {
      v51 = v49;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v66 = v19;
      v53 = v19[3];
      sub_100080FB4(&qword_1003CCA88);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v52, v53);
      v19 = v66;

      sub_10008B5D0((v19[7] + 32 * v51), (v0 + 200));
      _NativeDictionary._delete(at:)();
    }

    else
    {
      *(v0 + 216) = 0u;
      *(v0 + 200) = 0u;
    }

    v48 = v60;
    sub_10008B69C(v0 + 200, &unk_1003CCB70);
  }

  type metadata accessor for Request();
  v54 = qword_1003CC048;
  v55 = v48;
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = *(v0 + 352);
  v57 = sub_10021E3B0(v55, qword_1003F28B0, 2, 4, 1, v19);
  *(v0 + 384) = v57;
  *&v57[OBJC_IVAR____TtC9storekitd7Request_dialogContext] = v56;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v58 = swift_task_alloc();
  *(v0 + 392) = v58;
  *v58 = v0;
  v58[1] = sub_10012BA34;

  return sub_1000C8C1C();
}

uint64_t sub_10012BA34()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_10012BBB4;
  }

  else
  {
    v2 = sub_10012BB48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012BB48()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 8);

  return v5(v1, v2, v3, v4);
}

uint64_t sub_10012BBB4()
{
  v21 = v0;
  v1 = v0[50];
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);
  v0[39] = 0;
  v0[40] = 0xE000000000000000;
  v2._object = 0x8000000100318C60;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v2);
  v0[43] = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v4 = v0[39];
  v3 = v0[40];
  TaskLocal.get()();
  v6 = v0[41];
  v5 = v0[42];
  v7 = static os_log_type_t.error.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v18 = v10;
    v19 = 91;
    v20 = 0xE100000000000000;
    v11._countAndFlagsBits = v6;
    v11._object = v5;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 8285;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13 = sub_100080210(91, 0xE100000000000000, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_100080210(v4, v3, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v15 = v0[48];
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t type metadata accessor for LegacyRestoreCompletedTransactionsRequest()
{
  result = qword_1003CEB80;
  if (!qword_1003CEB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012BE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D0540);
    v9 = a1 + *(a3 + 24);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_10012BF28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D0540);
    v8 = v5 + *(a4 + 24);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

void sub_10012BFB4()
{
  sub_1000B784C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Client(319);
    if (v1 <= 0x3F)
    {
      sub_1000B77F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10012C07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = *(a1 + 16);
    sub_100213374(0, v1, 0);
    v4 = sub_10013A964();
    v6 = v5;
    v7 = v23;
    v8 = 0;
    v9 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_25;
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          sub_100213374(v11 > 1, v12 + 1, 1);
          v3 = v22;
          v9 = a1 + 56;
          v7 = v23;
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        v13 = &_swiftEmptyArrayStorage[2 * v12];
        v13[4] = 0xD000000000000016;
        v13[5] = 0x80000001003134D0;
        if (v3)
        {
          goto LABEL_29;
        }

        v14 = 1 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v9 + 8 * v10);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v4 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v10 << 6;
          v18 = v10 + 1;
          v19 = (a1 + 64 + 8 * v10);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_10013AC84(v4, v6, 0);
              v9 = a1 + 56;
              v7 = v23;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_10013AC84(v4, v6, 0);
          v9 = a1 + 56;
          v7 = v23;
        }

LABEL_19:
        if (++v8 == v7)
        {
          return;
        }

        v3 = 0;
        v6 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
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
  }
}

void sub_10012C2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = *(a1 + 16);
    sub_100213374(0, v1, 0);
    v4 = sub_10013A964();
    v6 = v25;
    v5 = a1;
    v7 = 0;
    v8 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(v5 + 32))
      {
        v9 = v4 >> 6;
        if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v5 + 36) != v2)
        {
          goto LABEL_31;
        }

        if (*(*(v5 + 48) + v4))
        {
          v10 = 0x4F6B6361626E6977;
        }

        else
        {
          v10 = 0x66664F636F486461;
        }

        if (*(*(v5 + 48) + v4))
        {
          v11 = 0xED00007372656666;
        }

        else
        {
          v11 = 0xEB00000000737265;
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          v24 = v2;
          v23 = v3;
          sub_100213374(v12 > 1, v13 + 1, 1);
          v3 = v23;
          v2 = v24;
          v8 = a1 + 56;
          v6 = v25;
          v5 = a1;
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        if (v3)
        {
          goto LABEL_35;
        }

        v15 = 1 << *(v5 + 32);
        if (v4 >= v15)
        {
          goto LABEL_32;
        }

        v16 = *(v8 + 8 * v9);
        if ((v16 & (1 << v4)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v5 + 36) != v2)
        {
          goto LABEL_34;
        }

        v17 = v16 & (-2 << (v4 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v9 << 6;
          v19 = v9 + 1;
          v20 = (a1 + 64 + 8 * v9);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_10013AC84(v4, v2, 0);
              v8 = a1 + 56;
              v6 = v25;
              v5 = a1;
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_25;
            }
          }

          sub_10013AC84(v4, v2, 0);
          v8 = a1 + 56;
          v6 = v25;
          v5 = a1;
        }

LABEL_25:
        if (++v7 == v6)
        {
          return;
        }

        v3 = 0;
        v2 = *(v5 + 36);
        v4 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

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
LABEL_35:
    __break(1u);
  }
}

unint64_t sub_10012C63C(char a1)
{
  result = 1363432531;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0x746E756F63736964;
      break;
    case 3:
      result = 0x69642D6563697270;
      break;
    case 4:
      result = 0x6E6F6973726576;
      break;
    case 5:
      result = 1702521203;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6574736F682D7369;
      break;
    case 8:
      result = 0x64692D6D657469;
      break;
    case 9:
      result = 25705;
      break;
    case 10:
      result = 0x61636F6C2D756369;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x6570795465646F6DLL;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0x726550664F6D756ELL;
      break;
    case 15:
      v3 = 1667854960;
      goto LABEL_15;
    case 16:
      result = 0x6D614E726566666FLL;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0x666F2D65726F7473;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      v3 = 1819568500;
LABEL_15:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 21:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

void sub_10012C8E0(void *a1, uint64_t a2, void *a3)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10013B7FC();
  }

  v251 = v249;
  v252 = v250;
  if (!*(&v250 + 1))
  {
    goto LABEL_233;
  }

  v237 = sub_100080FB4(&qword_1003CC200);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_234:

    goto LABEL_235;
  }

  v6 = 0xD00000000000001BLL;
  sub_1001DA990(0xD000000000000015, 0x8000000100319050, v247, &v251);

  if (!*(&v252 + 1))
  {
LABEL_233:

    sub_10013B1E8(&v251, &unk_1003CCB70);
LABEL_235:
    sub_100098AD0();
    return;
  }

  v235 = sub_100080FB4(&qword_1003CEDD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_234;
  }

  v7 = v249;
  sub_10013A1C4(a1);
  v229 = *(v249 + 16);
  if (!v229)
  {

    goto LABEL_237;
  }

  v8 = 0;
  sub_10013BE28();
  sub_10013B560();
  v228 = v249 + 32;
  sub_1000C446C();
  v226 = v9;
  v10 = &unk_1002ED050;
  v225 = a1;
  v242 = _swiftEmptyArrayStorage;
  v232 = a2;
  v227 = v249;
  while (1)
  {
    if (v8 >= *(v7 + 16))
    {
      goto LABEL_246;
    }

    v11 = *(v228 + 8 * v8);

    v243 = v11;
    sub_1001DA990(v3, 0xE900000000000065, v11, &v251);
    if (*(&v252 + 1))
    {
      v12 = sub_10013BCA4();
      sub_10008B5D0(v12, v13);
      swift_isUniquelyReferenced_nonNull_native();
      *&v247 = _swiftEmptyDictionarySingleton;
      sub_10023E7C0();
      v14 = v247;
    }

    else
    {
      sub_10013B1E8(&v251, &unk_1003CCB70);
      v14 = _swiftEmptyDictionarySingleton;
      sub_1000B6328(v3, 0xE900000000000065);
      if (v15)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        *&v247 = _swiftEmptyDictionarySingleton;
        v16 = _swiftEmptyDictionarySingleton[3];
        sub_100080FB4(&qword_1003CCA88);
        sub_10013B608();
        sub_10013B560();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v16);
        sub_10013BF1C();
        v18 = sub_10013BADC();
        sub_10008B5D0(v18, &v249);
        sub_10013B5F4();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
        v14 = _swiftEmptyDictionarySingleton;
      }

      sub_10013B1E8(&v249, &unk_1003CCB70);
    }

    sub_1001DA990(0x656C746974, 0xE500000000000000, v11, &v251);
    if (*(&v252 + 1))
    {
      v19 = sub_10013BCA4();
      sub_10008B5D0(v19, v20);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10013BB9C();
      sub_10023E7C0();
    }

    else
    {
      sub_10013B1E8(&v251, &unk_1003CCB70);
      sub_1000B6328(1701667182, 0xE400000000000000);
      if (v21)
      {
        sub_1000C44AC();
        swift_isUniquelyReferenced_nonNull_native();
        *&v247 = v14;
        v22 = v14[3];
        sub_100080FB4(&qword_1003CCA88);
        sub_10013B608();
        sub_10013B560();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v22);
        sub_10013BF1C();
        v24 = sub_10013BADC();
        sub_10008B5D0(v24, &v249);
        sub_10013B5F4();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      sub_10013B1E8(&v249, &unk_1003CCB70);
    }

    sub_1001DA990(0x7470697263736564, 0xEB000000006E6F69, v11, &v251);
    if (*(&v252 + 1))
    {
      if (sub_10013BD28())
      {
        v25 = v249;
        sub_100080FB4(&unk_1003CEE30);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1002ED290;
        *(v26 + 32) = 0x647261646E617473;
        *(v26 + 40) = 0xE800000000000000;
        *(v26 + 48) = v25;
        sub_10013B560();
        v27 = Dictionary.init(dictionaryLiteral:)();
        *(&v252 + 1) = sub_100080FB4(&unk_1003D1CC0);
        *&v251 = v27;
        v28 = sub_10013BCA4();
        sub_10008B5D0(v28, v29);
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013BB9C();
        sub_10023E7C0();
      }
    }

    else
    {
      sub_10013B1E8(&v251, &unk_1003CCB70);
    }

    sub_1001DA990(v6 - 10, 0x8000000100319070, v243, &v251);
    if (*(&v252 + 1))
    {
      if (swift_dynamicCast())
      {
        v30 = v249;
      }

      else
      {
        v30 = 0;
      }

      v31 = &unk_1002ED050;
    }

    else
    {
      v31 = v10;
      sub_10013B1E8(&v251, &unk_1003CCB70);
      v30 = 0;
    }

    *(&v252 + 1) = &type metadata for Bool;
    LOBYTE(v251) = v30;
    v32 = sub_10013BCA4();
    sub_10008B5D0(v32, v33);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10013BB9C();
    sub_10023E7C0();
    v34 = v247;
    sub_1001DA990(v6 - 7, 0x8000000100319090, v243, &v251);
    v35 = sub_10013BCA4();
    sub_10013B104(v35, v36, &unk_1003CCB70);
    if (*(&v250 + 1))
    {
      sub_10013BA88();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10013B920();
      sub_10023E7C0();
      v10 = v31;
    }

    else
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
      sub_1000B6328(v6 - 7, 0x8000000100319090);
      v10 = v31;
      if (v37)
      {
        sub_1000C44AC();
        swift_isUniquelyReferenced_nonNull_native();
        *&v245 = v34;
        v38 = *(v34 + 24);
        sub_100080FB4(&qword_1003CCA88);
        sub_10013B794();
        sub_10013B560();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v39, v38);
        sub_10013B8E0();
        v40 = sub_10013BADC();
        sub_10008B5D0(v40, &v247);
        sub_1001073F0();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013BCC8();
      }

      sub_10013B1E8(&v247, &unk_1003CCB70);
    }

    if (*(&v252 + 1))
    {
      *(&v250 + 1) = &type metadata for String;
      *&v249 = v6;
      v41 = v226;
    }

    else
    {
      *(&v250 + 1) = &type metadata for String;
      if (v30)
      {
        *&v249 = 0x736E6F432D6E6F4ELL;
        v41 = 0xEE00656C62616D75;
      }

      else
      {
        *&v249 = 0x62616D75736E6F43;
        v41 = 0xEA0000000000656CLL;
      }
    }

    *(&v249 + 1) = v41;
    sub_10013BA88();
    swift_isUniquelyReferenced_nonNull_native();
    sub_10013B920();
    sub_10023E7C0();
    v236 = v245;
    sub_1001DA990(0x666F2D65726F7473, 0xEC00000073726566, v243, &v249);
    v42 = _swiftEmptyDictionarySingleton;
    if (!*(&v250 + 1))
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
LABEL_52:
      sub_10013B7FC();
LABEL_53:
      sub_10013B1E8(&v249, &unk_1003CCB70);
      v43 = 0;
      goto LABEL_54;
    }

    sub_10013BA00();
    if ((swift_dynamicCast() & 1) == 0 || !v247)
    {
      goto LABEL_52;
    }

    sub_1001DA990(1363432531, 0xE400000000000000, v247, &v249);

    if (!*(&v250 + 1))
    {
      goto LABEL_53;
    }

    sub_10013BA00();
    v43 = swift_dynamicCast() ? v247 : 0;
LABEL_54:
    sub_1001DA990(0x6574736F682D7369, 0xE900000000000064, v243, &v249);
    if (*(&v250 + 1))
    {
      sub_10013BA00();
      if (swift_dynamicCast() && (v247 & 1) != 0)
      {
        sub_1001DA990(0x6E6F6973726576, 0xE700000000000000, v243, &v247);
        if (v248)
        {
          v44 = sub_10013BA00();
          sub_10008B5D0(v44, v45);
          if (v43)
          {

            sub_1001DA990(1702521203, 0xE400000000000000, v43, &v245);

            if (*(&v246 + 1))
            {
              sub_10008B5D0(&v245, &v247);
              sub_100080F58(&v249, &v245);
              swift_isUniquelyReferenced_nonNull_native();
              *&v244 = _swiftEmptyDictionarySingleton;
              sub_10023E7C0();
              v46 = v244;
              sub_100080F58(&v247, &v245);
              swift_isUniquelyReferenced_nonNull_native();
              *&v244 = v46;
              sub_10023E7C0();
              *(&v246 + 1) = v237;
              *&v245 = v244;
              sub_10008B5D0(&v245, &v244);
              swift_isUniquelyReferenced_nonNull_native();
              sub_10023E7C0();
              sub_100080F0C(&v247);
              sub_100080F0C(&v249);
              goto LABEL_72;
            }

            sub_100080F0C(&v249);
          }

          else
          {
            sub_100080F0C(&v249);
            v245 = 0u;
            v246 = 0u;
          }

          v47 = &v245;
        }

        else
        {
          v47 = &v247;
        }

        sub_10013B1E8(v47, &unk_1003CCB70);
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v48 = type metadata accessor for SKLogger();
        sub_10007EDA4(v48, qword_1003F26C8);
        v8 = a3;

        v233 = static os_log_type_t.error.getter();
        sub_1000B7E4C();
        v49 = swift_allocObject();
        *(v49 + 16) = a2;
        *(v49 + 24) = a3;
        sub_1000B7E4C();
        v50 = swift_allocObject();
        v230 = v6 + 22;
        *(v50 + 16) = v6 + 22;
        *(v50 + 24) = 0x80000001003190F0;

        v239 = Logger.logObject.getter();
        sub_100106B7C();
        v51 = swift_allocObject();
        *(v51 + 16) = 34;
        sub_100106B7C();
        v6 = swift_allocObject();
        *(v6 + 16) = 8;
        sub_1000B7E4C();
        v52 = swift_allocObject();
        *(v52 + 16) = sub_1001063F4;
        *(v52 + 24) = v49;
        sub_1000B7E4C();
        v53 = swift_allocObject();
        *(v53 + 16) = sub_1001063F0;
        *(v53 + 24) = v52;
        sub_100106B7C();
        v54 = swift_allocObject();
        *(v54 + 16) = 34;
        sub_100106B7C();
        v55 = swift_allocObject();
        *(v55 + 16) = 8;
        sub_1000B7E4C();
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1001063F8;
        *(v56 + 24) = v50;
        sub_1000B7E4C();
        v57 = swift_allocObject();
        *(v57 + 16) = sub_1001063F0;
        *(v57 + 24) = v56;
        sub_100080FB4(&qword_1003CE628);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1002F0B70;
        *(v58 + 32) = sub_1001063FC;
        *(v58 + 40) = v51;
        *(v58 + 48) = sub_1001063FC;
        *(v58 + 56) = v6;
        *(v58 + 64) = sub_10010620C;
        *(v58 + 72) = v53;
        *(v58 + 80) = sub_1001063FC;
        *(v58 + 88) = v54;
        *(v58 + 96) = sub_1001063FC;
        *(v58 + 104) = v55;
        *(v58 + 112) = sub_10010620C;
        *(v58 + 120) = v57;
        swift_setDeallocating();
        sub_10009E36C();
        if (os_log_type_enabled(v239, v233))
        {
          sub_1000B7DC8();
          swift_slowAlloc();
          *&v247 = sub_10008BF58();
          *v6 = 136446466;
          sub_10013BCB0();
          a2 = v232;
          v59._countAndFlagsBits = v232;
          v59._object = a3;
          String.append(_:)(v59);
          sub_10009F134();
          v60 = sub_100080210(v249, *(&v249 + 1), &v247);

          *(v6 + 4) = v60;
          sub_10013BC98();
          *(v6 + 14) = sub_100080210(v230, 0x80000001003190F0, &v247);
          sub_10013BE10(&_mh_execute_header, v239, v233, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_100081C28();
          sub_10008BF3C();
        }

        else
        {

          a2 = v232;
        }

        sub_10013BBAC();
        sub_10013B560();
        v10 = &unk_1002ED050;
        v42 = _swiftEmptyDictionarySingleton;
      }
    }

    else
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
    }

LABEL_72:
    sub_1001DA990(0xD00000000000001BLL, 0x80000001003190B0, v243, &v249);
    if (*(&v250 + 1))
    {
      sub_10013B674();
      *&v245 = _swiftEmptyDictionarySingleton;
      sub_10013BA7C();
      sub_10023E7C0();
      v61 = v245;
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
      v65 = sub_10013B910();
      v61 = _swiftEmptyDictionarySingleton;
      sub_1000B6328(v65, v66);
      if (v67)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        *&v245 = _swiftEmptyDictionarySingleton;
        v68 = _swiftEmptyDictionarySingleton[3];
        sub_100080FB4(&qword_1003CCA88);
        sub_10013B794();
        sub_10013B560();
        v69 = v68;
        v42 = _swiftEmptyDictionarySingleton;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v69);
        sub_10013B8E0();
        v71 = sub_10013BADC();
        sub_10008B5D0(v71, &v247);
        sub_10013B5F4();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013BCC8();
        v61 = _swiftEmptyDictionarySingleton;
      }

      sub_10013B1E8(&v247, &unk_1003CCB70);
      if (!v43)
      {
LABEL_80:
        sub_10013B7FC();
        goto LABEL_81;
      }
    }

    v62 = sub_10013BC80();
    sub_1001DA990(v62, v63, v43, v64);

    if (*(&v250 + 1))
    {
      sub_10013BA88();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10013B920();
      sub_10023E7C0();
      v61 = v245;
      goto LABEL_85;
    }

LABEL_81:
    sub_10013B1E8(&v249, &unk_1003CCB70);
    v72 = sub_10013BC80();
    sub_1000B6328(v72, v73);
    if (v74)
    {
      sub_1000C44AC();
      swift_isUniquelyReferenced_nonNull_native();
      *&v245 = v61;
      v75 = v61[3];
      sub_100080FB4(&qword_1003CCA88);
      v76 = sub_10013B794();
      v77 = v75;
      v42 = _swiftEmptyDictionarySingleton;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v76, v77);
      sub_10013B8E0();
      v78 = sub_10013BADC();
      sub_10008B5D0(v78, &v247);
      sub_10013B5F4();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10013BCC8();
    }

    sub_10013B1E8(&v247, &unk_1003CCB70);
    if (!v43)
    {
      sub_10013B7FC();
      goto LABEL_88;
    }

LABEL_85:
    v79 = sub_10013BA0C();
    sub_1001DA990(v79, v80, v43, v81);

    if (*(&v250 + 1))
    {
      sub_10013BA88();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10013B920();
      sub_10023E7C0();
      v61 = v245;
      goto LABEL_92;
    }

LABEL_88:
    sub_10013B1E8(&v249, &unk_1003CCB70);
    v82 = sub_10013B524();
    sub_1000B6328(v82, v83);
    if (v84)
    {
      sub_1000C44AC();
      swift_isUniquelyReferenced_nonNull_native();
      *&v245 = v61;
      v85 = v61[3];
      sub_100080FB4(&qword_1003CCA88);
      v86 = sub_10013B794();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v86, v85);
      sub_10013B8E0();
      v87 = sub_10013BADC();
      sub_10008B5D0(v87, &v247);
      sub_10013B5F4();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10013BCC8();
    }

    sub_10013B1E8(&v247, &unk_1003CCB70);
LABEL_92:
    sub_1001DA990(0x61636F6C2D756369, 0xEA0000000000656CLL, v243, &v249);
    v240 = v61;
    if (*(&v250 + 1))
    {
      sub_10013BA00();
      if (sub_10013BD28())
      {
        v249 = v247;
        *&v247 = 0x636E657272756340;
        *(&v247 + 1) = 0xEA00000000003D79;
        sub_100106050();
        v88 = StringProtocol.components<A>(separatedBy:)();

        v89 = sub_10012EC94(v88);
        v91 = v90;
        sub_10013B560();

        if (v91)
        {
          *(&v250 + 1) = &type metadata for String;
          *&v249 = v89;
          *(&v249 + 1) = v91;
          sub_10013BA88();
          swift_isUniquelyReferenced_nonNull_native();
          *&v245 = v240;
          sub_10013BA7C();
          sub_10023E7C0();
          v92 = v245;
          goto LABEL_102;
        }
      }
    }

    else
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
    }

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v93 = type metadata accessor for SKLogger();
    sub_10007EDA4(v93, qword_1003F26C8);

    v234 = static os_log_type_t.error.getter();
    sub_1000B7E4C();
    v94 = swift_allocObject();
    *(v94 + 16) = a2;
    *(v94 + 24) = a3;
    sub_1000B7E4C();
    v95 = swift_allocObject();
    v231 = v6 + 2;
    *(v95 + 16) = v6 + 2;
    *(v95 + 24) = 0x80000001003190D0;

    v96 = Logger.logObject.getter();
    sub_100106B7C();
    v97 = swift_allocObject();
    *(v97 + 16) = 34;
    sub_100106B7C();
    v98 = swift_allocObject();
    v6 = 8;
    *(v98 + 16) = 8;
    sub_1000B7E4C();
    v99 = swift_allocObject();
    *(v99 + 16) = sub_100105E94;
    *(v99 + 24) = v94;
    sub_1000B7E4C();
    v88 = swift_allocObject();
    *(v88 + 16) = sub_100105EAC;
    *(v88 + 24) = v99;
    sub_100106B7C();
    v100 = swift_allocObject();
    *(v100 + 16) = 34;
    sub_100106B7C();
    v101 = swift_allocObject();
    *(v101 + 16) = 8;
    sub_1000B7E4C();
    v102 = swift_allocObject();
    *(v102 + 16) = sub_100105E9C;
    *(v102 + 24) = v95;
    sub_1000B7E4C();
    v103 = swift_allocObject();
    *(v103 + 16) = sub_1001063F0;
    *(v103 + 24) = v102;
    sub_100080FB4(&qword_1003CE628);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002F0B70;
    *(v8 + 32) = sub_100105EA4;
    *(v8 + 40) = v97;
    *(v8 + 48) = sub_1001063FC;
    *(v8 + 56) = v98;
    *(v8 + 64) = sub_100105EB4;
    *(v8 + 72) = v88;
    *(v8 + 80) = sub_1001063FC;
    *(v8 + 88) = v100;
    *(v8 + 96) = sub_1001063FC;
    *(v8 + 104) = v101;
    *(v8 + 112) = sub_10010620C;
    *(v8 + 120) = v103;
    swift_setDeallocating();
    sub_10009E36C();
    if (os_log_type_enabled(v96, v234))
    {
      sub_1000B7DC8();
      v104 = swift_slowAlloc();
      v105 = sub_10008E670();
      LOBYTE(v88) = v105;
      *&v247 = v105;
      *v104 = 136446466;
      sub_10013BCB0();
      v6 = v232;
      v106._countAndFlagsBits = v232;
      v106._object = a3;
      String.append(_:)(v106);
      sub_10009F134();
      v107 = sub_100080210(v249, *(&v249 + 1), &v247);

      *(v104 + 4) = v107;
      *(v104 + 12) = 2082;
      *(v104 + 14) = sub_100080210(v231, 0x80000001003190D0, &v247);
      _os_log_impl(&_mh_execute_header, v96, v234, "%{public}s%{public}s", v104, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    a2 = v232;
    sub_10013BBAC();
    sub_10013B560();
    v10 = &unk_1002ED050;
    v42 = _swiftEmptyDictionarySingleton;
    v92 = v240;
LABEL_102:
    sub_1001DA990(0x746E756F63736964, 0xE900000000000073, v243, &v249);
    if (!*(&v250 + 1))
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
      goto LABEL_216;
    }

    sub_10013BA00();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_216;
    }

    v241 = v92;
    v108 = *(v247 + 16);
    if (v108)
    {
      break;
    }

    v109 = _swiftEmptyArrayStorage;
LABEL_215:

    *(&v250 + 1) = v235;
    *&v249 = v109;
    sub_10013BA88();
    swift_isUniquelyReferenced_nonNull_native();
    *&v245 = v241;
    sub_10023E7C0();
    v92 = v245;
    a2 = v232;
    sub_10013BBAC();
LABEL_216:
    sub_100080FB4(&unk_1003CEE20);
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_1002ED290;
    *(v209 + 32) = v92;
    *(&v250 + 1) = v235;
    *&v249 = v209;
    sub_10013BA88();
    swift_isUniquelyReferenced_nonNull_native();
    *&v245 = v236;
    sub_10013BA7C();
    sub_10023E7C0();
    *(&v250 + 1) = v237;
    *&v249 = v245;
    sub_10013B674();
    *&v245 = _swiftEmptyDictionarySingleton;
    sub_10023E7C0();
    v3 = v245;
    v210 = sub_10013BB74();
    sub_1001DA990(v210, v211, v243, v212);
    if (!*(&v250 + 1))
    {
      sub_10013B1E8(&v249, &unk_1003CCB70);
LABEL_220:
      v213 = sub_10013BB74();
      sub_1001DA990(v213, v214, v243, v215);

      if (*(&v250 + 1))
      {
        sub_10013BA00();
        if (swift_dynamicCast())
        {
          *&v249 = v247;
          v216 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v250 + 1) = &type metadata for String;
          *&v249 = v216;
          *(&v249 + 1) = v217;
LABEL_225:
          sub_10013BA88();
          swift_isUniquelyReferenced_nonNull_native();
          *&v245 = v3;
          sub_10013BA7C();
          goto LABEL_226;
        }
      }

      else
      {
        sub_10013B1E8(&v249, &unk_1003CCB70);
      }

      *(&v250 + 1) = &type metadata for String;
      *&v249 = 0;
      *(&v249 + 1) = 0xE000000000000000;
      goto LABEL_225;
    }

    sub_10013BA00();
    if ((sub_10013BD28() & 1) == 0)
    {
      goto LABEL_220;
    }

    *(&v250 + 1) = &type metadata for String;
    v249 = v247;
    sub_10013BA88();
    swift_isUniquelyReferenced_nonNull_native();
    *&v245 = v3;
LABEL_226:
    sub_10023E7C0();
    v218 = v245;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10013BE28();
    if (v219)
    {
      v220 = v242;
    }

    else
    {
      sub_10013B930();
      sub_1001D9A40();
      v220 = v223;
    }

    v222 = v220[2];
    v221 = v220[3];
    if (v222 >= v221 >> 1)
    {
      sub_10013B6A4(v221);
      sub_1001D9A40();
      v220 = v224;
    }

    ++v8;
    v220[2] = v222 + 1;
    v242 = v220;
    v220[v222 + 4] = v218;
    sub_10013B1E8(&v251, &unk_1003CCB70);
    v7 = v227;
    if (v8 == v229)
    {

LABEL_237:

      return;
    }
  }

  v8 = v247 + 32;
  v109 = _swiftEmptyArrayStorage;
  while (1)
  {
    v6 = *v8;
    v110 = *(*v8 + 16);

    if (v110 && (v111 = sub_10013BC80(), v113 = sub_1000B6328(v111, v112), (v114 & 1) != 0))
    {
      sub_10013B8B8(v113);
      v115 = sub_10013B674();
      *&v245 = _swiftEmptyDictionarySingleton;
      v116 = sub_10013BC80();
      sub_1000B6328(v116, v117);
      v118 = _swiftEmptyDictionarySingleton[2];
      v120 = (v119 & 1) == 0;
      v121 = v118 + v120;
      if (__OFADD__(v118, v120))
      {
        goto LABEL_239;
      }

      sub_100107168();
      sub_100080FB4(&qword_1003CCA88);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v115, v121))
      {
        sub_1000B6328(0x6563697270, 0xE500000000000000);
        sub_10013B654();
        if (!v122)
        {
          goto LABEL_253;
        }
      }

      v42 = v245;
      if (v88)
      {
        sub_10013B598();
      }

      else
      {
        sub_10013B444();
        *v140 = 0x6563697270;
        sub_10013B4F8(v140);
        if (v133)
        {
          goto LABEL_247;
        }

        v42[2] = v141;
      }
    }

    else
    {
      v123 = sub_10013BC80();
      sub_1000B6328(v123, v124);
      if (v125)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013B664();
        sub_100080FB4(&qword_1003CCA88);
        v126 = sub_10013B608();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v126, _swiftEmptyDictionarySingleton);
        sub_10013B6D8();
        sub_10013B9C4();
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      sub_10013B89C();
    }

    if (*(v6 + 16) && (v127 = sub_10013BA0C(), v129 = sub_1000B6328(v127, v128), (v130 & 1) != 0))
    {
      sub_10013B8B8(v129);
      sub_10013B674();
      sub_10013BB90();
      v131 = sub_10013B524();
      sub_1000B6328(v131, v132);
      sub_10013B584();
      if (v133)
      {
        goto LABEL_240;
      }

      sub_100107168();
      sub_100080FB4(&qword_1003CCA88);
      if (sub_10013B6B8())
      {
        v134 = sub_10013B524();
        sub_1000B6328(v134, v135);
        sub_10013B654();
        if (!v122)
        {
          goto LABEL_253;
        }
      }

      v42 = v245;
      if (v88)
      {
        sub_10013B598();
      }

      else
      {
        sub_10013B444();
        *v142 = 0x726F466563697270;
        sub_10013B4F8(v142);
        if (v133)
        {
          goto LABEL_248;
        }

        v42[2] = v143;
      }
    }

    else
    {
      v136 = sub_10013B524();
      sub_1000B6328(v136, v137);
      if (v138)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013B664();
        sub_100080FB4(&qword_1003CCA88);
        v139 = sub_10013B608();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v139, v42);
        sub_10013B6D8();
        sub_10013B9C4();
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      sub_10013B89C();
    }

    if (*(v6 + 16) && (v144 = sub_10013B910(), v146 = sub_1000B6328(v144, v145), (v147 & 1) != 0))
    {
      sub_10013B8B8(v146);
      sub_10013B674();
      sub_10013BB90();
      v148 = sub_10013B910();
      sub_1000B6328(v148, v149);
      sub_10013B584();
      if (v133)
      {
        goto LABEL_241;
      }

      sub_100107168();
      sub_100080FB4(&qword_1003CCA88);
      if (sub_10013B6B8())
      {
        sub_1000B6328(0xD00000000000001BLL, 0x80000001003190B0);
        sub_10013B654();
        if (!v122)
        {
          goto LABEL_253;
        }
      }

      v42 = v245;
      if (v88)
      {
        sub_10013B598();
      }

      else
      {
        sub_10013B444();
        *v155 = 0xD00000000000001BLL;
        sub_10013B4F8(v155);
        if (v133)
        {
          goto LABEL_249;
        }

        v42[2] = v156;
      }

      v154 = 0xEC00000073646F69;
    }

    else
    {
      v150 = sub_10013B910();
      sub_1000B6328(v150, v151);
      if (v152)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013B664();
        sub_100080FB4(&qword_1003CCA88);
        v153 = sub_10013B608();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v153, v42);
        sub_10013B6D8();
        sub_10013B9C4();
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      v154 = 0xEC00000073646F69;
      sub_10013B89C();
    }

    LOBYTE(v88) = 110;
    if (*(v6 + 16) && (v157 = sub_100093DD0(), v159 = sub_1000B6328(v157, v158), (v160 & 1) != 0))
    {
      sub_10013B8B8(v159);
      sub_10013B674();
      sub_10013BB90();
      v161 = sub_100093DD0();
      sub_1000B6328(v161, v162);
      sub_10013B584();
      if (v133)
      {
        goto LABEL_242;
      }

      sub_100107168();
      sub_100080FB4(&qword_1003CCA88);
      if (sub_10013B6B8())
      {
        sub_1000B6328(0x726550664F6D756ELL, 0xEC00000073646F69);
        sub_10013B654();
        if (!v122)
        {
          goto LABEL_253;
        }

        v154 = v163;
      }

      v42 = v245;
      sub_10013B444();
      *v168 = 0x726550664F6D756ELL;
      sub_10013B4F8(v168);
      if (v133)
      {
        goto LABEL_250;
      }

      v42[2] = v169;
      sub_10013BE64();
    }

    else
    {
      v164 = sub_100093DD0();
      sub_1000B6328(v164, v165);
      if (v166)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013B664();
        sub_100080FB4(&qword_1003CCA88);
        v167 = sub_10013B608();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v167, v42);
        sub_10013B6D8();
        sub_10013B9C4();
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      sub_10013BE64();
      sub_10013B89C();
    }

    if (*(v6 + 16) && (v170 = sub_1000B6328(v154, 0xE800000000000000), (v171 & 1) != 0))
    {
      sub_10013B8B8(v170);
      sub_10013B674();
      sub_10013BB90();
      sub_1000B6328(v154, 0xE800000000000000);
      sub_10013B584();
      if (v133)
      {
        goto LABEL_243;
      }

      sub_100107168();
      sub_100080FB4(&qword_1003CCA88);
      if (sub_10013B6B8())
      {
        sub_1000B6328(0x6570795465646F6DLL, 0xE800000000000000);
        sub_10013B654();
        if (!v122)
        {
          goto LABEL_253;
        }

        v154 = v172;
      }

      v42 = v245;
      sub_10013B444();
      *v203 = 0x6570795465646F6DLL;
      sub_10013B4F8(v203);
      if (v133)
      {
        goto LABEL_251;
      }

      v42[2] = v204;
    }

    else
    {
      sub_1000B6328(v154, 0xE800000000000000);
      if (v173)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013B664();
        sub_100080FB4(&qword_1003CCA88);
        v174 = sub_10013B608();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v174, v42);
        sub_10013B6D8();
        sub_10013B9C4();
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      sub_10013B89C();
    }

    if (*(v6 + 16) && (v175 = sub_10013B9F0(), v177 = sub_1000B6328(v175, v176), (v178 & 1) != 0))
    {
      sub_10013B8B8(v177);
      sub_10013B674();
      sub_10013BB90();
      v179 = sub_10013B9F0();
      sub_1000B6328(v179, v180);
      sub_10013B584();
      if (v133)
      {
        goto LABEL_244;
      }

      sub_100107168();
      sub_100080FB4(&qword_1003CCA88);
      if (sub_10013B6B8())
      {
        v181 = sub_10013B9F0();
        sub_1000B6328(v181, v182);
        sub_10013B654();
        if (!v122)
        {
          goto LABEL_253;
        }

        v154 = v183;
      }

      v42 = v245;
      sub_10013B444();
      *v205 = 1701869940;
      sub_10013B4F8(v205);
      if (v133)
      {
        goto LABEL_252;
      }

      v42[2] = v206;
    }

    else
    {
      v184 = sub_10013B9F0();
      sub_1000B6328(v184, v185);
      if (v186)
      {
        sub_10013B8D4();
        swift_isUniquelyReferenced_nonNull_native();
        sub_10013B664();
        sub_100080FB4(&qword_1003CCA88);
        v187 = sub_10013B608();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v187, v42);
        sub_10013B6D8();
        sub_10013B9C4();
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013B7FC();
      }

      sub_10013B89C();
    }

    if (*(v6 + 16) && (v188 = sub_1000B6328(25705, 0xE200000000000000), (v189 & 1) != 0))
    {
      sub_10013B8B8(v188);
    }

    else
    {
      sub_10013B7FC();
    }

    if (!*(&v250 + 1))
    {
      sub_10013B89C();
      v194 = sub_10013B7BC();
      sub_1000B6328(v194, v195);
      if (v196)
      {
        sub_10013B8D4();
        LOBYTE(v88) = swift_isUniquelyReferenced_nonNull_native();
        *&v245 = v42;
        v197 = v42[3];
        sub_100080FB4(&qword_1003CCA88);
        v198 = sub_10013B794();
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v198, v197);
        v42 = v245;

        sub_10008B5D0((v42[7] + 32 * v154), &v247);
        sub_10013B644();
        _NativeDictionary._delete(at:)();
      }

      else
      {
        sub_10013BCC8();
      }

      sub_10013B560();
      sub_10013B1E8(&v247, &unk_1003CCB70);
      goto LABEL_203;
    }

    sub_10013B674();
    sub_10013BB90();
    v190 = sub_10013B7BC();
    sub_1000B6328(v190, v191);
    sub_10013B584();
    if (v133)
    {
      break;
    }

    sub_100107168();
    sub_100080FB4(&qword_1003CCA88);
    if (sub_10013B6B8())
    {
      v192 = sub_10013B7BC();
      sub_1000B6328(v192, v193);
      sub_10013B654();
      if (!v122)
      {
        goto LABEL_253;
      }
    }

    v42 = v245;
    sub_10013B444();
    *v199 = 0x6449726566666FLL;
    sub_10013B4F8(v199);
    if (v133)
    {
      goto LABEL_245;
    }

    v42[2] = v200;
    sub_10013B560();
LABEL_203:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10013B930();
      sub_1001D9A40();
      v109 = v207;
    }

    v202 = v109[2];
    v201 = v109[3];
    if (v202 >= v201 >> 1)
    {
      sub_10013B6A4(v201);
      sub_1001D9A40();
      v109 = v208;
    }

    v109[2] = v202 + 1;
    v109[v202 + 4] = v42;
    v8 += 8;
    --v108;
    v42 = _swiftEmptyDictionarySingleton;
    if (!v108)
    {
      goto LABEL_215;
    }
  }

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
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10012EC94(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_10012ECDC(void *a1)
{
  sub_10013A1C4(a1);
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (*(&v5 + 1))
  {
    sub_100080FB4(&qword_1003CC200);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_12:

      return sub_100107174();
    }

    sub_1001DA990(1635017060, 0xE400000000000000, v3, &v6);

    if (*(&v7 + 1))
    {
      sub_100080FB4(&qword_1003CEDD8);
      if (swift_dynamicCast())
      {
        return sub_100107174();
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  sub_10013B1E8(&v6, &unk_1003CCB70);
  return sub_100107174();
}

uint64_t sub_10012EE50()
{
  type metadata accessor for ProductLoader();
  v0 = swift_allocObject();
  result = sub_100130520();
  qword_1003F25A8 = v0;
  return result;
}

uint64_t sub_10012EE8C(uint64_t a1, uint64_t a2)
{
  sub_100080FB4(&unk_1003CED58);
  sub_1000890DC();
  __chkstk_darwin(v5);
  v10 = a2;
  v11 = a1;
  v12 = v2;
  (*(v7 + 104))(&v9[-v6], enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:));
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_10012EF98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100080FB4(&qword_1003CED68);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  ProductsTask = type metadata accessor for LoadProductsTask();
  v15 = ProductsTask - 8;
  __chkstk_darwin(ProductsTask);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130558(a3, &v17[*(v15 + 28)], type metadata accessor for ProductRequest);
  v18 = *(v15 + 32);
  v19 = sub_100080FB4(&qword_1003CECA8);
  (*(*(v19 - 8) + 16))(&v17[v18], a1, v19);
  *v17 = a2;
  swift_beginAccess();
  sub_100130558(v17, v13, type metadata accessor for LoadProductsTask);
  v20 = a2;
  sub_100139348(0, 0, v13);
  swift_endAccess();
  if (*(a4 + 120))
  {
    return sub_10013AA0C(v17, type metadata accessor for LoadProductsTask);
  }

  v22 = type metadata accessor for TaskPriority();
  sub_100081DFC(v10, 1, 1, v22);
  v23 = sub_1001393E4();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = v23;
  v24[4] = a4;
  swift_retain_n();
  sub_100165CBC();
  v26 = v25;
  sub_10013AA0C(v17, type metadata accessor for LoadProductsTask);
  *(a4 + 120) = v26;
}

uint64_t sub_10012F258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100080FB4(&qword_1003CED78);
  v4[6] = swift_task_alloc();
  ProductsTask = type metadata accessor for LoadProductsTask();
  v4[7] = ProductsTask;
  v4[8] = *(ProductsTask - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10012F354, a4, 0);
}

void sub_10012F354()
{
  sub_100098BB4();
  v2 = sub_10013BDBC();
  v3 = *(v0 + 112);
  if (*(v3 + 16))
  {
    v4 = *(v1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 112) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000D36B8();
      v3 = v14;
    }

    v6 = *(v3 + 16);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v2 = sub_10013B988(v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_10013C050(v2, v7);
  sub_10013C024();
  if (v8)
  {
    v9 = *(v1 + 40);
    sub_10013B1E8(v3, &qword_1003CED78);
    *(v9 + 120) = 0;

    sub_100098AC4();

    v10();
  }

  else
  {
    v11 = sub_100107174();
    sub_10013A224(v11, v12);
    v13 = swift_task_alloc();
    *(v1 + 80) = v13;
    *v13 = v1;
    sub_10013B7D4(v13);

    sub_10012F6F0();
  }
}

uint64_t sub_10012F494()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  return _swift_task_switch(sub_10012F594, v2, 0);
}

void sub_10012F594()
{
  sub_100098BB4();
  sub_10013AA0C(v1[9], type metadata accessor for LoadProductsTask);
  v2 = sub_10013BDBC();
  v3 = *(v0 + 112);
  if (*(v3 + 16))
  {
    v4 = v1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 112) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000D36B8();
      v3 = v14;
    }

    v6 = *(v3 + 16);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v2 = sub_10013B988(v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  sub_10013C050(v2, v7);
  sub_10013C024();
  if (v8)
  {
    v9 = v1[5];
    sub_10013B1E8(v3, &qword_1003CED78);
    *(v9 + 120) = 0;

    sub_100098AC4();

    v10();
  }

  else
  {
    v11 = sub_100107174();
    sub_10013A224(v11, v12);
    v13 = swift_task_alloc();
    v1[10] = v13;
    *v13 = v1;
    sub_10013B7D4();

    sub_10012F6F0();
  }
}

uint64_t sub_10012F710()
{
  v62 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  v3 = sub_10007EDA4(v2, qword_1003F26C8);
  *(v0 + 40) = type metadata accessor for LoadProductsTask();
  type metadata accessor for ProductRequest();
  sub_10013BA50();
  v6 = *v4;
  v5 = v4[1];
  v7 = static os_log_type_t.default.getter();

  v8 = Logger.logObject.getter();

  v59._countAndFlagsBits = v6;
  if (os_log_type_enabled(v8, v7))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_10008BF58();
    *v1 = 136446466;
    sub_10013B7A4();
    v9._countAndFlagsBits = v6;
    v9._object = v5;
    String.append(_:)(v9);
    sub_10009F134();
    v18 = sub_1000E3F4C(v10, v11, v12, v13, v14, v15, v16, v17, v57, v3, v6, v59._object, v60, v61);

    *(v1 + 4) = v18;
    sub_10013BC98();
    *(v1 + 14) = sub_100080210(0xD000000000000018, 0x8000000100318CD0, &v59._object);
    sub_10013BE10(&_mh_execute_header, v8, v7, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100081C28();
    sub_10008BF3C();
  }

  v19 = **(v0 + 32);
  if (*(v19 + OBJC_IVAR____TtC9storekitd6Client_isClip))
  {
    v20 = static os_log_type_t.error.getter();

    v21 = Logger.logObject.getter();

    if (os_log_type_enabled(v21, v20))
    {
      sub_1000B7DC8();
      v22 = swift_slowAlloc();
      sub_10008E670();
      *v22 = 136446466;
      sub_10013B7A4();
      v23._countAndFlagsBits = v59._countAndFlagsBits;
      v23._object = v5;
      String.append(_:)(v23);
      sub_10009F134();
      sub_1000E3F4C(v24, v25, v26, v27, v28, v29, v30, v31, v57, v58, v59._countAndFlagsBits, v59._object, v60, v61);
      sub_1000C44AC();

      *(v22 + 4) = 0xD000000000000018;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_100080210(0xD000000000000025, 0x8000000100318D10, &v59._object);
      _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      sub_10008BF3C();
      sub_100081C28();
    }

    sub_10008B5E0();
    v32 = sub_1000894A0();
    sub_10013BC8C(v33, 1);
LABEL_17:
    swift_willThrow();
    *(v0 + 16) = v32;
    v54 = sub_100080FB4(&qword_1003CECA8);
    sub_10013BAE8(v54);
    sub_100098AC4();
    sub_10009F1B8();

    __asm { BRAA            X1, X16 }
  }

  sub_10008E5A4(0, &unk_1003CED80);
  v34 = sub_10018C008(0, v19);
  if (v34)
  {
    v32 = v34;
    v60 = 0;
    v61 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    sub_1000C446C();
    v60 = 0xD000000000000019;
    v61 = v35;
    v36 = [v32 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10013BFF4();

    v37 = v60;
    v38 = v61;
    v39 = static os_log_type_t.debug.getter();

    v40 = Logger.logObject.getter();

    if (os_log_type_enabled(v40, v39))
    {
      sub_1000B7DC8();
      v41 = swift_slowAlloc();
      sub_10008E670();
      *v41 = 136446466;
      sub_10013B7A4();
      v42._countAndFlagsBits = v59._countAndFlagsBits;
      v42._object = v5;
      String.append(_:)(v42);
      sub_10009F134();
      sub_1000E3F4C(v43, v44, v45, v46, v47, v48, v49, v50, v57, v58, v59._countAndFlagsBits, v59._object, v60, v61);
      sub_1000C44AC();

      *(v41 + 4) = v37;
      *(v41 + 12) = 2082;
      sub_100080210(v37, v38, &v59._object);
      sub_10013BB68();

      *(v41 + 14) = &v60;
      _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v41, 0x16u);
      sub_10008BF74();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    goto LABEL_17;
  }

  v51 = swift_task_alloc();
  *(v0 + 48) = v51;
  *v51 = v0;
  v51[1] = sub_10012FC5C;
  sub_10009F1B8();

  return sub_1001305B8();
}

uint64_t sub_10012FC5C()
{
  sub_100098BB4();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  if (v2)
  {
    v8 = swift_task_alloc();
    *(v4 + 56) = v8;
    *v8 = v6;
    v9 = sub_10013BE50(v8);

    return sub_100130830(v9);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v4 + 72) = v11;
    *v11 = v6;
    v12 = sub_10013BE50(v11);

    return sub_100131768(v12);
  }
}

uint64_t sub_10012FE10()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10012FF08()
{
  sub_100098BB4();
  *(v0 + 24) = 0;
  v1 = sub_100080FB4(&qword_1003CECA8);
  sub_10013BAE8(v1);
  sub_100098AC4();

  return v2();
}

uint64_t sub_10012FF88()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100130080()
{
  sub_100098BB4();
  sub_10013BEDC(*(v0 + 64));
  v1 = sub_100080FB4(&qword_1003CECA8);
  sub_10013BAE8(v1);
  sub_100098AC4();

  return v2();
}

uint64_t sub_1001300F8()
{
  sub_100098BB4();
  sub_10013BEDC(*(v0 + 80));
  v1 = sub_100080FB4(&qword_1003CECA8);
  sub_10013BAE8(v1);
  sub_100098AC4();

  return v2();
}

uint64_t sub_100130170()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001301A0()
{
  sub_100130170();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100130204(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ProductRequest();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_100080FB4(&qword_1003CECA8);
      v10 = *(a3 + 24);
    }

    return sub_100081D0C(a1 + v10, a2, v9);
  }
}

void *sub_1001302F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ProductRequest();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_100080FB4(&qword_1003CECA8);
      v10 = *(a4 + 24);
    }

    return sub_100081DFC(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for LoadProductsTask()
{
  result = qword_1003CED08;
  if (!qword_1003CED08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100130410()
{
  type metadata accessor for Client(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ProductRequest();
    if (v1 <= 0x3F)
    {
      sub_1001304AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001304AC()
{
  if (!qword_1003CED18[0])
  {
    sub_1000852D4(&qword_1003CCCB0);
    v0 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, qword_1003CED18);
    }
  }
}

uint64_t sub_100130520()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  *(v0 + 120) = 0;
  return v0;
}

uint64_t sub_100130558(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10012ADC8();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_100130830(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_100080FB4(&unk_1003CED90);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for URLQueryItem();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for URLComponents();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001309C0, 0, 0);
}

uint64_t sub_1001309C0()
{
  sub_1000B072C();
  sub_1000B0004();
  v2 = sub_1001A7AB4(v1);
  *(v0 + 176) = v2;
  v3 = sub_100132C08();
  v5 = v4;
  v6 = objc_allocWithZone(AMSMediaTokenService);
  swift_unknownObjectRetain();
  v7 = sub_100139104(v3, v5, v2);
  *(v0 + 184) = v7;
  v8 = sub_1001A8808();
  [v7 setClientInfo:v8];

  v9 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v7 bag:v2];
  *(v0 + 192) = v9;
  v10 = sub_1001A8808();
  [v9 setClientInfo:v10];

  *(v0 + 328) = *(type metadata accessor for LoadProductsTask() + 20);
  *(v0 + 200) = type metadata accessor for ProductRequest();
  sub_10013BA50();
  v11 = String._bridgeToObjectiveC()();
  [v9 setLogKey:v11];

  v12 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v7];
  *(v0 + 208) = v12;
  v13 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
  *(v0 + 216) = v13;
  v14 = sub_1001A9498();
  *(v0 + 224) = v14;
  [v14 setProtocolHandler:v12];
  [v14 setResponseDecoder:v13];
  [v7 setSession:v14];
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_100130BF8;
  sub_1000B0718();

  return sub_100132D2C(v16);
}

uint64_t sub_100130BF8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100130CF0()
{
  sub_10013BAC0();
  sub_1000EDA60();
  v1 = (*(v0 + 88) + *(v0 + 328) + *(*(v0 + 200) + 20));
  v2 = *v1;
  if (v1[1])
  {
    (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
    v4 = URLComponents.queryItems.modify();
    if (*v3)
    {
      v5 = v3;
      v6 = *(v0 + 136);
      v7 = *(v0 + 120);
      *(v0 + 72) = v2;
      sub_100080FB4(&unk_1003D0530);
      sub_10013A288();
      BidirectionalCollection<>.joined(separator:)();
      URLQueryItem.init(name:value:)();

      sub_100143730();
      v8 = *(*v5 + 16);
      sub_1001437D4(v8);
      sub_10013BA30(v8 + 1);
      v11(v9 + v10 * v8, v6, v7);
    }

    v4(v0 + 16, 0);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v12[1] = sub_1001312E8;
    sub_1001240F8();

    return sub_100135F6C(v13, v14, v15);
  }

  else
  {
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    sub_10013BE3C(v18);
    sub_1001240F8();

    return sub_100132128(v19);
  }
}

uint64_t sub_100130F18()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100131024()
{
  sub_1000B02BC();
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[21];
  v6 = v0[10];
  v5 = v0[11];
  v7 = swift_task_alloc();
  v0[34] = v7;
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v2;
  v7[6] = v3;
  v7[7] = v6;
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_10013111C;
  sub_10013BCEC();
  sub_1000B0604();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10013111C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100131238()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_10013BEC8();
  swift_unknownObjectRelease();

  v5 = sub_10013BEB4();
  v6(v5);

  sub_100098AC4();
  sub_1000B0718();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1001312E8()
{
  sub_1000B072C();
  sub_1000B0004();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10008C070();
  v9 = v8;
  sub_1000AFE64();
  *v10 = v9;
  v11 = *v1;
  sub_100098AB4();
  *v12 = v11;
  v9[37] = v0;

  if (!v0)
  {
    v9[38] = v3;
    v9[39] = v5;
    v9[40] = v7;
  }

  sub_10013BBDC();
  sub_1000B0718();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1001313FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10008C07C();
  v17 = v16[39];
  v18 = v16[38];
  v19 = v16[27];
  v20 = v16[28];
  v21 = v16[26];
  v22 = v16[24];
  v37 = v16[23];
  v38 = v16[22];
  v23 = v16[19];
  v41 = v16[20];
  v40 = v16[18];
  v24 = v16[13];
  v25 = v16[14];
  v39 = v16[12];
  v16[6] = v16[40];
  v16[7] = v17;
  v16[8] = v18;
  sub_100080FB4(&qword_1003CECA8);
  AsyncThrowingStream.Continuation.yield(_:)();

  swift_unknownObjectRelease();
  (*(v24 + 8))(v25, v39);
  v26 = *(v23 + 8);
  v26(v41, v40);
  v27 = sub_10013BEB4();
  (v26)(v27);

  sub_100098AC4();
  sub_10008BE10();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, a14, a15, a16);
}

uint64_t sub_100131548()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_10013BEC8();
  swift_unknownObjectRelease();

  sub_10013BDA0();

  sub_100098AC4();
  sub_1000B0518();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001315DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  v12 = v10[27];
  v11 = v10[28];
  v13 = v10[26];
  v15 = v10[23];
  v14 = v10[24];
  swift_unknownObjectRelease();

  v16 = sub_100107174();
  v17(v16);
  sub_10013BDA0();

  sub_100098AC4();
  sub_10013BDF8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_100131694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10013BAC0();
  sub_1000EDA60();
  v14 = *(v12 + 216);
  v13 = *(v12 + 224);
  v15 = *(v12 + 208);
  v16 = *(v12 + 184);
  v18 = *(v12 + 152);
  v17 = *(v12 + 160);
  v19 = *(v12 + 144);

  swift_unknownObjectRelease();
  v20 = *(v18 + 8);
  v20(v17, v19);
  v21 = sub_100107510();
  (v20)(v21);
  sub_10013BDA0();

  sub_100098AC4();
  sub_1001240F8();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_100131768(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100131788, 0, 0);
}

uint64_t sub_100131788()
{
  sub_1000B016C();
  v24 = v0;
  v1 = *(v0 + 24);
  v2 = v1 + *(type metadata accessor for LoadProductsTask() + 20);
  v3 = v2 + *(type metadata accessor for ProductRequest() + 20);
  if (*(v3 + 8))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v4 = type metadata accessor for SKLogger();
    sub_10007EDA4(v4, qword_1003F26C8);
    sub_10013B974();
    v5 = static os_log_type_t.error.getter();

    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v5))
    {
      sub_1000B7DC8();
      v7 = swift_slowAlloc();
      sub_10008E670();
      *v7 = 136446466;
      sub_10008E5EC();
      sub_10013BFF4();
      sub_10008E604();
      sub_10008E638(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2]);
      sub_1000B0494();
      sub_10013BBCC();
      *(v7 + 14) = sub_100080210(0xD000000000000037, 0x8000000100318FE0, v23);
      sub_10013BF7C(&_mh_execute_header, v16, v17, "%{public}s%{public}s");
      sub_100106E34();
      sub_100081C28();
      sub_100081C28();
    }

    sub_10013A9B8();
    sub_1000894A0();
    sub_10013BC8C(v18, 1);
    swift_willThrow();
    sub_100098AC4();

    return v19();
  }

  else
  {
    v21 = *v3;
    v22 = swift_task_alloc();
    *(v0 + 32) = v22;
    *v22 = v0;
    v22[1] = sub_1001319CC;

    return sub_100132128(v21);
  }
}

uint64_t sub_1001319CC()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100131AFC()
{
  sub_1000B0004();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1001373C0();
  v0[6] = v4;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100131BEC;
  sub_10013BCEC();
  sub_1000B0518();

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100131BEC()
{
  sub_100098BB4();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100131D70()
{
  sub_1000B061C();
  sub_1000B0004();
  v2 = sub_1001A7AB4(v1);
  if (qword_1003CC018 != -1)
  {
    swift_once();
  }

  v3 = [v2 integerForKey:qword_1003F2880];
  v0[21] = v3;
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v4 = sub_10013BB4C();
  v5 = sub_100080FB4(&qword_1003CEDB0);
  sub_10008BD44(v5);
  sub_10010771C(COERCE_DOUBLE(1107296256));
  v0[12] = sub_10012C050;
  v0[13] = &unk_100389928;
  v0[14] = v4;
  [v3 valueWithCompletion:v0 + 10];
  sub_1000B0518();

  return _swift_continuation_await(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100131EC8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100131FC4()
{
  sub_10008BE9C();
  v1 = *(v0 + 144);

  v2 = Int.init(truncating:)();
  sub_10009F198();

  return v3(v2);
}

uint64_t sub_100132038()
{
  sub_100098BB4();
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = _convertErrorToNSError(_:)();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100184F08(v3, v4, 0xCC);

  if (v5)
  {

    sub_10009F198();

    return v6(25);
  }

  else
  {
    swift_willThrow();
    sub_100098AC4();

    return v8();
  }
}

uint64_t sub_100132128(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for CharacterSet();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100132200, 0, 0);
}

uint64_t sub_100132200()
{
  sub_100098BB4();
  v4 = v0;
  v3 = v0[6];

  sub_100139684(&v3);
  v0[13] = v3;
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1001322E8;

  return sub_100131D50();
}

uint64_t sub_1001322E8()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v5;

  if (v0)
  {

    sub_100098AC4();

    return v6();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_100132434()
{
  v109 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  static CharacterSet.urlQueryAllowed.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.subtracting(_:)();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = sub_100107510();
  v103 = v5;
  (v5)(v6);
  v105._object = 0;
  v106 = 0xE000000000000000;
  v8 = *(v1 + 16);
  if (v8)
  {
    v100 = "Error in request for batch (";
    v101 = 0;
    v96 = "d not be url encoded.";
    v97 = "Skipping productID ";
    v95 = " because it is over max length.";
    v9 = v0[13] + 40;
    v94 = _swiftEmptyArrayStorage;
    *&v7 = 136446466;
    v98 = v7;
    v102 = v0;
    while (1)
    {
      v10 = v0[11];
      v11 = v0[8];
      v12 = *v9;
      v105._countAndFlagsBits = *(v9 - 8);
      v0[2] = v105._countAndFlagsBits;
      v0[3] = v12;

      CharacterSet.init(charactersIn:)();
      sub_100106050();
      v13 = StringProtocol.trimmingCharacters(in:)();
      v15 = v14;
      v103(v10, v11);
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        v34 = v8;

        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v35 = v0[7];
        v36 = type metadata accessor for SKLogger();
        sub_10007EDA4(v36, qword_1003F26C8);
        v37 = v35 + *(type metadata accessor for LoadProductsTask() + 20);
        v38 = *(v37 + *(type metadata accessor for ProductRequest() + 36));
        v39 = static os_log_type_t.default.getter();

        v40 = Logger.logObject.getter();

        if (os_log_type_enabled(v40, v39))
        {
          sub_1000B7DC8();
          swift_slowAlloc();
          v41 = sub_10008BF58();
          *v9 = v98;
          sub_10013BB04(v41);
          sub_10009F134();
          sub_100080210(v108._countAndFlagsBits, v108._object, &v107);
          sub_1000C44AC();

          *(v9 + 4) = v38;
          sub_10013BC98();
          sub_10013BEF0();
          *(v9 + 14) = sub_100080210(v42 + 6, v95 | 0x8000000000000000, &v107);
          sub_10013BE10(&_mh_execute_header, v40, v39, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_100081C28();
          sub_100081C28();
        }

        v0 = v102;
        v8 = v34;
        goto LABEL_44;
      }

      v104 = v9;
      v0[4] = v13;
      v0[5] = v15;
      v17 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
      v19 = v18;

      if (v19)
      {
        v20 = String.count.getter();
        if (v20 <= 256)
        {
          v65 = v20;
          v66 = v8;
          v67 = v0[15];

          object = v105._object;
          p_object = v106;
          v70 = String.count.getter();
          if (v101 < v67 && v70 < 1)
          {
            goto LABEL_35;
          }

          v72 = v70 + v65;
          if (__OFADD__(v70, v65))
          {
            goto LABEL_59;
          }

          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_60;
          }

          if (v74 < 641)
          {
LABEL_35:
            if ((p_object & 0x2000000000000000) != 0)
            {
              goto LABEL_37;
            }

            v78 = object & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10013B930();
              sub_1001D9EE8();
              v94 = v83;
            }

            v76 = v94[2];
            v75 = v94[3];
            if (v76 >= v75 >> 1)
            {
              sub_10013B6A4(v75);
              sub_1001D9EE8();
              v94 = v84;
            }

            v94[2] = v76 + 1;
            v77 = &v94[2 * v76];
            v77[4] = object;
            v77[5] = p_object;
            p_object = 0xE000000000000000;
            v105._object = 0;
            v106 = 0xE000000000000000;
LABEL_37:
            v78 = HIBYTE(p_object) & 0xF;
          }

          v0 = v102;
          v8 = v66;
          v79 = v78 == 0;
          v80 = 44;
          if (v79)
          {
            v80 = 0;
          }

          v81 = 0xE000000000000000;
          if (!v79)
          {
            v81 = 0xE100000000000000;
          }

          v108._countAndFlagsBits = v80;
          v108._object = v81;
          v82._countAndFlagsBits = v17;
          v82._object = v19;
          String.append(_:)(v82);

          p_object = &v105._object;
          String.append(_:)(v108);

          v73 = __OFADD__(v101++, 1);
          if (v73)
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            sub_10013B930();
            sub_1001D9EE8();
            v85 = v92;
LABEL_51:
            v88 = v85[2];
            v87 = v85[3];
            if (v88 >= v87 >> 1)
            {
              sub_10013B6A4(v87);
              sub_1001D9EE8();
              v85 = v93;
            }

            v103(v0[12], v0[8]);
            v85[2] = v88 + 1;
            v89 = &v85[2 * v88];
            v89[4] = v66;
            v89[5] = p_object;
            goto LABEL_55;
          }

          goto LABEL_43;
        }

        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v21 = type metadata accessor for SKLogger();
        sub_10007EDA4(v21, qword_1003F26C8);
        sub_10013BE8C();
        _StringGuts.grow(_:)(52);
        sub_10013BC14(v22, v23, v24, v25, v26, v27, v28, v29, v94, v95, v96, v97, v98, *(&v98 + 1), v99, v100);
        v30._countAndFlagsBits = v105._countAndFlagsBits;
        v30._object = v12;
        String.append(_:)(v30);

        sub_10013BEF0();
        v32 = v31 + 12;
        v33 = v96;
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          swift_once();
        }

        v43 = type metadata accessor for SKLogger();
        sub_10007EDA4(v43, qword_1003F26C8);
        sub_10013BE8C();
        _StringGuts.grow(_:)(58);
        sub_10013BC14(v44, v45, v46, v47, v48, v49, v50, v51, v94, v95, v96, v97, v98, *(&v98 + 1), v99, v100);
        v52._countAndFlagsBits = v105._countAndFlagsBits;
        v52._object = v12;
        String.append(_:)(v52);

        sub_10013BEF0();
        v32 = v53 + 18;
        v33 = v97;
      }

      v54 = v33 | 0x8000000000000000;
      String.append(_:)(*&v32);
      countAndFlagsBits = v108._countAndFlagsBits;
      v55 = v108._object;
      type metadata accessor for LoadProductsTask();
      type metadata accessor for ProductRequest();
      sub_10013BA50();
      v58 = *v57;
      v59 = static os_log_type_t.default.getter();

      v60 = Logger.logObject.getter();

      if (os_log_type_enabled(v60, v59))
      {
        sub_1000B7DC8();
        v61 = v8;
        v62 = swift_slowAlloc();
        v63 = sub_10008E670();
        *v62 = v98;
        sub_10013BB04(v63);
        sub_10009F134();
        v64 = v108._object;
        sub_100080210(v108._countAndFlagsBits, v108._object, &v107);
        sub_1000C44AC();

        *(v62 + 4) = v58;
        *(v62 + 12) = 2082;
        sub_100080210(countAndFlagsBits, v55, &v107);
        sub_10013BB68();

        *(v62 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v60, v59, "%{public}s%{public}s", v62, 0x16u);
        swift_arrayDestroy();
        sub_100081C28();
        v8 = v61;
        v0 = v102;
        sub_100081C28();
      }

      else
      {
      }

LABEL_43:
      v9 = v104;
LABEL_44:
      v9 += 16;
      if (!--v8)
      {

        v66 = v105._object;
        p_object = v106;
        v85 = v94;
        goto LABEL_47;
      }
    }
  }

  v66 = 0;
  v85 = _swiftEmptyArrayStorage;
  p_object = 0xE000000000000000;
LABEL_47:
  v86 = HIBYTE(p_object) & 0xF;
  if ((p_object & 0x2000000000000000) == 0)
  {
    v86 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

  v103(v0[12], v0[8]);

LABEL_55:

  sub_10009F198();

  return v90(v85);
}

uint64_t sub_100132D2C(uint64_t a1)
{
  v2[285] = v1;
  v2[279] = a1;
  v3 = type metadata accessor for URLQueryItem();
  v2[291] = v3;
  v2[297] = *(v3 - 8);
  v2[303] = swift_task_alloc();
  v2[309] = swift_task_alloc();
  v2[315] = swift_task_alloc();
  v2[321] = swift_task_alloc();
  v2[327] = swift_task_alloc();
  v2[333] = swift_task_alloc();
  v2[339] = swift_task_alloc();
  v2[345] = swift_task_alloc();
  v2[351] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0);
  v2[357] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[358] = v4;
  v2[359] = *(v4 - 8);
  v2[360] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v2[361] = swift_task_alloc();
  v2[362] = swift_task_alloc();
  v2[363] = swift_task_alloc();

  return _swift_task_switch(sub_100132F28, 0, 0);
}

uint64_t sub_100133298()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2001) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100133608()
{
  sub_10008BE9C();
  *(v1 + 2992) = v0;
  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100133680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098BB4();
  v13 = *(v12 + 1992);
  v14 = [v13 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x617461632F31762FLL;
  v19._object = 0xEC0000002F676F6CLL;
  String.append(_:)(v19);

  return _swift_asyncLet_get_throwing(v12 + 656, v12 + 2024, sub_10013375C, v12 + 2336, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10013375C()
{
  sub_10008BE9C();
  *(v1 + 3000) = v0;
  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1001337D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10013BAC0();
  sub_1000EDA60();
  sub_10013BEF0();
  v14 = *(v12 + 2864);
  v15 = *(v12 + 2856);
  if (*(v12 + 2001))
  {
    v16 = 0x8000000100318EE0;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (*(v12 + 2001))
  {
    v17 = v13;
  }

  else
  {
    v17 = 0x737070612D6E69;
  }

  v18 = *(v12 + 2024);
  v19 = [v18 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 47;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = v17;
  v25._object = v16;
  String.append(_:)(v25);

  URLComponents.init(string:)();

  if (sub_100081D0C(v15, 1, v14) == 1)
  {
    sub_10013B1E8(*(v12 + 2856), &qword_1003CEDE0);
    sub_10013A9B8();
    *(v12 + 3072) = sub_1000894A0();
    sub_10013BC8C(v26, 3);
    swift_willThrow();
    sub_10013B9E0();
    sub_1001240F8();

    return _swift_asyncLet_finish(v27, v28, v29, v30);
  }

  else
  {
    v32 = *(v12 + 2984);
    v33 = *(v12 + 2880);
    v34 = *(v12 + 2872);
    v35 = *(v12 + 2864);
    v36 = *(v12 + 2856);
    v37 = *(v12 + 2280) + *(v12 + 2004);
    v38 = *(v34 + 32);
    *(v12 + 3008) = v38;
    *(v12 + 3016) = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v38(v33, v36, v35);
    sub_100080FB4(&unk_1003D2720);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1002ED290;
    *(v39 + 32) = 1684957547;
    *(v39 + 40) = 0xE400000000000000;
    *(v12 + 2136) = v39;
    if (*(v37 + *(v32 + 24)) == 1)
    {
      sub_1001D9EE8();
      *(v40 + 16) = 2;
      strcpy((v40 + 48), "hostedContent");
      *(v40 + 62) = -4864;
      *(v12 + 2136) = v40;
    }

    v41 = *(v12 + 2984);
    v42 = *(v12 + 2280) + *(v12 + 2004);
    sub_10012C07C(*(v42 + *(v41 + 32)));
    sub_1001D4058(v43);
    sub_10012C2F8(*(v42 + *(v41 + 28)));
    *(v12 + 3024) = v44;

    URLQueryItem.init(name:value:)();

    sub_1001D9D58();
    v46 = v45;
    v47 = *(v45 + 16);
    if (v47 >= *(v45 + 24) >> 1)
    {
      sub_1001D9D58();
      v46 = v68;
    }

    v48 = *(v12 + 2808);
    v49 = *(v12 + 2376);
    v50 = *(v12 + 2328);
    *(v46 + 16) = v47 + 1;
    v52 = *(v49 + 32);
    v49 += 32;
    v51 = v52;
    v53 = *(v49 + 48);
    *(v12 + 2020) = v53;
    v54 = (v53 + 32) & ~v53;
    v55 = *(v49 + 40);
    *(v12 + 3032) = v55;
    *(v12 + 3040) = v52;
    *(v12 + 3048) = v49 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v52(v46 + v54 + v55 * v47, v48, v50);
    v56 = sub_1001372C4();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URLQueryItem.init(name:value:)();

    v57 = *(v46 + 16);
    if (v57 >= *(v46 + 24) >> 1)
    {
      sub_10013B5D0();
      v46 = v69;
    }

    *(v12 + 3056) = v46;
    v58 = *(v12 + 2760);
    v59 = *(v12 + 2328);
    *(v46 + 16) = v57 + 1;
    v51(v46 + v54 + v57 * v55, v58, v59);
    sub_10013B9E0();
    sub_1001240F8();

    return _swift_asyncLet_get_throwing(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
  }
}

uint64_t sub_100133C20()
{
  sub_10008BE9C();
  *(v1 + 3064) = v0;
  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100133CAC()
{
  sub_10013BAC0();
  sub_1000EDA60();
  v1 = *(v0 + 3056);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLQueryItem.init(name:value:)();

  v2 = *(v1 + 16);
  v3 = *(v0 + 3056);
  if (v2 >= *(v1 + 24) >> 1)
  {
    sub_10013B5D0();
    v3 = v48;
  }

  sub_10013B570();
  v4 = *(v0 + 2664);
  sub_10013B548();
  v7(v6 + v5 * v2);
  *(v0 + 2040) = *(v0 + 2136);
  sub_100080FB4(&unk_1003D0530);
  sub_10013A288();
  sub_10013BAA0();

  URLQueryItem.init(name:value:)();

  sub_10013BBBC();
  if (v8)
  {
    sub_10013B5D0();
    v3 = v49;
  }

  sub_10013B570();
  v9 = *(v0 + 3024);
  sub_10013B548();
  v12(v11 + v10 * v4);
  v13 = *(v0 + 3024);
  if (*(v9 + 16))
  {
    *(v0 + 2088) = v13;
    sub_10013BAA0();

    URLQueryItem.init(name:value:)();

    sub_10013BBBC();
    if (v8)
    {
      sub_10013B5D0();
      v3 = v51;
    }

    sub_10013B570();
    sub_10013B548();
    v16(v15 + v14 * v13);
  }

  else
  {
  }

  URLQueryItem.init(name:value:)();
  sub_10013BBBC();
  if (v8)
  {
    sub_10013B5D0();
    v3 = v50;
  }

  sub_10013B570();
  v17 = *(v0 + 2001);
  sub_10013B548();
  v20(v19 + v18 * v13);
  if (v17)
  {
    *(v0 + 2184) = &off_100383868;
    sub_10013BAA0();
    URLQueryItem.init(name:value:)();

    v21 = *(v3 + 16);
    if (v21 >= *(v3 + 24) >> 1)
    {
      sub_10013B5D0();
      v3 = v52;
    }

    sub_10013B570();
    v22 = *(v0 + 2520);
    v23 = *(v0 + 2328);
    *(v3 + 16) = v21 + 1;
    v26(v3 + ((v24 + 32) & ~v24) + v25 * v21, v22, v23);
    URLQueryItem.init(name:value:)();
    v27 = *(v3 + 16);
    if (v27 >= *(v3 + 24) >> 1)
    {
      sub_10013B5D0();
      v3 = v53;
    }

    sub_10013B570();
    sub_10013B548();
    v30(v29 + v28 * v27);
  }

  if (!*(*(v0 + 2280) + *(v0 + 2004) + *(*(v0 + 2984) + 40)))
  {
    v31 = sub_1001AA198();
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URLQueryItem.init(name:value:)();

      v33 = *(v3 + 16);
      if (v33 >= *(v3 + 24) >> 1)
      {
        sub_1001D9D58();
        v3 = v54;
      }

      v34 = *(v0 + 3040);
      v35 = *(v0 + 3032);
      v36 = *(v0 + 2020);
      v37 = *(v0 + 2424);
      v38 = *(v0 + 2328);

      *(v3 + 16) = v33 + 1;
      v34(v3 + ((v36 + 32) & ~v36) + v35 * v33, v37, v38);
    }
  }

  v39 = *(v0 + 3008);
  v40 = *(v0 + 2880);
  v41 = *(v0 + 2864);
  v42 = *(v0 + 2232);
  URLComponents.queryItems.setter();
  v39(v42, v40, v41);
  sub_10013B9E0();
  sub_1001240F8();

  return _swift_asyncLet_finish(v43, v44, v45, v46);
}

uint64_t sub_10013416C()
{
  v1 = *(v0 + 2928);
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v2();
}

uint64_t sub_100134350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100107C4C();
  sub_10013BEFC();
  sub_10013B46C();

  sub_100098AC4();
  sub_100107C68();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1001344DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100107C4C();
  sub_10013BEFC();
  sub_10013B46C();

  sub_100098AC4();
  sub_100107C68();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100134668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100107C4C();
  sub_10013BEFC();
  sub_10013B46C();

  sub_100098AC4();
  sub_100107C68();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100134758()
{
  sub_10008BE9C();
  (*(v0[359] + 8))(v0[360], v0[358]);
  v1 = sub_10013B9E0();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 346);
}

uint64_t sub_100134848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100107C4C();
  sub_10013BEFC();
  sub_10013B46C();

  sub_100098AC4();
  sub_100107C68();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100134938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[9] = a2;
  v9 = sub_100080FB4(&qword_1003CECA8);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  v11 = *(type metadata accessor for LoadProductsTask() - 8);
  v8[20] = v11;
  v8[21] = *(v11 + 64);
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for URLComponents();
  v8[23] = v12;
  v13 = *(v12 - 8);
  v8[24] = v13;
  v8[25] = *(v13 + 64);
  v8[26] = swift_task_alloc();
  sub_100080FB4(&unk_1003CE2B0);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_100134B20, 0, 0);
}

uint64_t sub_100134B20()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  v0[29] = v2;
  if (v2)
  {
    v3 = type metadata accessor for TaskPriority();
    v4 = 0;
    v5 = 0;
    v57 = v3;
    while (1)
    {
      v0[30] = v4;
      v0[31] = v5;
      v6 = v1 + 16 * v5;
      v7 = *(v6 + 32);
      v0[32] = v7;
      v8 = *(v6 + 40);
      v0[33] = v8;
      if (v4 == 4)
      {
        break;
      }

      v43 = v4;
      v9 = v0[28];
      v56 = v0[27];
      v10 = v0[26];
      v11 = v0[23];
      v12 = v0[24];
      v48 = v11;
      v49 = v10;
      v13 = v0[22];
      v50 = v13;
      v46 = v0[25];
      v47 = v0[21];
      v14 = v0[19];
      v51 = v14;
      v15 = v0[17];
      v16 = v0[16];
      v45 = v0[15];
      v55 = v0[14];
      v53 = v8;
      v54 = v0[13];
      v17 = v0[11];
      v44 = v0[12];
      v52 = v7;

      sub_10013BD84(v9);
      (*(v12 + 16))(v10, v17, v11);
      sub_10013B4E0();
      sub_100130558(v44, v13, v18);
      (*(v15 + 16))(v14, v45, v16);
      v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      sub_10013BE78();
      v20 = (v47 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      v22 = (*(v15 + 80) + v21 + 8) & ~*(v15 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      (*(v12 + 32))(v23 + v19, v49, v48);
      v24 = (v23 + ((v46 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v24 = v52;
      v24[1] = v53;
      sub_10013A224(v50, v23 + v9);
      *(v23 + v20) = v54;
      *(v23 + v21) = v55;
      v26 = *(v15 + 32);
      v25 = v15 + 32;
      v26(v23 + v22, v51, v16);
      sub_10013B104(v9, v56, &unk_1003CE2B0);
      v27 = sub_100123E24();
      LODWORD(v9) = sub_100081D0C(v27, v28, v57);
      v29 = v54;
      v30 = v55;
      v31 = v0[27];
      if (v9 == 1)
      {
        sub_10013B1E8(v0[27], &unk_1003CE2B0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v57 - 8) + 8))(v31);
      }

      if (*(v23 + 16))
      {
        v32 = sub_10013C00C();
        swift_unknownObjectRetain();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        sub_10013BFDC();
      }

      else
      {
        v33 = 0;
        v32 = 0;
      }

      sub_1000B7E4C();
      v34 = swift_allocObject();
      sub_10013B83C(v34);
      if (v25)
      {
        v35 = (v0 + 2);
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v33;
        v0[5] = v32;
      }

      else
      {
        v35 = 0;
      }

      sub_10013B6F8(v35);
      swift_task_create();
      sub_10013BB68();

      sub_10013B1E8(v33, &unk_1003CE2B0);
      if (v25 == v32)
      {
        goto LABEL_15;
      }

      v5 = v0[31] + 1;
      v1 = v0[10];
      v4 = v43 + 1;
    }

    v39 = swift_task_alloc();
    v0[35] = v39;
    sub_100080FB4(&qword_1003CEDA8);
    sub_10013B950();
    *v39 = v40;
    sub_10013B760();
    sub_10013BC3C();

    return TaskGroup.next(isolation:)();
  }

  else
  {
LABEL_15:
    v36 = swift_task_alloc();
    v0[34] = v36;
    sub_100080FB4(&qword_1003CEDA8);
    sub_10013B900();
    *v36 = v37;
    sub_10013B62C();
    sub_10013BC3C();

    return TaskGroup.awaitAllRemainingTasks(isolation:)();
  }
}

uint64_t sub_100134F94()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();
  sub_1000B0518();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100135108()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001351EC()
{
  v39 = v0[30];
  v52 = type metadata accessor for TaskPriority();
  v40 = v0[32];
  v41 = v0[33];
  while (1)
  {
    v50 = v0[28];
    v51 = v0[27];
    v1 = v0[26];
    v3 = v0[23];
    v2 = v0[24];
    v45 = v3;
    v4 = v0[22];
    v46 = v4;
    v43 = v0[25];
    v44 = v0[21];
    v5 = v0[19];
    v47 = v5;
    v6 = v0[17];
    v7 = v0[16];
    v42 = v0[15];
    v49 = v0[14];
    v48 = v0[13];
    v9 = v0[11];
    v8 = v0[12];
    sub_10013BD84(v50);
    (*(v2 + 16))(v1, v9, v3);
    sub_10013B4E0();
    sub_100130558(v8, v4, v10);
    (*(v6 + 16))(v5, v42, v7);
    v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    sub_10013BE78();
    v12 = (v44 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = (*(v6 + 80) + v13 + 8) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    (*(v2 + 32))(v15 + v11, v1, v45);
    v16 = (v15 + ((v43 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = v40;
    v16[1] = v41;
    sub_10013A224(v46, v15 + v7);
    *(v15 + v12) = v48;
    *(v15 + v13) = v49;
    v18 = *(v6 + 32);
    v17 = v6 + 32;
    v18(v15 + v14, v47, v7);
    sub_10013B104(v50, v51, &unk_1003CE2B0);
    v19 = sub_100123E24();
    LODWORD(v7) = sub_100081D0C(v19, v20, v52);
    v21 = v48;
    v22 = v49;
    v23 = v0[27];
    if (v7 == 1)
    {
      sub_10013B1E8(v0[27], &unk_1003CE2B0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(*(v52 - 8) + 8))(v23, v52);
    }

    if (*(v15 + 16))
    {
      v24 = sub_10013C00C();
      swift_unknownObjectRetain();
      v25 = dispatch thunk of Actor.unownedExecutor.getter();
      sub_10013BFDC();
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    sub_1000B7E4C();
    v26 = swift_allocObject();
    sub_10013B83C(v26);
    if (v17)
    {
      v27 = (v0 + 2);
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v25;
      v0[5] = v24;
    }

    else
    {
      v27 = 0;
    }

    sub_10013B6F8(v27);
    swift_task_create();
    sub_10013BB68();

    sub_10013B1E8(v25, &unk_1003CE2B0);
    if (v17 == v24)
    {
      break;
    }

    v28 = v0[31] + 1;
    v0[30] = v39;
    v0[31] = v28;
    v29 = v0[10] + 16 * v28;
    v30 = *(v29 + 32);
    v0[32] = v30;
    v31 = *(v29 + 40);
    v0[33] = v31;
    if (v39 >= 4)
    {

      v35 = swift_task_alloc();
      v0[35] = v35;
      sub_100080FB4(&qword_1003CEDA8);
      sub_10013B950();
      *v35 = v36;
      sub_10013B760();
      sub_10013BC3C();

      return TaskGroup.next(isolation:)();
    }

    ++v39;
    v40 = v30;
    v41 = v31;
  }

  v32 = swift_task_alloc();
  v0[34] = v32;
  sub_100080FB4(&qword_1003CEDA8);
  sub_10013B900();
  *v32 = v33;
  sub_10013B62C();
  sub_10013BC3C();

  return TaskGroup.awaitAllRemainingTasks(isolation:)();
}