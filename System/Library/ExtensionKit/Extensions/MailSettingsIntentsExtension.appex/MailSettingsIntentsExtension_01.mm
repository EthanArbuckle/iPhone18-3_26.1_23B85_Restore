unint64_t sub_100021788()
{
  v2 = qword_100038A98;
  if (!qword_100038A98)
  {
    sub_100003C48(&qword_100038AA0, &unk_10002E030);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021810()
{
  v2 = qword_100038AA8;
  if (!qword_100038AA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10002188C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_100020F64(a1, a2, a3);
}

unint64_t sub_100021998()
{
  v2 = qword_100038AB0;
  if (!qword_100038AB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021A2C()
{
  v2 = qword_100038AB8;
  if (!qword_100038AB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021AC0()
{
  v2 = qword_100038AC0;
  if (!qword_100038AC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021B54()
{
  v2 = qword_100038AC8;
  if (!qword_100038AC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021C00()
{
  v2 = qword_100038AD0;
  if (!qword_100038AD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021C94()
{
  v2 = qword_100038AD8;
  if (!qword_100038AD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021D28()
{
  v2 = qword_100038AE0;
  if (!qword_100038AE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021DD4()
{
  v2 = qword_100038AE8;
  if (!qword_100038AE8)
  {
    sub_100003C48(&qword_100038AF0, &qword_10002E228);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021E74()
{
  v2 = qword_100038AF8;
  if (!qword_100038AF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038AF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021F08()
{
  v2 = qword_100038B00;
  if (!qword_100038B00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100021FB4()
{
  v2 = qword_100038B08;
  if (!qword_100038B08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100022048()
{
  v2 = qword_100038B10;
  if (!qword_100038B10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000220DC()
{
  v2 = qword_100038B18;
  if (!qword_100038B18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100022170()
{
  v2 = qword_100038B20;
  if (!qword_100038B20)
  {
    sub_100003C48(&qword_100038B28, &qword_10002E3C0);
    sub_100021D28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100022220()
{
  v2 = qword_100038B30;
  if (!qword_100038B30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1000222F0(uint64_t a1, void *a2)
{
  v2[16] = a1;
  v2[14] = v2;
  v2[15] = 0;
  v2[15] = *a2;
  v3 = v2[14];
  return _swift_task_switch(sub_100022334, 0);
}

uint64_t sub_100022334()
{
  *(v0 + 112) = v0;
  v12 = *sub_10001FF50();
  v12;
  if (v12)
  {
    v1 = sub_1000203F8();
    v7 = *v1;
    v8 = v1[1];

    v9 = sub_100027268();

    v10 = [v12 objectForKey:v9];

    if (v10)
    {
      sub_1000272E8();
      sub_10000B5DC(v11 + 80, v11 + 48);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
    }

    *(v11 + 16) = *(v11 + 48);
    *(v11 + 32) = *(v11 + 64);
  }

  else
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
  }

  if (*(v11 + 40))
  {
    if (swift_dynamicCast())
    {
      v5 = *(v11 + 136) & 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = v5;
  }

  else
  {
    sub_10000B500((v11 + 16));
    v6 = 2;
  }

  if (v6 == 2)
  {
    **(v11 + 128) = 0;
  }

  else
  {
    **(v11 + 128) = v6;
  }

  v2 = *(*(v11 + 112) + 8);
  v3 = *(v11 + 112);

  return v2();
}

uint64_t sub_100022628(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2 & 1;
  *(v2 + 32) = v3 & 1;
  v4 = *(v2 + 16);
  return _swift_task_switch(sub_100022688, 0);
}

uint64_t sub_100022688()
{
  *(v0 + 16) = v0;
  v10 = *sub_10001FF50();
  v10;
  if (v10)
  {
    v7 = *(v9 + 33);
    v1 = sub_1000203F8();
    v5 = *v1;
    v6 = v1[1];

    v8 = sub_100027268();

    [v10 setBool:v7 & 1 forKey:v8];
  }

  v2 = *(*(v9 + 16) + 8);
  v3 = *(v9 + 16);

  return v2();
}

uint64_t sub_1000227EC()
{
  result = sub_100027278("com.apple.Preferences", 0x15uLL, 1);
  qword_100038EB0 = result;
  qword_100038EB8 = v1;
  return result;
}

uint64_t *sub_100022830()
{
  if (qword_1000381F0 != -1)
  {
    swift_once();
  }

  return &qword_100038EB0;
}

uint64_t sub_100022890()
{
  v0 = sub_100022830();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1000228CC()
{
  if (qword_1000381F8 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100022940()
{
  if (qword_100038200 != -1)
  {
    swift_once();
  }

  return v1;
}

id sub_1000229B4()
{
  result = [objc_opt_self() em_userDefaults];
  qword_100038EC0 = result;
  return result;
}

uint64_t *sub_1000229F0()
{
  if (qword_100038208 != -1)
  {
    swift_once();
  }

  return &qword_100038EC0;
}

void *sub_100022A50()
{
  v1 = *sub_1000229F0();
  v1;
  return v1;
}

uint64_t sub_100022A88()
{
  v9 = "Title for entity representing the Undo Send Delay setting in Mail";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = qword_100038EC8;
  sub_100001C10(v8, qword_100038EC8);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Undo Send Delay", 0xFuLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 67;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t sub_100022D84()
{
  if (qword_100038210 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, qword_100038EC8);
}

uint64_t sub_100022DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100022D84();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100022E54()
{
  result = sub_100027278("UndoSendDelayTime", 0x11uLL, 1);
  qword_100038B40 = result;
  qword_100038B48 = v1;
  return result;
}

uint64_t *sub_100022E98()
{
  if (qword_100038218 != -1)
  {
    swift_once();
  }

  return &qword_100038B40;
}

uint64_t sub_100022EF8()
{
  v0 = sub_100022E98();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_100022F34()
{
  v7 = "Title for entity representing the Undo Send Delay setting in Mail";
  v14 = 0;
  v12 = &unk_10002EE10;
  v13 = &unk_10002EE18;
  v16 = &v21;
  v21 = 0;
  v9 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v11 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v10 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v2 - v5;
  v0 = sub_100027198();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v15 = &v2 - v6;
  sub_100001BA4(&qword_100038CA0, &qword_10002EE08);
  sub_100027278("Undo Send Delay", 0xFuLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v11);
  v18 = v7;
  v19 = 67;
  v20 = 2;
  sub_1000271A8();
  sub_100024220();
  v17 = sub_100027128();

  v21 = v17;
  sub_100003D38(v16);
  return v17;
}

uint64_t sub_100023220@<X0>(uint64_t *a1@<X8>)
{
  sub_100023260();
  result = sub_100026E18();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_100023260()
{
  v2 = qword_100038B50;
  if (!qword_100038B50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002332C()
{
  v2 = qword_100038B58;
  if (!qword_100038B58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100023418()
{
  v2 = qword_100038B60;
  if (!qword_100038B60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100023494()
{
  *(v0 + 16) = v0;
  v1 = *(v0 + 16);
  return _swift_task_switch(sub_1000234BC, 0);
}

uint64_t sub_1000234BC()
{
  *(v0 + 16) = v0;
  v1 = sub_100022F34();
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2(v1);
}

uint64_t sub_100023544(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100002818;

  return sub_100023494();
}

uint64_t sub_1000235F4(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v4 = swift_task_alloc();
  *(v7 + 32) = v4;
  v5 = sub_1000236B8();
  *v4 = *(v7 + 16);
  v4[1] = sub_100002818;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000236B8()
{
  v2 = qword_100038B68;
  if (!qword_100038B68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100023734(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  v5 = sub_1000236B8();
  *v4 = *(v7 + 16);
  v4[1] = sub_100002BE0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v5);
}

uint64_t sub_1000237FC(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v2;
  v3 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v4 = swift_task_alloc();
  *(v7 + 32) = v4;
  v5 = sub_1000236B8();
  *v4 = *(v7 + 16);
  v4[1] = sub_100002818;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_1000238C0(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = async function pointer to EntityQuery.results()[1];
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  v5 = sub_100023988();
  *v4 = *(v7 + 16);
  v4[1] = sub_100002FCC;

  return EntityQuery.results()(a1, a2, v5);
}

unint64_t sub_100023988()
{
  v2 = qword_100038B70;
  if (!qword_100038B70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100023A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 136) = 0;
  v4 = sub_100001BA4(&qword_100038B78, &qword_10002E5D8);
  *(v3 + 64) = v4;
  v8 = *(v4 - 8);
  *(v3 + 72) = v8;
  v5 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v6 = *(v3 + 16);

  return _swift_task_switch(sub_100023B28, 0);
}

uint64_t sub_100023B28()
{
  *(v0 + 16) = v0;
  KeyPath = swift_getKeyPath();
  *(v0 + 88) = KeyPath;
  v1 = async function pointer to _AppEntityUpdate.value<A>(of:)[1];
  v2 = swift_task_alloc();
  v6[12] = v2;
  v8 = sub_100001BA4(&qword_100038B80, &qword_10002E608);
  v6[13] = sub_100024220();
  *v2 = v6[2];
  v2[1] = sub_100023C20;
  v3 = v6[10];
  v4 = v6[7];

  return _AppEntityUpdate.value<A>(of:)(v3, KeyPath, v8);
}

uint64_t sub_100023C20()
{
  v5 = *v0;
  v1 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  *(v5 + 16) = *v0;

  v2 = *(v5 + 16);

  return _swift_task_switch(sub_100023D58, 0);
}

uint64_t sub_100023D58()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v0[2] = v0;
  if ((*(v2 + 88))(v1, v3) == enum case for _IntentValueState.set<A>(_:))
  {
    v11 = *(v16 + 80);
    v7 = *(v16 + 64);
    (*(*(v16 + 72) + 96))();
    v12 = *v11;
    *(v16 + 136) = *v11;
    *(v16 + 40) = sub_100022F34();
    *(v16 + 137) = v12;
    KeyPath = swift_getKeyPath();
    *(v16 + 112) = KeyPath;
    v8 = async function pointer to AppEntity._setValue<A>(_:for:)[1];
    v9 = swift_task_alloc();
    *(v16 + 120) = v9;
    *v9 = *(v16 + 16);
    v9[1] = sub_100023FA4;
    v10 = *(v16 + 104);

    return AppEntity._setValue<A>(_:for:)(v16 + 137, KeyPath, v10);
  }

  else
  {
    (*(*(v16 + 72) + 8))(*(v16 + 80), *(v16 + 64));
    v15 = *(v16 + 80);
    v14 = *(v16 + 48);
    sub_1000242A8();
    sub_100026D18();

    v4 = *(*(v16 + 16) + 8);
    v5 = *(v16 + 16);

    return v4();
  }
}

uint64_t sub_100023FA4()
{
  v8 = *v1;
  v2 = *(*v1 + 120);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[16] = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_100003AC0;
  }

  else
  {
    v3 = v8[14];

    sub_100003D38(v8 + 5);
    v4 = *v9;
    v5 = sub_100024134;
  }

  return _swift_task_switch(v5, 0);
}

uint64_t sub_100024134()
{
  v0[2] = v0;
  v5 = v0[10];
  v4 = v0[6];
  sub_1000242A8();
  sub_100026D18();

  v1 = *(v0[2] + 8);
  v2 = v0[2];

  return v1();
}

unint64_t sub_100024220()
{
  v2 = qword_100038B88;
  if (!qword_100038B88)
  {
    sub_100003C48(&qword_100038B90, qword_10002E610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000242A8()
{
  v2 = qword_100038B98;
  if (!qword_100038B98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038B98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100024324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100002FCC;

  return sub_100023A04(a1, a2, a3);
}

uint64_t sub_1000243E8()
{
  v9 = "Title of options for undo send delay";
  v0 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = sub_100027198();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = sub_100027148();
  v7 = static UndoSendDelayOption.typeDisplayRepresentation;
  sub_100001C10(v8, static UndoSendDelayOption.typeDisplayRepresentation);
  v18 = sub_100001CAC(v8, v7);
  v16 = 1;
  sub_100027278("Undo Send Delay Option", 0x16uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v13);
  v21 = v9;
  v22 = 36;
  v23 = 2;
  sub_1000271A8();
  (*(v14 + 56))(v20, v16, v16, v17);
  return sub_100027138();
}

uint64_t UndoSendDelayOption.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100038220 != -1)
  {
    swift_once();
  }

  v0 = sub_100027148();
  return sub_100001CAC(v0, static UndoSendDelayOption.typeDisplayRepresentation);
}

uint64_t static UndoSendDelayOption.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = UndoSendDelayOption.typeDisplayRepresentation.unsafeMutableAddressor();
  v1 = sub_100027148();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1000247B4()
{
  v17 = "Title of option to have undo send delay off";
  v22 = "Title of option to undo send delay for 10 seconds";
  v25 = "Title of option to undo send delay for 20 seconds";
  v32 = "Title of option to undo send delay for 30 seconds";
  v0 = sub_100001BA4(&qword_100038460, &qword_10002B980);
  v11 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v50 = &v11 - v11;
  v1 = sub_100001BA4(&qword_100038230, &unk_10002AD00);
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v49 = &v11 - v12;
  v53 = 0;
  v13 = (*(*(sub_100027188() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v38 = &v11 - v13;
  v14 = (*(*(sub_1000271F8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v37 = &v11 - v14;
  v15 = (*(*(sub_100027258() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v36 = &v11 - v15;
  v39 = sub_100027198();
  v18 = *(v39 - 8);
  v19 = v39 - 8;
  v16 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v48 = &v11 - v16;
  v52 = sub_100001BA4(&qword_100038BA0, &qword_10002E628);
  v51 = sub_100027318();
  v30 = v2;
  v20 = *(v52 + 48);
  *v2 = 0;
  v29 = 3;
  v42 = 1;
  sub_100027278("Off", 3uLL, 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v38);
  v68 = v17;
  v69 = 43;
  v34 = 2;
  v70 = 2;
  v21 = 1;
  v35 = 0;
  sub_1000271A8();
  v41 = *(v18 + 56);
  v40 = v18 + 56;
  v41(v49, v42, v42, v39);
  v43 = sub_100027018();
  v3 = *(v43 - 8);
  v45 = *(v3 + 56);
  v44 = v3 + 56;
  v45(v50, v42);
  sub_100027038();
  v4 = v42;
  v28 = *(*(v52 - 8) + 72);
  v24 = *(v52 + 48);
  v23 = &v30[v28];
  *v23 = v21;
  v31 = 10;
  sub_100027278("10 Seconds", 0xAuLL, v4 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v38);
  v64 = v22;
  v33 = 49;
  v65 = 49;
  v66 = v34;
  v67 = v35 & 1 & v42;
  sub_1000271A8();
  v41(v49, v42, v42, v39);
  (v45)(v50, v42, v42, v43);
  sub_100027038();
  v5 = v31;
  v6 = v42;
  v27 = *(v52 + 48);
  v26 = &v30[2 * v28];
  *v26 = v34;
  sub_100027278("20 Seconds", v5, v6 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v38);
  v60 = v25;
  v61 = v33;
  v62 = v34;
  v63 = v35 & 1 & v42;
  sub_1000271A8();
  v41(v49, v42, v42, v39);
  (v45)(v50, v42, v42, v43);
  sub_100027038();
  v7 = v31;
  v8 = v42;
  v47 = *(v52 + 48);
  v46 = &v30[v29 * v28];
  *v46 = 3;
  sub_100027278("30 Seconds", v7, v8 & 1);
  sub_100027248();
  sub_100001D04();
  sub_100001D1C(v38);
  v56 = v32;
  v57 = v33;
  v58 = v34;
  v59 = v35 & 1 & v42;
  sub_1000271A8();
  v41(v49, v42, v42, v39);
  (v45)(v50, v42, v42, v43);
  sub_100027038();
  v9 = v51;
  sub_1000095A4();
  v55 = v9;
  v54 = sub_100027048();
  sub_1000250B4();
  result = sub_100027238();
  static UndoSendDelayOption.caseDisplayRepresentations = result;
  return result;
}

unint64_t sub_1000250B4()
{
  v2 = qword_100038BA8;
  if (!qword_100038BA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *UndoSendDelayOption.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100038228 != -1)
  {
    swift_once();
  }

  return &static UndoSendDelayOption.caseDisplayRepresentations;
}

uint64_t static UndoSendDelayOption.caseDisplayRepresentations.getter()
{
  v1 = UndoSendDelayOption.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static UndoSendDelayOption.caseDisplayRepresentations.setter(uint64_t a1)
{
  v3 = UndoSendDelayOption.caseDisplayRepresentations.unsafeMutableAddressor();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static UndoSendDelayOption.caseDisplayRepresentations.modify())()
{
  UndoSendDelayOption.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
  return sub_1000104A0;
}

MailSettingsIntentsExtension::UndoSendDelayOption_optional __swiftcall UndoSendDelayOption.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 10:
      return 1;
    case 20:
      return 2;
    case 30:
      return 3;
  }

  return 4;
}

uint64_t static UndoSendDelayOption.allCases.getter()
{
  result = sub_100027318();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  sub_1000095A4();
  return result;
}

uint64_t UndoSendDelayOption.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 10;
    case 2:
      return 20;
  }

  return 30;
}

unint64_t sub_1000254A8()
{
  v2 = qword_100038BB0;
  if (!qword_100038BB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002553C()
{
  v2 = qword_100038BB8;
  if (!qword_100038BB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000255D0()
{
  v2 = qword_100038BC0;
  if (!qword_100038BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025664()
{
  v2 = qword_100038BC8;
  if (!qword_100038BC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025710()
{
  v2 = qword_100038BD0;
  if (!qword_100038BD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000257A4()
{
  v2 = qword_100038BD8;
  if (!qword_100038BD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025838()
{
  v2 = qword_100038BE0;
  if (!qword_100038BE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000258E4()
{
  v2 = qword_100038BE8;
  if (!qword_100038BE8)
  {
    sub_100003C48(&qword_100038BF0, &qword_10002E818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025984()
{
  v2 = qword_100038BF8;
  if (!qword_100038BF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025A18()
{
  v2 = qword_100038C00;
  if (!qword_100038C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025AC4()
{
  v2 = qword_100038C08;
  if (!qword_100038C08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025B58()
{
  v2 = qword_100038C10;
  if (!qword_100038C10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025BEC()
{
  v2 = qword_100038C18;
  if (!qword_100038C18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025C80()
{
  v2 = qword_100038C20;
  if (!qword_100038C20)
  {
    sub_100003C48(&qword_100038C28, &qword_10002E9B0);
    sub_100025838();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025D30()
{
  v2 = qword_100038C30;
  if (!qword_100038C30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C30);
    return WitnessTable;
  }

  return v2;
}

MailSettingsIntentsExtension::UndoSendDelayOption_optional sub_100025E10@<W0>(Swift::Int *a1@<X0>, MailSettingsIntentsExtension::UndoSendDelayOption_optional *a2@<X8>)
{
  result.value = UndoSendDelayOption.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100025E40@<X0>(uint64_t *a1@<X8>)
{
  result = UndoSendDelayOption.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_100025E88()
{
  v2 = qword_100038C38;
  if (!qword_100038C38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100025FEC()
{
  v2 = qword_100038C40;
  if (!qword_100038C40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026080()
{
  v2 = qword_100038C48;
  if (!qword_100038C48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026114()
{
  v2 = qword_100038C50;
  if (!qword_100038C50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000261A8()
{
  v2 = qword_100038C58;
  if (!qword_100038C58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10002623C()
{
  v2 = qword_100038C60;
  if (!qword_100038C60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000262D0()
{
  v2 = qword_100038C68;
  if (!qword_100038C68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026364()
{
  v2 = qword_100038C70;
  if (!qword_100038C70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026454()
{
  v2 = qword_100038C78;
  if (!qword_100038C78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100026520()
{
  v2 = qword_100038C80;
  if (!qword_100038C80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000265B4()
{
  v2 = qword_100038C88;
  if (!qword_100038C88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1000266B0()
{
  v2 = qword_100038C90;
  if (!qword_100038C90)
  {
    sub_100003C48(&qword_100038C98, &qword_10002ED10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_100038C90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100026738@<X0>(uint64_t *a1@<X8>)
{
  result = static UndoSendDelayOption.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000267B4(uint64_t a1, void *a2)
{
  *(v2 + 144) = a1;
  *(v2 + 112) = v2;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 152) = 0;
  *(v2 + 120) = *a2;
  v3 = *(v2 + 112);
  return _swift_task_switch(sub_1000267F8, 0);
}

uint64_t sub_1000267F8()
{
  *(v0 + 112) = v0;
  v16 = *sub_1000229F0();
  v16;
  if (v16)
  {
    v1 = sub_100022E98();
    v11 = *v1;
    v12 = v1[1];

    v13 = sub_100027268();

    v14 = [v16 objectForKey:v13];

    if (v14)
    {
      sub_1000272E8();
      sub_10000B5DC(v15 + 80, v15 + 48);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
    }

    *(v15 + 16) = *(v15 + 48);
    *(v15 + 32) = *(v15 + 64);
  }

  else
  {
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
  }

  if (*(v15 + 40))
  {
    if (swift_dynamicCast())
    {
      v7 = *(v15 + 136);
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 1;
    }

    v9 = v7;
    v10 = v8;
  }

  else
  {
    sub_10000B500((v15 + 16));
    v9 = 0;
    v10 = 1;
  }

  if ((v10 & 1) != 0 || (*(v15 + 128) = v9, v2.value = UndoSendDelayOption.init(rawValue:)(v9).value, v2.value == MailSettingsIntentsExtension_UndoSendDelayOption_unknownDefault))
  {
    **(v15 + 144) = 1;
  }

  else
  {
    v3 = *(v15 + 144);
    *(v15 + 152) = v2;
    v3->value = v2.value;
  }

  v4 = *(*(v15 + 112) + 8);
  v5 = *(v15 + 112);

  return v4();
}

uint64_t sub_100026B48(void *a1, char *a2)
{
  *(v2 + 16) = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 24) = *a1;
  v3 = *a2;
  *(v2 + 33) = *a2;
  *(v2 + 32) = v3;
  v4 = *(v2 + 16);
  return _swift_task_switch(sub_100026B94, 0);
}

uint64_t sub_100026B94()
{
  *(v0 + 16) = v0;
  v10 = *sub_1000229F0();
  v10;
  if (v10)
  {
    v7 = UndoSendDelayOption.rawValue.getter(*(v9 + 33));
    v1 = sub_100022E98();
    v5 = *v1;
    v6 = v1[1];

    v8 = sub_100027268();

    [v10 setInteger:v7 forKey:v8];
  }

  v2 = *(*(v9 + 16) + 8);
  v3 = *(v9 + 16);

  return v2();
}