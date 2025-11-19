unint64_t sub_100001664()
{
  result = qword_100020158;
  if (!qword_100020158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020158);
  }

  return result;
}

unint64_t sub_1000016BC()
{
  result = qword_100020160;
  if (!qword_100020160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020160);
  }

  return result;
}

uint64_t sub_100001710()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_1000208D0);
  sub_100005948(v0, qword_1000208D0);
  return sub_10001170C();
}

uint64_t sub_100001774@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001135C();
  *a1 = v5;
  return result;
}

uint64_t sub_1000017B0(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_10001136C();
}

uint64_t (*sub_1000017F8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_10000186C;
}

unint64_t sub_100001870()
{
  result = qword_100020168;
  if (!qword_100020168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020168);
  }

  return result;
}

unint64_t sub_1000018C4()
{
  result = qword_100020170;
  if (!qword_100020170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020170);
  }

  return result;
}

uint64_t sub_100001918(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005B00();
  v5 = sub_1000059E4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100001988()
{
  result = qword_100020178;
  if (!qword_100020178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020178);
  }

  return result;
}

unint64_t sub_1000019E0()
{
  result = qword_100020180;
  if (!qword_100020180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020180);
  }

  return result;
}

uint64_t sub_100001AA0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005B00();
  v8 = sub_100005B54();
  v9 = sub_1000059E4();
  *v6 = v2;
  v6[1] = sub_100001B74;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100001B74()
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

uint64_t sub_100001C7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000051A4();
  *a1 = result;
  return result;
}

uint64_t sub_100001CA4(uint64_t a1)
{
  v2 = sub_100001870();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100001CE4()
{
  result = qword_100020188;
  if (!qword_100020188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020188);
  }

  return result;
}

uint64_t sub_100001D7C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001DC4()
{
  v0 = sub_1000116AC();
  sub_100005980(v0, qword_1000208E8);
  sub_100005948(v0, qword_1000208E8);
  return sub_10001169C();
}

uint64_t sub_100001E28()
{
  v0 = sub_100005900(&qword_100020290, &unk_100013920);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_100005900(&qword_100020278, &qword_100012480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_10001171C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001170C();
  sub_10001170C();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_10001154C();
  v13 = sub_10001155C();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100005900(&qword_100020298, &qword_1000124A0);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100011BC0;
  sub_10001170C();
  sub_10001170C();
  sub_10001170C();
  sub_10001170C();
  sub_10001170C();
  return sub_10001156C();
}

uint64_t sub_100002154()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_100020900);
  sub_100005948(v0, qword_100020900);
  return sub_10001170C();
}

uint64_t sub_1000021B8()
{
  v0 = sub_100005900(&qword_1000202F0, &qword_100012518);
  sub_100005980(v0, qword_100020918);
  v1 = sub_100005948(v0, qword_100020918);
  sub_1000114BC();
  v2 = sub_1000114CC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100002278()
{
  result = swift_getKeyPath();
  qword_100020930 = result;
  return result;
}

uint64_t sub_1000022E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005900(&qword_1000202C0, &qword_1000124C8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005900(&qword_1000202C8, &qword_1000124D0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005900(&qword_1000202D0, &qword_1000124D8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001131C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005900(&qword_1000202D8, &qword_1000124E0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000024C4, 0, 0);
}

uint64_t sub_1000024C4()
{
  v1 = v0[8];
  sub_10001135C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000039E4();
  *v3 = v0;
  v3[1] = sub_100002594;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100005E0C, 0, &type metadata for AirDropBringDevicesTogetherEntity, v4);
}

uint64_t sub_100002594()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100002690, 0, 0);
}

uint64_t sub_100002690()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10001135C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10001135C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000200C8 != -1)
  {
    swift_once();
  }

  v4 = qword_100020930;
  *(v0 + 176) = qword_100020930;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100005C50(&qword_1000202B0, &qword_1000202B8, &qword_1000124B8);
  *v6 = v0;
  v6[1] = sub_1000027F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000027F0()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002BAC;
  }

  else
  {
    v5 = sub_100002944;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002944()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001135C();
  v0[6] = v0[5];
  v8 = sub_10001168C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000116BC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100001CE4();
  sub_100003DB8();
  sub_1000112EC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001130C();
  sub_10001132C();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100002BAC()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_100002C74()
{
  v0 = sub_100005900(&qword_1000202E0, &qword_1000124E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000200C8 != -1)
  {
    swift_once();
  }

  sub_10001153C();

  sub_100003DB8();
  sub_100005C50(&qword_1000202E8, &qword_1000202E0, &qword_1000124E8);
  sub_10001152C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100002DE8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_100005E14;
}

uint64_t sub_100002E5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_10001135C();
  *a1 = v5;
  return result;
}

uint64_t sub_100002E98(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10001136C();
}

uint64_t (*sub_100002ED0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001134C();
  return sub_100005E14;
}

void sub_100002F44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100002F90()
{
  if (qword_1000200C8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100002FF0()
{
  result = qword_1000201A0;
  if (!qword_1000201A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201A0);
  }

  return result;
}

unint64_t sub_100003048()
{
  result = qword_1000201A8;
  if (!qword_1000201A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201A8);
  }

  return result;
}

uint64_t sub_100003178@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000200C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005900(&qword_1000202F0, &qword_100012518);
  v3 = sub_100005948(v2, qword_100020918);

  return sub_100005A90(v3, a1);
}

uint64_t sub_1000031FC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005DFC;

  return sub_1000022E4(a1, v5, v4);
}

uint64_t sub_1000032A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000549C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000032F0()
{
  result = qword_1000201B0;
  if (!qword_1000201B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201B0);
  }

  return result;
}

unint64_t sub_100003348()
{
  result = qword_1000201B8;
  if (!qword_1000201B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201B8);
  }

  return result;
}

uint64_t sub_1000033BC()
{
  v1 = *(v0 + 16);
  sub_1000117AC();
  v2 = sub_10001179C();
  v3 = sub_10001176C();

  *v1 = v3 & 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100003470()
{
  v1 = *(v0 + 16);
  sub_1000117AC();
  v2 = sub_10001179C();
  sub_10001177C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000034F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001171C() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100003580, 0, 0);
}

uint64_t sub_100003580()
{
  sub_1000117AC();
  v1 = sub_10001179C();
  v2 = sub_10001178C();

  if (v2)
  {
    v4 = v0[2];
    v3 = v0[3];
    sub_100005900(&qword_100020198, qword_100011D70);
    sub_10001170C();
    sub_100005C50(&qword_1000202B0, &qword_1000202B8, &qword_1000124B8);
    *v4 = sub_1000116FC();
  }

  else
  {
    v6 = v0[3];
    sub_10001122C();
    sub_100005A38();
    swift_allocError();
    sub_10001150C();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

unint64_t sub_10000371C()
{
  result = qword_1000201C0;
  if (!qword_1000201C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201C0);
  }

  return result;
}

uint64_t sub_100003770(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000041BC();
  *v5 = v2;
  v5[1] = sub_100003820;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100003820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100003938()
{
  result = qword_1000201C8;
  if (!qword_1000201C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201C8);
  }

  return result;
}

unint64_t sub_100003990()
{
  result = qword_1000201D0;
  if (!qword_1000201D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201D0);
  }

  return result;
}

unint64_t sub_1000039E4()
{
  result = qword_1000201D8;
  if (!qword_1000201D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201D8);
  }

  return result;
}

uint64_t sub_100003A3C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000041BC();
  *v6 = v2;
  v6[1] = sub_100005E38;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100003AF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000041BC();
  *v5 = v2;
  v5[1] = sub_100005E10;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100003BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003C60;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003C60(uint64_t a1)
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

unint64_t sub_100003D64()
{
  result = qword_1000201E0;
  if (!qword_1000201E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201E0);
  }

  return result;
}

unint64_t sub_100003DB8()
{
  result = qword_1000201E8;
  if (!qword_1000201E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201E8);
  }

  return result;
}

unint64_t sub_100003E10()
{
  result = qword_1000201F0;
  if (!qword_1000201F0)
  {
    sub_100001D7C(&qword_1000201F8, qword_100011FD0);
    sub_100003DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000201F0);
  }

  return result;
}

uint64_t sub_100003E94(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000371C();
  *v6 = v2;
  v6[1] = sub_100003F48;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003F48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005DFC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000040F8()
{
  result = qword_100020200;
  if (!qword_100020200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020200);
  }

  return result;
}

unint64_t sub_100004150()
{
  result = qword_100020208;
  if (!qword_100020208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020208);
  }

  return result;
}

unint64_t sub_1000041BC()
{
  result = qword_100020210;
  if (!qword_100020210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020210);
  }

  return result;
}

unint64_t sub_100004214()
{
  result = qword_100020218;
  if (!qword_100020218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020218);
  }

  return result;
}

uint64_t sub_100004268(uint64_t a1)
{
  v2 = sub_1000039E4();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004CLL, 0x80000001000145C0, a1, v2);
}

unint64_t sub_1000042D0()
{
  result = qword_100020220;
  if (!qword_100020220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020220);
  }

  return result;
}

unint64_t sub_100004328()
{
  result = qword_100020228;
  if (!qword_100020228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020228);
  }

  return result;
}

unint64_t sub_100004384()
{
  result = qword_100020230;
  if (!qword_100020230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020230);
  }

  return result;
}

uint64_t sub_1000043E4@<X0>(uint64_t *a1@<X8>)
{
  sub_100003348();
  result = sub_10001133C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004424()
{
  sub_1000059E4();
  v1 = sub_10001160C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000044CC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005948(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000045B8(uint64_t a1)
{
  v2 = sub_1000039E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004608()
{
  result = qword_100020248;
  if (!qword_100020248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020248);
  }

  return result;
}

uint64_t sub_100004660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003F48;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004724(uint64_t a1)
{
  v2 = sub_100004384();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100004780(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000478C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000047D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000048C8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v30 = sub_100005900(&qword_100020308, &unk_100012590);
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v30);
  v4 = &v29 - v3;
  v39 = sub_100005900(&qword_100020310, &unk_100014300);
  v36 = *(v39 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v39);
  v7 = &v29 - v6;
  v38 = sub_100005900(&qword_100020318, &unk_1000125A0);
  v35 = *(v38 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v38);
  v32 = &v29 - v9;
  v37 = sub_100005900(&qword_100020320, &unk_100014310);
  v34 = *(v37 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v37);
  v31 = &v29 - v11;
  swift_getKeyPath();
  sub_100005900(&qword_100020328, qword_1000125B0);
  sub_100005900(&qword_100020330, &unk_100014320);
  sub_100003348();
  sub_100005C50(&qword_100020338, &qword_100020328, qword_1000125B0);
  sub_100005BD4();
  v12 = v30;
  sub_10001188C();
  sub_1000117DC();
  v13 = sub_100005C50(&qword_100020348, &qword_100020308, &unk_100012590);
  v33 = v7;
  sub_10001180C();

  (*(v1 + 8))(v4, v12);
  sub_1000117DC();
  if (qword_100020150 != -1)
  {
    swift_once();
  }

  v14 = qword_100020A78;
  v15 = sub_10001183C();
  v17 = v16;
  v19 = v18;
  v41 = v12;
  v42 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v32;
  v21 = v33;
  v23 = v39;
  sub_1000117EC();
  sub_100005C98(v15, v17, v19 & 1);

  (*(v36 + 8))(v21, v23);
  v41 = v23;
  v42 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v31;
  v26 = v38;
  sub_10001181C();
  (*(v35 + 8))(v22, v26);
  v41 = v26;
  v42 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  sub_1000117FC();
  return (*(v34 + 8))(v25, v27);
}

uint64_t sub_100004ED4()
{
  v0 = sub_1000117DC();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100004F5C@<X0>(uint64_t a1@<X8>)
{
  sub_1000117DC();
  result = sub_10001183C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_100004FD0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_1000117DC();
    if (qword_100020150 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1000117DC();
  if (qword_100020150 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_100020A78;
  sub_10001183C();
  sub_10001182C();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000051A4()
{
  v20[0] = sub_1000115FC();
  v0 = *(v20[0] - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100005900(&qword_100020270, &qword_100012478) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = sub_100005900(&qword_100020278, &qword_100012480);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = v20 - v12;
  v14 = sub_10001171C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100005900(&qword_100020280, &qword_100012488);
  sub_10001170C();
  (*(v15 + 56))(v13, 1, 1, v14);
  v20[1] = 0;
  v17 = sub_10001131C();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20[0]);
  sub_1000039E4();
  return sub_10001138C();
}

uint64_t sub_10000549C()
{
  v0 = sub_100005900(&qword_100020268, &qword_100012470);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000115FC();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005900(&qword_100020270, &qword_100012478);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100005900(&qword_100020278, &qword_100012480);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001171C();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100005900(&qword_100020280, &qword_100012488);
  sub_10001170C();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001131C();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000039E4();
  v28 = sub_10001138C();
  sub_100005900(&qword_100020288, &unk_100012490);
  sub_10001170C();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000118BC();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001139C();
  return v28;
}

uint64_t sub_100005900(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005948(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005980(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000059E4()
{
  result = qword_1000202A0;
  if (!qword_1000202A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202A0);
  }

  return result;
}

unint64_t sub_100005A38()
{
  result = qword_1000202A8;
  if (!qword_1000202A8)
  {
    sub_10001122C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202A8);
  }

  return result;
}

uint64_t sub_100005A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005900(&qword_1000202F0, &qword_100012518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005B00()
{
  result = qword_1000202F8;
  if (!qword_1000202F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202F8);
  }

  return result;
}

unint64_t sub_100005B54()
{
  result = qword_100020300;
  if (!qword_100020300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020300);
  }

  return result;
}

unint64_t sub_100005BD4()
{
  result = qword_100020340;
  if (!qword_100020340)
  {
    sub_100001D7C(&qword_100020330, &unk_100014320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020340);
  }

  return result;
}

uint64_t sub_100005C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001D7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005C98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100005CA8()
{
  sub_100001D7C(&qword_100020320, &unk_100014310);
  sub_100001D7C(&qword_100020318, &unk_1000125A0);
  sub_100001D7C(&qword_100020310, &unk_100014300);
  sub_100001D7C(&qword_100020308, &unk_100012590);
  sub_100005C50(&qword_100020348, &qword_100020308, &unk_100012590);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100005E40()
{
  result = qword_100020350;
  if (!qword_100020350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020350);
  }

  return result;
}

unint64_t sub_100005E98()
{
  result = qword_100020358;
  if (!qword_100020358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020358);
  }

  return result;
}

uint64_t sub_100005EEC()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_100020938);
  sub_100005948(v0, qword_100020938);
  return sub_10001170C();
}

uint64_t (*sub_100005F50(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_10000186C;
}

unint64_t sub_100005FC4()
{
  result = qword_100020360;
  if (!qword_100020360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020360);
  }

  return result;
}

uint64_t sub_100006018(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A484();
  v5 = sub_10000A424();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100006088()
{
  result = qword_100020368;
  if (!qword_100020368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020368);
  }

  return result;
}

unint64_t sub_1000060E0()
{
  result = qword_100020370;
  if (!qword_100020370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020370);
  }

  return result;
}

uint64_t sub_100006198(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000A484();
  v8 = sub_10000A4D8();
  v9 = sub_10000A424();
  *v6 = v2;
  v6[1] = sub_100001B74;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000626C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000098D8();
  *a1 = result;
  return result;
}

uint64_t sub_100006294(uint64_t a1)
{
  v2 = sub_100005FC4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000062D4()
{
  result = qword_100020378;
  if (!qword_100020378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020378);
  }

  return result;
}

uint64_t sub_10000636C()
{
  v0 = sub_1000116AC();
  sub_100005980(v0, qword_100020950);
  sub_100005948(v0, qword_100020950);
  return sub_10001169C();
}

uint64_t sub_1000063D0()
{
  v0 = sub_100005900(&qword_100020290, &unk_100013920);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_100005900(&qword_100020278, &qword_100012480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_10001171C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001170C();
  sub_10001170C();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_10001154C();
  v13 = sub_10001155C();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100005900(&qword_100020298, &qword_1000124A0);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_1000125D0;
  sub_10001170C();
  sub_10001170C();
  return sub_10001156C();
}

uint64_t sub_1000066B0()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_100020968);
  sub_100005948(v0, qword_100020968);
  return sub_10001170C();
}

uint64_t sub_100006714()
{
  v0 = sub_100005900(&qword_1000202F0, &qword_100012518);
  sub_100005980(v0, qword_100020980);
  v1 = sub_100005948(v0, qword_100020980);
  sub_1000114BC();
  v2 = sub_1000114CC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000067D4()
{
  result = swift_getKeyPath();
  qword_100020998 = result;
  return result;
}

uint64_t sub_1000067FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005900(&qword_1000202C0, &qword_1000124C8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005900(&qword_1000202C8, &qword_1000124D0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005900(&qword_100020500, &qword_100013188) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001131C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005900(&qword_100020508, &qword_100013190);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000069DC, 0, 0);
}

uint64_t sub_1000069DC()
{
  v1 = v0[8];
  sub_10001135C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100007CC4();
  *v3 = v0;
  v3[1] = sub_100006AAC;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000A6C4, 0, &type metadata for AirDropReceivingModeEntity, v4);
}

uint64_t sub_100006AAC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100006BA8, 0, 0);
}

uint64_t sub_100006BA8()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_10001135C();
  v3 = v0[3];
  v0[4] = v3;
  v0[21] = v3;
  sub_10001135C();
  if (qword_1000200F0 != -1)
  {
    swift_once();
  }

  v4 = qword_100020998;
  v0[22] = qword_100020998;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_100005C50(&qword_1000204F0, &qword_1000204F8, &qword_100013178);
  *v6 = v0;
  v6[1] = sub_100006CFC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v4, &type metadata for AirDropReceivingMode, v7);
}

uint64_t sub_100006CFC()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002BAC;
  }

  else
  {
    v5 = sub_100006E50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100006E50()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001135C();
  v0[6] = v0[5];
  v8 = sub_10001168C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000116BC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000062D4();
  sub_100007ED4();
  sub_1000112EC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001130C();
  sub_10001132C();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000070BC()
{
  v0 = sub_100005900(&qword_100020510, &qword_100013198);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000200F0 != -1)
  {
    swift_once();
  }

  sub_10001153C();

  sub_100007ED4();
  sub_100005C50(&qword_100020518, &qword_100020510, &qword_100013198);
  sub_10001152C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100007230(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_100005E14;
}

uint64_t (*sub_1000072A4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001134C();
  return sub_100005E14;
}

uint64_t sub_100007318()
{
  if (qword_1000200F0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100007378()
{
  result = qword_100020390;
  if (!qword_100020390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020390);
  }

  return result;
}

unint64_t sub_1000073D0()
{
  result = qword_100020398;
  if (!qword_100020398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020398);
  }

  return result;
}

uint64_t sub_1000074BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000200E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005900(&qword_1000202F0, &qword_100012518);
  v3 = sub_100005948(v2, qword_100020980);

  return sub_100005A90(v3, a1);
}

uint64_t sub_100007540(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005DFC;

  return sub_1000067FC(a1, v5, v4);
}

uint64_t sub_1000075EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100009BD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100007634()
{
  result = qword_1000203A0;
  if (!qword_1000203A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203A0);
  }

  return result;
}

unint64_t sub_10000768C()
{
  result = qword_1000203A8;
  if (!qword_1000203A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203A8);
  }

  return result;
}

uint64_t sub_100007700()
{
  v1 = *(v0 + 16);
  sub_1000117AC();
  v2 = sub_10001179C();
  v3 = sub_10001172C();

  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

id sub_1000077C4()
{
  if (*(v0 + 16) && *(v0 + 16) == 1)
  {
  }

  else
  {
    v1 = sub_1000118FC();

    if ((v1 & 1) == 0)
    {
LABEL_8:
      v6 = *(v0 + 16);
      sub_1000117AC();
      v7 = sub_10001179C();
      sub_10001173C();

      v5 = *(v0 + 8);
      goto LABEL_9;
    }
  }

  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isMultiUser];

  if (!v4)
  {
    goto LABEL_8;
  }

  sub_10001122C();
  sub_100005A38();
  swift_allocError();
  sub_10001151C();
  swift_willThrow();
  v5 = *(v0 + 8);
LABEL_9:

  return v5();
}

uint64_t sub_100007954(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001171C() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000079E4, 0, 0);
}

uint64_t sub_1000079E4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100005900(&qword_100020388, qword_100012790);
  sub_10001170C();
  sub_100005C50(&qword_1000204F0, &qword_1000204F8, &qword_100013178);
  sub_100008ECC();
  *v2 = sub_1000116EC();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100007B10()
{
  result = qword_1000203B0;
  if (!qword_1000203B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203B0);
  }

  return result;
}

uint64_t sub_100007B64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100008120();
  *v5 = v2;
  v5[1] = sub_100003820;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100007C18()
{
  result = qword_1000203B8;
  if (!qword_1000203B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203B8);
  }

  return result;
}

unint64_t sub_100007C70()
{
  result = qword_1000203C0;
  if (!qword_1000203C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203C0);
  }

  return result;
}

unint64_t sub_100007CC4()
{
  result = qword_1000203C8;
  if (!qword_1000203C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203C8);
  }

  return result;
}

uint64_t sub_100007D18(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100008120();
  *v6 = v2;
  v6[1] = sub_100005E38;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100007DCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100008120();
  *v5 = v2;
  v5[1] = sub_100005E10;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100007E80()
{
  result = qword_1000203D0;
  if (!qword_1000203D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203D0);
  }

  return result;
}

unint64_t sub_100007ED4()
{
  result = qword_1000203D8;
  if (!qword_1000203D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203D8);
  }

  return result;
}

unint64_t sub_100007F2C()
{
  result = qword_1000203E0;
  if (!qword_1000203E0)
  {
    sub_100001D7C(&qword_1000203E8, qword_1000129F0);
    sub_100007ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203E0);
  }

  return result;
}

uint64_t sub_100007FB0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100007B10();
  *v6 = v2;
  v6[1] = sub_100003F48;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100008068()
{
  result = qword_1000203F0;
  if (!qword_1000203F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203F0);
  }

  return result;
}

unint64_t sub_1000080C0()
{
  result = qword_1000203F8;
  if (!qword_1000203F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000203F8);
  }

  return result;
}

unint64_t sub_100008120()
{
  result = qword_100020400;
  if (!qword_100020400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020400);
  }

  return result;
}

unint64_t sub_100008178()
{
  result = qword_100020408;
  if (!qword_100020408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020408);
  }

  return result;
}

uint64_t sub_1000081CC(uint64_t a1)
{
  v2 = sub_100007CC4();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004ELL, 0x8000000100014A70, a1, v2);
}

unint64_t sub_100008234()
{
  result = qword_100020410;
  if (!qword_100020410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020410);
  }

  return result;
}

unint64_t sub_10000828C()
{
  result = qword_100020418;
  if (!qword_100020418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020418);
  }

  return result;
}

unint64_t sub_1000082E8()
{
  result = qword_100020420;
  if (!qword_100020420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020420);
  }

  return result;
}

uint64_t sub_10000833C@<X0>(uint64_t *a1@<X8>)
{
  sub_10000768C();
  result = sub_10001133C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000837C()
{
  sub_10000A424();
  v1 = sub_10001160C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100008464(uint64_t a1)
{
  v2 = sub_100007CC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000084B4()
{
  result = qword_100020438;
  if (!qword_100020438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020438);
  }

  return result;
}

uint64_t sub_10000850C(uint64_t a1)
{
  v2 = sub_1000082E8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100008558()
{
  v0 = sub_1000116AC();
  sub_100005980(v0, qword_1000209A0);
  sub_100005948(v0, qword_1000209A0);
  return sub_10001169C();
}

uint64_t sub_1000085C8()
{
  sub_1000117DC();
  if (qword_100020150 != -1)
  {
    swift_once();
  }

  v0 = qword_100020A78;
  return sub_10001183C();
}

uint64_t sub_1000086DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73746361746E6F63;
  v4 = 0xEC000000796C6E4FLL;
  if (v2 != 1)
  {
    v3 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x73746361746E6F63;
  v8 = 0xEC000000796C6E4FLL;
  if (*a2 != 1)
  {
    v7 = 0x656E6F7972657665;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000118FC();
  }

  return v11 & 1;
}

unint64_t sub_1000087EC()
{
  result = qword_100020440;
  if (!qword_100020440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020440);
  }

  return result;
}

Swift::Int sub_100008840()
{
  v1 = *v0;
  sub_10001190C();
  sub_1000118AC();

  return sub_10001191C();
}

uint64_t sub_1000088E4()
{
  *v0;
  *v0;
  sub_1000118AC();
}

Swift::Int sub_100008974()
{
  v1 = *v0;
  sub_10001190C();
  sub_1000118AC();

  return sub_10001191C();
}

uint64_t sub_100008A14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A3D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100008A44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEC000000796C6E4FLL;
  v5 = 0x73746361746E6F63;
  if (v2 != 1)
  {
    v5 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100008AA4()
{
  result = qword_100020448;
  if (!qword_100020448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020448);
  }

  return result;
}

unint64_t sub_100008B08()
{
  result = qword_100020450;
  if (!qword_100020450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020450);
  }

  return result;
}

unint64_t sub_100008B60()
{
  result = qword_100020458;
  if (!qword_100020458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020458);
  }

  return result;
}

unint64_t sub_100008BB8()
{
  result = qword_100020460;
  if (!qword_100020460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020460);
  }

  return result;
}

unint64_t sub_100008C1C()
{
  result = qword_100020468;
  if (!qword_100020468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020468);
  }

  return result;
}

unint64_t sub_100008C74()
{
  result = qword_100020470;
  if (!qword_100020470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020470);
  }

  return result;
}

unint64_t sub_100008CCC()
{
  result = qword_100020478;
  if (!qword_100020478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020478);
  }

  return result;
}

unint64_t sub_100008D24()
{
  result = qword_100020480;
  if (!qword_100020480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020480);
  }

  return result;
}

uint64_t sub_100008DB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005948(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_100008ECC()
{
  result = qword_100020488;
  if (!qword_100020488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020488);
  }

  return result;
}

uint64_t sub_100008F20(uint64_t a1)
{
  v2 = sub_100008ECC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100008F70()
{
  result = qword_100020490;
  if (!qword_100020490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020490);
  }

  return result;
}

unint64_t sub_100008FC8()
{
  result = qword_100020498;
  if (!qword_100020498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020498);
  }

  return result;
}

uint64_t sub_100009024(uint64_t a1)
{
  v2 = sub_100008D24();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for AirDropReceivingMode(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirDropReceivingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000092FC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10001186C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100005900(&qword_100020530, &qword_100013238);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_100005900(&qword_100020538, &qword_100013240);
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = sub_100005900(&qword_100020540, &qword_100013248);
  v13 = *(v12 - 8);
  v25 = v12;
  v26 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  swift_getKeyPath();
  sub_10001185C();
  sub_100008ECC();
  sub_10000A558();
  sub_10000768C();
  sub_10001187C();
  sub_1000117DC();
  v17 = sub_100005C50(&qword_100020550, &qword_100020530, &qword_100013238);
  sub_10001180C();

  (*(v22 + 8))(v6, v3);
  v28 = v3;
  v29 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v23;
  sub_10001181C();
  (*(v24 + 8))(v11, v19);
  v28 = v19;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_1000117FC();
  return (*(v26 + 8))(v16, v20);
}

uint64_t sub_10000974C@<X0>(uint64_t a1@<X8>)
{
  sub_1000117DC();
  if (qword_100020150 != -1)
  {
    swift_once();
  }

  v2 = qword_100020A78;
  result = sub_10001183C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_100009834@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1000085C8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10000986C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1000085C8();
  return sub_10001189C();
}

uint64_t sub_1000098D8()
{
  v21[0] = sub_1000115FC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005900(&qword_100020270, &qword_100012478);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100005900(&qword_100020278, &qword_100012480);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10001171C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005900(&qword_1000204C8, &qword_100013138);
  sub_10001170C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10001131C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100007CC4();
  return sub_10001138C();
}

uint64_t sub_100009BD0()
{
  v31 = sub_1000115FC();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005900(&qword_100020270, &qword_100012478);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_100005900(&qword_100020278, &qword_100012480);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10001171C();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100005900(&qword_1000204C8, &qword_100013138);
  sub_10001170C();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_10001131C();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100007CC4();
  v26 = sub_10001138C();
  sub_100005900(&qword_1000204D0, &unk_100013140);
  sub_10001170C();
  v28(v13, 1, 1, v29);
  v32 = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100008ECC();
  sub_10001137C();
  return v26;
}

unint64_t sub_100009FD0()
{
  v0 = sub_100005900(&qword_100020290, &unk_100013920);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v29 - v2;
  v4 = sub_100005900(&qword_100020278, &qword_100012480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_10001171C();
  v36 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005900(&qword_1000204D8, &qword_100013150);
  v11 = sub_100005900(&qword_1000204E0, &unk_100013158);
  v31 = v11;
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v32 = 2 * v12;
  v14 = swift_allocObject();
  v33 = v14;
  *(v14 + 16) = xmmword_1000125E0;
  v15 = (v14 + v13);
  v16 = *(v11 + 48);
  *v15 = 0;
  v17 = v15;
  sub_10001170C();
  v18 = *(v9 + 56);
  v29 = v9 + 56;
  v30 = v18;
  v18(v7, 1, 1, v8);
  v35 = sub_10001155C();
  v34 = *(*(v35 - 8) + 56);
  v34(v3, 1, 1, v35);
  v19 = v17;
  v20 = v7;
  sub_10001157C();
  v21 = &v17[v12];
  v22 = v31;
  v23 = *(v31 + 48);
  *v21 = 1;
  sub_10001170C();
  v24 = v7;
  v25 = v30;
  v30(v24, 1, 1, v36);
  v34(v3, 1, 1, v35);
  sub_10001157C();
  v26 = *(v22 + 48);
  v19[v32] = 2;
  sub_10001170C();
  v25(v20, 1, 1, v36);
  v34(v3, 1, 1, v35);
  sub_10001157C();
  v27 = sub_10000CEEC(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v27;
}

uint64_t sub_10000A3D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CDF8;
  v6._object = a2;
  v4 = sub_1000118EC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000A424()
{
  result = qword_1000204E8;
  if (!qword_1000204E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000204E8);
  }

  return result;
}

unint64_t sub_10000A484()
{
  result = qword_100020520;
  if (!qword_100020520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020520);
  }

  return result;
}

unint64_t sub_10000A4D8()
{
  result = qword_100020528;
  if (!qword_100020528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020528);
  }

  return result;
}

unint64_t sub_10000A558()
{
  result = qword_100020548;
  if (!qword_100020548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020548);
  }

  return result;
}

uint64_t sub_10000A5AC()
{
  sub_100001D7C(&qword_100020540, &qword_100013248);
  sub_100001D7C(&qword_100020538, &qword_100013240);
  sub_100001D7C(&qword_100020530, &qword_100013238);
  sub_100005C50(&qword_100020550, &qword_100020530, &qword_100013238);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A6EC()
{
  v0 = sub_100005900(&qword_1000205B0, &qword_100013378);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_100005900(&qword_1000205B8, &qword_100013380);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000B484();
  sub_10001145C();
  v12._object = 0x8000000100014C70;
  v12._countAndFlagsBits = 0xD000000000000025;
  sub_10001144C(v12);
  swift_getKeyPath();
  sub_10000B554();
  sub_1000113AC();

  sub_10001143C();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10001144C(v13);
  sub_10001146C();
  v7 = sub_1000113CC();
  (*(v1 + 8))(v4, v0);
  sub_100005900(&qword_1000205C0, &qword_100013388);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000125D0;
  *(v8 + 32) = v7;
  v9 = sub_1000113BC();

  return v9;
}

uint64_t sub_10000A984()
{
  v0 = sub_100005900(&qword_100020598, &qword_100013338);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_100005900(&qword_1000205A0, &qword_100013340);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100001CE4();
  sub_10001145C();
  v12._object = 0x8000000100014C40;
  v12._countAndFlagsBits = 0xD00000000000002ALL;
  sub_10001144C(v12);
  swift_getKeyPath();
  sub_10000B554();
  sub_1000113AC();

  sub_10001143C();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10001144C(v13);
  sub_10001146C();
  v7 = sub_1000113CC();
  (*(v1 + 8))(v4, v0);
  sub_100005900(&qword_1000205A8, &qword_100013348);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000125D0;
  *(v8 + 32) = v7;
  v9 = sub_1000113BC();

  return v9;
}

uint64_t sub_10000AC18()
{
  v0 = sub_1000113EC();
  v1 = sub_1000113EC();
  sub_100005900(&qword_100020570, &qword_1000132F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100013250;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1000113DC();

  return v3;
}

uint64_t sub_10000ACBC()
{
  v0 = sub_100005900(&qword_100020578, &qword_1000132F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_100005900(&qword_100020580, &qword_100013300);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000062D4();
  sub_10001145C();
  v12._object = 0x8000000100014C20;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10001144C(v12);
  swift_getKeyPath();
  sub_100008CCC();
  sub_1000113AC();

  sub_10001143C();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10001144C(v13);
  sub_10001146C();
  v7 = sub_1000113CC();
  (*(v1 + 8))(v4, v0);
  sub_100005900(&qword_100020588, &qword_100013308);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000125D0;
  *(v8 + 32) = v7;
  v9 = sub_1000113BC();

  return v9;
}

uint64_t sub_10000AF50(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_10001142C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_1000113AC();

  a4(v11);
  sub_10001141C();
  v12 = sub_10001140C();
  (*(v7 + 8))(v10, v6);
  sub_100005900(&qword_100020568, &qword_1000132E8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000125D0;
  *(v13 + 32) = v12;
  v14 = sub_1000113FC();

  return v14;
}

uint64_t sub_10000B0D0()
{
  v0 = sub_1000113EC();
  v1 = sub_1000113EC();
  v2 = sub_1000113EC();
  sub_100005900(&qword_100020570, &qword_1000132F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000125E0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_1000113DC();

  return v4;
}

uint64_t sub_10000B1B8()
{
  if (qword_100020100 != -1)
  {
    swift_once();
  }

  v1 = qword_1000209B8;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_10000B224()
{
  v0 = sub_10001149C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000107E4();
  v16 = v5;
  sub_10000B484();
  sub_1000114AC();
  v6 = sub_10001148C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v15 = sub_10000549C();
  v16 = v8;
  sub_100001CE4();
  sub_1000114AC();
  v9 = sub_10001148C();
  v7(v4, v0);
  v15 = sub_100009BD0();
  v16 = v10;
  sub_1000062D4();
  sub_1000114AC();
  v11 = sub_10001148C();
  v7(v4, v0);
  sub_100005900(&qword_100020560, "z*");
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000125E0;
  *(v12 + 32) = v6;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v13 = sub_10001147C();

  return v13;
}

unint64_t sub_10000B484()
{
  result = qword_100020558;
  if (!qword_100020558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020558);
  }

  return result;
}

uint64_t sub_10000B4D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10001135C();
  *a2 = v5;
  return result;
}

uint64_t sub_10000B514(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001136C();
}

unint64_t sub_10000B554()
{
  result = qword_100020590;
  if (!qword_100020590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020590);
  }

  return result;
}

uint64_t sub_10000B5A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_10001135C();
  *a2 = v5;
  return result;
}

uint64_t sub_10000B5E4(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001136C();
}

uint64_t sub_10000B628()
{
  v0 = sub_100005900(&qword_1000205D0, &qword_100013410);

  return TupleWidget.init(_:)(v0, v0);
}

void __swiftcall DELETE_ME_AFTER_123714910.init()()
{
  sub_10000D5BC();

  sub_100010C54();

  sub_1000051A4();

  sub_1000098D8();

  sub_1000118CC();
  __break(1u);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B72C();
  sub_1000117CC();
  return 0;
}

unint64_t sub_10000B72C()
{
  result = qword_1000205C8;
  if (!qword_1000205C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C8);
  }

  return result;
}

unint64_t sub_10000B7C0()
{
  result = qword_1000205D8;
  if (!qword_1000205D8)
  {
    sub_100001D7C(&qword_1000205E0, &qword_100013418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D8);
  }

  return result;
}

unint64_t sub_10000B828()
{
  result = qword_1000205E8;
  if (!qword_1000205E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205E8);
  }

  return result;
}

unint64_t sub_10000B880()
{
  result = qword_1000205F0;
  if (!qword_1000205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F0);
  }

  return result;
}

uint64_t sub_10000B8D4()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_1000209C0);
  sub_100005948(v0, qword_1000209C0);
  return sub_10001170C();
}

void (*sub_10000B980(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_100002F44;
}

unint64_t sub_10000B9F4()
{
  result = qword_1000205F8;
  if (!qword_1000205F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F8);
  }

  return result;
}

uint64_t sub_10000BA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D8C0();
  v5 = sub_10000D32C();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000BAB8()
{
  result = qword_100020600;
  if (!qword_100020600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020600);
  }

  return result;
}

unint64_t sub_10000BB10()
{
  result = qword_100020608;
  if (!qword_100020608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020608);
  }

  return result;
}

uint64_t sub_10000BBC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000D8C0();
  v8 = sub_10000D914();
  v9 = sub_10000D32C();
  *v6 = v2;
  v6[1] = sub_100001B74;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000BC9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D5BC();
  *a1 = result;
  return result;
}

uint64_t sub_10000BCC4(uint64_t a1)
{
  v2 = sub_10000B9F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000BD00()
{
  v0 = sub_1000116AC();
  sub_100005980(v0, qword_1000209D8);
  sub_100005948(v0, qword_1000209D8);
  return sub_10001169C();
}

uint64_t sub_10000BD64()
{
  v0 = sub_100005900(&qword_100020290, &unk_100013920);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_100005900(&qword_100020278, &qword_100012480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_10001171C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_100005900(&qword_100020680, &qword_100013930);
  v12 = *(sub_100005900(&qword_100020688, &unk_100013938) - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v22 = xmmword_1000125D0;
  *(v15 + 16) = xmmword_1000125D0;
  sub_10001170C();
  sub_10001170C();
  v16 = *(v9 + 56);
  v9 += 56;
  v16(v7, 0, 1, v8);
  sub_10001154C();
  v17 = sub_10001155C();
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  sub_100005900(&qword_100020298, &qword_1000124A0);
  v18 = *(v9 + 16);
  v19 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = v22;
  sub_10001170C();
  sub_10001170C();
  sub_10001156C();
  v20 = sub_10000D160(v15);
  swift_setDeallocating();
  sub_10000D55C(v15 + v14, &qword_100020688, &unk_100013938);
  result = swift_deallocClassInstance();
  qword_1000209F0 = v20;
  return result;
}

uint64_t sub_10000C104()
{
  v0 = sub_100005900(&qword_1000206A0, &qword_100013950);
  sub_100005980(v0, qword_1000209F8);
  sub_100005948(v0, qword_1000209F8);
  sub_100005900(&qword_1000206A8, &qword_100013958);
  v1 = *(sub_100005900(&qword_1000206B0, &qword_100013960) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000125D0;
  sub_10000C3F8();
  sub_1000115DC();
  sub_10000D380(v4);
  swift_setDeallocating();
  sub_10000D55C(v4 + v3, &qword_1000206B0, &qword_100013960);
  swift_deallocClassInstance();
  return sub_1000115EC();
}

unint64_t sub_10000C294()
{
  result = qword_100020610;
  if (!qword_100020610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020610);
  }

  return result;
}

Swift::Int sub_10000C2E8()
{
  sub_10001190C();
  sub_1000118AC();
  return sub_10001191C();
}

Swift::Int sub_10000C344()
{
  sub_10001190C();
  sub_1000118AC();
  return sub_10001191C();
}

uint64_t sub_10000C38C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10001CEB0;
  v7._object = v3;
  v5 = sub_1000118EC(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_10000C3F8()
{
  result = qword_100020618;
  if (!qword_100020618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020618);
  }

  return result;
}

unint64_t sub_10000C450()
{
  result = qword_100020620;
  if (!qword_100020620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020620);
  }

  return result;
}

uint64_t sub_10000C4A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020120 != -1)
  {
    swift_once();
  }

  v2 = sub_100005900(&qword_1000206A0, &qword_100013950);
  v3 = sub_100005948(v2, qword_1000209F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000C55C()
{
  result = qword_100020628;
  if (!qword_100020628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020628);
  }

  return result;
}

unint64_t sub_10000C5B4()
{
  result = qword_100020630;
  if (!qword_100020630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020630);
  }

  return result;
}

uint64_t sub_10000C608()
{
  sub_10000D32C();
  v1 = sub_1000115AC();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000C678()
{
  result = qword_100020638;
  if (!qword_100020638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020638);
  }

  return result;
}

unint64_t sub_10000C6CC()
{
  result = qword_100020640;
  if (!qword_100020640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020640);
  }

  return result;
}

unint64_t sub_10000C724()
{
  result = qword_100020648;
  if (!qword_100020648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020648);
  }

  return result;
}

unint64_t sub_10000C77C()
{
  result = qword_100020650;
  if (!qword_100020650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020650);
  }

  return result;
}

uint64_t sub_10000C80C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100005948(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000C928(uint64_t a1)
{
  v2 = sub_10000C3F8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000C978()
{
  result = qword_100020658;
  if (!qword_100020658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020658);
  }

  return result;
}

unint64_t sub_10000C9D0()
{
  result = qword_100020660;
  if (!qword_100020660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020660);
  }

  return result;
}

unint64_t sub_10000CA28()
{
  result = qword_100020668;
  if (!qword_100020668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020668);
  }

  return result;
}

uint64_t sub_10000CA7C()
{
  if (qword_100020118 != -1)
  {
    swift_once();
  }

  v1 = qword_1000209F0;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_10000CAD8(uint64_t a1)
{
  v2 = sub_10000C77C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000CB28()
{
  result = qword_100020670;
  if (!qword_100020670)
  {
    sub_100001D7C(&qword_100020678, &qword_100013880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirDropSettingsStaticLinks(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirDropSettingsStaticLinks(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000CC94(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10001190C();
  sub_1000118AC();

  v4 = sub_10001191C();

  return sub_10000CD5C(a1, v4);
}

unint64_t sub_10000CD5C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x73746361746E6F63;
          v8 = 0xEC000000796C6E4FLL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x656E6F7972657665;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v7 != 6710895)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE300000000000000;
        v7 = 6710895;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73746361746E6F63;
      }

      else
      {
        v10 = 0x656E6F7972657665;
      }

      if (v9 == 1)
      {
        v11 = 0xEC000000796C6E4FLL;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1000118FC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10000CEEC(uint64_t a1)
{
  v2 = sub_100005900(&qword_1000204E0, &unk_100013158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005900(&qword_1000206D8, &unk_100013980);
    v8 = sub_1000118DC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000D968(v10, v6, &qword_1000204E0, &unk_100013158);
      v12 = *v6;
      result = sub_10000CC94(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001158C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000D0D4(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_10000D100()
{
  v1 = *(v0 + 40);
  sub_10001190C();
  sub_1000118AC();
  v2 = sub_10001191C();

  return sub_10000D0D4(v2);
}

unint64_t sub_10000D160(uint64_t a1)
{
  v2 = sub_100005900(&qword_100020688, &unk_100013938);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005900(&qword_100020690, &qword_100013948);
    v8 = sub_1000118DC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000D968(v9, v6, &qword_100020688, &unk_100013938);
      result = sub_10000D100();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_10001158C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000D32C()
{
  result = qword_100020698;
  if (!qword_100020698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020698);
  }

  return result;
}

unint64_t sub_10000D380(uint64_t a1)
{
  v2 = sub_100005900(&qword_1000206B0, &qword_100013960);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005900(&qword_1000206B8, &qword_100013968);
    v8 = sub_1000118DC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000D968(v9, v6, &qword_1000206B0, &qword_100013960);
      result = sub_10000D100();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_100005900(&qword_1000206C0, &unk_100013970);
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000D55C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005900(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D5BC()
{
  v21 = sub_1000115FC();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005900(&qword_100020270, &qword_100012478);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005900(&qword_100020278, &qword_100012480);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10001171C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005900(&qword_1000206E0, &unk_100013990);
  sub_10001170C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_10001131C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000C3F8();
  return sub_10001137C();
}

unint64_t sub_10000D8C0()
{
  result = qword_1000206C8;
  if (!qword_1000206C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C8);
  }

  return result;
}

unint64_t sub_10000D914()
{
  result = qword_1000206D0;
  if (!qword_1000206D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D0);
  }

  return result;
}

uint64_t sub_10000D968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005900(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000D9E4()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

unint64_t sub_10000DA3C()
{
  result = qword_1000206F0;
  if (!qword_1000206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F0);
  }

  return result;
}

uint64_t sub_10000DA90()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_100020A10);
  sub_100005948(v0, qword_100020A10);
  return sub_10001170C();
}

uint64_t (*sub_10000DAF4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_10000186C;
}

unint64_t sub_10000DB68()
{
  result = qword_1000206F8;
  if (!qword_1000206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F8);
  }

  return result;
}

uint64_t sub_10000DBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010F4C();
  v5 = sub_1000100B0();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000DC2C()
{
  result = qword_100020700;
  if (!qword_100020700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020700);
  }

  return result;
}

unint64_t sub_10000DC84()
{
  result = qword_100020708;
  if (!qword_100020708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020708);
  }

  return result;
}

uint64_t sub_10000DD28(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100010F4C();
  v8 = sub_100010FA0();
  v9 = sub_1000100B0();
  *v6 = v2;
  v6[1] = sub_100001B74;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000DDFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100010C54();
  *a1 = result;
  return result;
}

uint64_t sub_10000DE24(uint64_t a1)
{
  v2 = sub_10000DB68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000DEA8()
{
  v0 = sub_1000116AC();
  sub_100005980(v0, qword_100020A28);
  sub_100005948(v0, qword_100020A28);
  return sub_10001169C();
}

id sub_10000DF0C()
{
  v0 = sub_100005900(&qword_100020290, &unk_100013920);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_100005900(&qword_100020278, &qword_100012480);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_10001171C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001170C();
  sub_10001170C();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_10001154C();
  v13 = sub_10001155C();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100005900(&qword_100020298, &qword_1000124A0);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_1000125D0;
  sub_10001170C();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v17 = result;
    MobileGestalt_get_wapiCapability();

    sub_10001170C();
    return sub_10001156C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E220()
{
  v0 = sub_10001171C();
  sub_100005980(v0, qword_100020A40);
  sub_100005948(v0, qword_100020A40);
  return sub_10001170C();
}

uint64_t sub_10000E284()
{
  v0 = sub_100005900(&qword_1000202F0, &qword_100012518);
  sub_100005980(v0, qword_100020A58);
  v1 = sub_100005948(v0, qword_100020A58);
  sub_1000114BC();
  v2 = sub_1000114CC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000E344()
{
  result = swift_getKeyPath();
  qword_100020A70 = result;
  return result;
}

uint64_t sub_10000E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005900(&qword_1000202C0, &qword_1000124C8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005900(&qword_1000202C8, &qword_1000124D0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005900(&qword_100020808, &qword_100014248) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_10001131C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005900(&qword_100020810, &qword_100014250);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000E54C, 0, 0);
}

uint64_t sub_10000E54C()
{
  v1 = v0[8];
  sub_10001135C();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10000F754();
  *v3 = v0;
  v3[1] = sub_10000E61C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100011174, 0, &type metadata for AirDropUseCellularDataEntity, v4);
}

uint64_t sub_10000E61C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10000E718, 0, 0);
}

uint64_t sub_10000E718()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_10001135C();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_10001135C();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100020148 != -1)
  {
    swift_once();
  }

  v4 = qword_100020A70;
  *(v0 + 176) = qword_100020A70;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100005C50(&qword_1000207F0, &qword_1000207F8, &qword_100014228);
  *v6 = v0;
  v6[1] = sub_10000E878;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_10000E878()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002BAC;
  }

  else
  {
    v5 = sub_10000E9CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000E9CC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_10001135C();
  v0[6] = v0[5];
  v8 = sub_10001168C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000116BC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000B484();
  sub_10000F964();
  sub_1000112EC();
  (*(v2 + 16))(v12, v1, v3);
  sub_10001130C();
  sub_10001132C();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000EC38()
{
  v0 = sub_100005900(&qword_100020818, &qword_100014258);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100020148 != -1)
  {
    swift_once();
  }

  sub_10001153C();

  sub_10000F964();
  sub_100005C50(&qword_100020820, &qword_100020818, &qword_100014258);
  sub_10001152C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_10000EDAC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001134C();
  return sub_100005E14;
}

uint64_t (*sub_10000EE20(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_10001134C();
  return sub_100005E14;
}

uint64_t sub_10000EE94()
{
  if (qword_100020148 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000EEF4()
{
  result = qword_100020720;
  if (!qword_100020720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020720);
  }

  return result;
}

unint64_t sub_10000EF4C()
{
  result = qword_100020728;
  if (!qword_100020728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020728);
  }

  return result;
}

uint64_t sub_10000F078@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020140 != -1)
  {
    swift_once();
  }

  v2 = sub_100005900(&qword_1000202F0, &qword_100012518);
  v3 = sub_100005948(v2, qword_100020A58);

  return sub_100005A90(v3, a1);
}

uint64_t sub_10000F0FC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005DFC;

  return sub_10000E36C(a1, v5, v4);
}

uint64_t sub_10000F1A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000107E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000F1F0()
{
  result = qword_100020730;
  if (!qword_100020730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020730);
  }

  return result;
}

unint64_t sub_10000F248()
{
  result = qword_100020738;
  if (!qword_100020738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020738);
  }

  return result;
}

uint64_t sub_10000F2BC()
{
  v1 = *(v0 + 16);
  sub_1000117AC();
  v2 = sub_10001179C();
  v3 = sub_10001174C();

  *v1 = v3 & 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000F370()
{
  v1 = *(v0 + 16);
  sub_1000117AC();
  v2 = sub_10001179C();
  sub_10001175C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000F3F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10001171C() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000F480, 0, 0);
}

uint64_t sub_10000F480()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100005900(&qword_100020718, qword_100013B40);
  sub_10001170C();
  sub_100005C50(&qword_1000207F0, &qword_1000207F8, &qword_100014228);
  *v2 = sub_1000116FC();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10000F5A0()
{
  result = qword_100020740;
  if (!qword_100020740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020740);
  }

  return result;
}

uint64_t sub_10000F5F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000FBB0();
  *v5 = v2;
  v5[1] = sub_100003820;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10000F6A8()
{
  result = qword_100020748;
  if (!qword_100020748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020748);
  }

  return result;
}

unint64_t sub_10000F700()
{
  result = qword_100020750;
  if (!qword_100020750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020750);
  }

  return result;
}

unint64_t sub_10000F754()
{
  result = qword_100020758;
  if (!qword_100020758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020758);
  }

  return result;
}

uint64_t sub_10000F7A8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000FBB0();
  *v6 = v2;
  v6[1] = sub_100005E38;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000F85C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000FBB0();
  *v5 = v2;
  v5[1] = sub_100005E10;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10000F910()
{
  result = qword_100020760;
  if (!qword_100020760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020760);
  }

  return result;
}

unint64_t sub_10000F964()
{
  result = qword_100020768;
  if (!qword_100020768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020768);
  }

  return result;
}

unint64_t sub_10000F9BC()
{
  result = qword_100020770;
  if (!qword_100020770)
  {
    sub_100001D7C(&qword_100020778, qword_100013DA0);
    sub_10000F964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020770);
  }

  return result;
}

uint64_t sub_10000FA40(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000F5A0();
  *v6 = v2;
  v6[1] = sub_100003F48;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000FAF8()
{
  result = qword_100020780;
  if (!qword_100020780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020780);
  }

  return result;
}

unint64_t sub_10000FB50()
{
  result = qword_100020788;
  if (!qword_100020788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020788);
  }

  return result;
}

unint64_t sub_10000FBB0()
{
  result = qword_100020790;
  if (!qword_100020790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020790);
  }

  return result;
}

unint64_t sub_10000FC08()
{
  result = qword_100020798;
  if (!qword_100020798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020798);
  }

  return result;
}

uint64_t sub_10000FC5C(uint64_t a1)
{
  v2 = sub_10000F754();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000057, 0x8000000100015050, a1, v2);
}

unint64_t sub_10000FCC4()
{
  result = qword_1000207A0;
  if (!qword_1000207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A0);
  }

  return result;
}

unint64_t sub_10000FD1C()
{
  result = qword_1000207A8;
  if (!qword_1000207A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A8);
  }

  return result;
}

unint64_t sub_10000FD78()
{
  result = qword_1000207B0;
  if (!qword_1000207B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B0);
  }

  return result;
}

uint64_t sub_10000FDCC@<X0>(uint64_t *a1@<X8>)
{
  sub_10000F248();
  result = sub_10001133C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000FE0C()
{
  sub_1000100B0();
  v1 = sub_10001160C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000FEF4(uint64_t a1)
{
  v2 = sub_10000F754();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000FF44()
{
  result = qword_1000207C8;
  if (!qword_1000207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C8);
  }

  return result;
}

uint64_t sub_10000FF9C(uint64_t a1)
{
  v2 = sub_10000FD78();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000100B0()
{
  result = qword_1000207E8;
  if (!qword_1000207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E8);
  }

  return result;
}

id sub_100010104@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_100005900(&qword_100020308, &unk_100012590);
  v39 = *(v1 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v35 = sub_100005900(&qword_100020310, &unk_100014300);
  v32 = *(v35 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v35);
  v7 = &v29 - v6;
  v37 = sub_100005900(&qword_100020318, &unk_1000125A0);
  v33 = *(v37 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v37);
  v30 = &v29 - v9;
  v36 = sub_100005900(&qword_100020320, &unk_100014310);
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v36);
  v31 = &v29 - v11;
  swift_getKeyPath();
  sub_100005900(&qword_100020328, qword_1000125B0);
  sub_100005900(&qword_100020330, &unk_100014320);
  sub_10000F248();
  sub_100005C50(&qword_100020338, &qword_100020328, qword_1000125B0);
  sub_100005BD4();
  sub_10001188C();
  sub_1000117DC();
  v12 = sub_100005C50(&qword_100020348, &qword_100020308, &unk_100012590);
  v29 = v7;
  sub_10001180C();

  (*(v39 + 8))(v4, v1);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    MobileGestalt_get_wapiCapability();

    sub_1000117DC();
    if (qword_100020150 != -1)
    {
      swift_once();
    }

    v15 = qword_100020A78;
    v16 = sub_10001183C();
    v18 = v17;
    v20 = v19;
    v40 = v1;
    v41 = v12;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = v29;
    v23 = v30;
    v24 = v35;
    sub_1000117EC();
    sub_100005C98(v16, v18, v20 & 1);

    (*(v32 + 8))(v22, v24);
    v40 = v24;
    v41 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = v31;
    v27 = v37;
    sub_10001181C();
    (*(v33 + 8))(v23, v27);
    v40 = v27;
    v41 = v25;
    swift_getOpaqueTypeConformance2();
    v28 = v36;
    sub_1000117FC();
    return (*(v34 + 8))(v26, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010748()
{
  v0 = sub_1000117DC();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000107E4()
{
  v0 = sub_100005900(&qword_100020268, &qword_100012470);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000115FC();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005900(&qword_100020270, &qword_100012478);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100005900(&qword_100020278, &qword_100012480);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001171C();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100005900(&qword_100020800, &unk_100014230);
  sub_10001170C();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_10001131C();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10000F754();
  v28 = sub_10001138C();
  sub_100005900(&qword_100020288, &unk_100012490);
  sub_10001170C();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000118BC();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001139C();
  return v28;
}

uint64_t sub_100010C54()
{
  v21[0] = sub_1000115FC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005900(&qword_100020270, &qword_100012478);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100005900(&qword_100020278, &qword_100012480);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10001171C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005900(&qword_100020800, &unk_100014230);
  sub_10001170C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10001131C();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_10000F754();
  return sub_10001138C();
}

unint64_t sub_100010F4C()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

unint64_t sub_100010FA0()
{
  result = qword_100020830;
  if (!qword_100020830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020830);
  }

  return result;
}

uint64_t sub_100011020()
{
  sub_100001D7C(&qword_100020320, &unk_100014310);
  sub_100001D7C(&qword_100020318, &unk_1000125A0);
  sub_100001D7C(&qword_100020310, &unk_100014300);
  sub_100001D7C(&qword_100020308, &unk_100012590);
  sub_100005C50(&qword_100020348, &qword_100020308, &unk_100012590);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_1000111C4()
{
  type metadata accessor for FindAirDropSettingsIntentsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100020A78 = result;
  return result;
}