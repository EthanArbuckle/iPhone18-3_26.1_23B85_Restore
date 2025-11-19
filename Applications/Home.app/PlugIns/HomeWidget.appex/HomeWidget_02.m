uint64_t sub_100029768()
{
  v29 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10002AD68(0xD000000000000013, 0x80000001000A4410, &v28);
    *(v6 + 12) = 2080;
    v7 = sub_10009CB94();
    v8 = v0[7];
    if (v7)
    {
      v9 = v0[4];
      swift_getKeyPath();
      sub_10002B338();
      sub_10009C9E4();

      v10 = sub_10009CF14();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, v9, v10);
      sub_10002EE04(v9, type metadata accessor for HomeEntity);
      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      v12 = sub_10009CF14();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    }

    v13 = v0[7];
    v14 = v0[5];
    v15 = sub_10009E5F4();
    v17 = sub_10002AD68(v15, v16, &v28);

    *(v6 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Generating suggested entities for all accessories and scenes in home %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v0[3];
  if (sub_10009CB94())
  {
    v19 = v0[6];
    v20 = v0[4];
    swift_getKeyPath();
    sub_10002B338();
    sub_10009C9E4();

    v21 = sub_10009CF14();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v19, v20, v21);
    sub_10002EE04(v20, type metadata accessor for HomeEntity);
    v23 = 0;
  }

  else
  {
    v21 = sub_10009CF14();
    v22 = *(v21 - 8);
    v23 = 1;
  }

  (*(v22 + 56))(v0[6], v23, 1, v21);
  v24 = swift_task_alloc();
  v0[8] = v24;
  *v24 = v0;
  v24[1] = sub_100029BB8;
  v25 = v0[6];
  v26 = v0[2];

  return sub_1000273C4(v26, v25, 0, 0);
}

uint64_t sub_100029BB8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);
  v7 = *v0;

  sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100029D24()
{
  v0 = type metadata accessor for AccessoryAndSceneEntity();
  v1 = sub_10002EEE0(&qword_1000C1128, type metadata accessor for AccessoryAndSceneEntity);

  return static IntentItemSection.Builder.buildBlock()(v0, v1);
}

unint64_t *sub_100029D98(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C1250, &qword_1000A08C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v57 = &v43 - v4;
  v5 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v56 = &v43 - v7;
  v55 = sub_10009D494();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v55);
  v54 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10009CD54();
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v53);
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AccessoryAndSceneEntity();
  v14 = *(v51 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v51);
  v50 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v49 = &v43 - v18;
  v48 = sub_100003714(&qword_1000C0EB0, &qword_10009FCD8);
  v19 = *(v48 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v48);
  v22 = &v43 - v21;
  v23 = *(a1 + 16);
  v24 = &_swiftEmptyArrayStorage;
  if (v23)
  {
    v60 = &_swiftEmptyArrayStorage;
    sub_10001BCC8(0, v23, 0);
    v24 = v60;
    v25 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v26 = *(v14 + 72);
    v45 = (v8 + 8);
    v46 = v26;
    v43 = v19 + 32;
    v44 = (v11 + 56);
    v47 = v19;
    v27 = v50;
    do
    {
      v58 = v24;
      v59 = v23;
      v28 = v49;
      sub_10002ED9C(v25, v49, type metadata accessor for AccessoryAndSceneEntity);
      sub_10002ED9C(v28, v27, type metadata accessor for AccessoryAndSceneEntity);
      v29 = v28 + *(v51 + 24);
      v30 = type metadata accessor for WidgetTileInfo();
      v31 = *(v30 + 28);
      v32 = (v29 + *(v30 + 24));
      v33 = v22;
      v34 = *v32;
      v35 = v32[1];
      v37 = *(v29 + v31);
      v36 = *(v29 + v31 + 8);

      v38 = v54;
      sub_10009D484();
      sub_10009D474();
      (*v45)(v38, v55);
      v22 = v33;
      sub_10009CD14();
      (*v44)(v56, 1, 1, v53);
      v39 = sub_10009CAA4();
      (*(*(v39 - 8) + 56))(v57, 1, 1, v39);
      sub_10002EEE0(&qword_1000C1128, type metadata accessor for AccessoryAndSceneEntity);
      v24 = v58;
      sub_10009C8E4();
      sub_10002EE04(v28, type metadata accessor for AccessoryAndSceneEntity);
      v60 = v24;
      v41 = v24[2];
      v40 = v24[3];
      if (v41 >= v40 >> 1)
      {
        sub_10001BCC8(v40 > 1, v41 + 1, 1);
        v24 = v60;
      }

      v24[2] = v41 + 1;
      (*(v47 + 32))(v24 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, v33, v48);
      v25 += v46;
      v23 = v59 - 1;
    }

    while (v59 != 1);
  }

  return v24;
}

uint64_t sub_10002A330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001EAAC;

  return sub_100026CFC(a1, a2, a3, v8);
}

unint64_t sub_10002A3EC()
{
  result = qword_1000C1150;
  if (!qword_1000C1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1150);
  }

  return result;
}

unint64_t sub_10002A444()
{
  result = qword_1000C1158;
  if (!qword_1000C1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1158);
  }

  return result;
}

uint64_t sub_10002A4E0@<X0>(uint64_t *a1@<X8>)
{
  sub_100003714(&qword_1000C1268, &qword_1000A0C70);
  swift_getKeyPath();
  result = sub_10009CBA4();
  *a1 = result;
  return result;
}

uint64_t sub_10002A52C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002EF3C;

  return sub_10002606C(a1, v4);
}

uint64_t sub_10002A5C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002EF28;

  return sub_100029690(a1, v4);
}

uint64_t sub_10002A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002A728;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10002A728(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_10002A82C()
{
  result = qword_1000C1168;
  if (!qword_1000C1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1168);
  }

  return result;
}

uint64_t sub_10002A8C4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000248DC();
  *v6 = v2;
  v6[1] = sub_10002EF28;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10002A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001EAAC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10002AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for WidgetTileInfo();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002AB58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10009CF14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for WidgetTileInfo();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002AC54()
{
  result = sub_10009CF14();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WidgetTileInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10002ACD8(uint64_t a1, uint64_t a2)
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

  sub_100003714(&qword_1000C0E98, &qword_1000A08C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_10002AD68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002AE34(v11, 0, 0, 1, a1, a2);
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
    sub_10001B668(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100015F44(v11);
  return v7;
}

unint64_t sub_10002AE34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002AF40(a5, a6);
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
    result = sub_10009EB24();
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

char *sub_10002AF40(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002AF8C(a1, a2);
  sub_10002B0BC(&off_1000BB0B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002AF8C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002B1A8(v5, 0);
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

  result = sub_10009EB24();
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
        v10 = sub_10009E644();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002B1A8(v10, 0);
        result = sub_10009EAB4();
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

uint64_t sub_10002B0BC(uint64_t result)
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

  result = sub_10002B21C(result, v12, 1, v3);
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

void *sub_10002B1A8(uint64_t a1, uint64_t a2)
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

  sub_100003714(&qword_1000C1218, &qword_1000A0838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002B21C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1218, &qword_1000A0838);
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

unint64_t sub_10002B338()
{
  result = qword_1000C1220;
  if (!qword_1000C1220)
  {
    sub_10000375C(&qword_1000C1228, &unk_1000A0880);
    sub_10002EEE0(&qword_1000C1230, type metadata accessor for HomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1220);
  }

  return result;
}

Swift::Int sub_10002B3EC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002C424(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10002B458(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002B458(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10009ECF4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003714(&qword_1000C0EA0, &qword_1000A08B0);
        v5 = sub_10009E6D4();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002B644(v7, v8, a1, v4);
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
    return sub_10002B560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002B560(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_10009ED34(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002B644(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_10002BF3C(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_10002BC50((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_10009ED34();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_10009ED34();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002BF50(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_10002BF50((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_10002BC50((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10002BF3C(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_10002BEB0(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_10009ED34(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_10002BC50(char *__dst, char *__src, unint64_t a3, char *a4)
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
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_10009ED34() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
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
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_10009ED34() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_10002BEB0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002BF3C(v3);
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

char *sub_10002BF50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1248, &qword_1000A08B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10002C054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetTileInfo();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_10002ED9C(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for WidgetTileInfo);
      v25 = v24;
      v26 = v32;
      sub_10002EE74(v25, v32, type metadata accessor for WidgetTileInfo);
      sub_10002EE74(v26, a2, type metadata accessor for WidgetTileInfo);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10002C2A8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_10002C44C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v96 = sub_10009CF14();
  v8 = *(v96 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v96);
  v93 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v92 = &v70 - v13;
  __chkstk_darwin(v12);
  v15 = &v70 - v14;
  v16 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v70 - v18;
  v20 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = (&v70 - v22);
  v91 = type metadata accessor for AccessoryAndSceneEntity();
  v79 = *(v91 - 8);
  v24 = *(v79 + 64);
  __chkstk_darwin(v91);
  v90 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for WidgetTileInfo();
  v72 = *(v89 - 8);
  v26 = *(v72 + 64);
  v27 = __chkstk_darwin(v89);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v70 - v30;
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v71 = a1;
  v32 = *(a1 + 16);
  v33 = _swiftEmptyArrayStorage;
  if (v32)
  {
    v99 = v8;
    if (a3)
    {
      sub_100003714(&qword_1000C0E20, &unk_1000A0940);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10009FA10;
      *(v34 + 32) = a3;
    }

    else
    {
      v35 = [a2 homes];
      sub_100007330(0, &qword_1000C1260, HMHome_ptr);
      v36 = sub_10009E6A4();

      v34 = v36;
    }

    v100 = _swiftEmptyArrayStorage;
    v70 = v34;
    if (v34 >> 62)
    {
      goto LABEL_42;
    }

    v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = a3;
    if (!v37)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v74 = v37;
      a3 = 0;
      v76 = v70 & 0xC000000000000001;
      v75 = v70 & 0xFFFFFFFFFFFFFF8;
      v73 = v70 + 32;
      v80 = (v99 + 8);
      v83 = (v99 + 32);
      v84 = (v99 + 16);
      v81 = (v79 + 48);
      v82 = (v79 + 56);
      v88 = a4;
      v39 = v71;
      v86 = v19;
      v87 = v15;
      v85 = v23;
      while (1)
      {
        if (v76)
        {
          v40 = sub_10009EAE4();
        }

        else
        {
          if (a3 >= *(v75 + 16))
          {
            goto LABEL_41;
          }

          v40 = *(v73 + 8 * a3);
        }

        v41 = v40;
        if (__OFADD__(a3++, 1))
        {
          break;
        }

        v78 = a3;
        v43 = sub_100007BC0(v40, v39);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = (*(v72 + 80) + 32) & ~*(v72 + 80);
          v77 = v43;
          v46 = v43 + v45;
          v95 = *(v72 + 72);
          v23 = _swiftEmptyArrayStorage;
          v94 = v41;
          while (1)
          {
            v99 = v44;
            v97 = v46;
            sub_10002ED9C(v46, v31, type metadata accessor for WidgetTileInfo);
            sub_10002ED9C(v31, v29, type metadata accessor for WidgetTileInfo);
            v98 = v23;
            if (!a4)
            {
              goto LABEL_28;
            }

            v47 = [v41 uniqueIdentifier];
            sub_10009CF04();

            if (!*(a4 + 16))
            {
              break;
            }

            v48 = sub_10001B5D0(v15);
            if ((v49 & 1) == 0)
            {
              break;
            }

            v50 = *(*(a4 + 56) + 8 * v48);
            v51 = *v80;

            v51(v15, v96);
            if (!*(v50 + 16) || (v52 = sub_10001B5D0(v31), (v53 & 1) == 0))
            {

              goto LABEL_28;
            }

            v54 = v52;
            v55 = *(v50 + 56);
            v56 = type metadata accessor for WidgetPredictionAnalyticsInfo();
            v57 = *(v56 - 8);
            (*(v57 + 16))(v19, v55 + *(v57 + 72) * v54, v56);

            (*(v57 + 56))(v19, 0, 1, v56);
LABEL_29:
            sub_100014CC8(v19, &v29[*(v89 + 76)]);
            v33 = v92;
            v59 = v96;
            (*v84)(v92, v29, v96);
            v60 = [v41 uniqueIdentifier];
            v61 = v93;
            sub_10009CF04();

            v62 = v31;
            sub_10002EE04(v31, type metadata accessor for WidgetTileInfo);
            v63 = v91;
            v64 = v85;
            sub_10002ED9C(v29, v85 + *(v91 + 24), type metadata accessor for WidgetTileInfo);
            v65 = *v83;
            (*v83)(v64, v33, v59);
            v65(v64 + *(v63 + 20), v61, v59);
            (*v82)(v64, 0, 1, v63);
            sub_10002EE04(v29, type metadata accessor for WidgetTileInfo);
            if ((*v81)(v64, 1, v63) == 1)
            {
              sub_1000160CC(v64, &qword_1000C1258, &unk_1000A08D0);
              v15 = v87;
              a4 = v88;
              v19 = v86;
              v31 = v62;
              v41 = v94;
              v23 = v98;
            }

            else
            {
              sub_10002EE74(v64, v90, type metadata accessor for AccessoryAndSceneEntity);
              v23 = v98;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_100064F9C(0, v23[2] + 1, 1, v23);
              }

              v19 = v86;
              v15 = v87;
              v31 = v62;
              v67 = v23[2];
              v66 = v23[3];
              v41 = v94;
              if (v67 >= v66 >> 1)
              {
                v23 = sub_100064F9C(v66 > 1, v67 + 1, 1, v23);
              }

              v23[2] = v67 + 1;
              sub_10002EE74(v90, v23 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v67, type metadata accessor for AccessoryAndSceneEntity);
              a4 = v88;
            }

            v46 = v97 + v95;
            v44 = v99 - 1;
            if (v99 == 1)
            {

              v39 = v71;
              goto LABEL_11;
            }
          }

          (*v80)(v15, v96);
LABEL_28:
          v58 = type metadata accessor for WidgetPredictionAnalyticsInfo();
          (*(*(v58 - 8) + 56))(v19, 1, 1, v58);
          goto LABEL_29;
        }

        v23 = _swiftEmptyArrayStorage;
LABEL_11:
        sub_1000615E8(v23);
        a3 = v78;
        if (v78 == v74)
        {
          v33 = v100;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v37 = sub_10009EBA4();
      v69 = a3;
      if (!v37)
      {
LABEL_38:

        return v33;
      }
    }
  }

  return v33;
}

void *sub_10002CDDC(uint64_t a1)
{
  v2 = sub_10009D1C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100003714(&qword_1000C1288, &qword_1000A0938);
    v10 = sub_10009EAA4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10002EEE0(&qword_1000C1278, &type metadata accessor for ServiceKind);
      v18 = sub_10009E4F4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10002EEE0(&qword_1000C1280, &type metadata accessor for ServiceKind);
          v25 = sub_10009E534();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10002D0FC(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100003714(&qword_1000C0BE0, "tz");
    v10 = sub_10009EAA4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10002EEE0(&qword_1000C0B68, &type metadata accessor for UUID);
      v18 = sub_10009E4F4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID);
          v25 = sub_10009E534();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10002D41C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
  *(v3 + 336) = a1;
  v4 = *(*(sub_100003714(&qword_1000C1258, &unk_1000A08D0) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v5 = type metadata accessor for AccessoryAndSceneEntity();
  *(v3 + 104) = v5;
  v6 = *(v5 - 8);
  *(v3 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v8 = type metadata accessor for WidgetTileInfo();
  *(v3 + 128) = v8;
  v9 = *(v8 - 8);
  *(v3 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v11 = *(*(sub_100003714(&qword_1000C0C78, &qword_1000A0390) - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v12 = sub_10009CF14();
  *(v3 + 168) = v12;
  v13 = *(v12 - 8);
  *(v3 + 176) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10002D644, 0, 0);
}

uint64_t sub_10002D644()
{
  type metadata accessor for HomeWidget();
  v0[28] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[29] = v2;
  v0[30] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_10002D718;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_10002D718(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10002D878, 0, 0);
}

uint64_t sub_10002D878()
{
  v34 = v0;
  if (*(v0 + 256))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    v3 = *(v0 + 160);
    sub_10001E0A8(*(v0 + 80), v3, &qword_1000C0C78, &qword_1000A0390);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 336);
      sub_1000160CC(*(v0 + 160), &qword_1000C0C78, &qword_1000A0390);
      v5 = swift_task_alloc();
      *(v0 + 296) = v5;
      *v5 = v0;
      v5[1] = sub_10002E060;
      v6 = v4;
    }

    else
    {
      v24 = *(v0 + 216);
      v25 = *(v0 + 168);
      v26 = *(v0 + 176);
      (*(v26 + 32))(v24, *(v0 + 160), v25);
      sub_100003714(&qword_1000C0E88, &unk_1000A08E0);
      v27 = *(v26 + 72);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10009F8D0;
      (*(v26 + 16))(v29 + v28, v24, v25);
      v30 = sub_10002D0FC(v29);
      *(v0 + 264) = v30;
      swift_setDeallocating();
      v31 = *(v26 + 8);
      *(v0 + 272) = v31;
      *(v0 + 280) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31(v29 + v28, v25);
      swift_deallocClassInstance();
      v32 = swift_task_alloc();
      *(v0 + 288) = v32;
      *v32 = v0;
      v32[1] = sub_10002DC70;
      v6 = v30;
    }

    return sub_100074484(v6);
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v7 = sub_10009D924();
    sub_100015B68(v7, qword_1000C8278);
    v8 = sub_10009D904();
    v9 = sub_10009E824();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10002AD68(0xD00000000000003ALL, 0x80000001000A4480, &v33);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s unable to get shared HMHomeManager instance", v10, 0xCu);
      sub_100015F44(v11);
    }

    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 184);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v19 = *(v0 + 144);
    v20 = *(v0 + 120);
    v21 = *(v0 + 96);

    v22 = *(v0 + 8);

    return v22(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10002DC70(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 48) = v1;
  *(v3 + 56) = a1;
  v4 = *(v2 + 288);
  v5 = *(v2 + 264);
  v7 = *v1;

  return _swift_task_switch(sub_10002DD8C, 0, 0);
}

uint64_t sub_10002DD8C()
{
  v25 = v0;
  v1 = *(v0 + 280);
  (*(v0 + 272))(*(v0 + 216), *(v0 + 168));
  v2 = *(v0 + 56);
  *(v0 + 304) = v2;
  if (v2 >> 62)
  {
    v6 = sub_10009EBA4();
    *(v0 + 312) = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 312) = v3;
    if (v3)
    {
LABEL_3:
      sub_10009E744();
      *(v0 + 320) = sub_10009E734();
      v5 = sub_10009E714();

      return _swift_task_switch(sub_10002E430, v5, v4);
    }
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v7 = sub_10009D924();
  sub_100015B68(v7, qword_1000C8278);
  v8 = sub_10009D904();
  v9 = sub_10009E824();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002AD68(0xD00000000000003ALL, 0x80000001000A4480, &v24);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Unable to match against any valid HMHome's", v10, 0xCu);
    sub_100015F44(v11);
  }

  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 184);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 144);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);

  v22 = *(v0 + 8);

  return v22(_swiftEmptyArrayStorage);
}

uint64_t sub_10002E060(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 64) = v1;
  *(v3 + 72) = a1;
  v4 = *(v2 + 296);
  v5 = *(v3 + 336);
  v7 = *v1;

  sub_10002EE64(v5);

  return _swift_task_switch(sub_10002E16C, 0, 0);
}

uint64_t sub_10002E16C()
{
  v24 = v0;
  v1 = *(v0 + 72);
  *(v0 + 304) = v1;
  if (v1 >> 62)
  {
    v5 = sub_10009EBA4();
    *(v0 + 312) = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 312) = v2;
    if (v2)
    {
LABEL_3:
      sub_10009E744();
      *(v0 + 320) = sub_10009E734();
      v4 = sub_10009E714();

      return _swift_task_switch(sub_10002E430, v4, v3);
    }
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v6 = sub_10009D924();
  sub_100015B68(v6, qword_1000C8278);
  v7 = sub_10009D904();
  v8 = sub_10009E824();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10002AD68(0xD00000000000003ALL, 0x80000001000A4480, &v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Unable to match against any valid HMHome's", v9, 0xCu);
    sub_100015F44(v10);
  }

  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v15 = *(v0 + 184);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 144);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_10002E430()
{
  v1 = v0[40];
  v2 = v0[38];
  v49 = v0[22];

  v6 = 0;
  v47 = v2 & 0xC000000000000001;
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  v8 = v2 + 32;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    if (v47)
    {
      v23 = v0[38];
      isUniquelyReferenced_nonNull_native = sub_10009EAE4();
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = *(v8 + 8 * v6);
    }

    v10 = isUniquelyReferenced_nonNull_native;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v12 = sub_100034548(isUniquelyReferenced_nonNull_native);

    v13 = v12[2];
    v14 = *(v9 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_42;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v9 + 3) >> 1)
    {
      if (!v12[2])
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      isUniquelyReferenced_nonNull_native = sub_100064F74(isUniquelyReferenced_nonNull_native, v16, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
      if (!v12[2])
      {
LABEL_2:

        if (v13)
        {
          goto LABEL_43;
        }

        goto LABEL_3;
      }
    }

    if ((*(v9 + 3) >> 1) - *(v9 + 2) < v13)
    {
      goto LABEL_44;
    }

    v17 = v0[21];
    v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v19 = *(v49 + 72);
    swift_arrayInitWithCopy();

    if (v13)
    {
      v20 = *(v9 + 2);
      v21 = __OFADD__(v20, v13);
      v22 = v20 + v13;
      if (v21)
      {
        goto LABEL_46;
      }

      *(v9 + 2) = v22;
    }

LABEL_3:
    ++v6;
  }

  while (v11 != v0[39]);
  v24 = v0[38];

  v45 = *(v9 + 2);
  if (v45)
  {
    v25 = 0;
    v26 = v0[22];
    v43 = (v26 + 8);
    v44 = (v26 + 16);
    v46 = (v26 + 32);
    v48 = v0[11];
    while (v25 < *(v9 + 2))
    {
      v27 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v28 = *(v49 + 72);
      (*v44)(v0[26], &v9[v27 + v28 * v25], v0[21]);
      if (v48 && (v29 = *(v48 + 16)) != 0)
      {
        sub_10002EEE0(&qword_1000C0BE8, &type metadata accessor for UUID);
        v30 = v48 + v27;
        v31 = v29 + 1;
        while (1)
        {
          v32 = v0[26];
          v33 = v0[21];
          if (!--v31)
          {
            break;
          }

          v34 = v30 + v28;
          v35 = v0[21];
          v36 = sub_10009E534();
          v30 = v34;
          if (v36)
          {
            goto LABEL_32;
          }
        }

        isUniquelyReferenced_nonNull_native = (*v43)(v0[26], v0[21]);
      }

      else
      {
LABEL_32:
        v37 = *v46;
        (*v46)(v0[25], v0[26], v0[21]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001BC00(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v39 = _swiftEmptyArrayStorage[2];
        v38 = _swiftEmptyArrayStorage[3];
        if (v39 >= v38 >> 1)
        {
          sub_10001BC00(v38 > 1, v39 + 1, 1);
        }

        v40 = v0[25];
        v41 = v0[21];
        _swiftEmptyArrayStorage[2] = v39 + 1;
        isUniquelyReferenced_nonNull_native = v37(_swiftEmptyArrayStorage + v27 + v39 * v28, v40, v41);
      }

      if (++v25 == v45)
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return _swift_task_switch(isUniquelyReferenced_nonNull_native, v4, v5);
  }

LABEL_37:
  v0[41] = _swiftEmptyArrayStorage;

  isUniquelyReferenced_nonNull_native = sub_10002E804;
  v4 = 0;
  v5 = 0;

  return _swift_task_switch(isUniquelyReferenced_nonNull_native, v4, v5);
}

uint64_t sub_10002E804()
{
  v1 = v0;
  v2 = *(v0 + 256);
  if (*(*(v0 + 328) + 16))
  {
    v3 = [*(v0 + 256) homes];
    sub_100007330(0, &qword_1000C1260, HMHome_ptr);
    v4 = sub_10009E6A4();

    if (v4 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
    {
      v6 = 0;
      v7 = v1[22];
      v8 = v1[14];
      v50 = v4 & 0xC000000000000001;
      v49 = v4 & 0xFFFFFFFFFFFFFF8;
      v47 = v4;
      v48 = v4 + 32;
      v58 = (v7 + 16);
      v59 = v1[13];
      v56 = (v8 + 56);
      v57 = (v7 + 32);
      v45 = v1[17];
      v46 = i;
      v52 = v8;
      v53 = v1;
      v54 = (v8 + 48);
      v55 = v1[16];
      while (1)
      {
        if (v50)
        {
          v9 = sub_10009EAE4();
        }

        else
        {
          if (v6 >= *(v49 + 16))
          {
            goto LABEL_26;
          }

          v9 = *(v48 + 8 * v6);
        }

        v61 = v9;
        v10 = __OFADD__(v6, 1);
        v11 = v6 + 1;
        if (v10)
        {
          break;
        }

        v51 = v11;
        v12 = sub_100007BC0(v9, v1[41]);
        v13 = *(v12 + 16);
        if (v13)
        {
          v14 = v12 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
          v60 = *(v45 + 72);
          v15 = _swiftEmptyArrayStorage;
          do
          {
            v63 = v15;
            v64 = v13;
            v17 = v1[23];
            v16 = v1[24];
            v18 = v1[21];
            v19 = v1[18];
            v20 = v1[19];
            v22 = v1 + 12;
            v21 = v1[12];
            v62 = v22[1];
            sub_10002ED9C(v14, v20, type metadata accessor for WidgetTileInfo);
            sub_10002ED9C(v20, v19, type metadata accessor for WidgetTileInfo);
            v23 = *(v55 + 76);
            sub_1000160CC(v19 + v23, &qword_1000C0C28, &qword_1000A3620);
            v24 = type metadata accessor for WidgetPredictionAnalyticsInfo();
            (*(*(v24 - 8) + 56))(v19 + v23, 1, 1, v24);
            (*v58)(v16, v19, v18);
            v25 = [v61 uniqueIdentifier];
            sub_10009CF04();

            sub_10002EE04(v20, type metadata accessor for WidgetTileInfo);
            sub_10002ED9C(v19, v21 + *(v59 + 24), type metadata accessor for WidgetTileInfo);
            v26 = *v57;
            (*v57)(v21, v16, v18);
            v26(v21 + *(v59 + 20), v17, v18);
            (*v56)(v21, 0, 1, v62);
            sub_10002EE04(v19, type metadata accessor for WidgetTileInfo);
            if ((*v54)(v21, 1, v62) == 1)
            {
              v1 = v53;
              sub_1000160CC(v53[12], &qword_1000C1258, &unk_1000A08D0);
              v15 = v63;
            }

            else
            {
              v1 = v53;
              sub_10002EE74(v53[12], v53[15], type metadata accessor for AccessoryAndSceneEntity);
              v15 = v63;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_100064F9C(0, v63[2] + 1, 1, v63);
              }

              v28 = v15[2];
              v27 = v15[3];
              if (v28 >= v27 >> 1)
              {
                v15 = sub_100064F9C(v27 > 1, v28 + 1, 1, v15);
              }

              v29 = v53[15];
              v15[2] = v28 + 1;
              sub_10002EE74(v29, v15 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v28, type metadata accessor for AccessoryAndSceneEntity);
            }

            v14 += v60;
            v13 = v64 - 1;
          }

          while (v64 != 1);

          i = v46;
          v4 = v47;
        }

        else
        {

          v15 = _swiftEmptyArrayStorage;
        }

        sub_1000615E8(v15);
        v6 = v51;
        if (v51 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:
    v30 = v1[41];
    v31 = v1[32];
  }

  else
  {
  }

  v33 = v1[26];
  v32 = v1[27];
  v35 = v1[24];
  v34 = v1[25];
  v36 = v1[23];
  v38 = v1[19];
  v37 = v1[20];
  v39 = v1;
  v40 = v1[18];
  v41 = v39[15];
  v42 = v39[12];

  v43 = v39[1];

  return v43(_swiftEmptyArrayStorage);
}

uint64_t sub_10002ED9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10002EE64(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002EE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EEE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002EF44()
{
  result = qword_1000C1290;
  if (!qword_1000C1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1290);
  }

  return result;
}

unint64_t sub_10002EF9C()
{
  result = qword_1000C1298;
  if (!qword_1000C1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1298);
  }

  return result;
}

unint64_t sub_10002F05C()
{
  result = qword_1000C12A0;
  if (!qword_1000C12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12A0);
  }

  return result;
}

uint64_t sub_10002F0B0()
{
  v0 = sub_10009CC04();
  sub_10001F4BC(v0, qword_1000C81F0);
  v1 = sub_100015B68(v0, qword_1000C81F0);
  v2 = enum case for IntentAuthenticationPolicy.requiresAuthentication(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10002F138()
{
  v0 = sub_10009CD34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF54();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10009E5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10009CD54();
  sub_10001F4BC(v9, qword_1000C8208);
  sub_100015B68(v9, qword_1000C8208);
  sub_10009E554();
  sub_10009CF44();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10009CD64();
}

uint64_t sub_10002F328(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_100003714(&qword_1000C0FE0, &qword_1000A11A0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_10009CE24();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for WidgetTileInfo();
  v2[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for AccessoryAndSceneEntity();
  v2[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002F498, 0, 0);
}

uint64_t sub_10002F498()
{
  v76 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[3];
  sub_10009C954();
  sub_100006850(v1 + *(v3 + 24), v2);
  sub_10003092C(v1, type metadata accessor for AccessoryAndSceneEntity);
  LODWORD(v5) = *(v2 + *(v4 + 56));
  sub_10003092C(v2, type metadata accessor for WidgetTileInfo);
  if (v5 != 1)
  {
    goto LABEL_5;
  }

  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[3];
  sub_10009C954();
  sub_100006850(v6 + *(v3 + 24), v7);
  sub_10003092C(v6, type metadata accessor for AccessoryAndSceneEntity);
  LODWORD(v9) = *(v7 + *(v8 + 52));
  sub_10003092C(v7, type metadata accessor for WidgetTileInfo);
  if (v9 != 1)
  {
LABEL_5:
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v17 = v0[3];
    v18 = sub_10009D924();
    sub_100015B68(v18, qword_1000C8278);

    v19 = sub_10009D904();
    v20 = sub_10009E844();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[13];
      v22 = v0[10];
      v23 = v0[8];
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v75);
      *(v25 + 12) = 2080;
      sub_10009C954();
      sub_100006850(v21 + *(v3 + 24), v22);
      sub_10003092C(v21, type metadata accessor for AccessoryAndSceneEntity);
      v26 = (v22 + *(v23 + 24));
      v27 = *v26;
      v28 = v26[1];

      sub_10003092C(v22, type metadata accessor for WidgetTileInfo);
      v29 = sub_10002AD68(v27, v28, &v75);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s %s does not support toggle()", v25, 0x16u);
      swift_arrayDestroy();
    }

    v30 = v0[12];
    v31 = v0[5];
    v32 = v0[6];
    v33 = v0[3];
    v34 = v0[4];
    sub_10009C954();
    sub_1000259B8();
    sub_10003092C(v30, type metadata accessor for AccessoryAndSceneEntity);
    if ((*(v32 + 48))(v34, 1, v31) == 1)
    {
      sub_10003098C(v0[4]);
LABEL_20:
      v47 = v0[2];
      sub_10009C934();
      goto LABEL_21;
    }

    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    v35 = sub_10009CE04();
    v37 = v36;
    v38 = sub_10009E5C4();
    if (!v37)
    {

      sub_10009E5C4();

LABEL_19:
      (*(v0[6] + 8))(v0[7], v0[5]);
      goto LABEL_20;
    }

    if (v35 != v38 || v37 != v39)
    {
      v40 = sub_10009ED34();

      if (v40)
      {
        goto LABEL_17;
      }

      if (v35 != sub_10009E5C4() || v37 != v57)
      {
        v58 = sub_10009ED34();

        if ((v58 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

LABEL_17:

LABEL_18:
    v41 = v0[7];
    v42 = [objc_opt_self() sharedInstance];
    sub_10009CDC4(v43);
    v45 = v44;
    v46 = [v42 openURL:v44];

    goto LABEL_19;
  }

  v10 = v0[13];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[3];
  sub_10009C954();
  sub_100006850(v10 + *(v3 + 24), v11);
  sub_10003092C(v10, type metadata accessor for AccessoryAndSceneEntity);
  v14 = *(v11 + *(v12 + 60) + 8);
  if (v14 < 3)
  {
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v16 = sub_10003009C;
LABEL_26:
    v15[1] = v16;
    v56 = v0[9];

    return sub_100061870();
  }

  if (v14 == 3)
  {
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v16 = sub_10002FCF4;
    goto LABEL_26;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v59 = v0[3];
  v60 = sub_10009D924();
  sub_100015B68(v60, qword_1000C8278);

  v61 = sub_10009D904();
  v62 = sub_10009E844();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = v0[13];
    v64 = v0[10];
    v65 = v0[11];
    v66 = v0[8];
    v67 = v0[3];
    v68 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v68 = 136315394;
    *(v68 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v75);
    *(v68 + 12) = 2080;
    sub_10009C954();
    sub_100006850(v63 + *(v65 + 24), v64);
    sub_10003092C(v63, type metadata accessor for AccessoryAndSceneEntity);
    v69 = (v64 + *(v66 + 24));
    v70 = *v69;
    v71 = v69[1];

    sub_10003092C(v64, type metadata accessor for WidgetTileInfo);
    v72 = sub_10002AD68(v70, v71, &v75);

    *(v68 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v61, v62, "%s %s sent toggle() to device", v68, 0x16u);
    swift_arrayDestroy();
  }

  v73 = v0[9];
  v74 = v0[2];
  sub_10009C934();
  sub_10003092C(v73, type metadata accessor for WidgetTileInfo);
LABEL_21:
  v49 = v0[12];
  v48 = v0[13];
  v51 = v0[9];
  v50 = v0[10];
  v52 = v0[7];
  v53 = v0[4];

  v54 = v0[1];

  return v54();
}

uint64_t sub_10002FCF4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_10002FDF0, 0, 0);
}

uint64_t sub_10002FDF0()
{
  v26 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v25);
    *(v10 + 12) = 2080;
    sub_10009C954();
    sub_100006850(v5 + *(v7 + 24), v6);
    sub_10003092C(v5, type metadata accessor for AccessoryAndSceneEntity);
    v11 = (v6 + *(v8 + 24));
    v12 = *v11;
    v13 = v11[1];

    sub_10003092C(v6, type metadata accessor for WidgetTileInfo);
    v14 = sub_10002AD68(v12, v13, &v25);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s sent toggle() to device", v10, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[9];
  v16 = v0[2];
  sub_10009C934();
  sub_10003092C(v15, type metadata accessor for WidgetTileInfo);
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[7];
  v22 = v0[4];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10003009C()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1000309F4, 0, 0);
}

uint64_t sub_100030208@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100015B68(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000302B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EAAC;

  return sub_10002F328(a1, v4);
}

uint64_t sub_100030350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000303C8();
  *a1 = result;
  return result;
}

uint64_t sub_100030378(uint64_t a1)
{
  v2 = sub_10002F05C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000303C8()
{
  v0 = sub_10009CB44();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v35 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = v30 - v7;
  v8 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v32 = v30 - v10;
  v11 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v31 = v30 - v13;
  v14 = sub_10009CD34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10009CF54();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10009E5A4();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_10009CD54();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v30[1] = sub_100003714(&qword_1000C12A8, "BJ");
  sub_10009E554();
  sub_10009CF44();
  (*(v15 + 104))(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_10009CD64();
  (*(v24 + 56))(v31, 1, 1, v23);
  v26 = type metadata accessor for AccessoryAndSceneEntity();
  (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  v27 = sub_10009C914();
  v28 = *(*(v27 - 8) + 56);
  v28(v33, 1, 1, v27);
  v28(v34, 1, 1, v27);
  (*(v36 + 104))(v35, enum case for InputConnectionBehavior.default(_:), v37);
  sub_1000308D4();
  return sub_10009C9A4();
}

unint64_t sub_1000308D4()
{
  result = qword_1000C1160;
  if (!qword_1000C1160)
  {
    type metadata accessor for AccessoryAndSceneEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1160);
  }

  return result;
}

uint64_t sub_10003092C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003098C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000309FC()
{
  result = qword_1000C12B0;
  if (!qword_1000C12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12B0);
  }

  return result;
}

unint64_t sub_100030A54()
{
  result = qword_1000C12B8;
  if (!qword_1000C12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12B8);
  }

  return result;
}

unint64_t sub_100030AAC()
{
  result = qword_1000C12C0;
  if (!qword_1000C12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12C0);
  }

  return result;
}

unint64_t sub_100030B04()
{
  result = qword_1000C12C8;
  if (!qword_1000C12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12C8);
  }

  return result;
}

uint64_t sub_100030B98()
{
  v0 = sub_10009CD54();
  sub_10001F4BC(v0, qword_1000C8220);
  sub_100015B68(v0, qword_1000C8220);
  return sub_10009CD14();
}

uint64_t sub_100030C68@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_10009CBF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C1318, &qword_1000A0CC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  swift_getKeyPath();
  (*(v2 + 104))(v5, enum case for HasValueComparisonOperator.hasNoValue(_:), v1);
  sub_100003714(&qword_1000C1320, &unk_1000A0CD0);
  sub_1000309FC();
  sub_10001CDC8(&qword_1000C1330, &qword_1000C1320, &unk_1000A0CD0);
  sub_10001CDC8(&qword_1000C1340, &qword_1000C1300, &qword_1000A0C60);
  sub_10009CC44();
  sub_10001CDC8(&qword_1000C1328, &qword_1000C1318, &qword_1000A0CC8);
  sub_10009CB64();
  v14 = *(v7 + 8);
  v14(v11, v6);
  sub_10009CB54();
  return (v14)(v13, v6);
}

uint64_t sub_100030F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10009C974();
  *a2 = result;
  return result;
}

uint64_t sub_100030FB8()
{
  swift_getKeyPath();
  sub_1000309FC();
  v0 = sub_10009CB24();

  swift_getKeyPath();

  v1 = sub_10009CB24();

  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000A0A70;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_10009CB14();

  return v3;
}

uint64_t sub_1000310C4()
{
  v0 = sub_100003714(&qword_1000C1320, &unk_1000A0CD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  sub_1000309FC();
  sub_10009CB34();
  sub_10001CDC8(&qword_1000C1330, &qword_1000C1320, &unk_1000A0CD0);
  sub_10009CB64();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_10009CB54();
  return (v8)(v7, v0);
}

uint64_t sub_100031264()
{
  swift_getKeyPath();
  sub_1000309FC();
  v0 = sub_10009CB24();

  swift_getKeyPath();

  v1 = sub_10009CB24();

  swift_getKeyPath();

  v2 = sub_10009CB24();

  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000A0A80;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;

  v4 = sub_10009CB14();

  return v4;
}

uint64_t sub_1000313B4()
{
  swift_getKeyPath();
  sub_1000309FC();
  v0 = sub_10009CB24();

  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10009FA10;
  *(v1 + 32) = v0;

  v2 = sub_10009CB14();

  return v2;
}

uint64_t sub_100031470@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CD54();
  v3 = sub_100015B68(v2, qword_1000C8220);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10003151C()
{
  v0 = sub_10009CC14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, enum case for EquatableComparisonOperator.equalTo(_:), v0);
  v6[15] = 0;
  sub_100003714(&qword_1000C1318, &qword_1000A0CC8);
  sub_100003714(&qword_1000C1320, &unk_1000A0CD0);
  sub_10001CDC8(&qword_1000C1328, &qword_1000C1318, &qword_1000A0CC8);
  sub_10001CDC8(&qword_1000C1330, &qword_1000C1320, &unk_1000A0CD0);
  sub_10001CDC8(&qword_1000C1338, &qword_1000C10B0, &qword_1000A03A8);
  return sub_10009CC54();
}

uint64_t sub_100031750(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100031C68();
  *v5 = v2;
  v5[1] = sub_1000317FC;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_1000317FC()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

char *sub_100031904@<X0>(char **a1@<X8>)
{
  result = sub_100031E7C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100031930(uint64_t a1)
{
  v2 = sub_1000309FC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10003196C()
{
  sub_10009C954();
  if (v3)
  {
    return sub_10009D724();
  }

  sub_100031DAC();
  v1 = sub_10009CBD4();
  if (!v1)
  {
    return sub_10009D734();
  }

  sub_100031A70(v1);

  sub_100003714(&qword_1000C12F0, &unk_1000A0C50);
  sub_10001CDC8(&qword_1000C12F8, &qword_1000C12F0, &unk_1000A0C50);
  v2 = sub_10009D714();

  return v2;
}

void *sub_100031A70(uint64_t a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_10001BC64(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001BC64((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = &protocol witness table for UUID;
      v15 = sub_100031E00(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      v22[2] = v14 + 1;
      sub_100031E64(&v19, &v8[5 * v14 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_100031C3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_10003196C();
}

unint64_t sub_100031C68()
{
  result = qword_1000C12D0;
  if (!qword_1000C12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12D0);
  }

  return result;
}

__n128 sub_100031CBC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100031CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100031D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100031DAC()
{
  result = qword_1000C12E8;
  if (!qword_1000C12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C12E8);
  }

  return result;
}

uint64_t *sub_100031E00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100031E64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_100031E7C()
{
  v0 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v49 = v44 - v2;
  v61 = sub_10009CB44();
  v64 = *(v61 - 8);
  v3 = *(v64 + 64);
  __chkstk_darwin(v61);
  v63 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v62 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = v44 - v9;
  v10 = sub_100003714(&qword_1000C10A8, &unk_1000A0398);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v48 = v44 - v12;
  v13 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v44 - v15;
  v59 = sub_10009CD34();
  v17 = *(v59 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v59);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009CF54();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10009E5A4();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10009CD54();
  v54 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v44[0] = v44 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003714(&qword_1000C10B0, &qword_1000A03A8);
  sub_10009E554();
  v56 = "ToggleIntent.Parameter";
  v50 = v24;
  sub_10009CF44();
  v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v33 = *(v17 + 104);
  v58 = v17 + 104;
  v60 = v33;
  v51 = v20;
  v33(v20);
  sub_10009CD64();
  v34 = *(v30 + 56);
  v53 = v30 + 56;
  v55 = v34;
  v34(v16, 1, 1, v29);
  LOBYTE(v66) = 1;
  v35 = sub_10009E6F4();
  (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
  v36 = sub_10009C914();
  v37 = *(*(v36 - 8) + 56);
  v38 = v47;
  v37(v47, 1, 1, v36);
  v52 = enum case for InputConnectionBehavior.default(_:);
  v45 = *(v64 + 104);
  v64 += 104;
  v39 = v61;
  v45(v63);
  v48 = sub_10009C9D4();
  v46 = sub_100003714(&qword_1000C1300, &qword_1000A0C60);
  v44[1] = v28;
  sub_10009E554();
  sub_10009CF44();
  v60(v51, v57, v59);
  sub_10009CD64();
  v55(v16, 1, 1, v54);
  v40 = type metadata accessor for HomeEntity();
  (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
  v37(v38, 1, 1, v36);
  v37(v62, 1, 1, v36);
  v41 = v39;
  v42 = v45;
  (v45)(v63, v52, v41);
  sub_100032750();
  v49 = sub_10009C9A4();
  v46 = sub_100003714(&qword_1000C1310, &qword_1000A0C68);
  sub_10009E554();
  sub_10009CF44();
  v60(v51, v57, v59);
  sub_10009CD64();
  v55(v16, 1, 1, v54);
  v66 = 0;
  v37(v38, 1, 1, v36);
  v37(v62, 1, 1, v36);
  sub_100003714(&qword_1000C1268, &qword_1000A0C70);
  swift_getKeyPath();
  v65 = sub_10009CBA4();
  (v42)(v63, v52, v61);
  sub_1000248DC();
  sub_10009C994();
  return v48;
}

unint64_t sub_100032750()
{
  result = qword_1000C1308;
  if (!qword_1000C1308)
  {
    type metadata accessor for HomeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1308);
  }

  return result;
}

uint64_t sub_1000327A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10009C974();
  *a2 = result;
  return result;
}

uint64_t sub_1000327D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10009C974();
  *a2 = result;
  return result;
}

uint64_t sub_100032800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_10009C974();
  *a2 = result;
  return result;
}

uint64_t sub_10003282C()
{
  v0 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10009CF14();
  sub_10001F4BC(v4, qword_1000C8238);
  v5 = sub_100015B68(v4, qword_1000C8238);
  sub_10009CED4();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void *sub_10003295C()
{
  result = sub_10003297C();
  qword_1000C8258 = result;
  return result;
}

void *sub_10003297C()
{
  v123 = type metadata accessor for AccessoryAndSceneEntity();
  v122 = *(v123 - 8);
  v0 = *(v122 + 64);
  __chkstk_darwin(v123);
  v150 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v145 = &v102 - v4;
  v121 = sub_10009D5A4();
  v5 = *(v121 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v121);
  v144 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v143 = &v102 - v9;
  v120 = type metadata accessor for WidgetTileInfo();
  v10 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v148 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v102 - v14;
  v16 = sub_10009CF14();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v142 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v149 = &v102 - v22;
  __chkstk_darwin(v21);
  v124 = &v102 - v23;
  v104 = sub_10009CE24();
  v103 = *(v104 - 8);
  v24 = *(v103 + 64);
  __chkstk_darwin(v104);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000249E0(v26);
  v102 = v26;
  v105 = sub_10009CE34();
  v106 = v27;
  if (qword_1000C8250)
  {
    v28 = qword_1000C8250;
  }

  else
  {
    v29 = objc_opt_self();
    isa = sub_10009CE54().super.isa;
    *&v163 = 0;
    v31 = [v29 propertyListWithData:isa options:1 format:0 error:&v163];

    if (!v31)
    {
      v101 = v163;
      sub_10009CD04();

      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v32 = v163;
    sub_10009E974();
    swift_unknownObjectRelease();
    sub_100003714(&qword_1000C1348, &qword_1000A0D08);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_100033B34(v105, v106);
      (*(v103 + 8))(v102, v104);
      return _swiftEmptyArrayStorage;
    }

    v28 = v162;
    qword_1000C8250 = v162;
  }

  v33 = *(v28 + 16);

  v119 = v33;
  if (v33)
  {
    v34 = 0;
    v118 = v28 + 32;
    v117 = (v17 + 48);
    v116 = (v17 + 32);
    v115 = "ies+Samples.swift";
    v35 = (v17 + 16);
    v113 = enum case for StaticRenderingMode.hierarchical(_:);
    v112 = (v5 + 104);
    v111 = enum case for StaticRenderingMode.monochrome(_:);
    v110 = (v5 + 16);
    v109 = (v5 + 8);
    v141 = (v17 + 8);
    v146 = _swiftEmptyArrayStorage;
    v36 = v124;
    v107 = v15;
    v114 = v28;
    v151 = v16;
    v108 = v35;
    while (v34 < *(v28 + 16))
    {
      v37 = *(v118 + 8 * v34);
      if (!*(v37 + 16))
      {
        goto LABEL_40;
      }

      v38 = *(v118 + 8 * v34);

      v39 = sub_10001B558(25705, 0xE200000000000000);
      if ((v40 & 1) == 0)
      {
        goto LABEL_41;
      }

      sub_10001B668(*(v37 + 56) + 32 * v39, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      sub_10009CED4();

      if ((*v117)(v15, 1, v16) == 1)
      {
        goto LABEL_58;
      }

      (*v116)(v36, v15, v16);
      if (!*(v37 + 16))
      {
        goto LABEL_42;
      }

      v41 = sub_10001B558(1701667182, 0xE400000000000000);
      if ((v42 & 1) == 0)
      {
        goto LABEL_43;
      }

      sub_10001B668(*(v37 + 56) + 32 * v41, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      if (!*(v37 + 16))
      {
        goto LABEL_44;
      }

      v43 = sub_10001B558(0x656D614E6D6F6F72, 0xE800000000000000);
      if ((v44 & 1) == 0)
      {
        goto LABEL_45;
      }

      sub_10001B668(*(v37 + 56) + 32 * v43, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      if (!*(v37 + 16))
      {
        goto LABEL_46;
      }

      v45 = sub_10001B558(0x626D79536E6F6369, 0xEA00000000006C6FLL);
      if ((v46 & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_10001B668(*(v37 + 56) + 32 * v45, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      if (!*(v37 + 16))
      {
        goto LABEL_48;
      }

      v47 = sub_10001B558(0xD000000000000013, v115 | 0x8000000000000000);
      if ((v48 & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_10001B668(*(v37 + 56) + 32 * v47, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      v49 = sub_10009E194();
      if (!*(v37 + 16))
      {
        goto LABEL_50;
      }

      v50 = v49;

      v51 = sub_10001B558(0x6176697463417369, 0xEB00000000646574);
      if ((v52 & 1) == 0)
      {
        goto LABEL_51;
      }

      v147 = v50;
      sub_10001B668(*(v37 + 56) + 32 * v51, &v162);
      sub_10001CD4C(&v162, &v163);
      sub_100033B88();
      swift_dynamicCast();
      v53 = v153;
      [v153 BOOLValue];

      if (!*(v37 + 16))
      {
        goto LABEL_52;
      }

      v54 = sub_10001B558(0x6168636165527369, 0xEB00000000656C62);
      if ((v55 & 1) == 0)
      {
        goto LABEL_53;
      }

      sub_10001B668(*(v37 + 56) + 32 * v54, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      v56 = v153;
      v140 = [v153 BOOLValue];

      if (!*(v37 + 16))
      {
        goto LABEL_54;
      }

      v57 = sub_10001B558(0x7453737574617473, 0xEC000000676E6972);
      if ((v58 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_10001B668(*(v37 + 56) + 32 * v57, &v162);
      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      if (!*(v37 + 16))
      {
        goto LABEL_56;
      }

      v59 = sub_10001B558(0x6168636165527369, 0xEB00000000656C62);
      if ((v60 & 1) == 0)
      {
        goto LABEL_57;
      }

      v139 = v34;
      sub_10001B668(*(v37 + 56) + 32 * v59, &v162);

      sub_10001CD4C(&v162, &v163);
      swift_dynamicCast();
      v61 = v152;
      [v152 BOOLValue];

      v62 = *v35;
      (*v35)(v149, v36, v16);
      v62(v142, v36, v16);
      v63 = v161;
      v134 = v160;
      v135 = v158;
      v126 = v159;
      v137 = v156;
      v127 = v157;
      v138 = v154;
      v128 = v155;
      v64 = *v112;
      v65 = v121;
      (*v112)(v143, v113, v121);
      v64(v144, v111, v65);
      v66 = type metadata accessor for WidgetPredictionAnalyticsInfo();
      v67 = *(*(v66 - 8) + 56);
      v67(v145, 1, 1, v66);

      v136 = sub_10001C968(_swiftEmptyArrayStorage);
      v68 = v148;
      v69 = v120;
      v70 = *(v120 + 72);
      v71 = sub_10009D3F4();
      (*(*(v71 - 8) + 56))(v68 + v70, 1, 1, v71);
      v133 = v69[19];
      v67(v68 + v133, 1, 1, v66);
      v72 = v69[21];
      v132 = v69[20];
      v130 = (v68 + v72);
      v73 = v69[22];
      v131 = v69[23];
      v129 = (v68 + v73);
      v125 = v62;
      v35 = v108;
      v62(v68, v149, v151);
      v74 = v142;
      v62((v68 + v69[5]), v142, v151);
      v75 = (v68 + v69[6]);
      *v75 = v134;
      v75[1] = v63;
      v76 = (v68 + v69[7]);
      v77 = v126;
      *v76 = v135;
      v76[1] = v77;
      v78 = (v68 + v69[8]);
      v79 = v127;
      *v78 = v137;
      v78[1] = v79;
      v80 = (v68 + v69[9]);
      v81 = v128;
      *v80 = v138;
      v80[1] = v81;
      v82 = *v110;
      v83 = v143;
      (*v110)(v68 + v69[10], v143, v65);
      v84 = v144;
      v82(v68 + v69[11], v144, v65);
      *(v68 + v69[12]) = v147;
      *(v68 + v69[13]) = v140;
      v85 = v68 + v69[15];
      *v85 = 0;
      *(v85 + 8) = 4;
      v86 = *v109;
      (*v109)(v84, v65);
      v86(v83, v65);
      v87 = *v141;
      (*v141)(v74, v151);
      v87(v149, v151);
      v88 = v125;
      *(v68 + v69[14]) = 0;
      *(v68 + v69[16]) = v136;
      *(v68 + v69[17]) = 0;
      *(v68 + v132) = 2;
      v89 = v130;
      *v130 = 0;
      *(v89 + 8) = 1;
      v90 = v129;
      *v129 = 0;
      v90[1] = 0;
      *(v68 + v131) = 2;
      v16 = v151;
      v36 = v124;
      sub_100014CC8(v145, v68 + v133);
      v88(v150, v36, v16);
      if (qword_1000C0A78 != -1)
      {
        swift_once();
      }

      v91 = sub_100015B68(v16, qword_1000C8238);
      v92 = v123;
      v93 = v150;
      v88(&v150[*(v123 + 20)], v91, v16);
      sub_100006850(v148, v93 + *(v92 + 24));
      v94 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v139;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v94 = sub_100064F9C(0, v94[2] + 1, 1, v94);
      }

      v15 = v107;
      v98 = v94[2];
      v97 = v94[3];
      if (v98 >= v97 >> 1)
      {
        v94 = sub_100064F9C(v97 > 1, v98 + 1, 1, v94);
      }

      v34 = v96 + 1;

      v87(v36, v16);
      v94[2] = v98 + 1;
      v99 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v146 = v94;
      sub_100033BD4(v150, v94 + v99 + *(v122 + 72) * v98);
      sub_100006918(v148);

      v28 = v114;
      if (v119 == v34)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
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
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  v146 = _swiftEmptyArrayStorage;
LABEL_37:
  (*(v103 + 8))(v102, v104);
  sub_100033B34(v105, v106);

  return v146;
}

uint64_t sub_100033B34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100033B88()
{
  result = qword_1000C0E30;
  if (!qword_1000C0E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C0E30);
  }

  return result;
}

uint64_t sub_100033BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryAndSceneEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100033C38(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v41 = sub_10009CF14();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v41);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v32 - v11;
  v37 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_100034CC0();
    result = sub_10009E794();
    a1 = v43;
    v13 = v44;
    v14 = v45;
    v15 = v46;
    v16 = v47;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v15 = 0;
  }

  v36 = v14;
  v39 = (v7 + 48);
  v40 = (v7 + 56);
  v32 = v7;
  v33 = (v7 + 32);
  v38 = _swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v23 = sub_10009EA44();
    if (!v23 || (v42 = v23, sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr), swift_dynamicCast(), (v22 = v48) == 0))
    {
LABEL_24:
      sub_100015F9C();
      return v38;
    }

LABEL_17:
    v24 = [v22 uniqueIdentifier];
    sub_10009CF04();

    v25 = v41;
    (*v40)(v6, 0, 1, v41);

    if ((*v39)(v6, 1, v25) == 1)
    {
      result = sub_1000242C8(v6);
    }

    else
    {
      v26 = *v33;
      v27 = v41;
      (*v33)(v34, v6, v41);
      v26(v35, v34, v27);
      v28 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100064F74(0, v38[2] + 1, 1, v38);
      }

      v30 = v38[2];
      v29 = v38[3];
      if (v30 >= v29 >> 1)
      {
        v38 = sub_100064F74(v29 > 1, v30 + 1, 1, v38);
      }

      v31 = v38;
      v38[2] = v30 + 1;
      result = (v28)(v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30, v35, v41);
    }
  }

  v20 = v15;
  v21 = v16;
  if (v16)
  {
LABEL_13:
    v16 = (v21 - 1) & v21;
    v22 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= ((v14 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v21 = *(v13 + 8 * v15);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003407C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v20 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_100034CC0();
    result = sub_10009E794();
    v3 = v19[1];
    v5 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v8 = v19[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v19[0] = v16;
        sub_1000342C0(v19, &v18);
        if (v2)
        {
          break;
        }

        result = sub_1000615AC(v18);
        v7 = v14;
        v8 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = sub_10009EA44();
        if (v17)
        {
          v18 = v17;
          sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
          swift_dynamicCast();
          v16 = v19[0];
          v14 = v7;
          v15 = v8;
          if (v19[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_100015F9C();
    }

    else
    {
LABEL_19:
      sub_100015F9C();
      return v20;
    }
  }

  else
  {
    while (1)
    {
      v14 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = v5[v14];
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000342C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v24 = sub_10009CF14();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v8 = sub_10009E6A4();

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v10 = 0;
    v22 = v8 & 0xFFFFFFFFFFFFFF8;
    v23 = v8 & 0xC000000000000001;
    v21 = v3 + 32;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v23)
      {
        v12 = sub_10009EAE4();
      }

      else
      {
        if (v10 >= *(v22 + 16))
        {
          goto LABEL_16;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100064F74(0, v11[2] + 1, 1, v11);
      }

      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v11 = sub_100064F74(v16 > 1, v17 + 1, 1, v11);
      }

      v11[2] = v17 + 1;
      (*(v3 + 32))(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v6, v24);
      ++v10;
      if (v14 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_19:

  *v20 = v11;
  return result;
}

void *sub_100034548(void *a1)
{
  v56 = sub_10009CF14();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v56);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v55 = &v48 - v7;
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = [a1 accessories];
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v11 = sub_10009E6A4();

  v58 = v11;
  sub_100003714(&qword_1000C1350, &qword_1000A0D10);
  sub_100034C5C();
  v12 = sub_10009E7B4();

  v50 = v12;
  v48 = sub_100033C38(v12);
  v49 = 0;
  v51 = a1;
  v13 = [a1 actionSets];
  sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
  v14 = sub_10009E6A4();

  if (v14 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v16 = 0;
    v52 = v14 & 0xFFFFFFFFFFFFFF8;
    v53 = v14 & 0xC000000000000001;
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v53)
      {
        v18 = sub_10009EAE4();
      }

      else
      {
        if (v16 >= *(v52 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v21 = [v18 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100064F74(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v17 = sub_100064F74(v22 > 1, v23 + 1, 1, v17);
      }

      v17[2] = v23 + 1;
      (*(v2 + 32))(v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23, v9, v56);
      ++v16;
      if (v20 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_19:

  v49 = sub_10003407C(v50);

  v24 = [v51 serviceGroups];
  sub_100007330(0, &qword_1000C0C40, HMServiceGroup_ptr);
  v25 = sub_10009E6A4();

  if (v25 >> 62)
  {
    goto LABEL_35;
  }

  for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10009EBA4())
  {
    v27 = 0;
    v52 = v25 & 0xFFFFFFFFFFFFFF8;
    v53 = v25 & 0xC000000000000001;
    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v53)
      {
        v29 = sub_10009EAE4();
      }

      else
      {
        if (v27 >= *(v52 + 16))
        {
          goto LABEL_34;
        }

        v29 = *(v25 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v32 = j;
      v33 = [v29 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100064F74(0, v28[2] + 1, 1, v28);
      }

      v35 = v28[2];
      v34 = v28[3];
      if (v35 >= v34 >> 1)
      {
        v28 = sub_100064F74(v34 > 1, v35 + 1, 1, v28);
      }

      v28[2] = v35 + 1;
      (*(v2 + 32))(v28 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v35, v55, v56);
      ++v27;
      j = v32;
      if (v31 == v32)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_37:

  v36 = [v51 mediaSystems];
  sub_100007330(0, &qword_1000C1360, HMMediaSystem_ptr);
  v37 = sub_10009E6A4();

  if (v37 >> 62)
  {
    goto LABEL_53;
  }

  for (k = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_10009EBA4())
  {
    v39 = 0;
    v55 = (v37 & 0xC000000000000001);
    v52 = v2 + 32;
    v53 = v37 & 0xFFFFFFFFFFFFFF8;
    v40 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v55)
      {
        v41 = sub_10009EAE4();
      }

      else
      {
        if (v39 >= *(v53 + 16))
        {
          goto LABEL_52;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v44 = [v41 uniqueIdentifier];
      sub_10009CF04();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_100064F74(0, v40[2] + 1, 1, v40);
      }

      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        v40 = sub_100064F74(v45 > 1, v46 + 1, 1, v40);
      }

      v40[2] = v46 + 1;
      (*(v2 + 32))(v40 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v46, v54, v56);
      ++v39;
      if (v43 == k)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_55:

  v57 = v48;
  sub_1000615AC(v17);
  sub_1000615AC(v49);
  sub_1000615AC(v28);
  sub_1000615AC(v40);
  return v57;
}

unint64_t sub_100034C5C()
{
  result = qword_1000C1358;
  if (!qword_1000C1358)
  {
    sub_10000375C(&qword_1000C1350, &qword_1000A0D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1358);
  }

  return result;
}

unint64_t sub_100034CC0()
{
  result = qword_1000C0CC8;
  if (!qword_1000C0CC8)
  {
    sub_100007330(255, &qword_1000C0BF0, HMAccessory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0CC8);
  }

  return result;
}

uint64_t type metadata accessor for HomeEntity()
{
  result = qword_1000C1438;
  if (!qword_1000C1438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100034E4C()
{
  result = qword_1000C1380;
  if (!qword_1000C1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1380);
  }

  return result;
}

uint64_t sub_100034EA0()
{
  v0 = sub_10009CBC4();
  sub_10001F4BC(v0, qword_1000C8260);
  sub_100015B68(v0, qword_1000C8260);
  return sub_10009CBB4();
}

uint64_t sub_100034F10(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10009CF14();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_100003714(&qword_1000C0C78, &qword_1000A0390) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(sub_100003714(&qword_1000C1470, &qword_1000A1108) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = sub_10009CF94();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000350A8, 0, 0);
}

uint64_t sub_1000350A8()
{
  *(v0 + 96) = sub_10009D024();
  sub_10009D1E4();
  *(v0 + 104) = sub_10009D1D4();
  sub_100037EA8(&qword_1000C10D0, &type metadata accessor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_100035178, v2, v1);
}

uint64_t sub_100035178()
{
  v2 = v0[12];
  v1 = v0[13];

  v0[14] = sub_10009D004();

  return _swift_task_switch(sub_1000351E8, 0, 0);
}

uint64_t sub_1000351E8()
{
  (*(v0[4] + 56))(v0[6], 1, 1, v0[3]);
  v1 = async function pointer to WidgetDataModel.home(_:)[1];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1000352A4;
  v3 = v0[14];
  v5 = v0[6];
  v4 = v0[7];

  return WidgetDataModel.home(_:)(v4, v5);
}

uint64_t sub_1000352A4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 112);
  v6 = *(v2 + 48);
  if (v0)
  {

    sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390);
    v7 = sub_1000357A4;
  }

  else
  {
    sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390);

    v7 = sub_100035430;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100035430()
{
  v44 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = sub_10009D924();
  sub_100015B68(v9, qword_1000C8290);
  (*(v8 + 16))(v5, v6, v7);
  v10 = sub_10009D904();
  v11 = sub_10009E844();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  if (v12)
  {
    v41 = v0[8];
    v16 = v0[4];
    v17 = v0[5];
    v18 = v0[3];
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v19 = 136446210;
    v40 = v11;
    sub_10009CF64();
    sub_100037EA8(&qword_1000C0C90, &type metadata accessor for UUID);
    v20 = sub_10009ED04();
    v22 = v21;
    (*(v16 + 8))(v17, v18);
    v23 = *(v14 + 8);
    v23(v13, v41);
    v24 = sub_10002AD68(v20, v22, &v43);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v10, v40, "HomeEntity.selectedHome() WidgetDataModel.home=%{public}s", v19, 0xCu);
    sub_100015F44(v42);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v15);
  }

  v25 = v0[11];
  v26 = v0[8];
  v27 = v0[2];
  sub_10009CF64();
  v28 = sub_10009CF84();
  v30 = v29;
  v23(v25, v26);
  v31 = type metadata accessor for HomeEntity();
  v32 = (v27 + *(v31 + 20));
  *v32 = v28;
  v32[1] = v30;
  v33 = v0[10];
  v34 = v0[11];
  v36 = v0[6];
  v35 = v0[7];
  v37 = v0[5];
  (*(*(v31 - 8) + 56))(v0[2], 0, 1);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1000357A4()
{
  v1 = v0[7];
  (*(v0[9] + 56))(v1, 1, 1, v0[8]);
  sub_1000160CC(v1, &qword_1000C1470, &qword_1000A1108);
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8290);
  v3 = sub_10009D904();
  v4 = sub_10009E824();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomeEntity.selectedHome() WidgetDataModel.home returned 0 homes", v5, 2u);
  }

  v6 = type metadata accessor for HomeEntity();
  v7 = v0[10];
  v8 = v0[11];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  (*(*(v6 - 8) + 56))(v0[2], 1, 1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100035970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10009CEF4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_10009ED34();
}

uint64_t sub_100035B60@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000C0A88 != -1)
  {
    swift_once();
  }

  v2 = sub_10009CBC4();
  v3 = sub_100015B68(v2, qword_1000C8260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100035C4C(uint64_t a1)
{
  v2 = sub_100037EA8(&qword_1000C1308, type metadata accessor for HomeEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100035D10(uint64_t a1)
{
  v3 = sub_100003714(&qword_1000C1250, &qword_1000A08C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_10009CD54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_10009E594();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_10009E584();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_10009E574(v19);
  sub_10009E564(*(v1 + *(a1 + 20)));
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_10009E574(v20);
  sub_10009CD44();
  (*(v12 + 56))(v10, 1, 1, v11);
  v16 = sub_10009CAA4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  return sub_10009CAC4();
}

uint64_t sub_100035F68(uint64_t a1)
{
  v2 = sub_100037EA8(&qword_1000C1398, type metadata accessor for HomeEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100035FE8()
{
  result = qword_1000C13B8;
  if (!qword_1000C13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C13B8);
  }

  return result;
}

unint64_t sub_100036040()
{
  result = qword_1000C13C0;
  if (!qword_1000C13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C13C0);
  }

  return result;
}

uint64_t sub_1000360DC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100003714(&qword_1000C0FE8, &qword_10009FEA0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000361A4;

  return sub_100037664();
}

uint64_t sub_1000361A4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000362A4, 0, 0);
}

uint64_t sub_1000362A4()
{
  v17 = v0;
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8290);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10002AD68(0xD000000000000013, 0x80000001000A4410, &v16);
    *(v6 + 12) = 2080;
    type metadata accessor for HomeEntity();
    v7 = sub_10009E6B4();
    v9 = sub_10002AD68(v7, v8, &v16);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s found homes %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[5];
  v12 = v0[2];
  v11 = v0[3];
  v13 = sub_10009CD54();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for HomeEntity();
  sub_100037EA8(&qword_1000C1370, type metadata accessor for HomeEntity);
  sub_100037EA8(&qword_1000C1230, type metadata accessor for HomeEntity);
  sub_10009CA64();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100036560(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v1[7] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100036618, 0, 0);
}

uint64_t sub_100036618()
{
  type metadata accessor for HomeWidget();
  v0[11] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[12] = v2;
  v0[13] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000366EC;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000366EC(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10003684C, 0, 0);
}

uint64_t sub_10003684C()
{
  v17 = v0;
  v1 = v0[15];
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_100036AA8;
    v3 = v0[10];

    return sub_100034F10(v3);
  }

  else
  {
    if (qword_1000C0A98 != -1)
    {
      swift_once();
    }

    v5 = sub_10009D924();
    sub_100015B68(v5, qword_1000C8290);
    v6 = sub_10009D904();
    v7 = sub_10009E824();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10002AD68(0x52746C7561666564, 0xEF2928746C757365, &v16);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Error loading HMHomeManager", v8, 0xCu);
      sub_100015F44(v9);
    }

    v10 = v0[6];
    v11 = type metadata accessor for HomeEntity();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100036AA8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_100036BA4, 0, 0);
}

uint64_t sub_100036BA4()
{
  v21 = v0;
  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_10009D924();
  sub_100015B68(v3, qword_1000C8290);
  sub_100037DC8(v2, v1);
  v4 = sub_10009D904();
  v5 = sub_10009E844();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10002AD68(0x52746C7561666564, 0xEF2928746C757365, &v20);
    *(v10 + 12) = 2080;
    sub_100037DC8(v7, v8);
    v11 = sub_10009E5F4();
    v13 = v12;
    sub_1000160CC(v7, &qword_1000C1228, &unk_1000A0880);
    v14 = sub_10002AD68(v11, v13, &v20);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s returning selected home: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000160CC(v7, &qword_1000C1228, &unk_1000A0880);
  }

  sub_100037E38(v0[10], v0[6]);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100036DFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002EF3C;

  return sub_100037EF0(a1);
}

uint64_t sub_100036EA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001EAAC;

  return sub_1000360DC(a1);
}

unint64_t sub_100036F40()
{
  result = qword_1000C13C8;
  if (!qword_1000C13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C13C8);
  }

  return result;
}

uint64_t sub_100036FD8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100034E4C();
  *v6 = v2;
  v6[1] = sub_10002EF28;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10003708C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001EAAC;

  return sub_100036560(a1);
}

uint64_t sub_100037128(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100003714(&qword_1000C0FE8, &qword_10009FEA0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1000371F0;

  return sub_100037664();
}

uint64_t sub_1000371F0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000372F0, 0, 0);
}

uint64_t sub_1000372F0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_10009CD54();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for HomeEntity();
  sub_100037EA8(&qword_1000C1370, type metadata accessor for HomeEntity);
  sub_100037EA8(&qword_1000C1230, type metadata accessor for HomeEntity);
  sub_10009CA64();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100037460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CF14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100037534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009CF14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000375F0()
{
  result = sub_10009CF14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100037664()
{
  v1 = type metadata accessor for HomeEntity();
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_100037720, 0, 0);
}

uint64_t sub_100037720()
{
  type metadata accessor for HomeWidget();
  v0[9] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[10] = v2;
  v0[11] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1000377F4;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000377F4(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100037954, 0, 0);
}

size_t sub_100037954()
{
  v36 = v0;
  v1 = *(v0 + 104);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    goto LABEL_19;
  }

  v3 = [*(v0 + 104) hf_orderedHomes];
  sub_100037D18();
  v4 = sub_10009E6A4();

  if (qword_1000C0A98 != -1)
  {
    swift_once();
  }

  v5 = sub_10009D924();
  sub_100015B68(v5, qword_1000C8290);
  v34 = v4;

  v6 = sub_10009D904();
  v7 = sub_10009E844();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_10002AD68(0x69746E45656D6F68, 0xEE00292873656974, &v35);
    *(v8 + 12) = 2080;
    v9 = sub_10009E6B4();
    v11 = sub_10002AD68(v9, v10, &v35);

    *(v8 + 14) = v11;
    v4 = v34;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s found homes %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (v4 >> 62)
  {
    v12 = sub_10009EBA4();
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_18:

    goto LABEL_19;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_8:
  v35 = _swiftEmptyArrayStorage;
  result = sub_10001BD08(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = *(v0 + 56);
  v33 = *(v0 + 48);
  v16 = v4;
  v31 = v1;
  v32 = v4 & 0xC000000000000001;
  v2 = v35;
  do
  {
    if (v32)
    {
      v17 = sub_10009EAE4();
    }

    else
    {
      v17 = *(v16 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = *(v0 + 64);
    v20 = [v17 uniqueIdentifier];
    sub_10009CF04();

    v21 = [v18 name];
    v22 = sub_10009E5C4();
    v24 = v23;

    v25 = (v19 + *(v33 + 20));
    *v25 = v22;
    v25[1] = v24;
    v35 = v2;
    v27 = v2[2];
    v26 = v2[3];
    if (v27 >= v26 >> 1)
    {
      sub_10001BD08(v26 > 1, v27 + 1, 1);
      v2 = v35;
    }

    v28 = *(v0 + 64);
    ++v14;
    v2[2] = v27 + 1;
    sub_100037D64(v28, v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v27);
    v16 = v34;
  }

  while (v12 != v14);

LABEL_19:
  v29 = *(v0 + 64);

  v30 = *(v0 + 8);

  return v30(v2);
}

unint64_t sub_100037D18()
{
  result = qword_1000C1260;
  if (!qword_1000C1260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C1260);
  }

  return result;
}

uint64_t sub_100037D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100037EF0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10009CF14();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for HomeEntity();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_100038044;

  return sub_100037664();
}

uint64_t sub_100038044(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100038144, 0, 0);
}

uint64_t sub_100038144()
{
  v37 = v0;
  v1 = v0[11];
  v32 = *(v1 + 16);
  if (v32)
  {
    v2 = 0;
    v3 = v0[4];
    v29 = v0[2];
    v30 = v0[7];
    v33 = _swiftEmptyArrayStorage;
    v31 = v0[11];
    while (v2 < *(v1 + 16))
    {
      v4 = v2 + 1;
      v34 = *(v30 + 72);
      v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      sub_100038504(v0[11] + v35 + v34 * v2, v0[9]);
      v5 = 0;
      v6 = *(v29 + 16);
      do
      {
        v7 = v0[9];
        if (v6 == v5)
        {
          sub_100038568(v0[9]);
          goto LABEL_4;
        }

        v8 = v0[5];
        v9 = v0[3];
        (*(v3 + 16))(v8, v0[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v5++, v9);
        v10 = sub_10009CEF4();
        (*(v3 + 8))(v8, v9);
      }

      while ((v10 & 1) == 0);
      sub_100037D64(v0[9], v0[8]);
      v11 = v33;
      v36 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001BD08(0, v33[2] + 1, 1);
        v11 = v36;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_10001BD08(v12 > 1, v13 + 1, 1);
        v11 = v36;
      }

      v14 = v0[8];
      *(v11 + 16) = v13 + 1;
      v33 = v11;
      sub_100037D64(v14, v11 + v35 + v13 * v34);
LABEL_4:
      v2 = v4;
      v1 = v31;
      if (v4 == v32)
      {
        v15 = v0[11];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_16:

  if (qword_1000C0A98 != -1)
  {
    goto LABEL_23;
  }

LABEL_17:
  v16 = sub_10009D924();
  sub_100015B68(v16, qword_1000C8290);

  v17 = sub_10009D904();
  v18 = sub_10009E844();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[6];
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_10002AD68(0x7365697469746E65, 0xEE00293A726F6628, &v36);
    *(v20 + 12) = 2080;
    v21 = sub_10009E6B4();
    v23 = sub_10002AD68(v21, v22, &v36);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s matched homes %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[5];

  v27 = v0[1];

  return v27(v33);
}

uint64_t sub_100038504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038568(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000385FC()
{
  v1[2] = v0;
  v2 = sub_10009CF94();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = sub_10009D1E4();
  v1[7] = sub_10009D1D4();
  v5 = async function pointer to WidgetDataModel.orderedHomes.getter[1];
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_10003870C;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10003870C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  v7 = *(v3 + 56);
  v8 = *(v3 + 48);
  if (v1)
  {

    sub_10003A5E4();
    v9 = sub_10009E714();
    v11 = v10;
    v12 = sub_100038B78;
    v13 = v9;
    v14 = v11;
  }

  else
  {
    sub_10003A5E4();
    v15 = sub_10009E714();
    v14 = v16;
    *(v4 + 80) = v15;
    *(v4 + 88) = v16;
    v12 = sub_1000388B0;
    v13 = v15;
  }

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000388B0()
{
  sub_10009E744();
  *(v0 + 96) = sub_10009E734();
  v2 = sub_10009E714();

  return _swift_task_switch(sub_100038944, v2, v1);
}

uint64_t sub_100038944()
{
  v1 = v0[12];
  v2 = v0[2];

  v0[13] = sub_10009CFB4();
  v3 = v0[10];
  v4 = v0[11];

  return _swift_task_switch(sub_1000389B4, v3, v4);
}

uint64_t sub_1000389B4()
{
  v1 = v0[13];
  v2 = v0[7];

  if (v1)
  {
    v21 = v0[13];
    v3 = v0[9];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[4];
      v7 = *(v5 + 16);
      v6 = v5 + 16;
      v20 = v7;
      v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
      v9 = *(v6 + 56);
      do
      {
        v10 = v0[5];
        v11 = v0[3];
        v20(v10, v8, v11);
        v12.super.isa = v21;
        v13 = sub_10009CF74(v12);
        (*(v6 - 8))(v10, v11);
        if (v13)
        {
          sub_10009E684();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10009E6C4();
          }

          sub_10009E6E4();
        }

        v8 += v9;
        --v4;
      }

      while (v4);
      v15 = v0[9];
    }

    else
    {
    }
  }

  else
  {
    v16 = v0[9];
  }

  v17 = v0[5];

  v18 = v0[1];

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_100038B78()
{
  v1 = v0[7];

  v2 = v0[5];

  v3 = v0[1];

  return v3(_swiftEmptyArrayStorage);
}

void sub_100038BE8(void *a1@<X8>)
{
  *a1 = 0x74696B656D6F68;
  a1[1] = 0xE700000000000000;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x80000001000A4310;
}

uint64_t sub_100038C20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100038CC4;

  return sub_100039BD8();
}

uint64_t sub_100038CC4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(v2 + 56) = a1;

  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v6;
  v4[1] = sub_100038E04;

  return sub_10003A1C0();
}

uint64_t sub_100038E04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v6 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return _swift_task_switch(sub_100038F04, 0, 0);
}

uint64_t sub_100038F04()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = 0xE700000000000000;
  if (*(v0 + 56))
  {
    v4 = 0x80000001000A4710;
  }

  v5 = 0x74696B656D6F68;
  if (*(v0 + 56))
  {
    v5 = 0xD000000000000020;
  }

  *v3 = v5;
  v3[1] = v4;
  v3[2] = v2;
  v3[3] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100038F68@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = sub_10009CD34();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF54();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E5A4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10009CD54();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  __chkstk_darwin(v11);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003714(&qword_1000C1488, &qword_1000A1178);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = sub_100003714(&qword_1000C1490, &qword_1000A1180);
  v20 = *(v19 - 8);
  v51 = v19;
  v52 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = sub_100003714(&qword_1000C1498, &qword_1000A1188);
  v25 = *(v24 - 8);
  v55 = v24;
  v56 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v61 = &v46 - v27;

  sub_100003714(&qword_1000C14A0, &qword_1000A1190);
  v28 = sub_10000375C(&qword_1000C14A8, &qword_1000A1198);
  v29 = sub_10001CDC8(&qword_1000C14B0, &qword_1000C14A8, &qword_1000A1198);
  v64 = v28;
  v65 = v29;
  swift_getOpaqueTypeConformance2();
  sub_100039A10();
  sub_10009E484();
  v30 = sub_10001CDC8(&qword_1000C14C0, &qword_1000C1488, &qword_1000A1178);
  v31 = v23;
  sub_10009DE64();
  (*(v15 + 8))(v18, v14);
  sub_10009E554();
  v49 = "LaunchHomeAppControlDisplayName";
  sub_10009CF44();
  v48 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v32 = *(v63 + 104);
  v63 += 104;
  v47 = v32;
  v33 = v59;
  v32(v59);
  v34 = v53;
  sub_10009CD64();
  v64 = v14;
  v65 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v34;
  v37 = v51;
  v38 = v31;
  sub_10009DE44();
  v39 = *(v57 + 8);
  v40 = v36;
  v41 = v36;
  v42 = v58;
  v39(v40, v58);
  (*(v52 + 8))(v38, v37);
  sub_10009E554();
  sub_10009CF44();
  v47(v33, v48, v62);
  sub_10009CD64();
  v64 = v37;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v61;
  v44 = v55;
  sub_10009DE34();
  v39(v41, v42);
  return (*(v56 + 8))(v43, v44);
}

uint64_t sub_100039600(uint64_t *a1)
{
  v2 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v18 - v4;
  v6 = sub_100003714(&qword_1000C14A8, &qword_1000A1198);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  sub_10009CE14();
  v15 = sub_10009CE24();
  result = (*(*(v15 - 8) + 48))(v5, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18[1] = sub_10001EFB4(v5);
    v17 = swift_allocObject();
    v17[2] = v12;
    v17[3] = v11;
    v17[4] = v14;
    v17[5] = v13;

    sub_100003714(&qword_1000C14C8, &qword_1000A11A8);
    sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8);
    sub_10001E244();
    sub_10009E354();
    sub_10009E114();
    sub_10001CDC8(&qword_1000C14B0, &qword_1000C14A8, &qword_1000A1198);
    sub_10009DDA4();

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1000398A8()
{
  v0 = sub_10009CF54();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10009E5A4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10009E554();
  sub_10009CF44();
  sub_10009E5E4();
  sub_1000037A4();

  return sub_10009E254();
}

unint64_t sub_100039A10()
{
  result = qword_1000C14B8;
  if (!qword_1000C14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C14B8);
  }

  return result;
}

uint64_t sub_100039A64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039AA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1000398A8();
}

uint64_t sub_100039AC0()
{
  sub_10000375C(&qword_1000C1498, &qword_1000A1188);
  sub_10000375C(&qword_1000C1490, &qword_1000A1180);
  sub_10000375C(&qword_1000C1488, &qword_1000A1178);
  sub_10001CDC8(&qword_1000C14C0, &qword_1000C1488, &qword_1000A1178);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100039BD8()
{
  v1 = sub_10009D924();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100039C94, 0, 0);
}

uint64_t sub_100039C94()
{
  *(v0 + 48) = sub_10009D024();
  sub_10009D1E4();
  *(v0 + 56) = sub_10009D1D4();
  sub_10003A5E4();
  v2 = sub_10009E714();

  return _swift_task_switch(sub_100039D34, v2, v1);
}

uint64_t sub_100039D34()
{
  v2 = v0[6];
  v1 = v0[7];

  v0[8] = sub_10009D004();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100039DD4;

  return sub_1000385FC();
}

uint64_t sub_100039DD4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100039EF4, 0, 0);
}

uint64_t sub_100039EF4()
{
  v28 = v0;
  v1 = v0[10];
  if (v1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[10] + 32;
    while (1)
    {
      if (v4)
      {
        v10 = v0[10];
        v7 = sub_10009EAE4();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_13;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v1 = [v7 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion];

      if ((v1 & 1) == 0)
      {
        ++v3;
        if (v9 != i)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v11 = v0[5];
  v12 = qword_1000C8318;
  sub_10009D934();
  v13 = sub_10009D904();
  v14 = sub_10009E844();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[4];
  v16 = v0[5];
  v18 = v0[3];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v19 = 136315394;
    v0[2] = &type metadata for LaunchHomeAppControl.CurrentHomeValueProvider;
    sub_100003714(&qword_1000C14D8, &unk_1000A1260);
    v20 = sub_10009E5F4();
    v22 = sub_10002AD68(v20, v21, &v27);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_10002AD68(0xD00000000000001ALL, 0x80000001000A4790, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "<%s: %s> Empty homes", v19, 0x16u);
    swift_arrayDestroy();
  }

  (*(v17 + 8))(v16, v18);
  v1 = 0;
LABEL_20:
  v23 = v0[10];
  v24 = v0[5];

  v25 = v0[1];

  return v25(v1);
}

uint64_t sub_10003A1C0()
{
  v1 = sub_10009D924();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10003A2BC;

  return sub_100039BD8();
}

uint64_t sub_10003A2BC(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10003A3BC, 0, 0);
}

uint64_t sub_10003A3BC()
{
  v16 = v0;
  if (*(v0 + 48))
  {
    v1 = 0xD000000000000026;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (*(v0 + 48))
  {
    v2 = "urlStringToHomeApp()";
  }

  else
  {
    v2 = "r Scene in Home app";
  }

  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 32);
  v4 = qword_1000C8318;
  sub_10009D934();

  v5 = sub_10009D904();
  v6 = sub_10009E844();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 16);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10002AD68(0xD000000000000014, 0x80000001000A4740, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10002AD68(v1, v2 | 0x8000000000000000, &v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s urlStringToHomeApp =  %s)", v11, 0x16u);
    swift_arrayDestroy();
  }

  (*(v9 + 8))(v8, v10);
  v12 = *(v0 + 32);

  v13 = *(v0 + 8);

  return v13(v1, v2 | 0x8000000000000000);
}

unint64_t sub_10003A5E4()
{
  result = qword_1000C10D0;
  if (!qword_1000C10D0)
  {
    sub_10009D1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C10D0);
  }

  return result;
}

__n128 sub_10003A63C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003A648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003A690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A6E0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_100003714(&qword_1000C14E8, &qword_1000A12C8);
  v1 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v36 = (&v29 - v2);
  v38 = sub_100003714(&qword_1000C14F0, &qword_1000A12D0);
  v32 = *(v38 - 8);
  v3 = v32;
  v4 = *(v32 + 64);
  v5 = __chkstk_darwin(v38);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v37 = sub_100003714(&qword_1000C14F8, &qword_1000A12D8);
  v35 = *(v37 - 8);
  v10 = v35;
  v11 = *(v35 + 64);
  v12 = __chkstk_darwin(v37);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v33 = sub_10004D284();
  v18 = v17;
  v20 = v19;
  sub_10003AB74();
  v34 = v16;
  sub_10009DDB4();
  sub_10003ABC8();
  v31 = v9;
  sub_10009DDB4();
  v30 = *(v10 + 16);
  v21 = v37;
  v30(v14, v16, v37);
  v22 = *(v3 + 16);
  v23 = v38;
  v22(v7, v9, v38);
  v24 = v36;
  *v36 = v33;
  v24[1] = v18;
  *(v24 + 16) = v20 & 1;
  v25 = v39;
  v30(v24 + *(v39 + 48), v14, v21);
  v22(v24 + *(v25 + 64), v7, v23);

  sub_10009DA24();
  v26 = *(v32 + 8);
  v26(v31, v23);
  v27 = *(v35 + 8);
  v27(v34, v21);
  v26(v7, v23);
  v27(v14, v21);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10003AAF4();
  sub_10009DA64();
  return 0;
}

unint64_t sub_10003AAF4()
{
  result = qword_1000C14E0;
  if (!qword_1000C14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C14E0);
  }

  return result;
}

unint64_t sub_10003AB74()
{
  result = qword_1000C1500;
  if (!qword_1000C1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1500);
  }

  return result;
}

unint64_t sub_10003ABC8()
{
  result = qword_1000C1508;
  if (!qword_1000C1508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1508);
  }

  return result;
}

unint64_t sub_10003AC20()
{
  result = qword_1000C1510;
  if (!qword_1000C1510)
  {
    sub_10000375C(&qword_1000C1518, &qword_1000A12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1510);
  }

  return result;
}

uint64_t sub_10003AC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10003AD84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_10003AE6C()
{
  sub_10003AF84(319, &qword_1000C1590);
  if (v0 <= 0x3F)
  {
    sub_10003AF84(319, &qword_1000C1598);
    if (v1 <= 0x3F)
    {
      sub_10004E720(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10003AFD0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10003AF84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10009DA14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10003AFD0()
{
  if (!qword_1000C15A8)
  {
    sub_10000375C(&unk_1000C15B0, &unk_1000A1360);
    v0 = sub_10009E944();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C15A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccessoriesAndScenesError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoriesAndScenesError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10003B18C(uint64_t a1)
{
  v35 = *(a1 + 16);
  if (!v35)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v34 = type metadata accessor for AccessoryAndSceneEntity();
  v3 = _swiftEmptyArrayStorage;
  v33 = a1 + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80));
  v32 = *(*(v34 - 8) + 72);
  v4 = &qword_1000C0E60;
  while (1)
  {
    v6 = v33 + v32 * v2 + *(v34 + 24);
    v7 = sub_10001A0E8();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? sub_10009EBA4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v3 >> 62;
    if (v3 >> 62)
    {
      v30 = sub_10009EBA4();
      v13 = v30 + v10;
      if (__OFADD__(v30, v10))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v10;
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        sub_10009EBA4();
        goto LABEL_17;
      }

      v14 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v14 + 16);
LABEL_17:
    v15 = v10;
    result = sub_10009EAF4();
    v3 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v19 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v18 >> 1) - v17) < v15)
    {
      goto LABEL_38;
    }

    v38 = v15;
    v36 = v2;
    v21 = v14 + 8 * v17 + 32;
    v31 = v14;
    if (v9)
    {
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      sub_10001CDC8(&qword_1000C0E68, v4, &unk_1000A1E40);
      for (i = 0; i != v19; ++i)
      {
        sub_100003714(v4, &unk_1000A1E40);
        v23 = sub_10001C624(v37, i, v8);
        v25 = v4;
        v26 = *v24;
        (v23)(v37, 0);
        *(v21 + 8 * i) = v26;
        v4 = v25;
      }
    }

    else
    {
      sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v36;
    if (v38 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v38);
      v29 = v27 + v38;
      if (v28)
      {
        goto LABEL_39;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v2 == v35)
    {
      return v3;
    }
  }

  v20 = v14;
  result = sub_10009EBA4();
  v14 = v20;
  v19 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

size_t sub_10003B4F0(size_t result, void *a2)
{
  v2 = a2[2];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = result;
  v5 = 0;
  v6 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage;
  while (v6 <= 1)
  {
    v8 = v5 + v4;
    if (__OFADD__(v5, v4))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    if (v2 >= v8)
    {
      v9 = v5 + v4;
    }

    else
    {
      v9 = v2;
    }

    v10 = v9 - v5;
    if (v9 < v5)
    {
      goto LABEL_31;
    }

    if (v5 < 0)
    {
      goto LABEL_32;
    }

    if (v10 == v2)
    {

      v11 = a2;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (v9 != v5)
      {
        if (v10 < 1)
        {
          v11 = _swiftEmptyArrayStorage;
        }

        else
        {
          sub_100003714(&qword_1000C0EC0, &qword_10009FCE8);
          v14 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
          v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v20 = *(v14 + 72);
          v11 = swift_allocObject();
          result = j__malloc_size(v11);
          if (!v20)
          {
            goto LABEL_33;
          }

          if (result - v19 == 0x8000000000000000 && v20 == -1)
          {
            goto LABEL_34;
          }

          v11[2] = v10;
          v11[3] = 2 * ((result - v19) / v20);
        }

        v16 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
        v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v18 = *(v16 + 72);
        swift_arrayInitWithCopy();
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000656C0(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v13 = v7[2];
    v12 = v7[3];
    v6 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      result = sub_1000656C0((v12 > 1), v13 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v6;
    v7[v13 + 4] = v11;
    v5 = v8;
    if (v8 >= v2)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_10003B76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(type metadata accessor for AccessoriesAndScenesEntry(0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_10009D924();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_10009D8F4();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003B8BC, 0, 0);
}

uint64_t sub_10003B8BC()
{
  v21 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = sub_100015B68(v4, qword_1000C8278);
  v0[14] = v5;
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_10009D444();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  v9 = sub_10009D904();
  v10 = sub_10009E844();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4E80, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Getting Snapshot for interactive widgets... - started", v11, 0xCu);
    sub_100015F44(v12);
  }

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_10003BAE8;
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[4];
  v17 = v0[5];
  v18 = v0[3];

  return sub_10003BD74(v14, v18, v16, v17, v15);
}

uint64_t sub_10003BAE8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_10003BBE4, 0, 0);
}

uint64_t sub_10003BBE4()
{
  v13 = v0;
  v1 = v0[14];
  v2 = sub_10009D904();
  v3 = sub_10009E844();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4E80, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Getting Snapshot for interactive widgets... - ended", v4, 0xCu);
    sub_100015F44(v5);
  }

  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  sub_10004EF84(v0[7], v0[2], type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009D8D4();
  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003BD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a3;
  v5[9] = a4;
  v5[6] = a1;
  v5[7] = a2;
  v10 = swift_task_alloc();
  v5[10] = v10;
  *v10 = v5;
  v10[1] = sub_10003BE48;

  return (sub_100054658)(a2, a3, a4, a5);
}

uint64_t sub_10003BE48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_10003C03C;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_10003BF70;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10003BF70()
{
  v1 = v0[9];
  v0[5] = v0[12];
  sub_10009C964();
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  sub_10009CEB4();
  v6 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v7 = (v5 + *(v6 + 20));
  *v7 = v4;
  v7[1] = v2;
  v7[2] = v3;
  *(v5 + *(v6 + 24)) = 0;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10003C03C()
{
  v34 = v0;
  *(v0 + 16) = *(v0 + 88);
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 88);

    v2 = *(v0 + 104);
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v3 = sub_10009D924();
    sub_100015B68(v3, qword_1000C8278);
    v4 = sub_10009D904();
    v5 = sub_10009E824();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v6 = 136315394;
      *(v6 + 4) = sub_10002AD68(0xD00000000000001ALL, 0x80000001000A4B90, &v33);
      *(v6 + 12) = 2112;
      sub_10005AFE4();
      swift_allocError();
      *v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v10;
      *v7 = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s accessoriesAndScenes failed: %@", v6, 0x16u);
      sub_1000160CC(v7, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v8);
    }

    v11 = *(v0 + 72);
    *(v0 + 32) = _swiftEmptyArrayStorage;
    sub_10009C964();
    v12 = *(v0 + 16);
  }

  else
  {
    v13 = *(v0 + 16);

    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 88);
    v15 = sub_10009D924();
    sub_100015B68(v15, qword_1000C8278);
    swift_errorRetain();
    v16 = sub_10009D904();
    v17 = sub_10009E824();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 88);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_10002AD68(0xD00000000000001ALL, 0x80000001000A4B90, &v33);
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s accessoriesAndScenes failed: %@", v19, 0x16u);
      sub_1000160CC(v20, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v21);
    }

    v23 = *(v0 + 88);
    v24 = *(v0 + 72);
    *(v0 + 24) = _swiftEmptyArrayStorage;
    sub_10009C964();

    v2 = 1;
  }

  v25 = *(v0 + 64);
  v26 = *(v0 + 72);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  sub_10009CEB4();
  v29 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v30 = (v28 + *(v29 + 20));
  *v30 = v27;
  v30[1] = v25;
  v30[2] = v26;
  *(v28 + *(v29 + 24)) = v2;
  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10003C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_10009E404() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_10009D924();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_10009D8F4();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10003C640, 0, 0);
}

uint64_t sub_10003C640()
{
  v21 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = sub_100015B68(v4, qword_1000C8278);
  v0[17] = v5;
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_10009D444();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  v9 = sub_10009D904();
  v10 = sub_10009E844();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4B70, &v20);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Loading Timeline for interactive widgets... - started", v11, 0xCu);
    sub_100015F44(v12);
  }

  sub_10005C4A4(v0[3], v0[4], v0[5], v0[6]);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_10003C878;
  v14 = v0[10];
  v15 = v0[5];
  v16 = v0[6];
  v17 = v0[3];
  v18 = v0[4];

  return sub_10003BD74(v14, v17, v18, v15, v16);
}

uint64_t sub_10003C878()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10003C974, 0, 0);
}

uint64_t sub_10003C974()
{
  v21 = v0;
  v1 = v0[17];
  v2 = sub_10009D904();
  v3 = sub_10009E844();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4B70, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Loading Timeline for interactive widgets... - ended", v4, 0xCu);
    sub_100015F44(v5);
  }

  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v19 = v0[13];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[2];
  sub_100003714(&qword_1000C1D28, &qword_1000A1DA8);
  v14 = *(v10 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10009F8D0;
  sub_10004DC34(v9, v16 + v15, type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009E3F4();
  sub_10004DA88(&qword_1000C1D20, type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009E4A4();
  sub_10004DD8C(v9, type metadata accessor for AccessoriesAndScenesEntry);
  sub_10009D8D4();
  (*(v7 + 8))(v6, v8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10003CBDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10009D924();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009D8F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v12 = sub_100015B68(v2, qword_1000C8278);
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_10009D444();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  sub_10009CEA4();
  v16 = sub_100031E7C();
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for AccessoriesAndScenesEntry(0);
  v22 = (a1 + *(v21 + 20));
  *v22 = v16;
  v22[1] = v18;
  v22[2] = v20;
  *(a1 + *(v21 + 24)) = 0;
  sub_10009D8D4();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10003CE04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002EF28;

  return sub_10003B76C(a1, v6, v7, v8, a3);
}

uint64_t sub_10003CEC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002EF28;

  return sub_10003C494(a1, v6, v7, v8, a3);
}

uint64_t sub_10003CF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001EAAC;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10003D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002EF28;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

Swift::Int sub_10003D110()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009EDE4(v1);
  return sub_10009EE04();
}

Swift::Int sub_10003D184()
{
  v1 = *v0;
  sub_10009EDD4();
  sub_10009EDE4(v1);
  return sub_10009EE04();
}

unint64_t sub_10003D1DC()
{
  result = qword_1000C15F0;
  if (!qword_1000C15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C15F0);
  }

  return result;
}

uint64_t sub_10003D24C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for AccessoryAndSceneEntity() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_10003D2E0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v45 = sub_10009D494();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryAndSceneEntity();
  v8 = a1 + *(v7 + 24);
  v9 = type metadata accessor for WidgetTileInfo();
  v10 = *(v9 + 24);
  v11 = (v8 + *(v9 + 28));
  v12 = *v11;
  v13 = v11[1];
  if (v13)
  {
    v14 = *v11;
  }

  else
  {
    v14 = 0;
  }

  v44 = v14;
  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  v46 = v15;
  v17 = *(v8 + v10);
  v16 = *(v8 + v10 + 8);
  swift_bridgeObjectRetain_n();

  sub_10009D484();
  v18 = sub_10009D474();
  v48 = v19;
  v20 = *(v3 + 8);
  v42 = v18;
  v43 = v3 + 8;
  v21 = v45;
  v20(v6, v45);
  v22 = v47 + *(v7 + 24);
  v23 = *(v9 + 24);
  v24 = (v22 + *(v9 + 28));
  v25 = *v24;
  v26 = v24[1];
  if (v26)
  {
    v27 = *v24;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v24[1];
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = (v22 + v23);
  v31 = *v29;
  v30 = v29[1];
  swift_bridgeObjectRetain_n();

  v32 = v44;
  sub_10009D484();
  v33 = sub_10009D474();
  v35 = v34;
  v36 = v6;
  v37 = v46;
  v20(v36, v21);
  v38 = v32 == v27 && v37 == v28;
  if (v38 || (sub_10009ED34() & 1) != 0)
  {

    if (v42 == v33 && v48 == v35)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_10009ED34();
    }
  }

  else
  {

    v39 = sub_10009ED34();
  }

  return v39 & 1;
}

uint64_t sub_10003D590(id *a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_10009CF04();

  v8 = sub_10009CEF4();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_10003D69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v47 = &v41 - v7;
  v8 = type metadata accessor for WidgetTileInfo();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  v10 = __chkstk_darwin(v8);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v41 - v12;
  v13 = sub_10009D4F4();
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = type metadata accessor for AccessoryAndSceneEntity();
  v21 = v20;
  v22 = a1 + *(v20 + 24);
  v23 = v22 + *(v8 + 60);
  if (*(v23 + 8) != 3)
  {
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }

  v41 = a1;
  v42 = a3;
  v24 = *v23;
  v25 = sub_10009E7F4();
  if ((v26 & 1) == 0)
  {
    v27 = v25;
    v28 = sub_10009D574();
    if (*(v28 + 16) && (v29 = sub_10001B760(v27), (v30 & 1) != 0))
    {
      v31 = v45;
      (*(v45 + 16))(v17, *(v28 + 56) + *(v45 + 72) * v29, v13);

      (*(v31 + 32))(v19, v17, v13);
      v32 = v47;
      sub_10000E9E8(v24, v19, v47);
      (*(v31 + 8))(v19, v13);
      if ((*(v46 + 48))(v32, 1, v8) != 1)
      {
        v34 = v32;
        v35 = v43;
        sub_10004EF84(v34, v43, type metadata accessor for WidgetTileInfo);
        v36 = v44;
        sub_10004EF84(v35, v44, type metadata accessor for WidgetTileInfo);
        sub_10005B1E0(v22 + *(v8 + 76), v36 + *(v8 + 76));
        v37 = sub_10009CF14();
        v38 = *(*(v37 - 8) + 16);
        v40 = v41;
        v39 = v42;
        v38(v42, v41, v37);
        v38(v39 + *(v21 + 20), v40 + *(v21 + 20), v37);
        sub_10004DC34(v36, v39 + *(v21 + 24), type metadata accessor for WidgetTileInfo);
        (*(*(v21 - 8) + 56))(v39, 0, 1, v21);
        return sub_10004DD8C(v36, type metadata accessor for WidgetTileInfo);
      }

      sub_1000160CC(v32, &qword_1000C0C20, &qword_1000A1E30);
    }

    else
    {
    }
  }

  return (*(*(v21 - 8) + 56))(v42, 1, 1, v21);
}

void sub_10003DB4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v9 = sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v24 = [a2 widgetManager];
  sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
  isa = sub_10009E694().super.isa;
  v14 = sub_10009E5B4();
  v15 = sub_10009E5B4();
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v13, v9);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10005B384;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E120;
  aBlock[3] = &unk_1000BBC98;
  v19 = _Block_copy(aBlock);

  v21 = isa;
  v20 = v24;
  [v24 monitorAndFetchStateForCharacteristics:isa widgetIdentifier:v14 kind:v15 completion:v19];
  _Block_release(v19);
}

void sub_10003DDDC(void *a1, uint64_t a2, uint64_t a3, void *a4, void **a5)
{
  v250 = a4;
  v211[1] = a3;
  v8 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v256 = v211 - v10;
  v224 = sub_10009D5A4();
  v11 = *(v224 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v224);
  v255 = v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v254 = v211 - v15;
  v226 = type metadata accessor for WidgetTileInfo();
  v16 = *(*(v226 - 8) + 64);
  v17 = __chkstk_darwin(v226);
  v19 = v211 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v211 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v211 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v211 - v27;
  v29 = __chkstk_darwin(v26);
  v253 = v211 - v30;
  __chkstk_darwin(v29);
  v227 = v211 - v31;
  v259 = type metadata accessor for AccessoryAndSceneEntity();
  v32 = *(v259 - 8);
  v33 = v32[8];
  v34 = __chkstk_darwin(v259);
  v252 = v211 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v263 = v211 - v37;
  v38 = __chkstk_darwin(v36);
  v213 = v211 - v39;
  v40 = __chkstk_darwin(v38);
  v225 = v211 - v41;
  __chkstk_darwin(v40);
  v230 = v211 - v42;
  v43 = sub_10009CF14();
  v260 = *(v43 - 8);
  v44 = v260[8];
  v45 = __chkstk_darwin(v43);
  v251 = v211 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v262 = v211 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = v211 - v50;
  if (a1)
  {
    v248 = v32;
    v249 = v11;
    v258 = v49;
    v223 = v19;
    v52 = qword_1000C0A90;
    v53 = a1;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = sub_10009D924();
    v55 = sub_100015B68(v54, qword_1000C8278);
    v56 = v53;
    v229 = v55;
    v57 = sub_10009D904();
    v58 = sub_10009E844();

    LODWORD(v257) = v58;
    v59 = os_log_type_enabled(v57, v58);
    v222 = v22;
    v221 = v25;
    v220 = v28;
    v261 = a5;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      *v60 = 136315394;
      *(v60 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, &v264);
      *(v60 + 12) = 2080;
      v61 = [v56 valueByCharacteristicUniqueIdentifier];
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
      sub_10009E4C4();

      v62 = sub_10009E4D4();
      v64 = v63;

      v65 = sub_10002AD68(v62, v64, &v264);

      *(v60 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v57, v257, "%s Current characteristic values: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    v74 = v56;
    v75 = sub_10009D904();
    v76 = sub_10009E844();

    v77 = os_log_type_enabled(v75, v76);
    v257 = v74;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v264 = swift_slowAlloc();
      *v78 = 136315394;
      *(v78 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, &v264);
      *(v78 + 12) = 2080;
      v79 = [v74 reachabilityByAccessoryUniqueIdentifier];
      sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
      sub_10009E4C4();

      v80 = sub_10009E4D4();
      v82 = v81;

      v83 = v80;
      v74 = v257;
      v84 = sub_10002AD68(v83, v82, &v264);

      *(v78 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v75, v76, "%s Current accessory reachability: %s", v78, 0x16u);
      swift_arrayDestroy();
    }

    v85 = v230;
    v86 = v226;
    v247 = v261 >> 62;
    v87 = v261;
    if (v261 >> 62)
    {
      v88 = sub_10009EBA4();
    }

    else
    {
      v88 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v89 = [v74 valueByCharacteristicUniqueIdentifier];
    v228 = sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
    v90 = sub_10009E4C4();

    v91 = *(v90 + 16);

    if (v88 != v91)
    {
      v93 = _swiftEmptyArrayStorage;
      if (v88)
      {
        v264 = _swiftEmptyArrayStorage;
        sub_10001BC00(0, v88 & ~(v88 >> 63), 0);
        if (v88 < 0)
        {
          __break(1u);
          return;
        }

        v94 = 0;
        v93 = v264;
        v95 = v87;
        v96 = v87 & 0xC000000000000001;
        do
        {
          if (v96)
          {
            v97 = sub_10009EAE4();
          }

          else
          {
            v97 = *(v95 + 8 * v94 + 32);
          }

          v98 = v97;
          v99 = [v97 uniqueIdentifier];
          sub_10009CF04();

          v264 = v93;
          v101 = v93[2];
          v100 = v93[3];
          if (v101 >= v100 >> 1)
          {
            sub_10001BC00(v100 > 1, v101 + 1, 1);
            v93 = v264;
          }

          ++v94;
          v93[2] = v101 + 1;
          (v260[4])(v93 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + v260[9] * v101, v51, v258);
          v95 = v261;
        }

        while (v88 != v94);
        v87 = v261;
        v74 = v257;
      }

      v102 = sub_100016298(v93);

      v103 = [v74 valueByCharacteristicUniqueIdentifier];
      v104 = sub_10009E4C4();

      v105 = sub_100016434(v104);
      if (*(v105 + 16) <= v102[2] >> 3)
      {
        v264 = v102;
        sub_1000108EC(v105);
      }

      else
      {
        sub_100011BB0(v105, v102);
      }

      v107 = v74;

      v108 = sub_10009D904();
      v109 = sub_10009E824();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v264 = v111;
        *v110 = 134218498;
        if (v247)
        {
          v112 = sub_10009EBA4();
        }

        else
        {
          v112 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v110 + 4) = v112;

        *(v110 + 12) = 2048;
        v113 = [v107 valueByCharacteristicUniqueIdentifier];
        v114 = sub_10009E4C4();

        v115 = *(v114 + 16);

        *(v110 + 14) = v115;

        *(v110 + 22) = 2080;
        v116 = sub_10009E764();
        v118 = v117;

        v119 = sub_10002AD68(v116, v118, &v264);

        *(v110 + 24) = v119;
        _os_log_impl(&_mh_execute_header, v108, v109, "Error: Asked for %ld characteristics but got %ld back instead, missing: %s", v110, 0x20u);
        sub_100015F44(v111);

        v85 = v230;
        v86 = v226;
        v74 = v257;
      }

      else
      {

        v85 = v230;
        v86 = v226;
      }
    }

    v120 = v250[2];
    if (v120)
    {
      v219 = (*(v248 + 80) + 32) & ~*(v248 + 80);
      v121 = v250 + v219;
      v261 = (v260 + 2);
      v218 = v248[9];
      v217 = (v249 + 16);
      v216 = (v249 + 8);
      v215 = (v260 + 1);
      v122 = _swiftEmptyArrayStorage;
      *&v92 = 136315906;
      v214 = v92;
      *&v92 = 136315138;
      v212 = v92;
      v123 = v227;
      v124 = v225;
      do
      {
        v249 = v121;
        v250 = v120;
        sub_10004DC34(v121, v85, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DC34(v85 + *(v259 + 24), v123, type metadata accessor for WidgetTileInfo);
        LODWORD(v247) = sub_10003F7F4(v123, v74, v85);
        if ((v247 & 1) == 0)
        {
          sub_10004DC34(v85, v124, type metadata accessor for AccessoryAndSceneEntity);
          v125 = sub_10009D904();
          v126 = sub_10009E844();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = v86;
            v129 = swift_slowAlloc();
            v264 = v129;
            *v127 = v212;
            sub_10004DC34(v124, v213, type metadata accessor for AccessoryAndSceneEntity);
            v130 = sub_10009E5F4();
            v132 = v131;
            sub_10004DD8C(v124, type metadata accessor for AccessoryAndSceneEntity);
            v133 = sub_10002AD68(v130, v132, &v264);

            *(v127 + 4) = v133;
            v123 = v227;
            _os_log_impl(&_mh_execute_header, v125, v126, "Unreachable item: %s", v127, 0xCu);
            sub_100015F44(v129);
            v86 = v128;
          }

          else
          {

            sub_10004DD8C(v124, type metadata accessor for AccessoryAndSceneEntity);
          }
        }

        v248 = v122;
        v134 = *v261;
        v260 = v134;
        v135 = v258;
        (v134)(v262, v123, v258);
        (v134)(v251, v123 + v86[5], v135);
        v136 = (v123 + v86[6]);
        v137 = *v136;
        v138 = v136[1];
        v139 = (v123 + v86[7]);
        v140 = *v139;
        v141 = v139[1];
        v245 = v137;
        v246 = v140;
        v238 = v141;
        v142 = v86[9];
        v143 = (v123 + v86[8]);
        v144 = v143[1];
        v241 = *v143;
        v236 = v144;
        v145 = *(v123 + v142 + 8);
        v244 = *(v123 + v142);
        v237 = v145;
        v146 = v86[10];
        v147 = *v217;
        v239 = v147;
        v148 = v224;
        v147(v254, (v123 + v146), v224);
        v147(v255, (v123 + v86[11]), v148);
        v149 = *(v123 + v86[12]);
        v150 = v123 + v86[15];
        v243 = *v150;
        v242 = *(v150 + 8);

        v151 = v138;

        v152 = [v257 valueByCharacteristicUniqueIdentifier];
        v240 = sub_10009E4C4();

        sub_10001E0A8(v123 + v86[19], v256, &qword_1000C0C28, &qword_1000A3620);
        v153 = v86[18];
        v154 = sub_10009D3F4();
        v155 = v253;
        (*(*(v154 - 8) + 56))(v253 + v153, 1, 1, v154);
        v156 = v86[19];
        v235 = v156;
        v157 = type metadata accessor for WidgetPredictionAnalyticsInfo();
        (*(*(v157 - 8) + 56))(v155 + v156, 1, 1, v157);
        v158 = v86[21];
        v234 = v86[20];
        v232 = (v155 + v158);
        v159 = v86[22];
        v233 = v86[23];
        v231 = (v155 + v159);
        v160 = v260;
        (v260)(v155, v262, v135);
        v161 = v251;
        v160(v155 + v86[5], v251, v135);
        v162 = (v155 + v86[6]);
        v163 = v246;
        *v162 = v245;
        v162[1] = v151;
        v164 = (v155 + v86[7]);
        v165 = v238;
        *v164 = v163;
        v164[1] = v165;
        v166 = (v155 + v86[8]);
        v167 = v236;
        *v166 = v241;
        v166[1] = v167;
        v168 = (v155 + v86[9]);
        v169 = v237;
        *v168 = v244;
        v168[1] = v169;
        v170 = v254;
        v171 = v239;
        v239(v155 + v86[10], v254, v148);
        v172 = v255;
        v171(v155 + v86[11], v255, v148);
        *(v155 + v86[12]) = v149;
        *(v155 + v86[13]) = v247 & 1;
        v173 = v155 + v86[15];
        v174 = v243;
        *v173 = v243;
        LOBYTE(v134) = v242;
        *(v173 + 8) = v242;
        v175 = v174;
        LOBYTE(v174) = sub_10001792C(v174, v134);
        v176 = *v216;
        v177 = v172;
        v178 = v259;
        (*v216)(v177, v148);
        v176(v170, v148);
        v179 = *v215;
        (*v215)(v161, v135);
        v179(v262, v135);
        *(v155 + v86[14]) = v174 & 1;
        *(v155 + v86[16]) = v240;
        *(v155 + v86[17]) = 0;
        *(v155 + v234) = 2;
        v180 = v232;
        *v232 = 0;
        *(v180 + 8) = 1;
        v181 = v231;
        *v231 = 0;
        v181[1] = 0;
        *(v155 + v233) = 2;
        sub_100014CC8(v256, v155 + v235);
        v182 = v263;
        v85 = v230;
        v183 = v260;
        (v260)(v263, v230, v135);
        v183(v182 + *(v178 + 20), v85 + *(v178 + 20), v135);
        sub_10004DC34(v155, v182 + *(v178 + 24), type metadata accessor for WidgetTileInfo);
        v184 = v220;
        sub_10004DC34(v155, v220, type metadata accessor for WidgetTileInfo);
        v185 = v221;
        sub_10004DC34(v155, v221, type metadata accessor for WidgetTileInfo);
        v186 = v222;
        sub_10004DC34(v155, v222, type metadata accessor for WidgetTileInfo);
        v187 = v223;
        sub_10004DC34(v155, v223, type metadata accessor for WidgetTileInfo);
        v188 = sub_10009D904();
        v189 = sub_10009E844();
        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v264 = v260;
          *v190 = v214;
          v192 = sub_10001B128();
          v194 = v193;
          sub_10004DD8C(v184, type metadata accessor for WidgetTileInfo);
          v195 = sub_10002AD68(v192, v194, &v264);

          *(v190 + 4) = v195;
          *(v190 + 12) = 2112;
          v196 = sub_1000187B0();
          *(v190 + 14) = v196;
          *v191 = v196;
          sub_10004DD8C(v185, type metadata accessor for WidgetTileInfo);
          *(v190 + 22) = 2080;
          v197 = sub_10008CA68();
          if (v198)
          {
            v199 = v197;
          }

          else
          {
            v199 = 7104878;
          }

          if (v198)
          {
            v200 = v198;
          }

          else
          {
            v200 = 0xE300000000000000;
          }

          sub_10004DD8C(v186, type metadata accessor for WidgetTileInfo);
          v201 = sub_10002AD68(v199, v200, &v264);

          *(v190 + 24) = v201;
          *(v190 + 32) = 2080;
          v86 = v226;
          v202 = *(v187 + *(v226 + 64));
          v203 = sub_10009E4D4();
          v205 = v204;
          sub_10004DD8C(v187, type metadata accessor for WidgetTileInfo);
          v206 = sub_10002AD68(v203, v205, &v264);

          *(v190 + 34) = v206;
          _os_log_impl(&_mh_execute_header, v188, v189, "Created entity with widgetInfo: %s - service: %@ statusString: %s and characteristic data: %s", v190, 0x2Au);
          sub_1000160CC(v191, &qword_1000C0E28, &qword_1000A1DC0);

          swift_arrayDestroy();

          v85 = v230;
        }

        else
        {

          sub_10004DD8C(v187, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v186, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v185, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v184, type metadata accessor for WidgetTileInfo);
          v86 = v226;
        }

        v122 = v248;
        sub_10004DC34(v263, v252, type metadata accessor for AccessoryAndSceneEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v227;
        v124 = v225;
        v74 = v257;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = sub_100064F9C(0, v122[2] + 1, 1, v122);
        }

        v209 = v122[2];
        v208 = v122[3];
        if (v209 >= v208 >> 1)
        {
          v122 = sub_100064F9C(v208 > 1, v209 + 1, 1, v122);
        }

        sub_10004DD8C(v263, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v85, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v123, type metadata accessor for WidgetTileInfo);
        v122[2] = v209 + 1;
        v210 = v218;
        sub_10004EF84(v252, v122 + v219 + v209 * v218, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v253, type metadata accessor for WidgetTileInfo);
        v121 = v249 + v210;
        v120 = (v250 - 1);
      }

      while (v250 != 1);
    }

    else
    {
      v122 = _swiftEmptyArrayStorage;
    }

    v264 = v122;
    sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
    sub_10009E724();
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v66 = sub_10009D924();
    sub_100015B68(v66, qword_1000C8278);
    swift_errorRetain();
    v67 = sub_10009D904();
    v68 = sub_10009E824();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v264 = v71;
      *v69 = 136315394;
      *(v69 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, &v264);
      *(v69 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v72 = _swift_stdlib_bridgeErrorToNSError();
        v73 = v72;
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }

      v106 = v250;
      *(v69 + 14) = v72;
      *v70 = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "%s Failed to get current characteristic values with error: %@", v69, 0x16u);
      sub_1000160CC(v70, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v71);
    }

    else
    {

      v106 = v250;
    }

    v264 = v106;

    sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
    sub_10009E724();
  }
}

uint64_t sub_10003F7F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryAndSceneEntity();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  v13 = sub_10001AAEC();
  v14 = a2;
  sub_10004CD00(v13, v14);
  v16 = v15;

  if (v16 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v12 = 0;
    a1 = 0;
    v10 = (v16 & 0xC000000000000001);
    a3 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v10)
      {
        v18 = sub_10009EAE4();
      }

      else
      {
        if (v12 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v18 = *(v16 + 8 * v12 + 32);
      }

      v19 = v18;
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (a1)
      {
        a1 = 1;
      }

      else
      {
        a1 = [v18 BOOLValue];
      }

      ++v12;
      if (v20 == i)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v21 = sub_10009D924();
  sub_100015B68(v21, qword_1000C8278);
  sub_10004DC34(a3, v12, type metadata accessor for AccessoryAndSceneEntity);
  v22 = sub_10009D904();
  v23 = sub_10009E844();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_10002AD68(0xD000000000000052, 0x80000001000A4DA0, v30);
    *(v24 + 12) = 2080;
    sub_10004DC34(v12, v10, type metadata accessor for AccessoryAndSceneEntity);
    v25 = sub_10009E5F4();
    v27 = v26;
    sub_10004DD8C(v12, type metadata accessor for AccessoryAndSceneEntity);
    v28 = sub_10002AD68(v25, v27, v30);

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s Missing accessory reachability from homed for %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10004DD8C(v12, type metadata accessor for AccessoryAndSceneEntity);
  }

  return *(a1 + *(type metadata accessor for WidgetTileInfo() + 52));
}

void sub_10003FB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v9 = sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v24 = [a2 widgetManager];
  sub_100007330(0, &qword_1000C0C60, HMActionSet_ptr);
  isa = sub_10009E694().super.isa;
  v14 = sub_10009E5B4();
  v15 = sub_10009E5B4();
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v13, v9);
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_10005B26C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E120;
  aBlock[3] = &unk_1000BBC48;
  v19 = _Block_copy(aBlock);

  v21 = isa;
  v20 = v24;
  [v24 monitorAndFetchStateForActionSets:isa widgetIdentifier:v14 kind:v15 completion:v19];
  _Block_release(v19);
}

void sub_10003FE24(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v252 = a5;
  v203[1] = a3;
  v8 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v248 = v203 - v10;
  v215 = sub_10009D5A4();
  v11 = *(v215 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v215);
  v247 = v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v246 = v203 - v15;
  v16 = type metadata accessor for WidgetTileInfo();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v214 = v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v203 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v203 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v203 - v27;
  v29 = __chkstk_darwin(v26);
  v245 = v203 - v30;
  __chkstk_darwin(v29);
  v32 = v203 - v31;
  v244 = type metadata accessor for AccessoryAndSceneEntity();
  v239 = *(v244 - 8);
  v33 = *(v239 + 64);
  v34 = __chkstk_darwin(v244);
  v243 = v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v254 = v203 - v37;
  __chkstk_darwin(v36);
  v218 = v203 - v38;
  v219 = sub_10009CF14();
  v251 = *(v219 - 8);
  v39 = v251[8];
  v40 = __chkstk_darwin(v219);
  v242 = v203 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v253 = v203 - v43;
  __chkstk_darwin(v42);
  v45 = v203 - v44;
  if (a1)
  {
    v240 = a4;
    v211 = v25;
    v212 = v22;
    v213 = v16;
    v46 = qword_1000C0A90;
    v47 = a1;
    if (v46 != -1)
    {
      swift_once();
    }

    v48 = sub_10009D924();
    v49 = sub_100015B68(v48, qword_1000C8278);
    v50 = v47;
    v216 = v49;
    v51 = sub_10009D904();
    v52 = sub_10009E844();

    v53 = os_log_type_enabled(v51, v52);
    v210 = v28;
    v217 = v32;
    v238 = v11;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v255 = v250;
      *v54 = 136315394;
      *(v54 + 4) = sub_10002AD68(0xD00000000000004DLL, 0x80000001000A4D10, &v255);
      *(v54 + 12) = 2080;
      v55 = [v50 isOnByActionSetUniqueIdentifier];
      sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
      sub_10009E4C4();

      v56 = sub_10009E4D4();
      v58 = v57;

      v59 = sub_10002AD68(v56, v58, &v255);

      *(v54 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "%s Current action set stated: %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    v60 = v50;
    v61 = sub_10009D904();
    v62 = sub_10009E844();

    v63 = os_log_type_enabled(v61, v62);
    v250 = v60;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      *v64 = 136315394;
      *(v64 + 4) = sub_10002AD68(0xD00000000000004DLL, 0x80000001000A4D10, &v255);
      *(v64 + 12) = 2080;
      v65 = [v60 didExecutionFailByActionSetUniqueIdentifier];
      sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
      sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
      sub_10009E4C4();

      v66 = sub_10009E4D4();
      v68 = v67;

      v69 = sub_10002AD68(v66, v68, &v255);

      *(v64 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "%s Failed action sets: %s", v64, 0x16u);
      swift_arrayDestroy();
    }

    v70 = v217;
    v71 = v240;
    v237 = v252 >> 62;
    if (v252 >> 62)
    {
      v72 = sub_10009EBA4();
    }

    else
    {
      v72 = *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v219;
    v74 = v250;
    v75 = [v250 isOnByActionSetUniqueIdentifier];
    v76 = sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    v77 = sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID);
    v249 = v76;
    v78 = sub_10009E4C4();

    v79 = *(v78 + 16);

    v241 = v77;
    if (v72 == v79)
    {
      goto LABEL_33;
    }

    v81 = _swiftEmptyArrayStorage;
    if (!v72)
    {
LABEL_26:
      v97 = sub_100016298(v81);

      v98 = [v74 isOnByActionSetUniqueIdentifier];
      v99 = sub_10009E4C4();

      v100 = sub_100016434(v99);
      if (*(v100 + 16) <= v97[2] >> 3)
      {
        v255 = v97;
        sub_1000108EC(v100);
      }

      else
      {
        sub_100011BB0(v100, v97);
      }

      v101 = v252;
      v102 = v250;

      v103 = sub_10009D904();
      v104 = sub_10009E824();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        v255 = v252;
        *v105 = 134218498;
        if (v237)
        {
          v106 = sub_10009EBA4();
        }

        else
        {
          v106 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v105 + 4) = v106;

        *(v105 + 12) = 2048;
        v196 = [v102 isOnByActionSetUniqueIdentifier];
        v73 = v219;
        v197 = sub_10009E4C4();

        v198 = *(v197 + 16);

        *(v105 + 14) = v198;

        *(v105 + 22) = 2080;
        v199 = sub_10009E764();
        v201 = v200;

        v202 = sub_10002AD68(v199, v201, &v255);

        *(v105 + 24) = v202;
        _os_log_impl(&_mh_execute_header, v103, v104, "Error: Asked for %ld action sets but got %ld back instead, missing: %s", v105, 0x20u);
        sub_100015F44(v252);

        v70 = v217;
        v74 = v250;
        v71 = v240;
        v107 = v240[2];
        if (!v107)
        {
          goto LABEL_56;
        }

        goto LABEL_34;
      }

      v73 = v219;
      v74 = v250;
LABEL_33:
      v107 = v71[2];
      if (!v107)
      {
LABEL_56:
        v109 = _swiftEmptyArrayStorage;
LABEL_57:
        v255 = v109;
        sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
        sub_10009E724();

        return;
      }

LABEL_34:
      v209 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v108 = v71 + v209;
      v252 = (v251 + 2);
      v208 = *(v239 + 72);
      v207 = (v238 + 2);
      v206 = (v238 + 1);
      v205 = (v251 + 1);
      v109 = _swiftEmptyArrayStorage;
      *&v80 = 136315906;
      v204 = v80;
      v110 = v218;
      do
      {
        v239 = v108;
        v240 = v107;
        sub_10004DC34(v108, v110, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DC34(v110 + *(v244 + 24), v70, type metadata accessor for WidgetTileInfo);
        v111 = [v74 didExecutionFailByActionSetUniqueIdentifier];
        v112 = sub_10009E4C4();

        v113 = *(v112 + 16);
        v238 = v109;
        if (v113 && (v114 = sub_10001B5D0(v70), (v115 & 1) != 0))
        {
          isa = *(*(v112 + 56) + 8 * v114);
        }

        else
        {

          isa = sub_10009E8C4(0).super.super.isa;
        }

        LODWORD(v237) = sub_10009E704();

        v117 = *v252;
        v251 = v117;
        (v117)(v253, v70, v73);
        v118 = v73;
        v119 = v213;
        (v117)(v242, v70 + v213[5], v118);
        v120 = (v70 + v119[6]);
        v121 = *v120;
        v122 = v120[1];
        v123 = (v70 + v119[7]);
        v124 = *v123;
        v125 = v123[1];
        v235 = v121;
        v236 = v124;
        v227 = v125;
        v126 = v119[9];
        v127 = (v70 + v119[8]);
        v128 = v127[1];
        v233 = *v127;
        v225 = v128;
        v129 = *(v70 + v126 + 8);
        v234 = *(v70 + v126);
        v226 = v129;
        v130 = v119[10];
        v131 = *v207;
        v230 = v131;
        v132 = v215;
        v131(v246, (v70 + v130), v215);
        v131(v247, (v70 + v119[11]), v132);
        v228 = *(v70 + v119[12]);
        v133 = v70 + v119[15];
        v232 = *v133;
        v231 = *(v133 + 8);

        v134 = [v250 isOnByActionSetUniqueIdentifier];
        v135 = sub_10009E4C4();

        v229 = sub_100019B90(v135);

        sub_10001E0A8(v70 + v119[19], v248, &qword_1000C0C28, &qword_1000A3620);
        v136 = v119[18];
        v137 = sub_10009D3F4();
        v138 = v245;
        (*(*(v137 - 8) + 56))(v245 + v136, 1, 1, v137);
        v139 = v119[19];
        v224 = v139;
        v140 = type metadata accessor for WidgetPredictionAnalyticsInfo();
        (*(*(v140 - 8) + 56))(v138 + v139, 1, 1, v140);
        v141 = v119[21];
        v223 = v119[20];
        v221 = (v138 + v141);
        v142 = v119[22];
        v222 = v119[23];
        v220 = (v138 + v142);
        v143 = v251;
        (v251)(v138, v253, v118);
        v144 = v242;
        (v143)(v138 + v119[5], v242, v118);
        v145 = (v138 + v119[6]);
        v146 = v236;
        *v145 = v235;
        v145[1] = v122;
        v147 = (v138 + v119[7]);
        v148 = v227;
        *v147 = v146;
        v147[1] = v148;
        v149 = (v138 + v119[8]);
        v150 = v225;
        *v149 = v233;
        v149[1] = v150;
        v151 = (v138 + v119[9]);
        v152 = v226;
        *v151 = v234;
        v151[1] = v152;
        v153 = v246;
        v154 = v230;
        v230(v138 + v119[10], v246, v132);
        v155 = v247;
        v154(v138 + v119[11], v247, v132);
        *(v138 + v119[12]) = v228;
        *(v138 + v119[13]) = 1;
        v156 = v138 + v119[15];
        v157 = v232;
        *v156 = v232;
        LOBYTE(v117) = v231;
        *(v156 + 8) = v231;
        v158 = v157;
        LOBYTE(v157) = sub_10001792C(v157, v117);
        v159 = *v206;
        (*v206)(v155, v132);
        v159(v153, v132);
        v160 = *v205;
        (*v205)(v144, v118);
        v160(v253, v118);
        *(v138 + v119[14]) = v157 & 1;
        *(v138 + v119[16]) = v229;
        *(v138 + v119[17]) = v237 & 1;
        *(v138 + v223) = 2;
        v161 = v221;
        *v221 = 0;
        *(v161 + 8) = 1;
        v162 = v220;
        *v220 = 0;
        v162[1] = 0;
        *(v138 + v222) = 2;
        sub_100014CC8(v248, v138 + v224);
        v163 = v254;
        v110 = v218;
        v164 = v251;
        (v251)(v254, v218, v118);
        v165 = v244;
        (v164)(v163 + *(v244 + 20), v110 + *(v244 + 20), v118);
        sub_10004DC34(v138, v163 + *(v165 + 24), type metadata accessor for WidgetTileInfo);
        v166 = v210;
        sub_10004DC34(v138, v210, type metadata accessor for WidgetTileInfo);
        v167 = v211;
        sub_10004DC34(v138, v211, type metadata accessor for WidgetTileInfo);
        v168 = v212;
        sub_10004DC34(v138, v212, type metadata accessor for WidgetTileInfo);
        v169 = v214;
        sub_10004DC34(v138, v214, type metadata accessor for WidgetTileInfo);
        v170 = sub_10009D904();
        v171 = sub_10009E844();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          LODWORD(v237) = v171;
          v173 = v172;
          v174 = swift_slowAlloc();
          v251 = swift_slowAlloc();
          v255 = v251;
          *v173 = v204;
          v175 = sub_10001B128();
          v176 = v168;
          v178 = v177;
          sub_10004DD8C(v166, type metadata accessor for WidgetTileInfo);
          v179 = sub_10002AD68(v175, v178, &v255);

          *(v173 + 4) = v179;
          *(v173 + 12) = 2112;
          v180 = sub_1000187B0();
          *(v173 + 14) = v180;
          *v174 = v180;
          sub_10004DD8C(v167, type metadata accessor for WidgetTileInfo);
          *(v173 + 22) = 2080;
          v181 = sub_10008CA68();
          if (v182)
          {
            v183 = v181;
          }

          else
          {
            v183 = 7104878;
          }

          if (v182)
          {
            v184 = v182;
          }

          else
          {
            v184 = 0xE300000000000000;
          }

          v185 = v176;
          v110 = v218;
          sub_10004DD8C(v185, type metadata accessor for WidgetTileInfo);
          v186 = sub_10002AD68(v183, v184, &v255);

          *(v173 + 24) = v186;
          *(v173 + 32) = 2080;
          v187 = *(v169 + v119[16]);
          v73 = v219;
          v188 = sub_10009E4D4();
          v190 = v189;
          sub_10004DD8C(v169, type metadata accessor for WidgetTileInfo);
          v191 = sub_10002AD68(v188, v190, &v255);

          *(v173 + 34) = v191;
          _os_log_impl(&_mh_execute_header, v170, v237, "Created entity with widgetInfo: %s - service: %@ statusString: %s and characteristic data: %s", v173, 0x2Au);
          sub_1000160CC(v174, &qword_1000C0E28, &qword_1000A1DC0);

          swift_arrayDestroy();
        }

        else
        {

          sub_10004DD8C(v169, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v168, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v167, type metadata accessor for WidgetTileInfo);
          sub_10004DD8C(v166, type metadata accessor for WidgetTileInfo);
          v73 = v219;
        }

        sub_10004DC34(v254, v243, type metadata accessor for AccessoryAndSceneEntity);
        v109 = v238;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v217;
        v74 = v250;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v109 = sub_100064F9C(0, v109[2] + 1, 1, v109);
        }

        v194 = v109[2];
        v193 = v109[3];
        if (v194 >= v193 >> 1)
        {
          v109 = sub_100064F9C(v193 > 1, v194 + 1, 1, v109);
        }

        sub_10004DD8C(v254, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v110, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v70, type metadata accessor for WidgetTileInfo);
        v109[2] = v194 + 1;
        v195 = v208;
        sub_10004EF84(v243, v109 + v209 + v194 * v208, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v245, type metadata accessor for WidgetTileInfo);
        v108 = v239 + v195;
        v107 = (v240 - 1);
      }

      while (v240 != 1);
      goto LABEL_57;
    }

    v255 = _swiftEmptyArrayStorage;
    sub_10001BC00(0, v72 & ~(v72 >> 63), 0);
    if ((v72 & 0x8000000000000000) == 0)
    {
      v82 = 0;
      v81 = v255;
      v83 = v252 & 0xC000000000000001;
      do
      {
        if (v83)
        {
          v84 = sub_10009EAE4();
        }

        else
        {
          v84 = *(v252 + 8 * v82 + 32);
        }

        v85 = v84;
        v86 = [v84 uniqueIdentifier];
        sub_10009CF04();

        v255 = v81;
        v88 = v81[2];
        v87 = v81[3];
        if (v88 >= v87 >> 1)
        {
          sub_10001BC00(v87 > 1, v88 + 1, 1);
          v81 = v255;
        }

        ++v82;
        v81[2] = v88 + 1;
        (v251[4])(v81 + ((*(v251 + 80) + 32) & ~*(v251 + 80)) + v251[9] * v88, v45, v219);
      }

      while (v72 != v82);
      v70 = v217;
      v74 = v250;
      v71 = v240;
      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v89 = sub_10009D924();
    sub_100015B68(v89, qword_1000C8278);
    swift_errorRetain();
    v90 = sub_10009D904();
    v91 = sub_10009E824();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v255 = v94;
      *v92 = 136315394;
      *(v92 + 4) = sub_10002AD68(0xD00000000000004DLL, 0x80000001000A4D10, &v255);
      *(v92 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v95 = _swift_stdlib_bridgeErrorToNSError();
        v96 = v95;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      *(v92 + 14) = v95;
      *v93 = v96;
      _os_log_impl(&_mh_execute_header, v90, v91, "%s Failed to get current action set states with error: %@", v92, 0x16u);
      sub_1000160CC(v93, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v94);
    }

    v255 = a4;

    sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
    sub_10009E724();
  }
}