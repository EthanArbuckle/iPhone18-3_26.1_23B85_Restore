uint64_t sub_1258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_2564();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2524();
  v17 = sub_2514();
  sub_22C0(v33);
  if (v17)
  {
    sub_24A4();
  }

  else
  {
    v32 = a2;
    if (qword_80D8 != -1)
    {
      swift_once();
    }

    v19 = sub_20EC(v12, qword_82C0);
    (*(v13 + 16))(v16, v19, v12);
    v31 = v13;
    v20 = *(v5 + 16);
    v20(v11, a1, v4);
    v21 = sub_2544();
    v22 = sub_2594();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = v22;
      v24 = v23;
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v24 = 136315138;
      v20(v9, v11, v4);
      v25 = sub_2574();
      v27 = v26;
      (*(v5 + 8))(v11, v4);
      v28 = sub_1904(v25, v27, v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v21, v30, "Unable to produce a flow for input: %s", v24, 0xCu);
      sub_2314(v29);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    (*(v31 + 8))(v16, v12);
    return sub_2494();
  }
}

uint64_t sub_15F0()
{
  sub_2314((v0 + 16));
  sub_2314((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_1654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Parse.NLv3IntentOnly(_:))
  {
    sub_1258(a1, a2);
    return (*(v5 + 8))(v8, v4);
  }

  else if (v9 == enum case for Parse.NLv4IntentOnly(_:) || v9 == enum case for Parse.uso(_:))
  {
    (*(v5 + 8))(v8, v4);
    return sub_1258(a1, a2);
  }

  else
  {
    result = sub_25D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1EAC();
  *a1 = result;
  return result;
}

unint64_t sub_18B0()
{
  result = qword_81A8;
  if (!qword_81A8)
  {
    type metadata accessor for IdentityFlowPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81A8);
  }

  return result;
}

uint64_t sub_1904(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2360(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2314(v11);
  return v7;
}

unint64_t sub_19D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1ADC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1ADC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B28(a1, a2);
  sub_1C58(&off_42D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1B28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1D44(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2584();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1D44(v10, 0);
        result = sub_25B4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DB8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D44(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_21F8(&qword_81B8, &unk_2800);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_21F8(&qword_81B8, &unk_2800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1EAC()
{
  v0 = sub_2564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_80D8 != -1)
  {
    swift_once();
  }

  v5 = sub_20EC(v0, qword_82C0);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2544();
  v7 = sub_25A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Initializing IdentityFlowPlugin", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_2534();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15[3] = &type metadata for IdentityFeatureFlagsProvider;
  v15[4] = &protocol witness table for IdentityFeatureFlagsProvider;
  type metadata accessor for IdentityFlowPlugin();
  v9 = swift_allocObject();
  sub_2124(v15, v9 + 16);
  sub_2188(v16, &v12);
  if (v13)
  {
    sub_2240(v16);
    sub_2314(v15);
    sub_22A8(&v12, v14);
  }

  else
  {
    sub_2504();
    sub_2240(v16);
    sub_2314(v15);
    if (v13)
    {
      sub_2240(&v12);
    }
  }

  sub_22A8(v14, v9 + 56);
  return v9;
}

uint64_t sub_20EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2188(uint64_t a1, uint64_t a2)
{
  v4 = sub_21F8(&qword_81B0, &qword_27F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21F8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2240(uint64_t a1)
{
  v2 = sub_21F8(&qword_81B0, &qword_27F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2314(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C0()
{
  v0 = sub_2564();
  sub_2430(v0, qword_82C0);
  sub_20EC(v0, qword_82C0);
  return sub_2554();
}

uint64_t *sub_2430(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}