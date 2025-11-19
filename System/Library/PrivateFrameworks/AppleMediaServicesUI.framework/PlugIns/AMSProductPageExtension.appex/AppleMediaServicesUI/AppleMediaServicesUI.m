double sub_100001468@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (sub_100001590(a1))
  {

    sub_100002178(a1, a2);
  }

  else
  {
    sub_100002178(a1, v9);
    sub_1000020D0(&unk_10000C600, &qword_100004C00);
    if (swift_dynamicCast())
    {
      sub_1000021D4(v7, v10);
      v5 = v11;
      v6 = v12;
      sub_1000021EC(v10, v11);
      (*(v6 + 8))(v5, v6);
      sub_100002230(v10);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_1000022F8(v7, &qword_10000C510, &qword_100004C08);
      result = 0.0;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_100001590(uint64_t a1)
{
  sub_100002178(a1, v4);
  if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
  {
    sub_10000227C();
    if (swift_dynamicCast())
    {
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v1 = 0;
        goto LABEL_10;
      }
    }
  }

  v1 = 1;
LABEL_10:
  sub_100002230(v4);
  return v1;
}

uint64_t sub_1000016B4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = &_swiftEmptyArrayStorage;
    while (1)
    {
      sub_100002178(v3, v20);
      v17[3] = &type metadata for Any + 8;
      v17[0] = swift_allocObject();
      sub_100002178(v20, v17[0] + 16);
      sub_100002178(v17, v14);
      if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0)
      {
        sub_10000227C();
        if (swift_dynamicCast())
        {
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_100002230(v14);
            sub_100002178(v17, v13);
            sub_1000020D0(&unk_10000C600, &qword_100004C00);
            if (swift_dynamicCast())
            {
              sub_1000021D4(v11, v14);
              v8 = v15;
              v7 = v16;
              sub_1000021EC(v14, v15);
              (*(v7 + 8))(&v18, v8, v7);
              sub_100002230(v20);
              sub_100002230(v14);
            }

            else
            {
              sub_100002230(v20);
              v12 = 0;
              memset(v11, 0, sizeof(v11));
              sub_1000022F8(v11, &qword_10000C510, &qword_100004C08);
              v18 = 0u;
              v19 = 0u;
            }

            goto LABEL_12;
          }
        }
      }

      sub_100002230(v14);
      sub_100002230(v20);
      sub_100002178(v17, &v18);
LABEL_12:
      sub_100002230(v17);
      if (*(&v19 + 1))
      {
        sub_100002358(&v18, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100002368(0, *(v4 + 2) + 1, 1, v4);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        if (v6 >= v5 >> 1)
        {
          v4 = sub_100002368((v5 > 1), v6 + 1, 1, v4);
        }

        *(v4 + 2) = v6 + 1;
        sub_100002358(v14, &v4[32 * v6 + 32]);
      }

      else
      {
        sub_1000022F8(&v18, &qword_10000C528, &qword_100004C90);
      }

      v3 += 32;
      if (!--v2)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_25:
  result = sub_1000020D0(&qword_10000C520, &unk_100004C10);
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_100001A10@<X0>(uint64_t *a1@<X8>)
{
  sub_1000045C0();
  swift_getWitnessTable();
  v2 = sub_100004590();
  result = sub_1000020D0(&qword_10000C520, &unk_100004C10);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100001AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1000045C0();
  v8[3] = a2;
  v6 = sub_100002118(v8);
  (*(*(a2 - 8) + 16))(v6, a1, a2);
  sub_100001468(v8, a3);
  return sub_100002230(v8);
}

uint64_t sub_100001B7C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return sub_100001A10(a1);
}

uint64_t sub_100001B8C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = sub_1000020D0(&qword_10000C508, &qword_100004CA0);
  sub_100004560();
  swift_getWitnessTable();
  return sub_1000045A0();
}

uint64_t sub_100001C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v24 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v21 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = *(v8 + 16);
  v14(&v20 - v12, a2, TupleTypeMetadata2);
  v23 = *(TupleTypeMetadata2 + 48);
  sub_100004620();
  v22 = *(*(a3 - 8) + 8);
  v22(v13, a3);
  sub_100004560();
  v15 = v21;
  v14(v21, v20, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v25[3] = a4;
  v17 = sub_100002118(v25);
  v18 = *(a4 - 8);
  (*(v18 + 32))(v17, &v15[v16], a4);
  sub_100001468(v25, v26);
  sub_100002230(v25);
  v22(v15, a3);
  sub_1000030EC(v26, v27);
  return (*(v18 + 8))(&v13[v23], a4);
}

uint64_t sub_100001EDC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_100001B8C(a1);
}

uint64_t sub_100001EF0@<X0>(void *a1@<X8>)
{
  sub_1000045B0();
  result = sub_1000020D0(&qword_10000C520, &unk_100004C10);
  a1[3] = result;
  *a1 = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100001FB4@<X0>(uint64_t *a1@<X8>)
{
  sub_100004530();
  v2 = sub_100004550();
  result = sub_1000020D0(&qword_10000C508, &qword_100004CA0);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1000020D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100002118(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100002178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000021D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000021EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002230(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000227C()
{
  result = qword_10000C518;
  if (!qword_10000C518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C518);
  }

  return result;
}

uint64_t sub_1000022C0()
{
  sub_100002230((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000022F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000020D0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_100002358(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_100002368(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000020D0(&unk_10000C530, &unk_100004C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100002494@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  a2[3] = sub_1000020D0(&qword_10000C508, &qword_100004CA0);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &_swiftEmptyDictionarySingleton;
  v10 = &unk_10000C618;
  v75 = a1 + 64;
  v76 = &type metadata for Any + 8;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v12 = __clz(__rbit64(v6)) | (v8 << 6);
      sub_1000042E8(*(a1 + 48) + 40 * v12, v90);
      sub_100002178(*(a1 + 56) + 32 * v12, &v91);
      sub_100004454(v90, v88, v10, qword_100004CB8);
      sub_1000042E8(v88, v84);
      sub_1000045F0();
      sub_100003EB0(v88);
      sub_100004454(v90, v84, v10, qword_100004CB8);
      v86[3] = v76;
      v86[0] = swift_allocObject();
      sub_100002358(&v85, (v86[0] + 16));
      sub_100002178(v86, v81);
      v13 = swift_dynamicCast();
      if (v13)
      {
        goto LABEL_16;
      }

      sub_1000044BC(v13, v14, v15, v16, v17, v18, v19, v20, v73, v74, v75, v76, v77);
      v21 = swift_dynamicCast();
      if (v21)
      {
        goto LABEL_16;
      }

      sub_1000044BC(v21, v22, v23, v24, v25, v26, v27, v28, v73, v74, v75, v76, v77);
      v29 = swift_dynamicCast();
      if (v29)
      {
        goto LABEL_16;
      }

      sub_1000044BC(v29, v30, v31, v32, v33, v34, v35, v36, v73, v74, v75, v76, v77);
      if (swift_dynamicCast())
      {
        goto LABEL_16;
      }

      v37 = sub_10000227C();
      sub_1000044BC(v37, v38, v39, v37, v40, v41, v42, v43, v73, v74, v75, v76, v77);
      v44 = swift_dynamicCast();
      if (v44)
      {
        break;
      }

      sub_1000044BC(v44, v45, v46, v47, v48, v49, v50, v51, v73, v74, v75, v76, v77);
      if (swift_dynamicCast())
      {

        goto LABEL_16;
      }

      sub_100002230(v81);
      sub_100002178(v86, v80);
      sub_1000020D0(&unk_10000C600, &qword_100004C00);
      if (swift_dynamicCast())
      {
        sub_1000021D4(&v77, v81);
        v70 = v82;
        v71 = v83;
        sub_1000021EC(v81, v82);
        (*(v71 + 8))(&v77, v70, v71);
        sub_100002230(v81);
      }

      else
      {
        v79 = 0;
        v77 = 0u;
        v78 = 0u;
        sub_1000022F8(&v77, &qword_10000C510, &qword_100004C08);
        v77 = 0u;
        v78 = 0u;
      }

LABEL_17:
      sub_100002230(v86);
      sub_100003EB0(v84);
      if (*(&v78 + 1))
      {
        sub_100002358(&v77, v84);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v9;
        v53 = sub_100004024(v87);
        v55 = v9[2];
        v56 = (v54 & 1) == 0;
        v57 = v55 + v56;
        if (__OFADD__(v55, v56))
        {
          goto LABEL_38;
        }

        v10 = v53;
        v58 = v54;
        sub_1000020D0(&qword_10000C610, &qword_100004CB0);
        if (sub_100004600(isUniquelyReferenced_nonNull_native, v57))
        {
          v59 = sub_100004024(v87);
          if ((v58 & 1) != (v60 & 1))
          {
            goto LABEL_40;
          }

          v10 = v59;
        }

        v9 = v81[0];
        if (v58)
        {
          v66 = (*(v81[0] + 56) + 32 * v10);
          sub_100002230(v66);
          sub_100002358(v84, v66);
          sub_100003EB0(v87);
          sub_1000044CC();
        }

        else
        {
          *(v81[0] + 8 * (v10 >> 6) + 64) |= 1 << v10;
          sub_1000042E8(v87, v9[6] + 40 * v10);
          sub_100002358(v84, (v9[7] + 32 * v10));
          sub_100003EB0(v87);
          sub_1000044CC();
          v67 = v9[2];
          v68 = __OFADD__(v67, 1);
          v69 = v67 + 1;
          if (v68)
          {
            goto LABEL_39;
          }

          v9[2] = v69;
        }

        v3 = v75;
      }

      else
      {
        sub_1000022F8(&v77, &qword_10000C528, &qword_100004C90);
        v61 = sub_100004024(v87);
        if (v62)
        {
          v63 = v61;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v81[0] = v9;
          v65 = v9[3];
          sub_1000020D0(&qword_10000C610, &qword_100004CB0);
          sub_100004600(v64, v65);
          v9 = v81[0];
          sub_100003EB0(*(v81[0] + 48) + 40 * v63);
          sub_100002358((v9[7] + 32 * v63), v84);
          sub_100004610();
          sub_100003EB0(v87);
          sub_1000022F8(v90, v10, qword_100004CB8);
        }

        else
        {
          sub_100003EB0(v87);
          sub_1000022F8(v90, v10, qword_100004CB8);
          memset(v84, 0, sizeof(v84));
        }

        sub_1000022F8(v84, &qword_10000C528, &qword_100004C90);
      }

      v6 &= v6 - 1;
      sub_100002230(v89);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_16:
    sub_100002230(v81);
    sub_100002178(v86, &v77);
    goto LABEL_17;
  }

LABEL_4:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      *v74 = v9;
      return result;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_100004640();
  __break(1u);
  return result;
}

uint64_t sub_100002AA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = sub_1000020D0(&qword_10000C508, &qword_100004CA0);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &_swiftEmptyDictionarySingleton;
  v10 = &unk_10000C5F0;
  v42 = a1 + 64;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v12 = __clz(__rbit64(v6)) | (v8 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_100002178(*(a1 + 56) + 32 * v12, &v57);
      v56[0] = v15;
      v56[1] = v14;
      sub_100004454(v56, &v54, v10, &qword_100004CA8);
      v50 = v54;

      sub_1000045F0();
      sub_100004454(v56, &v50, v10, &qword_100004CA8);
      v52[3] = &type metadata for Any + 8;
      v52[0] = swift_allocObject();
      sub_100002358(&v51, (v52[0] + 16));
      sub_100002178(v52, v47);
      if (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast())
      {
        goto LABEL_16;
      }

      sub_10000227C();
      if (swift_dynamicCast())
      {
        break;
      }

      if (swift_dynamicCast())
      {

        goto LABEL_16;
      }

      sub_100002230(v47);
      sub_100002178(v52, v46);
      sub_1000020D0(&unk_10000C600, &qword_100004C00);
      if (swift_dynamicCast())
      {
        sub_1000021D4(&v43, v47);
        v38 = v48;
        v39 = v49;
        sub_1000021EC(v47, v48);
        (*(v39 + 8))(&v43, v38, v39);
        sub_100002230(v47);
      }

      else
      {
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        sub_1000022F8(&v43, &qword_10000C510, &qword_100004C08);
        v43 = 0u;
        v44 = 0u;
      }

LABEL_17:
      sub_100002230(v52);

      if (*(&v44 + 1))
      {
        v16 = v7;
        v17 = a1;
        v18 = v10;
        sub_100002358(&v43, &v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47[0] = v9;
        v20 = sub_100004024(v53);
        v22 = v9[2];
        v23 = (v21 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_38;
        }

        v25 = v20;
        v26 = v21;
        sub_1000020D0(&qword_10000C610, &qword_100004CB0);
        if (sub_100004600(isUniquelyReferenced_nonNull_native, v24))
        {
          v27 = sub_100004024(v53);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_40;
          }

          v25 = v27;
        }

        v9 = v47[0];
        if (v26)
        {
          v29 = (*(v47[0] + 56) + 32 * v25);
          sub_100002230(v29);
          sub_100002358(&v50, v29);
          sub_100003EB0(v53);
          v10 = v18;
          sub_1000022F8(v56, v18, &qword_100004CA8);
        }

        else
        {
          *(v47[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
          sub_1000042E8(v53, v9[6] + 40 * v25);
          sub_100002358(&v50, (v9[7] + 32 * v25));
          sub_100003EB0(v53);
          v10 = v18;
          sub_1000022F8(v56, v18, &qword_100004CA8);
          v35 = v9[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_39;
          }

          v9[2] = v37;
        }

        a1 = v17;
        v7 = v16;
        v3 = v42;
      }

      else
      {
        sub_1000022F8(&v43, &qword_10000C528, &qword_100004C90);
        v30 = sub_100004024(v53);
        if (v31)
        {
          v32 = v30;
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v47[0] = v9;
          v34 = v9[3];
          sub_1000020D0(&qword_10000C610, &qword_100004CB0);
          sub_100004600(v33, v34);
          v9 = v47[0];
          sub_100003EB0(*(v47[0] + 48) + 40 * v32);
          sub_100002358((v9[7] + 32 * v32), &v50);
          sub_100004610();
          sub_100003EB0(v53);
          sub_1000022F8(v56, v10, &qword_100004CA8);
        }

        else
        {
          sub_100003EB0(v53);
          sub_1000022F8(v56, v10, &qword_100004CA8);
          v50 = 0u;
          v51 = 0u;
        }

        sub_1000022F8(&v50, &qword_10000C528, &qword_100004C90);
      }

      v6 &= v6 - 1;
      sub_100002230(v55);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_16:
    sub_100002230(v47);
    sub_100002178(v52, &v43);
    goto LABEL_17;
  }

LABEL_4:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      *a2 = v9;
      return result;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_100004640();
  __break(1u);
  return result;
}

uint64_t sub_1000030EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100002358(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_100004068(v8, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v7;
    return sub_100003EB0(a2);
  }

  else
  {
    sub_1000022F8(a1, &qword_10000C528, &qword_100004C90);
    sub_100003F3C(a2, v8);
    sub_100003EB0(a2);
    return sub_1000022F8(v8, &qword_10000C528, &qword_100004C90);
  }
}

void sub_1000031B4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [v2 willMoveToParentViewController:0];
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = v3;
    [v3 removeFromSuperview];

    [v2 removeFromParentViewController];
  }

  v5 = *&v1[OBJC_IVAR____TtC23AMSProductPageExtension25ProductPageViewController_child];
  if (!v5)
  {
    return;
  }

  v10 = v5;
  [v1 addChildViewController:?];
  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v10 view];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  [v7 addSubview:v8];

  [v10 didMoveToParentViewController:v1];
}

void sub_100003308(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23AMSProductPageExtension25ProductPageViewController_child);
  *(v1 + OBJC_IVAR____TtC23AMSProductPageExtension25ProductPageViewController_child) = a1;
  v2 = a1;
  sub_1000031B4(v3);
}

void sub_100003368()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ProductPageViewController();
  objc_msgSendSuper2(&v4, "loadView");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() ams_primaryBackground];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000034F4()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ProductPageViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC23AMSProductPageExtension25ProductPageViewController_child];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
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

void sub_100003624(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() createBagForSubProfile];
  if (v5)
  {
    v6 = v5;
    v16 = a2;
    if (qword_10000C500 != -1)
    {
      swift_once();
    }

    v17 = [v6 URLForKey:qword_10000C540];
    v7 = [objc_allocWithZone(AMSUIDynamicViewController) initWithBag:v6 bagValue:v17];
    sub_1000020D0(&unk_10000C5E0, &qword_100004C98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100004C30;
    sub_1000045F0();
    v9 = [a1 itemDictionary];
    v10 = sub_100004540();

    sub_100002494(v10, (inited + 72));

    strcpy(&aBlock, "pageParameters");
    sub_1000045F0();
    sub_100002AA4(v16, (inited + 144));
    v11 = sub_100004550();
    sub_100004344(v11, v7);
    [v7 setDelegate:v2];
    v12 = [v7 preload];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_1000043FC;
    v22 = v13;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v19 = sub_100003A38;
    v20 = &unk_100008448;
    v14 = _Block_copy(&aBlock);

    [v12 addFinishBlock:v14];
    _Block_release(v14);

    v15 = v7;
    sub_100003308(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100003950()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong loadDidFinish];
  }
}

id sub_1000039AC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC23AMSProductPageExtension25ProductPageViewController_child] = 0;
  if (a2)
  {
    v5 = sub_100004570();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ProductPageViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

void sub_100003A38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_100003B10(void *a1)
{
  *&v1[OBJC_IVAR____TtC23AMSProductPageExtension25ProductPageViewController_child] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ProductPageViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100003BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003C14(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_100008368;
  v7._object = a2;
  v4 = sub_100004630(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_100003C68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_100003CB8(a2);
    if ((v4 & 1) == 0)
    {

      [v2 finishWithResult:v3 completion:0];
    }
  }
}

uint64_t sub_100003CB8(uint64_t a1)
{
  sub_1000045F0();
  sub_100003E4C(v5, a1, &v6);
  sub_100003EB0(v5);
  if (!v7)
  {
    sub_1000022F8(&v6, &qword_10000C528, &qword_100004C90);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_100003C14(0x6E6F69746361, 0xE600000000000000);
  v3 = 2;
  if (v2)
  {
    v3 = 0;
  }

  if (v2 == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

double sub_100003E4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100004024(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100002178(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

NSString sub_100003F04()
{
  result = sub_100004570();
  qword_10000C540 = result;
  return result;
}

double sub_100003F3C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100004024(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v11 = *(*v3 + 24);
    sub_1000020D0(&qword_10000C610, &qword_100004CB0);
    sub_100004600(isUniquelyReferenced_nonNull_native, v11);
    sub_100003EB0(*(v13 + 48) + 40 * v8);
    sub_100002358((*(v13 + 56) + 32 * v8), a2);
    sub_100004610();
    *v3 = v13;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_100004024(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000045D0(*(v2 + 40));

  return sub_100004224(a1, v4);
}

_OWORD *sub_100004068(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100004024(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_1000020D0(&qword_10000C610, &qword_100004CB0);
  if (!sub_100004600(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_100004024(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_100004640();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    sub_100002230(v20);

    return sub_100002358(a1, v20);
  }

  else
  {
    sub_1000042E8(a2, v22);
    return sub_1000041A8(v14, v22, a1, v19);
  }
}

_OWORD *sub_1000041A8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100002358(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_100004224(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1000042E8(*(v2 + 48) + 40 * i, v7);
    v5 = sub_1000045E0();
    sub_100003EB0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_100004344(uint64_t a1, void *a2)
{
  isa = sub_100004520().super.isa;

  [a2 setClientOptions:isa];
}

uint64_t sub_1000043C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000441C()
{
  sub_100002230((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100004454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000020D0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000044CC()
{

  return sub_1000022F8(v2 - 160, v1, v0);
}