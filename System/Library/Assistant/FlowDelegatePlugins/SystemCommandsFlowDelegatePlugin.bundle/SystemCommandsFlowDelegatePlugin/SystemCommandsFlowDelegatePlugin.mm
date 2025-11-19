uint64_t sub_137C()
{
  sub_23A4();
  result = sub_258C();
  qword_8260 = result;
  return result;
}

uint64_t *sub_13E4()
{
  if (qword_8150 != -1)
  {
    sub_2408(&qword_8150);
  }

  return &qword_8260;
}

uint64_t sub_1424()
{
  v0 = sub_253C();
  sub_2340(v0, qword_8268);
  sub_14F4(v0, qword_8268);
  if (qword_8150 != -1)
  {
    sub_2408(&qword_8150);
  }

  v1 = qword_8260;
  return sub_254C();
}

uint64_t sub_14A0()
{
  if (qword_8158 != -1)
  {
    sub_23E8(&qword_8158);
  }

  v0 = sub_253C();

  return sub_14F4(v0, qword_8268);
}

uint64_t sub_14F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_152C@<X0>(uint64_t a1@<X8>)
{
  if (qword_8158 != -1)
  {
    sub_23E8(&qword_8158);
  }

  v2 = sub_253C();
  v3 = sub_14F4(v2, qword_8268);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_15DC(uint64_t a1)
{
  if (qword_8158 != -1)
  {
    sub_23E8(&qword_8158);
  }

  v2 = sub_253C();
  v3 = sub_14F4(v2, qword_8268);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_16C0())()
{
  if (qword_8158 != -1)
  {
    sub_23E8(&qword_8158);
  }

  v0 = sub_253C();
  sub_14F4(v0, qword_8268);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243C();
  v5 = sub_2428(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = sub_253C();
  v15 = sub_2428(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DC();
  type metadata accessor for SystemCommandsFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_24CC();

  v24 = *sub_24EC();

  sub_249C();
  sub_24BC();
  sub_24AC();
  sub_251C();
  sub_250C();
  swift_allocObject();
  v25 = sub_24FC();
  (*(*v25 + 104))(a1);

  if (qword_8158 != -1)
  {
    sub_23E8(&qword_8158);
  }

  v26 = sub_14F4(v14, qword_8268);
  swift_beginAccess();
  (*(v17 + 16))(v21, v26, v14);
  v27 = v21;
  v28 = v14;
  v29 = *(v7 + 16);
  v29(v13, a2, v4);
  v30 = sub_252C();
  v31 = sub_257C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = v27;
    v41 = v17;
    v43 = v28;
    v33 = v32;
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136315138;
    v29(v44, v13, v4);
    v35 = sub_255C();
    v37 = v36;
    (*(v7 + 8))(v13, v4);
    v38 = sub_1C84(v35, v37, &v45);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "SystemCommandsFlowDelegatePlugin findFlowForX | flowSearchResult: %s", v33, 0xCu);
    sub_21F4(v34);

    return (*(v41 + 8))(v42, v43);
  }

  else
  {

    (*(v7 + 8))(v13, v4);
    return (*(v17 + 8))(v27, v28);
  }
}

uint64_t sub_1C14@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_1C84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D48(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2298(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_21F4(v11);
  return v7;
}

unint64_t sub_1D48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E48(a5, a6);
    *a1 = v9;
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
    result = sub_25AC();
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

char *sub_1E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E94(a1, a2);
  sub_1FAC(&off_4240);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1E94(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_256C())
  {
    result = sub_2090(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_259C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_25AC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1FAC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2100(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2090(uint64_t a1, uint64_t a2)
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

  sub_22F4(&qword_8140, qword_2848);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2100(char *result, int64_t a2, char a3, char *a4)
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
    sub_22F4(&qword_8140, qword_2848);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_21F4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2244()
{
  result = qword_8098;
  if (!qword_8098)
  {
    type metadata accessor for SystemCommandsFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8098);
  }

  return result;
}

uint64_t sub_2298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22F4(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_2340(uint64_t a1, uint64_t *a2)
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

unint64_t sub_23A4()
{
  result = qword_8148;
  if (!qword_8148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t sub_23E8(uint64_t a1)
{

  return _swift_once(a1, sub_1424);
}

uint64_t sub_2408(uint64_t a1)
{

  return _swift_once(a1, sub_137C);
}