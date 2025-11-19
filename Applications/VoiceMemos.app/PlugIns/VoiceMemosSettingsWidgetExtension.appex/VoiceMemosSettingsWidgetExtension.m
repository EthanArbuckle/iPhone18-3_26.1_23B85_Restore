uint64_t sub_100001BFC(uint64_t a1)
{
  if ([*(a1 + 32) _isRunningInVoiceMemos])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
  }

  else
  {
    v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.VoiceMemos"];
  }

  qword_100028ED0 = v1;

  return _objc_release_x1();
}

uint64_t sub_100001C60()
{
  if (qword_100028EE0 != -1)
  {
    sub_1000182CC();
  }

  return byte_100028EE8;
}

id OSLogForCategory(void *a1)
{
  v1 = a1;
  if (qword_100028EF8 != -1)
  {
    sub_1000182E0();
  }

  v2 = [qword_100028EF0 objectForKey:v1];
  if (!v2)
  {
    if ([qword_100028EF0 count] > 0xA)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        v2 = &_os_log_default;
        v6 = &_os_log_default;
        goto LABEL_13;
      }

      v8 = 0;
      v4 = "ERROR | Too many categories defined, use default";
      v5 = &v8;
    }

    else
    {
      v3 = os_log_create("com.apple.VoiceMemos", [v1 UTF8String]);
      if (v3)
      {
        v2 = v3;
        [qword_100028EF0 setObject:v3 forKey:v1];
        goto LABEL_13;
      }

      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v4 = "ERROR | Failed os_log_create, use default";
      v5 = buf;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

void sub_100001E08(id a1)
{
  qword_100028EF0 = [[NSMutableDictionary alloc] initWithCapacity:10];

  _objc_release_x1();
}

void sub_100001E90(id a1)
{
  qword_100028F08 = objc_alloc_init(RCAppGroupStorage);

  _objc_release_x1();
}

unint64_t sub_100002020()
{
  result = qword_100028538;
  if (!qword_100028538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028538);
  }

  return result;
}

uint64_t sub_1000020B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002100()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002ED10);
  sub_100006574(v7, qword_10002ED10);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

uint64_t sub_100002270()
{
  v0 = (*(*(sub_100005C80(&qword_1000286C0, &qword_100019D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = &v12 - v1;
  v3 = (*(*(sub_100005C80(&qword_100028690, &qword_10001ABE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = &v12 - v4;
  v6 = sub_10001888C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (__chkstk_darwin)();
  __chkstk_darwin(v9);
  sub_10001887C();
  sub_10001887C();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1000186DC();
  v10 = sub_1000186EC();
  (*(*(v10 - 8) + 56))(v2, 0, 1, v10);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_1000024E0()
{
  v0 = sub_100005C80(&qword_1000286C8, &qword_100019D08);
  sub_1000065AC(v0, qword_10002ED28);
  sub_100006574(v0, qword_10002ED28);
  if (qword_100028438 != -1)
  {
    swift_once();
  }

  sub_100003E58();

  return sub_10001879C();
}

uint64_t sub_1000025C4()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_useLocationBasedNaming];
  }

  else
  {
    v3 = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100002690()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedSettingsUserDefaults];
  [v2 rc_setUseLocationBasedNaming:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000272C()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002ED40);
  sub_100006574(v0, qword_10002ED40);
  return sub_10001887C();
}

uint64_t sub_100002790()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002ED58);
  v1 = sub_100006574(v0, qword_10002ED58);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100002850()
{
  result = swift_getKeyPath();
  qword_10002ED70 = result;
  return result;
}

uint64_t sub_1000028B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005C80(&qword_1000286E0, &unk_100019D30) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005C80(&qword_1000286E8, &qword_10001AC40) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005C80(&qword_1000286F0, &qword_100019D40) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000184BC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005C80(&qword_1000286F8, &qword_100019D48);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100002A98, 0, 0);
}

uint64_t sub_100002A98()
{
  v1 = v0[8];
  sub_1000184FC();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100003E58();
  *v3 = v0;
  v3[1] = sub_100002B68;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_1000066D4, 0, &type metadata for LocationBasedNamingEntity, v4);
}

uint64_t sub_100002B68()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100002C64, 0, 0);
}

uint64_t sub_100002C64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000184FC();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000184FC();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000283B8 != -1)
  {
    swift_once();
  }

  v4 = qword_10002ED70;
  *(v0 + 176) = qword_10002ED70;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100006610(&qword_1000286D0, &qword_1000286D8, &qword_100019D20);
  *v6 = v0;
  v6[1] = sub_100002DC4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100002DC4()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100003180;
  }

  else
  {
    v5 = sub_100002F18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002F18()
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
  sub_1000184FC();
  v0[6] = v0[5];
  v8 = sub_1000187DC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001881C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100002020();
  sub_100004230();
  sub_10001848C();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100003180()
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

uint64_t sub_100003248()
{
  v0 = sub_100005C80(&qword_100028700, &qword_100019D50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000283B8 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_100004230();
  sub_100006610(&qword_100028708, &qword_100028700, &qword_100019D50);
  sub_1000186BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000033BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000184FC();
  *a1 = v5;
  return result;
}

uint64_t sub_1000033F8(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_10001850C();
}

uint64_t (*sub_100003440(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t sub_1000034B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1000184FC();
  *a1 = v5;
  return result;
}

uint64_t sub_1000034F4(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_10001850C();
}

uint64_t (*sub_10000352C(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_1000035A0()
{
  if (qword_1000283B8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000360C()
{
  result = qword_100028550;
  if (!qword_100028550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028550);
  }

  return result;
}

unint64_t sub_100003664()
{
  result = qword_100028558;
  if (!qword_100028558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028558);
  }

  return result;
}

uint64_t sub_100003784@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002ED58);

  return sub_100006658(v3, a1);
}

uint64_t sub_100003808(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_1000028B8(a1, v5, v4);
}

uint64_t sub_1000038B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005CC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000038FC()
{
  result = qword_100028560;
  if (!qword_100028560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028560);
  }

  return result;
}

unint64_t sub_100003954()
{
  result = qword_100028568;
  if (!qword_100028568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028568);
  }

  return result;
}

uint64_t sub_1000039A8()
{
  v0 = sub_10001888C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028548, qword_100019330);
  sub_10001887C();
  sub_100006610(&qword_1000286D0, &qword_1000286D8, &qword_100019D20);
  result = sub_10001886C();
  qword_10002ED78 = result;
  return result;
}

uint64_t sub_100003AE0()
{
  if (qword_1000283C0 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002ED78;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100003B8C()
{
  result = qword_100028570;
  if (!qword_100028570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028570);
  }

  return result;
}

uint64_t sub_100003BE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100004688();
  *v5 = v2;
  v5[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100003C90(uint64_t a1)
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

unint64_t sub_100003DA8()
{
  result = qword_100028578;
  if (!qword_100028578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028578);
  }

  return result;
}

unint64_t sub_100003E00()
{
  result = qword_100028580;
  if (!qword_100028580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028580);
  }

  return result;
}

unint64_t sub_100003E58()
{
  result = qword_100028588;
  if (!qword_100028588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028588);
  }

  return result;
}

uint64_t sub_100003EB0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100004688();
  *v6 = v2;
  v6[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100003F64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100004688();
  *v5 = v2;
  v5[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100004014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000040D4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000040D4(uint64_t a1)
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

unint64_t sub_1000041D8()
{
  result = qword_100028590;
  if (!qword_100028590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028590);
  }

  return result;
}

unint64_t sub_100004230()
{
  result = qword_100028598;
  if (!qword_100028598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028598);
  }

  return result;
}

unint64_t sub_100004288()
{
  result = qword_1000285A0;
  if (!qword_1000285A0)
  {
    sub_1000020B8(&qword_1000285A8, qword_1000195D0);
    sub_100004230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285A0);
  }

  return result;
}

uint64_t sub_10000430C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003B8C();
  *v6 = v2;
  v6[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000043C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000044B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000043C0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100004574()
{
  result = qword_1000285B0;
  if (!qword_1000285B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285B0);
  }

  return result;
}

unint64_t sub_1000045CC()
{
  result = qword_1000285B8;
  if (!qword_1000285B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285B8);
  }

  return result;
}

unint64_t sub_100004624()
{
  result = qword_1000285C0;
  if (!qword_1000285C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285C0);
  }

  return result;
}

unint64_t sub_100004688()
{
  result = qword_1000285C8;
  if (!qword_1000285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285C8);
  }

  return result;
}

unint64_t sub_1000046E0()
{
  result = qword_1000285D0;
  if (!qword_1000285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285D0);
  }

  return result;
}

uint64_t sub_100004734@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_1000286C8, &qword_100019D08);
  v3 = sub_100006574(v2, qword_10002ED28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100004808()
{
  result = qword_1000285D8;
  if (!qword_1000285D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285D8);
  }

  return result;
}

unint64_t sub_100004860()
{
  result = qword_1000285E0;
  if (!qword_1000285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285E0);
  }

  return result;
}

unint64_t sub_1000048B8()
{
  result = qword_1000285E8;
  if (!qword_1000285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000285E8);
  }

  return result;
}

uint64_t sub_100004918@<X0>(uint64_t *a1@<X8>)
{
  sub_100003954();
  result = sub_1000184DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004958()
{
  sub_100006520();
  v1 = sub_10001876C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000049C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028398 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002ED10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100004AC8(uint64_t a1)
{
  v2 = sub_100003E58();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004B18()
{
  result = qword_100028600;
  if (!qword_100028600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028600);
  }

  return result;
}

uint64_t sub_100004B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000066C8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004C34(uint64_t a1)
{
  v2 = sub_1000048B8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100004C84()
{
  result = qword_100028608;
  if (!qword_100028608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028608);
  }

  return result;
}

uint64_t sub_100004CD8()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002ED80);
  sub_100006574(v0, qword_10002ED80);
  return sub_10001887C();
}

uint64_t (*sub_100004D3C(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

void sub_100004DB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004DFC()
{
  result = qword_100028610;
  if (!qword_100028610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028610);
  }

  return result;
}

uint64_t sub_100004E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006478();
  v5 = sub_100006520();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100004EC0()
{
  result = qword_100028618;
  if (!qword_100028618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028618);
  }

  return result;
}

unint64_t sub_100004F18()
{
  result = qword_100028620;
  if (!qword_100028620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028620);
  }

  return result;
}

unint64_t sub_100004F70()
{
  result = qword_100028628;
  if (!qword_100028628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028628);
  }

  return result;
}

uint64_t sub_100005068@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100006574(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100005128(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006478();
  v7 = sub_1000064CC();
  v8 = sub_100006520();
  *v5 = v2;
  v5[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000051F4()
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

uint64_t sub_1000052FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006180();
  *a1 = result;
  return result;
}

uint64_t sub_100005324(uint64_t a1)
{
  v2 = sub_100004DFC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100005360()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  v0 = *(sub_10001864C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100019300;
  sub_100005CC8();
  sub_100002020();
  result = sub_10001865C();
  qword_10002ED98 = v3;
  return result;
}

uint64_t sub_10000546C(uint64_t a1)
{
  v14 = a1;
  v1 = sub_100005C80(&qword_100028668, &qword_100019CC0);
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  v6 = sub_100005C80(&qword_100028670, &qword_100019CC8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100002020();
  sub_10001862C();
  v18._countAndFlagsBits = 0x206E727554;
  v18._object = 0xE500000000000000;
  sub_10001861C(v18);
  swift_getKeyPath();
  sub_10000612C();
  sub_10001854C();

  sub_10001860C();

  v19._object = 0x800000010001CE30;
  v19._countAndFlagsBits = 0xD000000000000016;
  sub_10001861C(v19);
  sub_10001863C();
  v15 = sub_10001857C();
  v8 = v16;
  v9 = *(v17 + 8);
  v17 += 8;
  v9(v5, v16);
  sub_10001862C();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_10001861C(v20);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v21._object = 0x800000010001CE30;
  v21._countAndFlagsBits = 0xD000000000000016;
  sub_10001861C(v21);
  sub_10001863C();
  v10 = sub_10001857C();
  v9(v5, v8);
  sub_100005C80(&qword_100028678, &qword_100019CD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100019310;
  *(v11 + 32) = v15;
  *(v11 + 40) = v10;
  v12 = sub_10001856C();

  return v12;
}

uint64_t sub_1000057A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1000184FC();
  *a2 = v5;
  return result;
}

uint64_t sub_1000057DC(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001850C();
}

uint64_t sub_100005814()
{
  v0 = sub_1000185EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000612C();
  sub_10001854C();

  sub_100002020();
  sub_1000185DC();
  v5 = sub_1000185CC();
  (*(v1 + 8))(v4, v0);
  sub_100005C80(&qword_100028658, &qword_100019CB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100019300;
  *(v6 + 32) = v5;
  v7 = sub_1000185BC();

  return v7;
}

uint64_t sub_100005984()
{
  v0 = sub_10001859C();
  v1 = sub_10001859C();
  v2 = sub_10001859C();
  v3 = sub_10001859C();
  sub_100005C80(&qword_100028660, &qword_100019CB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100019320;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_10001858C();

  return v5;
}

uint64_t sub_100005AB4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

__n128 sub_100005B58(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005B64(uint64_t *a1, int a2)
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

uint64_t sub_100005BAC(uint64_t result, int a2, int a3)
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

uint64_t sub_100005C80(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005CC8()
{
  v0 = sub_100005C80(&qword_100028680, &qword_100019CD8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000187AC();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001888C();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100005C80(&qword_100028698, &qword_100019CF0);
  sub_10001887C();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000184BC();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_100003E58();
  v28 = sub_10001852C();
  sub_100005C80(&qword_1000286A0, &qword_100019CF8);
  sub_10001887C();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100018A1C();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001853C();
  return v28;
}

unint64_t sub_10000612C()
{
  result = qword_100028650;
  if (!qword_100028650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028650);
  }

  return result;
}

uint64_t sub_100006180()
{
  v21[0] = sub_1000187AC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10001888C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005C80(&qword_100028698, &qword_100019CF0);
  sub_10001887C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100003E58();
  return sub_10001852C();
}

unint64_t sub_100006478()
{
  result = qword_1000286A8;
  if (!qword_1000286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286A8);
  }

  return result;
}

unint64_t sub_1000064CC()
{
  result = qword_1000286B0;
  if (!qword_1000286B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286B0);
  }

  return result;
}

unint64_t sub_100006520()
{
  result = qword_1000286B8;
  if (!qword_1000286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000286B8);
  }

  return result;
}

uint64_t sub_100006574(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000065AC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100006610(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000020B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005C80(&qword_100028710, &unk_100019D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006720(unsigned int *a1, int a2)
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

_WORD *sub_100006774(_WORD *result, int a2, int a3)
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

Swift::Int sub_100006820()
{
  sub_100018AAC();
  sub_100018ABC(0);
  return sub_100018ACC();
}

Swift::Int sub_100006890()
{
  sub_100018AAC();
  sub_100018ABC(0);
  return sub_100018ACC();
}

unint64_t sub_100006900()
{
  result = qword_100028718;
  if (!qword_100028718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028718);
  }

  return result;
}

unint64_t sub_100006958()
{
  result = qword_100028720;
  if (!qword_100028720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028720);
  }

  return result;
}

unint64_t sub_1000069D4()
{
  result = qword_100028728;
  if (!qword_100028728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028728);
  }

  return result;
}

uint64_t sub_100006A6C()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002EDA8);
  sub_100006574(v7, qword_10002EDA8);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

uint64_t sub_100006BDC()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_10001888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001887C();
  sub_10001887C();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1000186DC();
  v12 = sub_1000186EC();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_100006E48()
{
  v0 = sub_100005C80(&qword_1000288E0, &qword_10001AC00);
  sub_1000065AC(v0, qword_10002EDC0);
  sub_100006574(v0, qword_10002EDC0);
  if (qword_100028450 != -1)
  {
    swift_once();
  }

  sub_1000084BC();

  return sub_10001879C();
}

uint64_t sub_100006F2C()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_recentlyDeletedWindow];
  }

  else
  {
    v3 = 30;
  }

  v4 = *(v0 + 16);
  *v4 = sub_10000A4B8(v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100007000()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    [v1 rc_setRecentlyDeletedWindow:qword_10001AC88[*(v0 + 16)]];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000070A4()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EDD8);
  sub_100006574(v0, qword_10002EDD8);
  return sub_10001887C();
}

uint64_t sub_100007108()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002EDF0);
  v1 = sub_100006574(v0, qword_10002EDF0);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000071C8()
{
  result = swift_getKeyPath();
  qword_10002EE08 = result;
  return result;
}

uint64_t sub_1000071F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005C80(&qword_1000286E0, &unk_100019D30) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005C80(&qword_1000286E8, &qword_10001AC40) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005C80(&qword_100028908, &qword_10001AC48) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000184BC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005C80(&qword_100028910, &qword_10001AC50);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000073D0, 0, 0);
}

uint64_t sub_1000073D0()
{
  v1 = v0[8];
  sub_1000184FC();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000084BC();
  *v3 = v0;
  v3[1] = sub_1000074A0;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000B47C, 0, &type metadata for ClearDeletedEntity, v4);
}

uint64_t sub_1000074A0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10000759C, 0, 0);
}

uint64_t sub_10000759C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1000184FC();
  v3 = v0[3];
  v0[4] = v3;
  v0[21] = v3;
  sub_1000184FC();
  if (qword_100028400 != -1)
  {
    swift_once();
  }

  v4 = qword_10002EE08;
  v0[22] = qword_10002EE08;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  v0[23] = v6;
  v7 = sub_100006610(&qword_1000288F8, &qword_100028900, &qword_10001AC28);
  *v6 = v0;
  v6[1] = sub_1000076F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 25, v4, &type metadata for ClearDeletedEntity.IntentClearDeleted, v7);
}

uint64_t sub_1000076F0()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100003180;
  }

  else
  {
    v5 = sub_100007844;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007844()
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
  sub_1000184FC();
  v0[6] = v0[5];
  v8 = sub_1000187DC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001881C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000069D4();
  sub_1000086D0();
  sub_10001848C();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100007AB0()
{
  v0 = sub_100005C80(&qword_100028918, &qword_10001AC58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100028400 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_1000086D0();
  sub_100006610(&qword_100028920, &qword_100028918, &qword_10001AC58);
  sub_1000186BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100007C24(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t (*sub_100007C98(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_100007D0C()
{
  if (qword_100028400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100007D6C()
{
  result = qword_100028740;
  if (!qword_100028740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028740);
  }

  return result;
}

unint64_t sub_100007DC4()
{
  result = qword_100028748;
  if (!qword_100028748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028748);
  }

  return result;
}

uint64_t sub_100007EE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002EDF0);

  return sub_100006658(v3, a1);
}

uint64_t sub_100007F6C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_1000071F0(a1, v5, v4);
}

uint64_t sub_100008018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000A63C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100008060()
{
  result = qword_100028750;
  if (!qword_100028750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028750);
  }

  return result;
}

unint64_t sub_1000080B8()
{
  result = qword_100028758;
  if (!qword_100028758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028758);
  }

  return result;
}

uint64_t sub_10000810C()
{
  v0 = sub_10001888C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028738, qword_100019FA0);
  sub_10001887C();
  sub_100006610(&qword_1000288F8, &qword_100028900, &qword_10001AC28);
  sub_100008E0C();
  result = sub_10001885C();
  qword_10002EE10 = result;
  return result;
}

uint64_t sub_100008258()
{
  if (qword_100028408 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002EE10;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100008304()
{
  result = qword_100028760;
  if (!qword_100028760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028760);
  }

  return result;
}

uint64_t sub_100008358(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100009168();
  *v5 = v2;
  v5[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10000840C()
{
  result = qword_100028768;
  if (!qword_100028768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028768);
  }

  return result;
}

unint64_t sub_100008464()
{
  result = qword_100028770;
  if (!qword_100028770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028770);
  }

  return result;
}

unint64_t sub_1000084BC()
{
  result = qword_100028778;
  if (!qword_100028778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028778);
  }

  return result;
}

uint64_t sub_100008510(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100009168();
  *v6 = v2;
  v6[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000085C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100009168();
  *v5 = v2;
  v5[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100008678()
{
  result = qword_100028780;
  if (!qword_100028780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028780);
  }

  return result;
}

unint64_t sub_1000086D0()
{
  result = qword_100028788;
  if (!qword_100028788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028788);
  }

  return result;
}

unint64_t sub_100008728()
{
  result = qword_100028790;
  if (!qword_100028790)
  {
    sub_1000020B8(&qword_100028798, qword_10001A240);
    sub_1000086D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028790);
  }

  return result;
}

uint64_t sub_1000087AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100008304();
  *v6 = v2;
  v6[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100008860()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002EE18);
  sub_100006574(v7, qword_10002EE18);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

unint64_t sub_1000089E8()
{
  result = qword_1000287A0;
  if (!qword_1000287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287A0);
  }

  return result;
}

Swift::Int sub_100008A3C()
{
  v1 = *v0;
  sub_100018AAC();
  sub_100018ABC(v1);
  return sub_100018ACC();
}

Swift::Int sub_100008AB0()
{
  v1 = *v0;
  sub_100018AAC();
  sub_100018ABC(v1);
  return sub_100018ACC();
}

unint64_t sub_100008AF4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B01C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100008B30()
{
  result = qword_1000287A8;
  if (!qword_1000287A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287A8);
  }

  return result;
}

unint64_t sub_100008B88()
{
  result = qword_1000287B0;
  if (!qword_1000287B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287B0);
  }

  return result;
}

unint64_t sub_100008BE0()
{
  result = qword_1000287B8;
  if (!qword_1000287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287B8);
  }

  return result;
}

unint64_t sub_100008C50()
{
  result = qword_1000287C0;
  if (!qword_1000287C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287C0);
  }

  return result;
}

unint64_t sub_100008CA8()
{
  result = qword_1000287C8;
  if (!qword_1000287C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287C8);
  }

  return result;
}

unint64_t sub_100008CFC()
{
  result = qword_1000287D0;
  if (!qword_1000287D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287D0);
  }

  return result;
}

unint64_t sub_100008D54()
{
  result = qword_1000287D8;
  if (!qword_1000287D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287D8);
  }

  return result;
}

unint64_t sub_100008E0C()
{
  result = qword_1000287E0;
  if (!qword_1000287E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287E0);
  }

  return result;
}

uint64_t sub_100008E64(uint64_t a1)
{
  v2 = sub_100008E0C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100008EB4()
{
  result = qword_1000287E8;
  if (!qword_1000287E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287E8);
  }

  return result;
}

unint64_t sub_100008F0C()
{
  result = qword_1000287F0;
  if (!qword_1000287F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287F0);
  }

  return result;
}

unint64_t sub_100008F64()
{
  result = qword_1000287F8;
  if (!qword_1000287F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000287F8);
  }

  return result;
}

uint64_t sub_100008FBC(uint64_t a1)
{
  v2 = sub_100008D54();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100009060()
{
  result = qword_100028810;
  if (!qword_100028810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028810);
  }

  return result;
}

unint64_t sub_1000090B8()
{
  result = qword_100028818;
  if (!qword_100028818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028818);
  }

  return result;
}

unint64_t sub_100009110()
{
  result = qword_100028820;
  if (!qword_100028820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028820);
  }

  return result;
}

unint64_t sub_100009168()
{
  result = qword_100028828;
  if (!qword_100028828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028828);
  }

  return result;
}

unint64_t sub_1000091C0()
{
  result = qword_100028830;
  if (!qword_100028830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028830);
  }

  return result;
}

uint64_t sub_100009214@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_1000288E0, &qword_10001AC00);
  v3 = sub_100006574(v2, qword_10002EDC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000092CC()
{
  result = qword_100028838;
  if (!qword_100028838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028838);
  }

  return result;
}

unint64_t sub_100009324()
{
  result = qword_100028840;
  if (!qword_100028840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028840);
  }

  return result;
}

unint64_t sub_10000937C()
{
  result = qword_100028848;
  if (!qword_100028848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028848);
  }

  return result;
}

uint64_t sub_1000093D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000080B8();
  result = sub_1000184DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100009410()
{
  sub_10000B3CC();
  v1 = sub_10001876C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000947C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000283E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002EDA8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100009580(uint64_t a1)
{
  v2 = sub_1000084BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000095D0()
{
  result = qword_100028860;
  if (!qword_100028860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028860);
  }

  return result;
}

uint64_t sub_100009628(uint64_t a1)
{
  v2 = sub_10000937C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100009678()
{
  result = qword_100028868;
  if (!qword_100028868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028868);
  }

  return result;
}

uint64_t sub_1000096CC()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EE30);
  sub_100006574(v0, qword_10002EE30);
  return sub_10001887C();
}

uint64_t (*sub_100009730(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

unint64_t sub_1000097A4()
{
  result = qword_100028870;
  if (!qword_100028870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028870);
  }

  return result;
}

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B324();
  v5 = sub_10000B3CC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100009868()
{
  result = qword_100028878;
  if (!qword_100028878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028878);
  }

  return result;
}

unint64_t sub_1000098C0()
{
  result = qword_100028880;
  if (!qword_100028880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028880);
  }

  return result;
}

uint64_t sub_1000099C0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100006574(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100009A68(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000B324();
  v7 = sub_10000B378();
  v8 = sub_10000B3CC();
  *v5 = v2;
  v5[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100009B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B02C();
  *a1 = result;
  return result;
}

uint64_t sub_100009B5C(uint64_t a1)
{
  v2 = sub_1000097A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100009B98()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  v0 = *(sub_10001864C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100019300;
  sub_10000A63C();
  sub_1000069D4();
  result = sub_10001865C();
  qword_10002EE48 = v3;
  return result;
}

uint64_t sub_100009CA4(uint64_t a1)
{
  v30 = a1;
  v26 = sub_10001855C();
  v31 = *(v26 - 8);
  v1 = *(v31 + 64);
  __chkstk_darwin(v26);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_1000288A0, &qword_10001AB98);
  v24 = v4;
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v8 = sub_100005C80(&qword_1000288A8, &qword_10001ABA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_1000069D4();
  sub_10001862C();
  v33._countAndFlagsBits = 0x6564207261656C43;
  v33._object = 0xEE0020646574656CLL;
  sub_10001861C(v33);
  swift_getKeyPath();
  v29 = sub_100008CFC();
  sub_10001854C();

  sub_10001860C();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10001861C(v34);
  sub_10001863C();
  v10 = sub_10001857C();
  v11 = *(v32 + 8);
  v32 += 8;
  v27 = v10;
  v28 = v11;
  v11(v7, v4);
  sub_10001862C();
  v35._countAndFlagsBits = 0x207974706D45;
  v35._object = 0xE600000000000000;
  sub_10001861C(v35);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = v31;
  v22 = *(v31 + 104);
  v13 = v26;
  v22(v3);
  sub_1000185FC();
  v14 = *(v12 + 8);
  v31 = v12 + 8;
  v21 = v14;
  v14(v3, v13);
  v36._countAndFlagsBits = 0x20687361727420;
  v36._object = 0xE700000000000000;
  sub_10001861C(v36);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10001861C(v37);
  sub_10001863C();
  v25 = sub_10001857C();
  v15 = v24;
  v28(v7, v24);
  sub_10001862C();
  v38._countAndFlagsBits = 0x207974706D65;
  v38._object = 0xE600000000000000;
  sub_10001861C(v38);
  (v22)(v3, v23, v13);
  sub_1000185FC();
  v21(v3, v13);
  v39._countAndFlagsBits = 0x206E696220;
  v39._object = 0xE500000000000000;
  sub_10001861C(v39);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_10001861C(v40);
  sub_10001863C();
  v16 = sub_10001857C();
  v28(v7, v15);
  sub_100005C80(&qword_1000288B0, &unk_10001ABD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100019F80;
  v18 = v25;
  *(v17 + 32) = v27;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10001856C();

  return v19;
}

uint64_t getEnumTagSinglePayload for ClearDeletedEntity.IntentClearDeleted(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClearDeletedEntity.IntentClearDeleted(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000A4B8(uint64_t result)
{
  if (result > 0)
  {
    switch(result)
    {
      case 30:
        return 3;
      case 7:
        return 2;
      case 1:
        return result;
    }

LABEL_8:
    v8[5] = v1;
    v8[6] = v2;
    if (qword_100028478 != -1)
    {
      swift_once();
    }

    v3 = sub_1000188CC();
    sub_100006574(v3, qword_10002EF00);
    v4 = sub_100018A2C();
    v5 = sub_1000188BC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100016904(0xD000000000000016, 0x800000010001D3A0, v8);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s - Unexpected rcDeletedWindow value", v6, 0xCu);
      sub_10000B420(v7);
    }

    return 4;
  }

  if (result == -1)
  {
    return 4;
  }

  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10000A63C()
{
  v31 = sub_1000187AC();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10001888C();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100005C80(&qword_1000288B8, &qword_10001ABE8);
  sub_10001887C();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1000084BC();
  v26 = sub_10001852C();
  sub_100005C80(&qword_1000288C0, &unk_10001ABF0);
  sub_10001887C();
  v28(v13, 1, 1, v29);
  v32 = 5;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100008E0C();
  sub_10001851C();
  return v26;
}

uint64_t sub_10000AA3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1000184FC();
  *a2 = v5;
  return result;
}

uint64_t sub_10000AA78(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001850C();
}

unint64_t sub_10000AAB0()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v32 - v2;
  v4 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = sub_10001888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005C80(&qword_1000288E8, &qword_10001AC08);
  v11 = sub_100005C80(&qword_1000288F0, &qword_10001AC10);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v36 = 4 * v12;
  v14 = swift_allocObject();
  v37 = v14;
  *(v14 + 16) = xmmword_100019F90;
  v15 = v14 + v13;
  v35 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_10001887C();
  v16 = *(v9 + 56);
  v39 = v9 + 56;
  v42 = v16;
  v17 = v8;
  v16(v7, 1, 1, v8);
  v43 = sub_1000186EC();
  v18 = *(v43 - 8);
  v38 = *(v18 + 56);
  v41 = v18 + 56;
  v38(v3, 1, 1, v43);
  v19 = v15;
  sub_10001871C();
  v33 = v11;
  v34 = v12;
  v40 = v15;
  v35 = *(v11 + 48);
  *(v15 + v12) = 1;
  sub_10001887C();
  v42(v7, 1, 1, v8);
  v20 = v38;
  v38(v3, 1, 1, v43);
  sub_10001871C();
  v21 = 2 * v12;
  v35 = *(v11 + 48);
  *(v19 + 2 * v12) = 2;
  sub_10001887C();
  v32 = v17;
  v22 = v42;
  v42(v7, 1, 1, v17);
  v23 = v43;
  v20(v3, 1, 1, v43);
  sub_10001871C();
  v24 = v33;
  v25 = v40;
  v35 = *(v33 + 48);
  *(v40 + v21 + v34) = 3;
  sub_10001887C();
  v22(v7, 1, 1, v17);
  v26 = v23;
  v27 = v38;
  v38(v3, 1, 1, v26);
  sub_10001871C();
  v28 = (v25 + v36);
  v29 = *(v24 + 48);
  *v28 = 4;
  sub_10001887C();
  v22(v7, 1, 1, v32);
  v27(v3, 1, 1, v43);
  sub_10001871C();
  v30 = sub_100017064(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v30;
}

unint64_t sub_10000B01C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_10000B02C()
{
  v21[0] = sub_1000187AC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10001888C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005C80(&qword_1000288B8, &qword_10001ABE8);
  sub_10001887C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_1000084BC();
  return sub_10001852C();
}

unint64_t sub_10000B324()
{
  result = qword_1000288C8;
  if (!qword_1000288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288C8);
  }

  return result;
}

unint64_t sub_10000B378()
{
  result = qword_1000288D0;
  if (!qword_1000288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D0);
  }

  return result;
}

unint64_t sub_10000B3CC()
{
  result = qword_1000288D8;
  if (!qword_1000288D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000288D8);
  }

  return result;
}

uint64_t sub_10000B420(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000B4D0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10001888C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001897C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000188AC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000189BC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v34 = sub_100005C80(&qword_100028928, &qword_10001AD08);
  v31 = *(v34 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v34);
  v12 = v29 - v11;
  v13 = sub_100005C80(&qword_100028930, &qword_10001AD10);
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v30 = v29 - v15;
  v29[3] = "_VALUE_INTENT_TITLE";
  sub_1000189AC();
  sub_10001889C();
  v16 = sub_1000189EC();
  v29[1] = v17;
  v29[2] = v16;
  swift_getKeyPath();
  sub_10001896C();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_100005C80(&qword_100028940, &qword_10001AD48);
  sub_100008E0C();
  sub_10000BD98();
  sub_1000080B8();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40);
  sub_10000BDEC();
  sub_10001898C();
  if (qword_1000283E0 != -1)
  {
    swift_once();
  }

  v18 = sub_10001880C();
  sub_100006574(v18, qword_10002EDA8);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v19 = sub_10001894C();
  v21 = v20;
  v23 = v22;
  v24 = sub_100006610(&qword_100028960, &qword_100028928, &qword_10001AD08);
  v25 = v30;
  v26 = v34;
  sub_10001891C();
  sub_10000BE68(v19, v21, v23 & 1);

  (*(v31 + 8))(v12, v26);
  v37 = v26;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_10001892C();
  return (*(v32 + 8))(v25, v27);
}

uint64_t sub_10000BA2C()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000BA8C@<X0>(uint64_t a1@<X8>)
{
  sub_10001890C();
  result = sub_10001893C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000BB04@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001872C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001888C();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = *a1;
  v20 = sub_10000AAB0();
  if (*(v20 + 16) && (v21 = sub_100016EAC(v19), (v22 & 1) != 0))
  {
    (*(v5 + 16))(v8, *(v20 + 56) + *(v5 + 72) * v21, v4);

    sub_1000186FC();
    (*(v5 + 8))(v8, v4);
    v23 = v34;
    (*(v34 + 32))(v18, v16, v9);
    (*(v23 + 16))(v13, v18, v9);
    v24 = sub_10001894C();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    result = (*(v23 + 8))(v18, v9);
    v32 = v28 & 1;
  }

  else
  {

    v24 = 0;
    v26 = 0;
    v32 = 0;
    v30 = 0;
  }

  *a2 = v24;
  a2[1] = v26;
  a2[2] = v32;
  a2[3] = v30;
  return result;
}

unint64_t sub_10000BD98()
{
  result = qword_100028948;
  if (!qword_100028948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028948);
  }

  return result;
}

unint64_t sub_10000BDEC()
{
  result = qword_100028958;
  if (!qword_100028958)
  {
    sub_1000020B8(&qword_100028940, &qword_10001AD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028958);
  }

  return result;
}

uint64_t sub_10000BE68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000BE78()
{
  sub_1000020B8(&qword_100028930, &qword_10001AD10);
  sub_1000020B8(&qword_100028928, &qword_10001AD08);
  sub_100006610(&qword_100028960, &qword_100028928, &qword_10001AD08);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000BF4C()
{
  v0 = sub_100005C80(&qword_100028970, &qword_10001ADB0);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000BFD4();
  sub_1000188FC();
  return 0;
}

unint64_t sub_10000BFD4()
{
  result = qword_100028968;
  if (!qword_100028968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028968);
  }

  return result;
}

unint64_t sub_10000C058()
{
  result = qword_100028978;
  if (!qword_100028978)
  {
    sub_1000020B8(&qword_100028980, &qword_10001ADB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028978);
  }

  return result;
}

uint64_t sub_10000C0BC()
{
  result = sub_1000189DC();
  qword_10002EE58 = result;
  unk_10002EE60 = v1;
  return result;
}

uint64_t sub_10000C0E8()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D570;
  v3._countAndFlagsBits = 0xD000000000000023;
  sub_1000189FC(v3);

  qword_10002EE68 = v1;
  unk_10002EE70 = v2;
  return result;
}

uint64_t sub_10000C190()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D500;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  sub_1000189FC(v3);

  qword_10002EE78 = v1;
  unk_10002EE80 = v2;
  return result;
}

uint64_t sub_10000C238()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D4A0;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000189FC(v3);

  qword_10002EE88 = v1;
  unk_10002EE90 = v2;
  return result;
}

uint64_t sub_10000C2E0()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D540;
  v3._countAndFlagsBits = 0xD000000000000025;
  sub_1000189FC(v3);

  qword_10002EE98 = v1;
  unk_10002EEA0 = v2;
  return result;
}

uint64_t sub_10000C388()
{
  if (qword_100028430 != -1)
  {
    swift_once();
  }

  v1 = qword_10002EE58;
  v2 = unk_10002EE60;
  swift_bridgeObjectRetain_n();
  v3._object = 0x800000010001D520;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1000189FC(v3);

  qword_10002EEA8 = v1;
  unk_10002EEB0 = v2;
  return result;
}

uint64_t sub_10000C45C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10001888C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100005C80(&qword_100028988, &unk_10001B5E0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_100005C80(&qword_100028990, &qword_10001AE20);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  swift_getKeyPath();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_10000C930();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40);
  sub_10001899C();
  if (qword_1000284A0 != -1)
  {
    swift_once();
  }

  v11 = sub_10001880C();
  sub_100006574(v11, qword_10002EF78);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v12 = sub_10001894C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100006610(&qword_1000289A0, &qword_100028988, &unk_10001B5E0);
  sub_10001891C();
  sub_10000BE68(v12, v14, v16 & 1);

  (*(v20 + 8))(v6, v3);
  v24 = v3;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_10001892C();
  return (*(v21 + 8))(v10, v18);
}

uint64_t sub_10000C834()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000C894@<X0>(uint64_t a1@<X8>)
{
  sub_10001890C();
  result = sub_10001893C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_10000C930()
{
  result = qword_100028998;
  if (!qword_100028998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028998);
  }

  return result;
}

uint64_t sub_10000C984()
{
  sub_1000020B8(&qword_100028990, &qword_10001AE20);
  sub_1000020B8(&qword_100028988, &unk_10001B5E0);
  sub_100006610(&qword_1000289A0, &qword_100028988, &unk_10001B5E0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000CA5C()
{
  result = qword_1000289A8;
  if (!qword_1000289A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289A8);
  }

  return result;
}

unint64_t sub_10000CAB4()
{
  result = qword_1000289B0;
  if (!qword_1000289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289B0);
  }

  return result;
}

uint64_t sub_10000CB08()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002EEB8);
  sub_100006574(v7, qword_10002EEB8);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

uint64_t sub_10000CC78()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_10001888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001887C();
  sub_10001887C();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1000186DC();
  v12 = sub_1000186EC();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_10000CEE0()
{
  v0 = sub_100005C80(&qword_100028A90, &qword_10001B4F8);
  sub_1000065AC(v0, qword_10002EED0);
  sub_100006574(v0, qword_10002EED0);
  if (qword_100028458 != -1)
  {
    swift_once();
  }

  sub_10000D194();

  return sub_10001879C();
}

unint64_t sub_10000CFDC()
{
  result = qword_1000289B8;
  if (!qword_1000289B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289B8);
  }

  return result;
}

uint64_t sub_10000D030(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000D644();
  *v5 = v2;
  v5[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10000D0E4()
{
  result = qword_1000289C0;
  if (!qword_1000289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289C0);
  }

  return result;
}

unint64_t sub_10000D13C()
{
  result = qword_1000289C8;
  if (!qword_1000289C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289C8);
  }

  return result;
}

unint64_t sub_10000D194()
{
  result = qword_1000289D0;
  if (!qword_1000289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289D0);
  }

  return result;
}

uint64_t sub_10000D1E8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000D644();
  *v6 = v2;
  v6[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000D29C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000D644();
  *v5 = v2;
  v5[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10000D350()
{
  result = qword_1000289D8;
  if (!qword_1000289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289D8);
  }

  return result;
}

unint64_t sub_10000D3A8()
{
  result = qword_1000289E0;
  if (!qword_1000289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289E0);
  }

  return result;
}

unint64_t sub_10000D400()
{
  result = qword_1000289E8;
  if (!qword_1000289E8)
  {
    sub_1000020B8(&qword_1000289F0, qword_10001AF50);
    sub_10000D3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289E8);
  }

  return result;
}

uint64_t sub_10000D484(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000CFDC();
  *v6 = v2;
  v6[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000D53C()
{
  result = qword_1000289F8;
  if (!qword_1000289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289F8);
  }

  return result;
}

unint64_t sub_10000D594()
{
  result = qword_100028A00;
  if (!qword_100028A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A00);
  }

  return result;
}

unint64_t sub_10000D5EC()
{
  result = qword_100028A08;
  if (!qword_100028A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A08);
  }

  return result;
}

unint64_t sub_10000D644()
{
  result = qword_100028A10;
  if (!qword_100028A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A10);
  }

  return result;
}

unint64_t sub_10000D69C()
{
  result = qword_100028A18;
  if (!qword_100028A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A18);
  }

  return result;
}

uint64_t sub_10000D6F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028468 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028A90, &qword_10001B4F8);
  v3 = sub_100006574(v2, qword_10002EED0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000D7A8()
{
  result = qword_100028A20;
  if (!qword_100028A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A20);
  }

  return result;
}

unint64_t sub_10000D800()
{
  result = qword_100028A28;
  if (!qword_100028A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A28);
  }

  return result;
}

unint64_t sub_10000D858()
{
  result = qword_100028A30;
  if (!qword_100028A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A30);
  }

  return result;
}

uint64_t sub_10000D8AC@<X0>(uint64_t *a1@<X8>)
{
  sub_10000CAB4();
  result = sub_1000184DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D8EC()
{
  sub_10000E408();
  v1 = sub_10001876C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000D994()
{
  result = qword_100028A38;
  if (!qword_100028A38)
  {
    sub_1000020B8(&qword_100028A40, &qword_10001B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A38);
  }

  return result;
}

uint64_t sub_10000D9F8(uint64_t a1)
{
  v2 = sub_10000D194();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000DA48()
{
  result = qword_100028A48;
  if (!qword_100028A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A48);
  }

  return result;
}

uint64_t sub_10000DAA0(uint64_t a1)
{
  v2 = sub_10000D858();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000DAF0()
{
  result = qword_100028A50;
  if (!qword_100028A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A50);
  }

  return result;
}

uint64_t sub_10000DB44()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EEE8);
  sub_100006574(v0, qword_10002EEE8);
  return sub_10001887C();
}

void (*sub_10000DBF0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000184EC();
  return sub_100004DB0;
}

unint64_t sub_10000DC64()
{
  result = qword_100028A58;
  if (!qword_100028A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A58);
  }

  return result;
}

uint64_t sub_10000DCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E360();
  v5 = sub_10000E408();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000DD28()
{
  result = qword_100028A60;
  if (!qword_100028A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A60);
  }

  return result;
}

unint64_t sub_10000DD80()
{
  result = qword_100028A68;
  if (!qword_100028A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A68);
  }

  return result;
}

uint64_t sub_10000DE5C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100006574(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000DF04(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000E360();
  v7 = sub_10000E3B4();
  v8 = sub_10000E408();
  *v5 = v2;
  v5[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000DFD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000E064();
  *a1 = result;
  return result;
}

uint64_t sub_10000DFF8(uint64_t a1)
{
  v2 = sub_10000DC64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000E064()
{
  v21 = sub_1000187AC();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10001888C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005C80(&qword_100028A70, "(8");
  sub_10001887C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000D194();
  return sub_10001852C();
}

unint64_t sub_10000E360()
{
  result = qword_100028A78;
  if (!qword_100028A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A78);
  }

  return result;
}

unint64_t sub_10000E3B4()
{
  result = qword_100028A80;
  if (!qword_100028A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A80);
  }

  return result;
}

unint64_t sub_10000E408()
{
  result = qword_100028A88;
  if (!qword_100028A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A88);
  }

  return result;
}

uint64_t sub_10000E4A0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10001888C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v35 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001897C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_1000188AC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_1000189BC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v34 = sub_100005C80(&qword_100028928, &qword_10001AD08);
  v31 = *(v34 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v34);
  v12 = v29 - v11;
  v13 = sub_100005C80(&qword_100028930, &qword_10001AD10);
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v30 = v29 - v15;
  v29[3] = "IDENTIFIER_DESCRIPTION_TEXT";
  sub_1000189AC();
  sub_10001889C();
  v16 = sub_1000189EC();
  v29[1] = v17;
  v29[2] = v16;
  swift_getKeyPath();
  sub_10001896C();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_100005C80(&qword_100028940, &qword_10001AD48);
  sub_10000ECF0();
  sub_10000ED44();
  sub_10000ED98();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40);
  sub_10000BDEC();
  sub_10001898C();
  if (qword_1000284E8 != -1)
  {
    swift_once();
  }

  v18 = sub_10001880C();
  sub_100006574(v18, qword_10002F010);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v19 = sub_10001894C();
  v21 = v20;
  v23 = v22;
  v24 = sub_100006610(&qword_100028960, &qword_100028928, &qword_10001AD08);
  v25 = v30;
  v26 = v34;
  sub_10001891C();
  sub_10000BE68(v19, v21, v23 & 1);

  (*(v31 + 8))(v12, v26);
  v37 = v26;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_10001892C();
  return (*(v32 + 8))(v25, v27);
}

uint64_t sub_10000E9FC()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000EA5C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10001872C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001888C();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = *a1;
  v20 = sub_10001741C();
  if (*(v20 + 16) && (v21 = sub_100016F18(v19), (v22 & 1) != 0))
  {
    (*(v5 + 16))(v8, *(v20 + 56) + *(v5 + 72) * v21, v4);

    sub_1000186FC();
    (*(v5 + 8))(v8, v4);
    v23 = v34;
    (*(v34 + 32))(v18, v16, v9);
    (*(v23 + 16))(v13, v18, v9);
    v24 = sub_10001894C();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    result = (*(v23 + 8))(v18, v9);
    v32 = v28 & 1;
  }

  else
  {

    v24 = 0;
    v26 = 0;
    v32 = 0;
    v30 = 0;
  }

  *a2 = v24;
  a2[1] = v26;
  a2[2] = v32;
  a2[3] = v30;
  return result;
}

unint64_t sub_10000ECF0()
{
  result = qword_100028A98;
  if (!qword_100028A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028A98);
  }

  return result;
}

unint64_t sub_10000ED44()
{
  result = qword_100028AA0;
  if (!qword_100028AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA0);
  }

  return result;
}

unint64_t sub_10000ED98()
{
  result = qword_100028AA8;
  if (!qword_100028AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA8);
  }

  return result;
}

uint64_t sub_10000EDEC()
{
  v0 = sub_1000188CC();
  sub_1000065AC(v0, qword_10002EF00);
  sub_100006574(v0, qword_10002EF00);
  v1 = @"Default";
  v2 = OSLogForCategory(v1);

  return sub_1000188DC();
}

uint64_t sub_10000EEA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001882C();
  sub_1000065AC(v3, a2);
  v4 = sub_100006574(v3, a2);
  v5 = enum case for IntentAuthenticationPolicy.requiresAuthentication(_:);
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t sub_10000EF50@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10001888C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100005C80(&qword_100028988, &unk_10001B5E0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - v5;
  v7 = sub_100005C80(&qword_100028990, &qword_10001AE20);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  swift_getKeyPath();
  sub_100005C80(&qword_100028938, &qword_10001AD40);
  sub_100003954();
  sub_100006610(&qword_100028950, &qword_100028938, &qword_10001AD40);
  sub_10001899C();
  if (qword_100028398 != -1)
  {
    swift_once();
  }

  v11 = sub_10001880C();
  sub_100006574(v11, qword_10002ED10);
  swift_beginAccess();
  sub_1000187EC();
  swift_endAccess();
  v12 = sub_10001894C();
  v14 = v13;
  v16 = v15;
  v17 = sub_100006610(&qword_1000289A0, &qword_100028988, &unk_10001B5E0);
  sub_10001891C();
  sub_10000BE68(v12, v14, v16 & 1);

  (*(v20 + 8))(v6, v3);
  v24 = v3;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_10001892C();
  return (*(v21 + 8))(v10, v18);
}

uint64_t sub_10000F328()
{
  v0 = sub_10001890C();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_10000F394()
{
  result = qword_100028AB0;
  if (!qword_100028AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AB0);
  }

  return result;
}

uint64_t sub_10000F42C()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002EF78);
  sub_100006574(v7, qword_10002EF78);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

uint64_t sub_10000F59C()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_10001888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001887C();
  sub_10001887C();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1000186DC();
  v12 = sub_1000186EC();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_10000F804()
{
  v0 = sub_100005C80(&qword_100028BE8, &qword_10001BF78);
  sub_1000065AC(v0, qword_10002EF90);
  sub_100006574(v0, qword_10002EF90);
  if (qword_100028440 != -1)
  {
    swift_once();
  }

  sub_100010E60();

  return sub_10001879C();
}

uint64_t sub_10000F8E8()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_useStereoRecording];
  }

  else
  {
    v3 = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000F9B4()
{
  v1 = sub_1000189CC();
  v2 = MGGetBoolAnswer();

  if (v2)
  {
    sub_100012F58();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = [objc_opt_self() sharedSettingsUserDefaults];
    [v5 rc_setUseStereoRecording:v4];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000FAB8()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EFA8);
  sub_100006574(v0, qword_10002EFA8);
  return sub_10001887C();
}

uint64_t sub_10000FB1C()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002EFC0);
  v1 = sub_100006574(v0, qword_10002EFC0);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000FBDC()
{
  result = swift_getKeyPath();
  qword_10002EFD8 = result;
  return result;
}

uint64_t sub_10000FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005C80(&qword_1000286E0, &unk_100019D30) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005C80(&qword_1000286E8, &qword_10001AC40) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005C80(&qword_100028C08, &qword_10001BFA0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000184BC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005C80(&qword_100028C10, &qword_10001BFA8);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000FDE4, 0, 0);
}

uint64_t sub_10000FDE4()
{
  v1 = v0[8];
  sub_1000184FC();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100010E60();
  *v3 = v0;
  v3[1] = sub_10000FEB4;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100012FB8, 0, &type metadata for StereoRecordingEntity, v4);
}

uint64_t sub_10000FEB4()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10000FFB0, 0, 0);
}

uint64_t sub_10000FFB0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000184FC();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000184FC();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000284C0 != -1)
  {
    swift_once();
  }

  v4 = qword_10002EFD8;
  *(v0 + 176) = qword_10002EFD8;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100006610(&qword_100028BF0, &qword_100028BF8, &qword_10001BF90);
  *v6 = v0;
  v6[1] = sub_100010110;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100010110()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100003180;
  }

  else
  {
    v5 = sub_100010264;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100010264()
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
  sub_1000184FC();
  v0[6] = v0[5];
  v8 = sub_1000187DC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001881C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10000F394();
  sub_100011074();
  sub_10001848C();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000104D0()
{
  v0 = sub_100005C80(&qword_100028C18, &qword_10001BFB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000284C0 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_100011074();
  sub_100006610(&qword_100028C20, &qword_100028C18, &qword_10001BFB0);
  sub_1000186BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100010644(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t (*sub_1000106B8(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_10001072C()
{
  if (qword_1000284C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001078C()
{
  result = qword_100028AC8;
  if (!qword_100028AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AC8);
  }

  return result;
}

unint64_t sub_1000107E4()
{
  result = qword_100028AD0;
  if (!qword_100028AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AD0);
  }

  return result;
}

uint64_t sub_1000108F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002EFC0);

  return sub_100006658(v3, a1);
}

uint64_t sub_100010978(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_10000FC04(a1, v5, v4);
}

uint64_t sub_100010A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001268C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100010A6C()
{
  result = qword_100028AD8;
  if (!qword_100028AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AD8);
  }

  return result;
}

uint64_t sub_100010AC4()
{
  v0 = sub_10001888C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028AC0, qword_10001B620);
  sub_10001887C();
  sub_100006610(&qword_100028BF0, &qword_100028BF8, &qword_10001BF90);
  result = sub_10001886C();
  qword_10002EFE0 = result;
  return result;
}

uint64_t sub_100010BFC()
{
  if (qword_1000284C8 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002EFE0;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100010CA8()
{
  result = qword_100028AE0;
  if (!qword_100028AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AE0);
  }

  return result;
}

uint64_t sub_100010CFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100011310();
  *v5 = v2;
  v5[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100010DB0()
{
  result = qword_100028AE8;
  if (!qword_100028AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AE8);
  }

  return result;
}

unint64_t sub_100010E08()
{
  result = qword_100028AF0;
  if (!qword_100028AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AF0);
  }

  return result;
}

unint64_t sub_100010E60()
{
  result = qword_100028AF8;
  if (!qword_100028AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AF8);
  }

  return result;
}

uint64_t sub_100010EB4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100011310();
  *v6 = v2;
  v6[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100010F68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100011310();
  *v5 = v2;
  v5[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10001101C()
{
  result = qword_100028B00;
  if (!qword_100028B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B00);
  }

  return result;
}

unint64_t sub_100011074()
{
  result = qword_100028B08;
  if (!qword_100028B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B08);
  }

  return result;
}

unint64_t sub_1000110CC()
{
  result = qword_100028B10;
  if (!qword_100028B10)
  {
    sub_1000020B8(&qword_100028B18, qword_10001B8C0);
    sub_100011074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B10);
  }

  return result;
}

uint64_t sub_100011150(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100010CA8();
  *v6 = v2;
  v6[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100011208()
{
  result = qword_100028B20;
  if (!qword_100028B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B20);
  }

  return result;
}

unint64_t sub_100011260()
{
  result = qword_100028B28;
  if (!qword_100028B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B28);
  }

  return result;
}

unint64_t sub_1000112B8()
{
  result = qword_100028B30;
  if (!qword_100028B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B30);
  }

  return result;
}

unint64_t sub_100011310()
{
  result = qword_100028B38;
  if (!qword_100028B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B38);
  }

  return result;
}

unint64_t sub_100011368()
{
  result = qword_100028B40;
  if (!qword_100028B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B40);
  }

  return result;
}

uint64_t sub_1000113BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028BE8, &qword_10001BF78);
  v3 = sub_100006574(v2, qword_10002EF90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100011474()
{
  result = qword_100028B48;
  if (!qword_100028B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B48);
  }

  return result;
}

unint64_t sub_1000114CC()
{
  result = qword_100028B50;
  if (!qword_100028B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B50);
  }

  return result;
}

unint64_t sub_100011524()
{
  result = qword_100028B58;
  if (!qword_100028B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B58);
  }

  return result;
}

uint64_t sub_100011578@<X0>(uint64_t *a1@<X8>)
{
  sub_10000C930();
  result = sub_1000184DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000115B8()
{
  sub_100012F04();
  v1 = sub_10001876C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100011624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002EF78);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100011728(uint64_t a1)
{
  v2 = sub_100010E60();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100011778()
{
  result = qword_100028B70;
  if (!qword_100028B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B70);
  }

  return result;
}

uint64_t sub_1000117D0(uint64_t a1)
{
  v2 = sub_100011524();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100011820()
{
  result = qword_100028B78;
  if (!qword_100028B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B78);
  }

  return result;
}

uint64_t sub_100011874()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002EFE8);
  sub_100006574(v0, qword_10002EFE8);
  return sub_10001887C();
}

uint64_t (*sub_1000118D8(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

unint64_t sub_10001194C()
{
  result = qword_100028B80;
  if (!qword_100028B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B80);
  }

  return result;
}

uint64_t sub_1000119A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012E5C();
  v5 = sub_100012F04();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100011A10()
{
  result = qword_100028B88;
  if (!qword_100028B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B88);
  }

  return result;
}

unint64_t sub_100011A68()
{
  result = qword_100028B90;
  if (!qword_100028B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B90);
  }

  return result;
}

uint64_t sub_100011B60(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100012E5C();
  v7 = sub_100012EB0();
  v8 = sub_100012F04();
  *v5 = v2;
  v5[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100011C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100012B64();
  *a1 = result;
  return result;
}

uint64_t sub_100011C54(uint64_t a1)
{
  v2 = sub_10001194C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011C90()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  v0 = *(sub_10001864C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100019300;
  sub_10001268C();
  sub_10000F394();
  result = sub_10001865C();
  qword_10002F000 = v3;
  return result;
}

uint64_t sub_100011D9C(uint64_t a1)
{
  v32 = a1;
  v29 = sub_10001855C();
  v36 = *(v29 - 8);
  v1 = *(v36 + 64);
  __chkstk_darwin(v29);
  v28 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005C80(&qword_100028BB0, &qword_10001BF50);
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = &v21 - v5;
  v7 = sub_100005C80(&qword_100028BB8, &qword_10001BF58);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  sub_10000F394();
  sub_10001862C();
  v37._countAndFlagsBits = 0x206E727554;
  v37._object = 0xE500000000000000;
  sub_10001861C(v37);
  swift_getKeyPath();
  v31 = sub_10000612C();
  sub_10001854C();

  sub_10001860C();

  v27 = "ATION_BASED_NAMING";
  v38._object = 0x800000010001D770;
  v38._countAndFlagsBits = 0xD000000000000011;
  sub_10001861C(v38);
  sub_10001863C();
  v30 = sub_10001857C();
  v9 = v3 + 8;
  v34 = *(v3 + 8);
  v10 = v35;
  v34(v6, v35);
  v33 = v9;
  sub_10001862C();
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10001861C(v39);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v40._object = (v27 | 0x8000000000000000);
  v40._countAndFlagsBits = 0xD000000000000011;
  sub_10001861C(v40);
  sub_10001863C();
  v27 = sub_10001857C();
  v34(v6, v10);
  sub_10001862C();
  v41._countAndFlagsBits = 0x206E727554;
  v41._object = 0xE500000000000000;
  sub_10001861C(v41);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v25 = " stereo recording";
  v42._countAndFlagsBits = 0xD000000000000015;
  v42._object = 0x800000010001D790;
  sub_10001861C(v42);
  v24 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = v36;
  v23 = *(v36 + 104);
  v13 = v28;
  v12 = v29;
  v23(v28);
  sub_1000185FC();
  v14 = *(v11 + 8);
  v36 = v11 + 8;
  v22 = v14;
  v14(v13, v12);
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_10001861C(v43);
  sub_10001863C();
  v26 = sub_10001857C();
  v34(v6, v35);
  sub_10001862C();
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_10001861C(v44);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v45._countAndFlagsBits = 0xD000000000000015;
  v45._object = (v25 | 0x8000000000000000);
  sub_10001861C(v45);
  (v23)(v13, v24, v12);
  sub_1000185FC();
  v22(v13, v12);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_10001861C(v46);
  sub_10001863C();
  v15 = sub_10001857C();
  v34(v6, v35);
  sub_100005C80(&qword_100028BC0, &unk_10001BF60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100019320;
  v17 = v26;
  v18 = v27;
  *(v16 + 32) = v30;
  *(v16 + 40) = v18;
  *(v16 + 48) = v17;
  *(v16 + 56) = v15;
  v19 = sub_10001856C();

  return v19;
}

uint64_t sub_1000123E8()
{
  v0 = sub_1000185EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000612C();
  sub_10001854C();

  sub_10000F394();
  sub_1000185DC();
  v5 = sub_1000185CC();
  (*(v1 + 8))(v4, v0);
  sub_100005C80(&qword_100028658, &qword_100019CB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100019300;
  *(v6 + 32) = v5;
  v7 = sub_1000185BC();

  return v7;
}

uint64_t sub_10001268C()
{
  v0 = sub_100005C80(&qword_100028680, &qword_100019CD8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000187AC();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_10001888C();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100005C80(&qword_100028BC8, &qword_10001BF70);
  sub_10001887C();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000184BC();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_100010E60();
  v28 = sub_10001852C();
  sub_100005C80(&qword_1000286A0, &qword_100019CF8);
  sub_10001887C();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100018A1C();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_10001853C();
  return v28;
}

uint64_t sub_100012AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1000184FC();
  *a2 = v5;
  return result;
}

uint64_t sub_100012B2C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001850C();
}

uint64_t sub_100012B64()
{
  v21[0] = sub_1000187AC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10001888C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005C80(&qword_100028BC8, &qword_10001BF70);
  sub_10001887C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100010E60();
  return sub_10001852C();
}

unint64_t sub_100012E5C()
{
  result = qword_100028BD0;
  if (!qword_100028BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD0);
  }

  return result;
}

unint64_t sub_100012EB0()
{
  result = qword_100028BD8;
  if (!qword_100028BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BD8);
  }

  return result;
}

unint64_t sub_100012F04()
{
  result = qword_100028BE0;
  if (!qword_100028BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028BE0);
  }

  return result;
}

unint64_t sub_100012F58()
{
  result = qword_100028C00;
  if (!qword_100028C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C00);
  }

  return result;
}

unint64_t sub_100012FDC()
{
  result = qword_100028C28;
  if (!qword_100028C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C28);
  }

  return result;
}

uint64_t sub_100013074()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002F010);
  sub_100006574(v7, qword_10002F010);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

uint64_t sub_1000131E4()
{
  v0 = sub_100005C80(&qword_100028DD0, &qword_10001CC30);
  sub_1000065AC(v0, qword_10002F028);
  sub_100006574(v0, qword_10002F028);
  if (qword_100028448 != -1)
  {
    swift_once();
  }

  sub_100014B54();

  return sub_10001879C();
}

uint64_t sub_1000132A8()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_10001888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_10001887C();
  sub_10001887C();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1000186DC();
  v12 = sub_1000186EC();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  sub_10001887C();
  return sub_10001870C();
}

uint64_t sub_100013534()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_audioQuality];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 16);
  *v4 = sub_100017798(v3) & 1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100013614()
{
  v1 = sub_1000189CC();
  v2 = MGGetBoolAnswer();

  v3 = objc_opt_self();
  v4 = [v3 sharedSettingsUserDefaults];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 rc_channelConfiguration];
  }

  else
  {
    v6 = 2;
  }

  if (v6 == 2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  if (v7 != 1 || *(v0 + 16) == 0)
  {
    v9 = [v3 sharedSettingsUserDefaults];
    if (v9)
    {
      v10 = v9;
      [v9 rc_setAudioQuality:*(v0 + 16)];
    }

    v11 = *(v0 + 8);
  }

  else
  {
    sub_100018148();
    swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_100013778()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002F040);
  sub_100006574(v0, qword_10002F040);
  return sub_10001887C();
}

uint64_t sub_1000137DC()
{
  v0 = sub_100005C80(&qword_100028710, &unk_100019D80);
  sub_1000065AC(v0, qword_10002F058);
  v1 = sub_100006574(v0, qword_10002F058);
  sub_10001866C();
  v2 = sub_10001867C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001389C()
{
  result = swift_getKeyPath();
  qword_10002F070 = result;
  return result;
}

uint64_t sub_1000138C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100005C80(&qword_1000286E0, &unk_100019D30) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100005C80(&qword_1000286E8, &qword_10001AC40) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005C80(&qword_100028E10, &qword_10001CC78) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000184BC();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100005C80(&qword_100028E18, &qword_10001CC80);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100013AA4, 0, 0);
}

uint64_t sub_100013AA4()
{
  v1 = v0[8];
  sub_1000184FC();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100014B54();
  *v3 = v0;
  v3[1] = sub_100013B74;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100018270, 0, &type metadata for AudioQualityEntity, v4);
}

uint64_t sub_100013B74()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100013C70, 0, 0);
}

uint64_t sub_100013C70()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000184FC();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000184FC();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100028508 != -1)
  {
    swift_once();
  }

  v4 = qword_10002F070;
  *(v0 + 176) = qword_10002F070;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100006610(&qword_100028DF0, &qword_100028DF8, &qword_10001CC60);
  *v6 = v0;
  v6[1] = sub_100013DD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for AudioQualityEntity.IntentAudioQuality, v7);
}

uint64_t sub_100013DD0()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100003180;
  }

  else
  {
    v5 = sub_100013F24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100013F24()
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
  sub_1000184FC();
  v0[6] = v0[5];
  v8 = sub_1000187DC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_10001881C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100012FDC();
  sub_100014D68();
  sub_10001848C();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000184AC();
  sub_1000184CC();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100014190()
{
  v0 = sub_100005C80(&qword_100028E20, &qword_10001CC88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100028508 != -1)
  {
    swift_once();
  }

  sub_1000186CC();

  sub_100014D68();
  sub_100006610(&qword_100028E28, &qword_100028E20, &qword_10001CC88);
  sub_1000186BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100014304(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000034B4;
}

uint64_t (*sub_100014378(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

uint64_t sub_1000143EC()
{
  if (qword_100028508 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001444C()
{
  result = qword_100028C40;
  if (!qword_100028C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C40);
  }

  return result;
}

unint64_t sub_1000144A4()
{
  result = qword_100028C48;
  if (!qword_100028C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C48);
  }

  return result;
}

uint64_t sub_1000145C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028500 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028710, &unk_100019D80);
  v3 = sub_100006574(v2, qword_10002F058);
  return sub_100018208(v3, a1, &qword_100028710, &unk_100019D80);
}

uint64_t sub_100014658(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066C8;

  return sub_1000138C4(a1, v5, v4);
}

uint64_t sub_100014704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000178E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001474C()
{
  result = qword_100028C50;
  if (!qword_100028C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C50);
  }

  return result;
}

uint64_t sub_1000147A4()
{
  v0 = sub_10001888C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100005C80(&qword_100028C38, qword_10001BFE0);
  sub_10001887C();
  sub_100006610(&qword_100028DF0, &qword_100028DF8, &qword_10001CC60);
  sub_10000ECF0();
  result = sub_10001885C();
  qword_10002F078 = result;
  return result;
}

uint64_t sub_1000148F0()
{
  if (qword_100028510 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_10002F078;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10001499C()
{
  result = qword_100028C58;
  if (!qword_100028C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C58);
  }

  return result;
}

uint64_t sub_1000149F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000156C8();
  *v5 = v2;
  v5[1] = sub_100003C90;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100014AA4()
{
  result = qword_100028C60;
  if (!qword_100028C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C60);
  }

  return result;
}

unint64_t sub_100014AFC()
{
  result = qword_100028C68;
  if (!qword_100028C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C68);
  }

  return result;
}

unint64_t sub_100014B54()
{
  result = qword_100028C70;
  if (!qword_100028C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C70);
  }

  return result;
}

uint64_t sub_100014BA8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000156C8();
  *v6 = v2;
  v6[1] = sub_100006700;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100014C5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000156C8();
  *v5 = v2;
  v5[1] = sub_1000066D8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100014D10()
{
  result = qword_100028C78;
  if (!qword_100028C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C78);
  }

  return result;
}

unint64_t sub_100014D68()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

unint64_t sub_100014DC0()
{
  result = qword_100028C88;
  if (!qword_100028C88)
  {
    sub_1000020B8(&qword_100028C90, qword_10001C280);
    sub_100014D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C88);
  }

  return result;
}

uint64_t sub_100014E44(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001499C();
  *v6 = v2;
  v6[1] = sub_1000043C0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100014EF8()
{
  v0 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10001888C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10001880C();
  sub_1000065AC(v7, qword_10002F080);
  sub_100006574(v7, qword_10002F080);
  sub_10001887C();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000187FC();
}

unint64_t sub_100015084()
{
  result = qword_100028C98;
  if (!qword_100028C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C98);
  }

  return result;
}

void *sub_1000150D8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1000150FC()
{
  result = qword_100028CA0;
  if (!qword_100028CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CA0);
  }

  return result;
}

unint64_t sub_100015154()
{
  result = qword_100028CA8;
  if (!qword_100028CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CA8);
  }

  return result;
}

unint64_t sub_1000151AC()
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB0);
  }

  return result;
}

unint64_t sub_100015204()
{
  result = qword_100028CB8;
  if (!qword_100028CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB8);
  }

  return result;
}

unint64_t sub_10001525C()
{
  result = qword_100028CC0;
  if (!qword_100028CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC0);
  }

  return result;
}

unint64_t sub_1000152B0()
{
  result = qword_100028CC8;
  if (!qword_100028CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC8);
  }

  return result;
}

unint64_t sub_100015308()
{
  result = qword_100028CD0;
  if (!qword_100028CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD0);
  }

  return result;
}

uint64_t sub_1000153C4(uint64_t a1)
{
  v2 = sub_10000ECF0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100015414()
{
  result = qword_100028CD8;
  if (!qword_100028CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD8);
  }

  return result;
}

unint64_t sub_10001546C()
{
  result = qword_100028CE0;
  if (!qword_100028CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE0);
  }

  return result;
}

unint64_t sub_1000154C4()
{
  result = qword_100028CE8;
  if (!qword_100028CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE8);
  }

  return result;
}

uint64_t sub_10001551C(uint64_t a1)
{
  v2 = sub_100015308();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000155C0()
{
  result = qword_100028D00;
  if (!qword_100028D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D00);
  }

  return result;
}

unint64_t sub_100015618()
{
  result = qword_100028D08;
  if (!qword_100028D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D08);
  }

  return result;
}

unint64_t sub_100015670()
{
  result = qword_100028D10;
  if (!qword_100028D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D10);
  }

  return result;
}

unint64_t sub_1000156C8()
{
  result = qword_100028D18;
  if (!qword_100028D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D18);
  }

  return result;
}

unint64_t sub_100015720()
{
  result = qword_100028D20;
  if (!qword_100028D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D20);
  }

  return result;
}

uint64_t sub_100015774@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005C80(&qword_100028DD0, &qword_10001CC30);
  v3 = sub_100006574(v2, qword_10002F028);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10001582C()
{
  result = qword_100028D28;
  if (!qword_100028D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D28);
  }

  return result;
}

unint64_t sub_100015884()
{
  result = qword_100028D30;
  if (!qword_100028D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D30);
  }

  return result;
}

unint64_t sub_1000158DC()
{
  result = qword_100028D38;
  if (!qword_100028D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D38);
  }

  return result;
}

uint64_t sub_100015930@<X0>(uint64_t *a1@<X8>)
{
  sub_10000ED98();
  result = sub_1000184DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100015970()
{
  sub_1000180F4();
  v1 = sub_10001876C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000159DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000284E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10001880C();
  v3 = sub_100006574(v2, qword_10002F010);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100015AE0(uint64_t a1)
{
  v2 = sub_100014B54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100015B30()
{
  result = qword_100028D50;
  if (!qword_100028D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D50);
  }

  return result;
}

uint64_t sub_100015B88(uint64_t a1)
{
  v2 = sub_1000158DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100015BD8()
{
  result = qword_100028D58;
  if (!qword_100028D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D58);
  }

  return result;
}

uint64_t sub_100015C2C()
{
  v0 = sub_10001888C();
  sub_1000065AC(v0, qword_10002F098);
  sub_100006574(v0, qword_10002F098);
  return sub_10001887C();
}

uint64_t (*sub_100015C90(uint64_t *a1))()
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
  *(v3 + 32) = sub_1000184EC();
  return sub_1000066DC;
}

unint64_t sub_100015D04()
{
  result = qword_100028D60;
  if (!qword_100028D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D60);
  }

  return result;
}

uint64_t sub_100015D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001804C();
  v5 = sub_1000180F4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100015DC8()
{
  result = qword_100028D68;
  if (!qword_100028D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D68);
  }

  return result;
}

unint64_t sub_100015E20()
{
  result = qword_100028D70;
  if (!qword_100028D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D70);
  }

  return result;
}

uint64_t sub_100015F20(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001804C();
  v7 = sub_1000180A0();
  v8 = sub_1000180F4();
  *v5 = v2;
  v5[1] = sub_1000051F4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100015FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100017D54();
  *a1 = result;
  return result;
}

uint64_t sub_100016014(uint64_t a1)
{
  v2 = sub_100015D04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100016050()
{
  sub_100005C80(&qword_100028648, &qword_100019C80);
  v0 = *(sub_10001864C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100019300;
  sub_1000178E0();
  sub_100012FDC();
  result = sub_10001865C();
  qword_10002F0B0 = v3;
  return result;
}

uint64_t sub_10001615C(uint64_t a1)
{
  v2 = sub_10001855C();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v27 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005C80(&qword_100028D90, &qword_10001CBD8);
  v21 = v5;
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_100005C80(&qword_100028D98, &qword_10001CBE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100012FDC();
  sub_10001862C();
  v31._countAndFlagsBits = 0xD000000000000028;
  v31._object = 0x800000010001DA00;
  sub_10001861C(v31);
  swift_getKeyPath();
  v23 = sub_1000152B0();
  v24 = a1;
  sub_10001854C();

  sub_10001860C();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10001861C(v32);
  sub_10001863C();
  v26 = sub_10001857C();
  v11 = *(v30 + 8);
  v30 += 8;
  v11(v8, v5);
  v22 = v11;
  sub_10001862C();
  v33._countAndFlagsBits = 0x692064726F636552;
  v33._object = 0xEA0000000000206ELL;
  sub_10001861C(v33);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v34._countAndFlagsBits = 0x7974696C61757120;
  v34._object = 0xE800000000000000;
  sub_10001861C(v34);
  sub_10001863C();
  v25 = sub_10001857C();
  v12 = v21;
  v11(v8, v21);
  sub_10001862C();
  v35._countAndFlagsBits = 0x2065676E616863;
  v35._object = 0xE700000000000000;
  sub_10001861C(v35);
  v14 = v27;
  v13 = v28;
  v15 = v29;
  (*(v28 + 104))(v27, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v29);
  sub_1000185FC();
  (*(v13 + 8))(v14, v15);
  v36._object = 0x800000010001DA30;
  v36._countAndFlagsBits = 0xD000000000000010;
  sub_10001861C(v36);
  swift_getKeyPath();
  sub_10001854C();

  sub_10001860C();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_10001861C(v37);
  sub_10001863C();
  v16 = sub_10001857C();
  v22(v8, v12);
  sub_100005C80(&qword_100028DA0, &qword_10001CC10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100019F80;
  v18 = v25;
  *(v17 + 32) = v26;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  v19 = sub_10001856C();

  return v19;
}

uint64_t getEnumTagSinglePayload for AudioQualityEntity.IntentAudioQuality(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioQualityEntity.IntentAudioQuality(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100016904(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000169D0(v11, 0, 0, 1, a1, a2);
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
    sub_10001819C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B420(v11);
  return v7;
}

unint64_t sub_1000169D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100016ADC(a5, a6);
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
    result = sub_100018A4C();
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

char *sub_100016ADC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100016B28(a1, a2);
  sub_100016C58(&off_100024FD8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100016B28(uint64_t a1, unint64_t a2)
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

  v6 = sub_100016D44(v5, 0);
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

  result = sub_100018A4C();
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
        v10 = sub_100018A0C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100016D44(v10, 0);
        result = sub_100018A3C();
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

uint64_t sub_100016C58(uint64_t result)
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

  result = sub_100016DB8(result, v12, 1, v3);
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

void *sub_100016D44(uint64_t a1, uint64_t a2)
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

  sub_100005C80(&qword_100028E08, &qword_10001CC68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100016DB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005C80(&qword_100028E08, &qword_10001CC68);
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

unint64_t sub_100016EAC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100018AAC();
  sub_100018ABC(a1);
  v4 = sub_100018ACC();

  return sub_100016F84(a1, v4);
}

unint64_t sub_100016F18(char a1)
{
  v3 = *(v1 + 40);
  sub_100018AAC();
  sub_100018ABC(a1 & 1);
  v4 = sub_100018ACC();

  return sub_100016FF4(a1 & 1, v4);
}

unint64_t sub_100016F84(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100016FF4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100017064(uint64_t a1)
{
  v2 = sub_100005C80(&qword_1000288F0, &qword_10001AC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005C80(&qword_100028E30, &qword_10001CCB8);
    v8 = sub_100018A5C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100018208(v10, v6, &qword_1000288F0, &qword_10001AC10);
      v12 = *v6;
      result = sub_100016EAC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001872C();
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

unint64_t sub_100017240(uint64_t a1)
{
  v2 = sub_100005C80(&qword_100028DE0, &qword_10001CC40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100005C80(&qword_100028DE8, &qword_10001CC48);
    v8 = sub_100018A5C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100018208(v10, v6, &qword_100028DE0, &qword_10001CC40);
      v12 = *v6;
      result = sub_100016F18(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10001872C();
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

unint64_t sub_10001741C()
{
  v0 = sub_100005C80(&qword_1000286C0, &qword_100019D00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_10001888C();
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005C80(&qword_100028DD8, &qword_10001CC38);
  v11 = sub_100005C80(&qword_100028DE0, &qword_10001CC40);
  v12 = *(v11 - 8);
  v27 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100019310;
  v15 = (v14 + v13);
  v16 = *(v11 + 48);
  *v15 = 0;
  sub_10001887C();
  v17 = *(v9 + 56);
  v24 = v9 + 56;
  v26 = v17;
  v18 = v7;
  v17(v7, 1, 1, v8);
  v19 = sub_1000186EC();
  v20 = *(*(v19 - 8) + 56);
  v20(v3, 1, 1, v19);
  sub_10001871C();
  v21 = &v15[v27];
  v27 = *(v11 + 48);
  *v21 = 1;
  sub_10001887C();
  v26(v18, 1, 1, v25);
  v20(v3, 1, 1, v19);
  sub_10001871C();
  v22 = sub_100017240(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v22;
}

unint64_t sub_100017798(unint64_t result)
{
  if (result >= 2)
  {
    v8[5] = v1;
    v8[6] = v2;
    if (qword_100028478 != -1)
    {
      swift_once();
    }

    v3 = sub_1000188CC();
    sub_100006574(v3, qword_10002EF00);
    v4 = sub_100018A2C();
    v5 = sub_1000188BC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100016904(0xD000000000000015, 0x800000010001DBF0, v8);
      _os_log_impl(&_mh_execute_header, v5, v4, "%s - Unexpected rcAudioQuality value", v6, 0xCu);
      sub_10000B420(v7);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000178E0()
{
  v31 = sub_1000187AC();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_10001888C();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_100005C80(&qword_100028DA8, &qword_10001CC18);
  sub_10001887C();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v33 = 0;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100014B54();
  v26 = sub_10001852C();
  sub_100005C80(&qword_100028DB0, &unk_10001CC20);
  sub_10001887C();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000ECF0();
  sub_10001851C();
  return v26;
}

uint64_t sub_100017CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_1000184FC();
  *a2 = v5;
  return result;
}

uint64_t sub_100017D1C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_10001850C();
}

uint64_t sub_100017D54()
{
  v21[0] = sub_1000187AC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C80(&qword_100028688, &unk_100019CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100005C80(&qword_100028690, &qword_10001ABE0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10001888C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100005C80(&qword_100028DA8, &qword_10001CC18);
  sub_10001887C();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_1000184BC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100014B54();
  return sub_10001852C();
}

unint64_t sub_10001804C()
{
  result = qword_100028DB8;
  if (!qword_100028DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DB8);
  }

  return result;
}

unint64_t sub_1000180A0()
{
  result = qword_100028DC0;
  if (!qword_100028DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DC0);
  }

  return result;
}

unint64_t sub_1000180F4()
{
  result = qword_100028DC8;
  if (!qword_100028DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DC8);
  }

  return result;
}

unint64_t sub_100018148()
{
  result = qword_100028E00;
  if (!qword_100028E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E00);
  }

  return result;
}

uint64_t sub_10001819C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100018208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005C80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_100018308(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCAppGroupStorage init]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- app group user defaults are nil", &v1, 0xCu);
}