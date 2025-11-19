uint64_t sub_10001F928()
{
  v21[0] = sub_10006A3B0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10006A4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007DF0(&qword_100097588, &qword_1000727A0);
  sub_10006A490();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10006A0F0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_10001EA40();
  return sub_10006A150();
}

unint64_t sub_10001FC20()
{
  result = qword_100097590;
  if (!qword_100097590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097590);
  }

  return result;
}

unint64_t sub_10001FC74()
{
  result = qword_100097598;
  if (!qword_100097598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097598);
  }

  return result;
}

unint64_t sub_10001FCC8()
{
  result = qword_1000975A0;
  if (!qword_1000975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000975A0);
  }

  return result;
}

uint64_t sub_10001FD1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10006A420();
  *a2 = result;
  return result;
}

unint64_t sub_10001FD6C()
{
  result = qword_100097600;
  if (!qword_100097600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097600);
  }

  return result;
}

unint64_t sub_10001FDC4()
{
  result = qword_100097608;
  if (!qword_100097608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097608);
  }

  return result;
}

uint64_t sub_10001FE18()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10006A4A0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006A5B0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10006B270();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10006A450();
  sub_10000D8DC(v15, qword_1000A5678);
  sub_10000CEB8(v15, qword_1000A5678);
  sub_10006B260();
  sub_10006A5A0();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10006A4C0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10006A440();
}

uint64_t sub_1000200F4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v39 = v32 - v3;
  v4 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = v32 - v6;
  v7 = sub_10006A4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006A5B0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10006B270();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10006A4B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v36 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = v32 - v21;
  sub_10006B260();
  sub_10006A5A0();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v33 = v7;
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v7);
  v24 = v38;
  sub_10006A4C0();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v27 = v39;
  sub_10006A2F0();
  v28 = sub_10006A300();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v29 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  v32[1] = 2 * *(v17 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10006F2A0;
  sub_10006B260();
  sub_10006A5A0();
  v30 = v33;
  v23(v11, v22, v33);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v30);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v30);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v30);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100020730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100020828, 0, 0);
}

uint64_t sub_100020828()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = async function pointer to _AppEntityUpdate.value<A>(of:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = sub_100007DF0(&qword_100097718, &unk_1000730A8);
  v5 = sub_1000095F4(&qword_100097708, &qword_100097710, &qword_100073068);
  v0[11] = v5;
  *v3 = v0;
  v3[1] = sub_100020938;
  v6 = v0[8];
  v7 = v0[4];

  return _AppEntityUpdate.value<A>(of:)(v6, KeyPath, v4, v5);
}

uint64_t sub_100020938()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100020A50, 0, 0);
}

uint64_t sub_100020A50()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    (*(*(v0 + 56) + 96))(v2, *(v0 + 48));
    v4 = *v2;
    sub_100007DF0(&qword_100097700, &qword_100073050);
    sub_10006A490();
    v5 = sub_10006A430();
    *(v0 + 96) = v5;
    *(v0 + 16) = v5;
    *(v0 + 128) = v4;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v7 = async function pointer to AppEntity._setValue<A>(_:for:)[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100020C88;
    v9 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v9);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100020C88()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);

    v6 = sub_10000ED2C;
  }

  else
  {
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);

    v6 = sub_100020DBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100020DBC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_10001FDC4();
  sub_10006A000();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100020E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100020730(a1, v6, a3);
}

unint64_t sub_100020EF8()
{
  result = qword_100097610;
  if (!qword_100097610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097610);
  }

  return result;
}

unint64_t sub_100020F50()
{
  result = qword_100097618;
  if (!qword_100097618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097618);
  }

  return result;
}

unint64_t sub_100020FA8()
{
  result = qword_100097620;
  if (!qword_100097620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097620);
  }

  return result;
}

uint64_t sub_100020FFC()
{
  v0 = qword_1000975E0;

  return v0;
}

unint64_t sub_100021038()
{
  result = qword_100097628;
  if (!qword_100097628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097628);
  }

  return result;
}

uint64_t sub_10002108C(uint64_t a1)
{
  v2 = sub_100020EF8();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000056, 0x8000000100077E10, a1, v2);
}

unint64_t sub_1000210F4()
{
  result = qword_100097630;
  if (!qword_100097630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097630);
  }

  return result;
}

unint64_t sub_10002114C()
{
  result = qword_100097638;
  if (!qword_100097638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097638);
  }

  return result;
}

unint64_t sub_1000211A4()
{
  result = qword_100097640;
  if (!qword_100097640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097640);
  }

  return result;
}

unint64_t sub_1000211FC()
{
  result = qword_100097648;
  if (!qword_100097648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097648);
  }

  return result;
}

uint64_t sub_100021250()
{
  sub_100022820();
  v1 = sub_10006A3C0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000212C0()
{
  result = qword_100097650;
  if (!qword_100097650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097650);
  }

  return result;
}

unint64_t sub_100021318()
{
  result = qword_100097658;
  if (!qword_100097658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097658);
  }

  return result;
}

unint64_t sub_100021370()
{
  result = qword_100097660;
  if (!qword_100097660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097660);
  }

  return result;
}

unint64_t sub_1000213C8()
{
  result = qword_100097668;
  if (!qword_100097668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097668);
  }

  return result;
}

uint64_t sub_10002141C@<X0>(uint64_t *a1@<X8>)
{
  sub_100021628();
  result = sub_10006A110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000214D8(uint64_t a1)
{
  v2 = sub_100020EF8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100021528()
{
  result = qword_100097680;
  if (!qword_100097680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097680);
  }

  return result;
}

uint64_t sub_100021580(uint64_t a1)
{
  v2 = sub_1000213C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000215D0()
{
  result = qword_100097688;
  if (!qword_100097688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097688);
  }

  return result;
}

unint64_t sub_100021628()
{
  result = qword_100097690;
  if (!qword_100097690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097690);
  }

  return result;
}

uint64_t sub_10002167C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002170C, 0, 0);
}

uint64_t sub_10002170C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100007DF0(&qword_100097700, &qword_100073050);
  sub_10006A490();
  sub_1000095F4(&qword_100097708, &qword_100097710, &qword_100073068);
  *v2 = sub_10006A430();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100021824(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100020FA8();
  *v5 = v2;
  v5[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000218D8()
{
  result = qword_100097698;
  if (!qword_100097698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097698);
  }

  return result;
}

unint64_t sub_100021930()
{
  result = qword_1000976A0;
  if (!qword_1000976A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976A0);
  }

  return result;
}

uint64_t sub_100021984(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100020FA8();
  *v6 = v2;
  v6[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100021A38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100020FA8();
  *v5 = v2;
  v5[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100021AEC()
{
  result = qword_1000976A8;
  if (!qword_1000976A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976A8);
  }

  return result;
}

unint64_t sub_100021B44()
{
  result = qword_1000976B0;
  if (!qword_1000976B0)
  {
    sub_100008154(&qword_1000976B8, qword_100072CD0);
    sub_100021370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976B0);
  }

  return result;
}

uint64_t sub_100021BC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000211FC();
  *v6 = v2;
  v6[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100021C80()
{
  result = qword_1000976C0;
  if (!qword_1000976C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976C0);
  }

  return result;
}

uint64_t sub_100021CD4()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A5B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10006B270();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10006A4B0();
  sub_10000D8DC(v9, qword_1000A5690);
  sub_10000CEB8(v9, qword_1000A5690);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100021EB4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_100021F28()
{
  result = qword_1000976C8;
  if (!qword_1000976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976C8);
  }

  return result;
}

uint64_t sub_100021F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022778();
  v5 = sub_100022820();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100021FE8()
{
  v0 = qword_1000975F0;

  return v0;
}

unint64_t sub_100022024()
{
  result = qword_1000976D0;
  if (!qword_1000976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976D0);
  }

  return result;
}

unint64_t sub_10002207C()
{
  result = qword_1000976D8;
  if (!qword_1000976D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976D8);
  }

  return result;
}

uint64_t sub_100022158(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100022778();
  v8 = sub_1000227CC();
  v9 = sub_100022820();
  *v6 = v2;
  v6[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10002222C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100022480();
  *a1 = result;
  return result;
}

uint64_t sub_100022254(uint64_t a1)
{
  v2 = sub_100021F28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000222F0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  LOBYTE(v2) = [v2 BOOLForKey:v3];

  *v1 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000223CC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  [v2 setBool:v1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100022480()
{
  v21[0] = sub_10006A3B0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10006A4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007DF0(&qword_1000976E0, &qword_100073048);
  sub_10006A490();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10006A0F0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100020EF8();
  return sub_10006A150();
}

unint64_t sub_100022778()
{
  result = qword_1000976E8;
  if (!qword_1000976E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976E8);
  }

  return result;
}

unint64_t sub_1000227CC()
{
  result = qword_1000976F0;
  if (!qword_1000976F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976F0);
  }

  return result;
}

unint64_t sub_100022820()
{
  result = qword_1000976F8;
  if (!qword_1000976F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000976F8);
  }

  return result;
}

uint64_t sub_100022874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10006A420();
  *a2 = result;
  return result;
}

uint64_t sub_1000228D0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v39 = &v33 - v3;
  v4 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v33 - v6;
  v7 = sub_10006A4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006A5B0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10006B270();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10006A4B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v36 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = &v33 - v21;
  sub_10006B260();
  sub_10006A5A0();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v34 = v7;
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v7);
  v24 = v38;
  sub_10006A4C0();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v27 = v39;
  sub_10006A2F0();
  v28 = sub_10006A300();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v29 = *(v17 + 16);
  v30 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v31 = v34;
  v23(v11, v22, v34);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v31);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100022E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_100007DF0(&qword_1000978C8, &qword_100073B88);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100022F20, 0, 0);
}

uint64_t sub_100022F20()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = async function pointer to _AppEntityUpdate.value<A>(of:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = sub_100007DF0(&qword_1000978D0, &qword_100073BB8);
  v5 = sub_1000095F4(&qword_1000978B8, &qword_1000978C0, &qword_100073B78);
  v0[11] = v5;
  *v3 = v0;
  v3[1] = sub_100023030;
  v6 = v0[8];
  v7 = v0[4];

  return _AppEntityUpdate.value<A>(of:)(v6, KeyPath, v4, v5);
}

uint64_t sub_100023030()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100023148, 0, 0);
}

uint64_t sub_100023148()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    (*(*(v0 + 56) + 96))(v2, *(v0 + 48));
    v4 = *v2;
    sub_100007DF0(&qword_1000978B0, &qword_100073B60);
    sub_10006A490();
    v5 = sub_10006A430();
    *(v0 + 96) = v5;
    *(v0 + 16) = v5;
    *(v0 + 128) = v4;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v7 = async function pointer to AppEntity._setValue<A>(_:for:)[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100023388;
    v9 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v9);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100023388()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);

    v6 = sub_10000ED2C;
  }

  else
  {
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);

    v6 = sub_1000234BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000234BC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_1000262CC();
  sub_10006A000();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100023554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100022E28(a1, v6, a3);
}

uint64_t sub_1000235F4()
{
  v0 = qword_100097720;

  return v0;
}

uint64_t sub_10002362C(uint64_t a1)
{
  v2 = sub_100026324();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x8000000100077EF0, a1, v2);
}

uint64_t sub_100023690()
{
  sub_1000275AC();
  v1 = sub_10006A3C0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000236FC@<X0>(uint64_t *a1@<X8>)
{
  sub_100026CC4();
  result = sub_10006A110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023774(uint64_t a1)
{
  v2 = sub_100026324();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000237C4(uint64_t a1)
{
  v2 = sub_1000266EC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100023828(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a3;
  v22[2] = a4;
  v5 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v22 - v7;
  v22[0] = sub_10006A4A0();
  v9 = *(v22[0] - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v22[0]);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10006A5B0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10006B270();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_10006A4B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = sub_10006A450();
  sub_10000D8DC(v20, a2);
  sub_10000CEB8(v20, a2);
  sub_10006B260();
  sub_10006A5A0();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v22[0]);
  sub_10006A4C0();
  (*(v18 + 56))(v8, 1, 1, v17);
  return sub_10006A440();
}

uint64_t NoteListSortType.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100096898 != -1)
  {
    swift_once();
  }

  v0 = sub_10006A450();

  return sub_10000CEB8(v0, static NoteListSortType.typeDisplayRepresentation);
}

uint64_t static NoteListSortType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096898 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A450();
  v3 = sub_10000CEB8(v2, static NoteListSortType.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023C10()
{
  v0 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v38 = v33 - v2;
  v3 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = v33 - v5;
  v42 = sub_10006A4A0();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v42);
  v35 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10006A5B0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10006B270();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v34 = sub_10006A4B0();
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v34);
  sub_100007DF0(&qword_1000978D8, &qword_100073BC0);
  v15 = sub_100007DF0(&qword_1000978E0, &qword_100073BC8);
  v39 = v15;
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v36 = 2 * v16;
  v18 = swift_allocObject();
  v37 = v18;
  *(v18 + 16) = xmmword_10006F2A0;
  v33[0] = *(v15 + 48);
  *(v18 + v17) = 0;
  v19 = v18 + v17;
  sub_10006B260();
  sub_10006A5A0();
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v6 + 104);
  v33[1] = v6 + 104;
  v48 = v20;
  v21 = v35;
  v20(v35);
  sub_10006A4C0();
  v22 = *(v13 + 56);
  v44 = v13 + 56;
  v45 = v22;
  v23 = v34;
  v22(v49, 1, 1, v34);
  v41 = sub_10006A300();
  v24 = *(v41 - 8);
  v40 = *(v24 + 56);
  v43 = v24 + 56;
  v25 = v38;
  v40(v38, 1, 1, v41);
  v46 = v19;
  v26 = v25;
  sub_10006A320();
  v27 = (v19 + v16);
  v28 = v39;
  v33[0] = *(v39 + 48);
  *v27 = 1;
  sub_10006B260();
  sub_10006A5A0();
  v48(v21, v47, v42);
  sub_10006A4C0();
  v29 = v49;
  v45(v49, 1, 1, v23);
  v40(v26, 1, 1, v41);
  sub_10006A320();
  v30 = (v46 + v36);
  v36 = *(v28 + 48);
  *v30 = 2;
  sub_10006B260();
  sub_10006A5A0();
  v48(v21, v47, v42);
  sub_10006A4C0();
  v45(v29, 1, 1, v23);
  v40(v26, 1, 1, v41);
  sub_10006A320();
  v31 = sub_10002603C(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static NoteListSortType.caseDisplayRepresentations = v31;
  return result;
}

uint64_t *NoteListSortType.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  return &static NoteListSortType.caseDisplayRepresentations;
}

uint64_t static NoteListSortType.caseDisplayRepresentations.getter()
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NoteListSortType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static NoteListSortType.caseDisplayRepresentations = a1;
}

uint64_t (*static NoteListSortType.caseDisplayRepresentations.modify())()
{
  if (qword_1000968A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t NoteListSortType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6465696669646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x4464657461657263;
  }

  return 0x656C746974;
}

uint64_t sub_1000244B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4464657461657263;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465696669646F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065746144;
  }

  v7 = 0x4464657461657263;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 0x656C746974;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465696669646F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065746144;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10006B540();
  }

  return v11 & 1;
}

uint64_t sub_1000245C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s37com_apple_mobilenotes_WidgetExtension16NoteListSortTypeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000245F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000657461;
  v5 = 0x4464657461657263;
  if (v2 != 1)
  {
    v5 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465696669646F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10002465C()
{
  v1 = *v0;
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_10002470C()
{
  *v0;
  *v0;
  sub_10006B2B0();
}

Swift::Int sub_1000247A8()
{
  v1 = *v0;
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_10002488C(uint64_t a1)
{
  v2 = sub_100026AC8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000248D8(uint64_t a1)
{
  v2 = sub_100026A48();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100024934(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000249C4, 0, 0);
}

uint64_t sub_1000249C4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100007DF0(&qword_1000978B0, &qword_100073B60);
  sub_10006A490();
  sub_1000095F4(&qword_1000978B8, &qword_1000978C0, &qword_100073B78);
  *v2 = sub_10006A430();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100024AE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000263D4();
  *v5 = v2;
  v5[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100024B94(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000263D4();
  *v6 = v2;
  v6[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100024C48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000263D4();
  *v5 = v2;
  v5[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100024CF8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002658C();
  *v6 = v2;
  v6[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100024DAC()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A5B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10006B270();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10006A4B0();
  sub_10000D8DC(v9, qword_1000A56E0);
  sub_10000CEB8(v9, qword_1000A56E0);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_100024F8C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10006A120();
  return sub_100011580;
}

uint64_t sub_100025000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100027504();
  v5 = sub_1000275AC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100025068()
{
  v0 = qword_100097730;

  return v0;
}

uint64_t sub_1000250D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100027504();
  v8 = sub_100027558();
  v9 = sub_1000275AC();
  *v6 = v2;
  v6[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000251AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002720C();
  *a1 = result;
  return result;
}

uint64_t sub_1000251D4(uint64_t a1)
{
  v2 = sub_100026F00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100025230()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() currentNoteListSortType];
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000252E4()
{
  [objc_opt_self() setCurrentNoteListSortType:*(v0 + 16)];
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100025360(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100010898();

  return sub_100025500(a1, v4);
}

unint64_t sub_1000253A4(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10006B570();
  ParagraphStyle.rawValue.getter(a1);
  sub_10006B2B0();

  v4 = sub_10006B580();

  return sub_10002579C(a1, v4);
}

unint64_t sub_10002542C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10006B570();
  sub_10006B2B0();

  v4 = sub_10006B580();

  return sub_100025AC0(a1, v4);
}

unint64_t sub_100025500(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6C616D5364697267;
          }

          else
          {
            v8 = 0x6964654D64697267;
          }

          if (v7 == 1)
          {
            v9 = 0xE90000000000006CLL;
          }

          else
          {
            v9 = 0xEA00000000006D75;
          }
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1701736302;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0x64654D73656E696CLL;
          v9 = 0xEB000000006D7569;
        }

        else
        {
          v8 = 0x72614C73656E696CLL;
          v9 = 0xEA00000000006567;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6772614C64697267;
        }

        else
        {
          v8 = 0x616D5373656E696CLL;
        }

        if (v7 == 3)
        {
          v9 = 0xE900000000000065;
        }

        else
        {
          v9 = 0xEA00000000006C6CLL;
        }
      }

      v10 = 0x72614C73656E696CLL;
      if (v6 == 5)
      {
        v10 = 0x64654D73656E696CLL;
      }

      v11 = 0xEB000000006D7569;
      if (v6 != 5)
      {
        v11 = 0xEA00000000006567;
      }

      v12 = 0xEA00000000006C6CLL;
      v13 = 0x6772614C64697267;
      if (v6 == 3)
      {
        v12 = 0xE900000000000065;
      }

      else
      {
        v13 = 0x616D5373656E696CLL;
      }

      if (v6 <= 4)
      {
        v10 = v13;
        v11 = v12;
      }

      v14 = 0xE90000000000006CLL;
      v15 = 0x6C616D5364697267;
      if (v6 != 1)
      {
        v15 = 0x6964654D64697267;
        v14 = 0xEA00000000006D75;
      }

      v16 = 1701736302;
      if (v6)
      {
        v16 = v15;
      }

      else
      {
        v14 = 0xE400000000000000;
      }

      v17 = v6 <= 2 ? v16 : v10;
      v18 = v6 <= 2 ? v14 : v11;
      if (v8 == v17 && v9 == v18)
      {
        break;
      }

      v19 = sub_10006B540();

      if ((v19 & 1) == 0)
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

unint64_t sub_10002579C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v27 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v12 = 0xE700000000000000;
            v11 = 0x6E6F6974706163;
          }

          else
          {
            v12 = 0xEA00000000007465;
            v11 = 0x6C6C75427473696CLL;
          }
        }

        else if (v6 == 7)
        {
          v12 = 0xE800000000000000;
          v11 = 0x687361447473696CLL;
        }

        else if (v6 == 8)
        {
          v11 = 0x626D754E7473696CLL;
          v12 = 0xEC00000064657265;
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x6F646F547473696CLL;
        }
      }

      else
      {
        v7 = 0xEA00000000006874;
        if (v6 == 3)
        {
          v8 = 2036625250;
        }

        else
        {
          v8 = 0x6469576465786966;
        }

        if (v6 == 3)
        {
          v7 = 0xE400000000000000;
        }

        if (v6 == 2)
        {
          v8 = 0x6964616568627573;
          v7 = 0xEA0000000000676ELL;
        }

        v9 = *(*(v27 + 48) + v4) ? 0x676E6964616568 : 0x656C746974;
        v10 = *(*(v27 + 48) + v4) ? 0xE700000000000000 : 0xE500000000000000;
        v11 = *(*(v27 + 48) + v4) <= 1u ? v9 : v8;
        v12 = *(*(v27 + 48) + v4) <= 1u ? v10 : v7;
      }

      v13 = 0x6F646F547473696CLL;
      if (v5 == 8)
      {
        v13 = 0x626D754E7473696CLL;
      }

      v14 = 0xEC00000064657265;
      if (v5 != 8)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 7)
      {
        v13 = 0x687361447473696CLL;
        v14 = 0xE800000000000000;
      }

      v15 = 0xEA00000000007465;
      v16 = 0x6C6C75427473696CLL;
      if (v5 == 5)
      {
        v16 = 0x6E6F6974706163;
        v15 = 0xE700000000000000;
      }

      if (v5 <= 6)
      {
        v13 = v16;
        v14 = v15;
      }

      v17 = 0xEA00000000006874;
      if (v5 == 3)
      {
        v18 = 2036625250;
      }

      else
      {
        v18 = 0x6469576465786966;
      }

      if (v5 == 3)
      {
        v17 = 0xE400000000000000;
      }

      if (v5 == 2)
      {
        v18 = 0x6964616568627573;
        v17 = 0xEA0000000000676ELL;
      }

      if (v5)
      {
        v19 = 0x676E6964616568;
      }

      else
      {
        v19 = 0x656C746974;
      }

      if (v5)
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v5 <= 1)
      {
        v18 = v19;
        v17 = v20;
      }

      v21 = v5 <= 4 ? v18 : v13;
      v22 = v5 <= 4 ? v17 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_10006B540();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100025AC0(unsigned __int8 a1, uint64_t a2)
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
          v7 = 0x4464657461657263;
          v8 = 0xEB00000000657461;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE500000000000000;
          v7 = 0x656C746974;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEC00000065746144;
            if (v7 != 0x6465696669646F6DLL)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x6465696669646F6DLL;
        v8 = 0xEC00000065746144;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x4464657461657263;
      }

      else
      {
        v10 = 0x656C746974;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000657461;
      }

      else
      {
        v11 = 0xE500000000000000;
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
      v12 = sub_10006B540();

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

unint64_t sub_100025C6C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097048, qword_100070380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007DF0(&qword_1000978F8, qword_100073BF0);
    v8 = sub_10006B510();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009728(v10, v6, &qword_100097048, qword_100070380);
      v12 = *v6;
      result = sub_100025360(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10006A330();
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

unint64_t sub_100025E54(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_1000975D8, &qword_100072810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007DF0(&qword_1000978F0, &unk_100073BE0);
    v8 = sub_10006B510();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009728(v10, v6, &qword_1000975D8, &qword_100072810);
      v12 = *v6;
      result = sub_1000253A4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10006A330();
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

unint64_t sub_10002603C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_1000978E0, &qword_100073BC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007DF0(&qword_1000978E8, &unk_100073BD0);
    v8 = sub_10006B510();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009728(v10, v6, &qword_1000978E0, &qword_100073BC8);
      v12 = *v6;
      result = sub_10002542C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10006A330();
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

uint64_t _s37com_apple_mobilenotes_WidgetExtension16NoteListSortTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000926E0;
  v6._object = a2;
  v4 = sub_10006B520(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100026274()
{
  result = qword_100097740;
  if (!qword_100097740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097740);
  }

  return result;
}

unint64_t sub_1000262CC()
{
  result = qword_100097748;
  if (!qword_100097748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097748);
  }

  return result;
}

unint64_t sub_100026324()
{
  result = qword_100097750;
  if (!qword_100097750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097750);
  }

  return result;
}

unint64_t sub_10002637C()
{
  result = qword_100097758;
  if (!qword_100097758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097758);
  }

  return result;
}

unint64_t sub_1000263D4()
{
  result = qword_100097760;
  if (!qword_100097760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097760);
  }

  return result;
}

unint64_t sub_10002642C()
{
  result = qword_100097768;
  if (!qword_100097768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097768);
  }

  return result;
}

unint64_t sub_100026484()
{
  result = qword_100097770;
  if (!qword_100097770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097770);
  }

  return result;
}

unint64_t sub_1000264DC()
{
  result = qword_100097778;
  if (!qword_100097778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097778);
  }

  return result;
}

unint64_t sub_100026534()
{
  result = qword_100097780;
  if (!qword_100097780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097780);
  }

  return result;
}

unint64_t sub_10002658C()
{
  result = qword_100097788;
  if (!qword_100097788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097788);
  }

  return result;
}

unint64_t sub_1000265E4()
{
  result = qword_100097790;
  if (!qword_100097790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097790);
  }

  return result;
}

unint64_t sub_10002663C()
{
  result = qword_100097798;
  if (!qword_100097798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097798);
  }

  return result;
}

unint64_t sub_100026694()
{
  result = qword_1000977A0;
  if (!qword_1000977A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977A0);
  }

  return result;
}

unint64_t sub_1000266EC()
{
  result = qword_1000977A8;
  if (!qword_1000977A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977A8);
  }

  return result;
}

unint64_t sub_100026788()
{
  result = qword_1000977C0;
  if (!qword_1000977C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977C0);
  }

  return result;
}

unint64_t sub_1000267E0()
{
  result = qword_1000977C8;
  if (!qword_1000977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977C8);
  }

  return result;
}

unint64_t sub_100026838()
{
  result = qword_1000977D0;
  if (!qword_1000977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977D0);
  }

  return result;
}

unint64_t sub_100026890()
{
  result = qword_1000977D8;
  if (!qword_1000977D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977D8);
  }

  return result;
}

unint64_t sub_1000268E8()
{
  result = qword_1000977E0;
  if (!qword_1000977E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977E0);
  }

  return result;
}

unint64_t sub_100026940()
{
  result = qword_1000977E8;
  if (!qword_1000977E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977E8);
  }

  return result;
}

unint64_t sub_100026998()
{
  result = qword_1000977F0;
  if (!qword_1000977F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977F0);
  }

  return result;
}

unint64_t sub_1000269F0()
{
  result = qword_1000977F8;
  if (!qword_1000977F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000977F8);
  }

  return result;
}

unint64_t sub_100026A48()
{
  result = qword_100097800;
  if (!qword_100097800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097800);
  }

  return result;
}

unint64_t sub_100026AC8()
{
  result = qword_100097808;
  if (!qword_100097808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097808);
  }

  return result;
}

unint64_t sub_100026B20()
{
  result = qword_100097810;
  if (!qword_100097810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097810);
  }

  return result;
}

unint64_t sub_100026B78()
{
  result = qword_100097818;
  if (!qword_100097818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097818);
  }

  return result;
}

unint64_t sub_100026BD0()
{
  result = qword_100097820;
  if (!qword_100097820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097820);
  }

  return result;
}

unint64_t sub_100026C6C()
{
  result = qword_100097838;
  if (!qword_100097838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097838);
  }

  return result;
}

unint64_t sub_100026CC4()
{
  result = qword_100097840;
  if (!qword_100097840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097840);
  }

  return result;
}

unint64_t sub_100026D1C()
{
  result = qword_100097848;
  if (!qword_100097848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097848);
  }

  return result;
}

unint64_t sub_100026D74()
{
  result = qword_100097850;
  if (!qword_100097850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097850);
  }

  return result;
}

unint64_t sub_100026DCC()
{
  result = qword_100097858;
  if (!qword_100097858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097858);
  }

  return result;
}

unint64_t sub_100026E24()
{
  result = qword_100097860;
  if (!qword_100097860)
  {
    sub_100008154(&qword_100097868, qword_1000737C8);
    sub_100026694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097860);
  }

  return result;
}

unint64_t sub_100026EAC()
{
  result = qword_100097870;
  if (!qword_100097870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097870);
  }

  return result;
}

unint64_t sub_100026F00()
{
  result = qword_100097878;
  if (!qword_100097878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097878);
  }

  return result;
}

unint64_t sub_100026F5C()
{
  result = qword_100097880;
  if (!qword_100097880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097880);
  }

  return result;
}

unint64_t sub_100026FB4()
{
  result = qword_100097888;
  if (!qword_100097888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097888);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoteListSortType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NoteListSortType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002720C()
{
  v21[0] = sub_10006A3B0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10006A4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007DF0(&qword_100097890, "ޙ");
  sub_10006A490();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10006A0F0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100026324();
  return sub_10006A150();
}

unint64_t sub_100027504()
{
  result = qword_100097898;
  if (!qword_100097898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097898);
  }

  return result;
}

unint64_t sub_100027558()
{
  result = qword_1000978A0;
  if (!qword_1000978A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000978A0);
  }

  return result;
}

unint64_t sub_1000275AC()
{
  result = qword_1000978A8;
  if (!qword_1000978A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000978A8);
  }

  return result;
}

uint64_t sub_100027600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10006A420();
  *a2 = result;
  return result;
}

unint64_t sub_100027650()
{
  result = qword_100097920;
  if (!qword_100097920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097920);
  }

  return result;
}

unint64_t sub_1000276A8()
{
  result = qword_100097928;
  if (!qword_100097928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097928);
  }

  return result;
}

uint64_t sub_1000276FC()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10006A4A0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006A5B0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10006B270();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10006A450();
  sub_10000D8DC(v15, qword_1000A56F8);
  sub_10000CEB8(v15, qword_1000A56F8);
  sub_10006B260();
  sub_10006A5A0();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10006A4C0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10006A440();
}

uint64_t sub_1000279E0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v37 = &v33 - v3;
  v4 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v39 = &v33 - v6;
  v7 = sub_10006A4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006A5B0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10006B270();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10006A4B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v36 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = &v33 - v21;
  sub_10006B260();
  sub_10006A5A0();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v34 = v7;
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v7);
  v24 = v39;
  sub_10006A4C0();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v27 = v37;
  sub_10006A2F0();
  v28 = sub_10006A300();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v29 = *(v17 + 16);
  v30 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v31 = v34;
  v23(v11, v22, v34);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v31);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_100027F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100028038, 0, 0);
}

uint64_t sub_100028038()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = async function pointer to _AppEntityUpdate.value<A>(of:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = sub_100007DF0(&qword_100097A38, &qword_100074440);
  v5 = sub_1000095F4(&qword_100097A28, &qword_100097A30, &qword_100074400);
  v0[11] = v5;
  *v3 = v0;
  v3[1] = sub_100028148;
  v6 = v0[8];
  v7 = v0[4];

  return _AppEntityUpdate.value<A>(of:)(v6, KeyPath, v4, v5);
}

uint64_t sub_100028148()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100028260, 0, 0);
}

uint64_t sub_100028260()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    (*(*(v0 + 56) + 96))(v2, *(v0 + 48));
    v4 = *v2;
    sub_100007DF0(&qword_100097A20, &qword_1000743E8);
    sub_10006A490();
    v5 = sub_10006A430();
    *(v0 + 96) = v5;
    *(v0 + 16) = v5;
    *(v0 + 128) = v4;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v7 = async function pointer to AppEntity._setValue<A>(_:for:)[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1000284A0;
    v9 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v9);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000284A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);

    v6 = sub_10000ED2C;
  }

  else
  {
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);

    v6 = sub_1000285D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000285D4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_1000276A8();
  sub_10006A000();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_100027F40(a1, v6, a3);
}

unint64_t sub_100028710()
{
  result = qword_100097930;
  if (!qword_100097930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097930);
  }

  return result;
}

unint64_t sub_100028768()
{
  result = qword_100097938;
  if (!qword_100097938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097938);
  }

  return result;
}

unint64_t sub_1000287C0()
{
  result = qword_100097940;
  if (!qword_100097940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097940);
  }

  return result;
}

uint64_t sub_100028814()
{
  v0 = qword_100097900;

  return v0;
}

unint64_t sub_100028850()
{
  result = qword_100097948;
  if (!qword_100097948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097948);
  }

  return result;
}

uint64_t sub_1000288A4(uint64_t a1)
{
  v2 = sub_100028710();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004FLL, 0x8000000100078030, a1, v2);
}

unint64_t sub_10002890C()
{
  result = qword_100097950;
  if (!qword_100097950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097950);
  }

  return result;
}

unint64_t sub_100028964()
{
  result = qword_100097958;
  if (!qword_100097958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097958);
  }

  return result;
}

unint64_t sub_1000289BC()
{
  result = qword_100097960;
  if (!qword_100097960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097960);
  }

  return result;
}

unint64_t sub_100028A14()
{
  result = qword_100097968;
  if (!qword_100097968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097968);
  }

  return result;
}

uint64_t sub_100028A68()
{
  sub_10002A040();
  v1 = sub_10006A3C0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100028AD8()
{
  result = qword_100097970;
  if (!qword_100097970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097970);
  }

  return result;
}

unint64_t sub_100028B30()
{
  result = qword_100097978;
  if (!qword_100097978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097978);
  }

  return result;
}

unint64_t sub_100028B88()
{
  result = qword_100097980;
  if (!qword_100097980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097980);
  }

  return result;
}

unint64_t sub_100028BE0()
{
  result = qword_100097988;
  if (!qword_100097988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097988);
  }

  return result;
}

uint64_t sub_100028C34@<X0>(uint64_t *a1@<X8>)
{
  sub_100028E40();
  result = sub_10006A110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100028CF0(uint64_t a1)
{
  v2 = sub_100028710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100028D40()
{
  result = qword_1000979A0;
  if (!qword_1000979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979A0);
  }

  return result;
}

uint64_t sub_100028D98(uint64_t a1)
{
  v2 = sub_100028BE0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100028DE8()
{
  result = qword_1000979A8;
  if (!qword_1000979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979A8);
  }

  return result;
}

unint64_t sub_100028E40()
{
  result = qword_1000979B0;
  if (!qword_1000979B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979B0);
  }

  return result;
}

uint64_t sub_100028E94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100028F24, 0, 0);
}

uint64_t sub_100028F24()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100007DF0(&qword_100097A20, &qword_1000743E8);
  sub_10006A490();
  sub_1000095F4(&qword_100097A28, &qword_100097A30, &qword_100074400);
  *v2 = sub_10006A430();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100029044(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000287C0();
  *v5 = v2;
  v5[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000290F8()
{
  result = qword_1000979B8;
  if (!qword_1000979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979B8);
  }

  return result;
}

unint64_t sub_100029150()
{
  result = qword_1000979C0;
  if (!qword_1000979C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979C0);
  }

  return result;
}

uint64_t sub_1000291A4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000287C0();
  *v6 = v2;
  v6[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100029258(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000287C0();
  *v5 = v2;
  v5[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10002930C()
{
  result = qword_1000979C8;
  if (!qword_1000979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979C8);
  }

  return result;
}

unint64_t sub_100029364()
{
  result = qword_1000979D0;
  if (!qword_1000979D0)
  {
    sub_100008154(&qword_1000979D8, qword_100074080);
    sub_100028B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979D0);
  }

  return result;
}

uint64_t sub_1000293E8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100028A14();
  *v6 = v2;
  v6[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000294A0()
{
  result = qword_1000979E0;
  if (!qword_1000979E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979E0);
  }

  return result;
}

uint64_t sub_1000294F4()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A5B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10006B270();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10006A4B0();
  sub_10000D8DC(v9, qword_1000A5710);
  sub_10000CEB8(v9, qword_1000A5710);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_1000296D4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_100029748()
{
  result = qword_1000979E8;
  if (!qword_1000979E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979E8);
  }

  return result;
}

uint64_t sub_10002979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100029F98();
  v5 = sub_10002A040();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100029808()
{
  v0 = qword_100097910;

  return v0;
}

unint64_t sub_100029844()
{
  result = qword_1000979F0;
  if (!qword_1000979F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979F0);
  }

  return result;
}

unint64_t sub_10002989C()
{
  result = qword_1000979F8;
  if (!qword_1000979F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000979F8);
  }

  return result;
}

uint64_t sub_100029978(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100029F98();
  v8 = sub_100029FEC();
  v9 = sub_10002A040();
  *v6 = v2;
  v6[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100029A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100029CA0();
  *a1 = result;
  return result;
}

uint64_t sub_100029A74(uint64_t a1)
{
  v2 = sub_100029748();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100029B10()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  LOBYTE(v2) = [v2 BOOLForKey:v3];

  *v1 = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100029BEC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_10006B280();
  [v2 setBool:v1 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100029CA0()
{
  v21[0] = sub_10006A3B0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10006A4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007DF0(&qword_100097A00, &qword_1000743E0);
  sub_10006A490();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10006A0F0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100028710();
  return sub_10006A150();
}

unint64_t sub_100029F98()
{
  result = qword_100097A08;
  if (!qword_100097A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A08);
  }

  return result;
}

unint64_t sub_100029FEC()
{
  result = qword_100097A10;
  if (!qword_100097A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A10);
  }

  return result;
}

unint64_t sub_10002A040()
{
  result = qword_100097A18;
  if (!qword_100097A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A18);
  }

  return result;
}

uint64_t sub_10002A094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10006A420();
  *a2 = result;
  return result;
}

unint64_t sub_10002A0DC()
{
  result = qword_100097A60;
  if (!qword_100097A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A60);
  }

  return result;
}

unint64_t sub_10002A134()
{
  result = qword_100097A68;
  if (!qword_100097A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A68);
  }

  return result;
}

uint64_t sub_10002A188()
{
  v0 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10006A4A0();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006A5B0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10006B270();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10006A4B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10006A450();
  sub_10000D8DC(v15, qword_1000A5728);
  sub_10000CEB8(v15, qword_1000A5728);
  sub_10006B260();
  sub_10006A5A0();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10006A4C0();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10006A440();
}

uint64_t sub_10002A464@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_100007DF0(&qword_100097018, &unk_100070BA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v39 = &v33 - v3;
  v4 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = &v33 - v6;
  v7 = sub_10006A4A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006A5B0();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10006B270();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10006A4B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v36 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = &v33 - v21;
  sub_10006B260();
  sub_10006A5A0();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v34 = v7;
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v7);
  v24 = v38;
  sub_10006A4C0();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = ICNotesAppBundleIdentifier();
  sub_10006B290();

  v27 = v39;
  sub_10006A2F0();
  v28 = sub_10006A300();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_100007DF0(&qword_100097020, &qword_100070330);
  v29 = *(v17 + 16);
  v30 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_10006F820;
  sub_10006B260();
  sub_10006A5A0();
  v31 = v34;
  v23(v11, v22, v34);
  sub_10006A4C0();
  sub_10006B260();
  sub_10006A5A0();
  v23(v11, v22, v31);
  sub_10006A4C0();
  return sub_10006A310();
}

uint64_t sub_10002A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_100007DF0(&qword_100097188, &qword_100071420);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10002AAA8, 0, 0);
}

uint64_t sub_10002AAA8()
{
  KeyPath = swift_getKeyPath();
  v0[9] = KeyPath;
  v2 = async function pointer to _AppEntityUpdate.value<A>(of:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v4 = sub_100007DF0(&qword_100097B80, &unk_100074CB0);
  v5 = sub_1000095F4(&qword_100097B68, &qword_100097B70, &qword_100074C68);
  v0[11] = v5;
  *v3 = v0;
  v3[1] = sub_10002ABB8;
  v6 = v0[8];
  v7 = v0[4];

  return _AppEntityUpdate.value<A>(of:)(v6, KeyPath, v4, v5);
}

uint64_t sub_10002ABB8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_10002ACD0, 0, 0);
}

uint64_t sub_10002ACD0()
{
  if ((*(*(v0 + 56) + 88))(*(v0 + 64), *(v0 + 48)) == enum case for _IntentValueState.set<A>(_:))
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    (*(*(v0 + 56) + 96))(v2, *(v0 + 48));
    v4 = *v2;
    sub_100007DF0(&qword_100097B60, &qword_100074C50);
    sub_10006A490();
    v5 = sub_10006A430();
    *(v0 + 96) = v5;
    *(v0 + 16) = v5;
    *(v0 + 128) = v4;
    KeyPath = swift_getKeyPath();
    *(v0 + 104) = KeyPath;
    v7 = async function pointer to AppEntity._setValue<A>(_:for:)[1];
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_10002AF08;
    v9 = *(v0 + 88);

    return AppEntity._setValue<A>(_:for:)(v0 + 128, KeyPath, v9);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    sub_10006A010();
    sub_10001318C();
    swift_allocError();
    sub_10006A2C0();
    swift_willThrow();
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10002AF08()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = *(v2 + 104);

    v6 = sub_10000ED2C;
  }

  else
  {
    v7 = *(v2 + 96);
    v8 = *(v2 + 104);

    v6 = sub_10002B03C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002B03C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  sub_10002A134();
  sub_10006A000();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002B0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EE3C;

  return sub_10002A9B0(a1, v6, a3);
}

unint64_t sub_10002B178()
{
  result = qword_100097A70;
  if (!qword_100097A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A70);
  }

  return result;
}

unint64_t sub_10002B1D0()
{
  result = qword_100097A78;
  if (!qword_100097A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A78);
  }

  return result;
}

unint64_t sub_10002B228()
{
  result = qword_100097A80;
  if (!qword_100097A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A80);
  }

  return result;
}

uint64_t sub_10002B27C()
{
  v0 = qword_100097A40;

  return v0;
}

unint64_t sub_10002B2B8()
{
  result = qword_100097A88;
  if (!qword_100097A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A88);
  }

  return result;
}

uint64_t sub_10002B30C(uint64_t a1)
{
  v2 = sub_10002B178();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000059, 0x8000000100078150, a1, v2);
}

unint64_t sub_10002B374()
{
  result = qword_100097A90;
  if (!qword_100097A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A90);
  }

  return result;
}

unint64_t sub_10002B3CC()
{
  result = qword_100097A98;
  if (!qword_100097A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097A98);
  }

  return result;
}

unint64_t sub_10002B424()
{
  result = qword_100097AA0;
  if (!qword_100097AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AA0);
  }

  return result;
}

unint64_t sub_10002B47C()
{
  result = qword_100097AA8;
  if (!qword_100097AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AA8);
  }

  return result;
}

uint64_t sub_10002B4D0()
{
  sub_10002CFC8();
  v1 = sub_10006A3C0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10002B540()
{
  result = qword_100097AB0;
  if (!qword_100097AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AB0);
  }

  return result;
}

unint64_t sub_10002B598()
{
  result = qword_100097AB8;
  if (!qword_100097AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AB8);
  }

  return result;
}

unint64_t sub_10002B5F0()
{
  result = qword_100097AC0;
  if (!qword_100097AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AC0);
  }

  return result;
}

unint64_t sub_10002B648()
{
  result = qword_100097AC8;
  if (!qword_100097AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AC8);
  }

  return result;
}

uint64_t sub_10002B69C@<X0>(uint64_t *a1@<X8>)
{
  sub_10002B8A8();
  result = sub_10006A110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002B758(uint64_t a1)
{
  v2 = sub_10002B178();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002B7A8()
{
  result = qword_100097AE0;
  if (!qword_100097AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AE0);
  }

  return result;
}

uint64_t sub_10002B800(uint64_t a1)
{
  v2 = sub_10002B648();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002B850()
{
  result = qword_100097AE8;
  if (!qword_100097AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AE8);
  }

  return result;
}

unint64_t sub_10002B8A8()
{
  result = qword_100097AF0;
  if (!qword_100097AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AF0);
  }

  return result;
}

uint64_t sub_10002B8FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10006A4B0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10002B98C, 0, 0);
}

uint64_t sub_10002B98C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100007DF0(&qword_100097B60, &qword_100074C50);
  sub_10006A490();
  sub_1000095F4(&qword_100097B68, &qword_100097B70, &qword_100074C68);
  *v2 = sub_10006A430();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002BAA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10002B228();
  *v5 = v2;
  v5[1] = sub_100010D04;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10002BB58()
{
  result = qword_100097AF8;
  if (!qword_100097AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097AF8);
  }

  return result;
}

unint64_t sub_10002BBB0()
{
  result = qword_100097B00;
  if (!qword_100097B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B00);
  }

  return result;
}

uint64_t sub_10002BC04(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002B228();
  *v6 = v2;
  v6[1] = sub_100013214;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10002BCB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10002B228();
  *v5 = v2;
  v5[1] = sub_1000131E8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10002BD6C()
{
  result = qword_100097B08;
  if (!qword_100097B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B08);
  }

  return result;
}

unint64_t sub_10002BDC4()
{
  result = qword_100097B10;
  if (!qword_100097B10)
  {
    sub_100008154(&qword_100097B18, qword_1000748D0);
    sub_10002B5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B10);
  }

  return result;
}

uint64_t sub_10002BE48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002B47C();
  *v6 = v2;
  v6[1] = sub_1000131E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10002BF00()
{
  result = qword_100097B20;
  if (!qword_100097B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B20);
  }

  return result;
}

uint64_t sub_10002BF54()
{
  v0 = sub_10006A4A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A5B0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10006B270();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10006A4B0();
  sub_10000D8DC(v9, qword_1000A5740);
  sub_10000CEB8(v9, qword_1000A5740);
  sub_10006B260();
  sub_10006A5A0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10006A4C0();
}

void (*sub_10002C134(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10006A120();
  return sub_100011580;
}

unint64_t sub_10002C1A8()
{
  result = qword_100097B28;
  if (!qword_100097B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B28);
  }

  return result;
}

uint64_t sub_10002C1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002CF20();
  v5 = sub_10002CFC8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10002C268()
{
  v0 = qword_100097A50;

  return v0;
}

unint64_t sub_10002C2A4()
{
  result = qword_100097B30;
  if (!qword_100097B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B30);
  }

  return result;
}

unint64_t sub_10002C2FC()
{
  result = qword_100097B38;
  if (!qword_100097B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B38);
  }

  return result;
}

uint64_t sub_10002C3D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002CF20();
  v8 = sub_10002CF74();
  v9 = sub_10002CFC8();
  *v6 = v2;
  v6[1] = sub_100011848;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10002C4AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CC28();
  *a1 = result;
  return result;
}

uint64_t sub_10002C4D4(uint64_t a1)
{
  v2 = sub_10002C1A8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10002C570()
{
  sub_10006B370();
  *(v0 + 56) = sub_10006B360();
  v2 = sub_10006B350();

  return _swift_task_switch(sub_10002C604, v2, v1);
}

uint64_t sub_10002C604()
{
  v1 = v0[7];

  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v2, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v0[8] = v0[5];
  swift_endAccess();

  return _swift_task_switch(sub_10002C6F4, 0, 0);
}

uint64_t sub_10002C6F4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v1 managedObjectContext];
    v4 = [v2 defaultAccountInContext:v3];

    if (v4)
    {
      v5 = [objc_opt_self() sharedController];
      v6 = [v5 isSubscribedToMentionNotificationsForAccount:v4];

      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  **(v0 + 48) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10002C830()
{
  sub_10006B370();
  *(v0 + 72) = sub_10006B360();
  v2 = sub_10006B350();

  return _swift_task_switch(sub_10002C8C4, v2, v1);
}

uint64_t sub_10002C8C4()
{
  v1 = v0[9];

  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v2, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v0[10] = v0[8];
  swift_endAccess();

  return _swift_task_switch(sub_10002C9B4, 0, 0);
}

uint64_t sub_10002C9B4()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = [v0[10] managedObjectContext];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v0[6] = sub_10002D054;
    v0[7] = v4;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10002CBE4;
    v0[5] = &unk_100092F10;
    v5 = _Block_copy(v0 + 2);
    v6 = v0[7];
    v7 = v1;

    [v3 performBlock:v5];
    _Block_release(v5);
  }

  v8 = v0[1];

  return v8();
}

void sub_10002CAF8(void *a1, char a2)
{
  v4 = objc_opt_self();
  v5 = [a1 managedObjectContext];
  v6 = [v4 defaultAccountInContext:v5];

  if (v6)
  {
    v7 = [objc_opt_self() sharedController];
    [v7 updateSubscriptionPreferenceForMentionNotifications:a2 & 1 forAccount:v6];
  }
}

uint64_t sub_10002CBE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10002CC28()
{
  v21[0] = sub_10006A3B0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096FC0, &unk_100071C40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100007DF0(&qword_100096FC8, &qword_1000702F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10006A4B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100007DF0(&qword_100097B40, &qword_100074C48);
  sub_10006A490();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10006A0F0();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_10002B178();
  return sub_10006A150();
}

unint64_t sub_10002CF20()
{
  result = qword_100097B48;
  if (!qword_100097B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B48);
  }

  return result;
}

unint64_t sub_10002CF74()
{
  result = qword_100097B50;
  if (!qword_100097B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B50);
  }

  return result;
}

unint64_t sub_10002CFC8()
{
  result = qword_100097B58;
  if (!qword_100097B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097B58);
  }

  return result;
}

uint64_t sub_10002D01C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10002D060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D078@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_10006A420();
  *a2 = result;
  return result;
}

uint64_t sub_10002D0BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x636E6176656C6572;
  }

  else
  {
    v4 = 0x656E696C656D6974;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x636E6176656C6572;
  }

  else
  {
    v6 = 0x656E696C656D6974;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10006B540();
  }

  return v9 & 1;
}

Swift::Int sub_10002D168()
{
  v1 = *v0;
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_10002D1F0()
{
  *v0;
  sub_10006B2B0();
}

Swift::Int sub_10002D264()
{
  v1 = *v0;
  sub_10006B570();
  sub_10006B2B0();

  return sub_10006B580();
}

uint64_t sub_10002D2E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100092798;
  v8._object = v3;
  v5 = sub_10006B520(v4, v8);

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

void sub_10002D348(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C656D6974;
  if (*v1)
  {
    v2 = 0x636E6176656C6572;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10002D38C()
{
  v1 = OBJC_IVAR____TtC37com_apple_mobilenotes_WidgetExtension24LastEditedNoteDataSource_logger;
  v2 = sub_10006A6C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LastEditedNoteDataSource()
{
  result = qword_100097BB8;
  if (!qword_100097BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002D47C()
{
  result = sub_10006A6C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LastEditedNoteDataSource.DataSourceClient(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LastEditedNoteDataSource.DataSourceClient(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002D678()
{
  result = qword_100097C48;
  if (!qword_100097C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097C48);
  }

  return result;
}

void sub_10002D6CC(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v96 = a5;
  v94 = a4;
  v97 = a3;
  v93 = a2;
  v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - v14;
  __chkstk_darwin(v13);
  v95 = &v80 - v16;
  v17 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v80 - v23;
  __chkstk_darwin(v22);
  v26 = &v80 - v25;
  v27 = [a1 identifier];
  if (v27)
  {
    v28 = v27;
    v29 = sub_10006B290();
    v91 = v30;
    v92 = v29;
  }

  else
  {
    v91 = 0xE000000000000000;
    v92 = 0;
  }

  v31 = [a1 title];
  if (v31)
  {
    v32 = v31;
    v33 = sub_10006B290();
    v89 = v34;
    v90 = v33;
  }

  else
  {
    v89 = 0xE000000000000000;
    v90 = 0;
  }

  v35 = [a1 widgetInfoText];
  v36 = sub_10006B290();
  v87 = v37;
  v88 = v36;

  v38 = objc_opt_self();
  v39 = [v38 dateForCurrentSortTypeForNote:a1 folderNoteSortType:v97];
  if (v39)
  {
    v40 = v39;
    sub_10006A540();

    v41 = sub_10006A560();
    (*(*(v41 - 8) + 56))(v24, 0, 1, v41);
  }

  else
  {
    v41 = sub_10006A560();
    (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
  }

  sub_1000096C0(v24, v26, &qword_100097C70, &qword_100076A60);
  sub_10006A560();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v26, 1, v41) == 1)
  {
    sub_100009790(v26, &qword_100097C70, &qword_100076A60);
    v85 = 0xE000000000000000;
    v86 = 0;
  }

  else
  {
    v43 = sub_10006A530();
    v85 = v44;
    v86 = v43;
    (*(v42 + 8))(v26, v41);
  }

  v45 = [v38 dateForCurrentSortTypeAccessibilityStringForNote:a1 folderNoteSortType:v97];
  if (v45)
  {
    v46 = v45;
    v47 = sub_10006B290();
    v83 = v48;
    v84 = v47;
  }

  else
  {
    v83 = 0xE000000000000000;
    v84 = 0;
  }

  v82 = [a1 isSharedViaICloud];
  v49 = [a1 modificationDate];
  if (v49)
  {
    v50 = v49;
    sub_10006A540();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  (*(v42 + 56))(v21, v51, 1, v41);
  v52 = [a1 shareDescription];
  if (v52)
  {
    v53 = v52;
    v81 = sub_10006B290();
    v55 = v54;
  }

  else
  {
    v81 = 0;
    v55 = 0;
  }

  v56 = v96;
  if (v96 == 0xFF)
  {
    v62 = sub_10006A520();
    (*(*(v62 - 8) + 56))(v15, 1, 1, v62);
  }

  else
  {
    v57 = v94;
    v58 = v94;
    sub_10002DEEC(a1, v57, v56 & 1, v15);
    sub_100030A38(v57, v56);
    v59 = sub_10006A520();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v15, 1, v59) != 1)
    {
      v61 = v95;
      (*(v60 + 32))(v95, v15, v59);
      (*(v60 + 56))(v61, 0, 1, v59);
      goto LABEL_31;
    }
  }

  v63 = [objc_opt_self() appURLForNote:a1];
  if (v63)
  {
    v64 = v63;
    sub_10006A4F0();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = sub_10006A520();
  v67 = *(v66 - 8);
  (*(v67 + 56))(v12, v65, 1, v66);
  sub_1000096C0(v12, v95, &qword_100096B30, &qword_10006F548);
  if ((*(v67 + 48))(v15, 1, v66) != 1)
  {
    sub_100009790(v15, &qword_100096B30, &qword_10006F548);
  }

LABEL_31:
  v68 = sub_1000301BC(a1);
  if (v93)
  {
    v69 = sub_10000D430(a1);
  }

  else
  {
    v69 = &_swiftEmptyArrayStorage;
  }

  v70 = sub_1000306D4(a1);
  v71 = sub_1000306D4(a1);
  v72 = [a1 ic_hasLightBackground];
  v73 = v91;
  *a6 = v92;
  *(a6 + 8) = v73;
  v74 = v89;
  *(a6 + 16) = v90;
  *(a6 + 24) = v74;
  v75 = v87;
  *(a6 + 32) = v88;
  *(a6 + 40) = v75;
  v76 = v85;
  *(a6 + 48) = v86;
  *(a6 + 56) = v76;
  v77 = v83;
  *(a6 + 64) = v84;
  *(a6 + 72) = v77;
  *(a6 + 80) = v82;
  v78 = type metadata accessor for Note();
  sub_1000096C0(v21, a6 + v78[10], &qword_100097C70, &qword_100076A60);
  v79 = (a6 + v78[11]);
  *v79 = v81;
  v79[1] = v55;
  sub_1000096C0(v95, a6 + v78[12], &qword_100096B30, &qword_10006F548);
  *(a6 + v78[13]) = v68;
  *(a6 + v78[14]) = v69;
  *(a6 + v78[15]) = v70;
  *(a6 + v78[16]) = v71;
  *(a6 + v78[17]) = v72;
  [a1 turnAttachmentsIntoFaults];
  sub_100030A38(v94, v96);
}

uint64_t sub_10002DEA0()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100097C50);
  sub_10000CEB8(v0, qword_100097C50);
  return sub_10006A6A0();
}

uint64_t sub_10002DEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = objc_opt_self();
  if (a3)
  {
    v16 = [v15 appURLForNote:a1 inVirtualSmartFolder:a2];
    if (v16)
    {
      v17 = v16;
      sub_10006A4F0();

      v18 = sub_10006A520();
      (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    }

    else
    {
      v22 = sub_10006A520();
      (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    }

    v14 = v12;
  }

  else
  {
    v19 = [v15 appURLForNote:a1 inFolder:a2];
    if (v19)
    {
      v20 = v19;
      sub_10006A4F0();

      v21 = sub_10006A520();
      (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
    }

    else
    {
      v23 = sub_10006A520();
      (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    }
  }

  return sub_1000096C0(v14, a4, &qword_100096B30, &qword_10006F548);
}

id sub_10002E110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v17 = [a1 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_10006B290();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  result = [a1 title];
  if (result)
  {
    v23 = result;
    v59 = v21;
    v60 = v19;
    v24 = sub_10006B290();
    v57 = v25;
    v58 = v24;

    v26 = [a1 widgetInfoText];
    v27 = sub_10006B290();
    v55 = v28;
    v56 = v27;

    v29 = objc_opt_self();
    v30 = [v29 dateForCurrentSortTypeForNote:a1 folderNoteSortType:0];
    if (v30)
    {
      v31 = v30;
      sub_10006A540();

      v32 = sub_10006A560();
      (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
    }

    else
    {
      v32 = sub_10006A560();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
    }

    sub_1000096C0(v14, v16, &qword_100097C70, &qword_100076A60);
    sub_10006A560();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v16, 1, v32) == 1)
    {
      sub_100009790(v16, &qword_100097C70, &qword_100076A60);
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v34 = sub_10006A530();
      v35 = v36;
      (*(v33 + 8))(v16, v32);
    }

    v37 = [v29 dateForCurrentSortTypeAccessibilityStringForNote:a1 folderNoteSortType:0];
    if (v37)
    {
      v38 = v37;
      v39 = sub_10006B290();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = 1;
    (*(v33 + 56))(v61, 1, 1, v32);
    v43 = [objc_opt_self() appURLForHTMLNote:a1];
    if (v43)
    {
      v44 = v43;
      sub_10006A4F0();

      v42 = 0;
    }

    v45 = v60;
    v46 = sub_10006A520();
    (*(*(v46 - 8) + 56))(v7, v42, 1, v46);

    v48 = v58;
    v47 = v59;
    *a2 = v45;
    *(a2 + 8) = v47;
    v50 = v56;
    v49 = v57;
    *(a2 + 16) = v48;
    *(a2 + 24) = v49;
    v51 = v55;
    *(a2 + 32) = v50;
    *(a2 + 40) = v51;
    *(a2 + 48) = v34;
    *(a2 + 56) = v35;
    *(a2 + 64) = v39;
    *(a2 + 72) = v41;
    *(a2 + 80) = 0;
    v52 = type metadata accessor for Note();
    sub_1000096C0(v61, a2 + v52[10], &qword_100097C70, &qword_100076A60);
    v53 = (a2 + v52[11]);
    *v53 = 0;
    v53[1] = 0;
    result = sub_1000096C0(v7, a2 + v52[12], &qword_100096B30, &qword_10006F548);
    *(a2 + v52[13]) = 0;
    *(a2 + v52[14]) = &_swiftEmptyArrayStorage;
    *(a2 + v52[15]) = 0;
    *(a2 + v52[16]) = 0;
    *(a2 + v52[17]) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002E5E4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a2;
  v106 = a3;
  v108 = a4;
  v109 = a1;
  v101 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v4 = *(*(v101 - 1) + 64);
  v5 = __chkstk_darwin(v101);
  v102 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v98 = v94 - v8;
  v9 = __chkstk_darwin(v7);
  v99 = v94 - v10;
  __chkstk_darwin(v9);
  v103 = v94 - v11;
  v12 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v94 - v14;
  v16 = sub_10006A520();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v97 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = v94 - v21;
  v22 = sub_10006A590();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Note();
  v107 = *(v27 - 1);
  v28 = *(v107 + 64);
  v29 = __chkstk_darwin(v27);
  v100 = v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v94 - v31;
  sub_10006A580();
  v33 = sub_10006A570();
  v35 = v34;
  v36 = v22;
  v37 = v17;
  v38 = v109;
  (*(v23 + 8))(v26, v36);
  *v32 = v33;
  *(v32 + 1) = v35;
  *(v32 + 2) = 0;
  *(v32 + 3) = 0xE000000000000000;
  *(v32 + 4) = 0;
  *(v32 + 5) = 0xE000000000000000;
  *(v32 + 6) = 0;
  *(v32 + 7) = 0xE000000000000000;
  *(v32 + 8) = 0;
  *(v32 + 9) = 0xE000000000000000;
  v32[80] = 0;
  v39 = v27[10];
  v40 = sub_10006A560();
  (*(*(v40 - 8) + 56))(&v32[v39], 1, 1, v40);
  v41 = &v32[v27[11]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = *(v37 + 56);
  v42(&v32[v27[12]], 1, 1, v16);
  *&v32[v27[13]] = 0;
  *&v32[v27[14]] = &_swiftEmptyArrayStorage;
  *&v32[v27[15]] = 0;
  *&v32[v27[16]] = 0;
  v32[v27[17]] = 0;
  v43 = [v38 identifier];
  if (!v43)
  {
    v42(v15, 1, 1, v16);
    goto LABEL_6;
  }

  v44 = v43;
  sub_10006B290();

  sub_10006A510();
  swift_bridgeObjectRelease_n();
  if ((*(v37 + 48))(v15, 1, v16) == 1)
  {
LABEL_6:
    sub_100009790(v15, &qword_100096B30, &qword_10006F548);
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v58 = sub_10006A6C0();
    sub_10000CEB8(v58, qword_100097C50);
    v59 = v38;
    v60 = sub_10006A6B0();
    v61 = sub_10006B3A0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v110[0] = v63;
      *v62 = 136315138;
      v64 = [v59 identifier];
      if (v64)
      {
        v65 = v64;
        v66 = sub_10006B290();
        v68 = v67;
      }

      else
      {
        v68 = 0xA300000000000000;
        v66 = 9732322;
      }

      v76 = sub_1000378C4(v66, v68, v110);

      *(v62 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v60, v61, "Cannot create note URL from intent note identifier — returning nil {identifier: %s}", v62, 0xCu);
      sub_10000804C(v63);
    }

    else
    {
    }

    sub_100030A4C(v32);
    v46 = v107;
    return (*(v46 + 56))(v108, 1, 1, v27);
  }

  v95 = v16;
  v96 = v37;
  v45 = v104;
  (*(v37 + 32))(v104, v15, v16);
  v46 = v107;
  v47 = v103;
  v94[0] = *(v107 + 56);
  v94[1] = v107 + 56;
  (v94[0])(v103, 1, 1, v27);
  v48 = objc_opt_self();
  sub_10006A4E0(v49);
  v51 = v50;
  v52 = [v48 isShowNoteURL:v50];

  if (v52)
  {
    v54 = v105;
    v55 = [v105 managedObjectContext];
    __chkstk_darwin(v55);
    v94[-2] = v45;
    v94[-1] = v54;
    v56 = v99;
    sub_10006B410();

    sub_100009790(v47, &qword_100097C78, &unk_100076050);
    sub_100030A4C(v32);
    sub_1000096C0(v56, v47, &qword_100097C78, &unk_100076050);
    v57 = v102;
  }

  else
  {
    sub_10006A4E0(v53);
    v70 = v69;
    v71 = [v48 isShowHTMLNoteURL:v69];

    if (v71)
    {
      v72 = v106;
      v73 = [v106 managedObjectContext];
      if (v73)
      {
        v74 = v73;
        __chkstk_darwin(v73);
        v94[-2] = v45;
        v94[-1] = v72;
        v75 = v98;
        sub_10006B410();

        sub_100009790(v47, &qword_100097C78, &unk_100076050);
        sub_100030A4C(v32);
      }

      else
      {

        sub_100009790(v47, &qword_100097C78, &unk_100076050);
        sub_100030A4C(v32);
        v75 = v98;
        (v94[0])(v98, 1, 1, v27);
      }

      v57 = v102;
      sub_1000096C0(v75, v47, &qword_100097C78, &unk_100076050);
    }

    else
    {
      if (qword_1000968D0 != -1)
      {
        swift_once();
      }

      v78 = sub_10006A6C0();
      sub_10000CEB8(v78, qword_100097C50);
      v80 = v96;
      v79 = v97;
      v81 = v95;
      (*(v96 + 16))(v97, v104, v95);
      v82 = sub_10006A6B0();
      v83 = sub_10006B3A0();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v110[0] = v101;
        *v84 = 136315138;
        sub_100030AA8();
        v85 = sub_10006B530();
        v86 = v79;
        v87 = v85;
        v89 = v88;
        (*(v80 + 8))(v86, v81);
        v90 = sub_1000378C4(v87, v89, v110);

        *(v84 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v82, v83, "Unknown note URL type — returning nil {noteURL: %s}", v84, 0xCu);
        sub_10000804C(v101);
      }

      else
      {

        (*(v80 + 8))(v79, v81);
      }

      sub_100030A4C(v32);
      v57 = v102;
      v47 = v103;
    }
  }

  sub_1000096C0(v47, v57, &qword_100097C78, &unk_100076050);
  if ((*(v46 + 48))(v57, 1, v27) == 1)
  {
    sub_100009790(v57, &qword_100097C78, &unk_100076050);
    (*(v96 + 8))(v104, v95);
    return (*(v46 + 56))(v108, 1, 1, v27);
  }

  v91 = v57;
  v92 = v100;
  sub_1000081F0(v91, v100);
  sub_1000081F0(v92, v32);
  (*(v96 + 8))(v104, v95);
  v93 = v108;
  sub_1000081F0(v32, v108);
  return (v94[0])(v93, 0, 1, v27);
}

uint64_t sub_10002F1A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_10006A520();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v61 - v11;
  v13 = objc_opt_self();
  sub_10006A4E0(v14);
  v16 = v15;
  v17 = [v13 predicateForNotesMentionedInURL:v15];

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [a2 managedObjectContext];
  v62 = v17;
  v20 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v17 context:v19];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v21 = sub_10006B320();

  if (!(v21 >> 62))
  {
    v22 = v5;
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:

    if (qword_1000968D0 == -1)
    {
LABEL_21:
      v50 = sub_10006A6C0();
      sub_10000CEB8(v50, qword_100097C50);
      (*(v6 + 16))(v12, a1, v22);
      v51 = sub_10006A6B0();
      v52 = sub_10006B3A0();
      if (!os_log_type_enabled(v51, v52))
      {

        (*(v6 + 8))(v12, v22);
        goto LABEL_25;
      }

      v53 = v6;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = v55;
      *v54 = 136315138;
      sub_100030AA8();
      v56 = sub_10006B530();
      v58 = v57;
      (*(v53 + 8))(v12, v22);
      v59 = sub_1000378C4(v56, v58, &v64);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "Cannot find object for note URL — returning nil {noteURL: %s}", v54, 0xCu);
      sub_10000804C(v55);

      goto LABEL_23;
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  v22 = v5;
  if (!sub_10006B4F0())
  {
    goto LABEL_20;
  }

LABEL_3:
  v23 = v6;
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v21 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_28;
  }

  v24 = sub_10006B480();
LABEL_6:
  v25 = v24;

  v26 = [objc_opt_self() sharedWidget];
  v27 = [v26 hidesObject:v25];

  if ((v27 & 1) == 0)
  {
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      v39 = v25;
      v40 = v63;
      sub_10002D6CC(v38, 1, 0, 0, 255, v63);

      v41 = type metadata accessor for Note();
      return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    }

    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v43 = sub_10006A6C0();
    sub_10000CEB8(v43, qword_100097C50);
    v44 = v25;
    v45 = sub_10006A6B0();
    v46 = sub_10006B3A0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = [v44 objectID];
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unknown note object type — returning nil {objectID: %@}", v47, 0xCu);
      sub_100009790(v48, &qword_100096D40, &unk_10006F770);
    }

    goto LABEL_23;
  }

  if (qword_1000968D0 != -1)
  {
    swift_once();
  }

  v28 = sub_10006A6C0();
  sub_10000CEB8(v28, qword_100097C50);
  (*(v6 + 16))(v10, a1, v22);
  v29 = v22;
  v30 = sub_10006A6B0();
  v31 = sub_10006B380();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v32 = 136315138;
    sub_100030AA8();
    v33 = sub_10006B530();
    v35 = v34;
    (*(v23 + 8))(v10, v29);
    v36 = sub_1000378C4(v33, v35, &v64);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Widget hides object for note URL — returning nil {noteURL: %s}", v32, 0xCu);
    sub_10000804C(v61);

LABEL_23:
    goto LABEL_25;
  }

  (*(v6 + 8))(v10, v29);
LABEL_25:
  v60 = type metadata accessor for Note();
  return (*(*(v60 - 8) + 56))(v63, 1, 1, v60);
}

uint64_t sub_10002F938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v5 = sub_10006A520();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v75 - v12;
  __chkstk_darwin(v11);
  v15 = &v75 - v14;
  v16 = objc_opt_self();
  sub_10006A4E0(v17);
  v19 = v18;
  v20 = [v16 objectIDURIRepresentationForHTMLNoteMentionedInURL:v18];

  if (!v20)
  {
    goto LABEL_13;
  }

  v80 = v13;
  v21 = v15;
  sub_10006A4F0();

  v22 = [a2 managedObjectContext];
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 persistentStoreCoordinator];

  if (!v24)
  {
    goto LABEL_12;
  }

  sub_10006A4E0(v25);
  v27 = v26;
  v28 = [v24 managedObjectIDForURIRepresentation:v26];
  v79 = v5;
  v29 = v28;

  v30 = v29;
  v5 = v79;
  if (!v30)
  {
LABEL_12:
    (*(v6 + 8))(v15, v5);
LABEL_13:
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v50 = sub_10006A6C0();
    sub_10000CEB8(v50, qword_100097C50);
    (*(v6 + 16))(v10, a1, v5);
    v51 = sub_10006A6B0();
    v52 = sub_10006B3A0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v83 = v54;
      *v53 = 136315138;
      sub_100030AA8();
      v55 = sub_10006B530();
      v57 = v56;
      (*(v6 + 8))(v10, v5);
      v58 = sub_1000378C4(v55, v57, &v83);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Cannot find HTML object for note URL — returning nil {noteURL: %s}", v53, 0xCu);
      sub_10000804C(v54);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }

    goto LABEL_18;
  }

  v31 = [a2 managedObjectContext];
  if (!v31)
  {
    (*(v6 + 8))(v15, v5);

    goto LABEL_13;
  }

  v83 = 0;
  v32 = v31;
  v33 = [v31 existingObjectWithID:v30 error:&v83];

  v34 = v83;
  v35 = v30;
  if (!v33)
  {
    v63 = v83;
    sub_10006A480();

    swift_willThrow();

    v5 = v79;
    (*(v6 + 8))(v21, v79);
    v82 = 0;
    goto LABEL_13;
  }

  v78 = v30;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 sharedWidget];
  LOBYTE(v36) = [v38 hidesObject:v33];

  if (v36)
  {
    v76 = v21;
    v77 = v33;
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v39 = sub_10006A6C0();
    sub_10000CEB8(v39, qword_100097C50);
    v41 = v79;
    v40 = v80;
    (*(v6 + 16))(v80, a1, v79);
    v42 = sub_10006A6B0();
    v43 = sub_10006B380();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v83 = v75;
      *v44 = 136315138;
      sub_100030AA8();
      v45 = sub_10006B530();
      v47 = v46;
      v48 = *(v6 + 8);
      v48(v40, v41);
      v49 = sub_1000378C4(v45, v47, &v83);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Widget hides HTML object for note URL — returning nil {noteURL: %s}", v44, 0xCu);
      sub_10000804C(v75);

      v48(v76, v41);
    }

    else
    {

      v67 = *(v6 + 8);
      v67(v40, v41);
      v67(v76, v41);
    }
  }

  else
  {
    objc_opt_self();
    v64 = swift_dynamicCastObjCClass();
    if (v64)
    {
      v65 = v64;
      v66 = v33;
      v60 = v81;
      sub_10002E110(v65, v81);

      (*(v6 + 8))(v21, v79);
      v59 = 0;
      goto LABEL_19;
    }

    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v68 = sub_10006A6C0();
    sub_10000CEB8(v68, qword_100097C50);
    v69 = v33;
    v70 = sub_10006A6B0();
    v71 = sub_10006B3A0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      v74 = [v69 objectID];
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Unknown HTML note object type — returning nil {objectID: %@}", v72, 0xCu);
      sub_100009790(v73, &qword_100096D40, &unk_10006F770);
    }

    (*(v6 + 8))(v21, v79);
  }

LABEL_18:
  v59 = 1;
  v60 = v81;
LABEL_19:
  v61 = type metadata accessor for Note();
  return (*(*(v61 - 8) + 56))(v60, v59, 1, v61);
}

id sub_1000301BC(void *a1)
{
  v2 = sub_10006A520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 updateThumbnailAttachmentIdentifier];
  result = [a1 managedObjectContext];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = [a1 thumbnailAttachmentIdentifier];
  if (!v9 || (v10 = v9, sub_10000D894(0, &qword_100097C68, ICAttachment_ptr), v11 = [swift_getObjCClassFromMetadata() cloudObjectWithIdentifier:v10 context:v8], v10, !v11))
  {
LABEL_21:

    return 0;
  }

  v12 = objc_opt_self();
  [v12 ic_scale];
  v14 = [v11 attachmentPreviewImageWithMinSize:32.0 scale:{32.0, v13}];
  if (!v14)
  {
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v24 = sub_10006A6C0();
    sub_10000CEB8(v24, qword_100097C50);
    v25 = v11;
    v26 = sub_10006A6B0();
    v27 = sub_10006B3A0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = [v25 objectID];
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Cannot create preview image for attachment — returning nil preview image {objectID: %@}", v28, 0xCu);
      sub_100009790(v29, &qword_100096D40, &unk_10006F770);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v15 = v14;
  v16 = [v14 previewImageURL];
  if (!v16)
  {
    if (qword_1000968D0 != -1)
    {
      swift_once();
    }

    v31 = sub_10006A6C0();
    sub_10000CEB8(v31, qword_100097C50);
    v32 = v11;
    v33 = sub_10006A6B0();
    v34 = sub_10006B3A0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = [v32 objectID];
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Cannot get previewImageURL for preview image - returning nil preview image {objectID: %@}", v35, 0xCu);
      sub_100009790(v36, &qword_100096D40, &unk_10006F770);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v39 = v15;
  v17 = v16;
  sub_10006A4F0();

  sub_10006A500();
  v18 = objc_allocWithZone(UIImage);
  v19 = sub_10006B280();

  v20 = [v18 initWithContentsOfFile:v19];

  if (v20)
  {
    [v12 ic_scale];
    v22 = [v20 ic_scaledImageMinDimension:32.0 scale:v21];
    v23 = sub_10006AE90();
  }

  else
  {

    v23 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v23;
}

uint64_t sub_1000306D4(void *a1)
{
  v2 = sub_10006A680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 isSystemPaper];
  result = 0;
  if (v7)
  {
    sub_10006A660();
    sub_10006A640();
    v9 = [a1 account];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 identifier];

      if (v11)
      {
        sub_10006B290();
      }
    }

    v12 = [a1 identifier];
    if (v12)
    {
      v13 = v12;
      sub_10006B290();
    }

    sub_10006A650();

    sub_10006A670();
    v14 = sub_10006AE90();

    (*(v3 + 8))(v6, v2);
    return v14;
  }

  return result;
}

void sub_100030A38(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_100030A4C(uint64_t a1)
{
  v2 = type metadata accessor for Note();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100030AA8()
{
  result = qword_100096D38;
  if (!qword_100096D38)
  {
    sub_10006A520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096D38);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TelephonyUtilitiesFeature(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s37com_apple_mobilenotes_WidgetExtension25TelephonyUtilitiesFeatureVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s37com_apple_mobilenotes_WidgetExtension25TelephonyUtilitiesFeatureVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100030BFC()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

unint64_t sub_100030C44()
{
  result = qword_100097C90;
  if (!qword_100097C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097C90);
  }

  return result;
}

unint64_t sub_100030C98()
{
  result = qword_100097C98;
  if (!qword_100097C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097C98);
  }

  return result;
}

uint64_t sub_100030DA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = sub_10006B460();
  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  sub_10006B2C0(v6);
  v7._countAndFlagsBits = sub_10006B460();
  sub_10006B2C0(v7);

  return v5;
}

unint64_t sub_100030E4C()
{
  result = qword_100097CA0;
  if (!qword_100097CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CA0);
  }

  return result;
}

unint64_t sub_100030EA0()
{
  result = qword_100097CA8;
  if (!qword_100097CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CA8);
  }

  return result;
}

unint64_t sub_100030F20()
{
  result = qword_100097CB0;
  if (!qword_100097CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CB0);
  }

  return result;
}

unint64_t sub_100030F74()
{
  result = qword_100097CB8;
  if (!qword_100097CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CB8);
  }

  return result;
}

unint64_t sub_100030FF4()
{
  result = qword_100097CC0;
  if (!qword_100097CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CC0);
  }

  return result;
}

unint64_t sub_100031048()
{
  result = qword_100097CC8;
  if (!qword_100097CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CC8);
  }

  return result;
}

unint64_t sub_1000310C8()
{
  result = qword_100097CD0;
  if (!qword_100097CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CD0);
  }

  return result;
}

unint64_t sub_10003111C()
{
  result = qword_100097CD8;
  if (!qword_100097CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CD8);
  }

  return result;
}

uint64_t sub_1000311AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000311E8()
{
  result = qword_100097CE0;
  if (!qword_100097CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097CE0);
  }

  return result;
}

uint64_t sub_100031274()
{
  sub_10006A8E0();
  sub_100031DE0(&qword_100097D30, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10006A960();
  return v1;
}

uint64_t sub_1000312F0@<X0>(_BYTE *a1@<X8>)
{
  sub_10006A8E0();
  sub_100031DE0(&qword_100097D30, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10006A960();
  *a1 = v3;
  return result;
}

uint64_t sub_1000313A4(uint64_t a1)
{
  v2 = sub_10006B0C0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A910();
}

uint64_t sub_10003146C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_100007DF0(&qword_100097CE8, &qword_1000751B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - v4;
  v42 = sub_100007DF0(&qword_100097CF0, &qword_1000751C0);
  v44 = *(v42 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v42);
  v8 = &v41 - v7;
  v9 = sub_100007DF0(&qword_100097CF8, &qword_1000751C8);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v41 = &v41 - v12;
  v13 = sub_100007DF0(&qword_100097D00, &unk_1000751D0);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v43 = &v41 - v16;
  sub_10006B290();
  sub_100031BD4();
  type metadata accessor for NoteTimelineProvider();
  v50 = swift_allocObject();
  type metadata accessor for NoteWidgetView();
  sub_100031DE0(&qword_100097D10, type metadata accessor for NoteWidgetView);
  sub_100031DE0(&qword_100097D18, type metadata accessor for NoteTimelineProvider);
  sub_10006B160();
  sub_100007DF0(&qword_100097D20, &qword_100076AF0);
  v17 = sub_10006B100();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10006F820;
  (*(v18 + 104))(v21 + v20, enum case for WidgetFamily.systemSmall(_:), v17);
  v22 = sub_100031C20();
  sub_10006AA10();

  (*(v2 + 8))(v5, v1);
  sub_10006A980();
  v23 = sub_10006AC90();
  v25 = v24;
  v27 = v26;
  v50 = v1;
  v51 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v41;
  v29 = v42;
  sub_10006AA30();
  sub_10000832C(v23, v25, v27 & 1);

  v31 = v29;
  (*(v44 + 8))(v8, v29);
  sub_10006A980();
  v32 = sub_10006AC90();
  v34 = v33;
  LOBYTE(v25) = v35;
  v50 = v31;
  v51 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v43;
  v38 = v45;
  sub_10006AA00();
  sub_10000832C(v32, v34, v25 & 1);

  (*(v46 + 8))(v30, v38);
  v50 = v38;
  v51 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  sub_10006AA40();
  return (*(v48 + 8))(v37, v39);
}

uint64_t sub_100031AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s5EntryVMa_0();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031C84(a1, v8);
  sub_100031CE8(&v8[*(v5 + 28)], a2);
  sub_100031D58(v8);
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for NoteWidgetView();
  *(a2 + v10[5]) = KeyPath;
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  swift_storeEnumTagMultiPayload();
  result = swift_getKeyPath();
  v12 = a2 + v10[6];
  *v12 = result;
  *(v12 + 8) = 0;
  *(a2 + v10[7]) = 10;
  return result;
}

unint64_t sub_100031BD4()
{
  result = qword_100097D08;
  if (!qword_100097D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100097D08);
  }

  return result;
}

unint64_t sub_100031C20()
{
  result = qword_100097D28;
  if (!qword_100097D28)
  {
    sub_100008154(&qword_100097CE8, &qword_1000751B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097D28);
  }

  return result;
}

uint64_t sub_100031C84(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa_0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031D58(uint64_t a1)
{
  v2 = _s5EntryVMa_0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100031E28()
{
  sub_100008154(&qword_100097D00, &unk_1000751D0);
  sub_100008154(&qword_100097CF8, &qword_1000751C8);
  sub_100008154(&qword_100097CF0, &qword_1000751C0);
  sub_100008154(&qword_100097CE8, &qword_1000751B8);
  sub_100031C20();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100031F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100097D40, &qword_1000752F0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_10006AEA0();
  }

  v14 = 3;
  if (v12 < 3)
  {
    v14 = v12;
  }

  v19[1] = sub_10005D58C(a1 + 32, 0, (2 * v14) | 1);
  swift_getKeyPath();
  sub_100007DF0(&qword_100097D48, &qword_100075318);
  sub_1000095F4(&qword_100097D50, &qword_100097D48, &qword_100075318);
  sub_100032890();
  sub_10006AF50();
  v15 = v5[2];
  v15(v9, v11, v4);
  *a2 = v13;
  v16 = sub_100007DF0(&qword_100097D60, &qword_100075320);
  v15(a2 + *(v16 + 48), v9, v4);
  v17 = v5[1];
  v17(v11, v4);
  v17(v9, v4);
}

uint64_t sub_1000321F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_10006A970();
  *(a1 + 8) = 0xC028000000000000;
  *(a1 + 16) = 0;
  v4 = sub_100007DF0(&qword_100097D38, &qword_1000752E8);
  return sub_100031F74(v3, (a1 + *(v4 + 44)));
}

double sub_100032250@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10006ABF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - v9;
  v11 = sub_10006AEB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v11);
  sub_10006AF00();
  (*(v12 + 8))(v15, v11);
  sub_10006B0E0();
  v16 = sub_10006B0F0();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  sub_10006AEF0();

  sub_100032954(v10);
  v17 = a1 + *(sub_100007DF0(&qword_100096CF8, &qword_10006F730) + 36);
  *v17 = 0x3FF0000000000000;
  *(v17 + 8) = 0;
  sub_10006AFB0();
  sub_10006A790();
  v18 = (a1 + *(sub_100007DF0(&qword_100097D78, &qword_1000753C0) + 36));
  v19 = v58[7];
  *v18 = v58[6];
  v18[1] = v19;
  v18[2] = v58[8];
  v20 = (a1 + *(sub_100007DF0(&qword_100097D80, &qword_1000753C8) + 36));
  v21 = *(sub_100007DF0(&qword_100097D88, &qword_1000753D0) + 28);
  v22 = enum case for Image.Scale.large(_:);
  v23 = sub_10006AEE0();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  (*(v3 + 104))(v6, enum case for Font.TextStyle.footnote(_:), v2);
  v24 = sub_10006AB90();
  (*(v3 + 8))(v6, v2);
  KeyPath = swift_getKeyPath();
  v26 = (a1 + *(sub_100007DF0(&qword_100097D90, &qword_100075438) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = sub_10006ADF0();
  *(a1 + *(sub_100007DF0(&qword_100097D98, &qword_100075440) + 36)) = v27;
  v28 = sub_10006AE20();
  LOBYTE(v6) = sub_10006AB30();
  v29 = a1 + *(sub_100007DF0(&qword_100097DA0, &qword_100075448) + 36);
  *v29 = v28;
  *(v29 + 8) = v6;
  LOBYTE(v28) = sub_10006AB30();
  sub_10006A720();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a1 + *(sub_100007DF0(&qword_100097DA8, &qword_100075450) + 36);
  *v38 = v28;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v35;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  *(a1 + *(sub_100007DF0(&qword_100097DB0, &qword_100075458) + 36)) = 256;
  v39 = sub_10006AE20();
  sub_10006A760();
  v40 = v59;
  LODWORD(v15) = v60;
  LODWORD(v12) = v61;
  v41 = v62;
  v42 = v63;
  v43 = v64;
  v44 = sub_10006AFB0();
  v46 = v45;
  v47 = sub_10006AFB0();
  v49 = v48;
  *&v67 = v40 * 0.5;
  *(&v67 + 1) = v40;
  *&v68 = __PAIR64__(v12, v15);
  *(&v68 + 1) = v41;
  *&v69 = v42;
  *(&v69 + 1) = v43;
  *&v70 = v39;
  WORD4(v70) = 256;
  *(&v70 + 10) = v65;
  HIWORD(v70) = v66;
  *&v71 = v44;
  *(&v71 + 1) = v46;
  *&v72 = v47;
  *(&v72 + 1) = v48;
  v50 = (a1 + *(sub_100007DF0(&qword_100097DB8, &qword_100075460) + 36));
  v51 = v70;
  v50[2] = v69;
  v50[3] = v51;
  v52 = v72;
  v50[4] = v71;
  v50[5] = v52;
  v53 = v68;
  *v50 = v67;
  v50[1] = v53;
  v73[0] = v40 * 0.5;
  v73[1] = v40;
  v74 = v15;
  v75 = v12;
  v76 = v41;
  v77 = v42;
  v78 = v43;
  v79 = v39;
  v80 = 256;
  v82 = v66;
  v81 = v65;
  v83 = v44;
  v84 = v46;
  v85 = v47;
  v86 = v49;
  sub_1000329CC(&v67, v58);
  sub_100032A3C(v73);
  v54 = sub_10006AE80();
  v55 = a1 + *(sub_100007DF0(&qword_100097DC8, &unk_100075470) + 36);
  *v55 = v54;
  result = 3.0;
  *(v55 + 8) = xmmword_100075250;
  *(v55 + 24) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_100032890()
{
  result = qword_100097D58;
  if (!qword_100097D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097D58);
  }

  return result;
}

uint64_t sub_100032954(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000329CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100097DC0, &qword_100075468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032A3C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097DC0, &qword_100075468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100032AA8()
{
  result = qword_100097DD0;
  if (!qword_100097DD0)
  {
    sub_100008154(&qword_100097DC8, &unk_100075470);
    sub_100032B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DD0);
  }

  return result;
}

unint64_t sub_100032B34()
{
  result = qword_100097DD8;
  if (!qword_100097DD8)
  {
    sub_100008154(&qword_100097DB8, &qword_100075460);
    sub_100032BEC();
    sub_1000095F4(&qword_100097E58, &qword_100097DC0, &qword_100075468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DD8);
  }

  return result;
}

unint64_t sub_100032BEC()
{
  result = qword_100097DE0;
  if (!qword_100097DE0)
  {
    sub_100008154(&qword_100097DB0, &qword_100075458);
    sub_100032CA4();
    sub_1000095F4(&qword_100097E48, &qword_100097E50, &qword_100075490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DE0);
  }

  return result;
}

unint64_t sub_100032CA4()
{
  result = qword_100097DE8;
  if (!qword_100097DE8)
  {
    sub_100008154(&qword_100097DA8, &qword_100075450);
    sub_100032D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DE8);
  }

  return result;
}

unint64_t sub_100032D30()
{
  result = qword_100097DF0;
  if (!qword_100097DF0)
  {
    sub_100008154(&qword_100097DA0, &qword_100075448);
    sub_100032DE8();
    sub_1000095F4(&qword_100097E38, &qword_100097E40, &qword_100075488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DF0);
  }

  return result;
}

unint64_t sub_100032DE8()
{
  result = qword_100097DF8;
  if (!qword_100097DF8)
  {
    sub_100008154(&qword_100097D98, &qword_100075440);
    sub_100032EA0();
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097DF8);
  }

  return result;
}

unint64_t sub_100032EA0()
{
  result = qword_100097E00;
  if (!qword_100097E00)
  {
    sub_100008154(&qword_100097D90, &qword_100075438);
    sub_100032F58();
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E00);
  }

  return result;
}

unint64_t sub_100032F58()
{
  result = qword_100097E08;
  if (!qword_100097E08)
  {
    sub_100008154(&qword_100097D80, &qword_1000753C8);
    sub_100033010();
    sub_1000095F4(&qword_100097E20, &qword_100097D88, &qword_1000753D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E08);
  }

  return result;
}

unint64_t sub_100033010()
{
  result = qword_100097E10;
  if (!qword_100097E10)
  {
    sub_100008154(&qword_100097D78, &qword_1000753C0);
    sub_10003309C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E10);
  }

  return result;
}

unint64_t sub_10003309C()
{
  result = qword_100097E18;
  if (!qword_100097E18)
  {
    sub_100008154(&qword_100096CF8, &qword_10006F730);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100097E18);
  }

  return result;
}

uint64_t sub_100033140@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A560();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000331A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  sub_10003331C(v2 + *(a1 + 20), &v13 - v7);
  v9 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if ((*(*(v9 - 8) + 48))(v8, 2, v9))
  {
    sub_10006B1E0();
    v10 = sub_10006B1F0();
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = sub_10006B1F0();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    return sub_10003338C(v8);
  }
}

uint64_t sub_10003331C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003338C(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100033408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10006A560();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100033518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10006A560();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s5EntryVMa()
{
  result = qword_100097EC8;
  if (!qword_100097EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003366C()
{
  sub_10006A560();
  if (v0 <= 0x3F)
  {
    sub_1000336F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000336F0()
{
  if (!qword_100097ED8)
  {
    sub_100008154(&qword_100097E68, &qword_1000755A0);
    v0 = type metadata accessor for ObjectStates();
    if (!v1)
    {
      atomic_store(v0, &qword_100097ED8);
    }
  }
}

uint64_t sub_100033754()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100097F08);
  sub_10000CEB8(v0, qword_100097F08);
  return sub_10006A6A0();
}

NSURL *sub_1000337A0(void *a1)
{
  v3 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v107 - v5;
  v7 = sub_10006A520();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v107 - v14;
  __chkstk_darwin(v13);
  v108 = &v107 - v16;
  v17 = [a1 identifier];
  if (!v17)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_8;
  }

  v18 = v17;
  sub_10006B290();
  v107 = v7;

  v19 = v107;
  sub_10006A510();
  swift_bridgeObjectRelease_n();
  if ((*(v8 + 48))(v6, 1, v19) == 1)
  {
LABEL_8:
    sub_100009790(v6, &qword_100096B30, &qword_10006F548);
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v31 = sub_10006A6C0();
    sub_10000CEB8(v31, qword_100097F08);
    v32 = a1;
    v33 = sub_10006A6B0();
    v34 = sub_10006B3A0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v111[0] = v36;
      *v35 = 136315138;
      v37 = [v32 identifier];
      if (v37)
      {
        v38 = v37;
        v39 = sub_10006B290();
        v41 = v40;
      }

      else
      {
        v41 = 0xA300000000000000;
        v39 = 9732322;
      }

      v50 = sub_1000378C4(v39, v41, v111);

      *(v35 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v33, v34, "Cannot create notes folder URL from intent note folder identifier — returning nil {identifier: %s}", v35, 0xCu);
      sub_10000804C(v36);
    }

    return 0;
  }

  v20 = v1;
  v21 = v108;
  (*(v8 + 32))(v108, v6, v19);
  v22 = objc_opt_self();
  sub_10006A4E0(v23);
  v25 = v24;
  v26 = [v22 isShowFolderURL:v24];

  if (v26)
  {
    v28 = [objc_opt_self() sharedContext];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 managedObjectContext];
      __chkstk_darwin(v30);
      *(&v107 - 4) = v108;
      *(&v107 - 3) = v29;
      *(&v107 - 2) = v20;
      sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
      sub_10006B410();

      v21 = v108;
      v27 = v111[0];
      if (v111[0])
      {
        goto LABEL_56;
      }
    }
  }

  sub_10006A4E0(v27);
  v43 = v42;
  v44 = [v22 isShowVirtualSmartFolderURL:v42];

  if (v44)
  {
    if (qword_1000968E8 != -1)
    {
      swift_once();
    }

    v46 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
    sub_10000CEB8(v46, qword_100098368);
    swift_beginAccess();
    sub_10006A620();
    v47 = v110;
    swift_endAccess();
    if (v47)
    {
      v48 = [(NSURL *)v47 managedObjectContext];

      __chkstk_darwin(v49);
      *(&v107 - 2) = v20;
      *(&v107 - 1) = v21;
      sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
      sub_10006B410();

      v27 = v111[0];
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_56;
  }

  sub_10006A4E0(v45);
  v53 = v52;
  v54 = [v22 isShowHTMLFolderURL:v52];

  if (!v54)
  {
    goto LABEL_30;
  }

  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v55 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v55, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v56 = v110;
  v57 = swift_endAccess();
  if (!v56)
  {
    v19 = v107;
    goto LABEL_30;
  }

  __chkstk_darwin(v57);
  *(&v107 - 4) = v108;
  *(&v107 - 3) = v56;
  *(&v107 - 2) = v20;
  sub_10000D894(0, &qword_100096D48, NoteContext_ptr);
  v58 = v56;
  sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
  sub_10006B3C0();

  v19 = v107;
  v21 = v108;
  v27 = v111[0];
  if (!v111[0])
  {
LABEL_30:
    sub_10006A4E0(v27);
    v60 = v59;
    v61 = [v22 isShowDefaultFolderURL:v59];

    if (v61)
    {
      if (qword_1000968F0 != -1)
      {
        swift_once();
      }

      v62 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
      sub_10000CEB8(v62, qword_100098380);
      swift_beginAccess();
      sub_10006A620();
      v63 = v110;
      swift_endAccess();
      v64 = [objc_opt_self() defaultFolderWithHTMLNoteContext:v63];

      if (v64)
      {
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v66 = v65;
          v67 = qword_1000968E8;
          v68 = v64;
          if (v67 != -1)
          {
            swift_once();
          }

          v69 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
          sub_10000CEB8(v69, qword_100098368);
          swift_beginAccess();
          sub_10006A620();
          v70 = v109;
          swift_endAccess();
          if (v70)
          {
            v71 = [v70 managedObjectContext];

            __chkstk_darwin(v72);
            *(&v107 - 2) = v20;
            *(&v107 - 1) = v66;
            sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
            sub_10006B410();

LABEL_39:
            v27 = v110;
LABEL_55:
            v21 = v108;
            goto LABEL_56;
          }

          goto LABEL_54;
        }

        objc_opt_self();
        v94 = swift_dynamicCastObjCClass();
        if (v94)
        {
          v95 = v94;
          swift_beginAccess();
          v68 = v64;
          sub_10006A620();
          v96 = v109;
          swift_endAccess();
          if (v96)
          {
            v97 = [v96 managedObjectContext];

            if (v97)
            {
              __chkstk_darwin(v98);
              *(&v107 - 2) = v20;
              *(&v107 - 1) = v95;
              sub_100007DF0(&qword_100097FF0, &qword_1000755B8);
              sub_10006B410();

              goto LABEL_39;
            }
          }

LABEL_54:

          v27 = 0;
          goto LABEL_55;
        }

        if (qword_1000968D8 != -1)
        {
          swift_once();
        }

        v100 = sub_10006A6C0();
        sub_10000CEB8(v100, qword_100097F08);
        v101 = v64;
        v102 = sub_10006A6B0();
        v103 = sub_10006B3A0();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *v104 = 138412290;
          v106 = [v101 objectID];
          *(v104 + 4) = v106;
          *v105 = v106;
          _os_log_impl(&_mh_execute_header, v102, v103, "Unknown object type — returning nil {objectID: %@}", v104, 0xCu);
          sub_100009790(v105, &qword_100096D40, &unk_10006F770);
        }

        (*(v8 + 8))(v108, v19);
      }

      else
      {
        if (qword_1000968D8 != -1)
        {
          swift_once();
        }

        v83 = sub_10006A6C0();
        sub_10000CEB8(v83, qword_100097F08);
        v84 = v108;
        (*(v8 + 16))(v15, v108, v19);
        v85 = sub_10006A6B0();
        v86 = sub_10006B3A0();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v111[0] = v88;
          *v87 = 136315138;
          sub_100037ECC(&qword_100096D38, &type metadata accessor for URL);
          v89 = sub_10006B530();
          v91 = v90;
          v92 = *(v8 + 8);
          v92(v15, v107);
          v93 = sub_1000378C4(v89, v91, v111);
          v19 = v107;

          *(v87 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v85, v86, "Cannot find object for current default notes folder URL — returning nil {notesFolderURL: %s}", v87, 0xCu);
          sub_10000804C(v88);

          v84 = v108;
        }

        else
        {

          v92 = *(v8 + 8);
          v92(v15, v19);
        }

        v92(v84, v19);
      }
    }

    else
    {
      if (qword_1000968D8 != -1)
      {
        swift_once();
      }

      v73 = sub_10006A6C0();
      sub_10000CEB8(v73, qword_100097F08);
      (*(v8 + 16))(v12, v21, v19);
      v74 = sub_10006A6B0();
      v75 = sub_10006B3A0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v111[0] = v77;
        *v76 = 136315138;
        sub_100037ECC(&qword_100096D38, &type metadata accessor for URL);
        v78 = sub_10006B530();
        v80 = v79;
        v81 = *(v8 + 8);
        v81(v12, v107);
        v82 = sub_1000378C4(v78, v80, v111);
        v19 = v107;

        *(v76 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v74, v75, "Unknown notes folder URL type — returning nil {notesFolderURL: %s}", v76, 0xCu);
        sub_10000804C(v77);
      }

      else
      {

        v81 = *(v8 + 8);
        v81(v12, v19);
      }

      v81(v108, v19);
    }

    return 0;
  }

LABEL_56:
  v99 = v27;
  (*(v8 + 8))(v21, v19);
  return v99;
}

void sub_100034710(uint64_t a1@<X1>, size_t *a2@<X8>)
{
  v4 = sub_10006A520();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v9 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v9, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v10 = v30[4];
  swift_endAccess();
  if (v10)
  {
    v11 = [v10 managedObjectContext];

    if (v11)
    {
      v12 = objc_opt_self();
      sub_10006A4E0(v13);
      v15 = v14;
      v16 = [v12 virtualSmartFolderMentionedInURL:v14 context:v11];

      if (v16)
      {
        v17 = sub_1000381D0(v16, v11);

        goto LABEL_14;
      }
    }
  }

  if (qword_1000968D8 != -1)
  {
    swift_once();
  }

  v18 = sub_10006A6C0();
  sub_10000CEB8(v18, qword_100097F08);
  (*(v5 + 16))(v8, a1, v4);
  v19 = sub_10006A6B0();
  v20 = sub_10006B3A0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = a2;
    v23 = v22;
    v30[0] = v22;
    *v21 = 136315138;
    sub_100037ECC(&qword_100096D38, &type metadata accessor for URL);
    v24 = sub_10006B530();
    v26 = v25;
    (*(v5 + 8))(v8, v4);
    v27 = sub_1000378C4(v24, v26, v30);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Cannot find notes object for notes folder URL — returning nil {notesFolderURL: %s}", v21, 0xCu);
    sub_10000804C(v23);
    a2 = v29;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v17 = 0;
LABEL_14:
  *a2 = v17;
}

void sub_100034AAC(uint64_t a1@<X0>, void *a2@<X1>, size_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_10006A520();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  sub_10006A4E0(v14);
  v16 = v15;
  v17 = [v13 objectIDForModernFolderMentionedInURL:v15 noteContext:a2];

  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = [a2 managedObjectContext];
  v54 = 0;
  v19 = [v18 existingObjectWithID:v17 error:&v54];

  v20 = v54;
  if (!v19)
  {
    v25 = v9;
    v26 = v54;
    sub_10006A480();

    v9 = v25;
    swift_willThrow();

    v4 = 0;
LABEL_6:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v27 = sub_10006A6C0();
    sub_10000CEB8(v27, qword_100097F08);
    (*(v9 + 16))(v12, a1, v8);
    v28 = sub_10006A6B0();
    v29 = sub_10006B390();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53[1] = v4;
      v54 = v31;
      v32 = a3;
      v33 = v31;
      *v30 = 136315138;
      sub_100037ECC(&qword_100096D38, &type metadata accessor for URL);
      v34 = sub_10006B530();
      v35 = v9;
      v37 = v36;
      (*(v35 + 8))(v12, v8);
      v38 = sub_1000378C4(v34, v37, &v54);

      *(v30 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Cannot find notes object for notes folder URL — returning nil {notesFolderURL: %s}", v30, 0xCu);
      sub_10000804C(v33);
      a3 = v32;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    goto LABEL_11;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = v20;
    v24 = sub_10003A23C(v22);
LABEL_14:
    v39 = v24;

    goto LABEL_15;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v40;
    v42 = v20;
    v24 = sub_100038EF8(v41);
    goto LABEL_14;
  }

  v43 = qword_1000968D8;
  v44 = v20;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = sub_10006A6C0();
  sub_10000CEB8(v45, qword_100097F08);
  v46 = v17;
  v47 = sub_10006A6B0();
  v48 = sub_10006B3A0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = a3;
    v51 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v51 = v17;
    v52 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "Unknown object type — returning nil {objectID: %@}", v49, 0xCu);
    sub_100009790(v51, &qword_100096D40, &unk_10006F770);
    a3 = v50;
  }

  else
  {
  }

LABEL_11:
  v39 = 0;
LABEL_15:
  *a3 = v39;
}

void sub_100034FDC(uint64_t a1@<X0>, void *a2@<X1>, void ***a3@<X8>)
{
  v6 = sub_10006A520();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  sub_10006A4E0(v12);
  v14 = v13;
  v15 = [v11 objectIDForHTMLFolderMentionedInURL:v13 context:a2];

  if (!v15)
  {
    goto LABEL_6;
  }

  v43 = 0;
  v16 = [a2 existingObjectWithID:v15 error:&v43];
  v17 = v43;
  if (!v16)
  {
    v23 = v43;
    sub_10006A480();

    swift_willThrow();

LABEL_6:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v24 = sub_10006A6C0();
    sub_10000CEB8(v24, qword_100097F08);
    (*(v7 + 16))(v10, a1, v6);
    v25 = sub_10006A6B0();
    v26 = sub_10006B390();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = a3;
      v43 = v41;
      *v27 = 136315138;
      sub_100037ECC(&qword_100096D38, &type metadata accessor for URL);
      v28 = sub_10006B530();
      v30 = v29;
      (*(v7 + 8))(v10, v6);
      v31 = sub_1000378C4(v28, v30, &v43);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cannot find HTML object for notes folder URL — returning nil {notesFolderURL: %s}", v27, 0xCu);
      sub_10000804C(v41);
      a3 = v42;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    goto LABEL_11;
  }

  v18 = v16;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    v32 = qword_1000968D8;
    v33 = v17;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_10006A6C0();
    sub_10000CEB8(v34, qword_100097F08);
    v35 = v15;
    v36 = sub_10006A6B0();
    v37 = sub_10006B3A0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v15;
      v40 = v35;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unknown object type — returning nil {objectID: %@}", v38, 0xCu);
      sub_100009790(v39, &qword_100096D40, &unk_10006F770);
    }

    else
    {
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v20 = v19;
  v21 = v17;
  v22 = sub_100039C90(v20);

LABEL_12:
  *a3 = v22;
}

uint64_t sub_1000354C0(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100007DF0(&qword_100098010, &qword_1000755C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = _s5EntryVMa();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_100097FD0, &qword_100075590);
  v12 = sub_10006B230();
  if (*(v12 + 16))
  {
    sub_10003AEC8(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, _s5EntryVMa);

    (*(v8 + 56))(v6, 0, 1, v7);
    sub_10003AF30(v6, v11, _s5EntryVMa);
  }

  else
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    v13 = *(v7 + 20);
    v14 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    (*(*(v14 - 8) + 56))(&v11[v13], 2, 2, v14);
    sub_10006A550();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_100009790(v6, &qword_100098010, &qword_1000755C8);
    }
  }

  a2(v11);
  return sub_10003AF98(v11, _s5EntryVMa);
}

uint64_t sub_10003574C(NSObject *a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v242 = a4;
  v243 = a3;
  v237 = a1;
  v4 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v238 = &v214 - v6;
  v7 = sub_100007DF0(&qword_100097FC8, &unk_100075580);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v217 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v221 = &v214 - v11;
  v12 = sub_10006B1A0();
  v236 = *(v12 - 8);
  v13 = *(v236 + 64);
  v14 = __chkstk_darwin(v12);
  v218 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v241 = &v214 - v17;
  __chkstk_darwin(v16);
  v222 = &v214 - v18;
  v19 = sub_10006A560();
  v245 = *(v19 - 8);
  v246 = v19;
  v20 = *(v245 + 64);
  v21 = __chkstk_darwin(v19);
  v226 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v244 = &v214 - v23;
  v235 = sub_10006A5F0();
  v230 = *(v235 - 8);
  v24 = *(v230 + 64);
  __chkstk_darwin(v235);
  v227 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_10006A600();
  v228 = *(v229 - 8);
  v26 = *(v228 + 64);
  v27 = __chkstk_darwin(v229);
  v225 = &v214 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v234 = &v214 - v29;
  v30 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v214 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v32);
  v223 = (&v214 - v36);
  v37 = __chkstk_darwin(v35);
  v219 = &v214 - v38;
  __chkstk_darwin(v37);
  v231 = (&v214 - v39);
  v40 = sub_100007DF0(&qword_100097FD0, &qword_100075590);
  v239 = *(v40 - 8);
  v240 = v40;
  v41 = *(v239 + 64);
  v42 = __chkstk_darwin(v40);
  v216 = &v214 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v46 = &v214 - v45;
  __chkstk_darwin(v44);
  v220 = &v214 - v47;
  v48 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v52 = &v214 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v54 = &v214 - v53;
  v55 = type metadata accessor for NotesFolder();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  v58 = __chkstk_darwin(v55);
  v224 = &v214 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v233 = (&v214 - v60);
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v61 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v61, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v62 = v247;
  swift_endAccess();
  if (!v62)
  {
    goto LABEL_11;
  }

  v215 = v12;
  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v63 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v63, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v64 = v247;
  swift_endAccess();
  if (!v64)
  {

LABEL_11:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v69 = sub_10006A6C0();
    sub_10000CEB8(v69, qword_100097F08);
    v70 = sub_10006A6B0();
    v71 = sub_10006B3A0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "No modern or HTML note context — returning placeholder timeline", v72, 2u);
    }

    sub_100007DF0(&qword_100097FD8, &qword_100075598);
    v73 = _s5EntryVMa();
    v74 = *(*(v73 - 8) + 72);
    v75 = (*(*(v73 - 8) + 80) + 32) & ~*(*(v73 - 8) + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_10006F820;
    v77 = v76 + v75;
    v78 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    v79 = v238;
    (*(*(v78 - 8) + 56))(v238, 2, 2, v78);
    v80 = v244;
    sub_10006A550();
    (*(v245 + 32))(v77, v80, v246);
    sub_1000096C0(v79, v77 + *(v73 + 20), &qword_100097E60, &qword_100076080);
    sub_10006B190();
    sub_100037ECC(&qword_100097FC0, _s5EntryVMa);
    sub_10006B220();
    v243(v46);
    return (*(v239 + 8))(v46, v240);
  }

  v65 = [v237 folder];
  if (!v65)
  {
    v81 = objc_opt_self();
    v82 = [v81 currentDefaultNotesFolder];
    v83 = v62;
    v84 = v64;
    v85 = v82;
    v86 = v84;
    v237 = v83;
    sub_10000A960(v85, v83, v84, v52);
    if ((*(v56 + 48))(v52, 1, v55) == 1)
    {
      sub_100009790(v52, &qword_100096D30, &unk_10006F760);
    }

    else
    {
      v102 = v224;
      sub_10003AF30(v52, v224, type metadata accessor for NotesFolder);
      v103 = [v81 currentDefaultNotesFolder];
      v104 = sub_1000337A0(v103);

      if (v104)
      {
        v232 = v104;
        if (qword_1000968D8 != -1)
        {
          swift_once();
        }

        v233 = v86;
        v105 = sub_10006A6C0();
        sub_10000CEB8(v105, qword_100097F08);
        v106 = sub_10006A6B0();
        v107 = sub_10006B390();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&_mh_execute_header, v106, v107, "Returning timeline for default notes folder", v108, 2u);
        }

        sub_10006A5E0();
        v109 = v230;
        v110 = v227;
        (*(v230 + 104))(v227, enum case for Calendar.Component.day(_:), v235);
        v111 = v225;
        sub_10006A5E0();
        v112 = v226;
        sub_10006A550();
        v113 = v244;
        sub_10006A5C0();
        v114 = *(v245 + 8);
        v114(v112, v246);
        v231 = *(v228 + 8);
        v115 = v229;
        v231(v111, v229);
        v116 = v223;
        v117 = v234;
        sub_10006A5D0();
        v118 = v113;
        v119 = v114;
        v120 = v246;
        v119(v118, v246);
        (*(v109 + 8))(v110, v235);
        v231(v117, v115);
        sub_100037854(v116, v34);
        v121 = (*(v245 + 48))(v34, 1, v120);
        v122 = 1;
        v123 = v217;
        if (v121 != 1)
        {
          v124 = v244;
          v125 = v246;
          (*(v245 + 32))(v244, v34, v246);
          sub_10006B180();
          v119(v124, v125);
          v122 = 0;
        }

        v126 = v236;
        v127 = v215;
        (*(v236 + 56))(v123, v122, 1, v215);
        v128 = *(v126 + 48);
        v129 = v128(v123, 1, v127);
        v130 = v218;
        if (v129 == 1)
        {
          sub_10006B190();
          if (v128(v123, 1, v127) != 1)
          {
            sub_100009790(v123, &qword_100097FC8, &unk_100075580);
          }
        }

        else
        {
          (*(v126 + 32))(v218, v123, v127);
        }

        sub_100007DF0(&qword_100097FD8, &qword_100075598);
        v165 = _s5EntryVMa();
        v166 = *(*(v165 - 8) + 72);
        v167 = (*(*(v165 - 8) + 80) + 32) & ~*(*(v165 - 8) + 80);
        v168 = swift_allocObject();
        *(v168 + 16) = xmmword_10006F820;
        v169 = v168 + v167;
        v170 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
        v171 = *(v170 + 48);
        v172 = v224;
        v173 = v238;
        sub_10003AEC8(v224, v238, type metadata accessor for NotesFolder);
        *(v173 + v171) = v232;
        (*(*(v170 - 8) + 56))(v173, 0, 2, v170);
        v174 = v244;
        sub_10006A550();
        (*(v245 + 32))(v169, v174, v246);
        sub_1000096C0(v173, v169 + *(v165 + 20), &qword_100097E60, &qword_100076080);
        v175 = v236;
        (*(v236 + 16))(v241, v130, v127);
        sub_100037ECC(&qword_100097FC0, _s5EntryVMa);
        v176 = v216;
        sub_10006B220();
        (*(v175 + 8))(v130, v127);
        sub_100009790(v223, &qword_100097C70, &qword_100076A60);
        v243(v176);

        (*(v239 + 8))(v176, v240);
        return sub_10003AF98(v172, type metadata accessor for NotesFolder);
      }

      sub_10003AF98(v102, type metadata accessor for NotesFolder);
    }

    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v152 = sub_10006A6C0();
    sub_10000CEB8(v152, qword_100097F08);
    v153 = sub_10006A6B0();
    v154 = sub_10006B3A0();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&_mh_execute_header, v153, v154, "There is no intent notes folder and cannot get current default notes folder — returning placeholder timeline", v155, 2u);
    }

    sub_100007DF0(&qword_100097FD8, &qword_100075598);
    v156 = _s5EntryVMa();
    v157 = *(*(v156 - 8) + 72);
    v158 = (*(*(v156 - 8) + 80) + 32) & ~*(*(v156 - 8) + 80);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_10006F820;
    v160 = v159 + v158;
    v161 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    v162 = v238;
    (*(*(v161 - 8) + 56))(v238, 2, 2, v161);
    v163 = v244;
    sub_10006A550();
    (*(v245 + 32))(v160, v163, v246);
    sub_1000096C0(v162, v160 + *(v156 + 20), &qword_100097E60, &qword_100076080);
    sub_10006B190();
    sub_100037ECC(&qword_100097FC0, _s5EntryVMa);
    sub_10006B220();
    v243(v46);

    return (*(v239 + 8))(v46, v240);
  }

  v66 = v65;
  v67 = v62;
  v68 = v64;
  v237 = v67;
  sub_10000A960(v66, v67, v68, v54);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_100009790(v54, &qword_100096D30, &unk_10006F760);
LABEL_35:
    if (qword_1000968D8 != -1)
    {
      swift_once();
    }

    v131 = sub_10006A6C0();
    sub_10000CEB8(v131, qword_100097F08);
    v132 = v66;
    v133 = sub_10006A6B0();
    v134 = sub_10006B3A0();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = v68;
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v248 = v137;
      *v136 = 136315138;
      v138 = [v132 identifier];
      if (v138)
      {
        v139 = v138;
        v140 = sub_10006B290();
        v142 = v141;
      }

      else
      {
        v140 = 9732322;
        v142 = 0xA300000000000000;
      }

      v143 = sub_1000378C4(v140, v142, &v248);

      *(v136 + 4) = v143;
      _os_log_impl(&_mh_execute_header, v133, v134, "Cannot fetch notes folder and notes — returning deleted timeline {identifier: %s}", v136, 0xCu);
      sub_10000804C(v137);

      v68 = v135;
    }

    else
    {
    }

    sub_100007DF0(&qword_100097FD8, &qword_100075598);
    v144 = _s5EntryVMa();
    v145 = *(*(v144 - 8) + 72);
    v146 = (*(*(v144 - 8) + 80) + 32) & ~*(*(v144 - 8) + 80);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_10006F820;
    v148 = v147 + v146;
    v149 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
    v150 = v238;
    (*(*(v149 - 8) + 56))(v238, 1, 2, v149);
    v151 = v244;
    sub_10006A550();
    (*(v245 + 32))(v148, v151, v246);
    sub_1000096C0(v150, v148 + *(v144 + 20), &qword_100097E60, &qword_100076080);
    sub_10006B190();
    sub_100037ECC(&qword_100097FC0, _s5EntryVMa);
    sub_10006B220();
    v243(v46);

    return (*(v239 + 8))(v46, v240);
  }

  v87 = v233;
  sub_10003AF30(v54, v233, type metadata accessor for NotesFolder);
  v88 = sub_1000337A0(v66);
  if (!v88)
  {
    sub_10003AF98(v87, type metadata accessor for NotesFolder);
    goto LABEL_35;
  }

  v223 = v88;
  if (qword_1000968D8 != -1)
  {
    swift_once();
  }

  v232 = v68;
  v89 = sub_10006A6C0();
  sub_10000CEB8(v89, qword_100097F08);
  v90 = v66;
  v91 = sub_10006A6B0();
  v92 = sub_10006B390();

  v93 = os_log_type_enabled(v91, v92);
  v94 = v246;
  v224 = v90;
  if (v93)
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v248 = v96;
    *v95 = 136315138;
    v97 = [v90 identifier];
    if (v97)
    {
      v98 = v97;
      v99 = sub_10006B290();
      v101 = v100;
    }

    else
    {
      v99 = 9732322;
      v101 = 0xA300000000000000;
    }

    v177 = sub_1000378C4(v99, v101, &v248);

    *(v95 + 4) = v177;
    _os_log_impl(&_mh_execute_header, v91, v92, "Returning timeline for notes folder {identifier: %s}", v95, 0xCu);
    sub_10000804C(v96);

    v94 = v246;
  }

  else
  {
  }

  sub_10006A5E0();
  v178 = v230;
  v179 = v227;
  (*(v230 + 104))(v227, enum case for Calendar.Component.day(_:), v235);
  v180 = v225;
  sub_10006A5E0();
  v181 = v226;
  sub_10006A550();
  v182 = v244;
  sub_10006A5C0();
  v183 = *(v245 + 8);
  v183(v181, v94);
  v184 = *(v228 + 8);
  v185 = v229;
  v184(v180, v229);
  v186 = v231;
  v187 = v234;
  sub_10006A5D0();
  v183(v182, v246);
  (*(v178 + 8))(v179, v235);
  v184(v187, v185);
  v188 = v246;
  v189 = v219;
  sub_100037854(v186, v219);
  v190 = (*(v245 + 48))(v189, 1, v188);
  v191 = 1;
  v192 = v221;
  if (v190 != 1)
  {
    v193 = v244;
    (*(v245 + 32))(v244, v189, v188);
    sub_10006B180();
    v183(v193, v188);
    v191 = 0;
  }

  v194 = v236;
  v195 = v215;
  (*(v236 + 56))(v192, v191, 1, v215);
  v196 = *(v194 + 48);
  v197 = v196(v192, 1, v195);
  v198 = v222;
  if (v197 == 1)
  {
    sub_10006B190();
    v199 = v196(v192, 1, v195);
    v200 = v198;
    if (v199 != 1)
    {
      sub_100009790(v192, &qword_100097FC8, &unk_100075580);
    }
  }

  else
  {
    (*(v194 + 32))(v222, v192, v195);
    v200 = v198;
  }

  sub_100007DF0(&qword_100097FD8, &qword_100075598);
  v201 = _s5EntryVMa();
  v202 = *(*(v201 - 8) + 72);
  v203 = (*(*(v201 - 8) + 80) + 32) & ~*(*(v201 - 8) + 80);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_10006F820;
  v205 = v204 + v203;
  v206 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v207 = *(v206 + 48);
  v208 = v233;
  v209 = v238;
  sub_10003AEC8(v233, v238, type metadata accessor for NotesFolder);
  *(v209 + v207) = v223;
  (*(*(v206 - 8) + 56))(v209, 0, 2, v206);
  v210 = v244;
  sub_10006A550();
  (*(v245 + 32))(v205, v210, v246);
  sub_1000096C0(v209, v205 + *(v201 + 20), &qword_100097E60, &qword_100076080);
  v211 = v236;
  v212 = v215;
  (*(v236 + 16))(v241, v200, v215);
  sub_100037ECC(&qword_100097FC0, _s5EntryVMa);
  v213 = v220;
  sub_10006B220();
  (*(v211 + 8))(v200, v212);
  sub_100009790(v231, &qword_100097C70, &qword_100076A60);
  v243(v213);

  (*(v239 + 8))(v213, v240);
  return sub_10003AF98(v208, type metadata accessor for NotesFolder);
}

uint64_t sub_1000374D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(_s5EntryVMa() + 20);
  v3 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  (*(*(v3 - 8) + 56))(a1 + v2, 2, 2, v3);

  return sub_10006A550();
}

uint64_t sub_10003755C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10006B200();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = *v4;
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  *(v14 + 4) = v12;
  (*(v10 + 32))(&v14[v13], &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  sub_10003574C(a1, v15, sub_10003AE50, v14);
}

uint64_t sub_1000376EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000EE3C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000377A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000131E4;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100037854(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000378C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100037990(v11, 0, 0, 1, a1, a2);
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
    sub_100037E6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000804C(v11);
  return v7;
}

unint64_t sub_100037990(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100037A9C(a5, a6);
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
    result = sub_10006B490();
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

char *sub_100037A9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100037AE8(a1, a2);
  sub_100037C18(&off_100092488);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100037AE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100037D04(v5, 0);
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

  result = sub_10006B490();
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
        v10 = sub_10006B2E0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100037D04(v10, 0);
        result = sub_10006B450();
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

uint64_t sub_100037C18(uint64_t result)
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

  result = sub_100037D78(result, v12, 1, v3);
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

void *sub_100037D04(uint64_t a1, uint64_t a2)
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

  sub_100007DF0(&qword_100097FE8, &qword_1000755B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100037D78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007DF0(&qword_100097FE8, &qword_1000755B0);
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

uint64_t sub_100037E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100037ECC(unint64_t *a1, void (*a2)(uint64_t))
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

void **sub_100037F14@<X0>(void ***a1@<X8>)
{
  result = sub_100039C90(*(v1 + 24));
  *a1 = result;
  return result;
}

size_t sub_100037F48@<X0>(size_t *a1@<X8>)
{
  result = sub_100038EF8(*(v1 + 24));
  *a1 = result;
  return result;
}

size_t sub_100037FD8(size_t a1, int64_t a2, char a3)
{
  result = sub_100037FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100037FF8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007DF0(&qword_100098000, &qword_1000755C0);
  v10 = *(type metadata accessor for Note() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Note() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000381D0(void *a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v124 = &v115 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v115 - v11;
  __chkstk_darwin(v10);
  v123 = &v115 - v13;
  v14 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v126 = &v115 - v20;
  __chkstk_darwin(v19);
  v122 = &v115 - v21;
  v121 = type metadata accessor for Note();
  v120 = *(v121 - 8);
  v22 = *(v120 + 64);
  __chkstk_darwin(v121);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 predicateForContext:a2];
  v26 = objc_opt_self();
  v125 = a1;
  v27 = [a1 noteSortType];
  v145 = v26;
  isa = [v26 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v27];

  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  v29 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v25 sortDescriptors:isa relationshipKeyPathsForPrefetching:0 fetchLimit:16 context:a2];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v30 = sub_10006B320();

  v147 = &_swiftEmptyArrayStorage;
  v31 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10006B4F0())
  {
    v146 = v18;
    v128 = v12;
    v33 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v18 = 0;
      do
      {
        v34 = v18;
        while (1)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v35 = sub_10006B480();
          }

          else
          {
            if (v34 >= *(v31 + 16))
            {
              goto LABEL_78;
            }

            v35 = *(v30 + 8 * v34 + 32);
          }

          v12 = v35;
          v18 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v34;
          if (v18 == i)
          {
            goto LABEL_19;
          }
        }

        sub_10006B300();
        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10006B330();
        }

        sub_10006B340();
        v33 = v147;
      }

      while (v18 != i);
    }

LABEL_19:

    v147 = &_swiftEmptyArrayStorage;
    v30 = v33 >> 62 ? sub_10006B4F0() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = &_swiftEmptyArrayStorage;
    if (!v30)
    {
      break;
    }

    v37 = 0;
    v18 = (v33 & 0xC000000000000001);
    while (1)
    {
      if (v18)
      {
        v38 = sub_10006B480();
      }

      else
      {
        if (v37 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v38 = *(v33 + 8 * v37 + 32);
      }

      v12 = v38;
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v40 = [objc_opt_self() sharedWidget];
      v31 = [v40 hidesObject:v12];

      if (v31)
      {
      }

      else
      {
        sub_10006B4A0();
        v31 = *(v147 + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      v36 = &_swiftEmptyArrayStorage;
      ++v37;
      if (v39 == v30)
      {
        v41 = v147;
        goto LABEL_34;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

  v41 = &_swiftEmptyArrayStorage;
LABEL_34:

  v42 = v126;
  if ((v41 & 0x8000000000000000) == 0 && (v41 & 0x4000000000000000) == 0)
  {
    v43 = *(v41 + 16);
    if (v43)
    {
      goto LABEL_37;
    }

LABEL_76:

    return v36;
  }

  v43 = sub_10006B4F0();
  if (!v43)
  {
    goto LABEL_76;
  }

LABEL_37:
  v147 = &_swiftEmptyArrayStorage;
  result = sub_100037FD8(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v36 = v147;
    v117 = v41 & 0xC000000000000001;
    v45 = objc_opt_self();
    v46 = v41;
    v127 = v45;
    v47 = 0;
    v119 = v41;
    v118 = v43;
    do
    {
      v143 = v47;
      if (v117)
      {
        v48 = sub_10006B480();
      }

      else
      {
        v48 = *(v46 + 8 * v47 + 32);
      }

      v49 = v48;
      v144 = v36;
      v50 = v125;
      v51 = [v49 identifier];
      if (v51)
      {
        v52 = v51;
        v53 = sub_10006B290();
        v141 = v54;
        v142 = v53;
      }

      else
      {
        v141 = 0xE000000000000000;
        v142 = 0;
      }

      v55 = [v49 title];
      if (v55)
      {
        v56 = v55;
        v57 = sub_10006B290();
        v139 = v58;
        v140 = v57;
      }

      else
      {
        v139 = 0xE000000000000000;
        v140 = 0;
      }

      v59 = [v49 widgetInfoText];
      v60 = sub_10006B290();
      v137 = v61;
      v138 = v60;

      v62 = [v145 dateForCurrentSortTypeForNote:v49 folderNoteSortType:0];
      if (v62)
      {
        v63 = v62;
        sub_10006A540();

        v64 = 0;
      }

      else
      {
        v64 = 1;
      }

      v65 = sub_10006A560();
      v66 = *(v65 - 8);
      v67 = *(v66 + 56);
      v67(v42, v64, 1, v65);
      v68 = v122;
      sub_1000096C0(v42, v122, &qword_100097C70, &qword_100076A60);
      if ((*(v66 + 48))(v68, 1, v65) == 1)
      {
        sub_100009790(v68, &qword_100097C70, &qword_100076A60);
        v135 = 0xE000000000000000;
        v136 = 0;
      }

      else
      {
        v69 = sub_10006A530();
        v135 = v70;
        v136 = v69;
        (*(v66 + 8))(v68, v65);
      }

      v71 = v146;
      v72 = [v145 dateForCurrentSortTypeAccessibilityStringForNote:v49 folderNoteSortType:0];
      if (v72)
      {
        v73 = v72;
        v74 = sub_10006B290();
        v133 = v75;
        v134 = v74;
      }

      else
      {
        v133 = 0xE000000000000000;
        v134 = 0;
      }

      v132 = [v49 isSharedViaICloud];
      v76 = [v49 modificationDate];
      if (v76)
      {
        v77 = v76;
        sub_10006A540();

        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v67(v71, v78, 1, v65);
      v79 = [v49 shareDescription];
      if (v79)
      {
        v80 = v79;
        v81 = sub_10006B290();
        v129 = v82;
        v130 = v81;
      }

      else
      {
        v129 = 0;
        v130 = 0;
      }

      v83 = v124;
      v84 = v50;
      v85 = [v127 appURLForNote:v49 inVirtualSmartFolder:v84];
      if (v85)
      {
        v86 = v85;
        sub_10006A4F0();

        v87 = 0;
      }

      else
      {
        v87 = 1;
      }

      v88 = sub_10006A520();
      v89 = *(v88 - 8);
      v90 = *(v89 + 56);
      v90(v83, v87, 1, v88);
      v91 = v83;
      v92 = v128;
      sub_1000096C0(v91, v128, &qword_100096B30, &qword_10006F548);

      v93 = *(v89 + 48);
      v94 = v93(v92, 1, v88);
      v131 = v84;
      if (v94 == 1)
      {
        v95 = [v127 appURLForNote:v49];
        if (v95)
        {
          v96 = v116;
          v97 = v95;
          sub_10006A4F0();

          v98 = 0;
        }

        else
        {
          v98 = 1;
          v96 = v116;
        }

        v90(v96, v98, 1, v88);
        v100 = v96;
        v99 = v123;
        sub_1000096C0(v100, v123, &qword_100096B30, &qword_10006F548);
        if (v93(v128, 1, v88) != 1)
        {
          sub_100009790(v128, &qword_100096B30, &qword_10006F548);
        }
      }

      else
      {
        v99 = v123;
        (*(v89 + 32))();
        v90(v99, 0, 1, v88);
      }

      v101 = sub_1000301BC(v49);
      v102 = sub_1000306D4(v49);
      v103 = sub_1000306D4(v49);
      v104 = [v49 ic_hasLightBackground];
      v105 = v141;
      *v24 = v142;
      *(v24 + 1) = v105;
      v106 = v139;
      *(v24 + 2) = v140;
      *(v24 + 3) = v106;
      v107 = v137;
      *(v24 + 4) = v138;
      *(v24 + 5) = v107;
      v108 = v135;
      *(v24 + 6) = v136;
      *(v24 + 7) = v108;
      v109 = v133;
      *(v24 + 8) = v134;
      *(v24 + 9) = v109;
      v24[80] = v132;
      v110 = v121;
      sub_1000096C0(v146, &v24[*(v121 + 40)], &qword_100097C70, &qword_100076A60);
      v111 = &v24[v110[11]];
      v112 = v129;
      *v111 = v130;
      *(v111 + 1) = v112;
      sub_1000096C0(v99, &v24[v110[12]], &qword_100096B30, &qword_10006F548);
      *&v24[v110[13]] = v101;
      *&v24[v110[14]] = &_swiftEmptyArrayStorage;
      *&v24[v110[15]] = v102;
      *&v24[v110[16]] = v103;
      v24[v110[17]] = v104;
      [v49 turnAttachmentsIntoFaults];

      v36 = v144;
      v147 = v144;
      v114 = v144[2];
      v113 = v144[3];
      if (v114 >= v113 >> 1)
      {
        sub_100037FD8(v113 > 1, v114 + 1, 1);
        v36 = v147;
      }

      v47 = v143 + 1;
      v36[2] = v114 + 1;
      sub_10003AF30(v24, v36 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v114, type metadata accessor for Note);
      v42 = v126;
      v46 = v119;
    }

    while (v118 != v47);
    goto LABEL_76;
  }

  __break(1u);
  return result;
}

size_t sub_100038EF8(void *a1)
{
  v2 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v129 = &v117 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v117 - v10;
  __chkstk_darwin(v9);
  v128 = &v117 - v12;
  v13 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v117 - v19;
  __chkstk_darwin(v18);
  v127 = &v117 - v21;
  v126 = type metadata accessor for Note();
  v125 = *(v126 - 8);
  v22 = *(v125 + 64);
  __chkstk_darwin(v126);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = [a1 managedObjectContext];
  if (!v118)
  {
    return 0;
  }

  v123 = v20;
  v131 = v11;
  v119 = v6;
  v25 = [a1 predicateForVisibleNotes];
  v26 = objc_opt_self();
  v124 = a1;
  v27 = [a1 customNoteSortType];
  v148 = v26;
  isa = [v26 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v27];

  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  v29 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v25 sortDescriptors:isa relationshipKeyPathsForPrefetching:0 fetchLimit:16 context:v118];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v30 = sub_10006B320();

  v151 = &_swiftEmptyArrayStorage;
  v31 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10006B4F0())
  {
    v149 = v17;
    v33 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v34 = 0;
      do
      {
        v35 = v34;
        while (1)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v36 = sub_10006B480();
          }

          else
          {
            if (v35 >= *(v31 + 16))
            {
              goto LABEL_80;
            }

            v36 = *(v30 + 8 * v35 + 32);
          }

          v17 = v36;
          v34 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v35;
          if (v34 == i)
          {
            goto LABEL_20;
          }
        }

        sub_10006B300();
        if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10006B330();
        }

        sub_10006B340();
        v33 = v151;
      }

      while (v34 != i);
    }

LABEL_20:

    v151 = &_swiftEmptyArrayStorage;
    v30 = v33 >> 62 ? sub_10006B4F0() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = &_swiftEmptyArrayStorage;
    if (!v30)
    {
      break;
    }

    v38 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v39 = sub_10006B480();
      }

      else
      {
        if (v38 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v39 = *(v33 + 8 * v38 + 32);
      }

      v17 = v39;
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v41 = [objc_opt_self() sharedWidget];
      v31 = [v41 hidesObject:v17];

      if (v31)
      {
      }

      else
      {
        sub_10006B4A0();
        v31 = *(v151 + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      ++v38;
      if (v40 == v30)
      {
        v42 = v151;
        v37 = &_swiftEmptyArrayStorage;
        goto LABEL_36;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v42 = &_swiftEmptyArrayStorage;
LABEL_36:

  if ((v42 & 0x8000000000000000) == 0 && (v42 & 0x4000000000000000) == 0)
  {
    v43 = *(v42 + 16);
    if (v43)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

  v43 = sub_10006B4F0();
  if (!v43)
  {
LABEL_86:

    return v37;
  }

LABEL_39:
  v151 = &_swiftEmptyArrayStorage;
  result = sub_100037FD8(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v37 = v151;
    v120 = v42 & 0xC000000000000001;
    v45 = objc_opt_self();
    v46 = v42;
    v130 = v45;
    v47 = 0;
    v122 = v42;
    v121 = v43;
    do
    {
      v146 = v47;
      if (v120)
      {
        v48 = sub_10006B480();
      }

      else
      {
        v48 = *(v46 + 8 * v47 + 32);
      }

      v49 = v48;
      v147 = v37;
      v50 = v124;
      v150 = [v124 customNoteSortType];
      v51 = v50;
      v52 = [v49 identifier];
      if (v52)
      {
        v53 = v52;
        v54 = sub_10006B290();
        v144 = v55;
        v145 = v54;
      }

      else
      {
        v144 = 0xE000000000000000;
        v145 = 0;
      }

      v56 = [v49 title];
      if (v56)
      {
        v57 = v56;
        v58 = sub_10006B290();
        v142 = v59;
        v143 = v58;
      }

      else
      {
        v142 = 0xE000000000000000;
        v143 = 0;
      }

      v60 = [v49 widgetInfoText];
      v61 = sub_10006B290();
      v140 = v62;
      v141 = v61;

      v63 = [v148 dateForCurrentSortTypeForNote:v49 folderNoteSortType:v150];
      if (v63)
      {
        v64 = v123;
        v65 = v63;
        sub_10006A540();

        v66 = 0;
      }

      else
      {
        v66 = 1;
        v64 = v123;
      }

      v67 = sub_10006A560();
      v68 = *(v67 - 8);
      v69 = *(v68 + 56);
      v69(v64, v66, 1, v67);
      v70 = v127;
      sub_1000096C0(v64, v127, &qword_100097C70, &qword_100076A60);
      if ((*(v68 + 48))(v70, 1, v67) == 1)
      {
        sub_100009790(v70, &qword_100097C70, &qword_100076A60);
        v138 = 0xE000000000000000;
        v139 = 0;
      }

      else
      {
        v71 = sub_10006A530();
        v138 = v72;
        v139 = v71;
        (*(v68 + 8))(v70, v67);
      }

      v73 = v149;
      v74 = [v148 dateForCurrentSortTypeAccessibilityStringForNote:v49 folderNoteSortType:v150];
      if (v74)
      {
        v75 = v74;
        v76 = sub_10006B290();
        v136 = v77;
        v137 = v76;
      }

      else
      {
        v136 = 0xE000000000000000;
        v137 = 0;
      }

      v135 = [v49 isSharedViaICloud];
      v78 = [v49 modificationDate];
      if (v78)
      {
        v79 = v78;
        sub_10006A540();

        v80 = 0;
      }

      else
      {
        v80 = 1;
      }

      v81 = v129;
      v69(v73, v80, 1, v67);
      v82 = [v49 shareDescription];
      if (v82)
      {
        v83 = v82;
        v84 = sub_10006B290();
        v132 = v85;
        v133 = v84;
      }

      else
      {
        v132 = 0;
        v133 = 0;
      }

      v86 = v51;
      v87 = [v130 appURLForNote:v49 inFolder:v86];
      if (v87)
      {
        v88 = v87;
        sub_10006A4F0();

        v89 = 0;
      }

      else
      {
        v89 = 1;
      }

      v90 = sub_10006A520();
      v91 = *(v90 - 8);
      v92 = *(v91 + 56);
      v92(v81, v89, 1, v90);
      v93 = v131;
      sub_1000096C0(v81, v131, &qword_100096B30, &qword_10006F548);

      v94 = *(v91 + 48);
      v95 = v94(v93, 1, v90);
      v134 = v86;
      if (v95 == 1)
      {
        v96 = [v130 appURLForNote:v49];
        if (v96)
        {
          v97 = v119;
          v98 = v96;
          sub_10006A4F0();

          v99 = 0;
        }

        else
        {
          v99 = 1;
          v97 = v119;
        }

        v92(v97, v99, 1, v90);
        v101 = v128;
        sub_1000096C0(v97, v128, &qword_100096B30, &qword_10006F548);
        v102 = v94(v131, 1, v90);
        v100 = v101;
        if (v102 != 1)
        {
          sub_100009790(v131, &qword_100096B30, &qword_10006F548);
        }
      }

      else
      {
        v100 = v128;
        (*(v91 + 32))(v128, v93, v90);
        v92(v100, 0, 1, v90);
      }

      v103 = sub_1000301BC(v49);
      v104 = sub_1000306D4(v49);
      v105 = sub_1000306D4(v49);
      v106 = [v49 ic_hasLightBackground];
      v107 = v144;
      *v24 = v145;
      *(v24 + 1) = v107;
      v108 = v142;
      *(v24 + 2) = v143;
      *(v24 + 3) = v108;
      v109 = v140;
      *(v24 + 4) = v141;
      *(v24 + 5) = v109;
      v110 = v138;
      *(v24 + 6) = v139;
      *(v24 + 7) = v110;
      v111 = v136;
      *(v24 + 8) = v137;
      *(v24 + 9) = v111;
      v24[80] = v135;
      v112 = v126;
      sub_1000096C0(v149, &v24[*(v126 + 40)], &qword_100097C70, &qword_100076A60);
      v113 = &v24[v112[11]];
      v114 = v132;
      *v113 = v133;
      *(v113 + 1) = v114;
      sub_1000096C0(v100, &v24[v112[12]], &qword_100096B30, &qword_10006F548);
      *&v24[v112[13]] = v103;
      *&v24[v112[14]] = &_swiftEmptyArrayStorage;
      *&v24[v112[15]] = v104;
      *&v24[v112[16]] = v105;
      v24[v112[17]] = v106;
      [v49 turnAttachmentsIntoFaults];

      v37 = v147;
      v151 = v147;
      v116 = v147[2];
      v115 = v147[3];
      if (v116 >= v115 >> 1)
      {
        sub_100037FD8(v115 > 1, v116 + 1, 1);
        v37 = v151;
      }

      v47 = v146 + 1;
      v37[2] = v116 + 1;
      sub_10003AF30(v24, v37 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v116, type metadata accessor for Note);
      v46 = v122;
    }

    while (v121 != v47);

    return v37;
  }

  __break(1u);
  return result;
}