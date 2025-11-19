uint64_t sub_100001398(uint64_t a1)
{
  v2 = sub_1000014EC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001444();
  sub_100003274();
  return 0;
}

unint64_t sub_100001444()
{
  result = qword_100008028;
  if (!qword_100008028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008028);
  }

  return result;
}

unint64_t sub_1000014EC()
{
  result = qword_100008030;
  if (!qword_100008030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008030);
  }

  return result;
}

unint64_t sub_100001554()
{
  result = qword_100008038;
  if (!qword_100008038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008038);
  }

  return result;
}

unint64_t sub_1000015AC()
{
  result = qword_100008040;
  if (!qword_100008040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008040);
  }

  return result;
}

uint64_t sub_100001600()
{
  v0 = sub_100003264();
  sub_1000030C0(v0, qword_1000084A0);
  sub_100002FDC(v0, qword_1000084A0);
  return sub_100003254();
}

uint64_t sub_100001664(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000032F4();
  v2[4] = sub_1000032E4();
  v4 = sub_1000032D4();

  return _swift_task_switch(sub_1000016FC, v4, v3);
}

uint64_t sub_1000016FC()
{
  v22 = v0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_1000031B4();
  v3 = *(v0 + 40);
  if (v3 == 2)
  {
    v4 = [objc_opt_self() standardUserDefaults];
    [v4 setFocusModePrivateListeningEnabled:0];

    if (qword_100008020 != -1)
    {
      swift_once();
    }

    v5 = sub_1000032A4();
    sub_100002FDC(v5, qword_1000084B8);
    v6 = sub_100003284();
    v7 = sub_100003304();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Privacy focus filter disabled.", v8, 2u);
LABEL_16:
    }
  }

  else
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = [objc_allocWithZone(NSNumber) initWithBool:(v3 & 1) == 0];
    [v9 setFocusModePrivateListeningEnabled:v10];

    if (qword_100008020 != -1)
    {
      swift_once();
    }

    v11 = sub_1000032A4();
    sub_100002FDC(v11, qword_1000084B8);
    v6 = sub_100003284();
    v12 = sub_100003304();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446210;
      if (v3)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v3)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      v17 = sub_1000026F8(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v12, "Privacy focus filter enabled, useListeningHistory = %{public}s", v13, 0xCu);
      sub_100003014(v14);

      goto LABEL_16;
    }
  }

  v18 = *(v0 + 16);
  sub_1000031A4();
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100001A00()
{
  v0 = (*(*(sub_100002630(&qword_100008070, &qword_1000038E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = &v21[-v1];
  v3 = (*(*(sub_100002630(&qword_100008078, &qword_1000038E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = &v21[-v4];
  v6 = sub_100003264();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v21[-v13];
  __chkstk_darwin(v12);
  v16 = &v21[-v15];
  sub_100003254();
  sub_1000031B4();
  sub_100003254();
  v17 = *(v7 + 16);
  v17(v11, v16, v6);
  v17(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v18 = sub_100003204();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  sub_100003214();
  v19 = *(v7 + 8);
  v19(v14, v6);
  return (v19)(v16, v6);
}

uint64_t sub_100001CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to static SetFocusFilterIntent.suggestedFocusFilters(for:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100001DA0;

  return static SetFocusFilterIntent.suggestedFocusFilters(for:)(a1, a2, a3);
}

uint64_t sub_100001DA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_100001EA0()
{
  result = qword_100008048;
  if (!qword_100008048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008048);
  }

  return result;
}

unint64_t sub_100001EF8()
{
  result = qword_100008050;
  if (!qword_100008050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008050);
  }

  return result;
}

uint64_t sub_100001FB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100008018 != -1)
  {
    swift_once();
  }

  v2 = sub_100003264();
  v3 = sub_100002FDC(v2, qword_1000084A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002078@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(sub_100002630(&qword_100008078, &qword_1000038E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_100003264();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100003254();
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_1000031E4();
  v8 = sub_1000031D4();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_100002208(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000022A8;

  return sub_100001664(a1, v4);
}

uint64_t sub_1000022A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000239C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002CA0();
  *a1 = result;
  return result;
}

unint64_t sub_1000023C8()
{
  result = qword_100008058;
  if (!qword_100008058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008058);
  }

  return result;
}

uint64_t sub_100002424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000022A8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000024E8(uint64_t a1)
{
  v2 = sub_100001554();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100002524(uint64_t a1)
{
  v2 = sub_1000015AC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002584()
{
  result = qword_100008060;
  if (!qword_100008060)
  {
    sub_1000025E8(&qword_100008068, &qword_1000038D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008060);
  }

  return result;
}

uint64_t sub_1000025E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002630(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002678()
{
  v0 = sub_1000032A4();
  sub_1000030C0(v0, qword_1000084B8);
  sub_100002FDC(v0, qword_1000084B8);
  return sub_100003294();
}

uint64_t sub_1000026F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000027C4(v11, 0, 0, 1, a1, a2);
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
    sub_100003060(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003014(v11);
  return v7;
}

unint64_t sub_1000027C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000028D0(a5, a6);
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
    result = sub_100003324();
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

char *sub_1000028D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000291C(a1, a2);
  sub_100002A4C(&off_100004488);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000291C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002B38(v5, 0);
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

  result = sub_100003324();
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
        v10 = sub_1000032B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002B38(v10, 0);
        result = sub_100003314();
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

uint64_t sub_100002A4C(uint64_t result)
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

  result = sub_100002BAC(result, v12, 1, v3);
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

void *sub_100002B38(uint64_t a1, uint64_t a2)
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

  sub_100002630(&qword_100008098, &unk_100003910);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002BAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002630(&qword_100008098, &unk_100003910);
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

uint64_t sub_100002CA0()
{
  v0 = sub_100003224();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(sub_100002630(&qword_100008080, &qword_1000038F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v20[-v6];
  v8 = (*(*(sub_100002630(&qword_100008088, &qword_1000038F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v20[-v9];
  v11 = (*(*(sub_100002630(&qword_100008078, &qword_1000038E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v20[-v12];
  v14 = sub_100003264();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  sub_100002630(&qword_100008090, &qword_100003900);
  sub_100003254();
  (*(v15 + 56))(v13, 1, 1, v14);
  v20[15] = 2;
  v17 = sub_1000032C4();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_100003194();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_1000031C4();
}

uint64_t sub_100002FDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003014(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_1000030C0(uint64_t a1, uint64_t *a2)
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