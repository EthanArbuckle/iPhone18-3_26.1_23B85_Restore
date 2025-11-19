uint64_t sub_100001580()
{
  v0 = sub_100004DA8();
  sub_100001604(v0, qword_10000C670);
  sub_100001668(v0, qword_10000C670);
  return sub_100004D98();
}

uint64_t *sub_100001604(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100001668(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000016A0()
{
  result = qword_10000C2C0;
  if (!qword_10000C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C0);
  }

  return result;
}

uint64_t sub_1000016F4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = *(*(sub_100004F08() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(sub_100004D78() - 8) + 64);
  __chkstk_darwin();
  v3 = sub_100002394(&qword_10000C398, &qword_1000054D8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v15 - v6;
  v15[0] = sub_100002394(&qword_10000C3A0, &unk_1000054E0);
  v8 = *(v15[0] - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v15 - v10;
  sub_100004D68();
  sub_100004F48();
  type metadata accessor for AppearanceStyleStateProvider();
  v16 = swift_allocObject();
  sub_100004EF8();
  sub_1000023DC();
  sub_100004F18();
  sub_100004E28();
  v12 = sub_100002430(&qword_10000C3B0, &qword_10000C398, &qword_1000054D8);
  sub_100004E38();

  (*(v4 + 8))(v7, v3);
  v16 = v3;
  v17 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v15[0];
  sub_100004E48();
  return (*(v8 + 8))(v11, v13);
}

uint64_t sub_100001ABC@<X0>(uint64_t a1@<X8>)
{
  sub_100004E28();
  result = sub_100004E68();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100001B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004EA8();
  *a1 = result;
  return result;
}

uint64_t sub_100001B8C()
{
  v0 = [objc_opt_self() systemDarkGrayColor];
  sub_100004E88();
  return sub_100004F28();
}

uint64_t sub_100001C18()
{
  v1 = [objc_allocWithZone(UISCurrentUserInterfaceStyleValue) init];
  v2 = [v1 userInterfaceStyle];

  v3 = *(v0 + 8);

  return v3(v2 == 2);
}

uint64_t sub_100001CAC()
{
  v0 = sub_100004D78();
  sub_100001604(v0, qword_10000C688);
  sub_100001668(v0, qword_10000C688);
  return sub_100004D68();
}

unint64_t sub_100001D54()
{
  result = qword_10000C2C8;
  if (!qword_10000C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2C8);
  }

  return result;
}

unint64_t sub_100001DAC()
{
  result = qword_10000C2D0;
  if (!qword_10000C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D0);
  }

  return result;
}

uint64_t sub_100001E6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C2A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D78();
  v3 = sub_100001668(v2, qword_10000C688);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001F50()
{
  v1 = *(v0 + 16);
  sub_100002278();
  sub_100004D58();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001FC4(uint64_t a1)
{
  v2 = sub_1000016A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for SetAppearanceStyleIntent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetAppearanceStyleIntent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000021D8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002224()
{
  result = qword_10000C390;
  if (!qword_10000C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C390);
  }

  return result;
}

void sub_100002278()
{
  v0 = [objc_allocWithZone(UISCurrentUserInterfaceStyleValue) init];
  if ([v0 userInterfaceStyle] == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [objc_allocWithZone(UISUserInterfaceStyleMode) initWithDelegate:0];
  if ([v2 modeValue] == 102 || objc_msgSend(v2, "modeValue") == 100)
  {
    [v2 setOverride:{v1, 1}];
  }

  else
  {
    [v2 setModeValue:v1];
  }
}

uint64_t sub_100002394(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000023DC()
{
  result = qword_10000C3A8;
  if (!qword_10000C3A8)
  {
    type metadata accessor for AppearanceStyleStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3A8);
  }

  return result;
}

uint64_t sub_100002430(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000021D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002478()
{
  sub_1000021D8(&qword_10000C3A0, &unk_1000054E0);
  sub_1000021D8(&qword_10000C398, &qword_1000054D8);
  sub_100002430(&qword_10000C3B0, &qword_10000C398, &qword_1000054D8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100002550()
{
  result = qword_10000C3B8;
  if (!qword_10000C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3B8);
  }

  return result;
}

uint64_t sub_1000025A4()
{
  v0 = *(*(sub_100004F08() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_100004D78() - 8) + 64);
  __chkstk_darwin();
  v2 = sub_100002394(&qword_10000C478, qword_100005778);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v8 - v5;
  sub_100004D68();
  sub_100004F48();
  type metadata accessor for FlashlightStateProvider();
  v8[1] = swift_allocObject();
  sub_100004EF8();
  sub_100002DA0();
  sub_100004F18();
  sub_100002430(&qword_10000C488, &qword_10000C478, qword_100005778);
  sub_100004E48();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100002854@<X0>(uint64_t a1@<X8>)
{
  sub_100004E28();
  result = sub_100004E68();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000028CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004E98();
  *a1 = result;
  return result;
}

uint64_t sub_100002924()
{
  v0 = [objc_opt_self() systemIndigoColor];
  sub_100004E88();
  return sub_100004F28();
}

uint64_t sub_1000029B8()
{
  v0 = sub_100004D78();
  sub_100001604(v0, qword_10000C6A0);
  sub_100001668(v0, qword_10000C6A0);
  return sub_100004D68();
}

unint64_t sub_100002A24()
{
  result = qword_10000C3C0;
  if (!qword_10000C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3C0);
  }

  return result;
}

unint64_t sub_100002A7C()
{
  result = qword_10000C3C8;
  if (!qword_10000C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3C8);
  }

  return result;
}

uint64_t sub_100002B3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C2B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D78();
  v3 = sub_100001668(v2, qword_10000C6A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002C04()
{
  v1 = *(v0 + 16);
  sub_100004D58();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002C68(uint64_t a1)
{
  v2 = sub_100002550();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002D20()
{
  result = qword_10000C470;
  if (!qword_10000C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C470);
  }

  return result;
}

unint64_t sub_100002DA0()
{
  result = qword_10000C480;
  if (!qword_10000C480)
  {
    type metadata accessor for FlashlightStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C480);
  }

  return result;
}

uint64_t sub_100002DF4()
{
  sub_1000021D8(&qword_10000C478, qword_100005778);
  sub_100002430(&qword_10000C488, &qword_10000C478, qword_100005778);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100002E90()
{
  v0 = sub_100002394(&qword_10000C498, &qword_1000057F0);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002F18();
  sub_100004DC8();
  return 0;
}

unint64_t sub_100002F18()
{
  result = qword_10000C490;
  if (!qword_10000C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C490);
  }

  return result;
}

unint64_t sub_100002F9C()
{
  result = qword_10000C4A0;
  if (!qword_10000C4A0)
  {
    sub_1000021D8(&qword_10000C4A8, &qword_1000057F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4A0);
  }

  return result;
}

unint64_t sub_100003000()
{
  result = qword_10000C4B0;
  if (!qword_10000C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4B0);
  }

  return result;
}

uint64_t sub_100003054@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_100004F08();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100004D78();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100002394(&qword_10000C578, &qword_100005AB8);
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v9 = sub_100002394(&qword_10000C580, &qword_100005AC0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v13 = sub_100002394(&qword_10000C588, &qword_100005AC8);
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  v26[2] = "SILENT_MODE_TITLE";
  sub_100004D68();
  v18 = sub_100004F48();
  v26[0] = v19;
  v26[1] = v18;
  type metadata accessor for SilentModeStateProvider();
  v32 = swift_allocObject();
  sub_100004EF8();
  sub_100002394(&qword_10000C590, &qword_100005AD0);
  sub_100002430(&qword_10000C598, &qword_10000C590, &qword_100005AD0);
  sub_1000049B0(&qword_10000C5A0, v20, type metadata accessor for SilentModeStateProvider);
  sub_100004F18();
  sub_100004E28();
  v21 = sub_100002430(&qword_10000C5A8, &qword_10000C578, &qword_100005AB8);
  sub_100004E38();

  (*(v27 + 8))(v8, v5);
  v22 = sub_100004F38();
  MGGetBoolAnswer();

  v32 = v5;
  v33 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100004E58();
  (*(v28 + 8))(v12, v9);
  v32 = v9;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_100004E48();
  return (*(v30 + 8))(v17, v24);
}

uint64_t sub_1000035A0@<X0>(uint64_t a1@<X8>)
{
  sub_100004E28();
  result = sub_100004E68();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100003618@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100004E18();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100002394(&qword_10000C5B0, &qword_100005AD8);
  return sub_100003670((a1 + *(v2 + 44)));
}

uint64_t sub_100003670@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_100004EE8();
  v34 = *(v36 - 8);
  v1 = *(v34 + 64);
  (__chkstk_darwin)();
  v3 = &v30[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100004EC8();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  (__chkstk_darwin)();
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100002394(&qword_10000C5B8, &qword_100005AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = (__chkstk_darwin)();
  v35 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v30[-v13];
  __chkstk_darwin(v12);
  v16 = &v30[-v15];
  sub_100004E28();
  v17 = sub_100004E68();
  v19 = v18;
  v31 = v20;
  v22 = v21;
  v23 = sub_100004E98();
  sub_100004EB8();
  sub_100004ED8();
  v24 = (v14 + *(v8 + 36));
  LODWORD(v8) = *(sub_100002394(&qword_10000C5C0, &qword_100005AE8) + 28);
  sub_1000049B0(&qword_10000C5C8, 255, &type metadata accessor for ReplaceSymbolEffect);
  v25 = v33;
  sub_100004DD8();
  (*(v34 + 8))(v3, v36);
  (*(v32 + 8))(v7, v25);
  *v24 = swift_getKeyPath();
  *v14 = v23;
  sub_100004A20(v14, v16);
  v26 = v35;
  sub_100004A90(v16, v35);
  v27 = v37;
  *v37 = v17;
  v27[1] = v19;
  LOBYTE(v24) = v31 & 1;
  *(v27 + 16) = v31 & 1;
  v27[3] = v22;
  v28 = sub_100002394(&qword_10000C5D0, &unk_100005B20);
  sub_100004A90(v26, v27 + *(v28 + 48));
  sub_100004B00(v17, v19, v24);

  sub_100004B10(v16);
  sub_100004B10(v26);
  sub_100004B78(v17, v19, v24);
}

uint64_t sub_100003A5C()
{
  [objc_allocWithZone(UIColor) initWithRed:0.996078431 green:0.266666667 blue:0.160784314 alpha:1.0];
  sub_100004E78();
  return sub_100004F28();
}

id sub_100003AEC()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result getSilentMode];

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003B8C()
{
  v0 = sub_100004D78();
  sub_100001604(v0, qword_10000C6B8);
  sub_100001668(v0, qword_10000C6B8);
  return sub_100004D68();
}

uint64_t sub_100003BF0(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_100003C14, 0, 0);
}

id sub_100003C14()
{
  v18 = v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 24);
    v4 = sub_100004F38();
    v5 = [v2 setSilentMode:(v3 & 1) == 0 untilTime:0 reason:v4 clientType:9];

    if ((v5 & 1) == 0)
    {
      if (qword_10000C2A0 != -1)
      {
        swift_once();
      }

      v6 = sub_100004DA8();
      sub_100001668(v6, qword_10000C670);
      v7 = sub_100004D88();
      v8 = sub_100004F68();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 24);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17 = v11;
        *v10 = 136315138;
        if (v9)
        {
          v12 = 1735289170;
        }

        else
        {
          v12 = 0x746E656C6953;
        }

        if (v9)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE600000000000000;
        }

        v14 = sub_100004330(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v7, v8, "Failed to set silent mode to %s", v10, 0xCu);
        sub_1000048D8(v11);
      }
    }

    v15 = *(v0 + 16);
    sub_100004D58();
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100003E4C()
{
  result = qword_10000C4B8;
  if (!qword_10000C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4B8);
  }

  return result;
}

unint64_t sub_100003EA4()
{
  result = qword_10000C4C0;
  if (!qword_10000C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C4C0);
  }

  return result;
}

uint64_t sub_100003F64@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C2B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D78();
  v3 = sub_100001668(v2, qword_10000C6B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000400C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000040AC;

  return sub_100003BF0(a1, v4);
}

uint64_t sub_1000040AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000041A0(uint64_t a1)
{
  v2 = sub_100003000();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100004214()
{
  result = qword_10000C568;
  if (!qword_10000C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C568);
  }

  return result;
}

uint64_t sub_100004268(uint64_t a1)
{
  v2 = sub_100004DE8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100004E08();
}

unint64_t sub_100004330(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000043FC(v11, 0, 0, 1, a1, a2);
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
    sub_100004924(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000048D8(v11);
  return v7;
}

unint64_t sub_1000043FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004508(a5, a6);
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
    result = sub_100004F88();
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

char *sub_100004508(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004554(a1, a2);
  sub_100004684(&off_100008620);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004554(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004770(v5, 0);
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

  result = sub_100004F88();
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
        v10 = sub_100004F58();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004770(v10, 0);
        result = sub_100004F78();
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

uint64_t sub_100004684(uint64_t result)
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

  result = sub_1000047E4(result, v12, 1, v3);
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

void *sub_100004770(uint64_t a1, uint64_t a2)
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

  sub_100002394(&qword_10000C570, &qword_100005A58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000047E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002394(&qword_10000C570, &qword_100005A58);
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

uint64_t sub_1000048D8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100004924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000049B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100004A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10000C5B8, &qword_100005AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10000C5B8, &qword_100005AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004B00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _swift_retain();
  }

  else
  {
  }
}

uint64_t sub_100004B10(uint64_t a1)
{
  v2 = sub_100002394(&qword_10000C5B8, &qword_100005AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004B78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _swift_release(a1);
  }

  else
  {
  }
}

uint64_t sub_100004B88()
{
  sub_1000021D8(&qword_10000C588, &qword_100005AC8);
  sub_1000021D8(&qword_10000C580, &qword_100005AC0);
  sub_1000021D8(&qword_10000C578, &qword_100005AB8);
  sub_100002430(&qword_10000C5A8, &qword_10000C578, &qword_100005AB8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}