uint64_t sub_1000E6358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a1 + 16);
  sub_100146DA4(0, v1, 0);
  v2 = a1 + 56;
  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v5 = v26;
  v6 = a1;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v11 = *(v6 + 36);
    if (*(*(v6 + 48) + result))
    {
      v12 = 0x69746375646F7270;
    }

    else
    {
      v12 = 0x6D706F6C65766564;
    }

    if (*(*(v6 + 48) + result))
    {
      v13 = 0xEA00000000006E6FLL;
    }

    else
    {
      v13 = 0xEB00000000746E65;
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v24 = *(v6 + 36);
      v25 = result;
      sub_100146DA4((v14 > 1), v15 + 1, 1);
      v5 = v26;
      v6 = a1;
      v11 = v24;
      result = v25;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
    v8 = 1 << *(v6 + 32);
    if (result >= v8)
    {
      goto LABEL_28;
    }

    v17 = *(v2 + 8 * v9);
    if ((v17 & v10) == 0)
    {
      goto LABEL_29;
    }

    if (v11 != *(v6 + 36))
    {
      goto LABEL_30;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_10009C048(result, v11, 0);
          v5 = v26;
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_10009C048(result, v11, 0);
      v5 = v26;
      v6 = a1;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000E6658(uint64_t a1, uint64_t a2)
{
  v5 = [v2 connection];
  v6 = String._bridgeToObjectiveC()();
  v13[1] = a2;

  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  v9 = sub_100085B0C(v5, v8, _swiftEmptyArrayStorage, 0, 0);
  v13[0] = _swiftEmptyArrayStorage;
  v12[2] = v13;
  sub_1000354C4(sub_1000E7FD0, v12, v9);

  v10 = v13[0];
  if (v3)
  {
  }

  return v10;
}

void *sub_1000E67C0(uint64_t a1, uint64_t a2)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() containsPredicateWithProperty:v8 values:v9];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v12 = [v2 connection];
  v13 = v11;
  v14 = sub_100085B0C(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  v17[2] = &v18;
  v18 = _swiftEmptyArrayStorage;
  sub_1000354C4(sub_1000E7FD0, v17, v14);

  v15 = v18;
  if (v3)
  {
  }

  return v15;
}

void *sub_1000E6A30(uint64_t a1, uint64_t a2)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B5820;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = objc_opt_self();
  v8 = [v7 predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(v4 + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = [objc_opt_self() containsPredicateWithProperty:v9 values:v10];
  swift_unknownObjectRelease();

  *(v4 + 40) = v11;
  v12 = sub_10004FB24(v4);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = [v2 connection];
  v14 = v12;
  v15 = sub_100085B0C(v13, v12, &off_1002143F8, 0, 0);
  sub_1000E7E80(v30);
  memcpy(v29, v30, 0x121uLL);
  v25[2] = v29;
  sub_1000354C4(sub_1000E7F48, v25, v15);
  if (v3)
  {

    memcpy(v28, v29, 0x121uLL);
    return sub_1000E7F50(v28);
  }

  else
  {
    v31 = v2;

    memcpy(v27, v29, 0x121uLL);
    memcpy(v28, v29, 0x121uLL);
    if (sub_1000E7FB8(v28) == 1)
    {

      return _swiftEmptyArrayStorage;
    }

    else
    {
      v17 = v28[22];
      v18 = v28[23];

      sub_1000E7F50(v27);
      v19 = String._bridgeToObjectiveC()();
      v26[0] = v17;
      v26[1] = v18;

      v20 = [v7 predicateWithProperty:v19 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();

      v21 = [v31 connection];
      v22 = v20;
      v23 = sub_100085B0C(v21, v20, &off_100214420, 0, 0);
      v26[0] = _swiftEmptyArrayStorage;
      __chkstk_darwin(v23);
      v24[2] = v26;
      sub_1000354C4(sub_1000E7FD0, v24, v23);

      return v26[0];
    }
  }
}

void *sub_1000E6E94()
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = objc_opt_self();
  v5 = [v4 predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  *(inited + 32) = v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 predicateWithProperty:v6 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v7;
  v8 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v9 = [v0 connection];
  v10 = v8;
  v11 = sub_100085B0C(v9, v8, _swiftEmptyArrayStorage, 0, 0);
  v17 = _swiftEmptyArrayStorage;
  v16 = &v17;
  sub_1000354C4(sub_1000E7FD0, v15, v11);

  v12 = v17;
  if (v14)
  {
  }

  return v12;
}

void sub_1000E70F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000E6358(a2);
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v7 = v6 * 1000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v7 <= -1.0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() predicateWithProperty:v8 value:v9 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v13 = [objc_opt_self() containsPredicateWithProperty:v11 values:v12];
  swift_unknownObjectRelease();

  *(inited + 40) = v13;
  v14 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v15 = [v4 connection];
  v16 = v14;
  v17 = sub_100085B0C(v15, v14, &off_100214448, 0, 0);
  v64[0] = _swiftEmptyArrayStorage;
  __chkstk_darwin(v17);
  v52[2] = v64;
  sub_1000354C4(sub_1000E7E78, v52, v17);

  if (v3)
  {

    return;
  }

  v18 = v64[0];
  v19 = *(v64[0] + 16);
  if (v19)
  {
    v54 = 0;
    v57 = v16;
    v20 = 0;
    v21 = v64[0] + 32;
    v55 = v19 - 1;
    v56 = _swiftEmptyArrayStorage;
    v58 = (v64[0] + 32);
    while (1)
    {
      v22 = (v21 + 296 * v20);
      v23 = v20;
      while (1)
      {
        if (v23 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_57;
        }

        memcpy(v64, v22, 0x121uLL);
        if (BYTE2(v64[21]) != 1 || (v64[13] & 0x100) == 0)
        {
          goto LABEL_9;
        }

        if ((v64[21] & 0x100000000) == 0)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000B3B24(v64, v63);

        if (v24)
        {
          goto LABEL_17;
        }

        sub_10003C04C(v64);
LABEL_9:
        ++v23;
        v22 += 296;
        if (v19 == v23)
        {
          goto LABEL_22;
        }
      }

      sub_1000B3B24(v64, v63);

LABEL_17:
      v25 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100147120(0, v25[2] + 1, 1);
        v25 = v65;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        sub_100147120((v27 > 1), v28 + 1, 1);
        v25 = v65;
      }

      v20 = v23 + 1;
      v25[2] = v28 + 1;
      v56 = v25;
      memcpy(&v25[37 * v28 + 4], v64, 0x121uLL);
      v21 = v58;
      if (v55 == v23)
      {
LABEL_22:
        v29 = 0;
        v30 = v18 + 32;
        v58 = _swiftEmptyArrayStorage;
        v16 = v57;
        v53 = v18 + 32;
LABEL_23:
        v31 = (v30 + 296 * v29);
        v32 = v29;
        while (v32 < *(v18 + 16))
        {
          memcpy(v64, v31, 0x121uLL);
          if (BYTE2(v64[21]) == 1)
          {
            if (BYTE4(v64[21]) == 1)
            {
              sub_1000B3B24(v64, v63);

LABEL_32:
              v34 = v58;
              v35 = swift_isUniquelyReferenced_nonNull_native();
              v65 = v34;
              if ((v35 & 1) == 0)
              {
                sub_100147120(0, v34[2] + 1, 1);
                v34 = v65;
              }

              v37 = v34[2];
              v36 = v34[3];
              if (v37 >= v36 >> 1)
              {
                sub_100147120((v36 > 1), v37 + 1, 1);
                v34 = v65;
              }

              v29 = v32 + 1;
              v34[2] = v37 + 1;
              v58 = v34;
              memcpy(&v34[37 * v37 + 4], v64, 0x121uLL);
              v16 = v57;
              v30 = v53;
              if (v55 != v32)
              {
                goto LABEL_23;
              }

LABEL_37:
              v38 = 0;
              v39 = v18 + 32;
              v40 = _swiftEmptyArrayStorage;
              v53 = v18 + 32;
LABEL_38:
              v41 = (v39 + 296 * v38);
              v42 = v38;
              while (v42 < *(v18 + 16))
              {
                memcpy(v64, v41, 0x121uLL);
                if (BYTE2(v64[21]) == 1 && (v64[13] & 0x100) == 0)
                {
                  if ((v64[21] & 0x100000000) == 0)
                  {
                    sub_1000B3B24(v64, v63);

LABEL_48:
                    v44 = swift_isUniquelyReferenced_nonNull_native();
                    v65 = v40;
                    if ((v44 & 1) == 0)
                    {
                      sub_100147120(0, v40[2] + 1, 1);
                      v40 = v65;
                    }

                    v46 = v40[2];
                    v45 = v40[3];
                    if (v46 >= v45 >> 1)
                    {
                      sub_100147120((v45 > 1), v46 + 1, 1);
                      v40 = v65;
                    }

                    v38 = v42 + 1;
                    v40[2] = v46 + 1;
                    memcpy(&v40[37 * v46 + 4], v64, 0x121uLL);
                    v16 = v57;
                    v39 = v53;
                    if (v55 == v42)
                    {
LABEL_53:
                      v47 = v56;
                      v48 = v58;
                      goto LABEL_55;
                    }

                    goto LABEL_38;
                  }

                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  sub_1000B3B24(v64, v63);

                  if (v43)
                  {
                    goto LABEL_48;
                  }

                  sub_10003C04C(v64);
                }

                ++v42;
                v41 += 296;
                if (v19 == v42)
                {
                  goto LABEL_53;
                }
              }

              goto LABEL_58;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000B3B24(v64, v63);

            if (v33)
            {
              goto LABEL_32;
            }

            sub_10003C04C(v64);
          }

          ++v32;
          v31 += 296;
          if (v19 == v32)
          {
            goto LABEL_37;
          }
        }

LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }
  }

  v48 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
LABEL_55:

  v64[0] = _swiftEmptyArrayStorage;
  v62 = _swiftEmptyArrayStorage;
  v63[0] = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  sub_1000E7A14(v47, v64, &v62, sub_1000E7FD4);

  v61 = _swiftEmptyArrayStorage;
  sub_1000E7A14(v48, v63, &v61, sub_1000E7FD4);

  v60 = _swiftEmptyArrayStorage;
  sub_1000E7A14(v40, &v65, &v60, sub_10003B8DC);

  v59 = _swiftEmptyArrayStorage;

  sub_1000474CC(v49);

  sub_1000474CC(v50);

  sub_1000474CC(v51);
}

uint64_t sub_1000E7A14(uint64_t result, uint64_t *a2, char **a3, uint64_t (*a4)(void *))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 296)
    {
      memcpy(__dst, i, 0x121uLL);
      memcpy(__src, i, 0x121uLL);
      sub_1000B3B24(__dst, v10);
      sub_1000E7AF0(__src, a2, a3, a4);
      if (v4)
      {
        break;
      }

      memcpy(v10, __src, 0x121uLL);
      result = sub_10003C04C(v10);
      if (!--v5)
      {
        return result;
      }
    }

    memcpy(v10, __src, 0x121uLL);
    return sub_10003C04C(v10);
  }

  return result;
}

uint64_t sub_1000E7AF0(void *__src, uint64_t *a2, char **a3, uint64_t (*a4)(void *))
{
  memcpy(__dst, __src, 0x121uLL);
  v7 = *a2;
  v9 = __dst[11];
  v8 = __dst[12];
  v21[0] = __dst[11];
  v21[1] = __dst[12];
  v20[2] = v21;

  v10 = sub_1000E1818(a4, v20, v7);

  if (v10)
  {
  }

  v12 = *a3;
  sub_1000B3B24(__dst, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100088F84(0, *(v12 + 2) + 1, 1, v12);
    *a3 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100088F84((v14 > 1), v15 + 1, 1, v12);
    *a3 = v12;
  }

  *(v12 + 2) = v15 + 1;
  memcpy(&v12[296 * v15 + 32], __dst, 0x121uLL);
  v16 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((result & 1) == 0)
  {
    result = sub_100088BDC(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
    *a2 = result;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_100088BDC((v17 > 1), v18 + 1, 1, v16);
    v16 = result;
    *a2 = result;
  }

  *(v16 + 16) = v18 + 1;
  v19 = v16 + 16 * v18;
  *(v19 + 32) = v9;
  *(v19 + 40) = v8;
  return result;
}

id sub_1000E7D44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostbackDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000E7D9C(void *__src, uint64_t a2, uint64_t a3, char **a4)
{
  memcpy(__dst, __src, 0x121uLL);
  v5 = *a4;
  sub_1000B3B24(__dst, &v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100088F84(0, *(v5 + 2) + 1, 1, v5);
    *a4 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_100088F84((v7 > 1), v8 + 1, 1, v5);
    *a4 = v5;
  }

  *(v5 + 2) = v8 + 1;
  return memcpy(&v5[296 * v8 + 32], __dst, 0x121uLL);
}

double sub_1000E7E80(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000E7EB0(void *__src, uint64_t a2, _BYTE *a3, void *a4)
{
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v9, a4, 0x121uLL);
  sub_1000E7F50(v9);
  memcpy(__srca, __dst, 0x121uLL);
  MeasurementWindowConfiguration.sourceIDDigits.getter(__srca);
  memcpy(a4, __srca, 0x121uLL);
  *a3 = 1;
  return sub_1000B3B24(__dst, &v7);
}

uint64_t sub_1000E7F50(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023CC48, &unk_1001BE910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E7FB8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E7FF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E8010(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1000E8050(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E41;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x636974796C616E41;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001001BE940;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001001CA690;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001001BE940;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001001CA690;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000E812C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E81D8()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000E8270()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E8318@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9000(*a1);
  *a2 = result;
  return result;
}

void sub_1000E8348(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000073;
  v4 = 0x636974796C616E41;
  if (v2 == 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001001BE940;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001001CA690;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1000E83B0()
{
  v1 = 0x636974796C616E41;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_1000E8414@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9000(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E843C(uint64_t a1)
{
  v2 = sub_1000E9B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8478(uint64_t a1)
{
  v2 = sub_1000E9B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E84B4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000E904C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000E8504()
{
  v1 = 0x6B63696C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_1000E8558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E92E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000E8580(uint64_t a1)
{
  v2 = sub_1000EA83C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E85BC(uint64_t a1)
{
  v2 = sub_1000EA83C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E85F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E9400(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
    *(a2 + 25) = HIBYTE(v7);
  }

  return result;
}

uint64_t sub_1000E86C8@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1002167F0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000E8720(uint64_t a1)
{
  v2 = sub_1000EA00C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E875C(uint64_t a1)
{
  v2 = sub_1000EA00C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E8798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E9610(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1000E87CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = "own";
  }

  else
  {
    v5 = "install-cooldown-hours";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = "install-cooldown-hours";
  }

  else
  {
    v8 = "own";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int sub_1000E8878()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E88F8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000E8964()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E89E0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100214A18, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000E8A40(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "install-cooldown-hours";
  }

  else
  {
    v3 = "own";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1000E8A80()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_1000E8ABC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100214A18, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000E8B20(uint64_t a1)
{
  v2 = sub_1000E995C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8B5C(uint64_t a1)
{
  v2 = sub_1000E995C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8B98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E9794(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000E8BD8()
{
  if (*v0)
  {
    result = 0x656972746E756F63;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_1000E8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656972746E756F63 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000E8CFC(uint64_t a1)
{
  v2 = sub_1000EA890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8D38(uint64_t a1)
{
  v2 = sub_1000EA890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000EA0B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_1000E8DC8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E8E60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E8F04@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216828, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000E8F5C(uint64_t a1)
{
  v2 = sub_1000EA3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8F98(uint64_t a1)
{
  v2 = sub_1000EA3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E8FD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000EA288(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1000E9000(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214978, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E904C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023CC78, &qword_1001BEBB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000E9B94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  sub_10000CDE0(&qword_10023CC88, &qword_1001BEBB8);
  v30 = 0;
  sub_1000E9BE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v23;
  v30 = 1;
  sub_1000E9CC8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v24;
  v22 = v23;
  v20 = v25;
  v28 = v26;
  v12 = v27;
  v30 = 2;
  sub_1000E9D1C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  v14 = v24;
  v29 = v12;
  result = sub_10000DB58(a1);
  v17 = v21;
  v16 = v22;
  *a2 = v11;
  *(a2 + 8) = v16;
  v18 = v20;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v28;
  *(a2 + 33) = v29;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t sub_1000E92E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63696C63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CCFF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000E9400(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023CD28, &qword_1001BF138);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[3];
  sub_10000DA7C(a1, v8);
  sub_1000EA83C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    v18 = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = v9;
    v17 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    HIDWORD(v13) = v12;
    v16 = 2;
    sub_10004DC18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_10000DB58(a1);
    v15 = v10 & 1;
    v14 = BYTE4(v13) & 1;
  }

  return v8;
}

void *sub_1000E9610(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023CCC8, &qword_1001BEDF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10000DA7C(a1, a1[3]);
  sub_1000EA00C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_1000EA060();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_10000DB58(a1);
  }

  return v9;
}

uint64_t sub_1000E9794(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023CC50, &qword_1001BE9A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14[-v6];
  v8 = a1[3];
  sub_10000DA7C(a1, v8);
  sub_1000E995C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    v14[31] = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = v9;
    v14[30] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v4 + 8))(v7, v3);
    sub_10000DB58(a1);
    v14[24] = v10 & 1;
    v14[8] = v13 & 1;
  }

  return v8;
}

unint64_t sub_1000E995C()
{
  result = qword_10023CC58;
  if (!qword_10023CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC58);
  }

  return result;
}

uint64_t sub_1000E99C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1000E9A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000E9A90()
{
  result = qword_10023CC60;
  if (!qword_10023CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC60);
  }

  return result;
}

unint64_t sub_1000E9AE8()
{
  result = qword_10023CC68;
  if (!qword_10023CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC68);
  }

  return result;
}

unint64_t sub_1000E9B40()
{
  result = qword_10023CC70;
  if (!qword_10023CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC70);
  }

  return result;
}

unint64_t sub_1000E9B94()
{
  result = qword_10023CC80;
  if (!qword_10023CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC80);
  }

  return result;
}

unint64_t sub_1000E9BE8()
{
  result = qword_10023CC90;
  if (!qword_10023CC90)
  {
    sub_10000CCC0(&qword_10023CC88, &qword_1001BEBB8);
    sub_1000E9C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC90);
  }

  return result;
}

unint64_t sub_1000E9C74()
{
  result = qword_10023CC98;
  if (!qword_10023CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC98);
  }

  return result;
}

unint64_t sub_1000E9CC8()
{
  result = qword_10023CCA0;
  if (!qword_10023CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCA0);
  }

  return result;
}

unint64_t sub_1000E9D1C()
{
  result = qword_10023CCA8;
  if (!qword_10023CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCA8);
  }

  return result;
}

uint64_t sub_1000E9D80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1000E9DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000E9E44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1000E9E58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 26))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 25);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 25);
  }

  v5 = v4 - 4;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1000E9EAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1000E9F08()
{
  result = qword_10023CCB0;
  if (!qword_10023CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCB0);
  }

  return result;
}

unint64_t sub_1000E9F60()
{
  result = qword_10023CCB8;
  if (!qword_10023CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCB8);
  }

  return result;
}

unint64_t sub_1000E9FB8()
{
  result = qword_10023CCC0;
  if (!qword_10023CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCC0);
  }

  return result;
}

unint64_t sub_1000EA00C()
{
  result = qword_10023CCD0;
  if (!qword_10023CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCD0);
  }

  return result;
}

unint64_t sub_1000EA060()
{
  result = qword_10023CCD8;
  if (!qword_10023CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCD8);
  }

  return result;
}

uint64_t sub_1000EA0B4(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023CD38, &unk_1001BF140);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000DA7C(a1, v8);
  sub_1000EA890();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    v10[15] = 1;
    sub_1000EA8E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000DB58(a1);
  return v8;
}

void *sub_1000EA288(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023CCE0, &qword_1001BEDF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10000DA7C(a1, a1[3]);
  sub_1000EA3FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_1000EA450();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_10000DB58(a1);
  }

  return v9;
}

unint64_t sub_1000EA3FC()
{
  result = qword_10023CCE8;
  if (!qword_10023CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCE8);
  }

  return result;
}

unint64_t sub_1000EA450()
{
  result = qword_10023CCF0;
  if (!qword_10023CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCF0);
  }

  return result;
}

uint64_t sub_1000EA4C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000EA520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000EA580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 25);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1000EA5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1000EA630()
{
  result = qword_10023CCF8;
  if (!qword_10023CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCF8);
  }

  return result;
}

unint64_t sub_1000EA688()
{
  result = qword_10023CD00;
  if (!qword_10023CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD00);
  }

  return result;
}

unint64_t sub_1000EA6E0()
{
  result = qword_10023CD08;
  if (!qword_10023CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD08);
  }

  return result;
}

unint64_t sub_1000EA738()
{
  result = qword_10023CD10;
  if (!qword_10023CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD10);
  }

  return result;
}

unint64_t sub_1000EA790()
{
  result = qword_10023CD18;
  if (!qword_10023CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD18);
  }

  return result;
}

unint64_t sub_1000EA7E8()
{
  result = qword_10023CD20;
  if (!qword_10023CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD20);
  }

  return result;
}

unint64_t sub_1000EA83C()
{
  result = qword_10023CD30;
  if (!qword_10023CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD30);
  }

  return result;
}

unint64_t sub_1000EA890()
{
  result = qword_10023CD40;
  if (!qword_10023CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD40);
  }

  return result;
}

unint64_t sub_1000EA8E4()
{
  result = qword_10023CD48;
  if (!qword_10023CD48)
  {
    sub_10000CCC0(&unk_10023C250, &qword_1001B58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD48);
  }

  return result;
}

unint64_t sub_1000EA984()
{
  result = qword_10023CD50;
  if (!qword_10023CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD50);
  }

  return result;
}

unint64_t sub_1000EA9DC()
{
  result = qword_10023CD58;
  if (!qword_10023CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD58);
  }

  return result;
}

unint64_t sub_1000EAA34()
{
  result = qword_10023CD60;
  if (!qword_10023CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD60);
  }

  return result;
}

unint64_t sub_1000EAA8C()
{
  result = qword_10023CD68;
  if (!qword_10023CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD68);
  }

  return result;
}

unint64_t sub_1000EAAE4()
{
  result = qword_10023CD70;
  if (!qword_10023CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD70);
  }

  return result;
}

unint64_t sub_1000EAB3C()
{
  result = qword_10023CD78;
  if (!qword_10023CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD78);
  }

  return result;
}

unint64_t sub_1000EABA8()
{
  result = qword_10023CD80;
  if (!qword_10023CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD80);
  }

  return result;
}

Swift::Int sub_1000EAC20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BF500[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000EACA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BF500[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000EACF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EB018(*a1);
  *a2 = result;
  return result;
}

void sub_1000EAD48(_BYTE *a1, uint64_t a2)
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      sub_1000EB8C4(a2);
    }
  }

  else if (*a1)
  {
    v3 = [type metadata accessor for FrozenImpressionEntity() databaseTable];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_1000EB45C(v4, v6);

    v7 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a2, v7);
  }

  else
  {
    sub_1000EB330(a2);
  }
}

unint64_t sub_1000EAE24(void *a1)
{
  a1[1] = sub_1000EAE5C();
  a1[2] = sub_1000EAEB0();
  result = sub_1000EAF04();
  a1[3] = result;
  return result;
}

unint64_t sub_1000EAE5C()
{
  result = qword_10023CDC8;
  if (!qword_10023CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDC8);
  }

  return result;
}

unint64_t sub_1000EAEB0()
{
  result = qword_10023CDD0;
  if (!qword_10023CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDD0);
  }

  return result;
}

unint64_t sub_1000EAF04()
{
  result = qword_10023CDD8;
  if (!qword_10023CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDD8);
  }

  return result;
}

unint64_t sub_1000EAF5C()
{
  result = qword_10023CDE0;
  if (!qword_10023CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDE0);
  }

  return result;
}

unint64_t sub_1000EAFB4()
{
  result = qword_10023CDE8;
  if (!qword_10023CDE8)
  {
    sub_10000CCC0(&qword_10023CDF0, &qword_1001BF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDE8);
  }

  return result;
}

uint64_t sub_1000EB018(uint64_t result)
{
  if (result > 17400)
  {
    if (result == 18000)
    {
      return 3;
    }

    if (result == 17401)
    {
      return 2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 17400)
    {
      return 1;
    }
  }

  return 4;
}

uint64_t sub_1000EB06C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(153);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6973736572706D69;
  v7._object = 0xED000064695F6E6FLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA650;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA000;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6F7774656E5F6461;
  v13._object = 0xED000064695F6B72;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6D617473656D6974;
  v15._object = 0xE900000000000070;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x52454745544E4920;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000010;
  v17._object = 0x80000001001CA670;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xA2C5458455420;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x5F746361706D6F63;
  v19._object = 0xEB0000000073776ALL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xA2C5458455420;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA620;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  v22._object = 0x80000001001CB530;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23._object = 0x80000001001CA000;
  v23._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6F7774656E5F6461;
  v25._object = 0xED000064695F6B72;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000018;
  v26._object = 0x80000001001CB550;
  String.append(_:)(v26);
  return 0;
}

void sub_1000EB330(uint64_t a1)
{
  v2 = [type metadata accessor for PendingImpressionEntity() databaseTable];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_1000EB06C(v3, v5);

  v6 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v6);

  v7 = [type metadata accessor for ImpressionEntity() databaseTable];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000EB06C(v8, v10);

  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);
}

uint64_t sub_1000EB45C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(104);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._object = 0x80000001001CAD90;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C424F4C4220;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000014;
  v9._object = 0x80000001001CADB0;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C424F4C4220;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA000;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x63616274736F6867;
  v13._object = 0xEC00000064695F6BLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x550A2C5458455420;
  v14._object = 0xEE0028455551494ELL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x63616274736F6867;
  v15._object = 0xEC00000064695F6BLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001001CB550;
  String.append(_:)(v16);
  return 0;
}

void sub_1000EB628(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(38);

  v6._countAndFlagsBits = a2;
  v6._object = a3;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x205445530ALL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x6D6E6F7269766E65;
  v8._object = 0xEB00000000746E65;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 656424224;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x69746375646F7270;
  v10._object = 0xEA00000000006E6FLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x2045524548570A27;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  v12._object = 0x80000001001CA650;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x3B30203D2120;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v14);

  _StringGuts.grow(_:)(37);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x205445530ALL;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6D6E6F7269766E65;
  v17._object = 0xEB00000000746E65;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 656424224;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6D706F6C65766564;
  v19._object = 0xEB00000000746E65;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x2045524548570A27;
  v20._object = 0xE800000000000000;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA650;
  v21._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x3B30203D20;
  v22._object = 0xE500000000000000;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v23);
}

uint64_t sub_1000EB8C4(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  strcpy(v31, "ALTER TABLE ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v2 = type metadata accessor for PendingImpressionEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000EB628(a1, v13, v15);

  _StringGuts.grow(_:)(34);

  strcpy(v31, "ALTER TABLE ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v16 = type metadata accessor for ImpressionEntity();
  v17 = [v16 databaseTable];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x4C4F432044444120;
  v22._object = 0xEC000000204E4D55;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x6D6E6F7269766E65;
  v23._object = 0xEB00000000746E65;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x3B5458455420;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v25);

  v26 = [v16 databaseTable];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_1000EB628(a1, v27, v29);
}

__SecCertificate *sub_1000EBBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __SecCertificate *a8)
{
  v11 = Data.init(base64Encoded:options:)();
  if (v12 >> 60 != 15)
  {
    v41 = v11;
    v42 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = SecCertificateCreateWithData(0, isa);

    if (v15)
    {
      v16 = SecCertificateCopyKey(v15);
      if (v16)
      {
        v40 = v15;
        v15 = v16;
        v17 = SecKeyCopyExternalRepresentation(v16, 0);
        if (v17)
        {
          v18 = v17;
          v39 = v15;
          v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v20;

          v21 = Data.init(base64Encoded:options:)();
          if (v22 >> 60 == 15)
          {
            sub_10005CA88();
            swift_allocError();
            *v23 = 7;
            swift_willThrow();
            v24 = v19;
            v25 = v38;
          }

          else
          {
            v29 = v21;
            v30 = v22;
            v31 = Data.init(base64Encoded:options:)();
            a8 = v40;
            if (v32 >> 60 == 15)
            {
              sub_10005CA88();
              swift_allocError();
              *v33 = 9;
              swift_willThrow();
              sub_10005CB30(v29, v30);
              sub_10001BABC(v19, v38);

LABEL_17:
              goto LABEL_18;
            }

            v34 = v31;
            v35 = v32;
            sub_10000DA7C((v8 + 16), *(v8 + 40));
            v36 = SKANUTClient.finalize(publicInput:evaluatedElement:proof:publicKey:)();
            if (!v9)
            {
              a8 = v36;
              sub_10005CB30(v34, v35);
              sub_10005CB30(v29, v30);
              sub_10001BABC(v19, v38);

              sub_10005CB30(v41, v42);
              return a8;
            }

            sub_10005CB30(v34, v35);
            sub_10005CB30(v29, v30);
            v24 = v19;
            v25 = v38;
          }

          sub_10001BABC(v24, v25);

          goto LABEL_17;
        }

        sub_10005CA88();
        swift_allocError();
        *v28 = 5;
        swift_willThrow();
      }

      else
      {
        sub_10005CA88();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();
      }
    }

    else
    {
      sub_10005CA88();
      swift_allocError();
      *v26 = 3;
      swift_willThrow();
    }

LABEL_18:
    sub_10005CB30(v41, v42);
    return a8;
  }

  sub_10005CA88();
  swift_allocError();
  *v13 = 2;
  swift_willThrow();
  return a8;
}

uint64_t sub_1000EBF14()
{
  sub_10000DB58((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1000EBF70()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 32;
  *(v0 + 48) = 0u;
  *(v0 + 32) = 0u;
  v1 = (v0 + 32);
  SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, (v0 + 32));
  v2 = sub_100098A3C(v1, 32);

  return v2;
}

unint64_t sub_1000EBFFC()
{
  v0 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v42 = &v37 - v2;
  v3 = type metadata accessor for Calendar();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  v13 = __chkstk_darwin(v11);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  Date.init()();
  sub_10000CDE0(&qword_10023A720, &unk_1001B5460);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001B75D0;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, enum case for Calendar.Component.year(_:), v17);
  v23(v22 + v19, enum case for Calendar.Component.month(_:), v17);
  v23(v22 + 2 * v19, enum case for Calendar.Component.day(_:), v17);
  sub_100028384(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Calendar.current.getter();
  Calendar.dateComponents(_:from:)();

  v24 = v41;
  v25 = *(v40 + 8);
  v25(v6, v41);
  static Calendar.current.getter();
  v26 = v42;
  Calendar.date(from:)();
  v27 = v24;
  v28 = v38;
  v25(v6, v27);
  v29 = v26;
  v30 = v39;
  if ((*(v28 + 48))(v29, 1, v39) == 1)
  {
    (*(v43 + 8))(v10, v44);
    (*(v28 + 8))(v16, v30);
    sub_1000B3CC8(v29);
    return 0;
  }

  v32 = v37;
  (*(v28 + 32))(v37, v29, v30);
  Date.timeIntervalSince1970.getter();
  v34 = v33;
  v35 = *(v28 + 8);
  v35(v32, v30);
  (*(v43 + 8))(v10, v44);
  result = (v35)(v16, v30);
  v36 = v34 * 1000.0;
  if (COERCE__INT64(fabs(v34 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v36 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v36 < 1.84467441e19)
  {
    return v36;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000EC504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000EC54C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000EC5B4(uint64_t a1)
{
  result = sub_10005CA88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EC5E0()
{
  result = qword_10023CEA0;
  if (!qword_10023CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CEA0);
  }

  return result;
}

id sub_1000EC7D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDistributorMetadataEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000EC830()
{
  result = qword_10023CED0;
  if (!qword_10023CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CED0);
  }

  return result;
}

id sub_1000EC8C4(uint64_t a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = JSONEncoder.init()();
  sub_1000EEF1C(a1, v8, type metadata accessor for SnoutStoryModel, &qword_10023A0B0, type metadata accessor for SnoutStoryModel);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for SnoutStoryEntity();
        v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v9 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = *a1;
        type metadata accessor for SnoutStoryEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v11 onConnection:a2];
        v12 = Dictionary._bridgeToObjectiveC()().super.isa;

        v13 = [a2 setValuesWithDictionary:v12];

        if ((v13 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ECBDC(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EED8C(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for SoloEventEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        type metadata accessor for SoloEventEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ECEDC(uint64_t a1, id a2, void (*a3)(void))
{
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = JSONEncoder.init()();
  sub_1000EEF1C(a1, v10, type metadata accessor for ImpressionModel, &qword_10023B0F0, type metadata accessor for ImpressionModel);

  if (!v3)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        a3(0);
        v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v11 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v13 = *a1;
        a3(0);
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v13 onConnection:a2];
        v14 = Dictionary._bridgeToObjectiveC()().super.isa;

        v15 = [a2 setValuesWithDictionary:v14];

        if ((v15 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ED22C(_BYTE *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF094(v15, a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[8])
      {
        type metadata accessor for PostbackEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          type metadata accessor for AKSQLError(0);
          v10 = 5;
LABEL_9:
          v16 = v10;
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }

      else
      {
        v11 = *a1;
        type metadata accessor for PostbackEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v11 onConnection:a2];
        v12 = Dictionary._bridgeToObjectiveC()().super.isa;

        v13 = [a2 setValuesWithDictionary:v12];

        if ((v13 & 1) == 0)
        {
          type metadata accessor for AKSQLError(0);
          v10 = 4;
          goto LABEL_9;
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      v16 = 3;
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ED500(uint64_t *a1, id a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF1F0(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      type metadata accessor for ConversionTagEntity();
      v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      if (v6)
      {
        v11 = v10;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v11 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        a2 = [v10 initWithPersistentID:v5 onConnection:a2];
        v13 = Dictionary._bridgeToObjectiveC()().super.isa;

        v14 = [a2 setValuesWithDictionary:v13];

        if ((v14 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ED804(uint64_t *a1, id a2, void (*a3)(void *__return_ptr, uint64_t *, uint64_t), void (*a4)(void))
{
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = JSONEncoder.init()();
  a3(v19, a1, v12);

  if (!v4)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[1])
      {
        a4(0);
        v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v13 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = *a1;
        a4(0);
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v15 onConnection:a2];
        v16 = Dictionary._bridgeToObjectiveC()().super.isa;

        v17 = [a2 setValuesWithDictionary:v16];

        if ((v17 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EDAEC(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF498(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for FinalizedTokenEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        type metadata accessor for FinalizedTokenEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EDE00(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF758(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for ConversionHistoryEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        type metadata accessor for ConversionHistoryEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE0D4(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF8BC(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for ItemIdentifierBundleIDMapEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        type metadata accessor for ItemIdentifierBundleIDMapEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE3A8(uint64_t *a1, id a2, void (*a3)(void *__return_ptr, uint64_t *, uint64_t), void (*a4)(void))
{
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = JSONEncoder.init()();
  a3(v19, a1, v12);

  if (!v4)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[1])
      {
        a4(0);
        v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v13 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = *a1;
        a4(0);
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v15 onConnection:a2];
        v16 = Dictionary._bridgeToObjectiveC()().super.isa;

        v17 = [a2 setValuesWithDictionary:v16];

        if ((v17 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE690(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EFB6C(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for FrozenImpressionEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        type metadata accessor for FrozenImpressionEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE964(__int128 *a1, id a2)
{
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EFCC8(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for GhostbackEntity();
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        type metadata accessor for GhostbackEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

uint64_t sub_1000EEC38(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  sub_10005D188();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EED8C(__int128 *a1)
{
  v2 = a1[13];
  v31 = a1[12];
  v32 = v2;
  v33 = a1[14];
  v3 = a1[9];
  v27 = a1[8];
  v28 = v3;
  v4 = a1[11];
  v29 = a1[10];
  v30 = v4;
  v5 = a1[5];
  v23 = a1[4];
  v24 = v5;
  v6 = a1[7];
  v25 = a1[6];
  v26 = v6;
  v7 = a1[1];
  v19 = *a1;
  v20 = v7;
  v8 = a1[3];
  v21 = a1[2];
  v22 = v8;
  sub_1000F19C8();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v11 = result;
    v12 = v10;
    v13 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = 0;
    v15 = [v13 JSONObjectWithData:isa options:4 error:&v18];

    v16 = v18;
    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v11, v12);
      return swift_unknownObjectRelease();
    }

    else
    {
      v17 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v11, v12);
    }
  }

  return result;
}

uint64_t sub_1000EEF1C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1000F1A1C(a4, a5);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v5)
  {
    v10 = result;
    v11 = v9;
    v12 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = 0;
    v14 = [v12 JSONObjectWithData:isa options:4 error:&v17];

    v15 = v17;
    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v10, v11);
      return swift_unknownObjectRelease();
    }

    else
    {
      v16 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v10, v11);
    }
  }

  return result;
}

uint64_t sub_1000EF094(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1000AF17C();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    v6 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = 0;
    v8 = [v6 JSONObjectWithData:isa options:4 error:&v11];

    v9 = v11;
    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v4, v5);
      return swift_unknownObjectRelease();
    }

    else
    {
      v10 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v4, v5);
    }
  }

  return result;
}

uint64_t sub_1000EF1F0(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 4);
  sub_1000A9244();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EF344(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  sub_1000E2C54();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EF498(__int128 *a1)
{
  v2 = a1[5];
  v19 = a1[4];
  *v20 = v2;
  *&v20[15] = *(a1 + 95);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  sub_1000F1AB8();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v7 = result;
    v8 = v6;
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = 0;
    v11 = [v9 JSONObjectWithData:isa options:4 error:&v14];

    v12 = v14;
    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v7, v8);
      return swift_unknownObjectRelease();
    }

    else
    {
      v13 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v7, v8);
    }
  }

  return result;
}

uint64_t sub_1000EF5FC(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = a1[2];
  v16 = *(a1 + 6);
  sub_1000F1A64();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EF758(__int128 *a1)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v18 = a1[4];
  v19 = *(a1 + 10);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  sub_1000464D4();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EF8BC(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 4);
  sub_10007C520();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EFA10(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = a1[2];
  v16 = *(a1 + 6);
  sub_100010C38();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EFB6C(__int128 *a1)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v18 = *(a1 + 8);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  sub_100071428();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EFCC8(__int128 *a1)
{
  v2 = a1[7];
  v22 = a1[6];
  v23 = v2;
  v24 = a1[8];
  v3 = a1[3];
  v18 = a1[2];
  v19 = v3;
  v4 = a1[5];
  v20 = a1[4];
  v21 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  sub_10006F5C8();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = result;
    v9 = v7;
    v10 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = 0;
    v12 = [v10 JSONObjectWithData:isa options:4 error:&v15];

    v13 = v15;
    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v8, v9);
      return swift_unknownObjectRelease();
    }

    else
    {
      v14 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v8, v9);
    }
  }

  return result;
}

uint64_t sub_1000EFE34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x736F506863746566;
  }

  if (v3)
  {
    v5 = 0xED00006B63616274;
  }

  else
  {
    v5 = 0x80000001001CAAB0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x736F506863746566;
  }

  if (*a2)
  {
    v7 = 0x80000001001CAAB0;
  }

  else
  {
    v7 = 0xED00006B63616274;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000EFEEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000EFF80()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000F0000()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F0090@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002157B0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000F00F0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001001CAAB0;
  v3 = 0x736F506863746566;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00006B63616274;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000F01F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 278) = a3;
  *(v8 + 72) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000F02C0, 0, 0);
}

uint64_t sub_1000F02C0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1000F03C0;
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  return sub_100111770((v0 + 2), sub_1000F1C68, v3, v7, v5, v6);
}

uint64_t sub_1000F03C0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 152);

    v6 = *(v2 + 144);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 152);

    return _swift_task_switch(sub_1000F051C, 0, 0);
  }
}

uint64_t sub_1000F051C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (!v2)
  {
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    result = (*(v16 + 8))(v15, v17);
    v20 = v19 * 1000.0;
    if (COERCE__INT64(fabs(v19 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v20 > -1.0)
      {
        if (v20 < 1.84467441e19)
        {
          v21 = *(v0 + 278);
          v23 = *(v0 + 72);
          v22 = *(v0 + 80);
          v24 = v20;
          *(v0 + 248) = 1;
          v25 = v21 & 1;
          v26 = swift_allocObject();
          *(v0 + 224) = v26;
          *(v26 + 16) = 0;
          *(v26 + 24) = *(v0 + 248);
          *(v26 + 25) = *(v0 + 249);
          *(v26 + 28) = *(v0 + 252);
          *(v26 + 32) = v23;
          *(v26 + 40) = v22;
          *(v26 + 48) = v25;
          *(v26 + 49) = *(v0 + 257);
          *(v26 + 52) = *(v0 + 260);
          *(v26 + 56) = 1;
          *(v26 + 64) = v24;

          v27 = swift_task_alloc();
          *(v0 + 232) = v27;
          *v27 = v0;
          v27[1] = sub_1000F1020;
          v28 = *(v0 + 112);
          v29 = *(v0 + 120);
          v30 = *(v0 + 104);
          v31 = sub_1000F1C8C;
          goto LABEL_38;
        }

LABEL_47:
        __break(1u);
        return result;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v46 = *(v0 + 32);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  if (*(v0 + 278))
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x736F506863746566;
  }

  if (*(v0 + 278))
  {
    v7 = 0x80000001001CAAB0;
  }

  else
  {
    v7 = 0xED00006B63616274;
  }

  if (v4)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = 0x736F506863746566;
  }

  if (v4)
  {
    v9 = 0x80000001001CAAB0;
  }

  else
  {
    v9 = 0xED00006B63616274;
  }

  if (v6 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_10000DAF8(v0 + 16, &qword_10023CEF0, &unk_1001BF6E8);
      sub_1000F18B8();
      swift_allocError();
      swift_willThrow();
      v13 = *(v0 + 144);

      v14 = *(v0 + 8);

      return v14();
    }
  }

  v32 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_42;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v37 = v36;
  result = (*(v34 + 8))(v33, v35);
  v38 = v37 * 1000.0;
  if (COERCE__INT64(fabs(v37 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v38 <= -1.0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v38 >= 1.84467441e19)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = 3;
  if (v4)
  {
    v39 = 10;
  }

  if (v39 < v32)
  {
    v40 = *(v0 + 88);
    sub_10000DAF8(v0 + 16, &qword_10023CEF0, &unk_1001BF6E8);
    v47 = (v40 + *v40);
    v41 = v40[1];
    v42 = swift_task_alloc();
    *(v0 + 192) = v42;
    *v42 = v0;
    v42[1] = sub_1000F0BDC;
    v43 = *(v0 + 96);

    return v47();
  }

  v44 = v38;
  *(v0 + 256) = v5 & 1;
  v26 = swift_allocObject();
  *(v0 + 168) = v26;
  *(v26 + 16) = v1;
  *(v26 + 24) = *(v0 + 256);
  *(v26 + 25) = *(v0 + 264);
  *(v26 + 28) = *(v0 + 267);
  *(v26 + 32) = v46;
  *(v26 + 40) = v2;
  *(v26 + 48) = v4 & 1;
  *(v26 + 49) = *(v0 + 271);
  *(v26 + 52) = *(v0 + 274);
  *(v26 + 56) = v32;
  *(v26 + 64) = v44;
  v45 = swift_task_alloc();
  *(v0 + 176) = v45;
  *v45 = v0;
  v45[1] = sub_1000F0AA8;
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  v30 = *(v0 + 104);
  v31 = sub_1000F190C;
LABEL_38:

  return sub_10010E890(sub_10010E890, v31, v26, v30, v28, v29);
}

uint64_t sub_1000F0AA8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_1000F11BC;
  }

  else
  {
    v6 = sub_1000F1CA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F0BDC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 144);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_1000F0D28, 0, 0);
  }
}

uint64_t sub_1000F0D28()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  v0[25] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1000F0E20;
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  return sub_10010E890(sub_10010E890, sub_1000F1928, v3, v7, v5, v6);
}

uint64_t sub_1000F0E20()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);

  if (v0)
  {
    v6 = sub_1000F0FBC;
  }

  else
  {
    v6 = sub_1000F0F54;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F0F54()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1000F0FBC()
{
  v1 = v0[27];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F1020()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);

  if (v0)
  {
    v6 = sub_1000F1220;
  }

  else
  {
    v6 = sub_1000F1154;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F1154()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1000F11BC()
{
  v1 = v0[23];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F1220()
{
  v1 = v0[30];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

void sub_1000F1284(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000EE3A8(a2, v4, sub_1000EFA10, type metadata accessor for RetryCountEntity);

  if (!v2)
  {
  }
}

uint64_t sub_1000F1318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return _swift_task_switch(sub_1000F1340, 0, 0);
}

uint64_t sub_1000F1340()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000F1440;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  return sub_100111770((v0 + 2), sub_1000F1954, v3, v7, v5, v6);
}

uint64_t sub_1000F1440()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1000F1600;
  }

  else
  {
    v4 = sub_1000F1570;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F1570()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[7];
    sub_10000DAF8((v0 + 2), &qword_10023CEF0, &unk_1001BF6E8);
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2, v1 == 0);
}

uint64_t sub_1000F1600()
{
  v18 = v0;
  if (qword_100239CD0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FCA0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10017AD04(v9, v8, &v17);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retrieiving retry count for identifier: %s, error: %@", v10, 0x16u);
    sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v12);
  }

  else
  {
    v14 = v0[16];
  }

  v15 = v0[1];

  return v15(0, 1);
}

uint64_t sub_1000F1848()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F1880()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000F18B8()
{
  result = qword_10023CEF8;
  if (!qword_10023CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CEF8);
  }

  return result;
}

void sub_1000F1928()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100088030();
}

double sub_1000F196C@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = sub_10001BC18(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    result = *&v9;
    *(a1 + 32) = v9;
    *(a1 + 48) = v10;
  }

  return result;
}

unint64_t sub_1000F19C8()
{
  result = qword_10023CF00;
  if (!qword_10023CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF00);
  }

  return result;
}

uint64_t sub_1000F1A1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F1A64()
{
  result = qword_10023CF08;
  if (!qword_10023CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF08);
  }

  return result;
}

unint64_t sub_1000F1AB8()
{
  result = qword_10023CF10;
  if (!qword_10023CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF10);
  }

  return result;
}

unint64_t sub_1000F1B30()
{
  result = qword_10023CF18;
  if (!qword_10023CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF18);
  }

  return result;
}

unint64_t sub_1000F1B84(uint64_t a1)
{
  result = sub_1000F18B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F1BB0()
{
  result = qword_10023CF20;
  if (!qword_10023CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF20);
  }

  return result;
}

unint64_t sub_1000F1C04()
{
  result = qword_10023CF28;
  if (!qword_10023CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CF28);
  }

  return result;
}

void sub_1000F1CA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = [v2 connection];
  v13 = *(v5 + 16);
  v13(v11, a1, v4);
  v14 = String._bridgeToObjectiveC()();
  v13(v9, v11, v4);
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v16 = [objc_opt_self() predicateWithProperty:v14 equalToValue:v15];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v11, v4);
  v17 = sub_100085730(v12, v16, _swiftEmptyArrayStorage, 0, 0);

  if (([v17 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    v18[1] = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F1F0C()
{
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v1 = String._bridgeToObjectiveC()();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v3 = objc_opt_self();
  v4 = [v3 predicateWithProperty:v1 equalToValue:v2];
  swift_unknownObjectRelease();

  *(inited + 32) = v4;
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 predicateWithProperty:v5 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v6;
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [v7 doesNotContainPredicateWithProperty:v8 values:isa];

  *(inited + 48) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v12 = [v15 connection];
  v13 = v11;
  v14 = sub_100085748(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  if (([v14 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F2234()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:4];
  swift_unknownObjectRelease();

  v7 = sub_100085730(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F23F4()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v4 = v3 * 1000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = objc_opt_self();
  v8 = [v7 predicateWithProperty:v5 value:v6 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v8;
  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 predicateWithProperty:v9 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v12 = [v1 connection];
  v13 = v11;
  v14 = sub_100085748(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  if (([v14 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F2740(uint64_t a1, uint64_t (*a2)(id, id, void *, void, void))
{
  v4 = [v2 connection];
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  v8 = a2(v4, v7, _swiftEmptyArrayStorage, 0, 0);
  if (([v8 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_1000F28B0()
{
  v1 = [v0 connection];
  v2 = String._bridgeToObjectiveC()();

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = sub_100086C40(v1, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v5 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

double sub_1000F2AD4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_1000BC56C(0, 8);
  v10 = v9;

  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *&result = 1;
    *(a1 + 24) = xmmword_1001BF980;
  }

  else
  {
    v12 = Logger.xpc.unsafeMutableAddressor();
    (*(v3 + 16))(v6, v12, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v13, v14, "Overriding client item ID: %llu", v15, 0xCu);
    }

    (*(v3 + 8))(v6, v2);
    return sub_1000B7C6C(v8, a1);
  }

  return result;
}

id sub_1000F2CE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F2D3C()
{
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    return v4;
  }

  swift_errorRetain();
  if ((swift_dynamicCast() & 1) != 0 && v4 == 4)
  {
    return 6;
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v1 = 8 * (v4 == 3);
    v2 = v4 == 2;
    v3 = 7;
LABEL_13:
    if (v2)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (v4 == 2)
    {
      v1 = 10;
    }

    else
    {
      v1 = 0;
    }

    v2 = v4 == 1;
    v3 = 9;
    goto LABEL_13;
  }

  swift_errorRetain();
  if (!swift_dynamicCast())
  {
    swift_errorRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    if (v4 == 3)
    {
      v1 = 14;
    }

    else
    {
      v1 = 0;
    }

    v2 = v4 == 2;
    v3 = 13;
    goto LABEL_13;
  }

  if (v4)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

uint64_t sub_1000F2F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (**a9)(void, void))
{
  v49 = a6;
  v45 = a4;
  v46 = a1;
  v48 = a3;
  v47 = a2;
  v12 = sub_10000CDE0(&qword_10023CF90, &unk_1001BF9B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Logger();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v42 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a9;
  _Block_copy(a9);
  sub_1000F2AD4(v52);
  if (*(&v52[1] + 1) != 1)
  {
    v53[0] = v52[0];
    v53[1] = v52[1];
    v54 = *&v52[2];
    goto LABEL_5;
  }

  v42 = v12;
  sub_10000DAF8(v52, &qword_10023CF98, &unk_1001C3DD0);
  v25 = [objc_opt_self() currentConnection];
  if (v25)
  {
    v26 = v25;
    [v25 auditToken];
    sub_1000B78E0(*&v52[0], *(&v52[0] + 1), *&v52[1], *(&v52[1] + 1), v53);

LABEL_5:
    sub_1000A2558(a5, v23);
    sub_100014ECC(v45, v52);
    sub_1000B6D74(v53, v50);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v28 = v47;
    *(v27 + 32) = v46;
    *(v27 + 40) = v28;
    *(v27 + 48) = v48;
    *(v27 + 56) = v49;
    *(v27 + 64) = a7;
    memcpy((v27 + 72), v52, 0x260uLL);
    v29 = v50[1];
    *(v27 + 680) = v50[0];
    *(v27 + 696) = v29;
    *(v27 + 712) = v51;
    *(v27 + 720) = a8;
    *(v27 + 728) = sub_1000849C4;
    *(v27 + 736) = v24;

    v30 = a8;

    sub_10001267C(0, 0, v23, &unk_1001BF9C8, v27);

    sub_1000D5894(v53);
  }

  sub_1000F341C();
  swift_allocError();
  swift_willThrow();
  v32 = Logger.xpc.unsafeMutableAddressor();
  (*(v43 + 16))(v19, v32, v44);
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Received error while getting client: %@", v35, 0xCu);
    sub_10000DAF8(v36, &qword_100239F10, &qword_1001B4FD0);
  }

  (*(v43 + 8))(v19, v44);
  *v15 = sub_1000F2D3C();
  swift_storeEnumTagMultiPayload();
  v38 = sub_10017B65C();
  v40 = v39;
  sub_10000DAF8(v15, &qword_10023CF90, &unk_1001BF9B8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (a9)[2](a9, isa);

  sub_10001BABC(v38, v40);
}

uint64_t sub_1000F33E4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000F341C()
{
  result = qword_10023CFA0;
  if (!qword_10023CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CFA0);
  }

  return result;
}

uint64_t sub_1000F3470()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  sub_10000DB58((v0 + 96));
  sub_10000DB58((v0 + 136));
  v4 = *(v0 + 184);

  v5 = *(v0 + 208);

  v6 = *(v0 + 232);

  v7 = *(v0 + 256);

  v8 = *(v0 + 280);

  v9 = *(v0 + 304);

  sub_10000DB58((v0 + 320));
  sub_10000DB58((v0 + 360));
  sub_10000DB58((v0 + 400));
  sub_10000DB58((v0 + 440));
  sub_10000DB58((v0 + 480));
  sub_10000DB58((v0 + 520));
  sub_10000DB58((v0 + 560));
  sub_10000DB58((v0 + 600));
  sub_10000DB58((v0 + 640));
  if (*(v0 + 704))
  {
    sub_10000DB58((v0 + 680));
  }

  v10 = *(v0 + 736);

  return _swift_deallocObject(v0, 744, 7);
}

uint64_t sub_1000F3598(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v15 = *(v1 + 56);
  v13 = *(v1 + 64);
  v12 = *(v1 + 720);
  v8 = *(v1 + 736);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD30;

  return sub_1001730F4(a1, v4, v5, v6, v7, v9, v15, v13);
}

unint64_t sub_1000F36C0()
{
  result = qword_10023CFA8;
  if (!qword_10023CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CFA8);
  }

  return result;
}

uint64_t sub_1000F3714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_10000BD30;

  return sub_10009ED94(a3, a4, a5, a6, a7);
}

uint64_t sub_1000F3A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000148B0;

  return sub_10009F9B8(a3, a4, a5);
}

uint64_t sub_1000F3CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000152E0;

  return sub_10009FC48(a3, a4, a5);
}

uint64_t sub_1000F3FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1000F4044;

  return sub_10009FEC8(a4);
}

uint64_t sub_1000F4044(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_1000F4194, 0, 0);
  }
}

uint64_t sub_1000F4344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000F4FB0;

  return sub_1000A02AC(a3, a4, a5);
}

uint64_t sub_1000F4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000F4FB0;

  return sub_1000A0980(a3, a4);
}

uint64_t sub_1000F4904()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F493C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F4974(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_1000F4600(a1, a2, v7, v6);
}

uint64_t sub_1000F4A24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F4A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000152E0;

  return sub_100084734(a1, a2, a3, v9);
}

uint64_t sub_1000F4B30(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_1000F4344(a1, a2, v6, v7, v8);
}

uint64_t sub_1000F4C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_1000F3FA4(a1, a2, a3, v8);
}

uint64_t sub_1000F4CB8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_1000F3CE8(a1, a2, v6, v7, v8);
}

uint64_t sub_1000F4D78()
{
  sub_10001BABC(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F4DB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000152E0;

  return sub_1000F3A2C(a1, a2, v6, v7, v8);
}

uint64_t sub_1000F4E70()
{
  sub_10001BABC(*(v0 + 24), *(v0 + 32));
  sub_10001BABC(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F4EB0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000BD30;

  return sub_1000F3714(a1, a2, v6, v7, v8, v9, v10);
}

_UNKNOWN **sub_1000F4FB4@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2)
  {
    if (a2)
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (sub_1000B86A8())
    {
      (*(v13 + 16))(v16, v4, v12);
      result = &off_1002132D0;
      goto LABEL_12;
    }

LABEL_11:
    Date.addingTimeInterval(_:)();
    result = &off_1002132A0;
LABEL_12:
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (result[2] > a1)
    {
      v23 = *(result + a1 + 8);

      arc4random_uniform(v23);
      Date.addingTimeInterval(_:)();
      return (*(v13 + 8))(v16, v12);
    }

    __break(1u);
    return result;
  }

  v18 = Logger.postback.unsafeMutableAddressor();
  (*(v8 + 16))(v11, v18, v7);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Postback sequence index outside of known jitter thresholds", v21, 2u);
  }

  (*(v8 + 8))(v11, v7);
  return (*(v13 + 16))(v25, v4, v12);
}

uint64_t sub_1000F52D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    v18 = Logger.postback.unsafeMutableAddressor();
    (*(v13 + 16))(v16, v18, v12);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Postback sequence index outside of known window thresholds", v21, 2u);
    }

    (*(v13 + 8))(v16, v12);
    v22 = type metadata accessor for Date();
    return (*(*(v22 - 8) + 16))(a5, v6, v22);
  }

  if (a4)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (sub_1000B86A8())
  {
    v35 = _swiftEmptyArrayStorage;
    sub_100147204(0, 3, 0);
    v24 = 3;
    if (is_mul_ok(3uLL, 0x3CuLL))
    {
      a3 = 180;
      v25 = v35;
      a2 = v35[2];
      v24 = v35[3];
      v12 = a2 + 1;
      if (a2 < v24 >> 1)
      {
        goto LABEL_12;
      }

      goto LABEL_38;
    }

    goto LABEL_35;
  }

LABEL_19:
  v24 = &off_1002166B8;
  if (*(a2 + 16) >= 3uLL)
  {
    v12 = a2;
  }

  else
  {
    v12 = &off_1002166B8;
  }

  a2 = *(v12 + 16);
  v25 = _swiftEmptyArrayStorage;
  if (a2)
  {
    v34 = v6;
    v35 = _swiftEmptyArrayStorage;

    sub_100147204(0, a2, 0);
    v29 = 32;
    v25 = v35;
    do
    {
      v30 = *(v12 + v29);
      v24 = (v30 * 0x15180uLL) >> 64;
      if (!is_mul_ok(v30, 0x15180uLL))
      {
        __break(1u);
        goto LABEL_35;
      }

      v35 = v25;
      v32 = v25[2];
      v31 = v25[3];
      a3 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_100147204((v31 > 1), v32 + 1, 1);
        v25 = v35;
      }

      v25[2] = a3;
      v25[v32 + 4] = 86400 * v30;
      v29 += 8;
      --a2;
    }

    while (a2);
  }

  while (a1 < 0)
  {
    while (1)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_100147204((v24 > 1), v12, 1);
      v25 = v35;
LABEL_12:
      v25[2] = v12;
      v25[a2 + 4] = a3;
      v24 = 6;
      if (is_mul_ok(6uLL, 0x3CuLL))
      {
        a3 = 360;
        v35 = v25;
        v26 = v25[3];
        a2 += 2;
        if (v12 >= v26 >> 1)
        {
          sub_100147204((v26 > 1), a2, 1);
          v25 = v35;
        }

        v25[2] = a2;
        v25[v12 + 4] = 360;
        v24 = 9;
        if (is_mul_ok(9uLL, 0x3CuLL))
        {
          break;
        }
      }

LABEL_35:
      __break(1u);
    }

    a2 = 540;
    v35 = v25;
    v28 = v25[2];
    v27 = v25[3];
    v12 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      sub_100147204((v27 > 1), v28 + 1, 1);
      v25 = v35;
    }

    v25[2] = v12;
    v24 = &v25[v28];
    *(v24 + 32) = 540;
  }

  v24 = v25[2];
  if (v24 <= a1)
  {
    goto LABEL_37;
  }

  v33 = v25[a1 + 4];

  return Date.addingTimeInterval(_:)();
}

id sub_1000F596C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, "initWithPropertyValues:onConnection:", isa, v8);

  return v11;
}

id sub_1000F5A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, "initWithPersistentID:onConnection:", a3, a4);
}

id sub_1000F5AD0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1000F5B2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000F5B8C()
{
  result = qword_10023D058;
  if (!qword_10023D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D058);
  }

  return result;
}

unint64_t sub_1000F5BE4()
{
  result = qword_10023D078;
  if (!qword_10023D078)
  {
    type metadata accessor for ImpressionModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D078);
  }

  return result;
}

id sub_1000F5C40()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[112] = 2;
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 sharedConnection];
  if (result)
  {
    v6 = result;
    [result registerObserver:v4];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F5DA4()
{
  v0 = type metadata accessor for Restrictions();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[112] = 2;
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedConnection];
  if (v5)
  {
    v6 = v5;
    [v5 registerObserver:v4];

    qword_10023FD78 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F5E60()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t getEnumTagSinglePayload for Restrictions.ValueStore(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1000F60BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F60FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD30;

  return sub_1000F5EB4(a1, v4, v5, v6);
}

uint64_t sub_1000F61B0(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v49 = a1;
  v50 = a4;
  v48 = a3;
  v47 = a2;
  v46 = type metadata accessor for OSSignpostID();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v46);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignposter();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v40 - v23;
  v25 = v50;
  v26 = v47;
  *(v5 + 16) = v49;
  *(v5 + 24) = v26;
  *(v5 + 32) = v48;
  v27 = *(v13 + 16);
  v47 = v12;
  v27(v16, v25, v12);
  OSSignposter.init(logger:)();
  v28 = OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter;
  (*(v18 + 32))(v5 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter, v24, v17);
  (*(v18 + 16))(v22, v5 + v28, v17);
  static OSSignpostID.exclusive.getter();
  v29 = OSSignposter.logHandle.getter();
  v30 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v42 = v22;
  v43 = v5;
  v41 = v18;
  v44 = v13;
  if ((v48 & 1) == 0)
  {
    v32 = v49;
    if (v49)
    {
LABEL_9:
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v34, v32, "", v33, 2u);

      v5 = v43;
      v13 = v44;
      v18 = v41;
      v22 = v42;
LABEL_10:

      v35 = v46;
      (*(v6 + 16))(v45, v11, v46);
      v36 = type metadata accessor for OSSignpostIntervalState();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v13 + 8))(v50, v47);
      (*(v6 + 8))(v11, v35);
      (*(v18 + 8))(v22, v17);
      *(v5 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_interval) = v39;
      return v5;
    }

    __break(1u);
  }

  if (v49 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v49 & 0xFFFFF800) != 0xD800)
  {
    if (v49 >> 16 <= 0x10)
    {
      v32 = &v51;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000F65C4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter;
  (*(v10 + 16))(v13, v0 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_signposter, v9);
  v37 = *(v0 + 16);
  v36 = *(v0 + 32);
  v15 = OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_interval;
  v16 = *(v0 + OBJC_IVAR____TtC20AttributionKitDaemon16SignpostInterval_interval);

  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v34 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v19 = v42;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v41 + 8))(v8, v19);
    v28 = *(v10 + 8);
    v28(v13, v9);
    v28((v1 + v14), v9);
    v29 = *(v1 + v15);

    return v1;
  }

  v35 = v16;
  v30 = v1;
  v31 = v15;
  v32 = v13;
  v33 = v14;
  v20 = v42;
  if ((v36 & 1) == 0)
  {
    v22 = v39;
    v21 = v40;
    v24 = v37;
    v23 = v38;
    if (v37)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v22 + 88))(v23, v21) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v22 + 8))(v23, v21);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v34, v27, v24, v25, v26, 2u);

      v19 = v20;
      v13 = v32;
      v14 = v33;
      v1 = v30;
      v15 = v31;
      goto LABEL_13;
    }

    __break(1u);
  }

  v23 = v38;
  v22 = v39;
  v21 = v40;
  if (v37 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v37 & 0xFFFFF800) != 0xD800)
  {
    if (v37 >> 16 <= 0x10)
    {
      v24 = &v43;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000F6994()
{
  sub_1000F65C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_10023D160;
  if (!qword_10023D160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F6A40()
{
  result = type metadata accessor for OSSignposter();
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

unint64_t sub_1000F6AFC()
{
  result = qword_10023D1F8;
  if (!qword_10023D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D1F8);
  }

  return result;
}

Swift::Int sub_1000F6B74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BFEF8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000F6BFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BFEF8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000F6C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F6F24(*a1);
  *a2 = result;
  return result;
}

void sub_1000F6C9C(_BYTE *a1, uint64_t a2)
{
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      return;
    }

    v2 = 0x6C7074656B72616DLL;
    v3 = 0xEE0064695F656361;
  }

  else
  {
    if (!*a1)
    {
      sub_1000F6F78(a2);
      return;
    }

    v2 = 0x5F7972746E756F63;
    v3 = 0xEC00000065646F63;
  }

  sub_1000F71DC(a2, v2, v3);
}

unint64_t sub_1000F6D30(void *a1)
{
  a1[1] = sub_1000F6D68();
  a1[2] = sub_1000F6DBC();
  result = sub_1000F6E10();
  a1[3] = result;
  return result;
}

unint64_t sub_1000F6D68()
{
  result = qword_10023D240;
  if (!qword_10023D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D240);
  }

  return result;
}

unint64_t sub_1000F6DBC()
{
  result = qword_10023D248;
  if (!qword_10023D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D248);
  }

  return result;
}

unint64_t sub_1000F6E10()
{
  result = qword_10023D250;
  if (!qword_10023D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D250);
  }

  return result;
}

unint64_t sub_1000F6E68()
{
  result = qword_10023D258;
  if (!qword_10023D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D258);
  }

  return result;
}

unint64_t sub_1000F6EC0()
{
  result = qword_10023D260;
  if (!qword_10023D260)
  {
    sub_10000CCC0(&qword_10023D268, &qword_1001BFE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D260);
  }

  return result;
}

uint64_t sub_1000F6F24(uint64_t result)
{
  if (result > 19000)
  {
    if (result == 19002)
    {
      return 3;
    }

    if (result == 19001)
    {
      return 2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 19000)
    {
      return 1;
    }
  }

  return 4;
}

void sub_1000F6F78(uint64_t a1)
{
  _StringGuts.grow(_:)(119);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for ConversionHistoryEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._object = 0xED000064695F6E6FLL;
  v11._countAndFlagsBits = 0x69737265766E6F63;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xA2C5458455420;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x69737265766E6F63;
  v13._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x80000001001CA030;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x80000001001CB530;
  String.append(_:)(v16);
  v17._object = 0x80000001001CA000;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x2020202020200A2CLL;
  v18._object = 0xEA00000000002020;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x69737265766E6F63;
  v19._object = 0xEF657079745F6E6FLL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000018;
  v20._object = 0x80000001001CB550;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v21);
}

void sub_1000F71DC(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(34);

  v6 = [type metadata accessor for ConversionHistoryEntity() databaseTable];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x4C4F432044444120;
  v11._object = 0xEC000000204E4D55;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x3B5458455420;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v14);
}

unint64_t sub_1000F7338()
{
  result = qword_10023D270;
  if (!qword_10023D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D270);
  }

  return result;
}

unint64_t sub_1000F7390()
{
  result = qword_10023D278;
  if (!qword_10023D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D278);
  }

  return result;
}

unint64_t sub_1000F73E4(uint64_t a1)
{
  *(a1 + 8) = sub_10003BEE4();
  result = sub_1000F1AB8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F7418(unsigned __int8 a1)
{
  v1 = 0x69737265766E6F63;
  v2 = 0x6D6E6F7269766E65;
  if (a1 != 7)
  {
    v2 = 0x636F6C6C615F7369;
  }

  if (a1 == 6)
  {
    v2 = 0x69737265766E6F63;
  }

  v3 = 0x6D617473656D6974;
  if (a1 != 4)
  {
    v3 = 0x6369666974726563;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x5F65746176697270;
  if (a1 != 2)
  {
    v4 = 0x657A696C616E6966;
  }

  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000F7574(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023D2F0, &qword_1001C0078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000F7390();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v23[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v23[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 56);
    v17 = *(v3 + 64);
    v23[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 72);
    v23[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 80);
    v20 = *(v3 + 88);
    v23[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23[9] = *(v3 + 96);
    v23[8] = 6;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23[7] = *(v3 + 97);
    v23[6] = 7;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + 98);
    v23[5] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000F7840()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000ED94();
  return Hasher._finalize()();
}

Swift::Int sub_1000F7890()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000ED94();
  return Hasher._finalize()();
}

unint64_t sub_1000F78D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F7B8C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000F7904@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000F7418(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000F794C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F7B8C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F7984(uint64_t a1)
{
  v2 = sub_1000F7390();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F79C0(uint64_t a1)
{
  v2 = sub_1000F7390();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000F79FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000F7BD8(a1, v7);
  if (!v2)
  {
    v5 = *v8;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 95) = *&v8[15];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1000F7A78()
{
  result = qword_10023D2C8;
  if (!qword_10023D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2C8);
  }

  return result;
}

unint64_t sub_1000F7AD0()
{
  result = qword_10023D2D0;
  if (!qword_10023D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2D0);
  }

  return result;
}

unint64_t sub_1000F7B28()
{
  result = qword_10023D2D8;
  if (!qword_10023D2D8)
  {
    sub_10000CCC0(&qword_10023D2E0, &qword_1001C0030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2D8);
  }

  return result;
}

unint64_t sub_1000F7B8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215BF8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F7BD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = sub_10000CDE0(&qword_10023D2E8, &qword_1001C0070);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v38);
  v8 = &v28 - v7;
  v60 = 1;
  v9 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000F7390();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v10 = v5;
  LOBYTE(v45) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v45) = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v13;
  v14 = v12;
  LOBYTE(v45) = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v16;
  v34 = v15;
  LOBYTE(v45) = 4;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v45) = 5;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v17;
  LOBYTE(v45) = 0;
  *&v31 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v31 + 1) = v18;
  LOBYTE(v39) = 6;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v45;
  LOBYTE(v39) = 7;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v45;
  v61 = 8;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v10 + 8))(v8, v38);
  v29 = v20 & 1;
  *&v39 = 0;
  LODWORD(v38) = v60;
  BYTE8(v39) = v60;
  v40 = v31;
  v21 = *(&v31 + 1);
  *&v41 = v11;
  *(&v41 + 1) = v14;
  *&v42 = v37;
  v22 = v34;
  *(&v42 + 1) = v34;
  *&v43 = v36;
  *(&v43 + 1) = v33;
  *v44 = v32;
  v23 = v35;
  *&v44[8] = v35;
  v44[16] = v19;
  v44[17] = v30;
  v44[18] = v29;
  sub_10001B9B0(&v39, &v45);
  sub_10000DB58(a1);
  v45 = 0;
  v46 = v38;
  v47 = v31;
  v48 = v21;
  v49 = v11;
  v50 = v14;
  v51 = v37;
  v52 = v22;
  v53 = v36;
  v54 = v33;
  v55 = v32;
  v56 = v23;
  v57 = v19;
  v58 = v30;
  v59 = v29;
  result = sub_10003BF38(&v45);
  v25 = *v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v25;
  *(a2 + 95) = *&v44[15];
  v26 = v40;
  *a2 = v39;
  *(a2 + 16) = v26;
  v27 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v27;
  return result;
}

__n128 sub_1000F81CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000F81F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 99))
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

uint64_t sub_1000F8240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F82B4()
{
  result = qword_10023D2F8;
  if (!qword_10023D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D2F8);
  }

  return result;
}

uint64_t sub_1000F8314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
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

uint64_t sub_1000F835C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
      *(result + 608) = 1;
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

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F844C@<X0>(void *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_100239D30;
  v3 = qword_10023FC50;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_10023FD90;
  v5 = type metadata accessor for SnoutManager();
  a1[6] = v5;
  a1[7] = &off_100223858;
  a1[11] = &type metadata for AMSDogBag;
  a1[12] = &off_100222F48;
  *a1 = 0xD000000000000010;
  a1[1] = 0x80000001001CB320;
  a1[2] = v3;
  a1[3] = v4;
  v6 = v3;
  swift_retain_n();
  v7 = v6;
  sub_1000B44B4(a1 + 31);
  a1[39] = &type metadata for LaunchServicesRecordFactory;
  a1[40] = &off_10021CBA8;
  a1[44] = &type metadata for DogTokenClientFactory;
  a1[45] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC28;
  a1[49] = type metadata accessor for TaskGreyhound();
  a1[50] = &off_1002169F0;
  a1[46] = v8;
  a1[54] = &type metadata for AMSDogBag;
  a1[55] = &off_100222F48;
  a1[59] = &type metadata for CasinoDog;
  a1[60] = &off_1002179A0;
  a1[64] = v5;
  a1[65] = &off_100223858;
  a1[61] = v4;
  a1[13] = 0x74735F6E656B6F74;
  a1[14] = 0xEB0000000065726FLL;
  a1[15] = v7;
  a1[16] = 0xD000000000000010;
  a1[17] = 0x80000001001CB320;
  a1[18] = v7;
  a1[19] = 0xD000000000000012;
  a1[20] = 0x80000001001CB340;
  a1[21] = v7;
  a1[22] = 0xD000000000000014;
  a1[23] = 0x80000001001CB360;
  a1[24] = v7;
  a1[25] = 0xD000000000000018;
  a1[26] = 0x80000001001CB380;
  a1[27] = v7;
  a1[28] = 0x63616274736F6867;
  a1[29] = 0xEF65726F74735F6BLL;
  a1[30] = v7;
  a1[69] = v5;
  a1[70] = &off_100223858;
  a1[66] = v4;
  a1[74] = &type metadata for AMSDogBag;
  a1[75] = &off_100222F48;
}

uint64_t sub_1000F8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = type metadata accessor for URL();
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v11 = *(*(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v6[26] = v12;
  v13 = *(v12 - 8);
  v6[27] = v13;
  v14 = *(v13 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000F88D0, 0, 0);
}

uint64_t sub_1000F88D0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = Logger.impression.unsafeMutableAddressor();
  *(v0 + 248) = v4;
  v5 = *(v3 + 16);
  *(v0 + 256) = v5;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47 = v5;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[ImpressionIntakeService] Process reengagement", v8, 2u);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  v14 = *(v11 + 8);
  *(v0 + 272) = v14;
  v14(v9, v10);
  v15 = type metadata accessor for PropertyListDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FAAF4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v30 = *(v0 + 16);
  v29 = *(v0 + 24);
  v31 = *(v0 + 32);
  v33 = *(v0 + 40);
  v32 = *(v0 + 48);
  *(v0 + 280) = v29;
  *(v0 + 288) = v32;
  if (v31)
  {

LABEL_10:

    sub_1000B7694(v33, v32, (v0 + 56));
    v35 = swift_task_alloc();
    *(v0 + 296) = v35;
    *v35 = v0;
    v35[1] = sub_1000F8CB8;
    v36 = *(v0 + 200);
    v37 = *(v0 + 136);
    v38 = *(v0 + 104);

    return sub_10002C13C(v36, v30, v29, v38, 1);
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_10;
  }

  v39 = *(v0 + 224);
  v40 = *(v0 + 208);

  v47(v39, v4, v40);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Interaction type must be click", v43, 2u);
  }

  v45 = *(v0 + 216);
  v44 = *(v0 + 224);
  v46 = *(v0 + 208);

  v14(v44, v46);
  sub_1000FAB48();
  swift_allocError();
  swift_willThrow();
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  v20 = *(v0 + 224);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000F8CB8()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  v3[38] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F9918, 0, 0);
  }

  else
  {
    v4 = v3[35];
    v5 = v3[36];

    v6 = swift_task_alloc();
    v3[39] = v6;
    *v6 = v3;
    v6[1] = sub_1000F8E44;
    v7 = v3[25];
    v8 = v3[17];
    v9 = v3[13];

    return sub_10003212C((v3 + 7), v9, v7);
  }
}

uint64_t sub_1000F8E44()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1000F9A04;
  }

  else
  {
    v3 = sub_1000F8F58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F8F58()
{
  v51 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[12];
  v11 = *(v8 + 56);
  v0[41] = v11;
  v0[42] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v10, 1, 1, v7);
  v2(v4, v3, v5);
  sub_10001B8EC(v9, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[18];
    v17 = v0[19];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = v19;
    *v18 = 136315138;
    sub_10001B8EC(v14, v15);
    v20 = (*(v17 + 48))(v15, 1, v16);
    v21 = v0[23];
    if (v20 == 1)
    {
      sub_10000DAF8(v0[23], &qword_10023C230, &qword_1001B4FB0);
      v22 = 0xE400000000000000;
      v23 = 1701736302;
    }

    else
    {
      v29 = v0[18];
      v30 = v0[19];
      v23 = URL.absoluteString.getter();
      v22 = v31;
      (*(v30 + 8))(v21, v29);
    }

    v49 = v0[34];
    v32 = v0[29];
    v33 = v0[26];
    v34 = v0[27];
    sub_10000DAF8(v0[24], &qword_10023C230, &qword_1001B4FB0);
    v35 = sub_10017AD04(v23, v22, &v50);

    *(v18 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v12, v13, "Reengagement url: %s", v18, 0xCu);
    sub_10000DB58(v19);

    v49(v32, v33);
  }

  else
  {
    v24 = v0[34];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[27];
    v28 = v0[24];

    sub_10000DAF8(v28, &qword_10023C230, &qword_1001B4FB0);
    v24(v25, v26);
  }

  v36 = v0[22];
  v37 = v0[18];
  v38 = v0[19];
  sub_10001B8EC(v0[16], v36);
  v39 = (*(v38 + 48))(v36, 1, v37);
  v40 = v0[22];
  if (v39 == 1)
  {
    sub_10000DAF8(v0[22], &qword_10023C230, &qword_1001B4FB0);
    v41 = v0[17];
    v42 = swift_task_alloc();
    v0[48] = v42;
    *v42 = v0;
    v42[1] = sub_1000F9724;
    v43 = v0[25];
    v44 = v0[13];

    return sub_1000D14BC(v44, v43, 0, 1);
  }

  else
  {
    v46 = v0[17];
    (*(v0[19] + 32))(v0[20], v0[22], v0[18]);
    v47 = swift_task_alloc();
    v0[43] = v47;
    *v47 = v0;
    v47[1] = sub_1000F934C;
    v48 = v0[13];

    return sub_1000D0A04(v48);
  }
}

uint64_t sub_1000F934C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(v6 + 392) = a2;
  *(v6 + 352) = a1;
  *(v6 + 360) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000F9AF8, 0, 0);
  }

  else
  {
    v9 = *(v6 + 136);
    v10 = swift_task_alloc();
    *(v6 + 368) = v10;
    *v10 = v8;
    v10[1] = sub_1000F94F4;
    v12 = *(v6 + 160);
    v11 = *(v6 + 168);
    v13 = *(v6 + 104);

    return sub_100079540(v11, v12, v13, a1, a2 & 1);
  }
}

uint64_t sub_1000F94F4()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1000F9C24;
  }

  else
  {
    v3 = sub_1000F9608;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F9608()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  (*(*(v0 + 152) + 8))(*(v0 + 160), v4);
  sub_10000DAF8(v5, &qword_10023C230, &qword_1001B4FB0);
  v2(v3, 0, 1, v4);
  sub_100054734(v3, v5);
  v6 = *(v0 + 392);
  v7 = *(v0 + 352);
  v8 = *(v0 + 136);
  v9 = swift_task_alloc();
  *(v0 + 384) = v9;
  *v9 = v0;
  v9[1] = sub_1000F9724;
  v10 = *(v0 + 200);
  v11 = *(v0 + 104);

  return sub_1000D14BC(v11, v10, v7, v6 & 1);
}

uint64_t sub_1000F9724()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return _swift_task_switch(sub_1000F9820, 0, 0);
}

uint64_t sub_1000F9820()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  sub_10000DAF8(v0[25], &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F9918()
{
  v1 = v0[35];
  v2 = v0[36];

  sub_1000D5894((v0 + 7));
  v3 = v0[38];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[20];
  v11 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F9A04()
{
  sub_10000DAF8(v0[25], &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));
  v1 = v0[40];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000F9AF8()
{
  v1 = v0[25];
  v2 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_10000DAF8(v2, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));
  v3 = v0[45];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[20];
  v11 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F9C24()
{
  v1 = v0[25];
  v2 = v0[12];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_10000DAF8(v2, &qword_10023C230, &qword_1001B4FB0);
  sub_10000DAF8(v1, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));
  v3 = v0[47];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[20];
  v11 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000F9D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000F9E58, 0, 0);
}

uint64_t sub_1000F9E58()
{
  v42 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FAAF4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);

  v10 = *(v0 + 16);
  v9 = *(v0 + 24);
  LODWORD(v11) = *(v0 + 32);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  *(v0 + 168) = v9;
  *(v0 + 176) = v12;
  v14 = Logger.impression.unsafeMutableAddressor();
  (*(v6 + 16))(v7, v14, v8);

  v15 = Logger.logObject.getter();
  LOBYTE(v6) = static os_log_type_t.default.getter();

  v40 = v6;
  v16 = os_log_type_enabled(v15, v6);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 144);
  if (v16)
  {
    v38 = v13;
    v20 = swift_slowAlloc();
    v37 = v17;
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    v22 = v11 == 0;
    if (v11)
    {
      v23 = 0x6B63696C63;
    }

    else
    {
      v23 = 2003134838;
    }

    v39 = v11;
    v11 = v9;
    v24 = v10;
    if (v22)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v36 = v19;
    v26 = sub_10017AD04(v23, v25, &v41);
    v10 = v24;
    v9 = v11;
    LOBYTE(v11) = v39;

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v40, "[ImpressionIntakeService] Record impression with type: %s", v20, 0xCu);
    sub_10000DB58(v21);

    v13 = v38;

    (*(v18 + 8))(v37, v36);
  }

  else
  {

    (*(v18 + 8))(v17, v19);
  }

  sub_1000B7694(v13, v12, (v0 + 56));
  v27 = swift_task_alloc();
  *(v0 + 184) = v27;
  *v27 = v0;
  if (v11)
  {
    v27[1] = sub_1000FA51C;
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 96);
    v31 = v10;
    v32 = v9;
    v33 = 1;
  }

  else
  {
    v27[1] = sub_1000FA1D0;
    v28 = *(v0 + 136);
    v34 = *(v0 + 120);
    v30 = *(v0 + 96);
    v31 = v10;
    v32 = v9;
    v33 = 0;
  }

  return sub_10002C13C(v28, v31, v32, v30, v33);
}

uint64_t sub_1000FA1D0()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000FA85C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[25] = v4;
    *v4 = v3;
    v4[1] = sub_1000FA354;
    v5 = v3[17];
    v6 = v3[15];
    v7 = v3[12];

    return sub_10002CA7C((v3 + 7), v7, v5, 1, 0);
  }
}

uint64_t sub_1000FA354()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1000FA8F4;
  }

  else
  {
    v3 = sub_1000FA468;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FA468()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  sub_10000DAF8(v4, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000FA51C()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000FA9A8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[28] = v4;
    *v4 = v3;
    v4[1] = sub_1000FA694;
    v6 = v3[15];
    v5 = v3[16];
    v7 = v3[12];

    return sub_10003212C((v3 + 7), v7, v5);
  }
}

uint64_t sub_1000FA694()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1000FAA40;
  }

  else
  {
    v3 = sub_1000FA7A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000FA7A8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];

  sub_10000DAF8(v4, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000FA85C()
{
  v1 = v0[21];
  v2 = v0[22];

  sub_1000D5894((v0 + 7));
  v3 = v0[24];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000FA8F4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[17];

  sub_10000DAF8(v3, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));
  v4 = v0[26];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FA9A8()
{
  v1 = v0[21];
  v2 = v0[22];

  sub_1000D5894((v0 + 7));
  v3 = v0[27];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000FAA40()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[16];

  sub_10000DAF8(v3, &qword_10023A7D0, &unk_1001B5840);
  sub_1000D5894((v0 + 7));
  v4 = v0[29];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];

  v8 = v0[1];

  return v8();
}

unint64_t sub_1000FAAF4()
{
  result = qword_10023D300;
  if (!qword_10023D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D300);
  }

  return result;
}

unint64_t sub_1000FAB48()
{
  result = qword_10023D308;
  if (!qword_10023D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D308);
  }

  return result;
}

unint64_t sub_1000FABB0()
{
  result = qword_10023D310;
  if (!qword_10023D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D310);
  }

  return result;
}

uint64_t sub_1000FAC14()
{
  type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion();
  sub_1000FC18C(&qword_10023D330, &type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion);
  static StreamResource.source()();
  sub_10000DA7C(v1, v1[3]);
  dispatch thunk of Source.sendEvent(_:)();
  sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  CheckedContinuation.resume(returning:)();
  return sub_10000DB58(v1);
}

uint64_t sub_1000FAE2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v39 = a2;
  v40 = a1;
  v46 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v46 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v37);
  v36 = &v36 - v14;
  v15 = a3(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E61C();
  (*(v21 + 104))(v24, enum case for DispatchQoS.QoSClass.default(_:), v20);
  v38 = static OS_dispatch_queue.global(qos:)();
  (*(v21 + 8))(v24, v20);
  (*(v16 + 16))(v19, v39, v15);
  v26 = v36;
  v25 = v37;
  (*(v12 + 16))(v36, v40, v37);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v28 = (v17 + *(v12 + 80) + v27) & ~*(v12 + 80);
  v29 = swift_allocObject();
  (*(v16 + 32))(v29 + v27, v19, v15);
  (*(v12 + 32))(v29 + v28, v26, v25);
  aBlock[4] = v43;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = v44;
  v30 = _Block_copy(aBlock);
  v31 = v41;
  static DispatchQoS.unspecified.getter();
  v50 = _swiftEmptyArrayStorage;
  sub_1000FC18C(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  v33 = v45;
  v32 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v38;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v49 + 8))(v33, v32);
  (*(v47 + 8))(v31, v48);
}

uint64_t sub_1000FB33C()
{
  type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase();
  sub_1000FC18C(&qword_10023D328, &type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase);
  static StreamResource.source()();
  sub_10000DA7C(v1, v1[3]);
  dispatch thunk of Source.sendEvent(_:)();
  sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  CheckedContinuation.resume(returning:)();
  return sub_10000DB58(v1);
}

uint64_t sub_1000FB554()
{
  type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase();
  sub_1000FC18C(&qword_10023D320, &type metadata accessor for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase);
  static StreamResource.source()();
  sub_10000DA7C(v1, v1[3]);
  dispatch thunk of Source.sendEvent(_:)();
  sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  CheckedContinuation.resume(returning:)();
  return sub_10000DB58(v1);
}

uint64_t sub_1000FB78C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000FB880;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000019, 0x80000001001CD450, sub_1000FBF98, v2, &type metadata for () + 8);
}

uint64_t sub_1000FB880()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1000FB9B4;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1000FB99C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000FB9B4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1000FBA38()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000FBB2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000025, 0x80000001001CD420, sub_1000FBE0C, v2, &type metadata for () + 8);
}

uint64_t sub_1000FBB2C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1000FC1E8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1000FC1DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000FBC68()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000FBB2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000028, 0x80000001001CD3F0, sub_1000FBD5C, v2, &type metadata for () + 8);
}

uint64_t sub_1000FBDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FBEA4(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10000CDE0(&qword_10023D318, &unk_1001C0430) - 8);
  v7 = v2 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return a2(v2 + v4, v7);
}

uint64_t sub_1000FC004(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  (*(v3 + 8))(v1 + v5, v2);
  (*(v8 + 8))(v1 + v10, v7);

  return _swift_deallocObject(v1, v10 + v11, v12 | 7);
}

uint64_t sub_1000FC18C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FC1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1032))
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

uint64_t sub_1000FC23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
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
    *(result + 1016) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1032) = 1;
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

    *(result + 1032) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000FC398@<X0>(uint64_t a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedScheduler];
  *(a1 + 192) = &type metadata for ActivityManager;
  *(a1 + 200) = &off_100223E90;
  v6 = swift_allocObject();
  *(a1 + 168) = v6;
  v6[5] = &type metadata for BackgroundSystemTaskScheduler;
  v6[6] = &off_100217910;
  v6[2] = v5;
  *(a1 + 256) = &type metadata for AttributionKitCanineArbiter;
  *(a1 + 264) = &off_1002191C8;
  v7 = qword_100239C90;
  v8 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FC28;
  v18 = type metadata accessor for TaskGreyhound();
  *(a1 + 296) = v18;
  *(a1 + 304) = &off_1002169F0;
  *(a1 + 272) = v9;
  *(a1 + 336) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 344) = &off_10021CBA8;
  *(a1 + 376) = &type metadata for AMSDogBag;
  *(a1 + 384) = &off_100222F48;
  swift_retain_n();
  v10 = [v3 sharedScheduler];
  v21 = &type metadata for ActivityManager;
  v22 = &off_100223E90;
  v11 = swift_allocObject();
  v19[4] = &off_10021CBA8;
  v20[0] = v11;
  v11[5] = &type metadata for BackgroundSystemTaskScheduler;
  v11[6] = &off_100217910;
  v11[2] = v10;
  v19[3] = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v20, v19, a1 + 392);
  *(a1 + 504) = &type metadata for AppStoreDaemonSKANInterop;
  *(a1 + 512) = &off_100222C60;
  sub_1000B42E0((a1 + 520));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v12 = qword_10023FD90;
  v13 = type metadata accessor for SnoutManager();
  *(a1 + 584) = v13;
  *(a1 + 592) = &off_100223858;
  *(a1 + 560) = v12;
  strcpy(a1, "postback_store");
  *(a1 + 15) = -18;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0x63616274736F6867;
  *(a1 + 32) = 0xEF65726F74735F6BLL;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0xD000000000000010;
  *(a1 + 56) = 0x80000001001CB320;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0x74735F6E656B6F74;
  *(a1 + 80) = 0xEB0000000065726FLL;
  *(a1 + 88) = v8;
  *(a1 + 96) = 0xD000000000000012;
  *(a1 + 104) = 0x80000001001CB340;
  *(a1 + 112) = v8;
  *(a1 + 120) = 0xD000000000000014;
  *(a1 + 128) = 0x80000001001CB360;
  *(a1 + 136) = v8;
  *(a1 + 144) = 0xD000000000000018;
  *(a1 + 152) = 0x80000001001CB380;
  *(a1 + 160) = v8;
  *(a1 + 208) = 0xD000000000000011;
  *(a1 + 216) = 0x80000001001CB3A0;
  *(a1 + 224) = v8;
  v14 = v8;
  swift_retain_n();
  v15 = v14;
  sub_1000B44B4((a1 + 744));
  *(a1 + 808) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 816) = &off_10021CBA8;
  *(a1 + 848) = &type metadata for DogTokenClientFactory;
  *(a1 + 856) = &off_100219C38;
  *(a1 + 888) = v18;
  *(a1 + 896) = &off_1002169F0;
  *(a1 + 864) = v9;
  *(a1 + 928) = &type metadata for AMSDogBag;
  *(a1 + 936) = &off_100222F48;
  *(a1 + 968) = &type metadata for CasinoDog;
  *(a1 + 976) = &off_1002179A0;
  *(a1 + 1008) = v13;
  *(a1 + 1016) = &off_100223858;
  *(a1 + 984) = v12;
  *(a1 + 600) = 0x74735F6E656B6F74;
  *(a1 + 608) = 0xEB0000000065726FLL;
  *(a1 + 616) = v15;
  *(a1 + 624) = 0xD000000000000010;
  *(a1 + 632) = 0x80000001001CB320;
  *(a1 + 640) = v15;
  *(a1 + 648) = 0xD000000000000012;
  *(a1 + 656) = 0x80000001001CB340;
  *(a1 + 664) = v15;
  *(a1 + 672) = 0xD000000000000014;
  *(a1 + 680) = 0x80000001001CB360;
  *(a1 + 688) = v15;
  *(a1 + 696) = 0xD000000000000018;
  *(a1 + 704) = 0x80000001001CB380;
  *(a1 + 712) = v15;
  *(a1 + 720) = 0x63616274736F6867;
  *(a1 + 728) = 0xEF65726F74735F6BLL;
  *(a1 + 736) = v15;
  v21 = &type metadata for AMSDogBag;
  v22 = &off_100222F48;
  sub_1000C2030(v20, v19);
  v16 = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v15, v19, 0);
  result = sub_1000C208C(v20);
  *(a1 + 1024) = v16;
  return result;
}

uint64_t sub_1000FC8B4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FC974, 0, 0);
}

uint64_t sub_1000FC974()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Trying to trigger fetch", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_1000FCAC0;
  v12 = v0[2];

  return sub_100111D78();
}

uint64_t sub_1000FCAC0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000FCBD0(uint64_t a1, uint64_t a2)
{
  v3[100] = v2;
  v3[99] = a2;
  v3[98] = a1;
  updated = type metadata accessor for PostbackUpdateData();
  v3[101] = updated;
  v5 = *(updated - 8);
  v3[102] = v5;
  v3[103] = *(v5 + 64);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[106] = v6;
  v7 = *(v6 - 8);
  v3[107] = v7;
  v8 = *(v7 + 64) + 15;
  v3[108] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[109] = v9;
  v10 = *(v9 - 8);
  v3[110] = v10;
  v11 = *(v10 + 64) + 15;
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();

  return _swift_task_switch(sub_1000FCD70, 0, 0);
}

uint64_t sub_1000FCD70()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FED98();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v7 = *(v0 + 896);
  v8 = *(v0 + 880);
  v9 = *(v0 + 872);

  *(v0 + 904) = *(v0 + 616);
  *(v0 + 1008) = *(v0 + 624);
  v10 = *(v0 + 632);
  v11 = *(v0 + 640);
  *(v0 + 912) = v11;
  v12 = *(v0 + 648);
  v13 = *(v0 + 656);
  *(v0 + 920) = v13;
  v14 = Logger.postback.unsafeMutableAddressor();
  *(v0 + 928) = v14;
  v15 = *(v8 + 16);
  *(v0 + 936) = v15;
  *(v0 + 944) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v7, v14, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[Testing service] Updating postback.", v18, 2u);
  }

  v19 = *(v0 + 896);
  v20 = *(v0 + 880);
  v21 = *(v0 + 872);

  v22 = *(v20 + 8);
  *(v0 + 952) = v22;
  v22(v19, v21);

  sub_1000B7694(v12, v13, (v0 + 664));
  sub_1000FEDEC(v0 + 664, v0 + 704);
  v23 = *(v0 + 728);
  if (v23)
  {
    v24 = *(v0 + 736);
    sub_10000DA7C((v0 + 704), *(v0 + 728));
    *(v0 + 960) = (*(v24 + 16))(v23, v24);
    sub_10000DB58((v0 + 704));
    v25 = swift_task_alloc();
    *(v0 + 968) = v25;
    *v25 = v0;
    v25[1] = sub_1000FD0EC;
    v26 = *(v0 + 800);

    return sub_100128E9C(v10, v11);
  }

  else
  {

    sub_10000DAF8(v0 + 704, &qword_10023A7E0, &qword_1001B5850);
    v27 = *(v0 + 896);
    v28 = *(v0 + 888);
    v29 = *(v0 + 864);
    v30 = *(v0 + 840);
    v31 = *(v0 + 832);
    sub_1000D5894(v0 + 664);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1000FD0EC(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *(*v3 + 968);
  v6 = *v3;
  *(v4 + 976) = a1;
  *(v4 + 1009) = a2;

  if (v2)
  {
    *(v4 + 1000) = v2;
    v7 = sub_1000FD810;
  }

  else
  {
    v7 = sub_1000FD214;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000FD214()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 864);
  static Date.now.getter();
  if (v1 < 0x40)
  {
    v8 = *(v0 + 1009);
    v9 = *(v0 + 976);
    v34 = *(v0 + 936);
    v36 = *(v0 + 944);
    v10 = *(v0 + 928);
    v11 = *(v0 + 1008);
    v12 = *(v0 + 904);
    v13 = *(v0 + 888);
    v14 = *(v0 + 872);
    v15 = *(v0 + 840);
    v16 = *(v0 + 808);
    (*(*(v0 + 856) + 16))(v15 + *(v16 + 32), *(v0 + 864), *(v0 + 848));
    *v15 = v12;
    *(v15 + 8) = v11;
    *(v15 + 9) = 0;
    *(v15 + 16) = 0;
    v17 = v15 + *(v16 + 36);
    *v17 = v9;
    *(v17 + 8) = v8 & 1;
    v34(v13, v10, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Queueing update postback", v20, 2u);
    }

    v21 = *(v0 + 952);
    v22 = *(v0 + 888);
    v23 = *(v0 + 880);
    v24 = *(v0 + 872);
    v25 = *(v0 + 840);
    v26 = *(v0 + 832);
    v35 = *(v0 + 824);
    v37 = *(v0 + 960);
    v27 = *(v0 + 816);
    v28 = *(v0 + 800);

    v21(v22, v24);
    sub_10003FD38(v28, v0 + 16);
    sub_10003FD94(v25, v26);
    v29 = (*(v27 + 80) + 624) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v0 + 984) = v30;
    memcpy((v30 + 16), (v0 + 16), 0x258uLL);
    *(v30 + 616) = v37;
    sub_10003FFB8(v26, v30 + v29);
    sub_10000DA7C((v28 + 272), *(v28 + 296));
    *(v0 + 768) = sub_10000CDE0(&qword_10023A970, &qword_1001B5EF8);
    *(v0 + 776) = sub_100040104();
    *(v0 + 744) = &unk_1001B5EF0;
    *(v0 + 752) = v30;
    v31 = type metadata accessor for TaskGreyhound();

    v32 = swift_task_alloc();
    *(v0 + 992) = v32;
    *v32 = v0;
    v32[1] = sub_1000FD60C;

    return (sub_10000C9BC)(v0 + 744, v31, &off_1002169F0);
  }

  else
  {
    v3 = *(v0 + 864);
    v4 = *(v0 + 856);
    v5 = *(v0 + 848);
    sub_1000401C4();
    v6 = swift_allocError();
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 6;
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
    *(v0 + 1000) = v6;

    return _swift_task_switch(sub_1000FD810, 0, 0);
  }
}

uint64_t sub_1000FD60C()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v4 = *v0;

  sub_10000DB58((v1 + 744));

  return _swift_task_switch(sub_1000FD710, 0, 0);
}

uint64_t sub_1000FD710()
{
  v1 = v0[123];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[108];
  v5 = v0[107];
  v6 = v0[106];
  v7 = v0[105];

  sub_100040168(v7);
  (*(v5 + 8))(v4, v6);
  v8 = v0[112];
  v9 = v0[111];
  v10 = v0[108];
  v11 = v0[105];
  v12 = v0[104];
  sub_1000D5894((v0 + 83));

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000FD810()
{
  v1 = v0[115];
  v2 = v0[114];

  sub_1000D5894((v0 + 83));
  v3 = v0[125];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[108];
  v7 = v0[105];
  v8 = v0[104];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FD8D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FD990, 0, 0);
}

uint64_t sub_1000FD990()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Testing service] Getting snout stories.", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 1024);
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1000FDAE4;

  return sub_10016D320();
}

uint64_t sub_1000FDAE4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t sub_1000FDC0C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FDCCC, 0, 0);
}

uint64_t sub_1000FDCCC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetch reengagement tokens", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_100027F24;

  return sub_1000D0340();
}

uint64_t sub_1000FDE20(uint64_t a1, uint64_t a2)
{
  v2[79] = a2;
  v2[78] = a1;
  v3 = type metadata accessor for Logger();
  v2[80] = v3;
  v4 = *(v3 - 8);
  v2[81] = v4;
  v5 = *(v4 + 64) + 15;
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();

  return _swift_task_switch(sub_1000FDEFC, 0, 0);
}

uint64_t sub_1000FDEFC()
{
  v45 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = Logger.postback.unsafeMutableAddressor();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Submit conversion event", v8, 2u);
  }

  v9 = *(v0 + 672);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);

  v43 = *(v10 + 8);
  v43(v9, v11);
  v14 = type metadata accessor for PropertyListDecoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FEC94();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v17 = *(v0 + 640);
  v18 = *(v0 + 664);

  v19 = *(v0 + 128);
  *(v0 + 264) = *(v0 + 112);
  *(v0 + 280) = v19;
  *(v0 + 296) = *(v0 + 144);
  *(v0 + 312) = *(v0 + 160);
  v20 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v20;
  v21 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v21;
  v22 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 184) = v22;
  v5(v18, v4, v17);
  sub_1000FECE8(v0 + 168, v0 + 320);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  sub_1000FED44(v0 + 168);
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 664);
  v27 = *(v0 + 648);
  v28 = *(v0 + 640);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136315138;
    v31 = *(v0 + 280);
    *(v0 + 568) = *(v0 + 264);
    *(v0 + 584) = v31;
    *(v0 + 600) = *(v0 + 296);
    *(v0 + 616) = *(v0 + 312);
    v32 = *(v0 + 216);
    *(v0 + 504) = *(v0 + 200);
    *(v0 + 520) = v32;
    v33 = *(v0 + 248);
    *(v0 + 536) = *(v0 + 232);
    *(v0 + 552) = v33;
    v34 = *(v0 + 184);
    *(v0 + 472) = *(v0 + 168);
    *(v0 + 488) = v34;
    v35 = String.init<A>(describing:)();
    v37 = sub_10017AD04(v35, v36, &v44);

    *(v29 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "Conversion event: %s", v29, 0xCu);
    sub_10000DB58(v30);
  }

  else
  {
    sub_1000FED44(v0 + 168);
  }

  v43(v26, v28);
  v38 = *(v0 + 672);
  v39 = *(v0 + 664);
  v40 = *(v0 + 656);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1000FE3BC(uint64_t a1, uint64_t a2)
{
  v2[58] = a1;
  v2[59] = a2;
  v3 = type metadata accessor for Logger();
  v2[60] = v3;
  v4 = *(v3 - 8);
  v2[61] = v4;
  v5 = *(v4 + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return _swift_task_switch(sub_1000FE494, 0, 0);
}

uint64_t sub_1000FE494()
{
  v43 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = Logger.postback.unsafeMutableAddressor();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Submit purchase event", v8, 2u);
  }

  v9 = *(v0 + 512);
  v10 = *(v0 + 480);
  v11 = *(v0 + 488);
  v13 = *(v0 + 464);
  v12 = *(v0 + 472);

  v41 = *(v11 + 8);
  v41(v9, v10);
  v14 = type metadata accessor for PropertyListDecoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000FEB90();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v17 = *(v0 + 480);
  v18 = *(v0 + 504);

  v19 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v19;
  *(v0 + 217) = *(v0 + 105);
  v20 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v20;
  v21 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v21;
  v5(v18, v4, v17);
  sub_1000FEBE4(v0 + 128, v0 + 240);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  sub_1000FEC40(v0 + 128);
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 504);
  v26 = *(v0 + 480);
  v27 = *(v0 + 488);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    v30 = *(v0 + 208);
    *(v0 + 416) = *(v0 + 192);
    *(v0 + 432) = v30;
    *(v0 + 441) = *(v0 + 217);
    v31 = *(v0 + 144);
    *(v0 + 352) = *(v0 + 128);
    *(v0 + 368) = v31;
    v32 = *(v0 + 176);
    *(v0 + 384) = *(v0 + 160);
    *(v0 + 400) = v32;
    v33 = String.init<A>(describing:)();
    v35 = sub_10017AD04(v33, v34, &v42);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v22, v23, "Purchase event: %s", v28, 0xCu);
    sub_10000DB58(v29);
  }

  else
  {
    sub_1000FEC40(v0 + 128);
  }

  v41(v25, v26);
  v37 = *(v0 + 504);
  v36 = *(v0 + 512);
  v38 = *(v0 + 496);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000FE914(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000FE9D4, 0, 0);
}

uint64_t sub_1000FE9D4()
{
  v22 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10017AD04(v12, v11, &v21);
    _os_log_impl(&_mh_execute_header, v6, v7, "Clear biome for event: %s", v13, 0xCu);
    sub_10000DB58(v14);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[6];

  v19 = v0[1];

  return v19();
}

unint64_t sub_1000FEB90()
{
  result = qword_10023D338;
  if (!qword_10023D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D338);
  }

  return result;
}

unint64_t sub_1000FEC94()
{
  result = qword_10023D340;
  if (!qword_10023D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D340);
  }

  return result;
}

unint64_t sub_1000FED98()
{
  result = qword_10023D348;
  if (!qword_10023D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023D348);
  }

  return result;
}

uint64_t sub_1000FEDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A7E0, &qword_1001B5850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEE5C()
{
  v1 = (type metadata accessor for PostbackUpdateData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 624) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 48);

  v7 = *(v0 + 72);

  v8 = *(v0 + 96);

  v9 = *(v0 + 120);

  v10 = *(v0 + 144);

  v11 = *(v0 + 168);

  sub_10000DB58((v0 + 184));
  v12 = *(v0 + 232);

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));
  v13 = *(v0 + 488);

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));
  v14 = *(v0 + v3 + 16);

  v15 = v1[10];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}