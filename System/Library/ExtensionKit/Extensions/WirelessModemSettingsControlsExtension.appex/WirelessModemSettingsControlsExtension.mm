unint64_t sub_100001644()
{
  result = qword_10001C170;
  if (!qword_10001C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C170);
  }

  return result;
}

uint64_t sub_1000016DC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001724()
{
  v0 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v18 = &v16 - v2;
  v17 = sub_1000116C4();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011714();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000117E4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000116D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_100011644();
  sub_100007CBC(v14, qword_10001C770);
  sub_100007C84(v14, qword_10001C770);
  sub_1000117D4();
  sub_100011704();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  sub_1000116E4();
  (*(v12 + 56))(v18, 1, 1, v11);
  return sub_100011634();
}

uint64_t sub_100001A38()
{
  v0 = sub_1000116D4();
  sub_100007CBC(v0, qword_10001C788);
  sub_100007C84(v0, qword_10001C788);
  return sub_1000116B4();
}

uint64_t sub_100001A9C()
{
  v0 = sub_100007B40(&qword_10001C358, &unk_100013570);
  sub_100007CBC(v0, qword_10001C7A0);
  v1 = sub_100007C84(v0, qword_10001C7A0);
  sub_100011484();
  v2 = sub_100011494();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100001B5C()
{
  result = swift_getKeyPath();
  qword_10001C7B8 = result;
  return result;
}

uint64_t sub_100001BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100007B40(&qword_10001C328, &unk_100013520) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100007B40(&qword_10001C330, &qword_1000127B0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100007B40(&qword_10001C338, &qword_1000127B8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000112B4();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100007B40(&qword_10001C340, &qword_1000127C0);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100001DA8, 0, 0);
}

uint64_t sub_100001DA8()
{
  v1 = v0[8];
  sub_100011304();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10000391C();
  *v3 = v0;
  v3[1] = sub_100001E78;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000822C, 0, &type metadata for AllowOthersToJoinEntity, v4);
}

uint64_t sub_100001E78()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100001F74, 0, 0);
}

uint64_t sub_100001F74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100011304();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100011304();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10001C100 != -1)
  {
    swift_once();
  }

  v4 = qword_10001C7B8;
  *(v0 + 176) = qword_10001C7B8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100007F34(&qword_10001C2C0, &qword_10001C2C8, &qword_100012750);
  *v6 = v0;
  v6[1] = sub_1000020D4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000020D4()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002490;
  }

  else
  {
    v5 = sub_100002228;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002228()
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
  sub_100011304();
  v0[6] = v0[5];
  v8 = sub_100011624();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100011654();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100001644();
  sub_100003CF4();
  sub_100011284();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000112A4();
  sub_1000112C4();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100002490()
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

uint64_t sub_100002558()
{
  v0 = sub_100007B40(&qword_10001C348, &qword_1000127C8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  if (qword_10001C100 != -1)
  {
    swift_once();
  }

  sub_1000114E4();

  sub_100003CF4();
  sub_100007F34(&qword_10001C350, &qword_10001C348, &qword_1000127C8);
  sub_1000114D4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000026CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100011304();
  *a1 = v5;
  return result;
}

uint64_t sub_100002708(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_100011314();
}

uint64_t (*sub_100002750(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000112F4();
  return sub_1000027C4;
}

uint64_t sub_1000027C8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100011304();
  *a1 = v5;
  return result;
}

uint64_t sub_100002804(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100011314();
}

uint64_t (*sub_10000283C(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000112F4();
  return sub_100008238;
}

uint64_t sub_1000028B0()
{
  if (qword_10001C100 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100002934()
{
  result = qword_10001C188;
  if (!qword_10001C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C188);
  }

  return result;
}

unint64_t sub_10000298C()
{
  result = qword_10001C190;
  if (!qword_10001C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C190);
  }

  return result;
}

uint64_t sub_100002A78@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C0F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007B40(&qword_10001C358, &unk_100013570);
  v3 = sub_100007C84(v2, qword_10001C7A0);

  return sub_100007F7C(v3, a1);
}

uint64_t sub_100002AFC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008218;

  return sub_100001BC8(a1, v5, v4);
}

uint64_t sub_100002BA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100002BF0()
{
  result = qword_10001C198;
  if (!qword_10001C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C198);
  }

  return result;
}

unint64_t sub_100002C48()
{
  result = qword_10001C1A0;
  if (!qword_10001C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A0);
  }

  return result;
}

uint64_t sub_100002CBC()
{
  v1 = *(v0 + 16);
  WiFiManagerClientCreate();
  *v1 = WiFiManagerClientGetMISDiscoveryState() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002D38(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008218;

  return sub_1000057AC(v3);
}

uint64_t sub_100002DCC(void *a1)
{
  v2 = sub_100007B40(&qword_10001C318, &qword_100012798);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = swift_projectBox();
  swift_beginAccess();
  result = (*(v3 + 48))(v7, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v6, v7, v2);
    v10 = a1;
    v9 = a1;
    sub_100011834();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_100002F18(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100002F80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100007B40(&qword_10001C318, &qword_100012798);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v20 = &v19 - v9;
  v10 = sub_100007B40(&qword_10001C310, &qword_100012790);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = *(v7 + 16);
  v14(&v19 - v12, a1, v6);
  (*(v7 + 56))(v13, 0, 1, v6);
  swift_beginAccess();
  sub_100007ECC(v13, a2, &qword_10001C310, &qword_100012790);
  v23[0] = 0;
  if ([a3 setPower:1 error:v23])
  {

    return _objc_retain_x1();
  }

  else
  {
    v21 = v23[0];
    v15 = v23[0];
    v16 = sub_1000116A4();

    swift_willThrow();
    swift_beginAccess();
    if ((*(v7 + 48))(a2, 1, v6))
    {
    }

    else
    {
      v17 = v20;
      v14(v20, a2, v6);
      v22 = v16;
      sub_100011824();
      return (*(v7 + 8))(v17, v6);
    }
  }
}

uint64_t sub_100003260(int a1)
{
  v2 = sub_100007B40(&qword_10001C2E0, &qword_100012770);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  v7 = swift_projectBox();
  if (a1 == 1001)
  {
    v8 = v7;
    swift_beginAccess();
    if (!(*(v3 + 48))(v8, 1, v2))
    {
      (*(v3 + 16))(v6, v8, v2);
      v10[1] = 1001;
      sub_100011834();
      (*(v3 + 8))(v6, v2);
    }
  }

  return 0;
}

uint64_t sub_1000033B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

xpc_object_t sub_100003420(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007B40(&qword_10001C2D8, &qword_100012768);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_100007B40(&qword_10001C2E0, &qword_100012770);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_100007ECC(v7, a2, &qword_10001C2D8, &qword_100012768);
  result = xpc_dictionary_create_empty();
  if (netrbClientDeviceType)
  {
    xpc_dictionary_set_uint64(result, netrbClientDeviceType, 1uLL);
    _NETRBClientStartService();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000035A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008230;

  return sub_100007544();
}

unint64_t sub_100003650()
{
  result = qword_10001C1A8;
  if (!qword_10001C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A8);
  }

  return result;
}

uint64_t sub_1000036A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100004038();
  *v5 = v2;
  v5[1] = sub_100003754;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100003754(uint64_t a1)
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

unint64_t sub_10000386C()
{
  result = qword_10001C1B0;
  if (!qword_10001C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B0);
  }

  return result;
}

unint64_t sub_1000038C4()
{
  result = qword_10001C1B8;
  if (!qword_10001C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B8);
  }

  return result;
}

unint64_t sub_10000391C()
{
  result = qword_10001C1C0;
  if (!qword_10001C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C0);
  }

  return result;
}

uint64_t sub_100003974(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100004038();
  *v6 = v2;
  v6[1] = sub_100008264;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100003A28(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100004038();
  *v5 = v2;
  v5[1] = sub_100008230;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100003AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003B98;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003B98(uint64_t a1)
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

unint64_t sub_100003C9C()
{
  result = qword_10001C1C8;
  if (!qword_10001C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C8);
  }

  return result;
}

unint64_t sub_100003CF4()
{
  result = qword_10001C1D0;
  if (!qword_10001C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1D0);
  }

  return result;
}

unint64_t sub_100003D4C()
{
  result = qword_10001C1D8;
  if (!qword_10001C1D8)
  {
    sub_1000016DC(&qword_10001C1E0, qword_100012080);
    sub_100003CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1D8);
  }

  return result;
}

uint64_t sub_100003DD0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003650();
  *v6 = v2;
  v6[1] = sub_100003E84;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003E84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003E84;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100004038()
{
  result = qword_10001C1E8;
  if (!qword_10001C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E8);
  }

  return result;
}

unint64_t sub_100004090()
{
  result = qword_10001C1F0;
  if (!qword_10001C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1F0);
  }

  return result;
}

uint64_t sub_1000040E4(uint64_t a1)
{
  v2 = sub_10000391C();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000045, 0x8000000100013F30, a1, v2);
}

unint64_t sub_10000414C()
{
  result = qword_10001C1F8;
  if (!qword_10001C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1F8);
  }

  return result;
}

unint64_t sub_1000041A4()
{
  result = qword_10001C200;
  if (!qword_10001C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C200);
  }

  return result;
}

unint64_t sub_1000041FC()
{
  result = qword_10001C208;
  if (!qword_10001C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C208);
  }

  return result;
}

uint64_t sub_10000425C()
{
  sub_100007C30();
  v1 = sub_1000115A4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000042CC()
{
  result = qword_10001C210;
  if (!qword_10001C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C210);
  }

  return result;
}

unint64_t sub_100004324()
{
  result = qword_10001C218;
  if (!qword_10001C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C218);
  }

  return result;
}

unint64_t sub_10000437C()
{
  result = qword_10001C220;
  if (!qword_10001C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C220);
  }

  return result;
}

uint64_t sub_1000043DC@<X0>(uint64_t *a1@<X8>)
{
  sub_100002C48();
  result = sub_1000112E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004498(uint64_t a1)
{
  v2 = sub_10000391C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000044E8()
{
  result = qword_10001C238;
  if (!qword_10001C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C238);
  }

  return result;
}

uint64_t sub_10000453C(uint64_t a1)
{
  v2 = sub_100002C48();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100004588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100008218;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000464C(uint64_t a1)
{
  v2 = sub_10000437C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000469C()
{
  result = qword_10001C240;
  if (!qword_10001C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C240);
  }

  return result;
}

uint64_t sub_1000046F0()
{
  v0 = sub_1000116D4();
  sub_100007CBC(v0, qword_10001C7C0);
  sub_100007C84(v0, qword_10001C7C0);
  return sub_1000116B4();
}

uint64_t (*sub_100004788(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000112F4();
  return sub_100008238;
}

void sub_1000047FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004848()
{
  result = qword_10001C248;
  if (!qword_10001C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C248);
  }

  return result;
}

unint64_t sub_10000489C()
{
  result = qword_10001C250;
  if (!qword_10001C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C250);
  }

  return result;
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007B88();
  v5 = sub_100007C30();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000495C()
{
  v0 = qword_10001C110;

  return v0;
}

unint64_t sub_100004998()
{
  result = qword_10001C258;
  if (!qword_10001C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C258);
  }

  return result;
}

unint64_t sub_1000049F0()
{
  result = qword_10001C260;
  if (!qword_10001C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C260);
  }

  return result;
}

uint64_t sub_100004AEC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100007C84(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100004BA8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100007B88();
  v8 = sub_100007BDC();
  v9 = sub_100007C30();
  *v6 = v2;
  v6[1] = sub_100004C7C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100004C7C()
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

uint64_t sub_100004D84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007848();
  *a1 = result;
  return result;
}

uint64_t sub_100004DAC(uint64_t a1)
{
  v2 = sub_100004848();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100004E18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004E24(uint64_t *a1, int a2)
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

uint64_t sub_100004E6C(uint64_t result, int a2, int a3)
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

id sub_100004F40(char a1)
{
  v2 = sub_1000116C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011714();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000117E4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  result = MobileGestalt_get_current_device();
  v12 = result;
  if (!a1)
  {
    if (result)
    {
      goto LABEL_8;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
LABEL_8:
    MobileGestalt_get_wapiCapability();

    sub_1000117D4();
    sub_100011704();
    (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    return sub_1000116F4();
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Int sub_100005248()
{
  v1 = *v0;
  sub_100011914();
  sub_100011924(v1);
  return sub_100011934();
}

Swift::Int sub_1000052BC()
{
  v1 = *v0;
  sub_100011914();
  sub_100011924(v1);
  return sub_100011934();
}

_DWORD *sub_10000532C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100005348()
{
  v0 = (*(*(sub_100007B40(&qword_10001C298, &qword_100012728) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v33 = &v25 - v1;
  v34 = sub_100011594();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_100007B40(&qword_10001C280, &unk_100012710) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - v14;
  v16 = sub_1000116D4();
  v32 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v26 = sub_100007B40(&qword_10001C290, &qword_100012720);
  sub_1000116B4();
  v19 = *(v17 + 56);
  v30 = v17 + 56;
  v31 = v19;
  v19(v15, 1, 1, v16);
  v36 = 0;
  v20 = sub_1000112B4();
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v22;
  v22(v5);
  sub_10000391C();
  v26 = sub_100011334();
  sub_100007B40(&qword_10001C2A0, &qword_100012730);
  sub_1000116B4();
  v31(v15, 1, 1, v32);
  v35 = 2;
  v23 = sub_100011814();
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v21(v11, 1, 1, v20);
  v28(v5, v29, v34);
  sub_100011344();
  return v26;
}

uint64_t sub_1000057AC(char a1)
{
  *(v1 + 369) = a1;
  v2 = *(*(sub_100007B40(&qword_10001C2D0, &qword_100012760) - 8) + 64) + 15;
  *(v1 + 216) = swift_task_alloc();
  v3 = sub_100011864();
  *(v1 + 224) = v3;
  v4 = *(v3 - 8);
  *(v1 + 232) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_1000058D0, 0, 0);
}

uint64_t sub_1000058D0()
{
  v1 = *(v0 + 369);
  *(v0 + 248) = WiFiManagerClientCreate();
  if (v1 != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1000117F4();
  v3 = _CTServerConnectionCreateWithIdentifier();

  if (!v3)
  {
    goto LABEL_17;
  }

  *(v0 + 368) = 1;
  _CTServerConnectionGetCellularDataIsEnabled();
  if (!*(v0 + 368))
  {
    _CTServerConnectionSetCellularDataIsEnabled();
  }

  if (!WiFiManagerClientIsTetheringSupported())
  {
LABEL_17:
    sub_100007D5C();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
LABEL_18:
    v34 = *(v0 + 240);
    v35 = *(v0 + 216);

    v32 = *(v0 + 8);
LABEL_19:

    return v32();
  }

  v4 = objc_opt_self();
  *(v0 + 256) = v4;
  v5 = [v4 sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_32;
  }

  v8 = v5;
  v9 = [v5 enabled];

  v10 = [objc_allocWithZone(CWFInterface) init];
  *(v0 + 264) = v10;
  v11 = [v10 powerOn];
  *(v0 + 370) = v11;
  if ((v9 & 1) == 0)
  {
    v36 = [objc_opt_self() defaultCenter];
    *(v0 + 272) = sub_100011874();

    v5 = [v4 sharedInstance];
    if (v5)
    {
      v37 = v5;
      v38 = *(v0 + 240);
      [v5 setPowered:1];

      sub_100011854();
      v39 = sub_100007DB0();
      v40 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v41 = swift_task_alloc();
      *(v0 + 280) = v41;
      *v41 = v0;
      v41[1] = sub_1000061D8;
      v42 = *(v0 + 240);
      v5 = *(v0 + 216);
      v6 = *(v0 + 224);
      v7 = v39;

      return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v7);
    }

LABEL_32:
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v7);
  }

  v12 = *(v0 + 264);
  if (v11)
  {

LABEL_10:
    sub_100007B40(&qword_10001C2D8, &qword_100012768);
    v13 = swift_allocBox();
    v15 = v14;
    *(v0 + 328) = v13;
    v16 = sub_100007B40(&qword_10001C2E0, &qword_100012770);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    *(v0 + 128) = sub_100007D20;
    *(v0 + 136) = v13;
    *(v0 + 96) = _NSConcreteStackBlock;
    *(v0 + 104) = 1107296256;
    *(v0 + 112) = sub_1000033B4;
    *(v0 + 120) = &unk_100019198;
    v17 = _Block_copy((v0 + 96));
    v18 = *(v0 + 136);

    v19 = _NETRBClientCreate();
    *(v0 + 336) = v19;
    _Block_release(v17);
    if (v19)
    {
      *(v0 + 360) = 1021;
      if (_NETRBClientGetGlobalServiceState())
      {
        if (*(v0 + 360) <= 0x3FDu)
        {
          v20 = swift_task_alloc();
          *(v0 + 344) = v20;
          *(v20 + 16) = v15;
          *(v20 + 24) = v19;
          v21 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
          v22 = swift_task_alloc();
          *(v0 + 352) = v22;
          type metadata accessor for response(0);
          *v22 = v0;
          v22[1] = sub_100007178;

          return withCheckedContinuation<A>(isolation:function:_:)(v0 + 364, 0, 0, 0xD000000000000017, 0x8000000100012690, sub_100007D40, v20, v23);
        }
      }
    }

    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 216);
    v29 = *(v0 + 369);
    _NETRBClientSetGlobalServiceState();
    sub_100007B40(&qword_10001C2E8, &qword_100012778);
    inited = swift_initStackObject();
    strcpy((inited + 32), "SOFTAP_ENABLE");
    *(inited + 16) = xmmword_100011DD0;
    *(inited + 46) = -4864;
    *(inited + 48) = v29;
    *(inited + 56) = 0xD000000000000018;
    *(inited + 64) = 0x8000000100013FA0;
    *(inited + 72) = 1;
    sub_10000F84C(inited);
    swift_setDeallocating();
    sub_100007B40(&qword_10001C2F0, &qword_100012780);
    swift_arrayDestroy();
    isa = sub_1000117C4().super.isa;

    WiFiManagerClientSetMISDiscoveryStateExt();

    v32 = *(v0 + 8);
    goto LABEL_19;
  }

  sub_100007B40(&qword_10001C310, &qword_100012790);
  v43 = swift_allocBox();
  v45 = v44;
  *(v0 + 296) = v43;
  v46 = sub_100007B40(&qword_10001C318, &qword_100012798);
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  *(v0 + 176) = sub_100007E08;
  *(v0 + 184) = v43;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_100002F18;
  *(v0 + 168) = &unk_1000191C0;
  v47 = _Block_copy((v0 + 144));
  v48 = *(v0 + 184);

  [v12 setEventHandler:v47];
  _Block_release(v47);
  *(v0 + 200) = 0;
  v49 = [v12 startMonitoringEventType:1 error:v0 + 200];
  v50 = *(v0 + 200);
  if (!v49)
  {
    v57 = *(v0 + 264);
    v58 = v50;
    sub_1000116A4();

    swift_willThrow();

    goto LABEL_18;
  }

  v51 = *(v0 + 264);
  v52 = swift_task_alloc();
  *(v0 + 304) = v52;
  *(v52 + 16) = v45;
  *(v52 + 24) = v51;
  v53 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v54 = v50;
  v55 = swift_task_alloc();
  *(v0 + 312) = v55;
  v56 = sub_100007E18();
  *v55 = v0;
  v55[1] = sub_100006C0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 208, 0, 0, 0xD000000000000017, 0x8000000100012690, sub_100007E10, v52, v56);
}

uint64_t sub_1000061D8()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_100006B54;
  }

  else
  {
    v3 = sub_100006318;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100006318()
{

  return _swift_task_switch(sub_1000063A4, 0, 0);
}

uint64_t sub_1000063A4()
{
  v1 = *(v0 + 216);
  v2 = sub_100011694();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 272);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    goto LABEL_6;
  }

  v4 = [*(v0 + 256) sharedInstance];
  if (!v4)
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = v4;
  v13 = *(v0 + 256);
  [v4 setDiscoverable:1];

  v4 = [v13 sharedInstance];
  if (!v4)
  {
LABEL_23:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v14 = v4;
  v15 = *(v0 + 272);
  v17 = *(v0 + 232);
  v16 = *(v0 + 240);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  [v4 setConnectable:1];

  (*(v17 + 8))(v16, v18);
  sub_100007E64(v19);
LABEL_6:
  v20 = *(v0 + 264);
  if (*(v0 + 370))
  {

    sub_100007B40(&qword_10001C2D8, &qword_100012768);
    v21 = swift_allocBox();
    v23 = v22;
    *(v0 + 328) = v21;
    v24 = sub_100007B40(&qword_10001C2E0, &qword_100012770);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    *(v0 + 128) = sub_100007D20;
    *(v0 + 136) = v21;
    *(v0 + 96) = _NSConcreteStackBlock;
    *(v0 + 104) = 1107296256;
    *(v0 + 112) = sub_1000033B4;
    *(v0 + 120) = &unk_100019198;
    v25 = _Block_copy((v0 + 96));
    v26 = *(v0 + 136);

    v27 = _NETRBClientCreate();
    *(v0 + 336) = v27;
    _Block_release(v25);
    if (v27)
    {
      *(v0 + 360) = 1021;
      if (_NETRBClientGetGlobalServiceState())
      {
        if (*(v0 + 360) <= 0x3FDu)
        {
          v28 = swift_task_alloc();
          *(v0 + 344) = v28;
          *(v28 + 16) = v23;
          *(v28 + 24) = v27;
          v29 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
          v30 = swift_task_alloc();
          *(v0 + 352) = v30;
          type metadata accessor for response(0);
          *v30 = v0;
          v30[1] = sub_100007178;
          v11 = v31;
          v9 = sub_100007D40;
          v4 = (v0 + 364);
          v8 = 0x8000000100012690;
          v5 = 0;
          v6 = 0;
          v7 = 0xD000000000000017;
          v10 = v28;

          return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, v8, v9, v10, v11);
        }
      }
    }

    v47 = *(v0 + 328);
    v46 = *(v0 + 336);
    v48 = *(v0 + 240);
    v49 = *(v0 + 248);
    v50 = *(v0 + 216);
    v51 = *(v0 + 369);
    _NETRBClientSetGlobalServiceState();
    sub_100007B40(&qword_10001C2E8, &qword_100012778);
    inited = swift_initStackObject();
    strcpy((inited + 32), "SOFTAP_ENABLE");
    *(inited + 16) = xmmword_100011DD0;
    *(inited + 46) = -4864;
    *(inited + 48) = v51;
    *(inited + 56) = 0xD000000000000018;
    *(inited + 64) = 0x8000000100013FA0;
    *(inited + 72) = 1;
    sub_10000F84C(inited);
    swift_setDeallocating();
    sub_100007B40(&qword_10001C2F0, &qword_100012780);
    swift_arrayDestroy();
    isa = sub_1000117C4().super.isa;

    WiFiManagerClientSetMISDiscoveryStateExt();

    v54 = *(v0 + 8);
    goto LABEL_19;
  }

  sub_100007B40(&qword_10001C310, &qword_100012790);
  v32 = swift_allocBox();
  v34 = v33;
  *(v0 + 296) = v32;
  v35 = sub_100007B40(&qword_10001C318, &qword_100012798);
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  *(v0 + 176) = sub_100007E08;
  *(v0 + 184) = v32;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_100002F18;
  *(v0 + 168) = &unk_1000191C0;
  v36 = _Block_copy((v0 + 144));
  v37 = *(v0 + 184);

  [v20 setEventHandler:v36];
  _Block_release(v36);
  *(v0 + 200) = 0;
  v38 = [v20 startMonitoringEventType:1 error:v0 + 200];
  v39 = *(v0 + 200);
  if (!v38)
  {
    v55 = *(v0 + 264);
    v56 = v39;
    sub_1000116A4();

    swift_willThrow();

    v57 = *(v0 + 240);
    v58 = *(v0 + 216);

    v54 = *(v0 + 8);
LABEL_19:

    return v54();
  }

  v40 = *(v0 + 264);
  v41 = swift_task_alloc();
  *(v0 + 304) = v41;
  *(v41 + 16) = v34;
  *(v41 + 24) = v40;
  v42 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v43 = v39;
  v44 = swift_task_alloc();
  *(v0 + 312) = v44;
  v45 = sub_100007E18();
  *v44 = v0;
  v44[1] = sub_100006C0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 208, 0, 0, 0xD000000000000017, 0x8000000100012690, sub_100007E10, v41, v45);
}

uint64_t sub_100006B54()
{
  *(v0 + 192) = *(v0 + 288);
  sub_100007B40(&qword_10001C308, &qword_100012788);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100006C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_100007484;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_100006D68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100006D68()
{
  v1 = *(v0 + 296);

  sub_100007B40(&qword_10001C2D8, &qword_100012768);
  v2 = swift_allocBox();
  v4 = v3;
  *(v0 + 328) = v2;
  v5 = sub_100007B40(&qword_10001C2E0, &qword_100012770);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  *(v0 + 128) = sub_100007D20;
  *(v0 + 136) = v2;
  *(v0 + 96) = _NSConcreteStackBlock;
  *(v0 + 104) = 1107296256;
  *(v0 + 112) = sub_1000033B4;
  *(v0 + 120) = &unk_100019198;
  v6 = _Block_copy((v0 + 96));
  v7 = *(v0 + 136);

  v8 = _NETRBClientCreate();
  *(v0 + 336) = v8;
  _Block_release(v6);
  if (v8 && (*(v0 + 360) = 1021, _NETRBClientGetGlobalServiceState()) && *(v0 + 360) <= 0x3FDu)
  {
    v9 = swift_task_alloc();
    *(v0 + 344) = v9;
    *(v9 + 16) = v4;
    *(v9 + 24) = v8;
    v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    *(v0 + 352) = v11;
    type metadata accessor for response(0);
    *v11 = v0;
    v11[1] = sub_100007178;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 364, 0, 0, 0xD000000000000017, 0x8000000100012690, sub_100007D40, v9, v12);
  }

  else
  {
    v14 = *(v0 + 328);
    v13 = *(v0 + 336);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v17 = *(v0 + 216);
    v18 = *(v0 + 369);
    _NETRBClientSetGlobalServiceState();
    sub_100007B40(&qword_10001C2E8, &qword_100012778);
    inited = swift_initStackObject();
    strcpy((inited + 32), "SOFTAP_ENABLE");
    *(inited + 16) = xmmword_100011DD0;
    *(inited + 46) = -4864;
    *(inited + 48) = v18;
    *(inited + 56) = 0xD000000000000018;
    *(inited + 64) = 0x8000000100013FA0;
    *(inited + 72) = 1;
    sub_10000F84C(inited);
    swift_setDeallocating();
    sub_100007B40(&qword_10001C2F0, &qword_100012780);
    swift_arrayDestroy();
    isa = sub_1000117C4().super.isa;

    WiFiManagerClientSetMISDiscoveryStateExt();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100007178()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return _swift_task_switch(sub_1000072BC, 0, 0);
}

uint64_t sub_1000072BC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 216);
  v6 = *(v0 + 369);
  _NETRBClientSetGlobalServiceState();
  sub_100007B40(&qword_10001C2E8, &qword_100012778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100011DD0;
  strcpy((inited + 32), "SOFTAP_ENABLE");
  *(inited + 46) = -4864;
  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x8000000100013FA0;
  *(inited + 72) = 1;
  sub_10000F84C(inited);
  swift_setDeallocating();
  sub_100007B40(&qword_10001C2F0, &qword_100012780);
  swift_arrayDestroy();
  isa = sub_1000117C4().super.isa;

  WiFiManagerClientSetMISDiscoveryStateExt();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100007484()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  v3 = *(v0 + 320);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100007544()
{
  v1 = sub_1000116C4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_100011714() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_1000117E4() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_1000116D4() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_100007684, 0, 0);
}

uint64_t sub_100007684()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100007B40(&qword_10001C180, qword_100011DE0);
  sub_1000117D4();
  sub_100011704();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000116F4();
  sub_100007F34(&qword_10001C2C0, &qword_10001C2C8, &qword_100012750);
  v7 = sub_100011684();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_100007848()
{
  v21[0] = sub_100011594();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007B40(&qword_10001C280, &unk_100012710);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_1000116D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007B40(&qword_10001C290, &qword_100012720);
  sub_1000116B4();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_1000112B4();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_10000391C();
  return sub_100011334();
}

uint64_t sub_100007B40(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100007B88()
{
  result = qword_10001C2A8;
  if (!qword_10001C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A8);
  }

  return result;
}

unint64_t sub_100007BDC()
{
  result = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B0);
  }

  return result;
}

unint64_t sub_100007C30()
{
  result = qword_10001C2B8;
  if (!qword_10001C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B8);
  }

  return result;
}

uint64_t sub_100007C84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007CBC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100007D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100007D5C()
{
  result = qword_10001C2F8;
  if (!qword_10001C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2F8);
  }

  return result;
}

unint64_t sub_100007DB0()
{
  result = qword_10001C300;
  if (!qword_10001C300)
  {
    sub_100011864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C300);
  }

  return result;
}

unint64_t sub_100007E18()
{
  result = qword_10001C320;
  if (!qword_10001C320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C320);
  }

  return result;
}

uint64_t sub_100007E64(uint64_t a1)
{
  v2 = sub_100007B40(&qword_10001C2D0, &qword_100012760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007ECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007B40(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007F34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000016DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007B40(&qword_10001C358, &unk_100013570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PersonalHotspotTetheringError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalHotspotTetheringError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100008170(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000081C0()
{
  result = qword_10001C370;
  if (!qword_10001C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C370);
  }

  return result;
}

uint64_t sub_100008268(uint64_t a1)
{
  v54 = a1;
  v46 = sub_100011364();
  v52 = *(v46 - 8);
  v1 = *(v52 + 64);
  __chkstk_darwin(v46);
  v45 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100007B40(&qword_10001C3F8, &qword_100012B70);
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v53);
  v6 = v35 - v5;
  v7 = sub_100007B40(&qword_10001C400, &qword_100012B78);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_100001644();
  sub_100011424();
  v57._countAndFlagsBits = 0x206E727554;
  v57._object = 0xE500000000000000;
  sub_100011414(v57);
  swift_getKeyPath();
  v55 = sub_10000A670();
  sub_100011354();

  sub_100011404();

  v58._countAndFlagsBits = 0xD000000000000016;
  v58._object = 0x8000000100014210;
  sub_100011414(v58);
  sub_100011434();
  v44 = sub_100011384();
  v10 = v3 + 8;
  v56 = *(v3 + 8);
  v11 = v53;
  v56(v6, v53);
  v51 = v10;
  sub_100011424();
  v59._countAndFlagsBits = 0xD00000000000001CLL;
  v59._object = 0x8000000100014230;
  sub_100011414(v59);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v60._countAndFlagsBits = 46;
  v60._object = 0xE100000000000000;
  sub_100011414(v60);
  sub_100011434();
  v43 = sub_100011384();
  v56(v6, v11);
  sub_100011424();
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_100011414(v61);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v62._countAndFlagsBits = 0xD000000000000019;
  v62._object = 0x8000000100014250;
  sub_100011414(v62);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = v52;
  v13 = *(v52 + 104);
  v49 = v52 + 104;
  v50 = v13;
  v15 = v45;
  v14 = v46;
  v13(v45);
  sub_1000113F4();
  v16 = *(v12 + 8);
  v52 = v12 + 8;
  v48 = v16;
  v16(v15, v14);
  v63._countAndFlagsBits = 46;
  v63._object = 0xE100000000000000;
  sub_100011414(v63);
  sub_100011434();
  v42 = sub_100011384();
  v17 = v6;
  v18 = v11;
  v19 = v56;
  v56(v6, v18);
  sub_100011424();
  v64._countAndFlagsBits = 0x206E727554;
  v64._object = 0xE500000000000000;
  sub_100011414(v64);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v65._countAndFlagsBits = 0x746F7073746F6820;
  v65._object = 0xE90000000000002ELL;
  sub_100011414(v65);
  sub_100011434();
  v41 = sub_100011384();
  v19(v6, v53);
  sub_100011424();
  v66._countAndFlagsBits = 0x206E727554;
  v66._object = 0xE500000000000000;
  sub_100011414(v66);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v67._countAndFlagsBits = 0x6972656874657420;
  v67._object = 0xEB000000002E676ELL;
  sub_100011414(v67);
  sub_100011434();
  v40 = sub_100011384();
  v20 = v53;
  v56(v17, v53);
  sub_100011424();
  v68._countAndFlagsBits = 0x73746F6820746553;
  v68._object = 0xEF206F7420746F70;
  sub_100011414(v68);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v69._countAndFlagsBits = 46;
  v69._object = 0xE100000000000000;
  sub_100011414(v69);
  sub_100011434();
  v39 = sub_100011384();
  v21 = v56;
  v56(v17, v20);
  sub_100011424();
  v70._object = 0x8000000100014270;
  v70._countAndFlagsBits = 0xD000000000000011;
  sub_100011414(v70);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  sub_100011414(v71);
  v36 = v17;
  sub_100011434();
  v35[1] = v9;
  v38 = sub_100011384();
  v22 = v17;
  v23 = v53;
  v21(v22, v53);
  sub_100011424();
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  sub_100011414(v72);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v73._object = 0xEC000000206E6920;
  v73._countAndFlagsBits = 0x746F7073746F6820;
  sub_100011414(v73);
  v24 = v45;
  v25 = v46;
  v50(v45, v47, v46);
  sub_1000113F4();
  v48(v24, v25);
  v74._countAndFlagsBits = 46;
  v74._object = 0xE100000000000000;
  sub_100011414(v74);
  v26 = v36;
  sub_100011434();
  v37 = sub_100011384();
  v56(v26, v23);
  sub_100011424();
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_100011414(v75);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v76._object = 0xEE00206E6920676ELL;
  v76._countAndFlagsBits = 0x6972656874657420;
  sub_100011414(v76);
  v50(v24, v47, v25);
  sub_1000113F4();
  v48(v24, v25);
  v77._countAndFlagsBits = 46;
  v77._object = 0xE100000000000000;
  sub_100011414(v77);
  sub_100011434();
  v27 = sub_100011384();
  v56(v26, v53);
  sub_100007B40(&qword_10001C408, &unk_100012B80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000129A0;
  v29 = v43;
  *(v28 + 32) = v44;
  *(v28 + 40) = v29;
  v30 = v41;
  *(v28 + 48) = v42;
  *(v28 + 56) = v30;
  v31 = v39;
  *(v28 + 64) = v40;
  *(v28 + 72) = v31;
  v32 = v37;
  *(v28 + 80) = v38;
  *(v28 + 88) = v32;
  *(v28 + 96) = v27;
  v33 = sub_100011374();

  return v33;
}

uint64_t sub_100008DE4(uint64_t a1)
{
  v29 = a1;
  v1 = sub_100011364();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  __chkstk_darwin(v1);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007B40(&qword_10001C3E0, &qword_100012B30);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v7 = &v20 - v6;
  v8 = sub_100007B40(&qword_10001C3E8, &qword_100012B38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_10000A4B4();
  sub_100011424();
  v30._countAndFlagsBits = 0x206E727554;
  v30._object = 0xE500000000000000;
  sub_100011414(v30);
  swift_getKeyPath();
  v28 = sub_10000A670();
  sub_100011354();

  sub_100011404();

  v31._object = 0x80000001000141B0;
  v31._countAndFlagsBits = 0xD000000000000018;
  sub_100011414(v31);
  sub_100011434();
  v23 = sub_100011384();
  v10 = *(v4 + 8);
  v10(v7, v27);
  v21 = v10;
  sub_100011424();
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x80000001000141D0;
  sub_100011414(v32);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v33._countAndFlagsBits = 46;
  v33._object = 0xE100000000000000;
  sub_100011414(v33);
  sub_100011434();
  v22 = sub_100011384();
  v11 = v27;
  v10(v7, v27);
  sub_100011424();
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100011414(v34);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v35._countAndFlagsBits = 0xD00000000000001BLL;
  v35._object = 0x80000001000141F0;
  sub_100011414(v35);
  v13 = v24;
  v12 = v25;
  v14 = v26;
  (*(v25 + 104))(v24, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v26);
  sub_1000113F4();
  (*(v12 + 8))(v13, v14);
  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  sub_100011414(v36);
  sub_100011434();
  v15 = sub_100011384();
  v21(v7, v11);
  sub_100007B40(&qword_10001C3F0, &qword_100012B40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000129B0;
  v17 = v22;
  *(v16 + 32) = v23;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_100011374();

  return v18;
}

uint64_t sub_100009310()
{
  v0 = sub_1000113A4();
  v1 = sub_1000113A4();
  v2 = sub_1000113A4();
  v3 = sub_1000113A4();
  sub_100007B40(&qword_10001C3A0, &qword_100012AA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000129C0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100011394();

  return v5;
}

uint64_t sub_1000093E0(uint64_t a1)
{
  v24 = a1;
  v1 = sub_100007B40(&qword_10001C3C0, &qword_100012AF0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - v4;
  v6 = sub_100011364();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007B40(&qword_10001C3C8, &qword_100012AF8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_100004848();
  sub_100011424();
  v28._countAndFlagsBits = 0x206E65704FLL;
  v28._object = 0xE500000000000000;
  sub_100011414(v28);
  swift_getKeyPath();
  v23 = sub_100003CF4();
  sub_100011354();

  sub_100011404();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_100011414(v29);
  (*(v7 + 104))(v10, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v6);
  sub_1000113F4();
  (*(v7 + 8))(v10, v6);
  v30._countAndFlagsBits = 0x6E69747465532029;
  v30._object = 0xEA00000000007367;
  sub_100011414(v30);
  sub_100011434();
  v25 = sub_100011384();
  v13 = v26;
  v21 = *(v27 + 8);
  v27 += 8;
  v21(v5, v26);
  sub_100011424();
  v31._countAndFlagsBits = 0x206E65704FLL;
  v31._object = 0xE500000000000000;
  sub_100011414(v31);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v32._countAndFlagsBits = 0x676E697474657320;
  v32._object = 0xE800000000000000;
  sub_100011414(v32);
  sub_100011434();
  v22 = sub_100011384();
  v14 = v21;
  v21(v5, v13);
  sub_100011424();
  v33._countAndFlagsBits = 0x20656D20656B6154;
  v33._object = 0xEB00000000206F74;
  sub_100011414(v33);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v34._countAndFlagsBits = 0x676E697474657320;
  v34._object = 0xE800000000000000;
  sub_100011414(v34);
  sub_100011434();
  v15 = sub_100011384();
  v14(v5, v26);
  sub_100007B40(&qword_10001C3D0, &qword_100012B00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000129B0;
  v17 = v22;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_100011374();

  return v18;
}

uint64_t sub_100009930()
{
  v0 = sub_1000113A4();
  sub_100007B40(&qword_10001C3A0, &qword_100012AA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000129D0;
  *(v1 + 32) = v0;
  v2 = sub_100011394();

  return v2;
}

uint64_t sub_1000099B4(uint64_t a1)
{
  v24 = a1;
  v1 = sub_100007B40(&qword_10001C3A8, &qword_100012AB0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - v4;
  v6 = sub_100011364();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007B40(&qword_10001C3B0, &qword_100012AB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_10000A508();
  sub_100011424();
  v28._countAndFlagsBits = 0x206E65704FLL;
  v28._object = 0xE500000000000000;
  sub_100011414(v28);
  swift_getKeyPath();
  v23 = sub_10000A5A4();
  sub_100011354();

  sub_100011404();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_100011414(v29);
  (*(v7 + 104))(v10, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v6);
  sub_1000113F4();
  (*(v7 + 8))(v10, v6);
  v30._countAndFlagsBits = 0x6E69747465532029;
  v30._object = 0xEA00000000007367;
  sub_100011414(v30);
  sub_100011434();
  v25 = sub_100011384();
  v13 = v26;
  v21 = *(v27 + 8);
  v27 += 8;
  v21(v5, v26);
  sub_100011424();
  v31._countAndFlagsBits = 0x206E65704FLL;
  v31._object = 0xE500000000000000;
  sub_100011414(v31);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v32._countAndFlagsBits = 0x676E697474657320;
  v32._object = 0xE800000000000000;
  sub_100011414(v32);
  sub_100011434();
  v22 = sub_100011384();
  v14 = v21;
  v21(v5, v13);
  sub_100011424();
  v33._countAndFlagsBits = 0x20656D20656B6154;
  v33._object = 0xEB00000000206F74;
  sub_100011414(v33);
  swift_getKeyPath();
  sub_100011354();

  sub_100011404();

  v34._countAndFlagsBits = 0x676E697474657320;
  v34._object = 0xE800000000000000;
  sub_100011414(v34);
  sub_100011434();
  v15 = sub_100011384();
  v14(v5, v26);
  sub_100007B40(&qword_10001C3B8, &qword_100012AC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000129B0;
  v17 = v22;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_100011374();

  return v18;
}

uint64_t sub_100009EBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  return sub_100011314();
}

uint64_t sub_100009F54(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_1000113E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_100011354();

  a4(v11);
  sub_1000113D4();
  v12 = sub_1000113C4();
  (*(v7 + 8))(v10, v6);
  sub_100007B40(&qword_10001C398, &qword_100012AA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000129D0;
  *(v13 + 32) = v12;
  v14 = sub_1000113B4();

  return v14;
}

uint64_t sub_10000A0D4()
{
  v0 = sub_1000113A4();
  sub_100007B40(&qword_10001C3A0, &qword_100012AA8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000129D0;
  *(v1 + 32) = v0;
  v2 = sub_100011394();

  return v2;
}

uint64_t sub_10000A174()
{
  if (qword_10001C120 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000A1E0()
{
  v0 = sub_100011464();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005348();
  v16 = v5;
  sub_100001644();
  sub_100011474();
  v6 = sub_100011454();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v15 = sub_10000CFE4();
  v16 = v8;
  sub_10000A4B4();
  sub_100011474();
  v9 = sub_100011454();
  v7(v4, v0);
  v15 = sub_100007848();
  sub_100004848();
  sub_100011474();
  v10 = sub_100011454();
  v7(v4, v0);
  v15 = sub_10000D45C();
  sub_10000A508();
  sub_100011474();
  v11 = sub_100011454();
  v7(v4, v0);
  sub_100007B40(&qword_10001C388, &qword_100012A70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000129C0;
  *(v12 + 32) = v6;
  *(v12 + 40) = v9;
  *(v12 + 48) = v10;
  *(v12 + 56) = v11;
  v13 = sub_100011444();

  return v13;
}

unint64_t sub_10000A4B4()
{
  result = qword_10001C378;
  if (!qword_10001C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C378);
  }

  return result;
}

unint64_t sub_10000A508()
{
  result = qword_10001C380;
  if (!qword_10001C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C380);
  }

  return result;
}

__n128 sub_10000A55C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100011304();
  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

unint64_t sub_10000A5A4()
{
  result = qword_10001C390;
  if (!qword_10001C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C390);
  }

  return result;
}

uint64_t sub_10000A5F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100011304();
  *a2 = v5;
  return result;
}

uint64_t sub_10000A634(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;

  return sub_100011314();
}

unint64_t sub_10000A670()
{
  result = qword_10001C3D8;
  if (!qword_10001C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D8);
  }

  return result;
}

uint64_t sub_10000A6C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100011304();
  *a2 = v5;
  return result;
}

uint64_t sub_10000A708(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_100011314();
}

uint64_t sub_10000A7CC()
{
  v0 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v18 = &v16 - v2;
  v17 = sub_1000116C4();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011714();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000117E4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000116D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_100011644();
  sub_100007CBC(v14, qword_10001C7E0);
  sub_100007C84(v14, qword_10001C7E0);
  sub_1000117D4();
  sub_100011704();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v17);
  sub_1000116E4();
  (*(v12 + 56))(v18, 1, 1, v11);
  return sub_100011634();
}

uint64_t sub_10000AAE0()
{
  v0 = sub_1000116D4();
  sub_100007CBC(v0, qword_10001C7F8);
  sub_100007C84(v0, qword_10001C7F8);
  return sub_1000116B4();
}

uint64_t sub_10000AB44()
{
  v0 = sub_100007B40(&qword_10001C358, &unk_100013570);
  sub_100007CBC(v0, qword_10001C810);
  v1 = sub_100007C84(v0, qword_10001C810);
  sub_100011484();
  v2 = sub_100011494();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000AC04()
{
  result = swift_getKeyPath();
  qword_10001C828 = result;
  return result;
}

uint64_t sub_10000AC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_100007B40(&qword_10001C328, &unk_100013520) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_100007B40(&qword_10001C330, &qword_1000127B0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_100007B40(&qword_10001C540, &qword_100013530) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1000112B4();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_100007B40(&qword_10001C548, &qword_100013538);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10000AE20, 0, 0);
}

uint64_t sub_10000AE20()
{
  v1 = *(v0 + 168);
  sub_100011304();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10000C17C();
  *v4 = v0;
  v4[1] = sub_10000AF04;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_10000DB88, 0, &type metadata for MaximizeCompatibilityEntity, v5);
}

uint64_t sub_10000AF04()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10000B000, 0, 0);
}

uint64_t sub_10000B000()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_100011304();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_100011304();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10001C140 != -1)
  {
    swift_once();
  }

  v5 = qword_10001C828;
  *(v0 + 288) = qword_10001C828;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_100007F34(&qword_10001C530, &qword_10001C538, &qword_100013510);
  *v7 = v0;
  v7[1] = sub_10000B164;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10000B164()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_10000B54C;
  }

  else
  {
    v6 = sub_10000B2D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000B2D4()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_100011304();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_100011624();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100011654();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000A4B4();
  sub_10000A5A4();
  sub_100011284();
  (*(v3 + 16))(v1, v12, v2);
  sub_1000112A4();
  sub_1000112C4();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000B54C()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v6 = v0[1];
  v7 = v0[38];

  return v6();
}

uint64_t sub_10000B614()
{
  v0 = sub_100007B40(&qword_10001C550, &qword_100013540);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10001C140 != -1)
  {
    swift_once();
  }

  sub_1000114E4();

  sub_10000A5A4();
  sub_100007F34(&qword_10001C558, &qword_10001C550, &qword_100013540);
  sub_1000114D4();
  return (*(v1 + 8))(v4, v0);
}

__n128 sub_10000B788@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_100011304();
  result = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_10000B7CC(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_100011314();
}

uint64_t (*sub_10000B834(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000112F4();
  return sub_1000027C4;
}

uint64_t (*sub_10000B8A8(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000112F4();
  return sub_100008238;
}

uint64_t sub_10000B91C()
{
  if (qword_10001C140 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000B97C()
{
  result = qword_10001C430;
  if (!qword_10001C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C430);
  }

  return result;
}

unint64_t sub_10000B9D4()
{
  result = qword_10001C438;
  if (!qword_10001C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C438);
  }

  return result;
}

uint64_t sub_10000BAAC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C138 != -1)
  {
    swift_once();
  }

  v2 = sub_100007B40(&qword_10001C358, &unk_100013570);
  v3 = sub_100007C84(v2, qword_10001C810);

  return sub_100007F7C(v3, a1);
}

uint64_t sub_10000BB30(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008218;

  return sub_10000AC40(a1, v5, v4);
}

uint64_t sub_10000BBDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CFE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000BC24()
{
  result = qword_10001C440;
  if (!qword_10001C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C440);
  }

  return result;
}

unint64_t sub_10000BC7C()
{
  result = qword_10001C448;
  if (!qword_10001C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C448);
  }

  return result;
}

uint64_t sub_10000BCF0()
{
  result = WiFiManagerClientCreate();
  if (!kWiFiPHBandPreferenceKey)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for CFString(0);
  swift_dynamicCastUnknownClassUnconditional();
  result = WiFiManagerClientCopyProperty();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = *(v0 + 24);
  *(v0 + 16) = result;
  swift_dynamicCast();
  *v2 = *(v0 + 32) == 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000BDF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000BE9C;

  return sub_10000D854();
}

uint64_t sub_10000BE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

unint64_t sub_10000BFC4()
{
  result = qword_10001C450;
  if (!qword_10001C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C450);
  }

  return result;
}

uint64_t sub_10000C018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000C4D0();
  *v5 = v2;
  v5[1] = sub_100003754;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10000C0CC()
{
  result = qword_10001C458;
  if (!qword_10001C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C458);
  }

  return result;
}

unint64_t sub_10000C124()
{
  result = qword_10001C460;
  if (!qword_10001C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C460);
  }

  return result;
}

unint64_t sub_10000C17C()
{
  result = qword_10001C468;
  if (!qword_10001C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C468);
  }

  return result;
}

uint64_t sub_10000C1D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000C4D0();
  *v6 = v2;
  v6[1] = sub_100008264;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000C284(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000C4D0();
  *v5 = v2;
  v5[1] = sub_100008230;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10000C338()
{
  result = qword_10001C470;
  if (!qword_10001C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C470);
  }

  return result;
}

unint64_t sub_10000C394()
{
  result = qword_10001C478;
  if (!qword_10001C478)
  {
    sub_1000016DC(&qword_10001C480, qword_100012E30);
    sub_10000A5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C478);
  }

  return result;
}

uint64_t sub_10000C418(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000BFC4();
  *v6 = v2;
  v6[1] = sub_100003E84;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000C4D0()
{
  result = qword_10001C488;
  if (!qword_10001C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C488);
  }

  return result;
}

unint64_t sub_10000C528()
{
  result = qword_10001C490;
  if (!qword_10001C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C490);
  }

  return result;
}

uint64_t sub_10000C57C(uint64_t a1)
{
  v2 = sub_10000C17C();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004FLL, 0x8000000100014320, a1, v2);
}

unint64_t sub_10000C5E4()
{
  result = qword_10001C498;
  if (!qword_10001C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C498);
  }

  return result;
}

unint64_t sub_10000C63C()
{
  result = qword_10001C4A0;
  if (!qword_10001C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4A0);
  }

  return result;
}

unint64_t sub_10000C694()
{
  result = qword_10001C4A8;
  if (!qword_10001C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4A8);
  }

  return result;
}

uint64_t sub_10000C6E8()
{
  sub_10000D800();
  v1 = sub_1000115A4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000C758()
{
  result = qword_10001C4B0;
  if (!qword_10001C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4B0);
  }

  return result;
}

unint64_t sub_10000C7B0()
{
  result = qword_10001C4B8;
  if (!qword_10001C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4B8);
  }

  return result;
}

unint64_t sub_10000C808()
{
  result = qword_10001C4C0;
  if (!qword_10001C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4C0);
  }

  return result;
}

uint64_t sub_10000C85C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000C8E4(uint64_t a1)
{
  v2 = sub_10000C17C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000C934()
{
  result = qword_10001C4D8;
  if (!qword_10001C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4D8);
  }

  return result;
}

uint64_t sub_10000C988(uint64_t a1)
{
  v2 = sub_10000BC7C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10000C9D4(uint64_t a1)
{
  v2 = sub_10000C808();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000CA24()
{
  result = qword_10001C4E0;
  if (!qword_10001C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E0);
  }

  return result;
}

uint64_t sub_10000CA78()
{
  v0 = sub_1000116D4();
  sub_100007CBC(v0, qword_10001C830);
  sub_100007C84(v0, qword_10001C830);
  return sub_1000116B4();
}

uint64_t (*sub_10000CADC(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000112F4();
  return sub_100008238;
}

uint64_t sub_10000CB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D758();
  v5 = sub_10000D800();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000CBBC()
{
  v0 = qword_10001C410;

  return v0;
}

unint64_t sub_10000CBF8()
{
  result = qword_10001C4E8;
  if (!qword_10001C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4E8);
  }

  return result;
}

unint64_t sub_10000CC50()
{
  result = qword_10001C4F0;
  if (!qword_10001C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4F0);
  }

  return result;
}

uint64_t sub_10000CD48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000D758();
  v8 = sub_10000D7AC();
  v9 = sub_10000D800();
  *v6 = v2;
  v6[1] = sub_100004C7C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000CE1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D45C();
  *a1 = result;
  return result;
}

uint64_t sub_10000CE44(uint64_t a1)
{
  v2 = sub_10000A508();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10000CEA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000CEB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10000CEFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000CFE4()
{
  v0 = sub_100007B40(&qword_10001C298, &qword_100012728);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v2;
  v37 = sub_100011594();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007B40(&qword_10001C280, &unk_100012710);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1000116D4();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v30 = sub_100007B40(&qword_10001C510, &qword_1000134F0);
  sub_1000116B4();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v21 = sub_1000112B4();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v22 = *(*(v21 - 8) + 56);
  v29 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v23;
  v23(v6);
  sub_10000C17C();
  v24 = v28;
  v30 = sub_100011334();
  sub_100007B40(&qword_10001C2A0, &qword_100012730);
  sub_1000116B4();
  v34(v24, 1, 1, v35);
  LOBYTE(v38) = 2;
  v25 = sub_100011814();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v29, 1, 1, v21);
  v32(v6, v33, v37);
  sub_100011344();
  return v30;
}

uint64_t sub_10000D45C()
{
  v21[0] = sub_100011594();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007B40(&qword_10001C280, &unk_100012710);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_1000116D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007B40(&qword_10001C510, &qword_1000134F0);
  sub_1000116B4();
  (*(v16 + 56))(v14, 1, 1, v15);
  v18 = sub_1000112B4();
  memset(&v21[1], 0, 24);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_10000C17C();
  return sub_100011334();
}

unint64_t sub_10000D758()
{
  result = qword_10001C518;
  if (!qword_10001C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C518);
  }

  return result;
}

unint64_t sub_10000D7AC()
{
  result = qword_10001C520;
  if (!qword_10001C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C520);
  }

  return result;
}

unint64_t sub_10000D800()
{
  result = qword_10001C528;
  if (!qword_10001C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C528);
  }

  return result;
}

uint64_t sub_10000D854()
{
  v1 = sub_1000116C4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_100011714() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_1000117E4() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_1000116D4() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000D994, 0, 0);
}

uint64_t sub_10000D994()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100007B40(&qword_10001C428, qword_100012B90);
  sub_1000117D4();
  sub_100011704();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000116F4();
  sub_100007F34(&qword_10001C530, &qword_10001C538, &qword_100013510);
  v7 = sub_100011684();

  v8 = v0[1];

  return v8(0xD00000000000001BLL, 0x8000000100013460, v7);
}

uint64_t sub_10000DBA8()
{
  v0 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000116D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100011644();
  sub_100007CBC(v7, qword_10001C848);
  sub_100007C84(v7, qword_10001C848);
  sub_1000116B4();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100011634();
}

uint64_t sub_10000DD18()
{
  v0 = sub_100007B40(&qword_10001C650, &qword_100013B48);
  sub_100007CBC(v0, qword_10001C860);
  sub_100007C84(v0, qword_10001C860);
  sub_100007B40(&qword_10001C658, &qword_100013B50);
  v1 = sub_100007B40(&qword_10001C660, &qword_100013B58);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100011DD0;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  *v5 = 0;
  sub_10000E6E4();
  sub_100011574();
  v7 = *(v1 + 48);
  v5[v2] = 1;
  sub_100011574();
  sub_10000F948(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100011584();
}

uint64_t sub_10000DEF4()
{
  v0 = sub_100007B40(&qword_10001C628, &qword_100013B20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v28 - v2;
  v4 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_1000116D4();
  v37 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v40 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v42 = &v28 - v13;
  sub_100007B40(&qword_10001C630, &qword_100013B28);
  v14 = sub_100007B40(&qword_10001C638, &qword_100013B30);
  v43 = v14;
  v15 = *(v14 - 8);
  v39 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v41 = v17;
  *(v17 + 16) = xmmword_100011DD0;
  v18 = v17 + v16;
  v34 = *(v14 + 48);
  *(v17 + v16) = 0;
  v38 = "Open Wireless Modem Settings";
  sub_1000116B4();
  v19 = *(v9 + 56);
  v9 += 56;
  v36 = v19;
  v19(v7, 1, 1, v8);
  v35 = "Personal Hotspot";
  sub_1000114F4();
  v20 = sub_100011504();
  v21 = *(v20 - 8);
  v32 = *(v21 + 56);
  v33 = v21 + 56;
  v32(v3, 0, 1, v20);
  v22 = sub_100007B40(&qword_10001C640, &qword_100013B38);
  v29 = *(v9 + 16);
  v30 = v22;
  v23 = *(v9 + 24);
  v24 = swift_allocObject();
  v28 = xmmword_1000129D0;
  *(v24 + 16) = xmmword_1000129D0;
  sub_1000116B4();
  sub_1000116B4();
  v31 = v18;
  sub_100011514();
  v25 = (v18 + v39);
  v39 = *(v43 + 48);
  *v25 = 1;
  sub_1000116B4();
  sub_1000116B4();
  v36(v7, 0, 1, v37);
  sub_1000114F4();
  v32(v3, 0, 1, v20);
  *(swift_allocObject() + 16) = v28;
  sub_1000116B4();
  sub_1000116B4();
  sub_100011514();
  v26 = sub_10000FB3C(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10001C878 = v26;
  return result;
}

uint64_t sub_10000E3F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64726F7773736170;
  }

  else
  {
    v4 = 1953460082;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x64726F7773736170;
  }

  else
  {
    v6 = 1953460082;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000118B4();
  }

  return v9 & 1;
}

unint64_t sub_10000E498()
{
  result = qword_10001C570;
  if (!qword_10001C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C570);
  }

  return result;
}

Swift::Int sub_10000E4EC()
{
  v1 = *v0;
  sub_100011914();
  sub_100011804();

  return sub_100011934();
}

uint64_t sub_10000E568()
{
  *v0;
  sub_100011804();
}

Swift::Int sub_10000E5D0()
{
  v1 = *v0;
  sub_100011914();
  sub_100011804();

  return sub_100011934();
}

uint64_t sub_10000E648@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100019008;
  v8._object = v3;
  v5 = sub_100011894(v4, v8);

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

void sub_10000E6A8(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x64726F7773736170;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10000E6E4()
{
  result = qword_10001C578;
  if (!qword_10001C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C578);
  }

  return result;
}

unint64_t sub_10000E73C()
{
  result = qword_10001C580;
  if (!qword_10001C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C580);
  }

  return result;
}

uint64_t sub_10000E790@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C158 != -1)
  {
    swift_once();
  }

  v2 = sub_100007B40(&qword_10001C650, &qword_100013B48);
  v3 = sub_100007C84(v2, qword_10001C860);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000E844()
{
  result = qword_10001C588;
  if (!qword_10001C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C588);
  }

  return result;
}

unint64_t sub_10000E89C()
{
  result = qword_10001C590;
  if (!qword_10001C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C590);
  }

  return result;
}

unint64_t sub_10000E8F4()
{
  result = qword_10001C598;
  if (!qword_10001C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C598);
  }

  return result;
}

uint64_t sub_10000E954()
{
  sub_1000100D0();
  v1 = sub_100011544();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000E9C4()
{
  result = qword_10001C5A0;
  if (!qword_10001C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5A0);
  }

  return result;
}

unint64_t sub_10000EA18()
{
  result = qword_10001C5A8;
  if (!qword_10001C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5A8);
  }

  return result;
}

unint64_t sub_10000EA70()
{
  result = qword_10001C5B0;
  if (!qword_10001C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5B0);
  }

  return result;
}

unint64_t sub_10000EAC8()
{
  result = qword_10001C5B8;
  if (!qword_10001C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5B8);
  }

  return result;
}

uint64_t sub_10000EB84(uint64_t a1)
{
  v2 = sub_10000E6E4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000EBD4()
{
  result = qword_10001C5C0;
  if (!qword_10001C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5C0);
  }

  return result;
}

unint64_t sub_10000EC2C()
{
  result = qword_10001C5C8;
  if (!qword_10001C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5C8);
  }

  return result;
}

unint64_t sub_10000EC84()
{
  result = qword_10001C5D0;
  if (!qword_10001C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5D0);
  }

  return result;
}

uint64_t sub_10000ECD8()
{
  if (qword_10001C160 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000ED34(uint64_t a1)
{
  v2 = sub_10000EAC8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000ED84()
{
  result = qword_10001C5D8;
  if (!qword_10001C5D8)
  {
    sub_1000016DC(&qword_10001C5E0, &qword_100013840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5D8);
  }

  return result;
}

unint64_t sub_10000EDFC()
{
  result = qword_10001C5E8;
  if (!qword_10001C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E8);
  }

  return result;
}

uint64_t sub_10000EE54()
{
  v0 = sub_1000116D4();
  sub_100007CBC(v0, qword_10001C880);
  sub_100007C84(v0, qword_10001C880);
  return sub_1000116B4();
}

uint64_t sub_10000EEB8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100011304();
  *a1 = v5;
  return result;
}

uint64_t sub_10000EEF4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100011314();
}

void (*sub_10000EF2C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000112F4();
  return sub_1000047FC;
}

unint64_t sub_10000EFA0()
{
  result = qword_10001C5F0;
  if (!qword_10001C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5F0);
  }

  return result;
}

uint64_t sub_10000EFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100010028();
  v5 = sub_1000100D0();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000F060()
{
  v0 = qword_10001C560;

  return v0;
}

unint64_t sub_10000F09C()
{
  result = qword_10001C5F8;
  if (!qword_10001C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5F8);
  }

  return result;
}

unint64_t sub_10000F0F4()
{
  result = qword_10001C600;
  if (!qword_10001C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C600);
  }

  return result;
}

uint64_t sub_10000F1F4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100007C84(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000F29C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100010028();
  v8 = sub_10001007C();
  v9 = sub_1000100D0();
  *v6 = v2;
  v6[1] = sub_100004C7C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000F370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000FD24();
  *a1 = result;
  return result;
}

uint64_t sub_10000F398(uint64_t a1)
{
  v2 = sub_10000EFA0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for WirelessModemSettingsStaticDeepLinks(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WirelessModemSettingsStaticDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000F540(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100011914();
  sub_100011804();
  v6 = sub_100011934();

  return sub_10000F658(a1, a2, v6);
}

unint64_t sub_10000F5B8(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_100011914();
  sub_100011804();

  v5 = sub_100011934();

  return sub_10000F710(a1 & 1, v5);
}

unint64_t sub_10000F658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000118B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000F710(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64726F7773736170;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64726F7773736170 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1000118B4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_10000F84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007B40(&qword_10001C678, qword_100013B70);
    v3 = sub_100011884();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000F540(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_10000F948(uint64_t a1)
{
  v2 = sub_100007B40(&qword_10001C660, &qword_100013B58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007B40(&qword_10001C668, &qword_100013B60);
    v8 = sub_100011884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010124(v10, v6, &qword_10001C660, &qword_100013B58);
      v12 = *v6;
      result = sub_10000F5B8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100007B40(&qword_10001C670, &qword_100013B68);
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

unint64_t sub_10000FB3C(uint64_t a1)
{
  v2 = sub_100007B40(&qword_10001C638, &qword_100013B30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007B40(&qword_10001C648, &qword_100013B40);
    v8 = sub_100011884();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010124(v10, v6, &qword_10001C638, &qword_100013B30);
      v12 = *v6;
      result = sub_10000F5B8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100011524();
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

uint64_t sub_10000FD24()
{
  v21 = sub_100011594();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007B40(&qword_10001C280, &unk_100012710);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100007B40(&qword_10001C288, &qword_100013B10);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000116D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007B40(&qword_10001C608, &qword_100013B18);
  sub_1000116B4();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 2;
  v18 = sub_1000112B4();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000E6E4();
  return sub_100011324();
}

unint64_t sub_100010028()
{
  result = qword_10001C610;
  if (!qword_10001C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C610);
  }

  return result;
}

unint64_t sub_10001007C()
{
  result = qword_10001C618;
  if (!qword_10001C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C618);
  }

  return result;
}

unint64_t sub_1000100D0()
{
  result = qword_10001C620;
  if (!qword_10001C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C620);
  }

  return result;
}

uint64_t sub_100010124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007B40(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000101D8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100007B40(&qword_10001C680, &qword_100013C80);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100007B40(&qword_10001C688, &qword_100013C88);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100007B40(&qword_10001C690, &qword_100013C90);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100007B40(&qword_10001C698, &qword_100013C98);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v28 = &v27 - v18;
  swift_getKeyPath();
  sub_100007B40(&qword_10001C6A0, &qword_100013CC8);
  sub_100002C48();
  sub_100007F34(&qword_10001C6A8, &qword_10001C6A0, &qword_100013CC8);
  sub_1000117B4();
  sub_100011744();
  v19 = sub_100007F34(&qword_10001C6B0, &qword_10001C680, &qword_100013C80);
  sub_100011774();

  (*(v29 + 8))(v4, v1);
  sub_100011744();
  v37 = v1;
  v38 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_100011754();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_100011784();
  (*(v33 + 8))(v14, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_100011764();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_10001071C()
{
  v0 = sub_100011744();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000107DC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100007B40(&qword_10001C680, &qword_100013C80);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100007B40(&qword_10001C688, &qword_100013C88);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100007B40(&qword_10001C690, &qword_100013C90);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100007B40(&qword_10001C698, &qword_100013C98);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v28 = &v27 - v18;
  swift_getKeyPath();
  sub_100007B40(&qword_10001C6A0, &qword_100013CC8);
  sub_10000BC7C();
  sub_100007F34(&qword_10001C6A8, &qword_10001C6A0, &qword_100013CC8);
  sub_1000117B4();
  sub_100011744();
  v19 = sub_100007F34(&qword_10001C6B0, &qword_10001C680, &qword_100013C80);
  sub_100011774();

  (*(v29 + 8))(v4, v1);
  sub_100011744();
  v37 = v1;
  v38 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_100011754();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_100011784();
  (*(v33 + 8))(v14, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_100011764();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_100010D20()
{
  v0 = sub_100011744();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100010D94@<X0>(uint64_t a1@<X8>)
{
  sub_100011744();
  result = sub_100011794();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100010E0C@<X0>(uint64_t a1@<X8>)
{
  sub_100011744();
  result = sub_100011794();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100010E94()
{
  sub_1000016DC(&qword_10001C698, &qword_100013C98);
  sub_1000016DC(&qword_10001C690, &qword_100013C90);
  sub_1000016DC(&qword_10001C688, &qword_100013C88);
  sub_1000016DC(&qword_10001C680, &qword_100013C80);
  sub_100007F34(&qword_10001C6B0, &qword_10001C680, &qword_100013C80);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100010FF0()
{
  v0 = sub_100007B40(&qword_10001C6C0, &qword_100013D98);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100011078();
  sub_100011734();
  return 0;
}

unint64_t sub_100011078()
{
  result = qword_10001C6B8;
  if (!qword_10001C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6B8);
  }

  return result;
}

unint64_t sub_1000110FC()
{
  result = qword_10001C6C8;
  if (!qword_10001C6C8)
  {
    sub_1000016DC(&qword_10001C6D0, qword_100013DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C6C8);
  }

  return result;
}