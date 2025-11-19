uint64_t sub_100045840@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000057AC(&qword_100070AB0, &unk_10004F490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - v10;
  if (qword_100070460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_100071BF8;
  if (*(qword_100071BF8 + 16) && (v13 = sub_100048940(a1), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = sub_10004C414();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v7, v16 + *(v18 + 72) * v15, v17);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v17 = sub_10004C414();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  }

  sub_10004C414();
  if ((*(*(v17 - 8) + 48))(v7, 1, v17))
  {
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v19 = sub_10004C564();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    sub_10004C544();
    result = (*(v20 + 48))(v11, 1, v19);
    if (result != 1)
    {
      return sub_1000159C4(v11, &qword_100070E80, &qword_10004E200);
    }
  }

  else
  {
    sub_10004C3D4();
    sub_1000159C4(v7, &qword_100070AB0, &unk_10004F490);
    swift_endAccess();
    v22 = sub_10004C564();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v11, 0, 1, v22);
    return (*(v23 + 32))(a2, v11, v22);
  }

  return result;
}

unint64_t sub_100045C3C()
{
  result = qword_100071670;
  if (!qword_100071670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071670);
  }

  return result;
}

uint64_t sub_100045C90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BB08(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100045CC4()
{
  result = qword_100071678;
  if (!qword_100071678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071678);
  }

  return result;
}

unint64_t sub_100045D1C()
{
  result = qword_100071680;
  if (!qword_100071680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071680);
  }

  return result;
}

unint64_t sub_100045D74()
{
  result = qword_100071688;
  if (!qword_100071688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071688);
  }

  return result;
}

unint64_t sub_100045DCC()
{
  result = qword_100071690;
  if (!qword_100071690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071690);
  }

  return result;
}

unint64_t sub_100045E24()
{
  result = qword_100071698;
  if (!qword_100071698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071698);
  }

  return result;
}

unint64_t sub_100045E80()
{
  result = qword_1000716A8;
  if (!qword_1000716A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716A8);
  }

  return result;
}

unint64_t sub_100045F38()
{
  result = qword_1000716B0;
  if (!qword_1000716B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716B0);
  }

  return result;
}

uint64_t sub_100045F8C(uint64_t a1)
{
  v2 = sub_100045F38();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100045FDC()
{
  result = qword_1000716B8;
  if (!qword_1000716B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716B8);
  }

  return result;
}

unint64_t sub_100046034()
{
  result = qword_1000716C0;
  if (!qword_1000716C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716C0);
  }

  return result;
}

unint64_t sub_10004608C()
{
  result = qword_1000716C8;
  if (!qword_1000716C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716C8);
  }

  return result;
}

uint64_t sub_1000460E0()
{
  if (qword_100070460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100046158(uint64_t a1)
{
  v2 = sub_100045E80();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000461F8()
{
  result = qword_1000716E0;
  if (!qword_1000716E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716E0);
  }

  return result;
}

unint64_t sub_100046250()
{
  result = qword_1000716E8;
  if (!qword_1000716E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716E8);
  }

  return result;
}

uint64_t sub_1000462C8()
{
  v1 = [objc_opt_self() defaultAllDayAlarmOffset];
  v2 = [v1 integerValue];
  if (v2 == sub_10004C524())
  {
    v3 = 0;
  }

  else
  {
    [v1 doubleValue];
    v3 = sub_1000364F8(v4);
  }

  v5 = *(v0 + 16);

  *v5 = v3;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100046398(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 32) = *a2;
  return _swift_task_switch(sub_1000463C4, 0, 0);
}

uint64_t sub_1000463C4()
{
  v1 = *(v0 + 24);
  sub_10004C084();
  v2 = [*(v0 + 16) eventStore];
  swift_unknownObjectRelease();
  if (v2)
  {
    if (*(v0 + 32) > 1u || *(v0 + 32))
    {
      v3 = sub_10004C844();

      if ((v3 & 1) == 0)
      {
        v6 = qword_1000548B8[*(v0 + 32) - 1];
        v4 = objc_opt_self();
        v5.super.super.isa = sub_10004C7D4().super.super.isa;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v4 = objc_opt_self();
    sub_10004C524();
    v5.super.super.isa = sub_10004C7E4().super.super.isa;
LABEL_8:
    isa = v5.super.super.isa;
    [v4 setDefaultAlarmOffset:v5.super.super.isa forAlarmType:1 eventStore:v2];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000465AC()
{
  v0 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10004C554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004C5A4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C754();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10004C564();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004C744();
  sub_10004C594();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_10004C574();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_10004C4C4();
}

uint64_t sub_100046880@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000057AC(&qword_1000705B0, &unk_10004E990);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v27 = &v26 - v3;
  v4 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_10004C554();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C5A4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10004C754();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_10004C564();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_10004C744();
  sub_10004C594();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_10004C574();
  (*(v18 + 56))(v7, 1, 1, v17);
  if (qword_100070428 != -1)
  {
    swift_once();
  }

  v21 = sub_10004C3C4();
  v22 = sub_100005C58(v21, qword_100071B70);
  v23 = *(v21 - 8);
  v24 = v27;
  (*(v23 + 16))(v27, v22, v21);
  (*(v23 + 56))(v24, 0, 1, v21);
  sub_10004C544();
  return sub_10004C3E4();
}

uint64_t sub_100046CB0()
{
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  sub_10004C0E4();
  result = sub_10004C0A4();
  qword_100071C00 = result;
  return result;
}

uint64_t sub_100046D20()
{
  v0 = qword_100071660;

  return v0;
}

unint64_t sub_100046D5C()
{
  result = qword_1000716F0;
  if (!qword_1000716F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716F0);
  }

  return result;
}

unint64_t sub_100046DB4()
{
  result = qword_1000716F8;
  if (!qword_1000716F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000716F8);
  }

  return result;
}

unint64_t sub_100046E0C()
{
  result = qword_100071700;
  if (!qword_100071700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071700);
  }

  return result;
}

unint64_t sub_100046E64()
{
  result = qword_100071708;
  if (!qword_100071708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071708);
  }

  return result;
}

uint64_t sub_100046EB8@<X0>(void *a1@<X8>)
{
  if (qword_100070468 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100071C00;
}

unint64_t sub_100046F2C()
{
  result = qword_100071710;
  if (!qword_100071710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071710);
  }

  return result;
}

unint64_t sub_100046F84()
{
  result = qword_100071718;
  if (!qword_100071718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071718);
  }

  return result;
}

unint64_t sub_100046FDC()
{
  result = qword_100071720;
  if (!qword_100071720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071720);
  }

  return result;
}

unint64_t sub_100047034()
{
  result = qword_100071728;
  if (!qword_100071728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071728);
  }

  return result;
}

uint64_t sub_1000470F0(uint64_t a1)
{
  v2 = sub_1000461F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100047140()
{
  result = qword_100071740;
  if (!qword_100071740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071740);
  }

  return result;
}

uint64_t sub_100047198(uint64_t a1)
{
  v2 = sub_100047034();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004722C()
{
  v0 = sub_10004C554();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C5A4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004C754();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C564();
  sub_100005C90(v9, qword_100071C08);
  sub_100005C58(v9, qword_100071C08);
  sub_10004C744();
  sub_10004C594();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10004C574();
}

uint64_t sub_10004742C()
{
  result = swift_getKeyPath();
  qword_100071C20 = result;
  return result;
}

uint64_t sub_100047454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_10004C7C4();
  v3[9] = sub_10004C7B4();
  v5 = sub_10004C7A4();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_1000474F0, v5, v4);
}

uint64_t sub_1000474F0()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_10004C1F4();
  v3 = v0[2];
  v0[4] = v3;
  v4 = v0[3];
  v0[12] = v3;
  v0[13] = v4;
  v0[5] = v4;
  sub_10004C1F4();
  if (qword_100070478 != -1)
  {
    swift_once();
  }

  v5 = qword_100071C20;
  v0[14] = qword_100071C20;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_100005D70(&qword_1000717B0, &qword_1000717B8, &qword_100054740);
  *v7 = v0;
  v7[1] = sub_100023EBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 17, v5, &type metadata for SettingsAllDayDefaultAlertTimeType, v8);
}

uint64_t (*sub_10004764C(uint64_t *a1))()
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
  *(v3 + 32) = sub_10004C1E4();
  return sub_100003760;
}

uint64_t (*sub_1000476C0(uint64_t *a1))()
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
  *(v3 + 32) = sub_10004C1E4();
  return sub_100005F04;
}

uint64_t sub_100047734()
{
  if (qword_100070478 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100047794()
{
  result = qword_100071760;
  if (!qword_100071760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071760);
  }

  return result;
}

unint64_t sub_1000477EC()
{
  result = qword_100071768;
  if (!qword_100071768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071768);
  }

  return result;
}

uint64_t sub_100047908(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return sub_100047454(a1, v5, v4);
}

uint64_t sub_1000479B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004B3A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000479DC(uint64_t a1)
{
  v2 = sub_10002DD64();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100047A1C()
{
  result = qword_100071770;
  if (!qword_100071770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071770);
  }

  return result;
}

unint64_t sub_100047A74()
{
  result = qword_100071778;
  if (!qword_100071778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071778);
  }

  return result;
}

uint64_t sub_100047AC8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100047AEC, 0, 0);
}

uint64_t sub_100047AEC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10004C084();
  *v1 = sub_10004BB54(v0[2]);
  v1[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100047B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100046250();
  *v5 = v2;
  v5[1] = sub_100003DE4;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100047C14()
{
  result = qword_100071780;
  if (!qword_100071780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071780);
  }

  return result;
}

unint64_t sub_100047C6C()
{
  result = qword_100071788;
  if (!qword_100071788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071788);
  }

  return result;
}

uint64_t sub_100047CC0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100046250();
  *v6 = v2;
  v6[1] = sub_100005F1C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100047D74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100046250();
  *v5 = v2;
  v5[1] = sub_100005F00;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100047E28()
{
  result = qword_100071790;
  if (!qword_100071790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071790);
  }

  return result;
}

unint64_t sub_100047E80()
{
  result = qword_100071798;
  if (!qword_100071798)
  {
    sub_100002C4C(&unk_1000717A0, qword_100054530);
    sub_100046FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071798);
  }

  return result;
}

uint64_t sub_100047F04(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100046E64();
  *v6 = v2;
  v6[1] = sub_100002E00;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100047FF8@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_10004C704();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000057AC(&qword_100070ED0, &qword_1000507C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v12[0] = "rt setting for all day events";
  v8 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0x8000000100060F40;
  v13._countAndFlagsBits = 0xD000000000000023;
  v13._object = 0x8000000100060F10;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v9.super.isa = v8;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_10004C534(v13, v14, v9, v15, v11);

  swift_getKeyPath();
  sub_10004C6F4();
  sub_100045F38();
  sub_10004BF38();
  sub_100047A74();
  sub_10004C714();
  sub_10004C6A4();
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  sub_10004C6C4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000482F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  result = sub_10004C6D4();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100048524@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004C564();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100045840(*a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_10004C6D4();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_1000485BC(unsigned __int8 *a1)
{
  v2 = sub_10004C564();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100045840(*a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C6D4();
  return sub_10004C734();
}

unint64_t sub_100048684(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10004C8A4();
  sub_10004C784();

  v4 = sub_10004C8C4();

  return sub_100048FCC(a1, v4);
}

unint64_t sub_100048798(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10004C8A4();
  sub_100043B40();
  v4 = sub_10004C8C4();

  return sub_1000491B8(a1, v4);
}

unint64_t sub_100048834(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100043DEC();

  return sub_100049858(a1, v4);
}

uint64_t sub_1000488A4(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_10004C8A4();
  a2(a1);
  sub_10004C784();

  v7 = sub_10004C8C4();

  return a3(a1, v7);
}

unint64_t sub_100048940(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10004C8A4();
  sub_10004C784();

  v4 = sub_10004C8C4();
  return sub_100049FCC(a1, v4);
}

unint64_t sub_100048A6C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1953460082;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x8000000100054900;
          break;
        case 2:
          v8 = 0xD000000000000012;
          v7 = 0x8000000100054920;
          break;
        case 3:
          v8 = 0x626D754E6B656577;
          v7 = 0xEB00000000737265;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100054940;
          break;
        case 5:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100054960;
          break;
        case 6:
          v8 = 0x61727544636E7973;
          v7 = 0xEC0000006E6F6974;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100054990;
          break;
        case 8:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000001000549B0;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000001000549D0;
          break;
        case 0xA:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000001000549F0;
          break;
        case 0xB:
          v8 = 0x654C6F54656D6974;
          v7 = 0xEB00000000657661;
          break;
        case 0xC:
          v8 = 0xD000000000000014;
          v7 = 0x8000000100054A20;
          break;
        case 0xD:
          v8 = 0x6565577472617473;
          v7 = 0xEB000000006E4F6BLL;
          break;
        case 0xE:
          v8 = 0x43746C7561666564;
          v7 = 0xEF7261646E656C61;
          break;
        case 0xF:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100054A60;
          break;
        case 0x10:
          v8 = 0xD000000000000013;
          v7 = 0x8000000100054A80;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1953460082;
      switch(a1)
      {
        case 1:
          v9 = 0x8000000100054900;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        case 2:
          v9 = 0x8000000100054920;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 3:
          v11 = 0x626D754E6B656577;
          v12 = 7565925;
          goto LABEL_44;
        case 4:
          v9 = 0x8000000100054940;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 5:
          v9 = 0x8000000100054960;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 6:
          v9 = 0xEC0000006E6F6974;
          if (v8 != 0x61727544636E7973)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 7:
          v9 = 0x8000000100054990;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 8:
          v9 = 0x80000001000549B0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 9:
          v9 = 0x80000001000549D0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 10:
          v10 = 0xD00000000000001DLL;
          v9 = 0x80000001000549F0;
          goto LABEL_49;
        case 11:
          v11 = 0x654C6F54656D6974;
          v12 = 6649441;
          goto LABEL_44;
        case 12:
          v9 = 0x8000000100054A20;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 13:
          v11 = 0x6565577472617473;
          v12 = 7229291;
LABEL_44:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v11)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 14:
          v9 = 0xEF7261646E656C61;
          if (v8 != 0x43746C7561666564)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 15:
          v9 = 0x8000000100054A60;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        case 16:
          v9 = 0x8000000100054A80;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        default:
LABEL_49:
          if (v8 != v10)
          {
            goto LABEL_51;
          }

LABEL_50:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_51:
          v13 = sub_10004C844();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100048FCC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000073;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0xD000000000000010;
        }

        else
        {
          v8 = 0x746E6576456C6C61;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0x8000000100054AA0;
        }

        else
        {
          v9 = 0xE900000000000073;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xD000000000000010;
        v9 = 0x8000000100054AC0;
      }

      else
      {
        v8 = 0xD000000000000011;
        if (v7 == 3)
        {
          v9 = 0x8000000100054AE0;
        }

        else
        {
          v9 = 0x8000000100054B00;
        }
      }

      v10 = 0xD000000000000011;
      if (v6 == 3)
      {
        v10 = 0xD000000000000011;
        v11 = 0x8000000100054AE0;
      }

      else
      {
        v11 = 0x8000000100054B00;
      }

      if (v6 == 2)
      {
        v10 = 0xD000000000000010;
        v11 = 0x8000000100054AC0;
      }

      if (v6)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v12 = 0x746E6576456C6C61;
      }

      if (v6)
      {
        v5 = 0x8000000100054AA0;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_10004C844();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000073;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000491B8(unsigned __int8 a1, uint64_t a2)
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
      v28 = v4;
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0x694D797472696874;
        }

        else
        {
          v9 = 0xD000000000000010;
        }

        if (v6 == 2)
        {
          v10 = 0xED0000736574756ELL;
        }

        else
        {
          v10 = 0x8000000100054B50;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xD000000000000011;
        }

        else
        {
          v11 = 0x4D6E656574666966;
        }

        if (v6)
        {
          v12 = 0x8000000100054B30;
        }

        else
        {
          v12 = 0xEE00736574756E69;
        }

        if (v6 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }

        if (v6 <= 1)
        {
          v8 = v12;
        }

        else
        {
          v8 = v10;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0x6E694D7974666966;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 4)
        {
          v8 = 0xEC00000073657475;
        }

        else
        {
          v8 = 0x8000000100054B70;
        }
      }

      else if (v6 == 6)
      {
        v8 = 0xE700000000000000;
        v7 = 0x72756F48656E6FLL;
      }

      else if (v6 == 7)
      {
        v7 = 0xD000000000000014;
        v8 = 0x8000000100054B90;
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x7372756F486F7774;
      }

      v13 = 0xD000000000000014;
      if (v5 != 7)
      {
        v13 = 0x7372756F486F7774;
      }

      v14 = 0x8000000100054B90;
      if (v5 != 7)
      {
        v14 = 0xE800000000000000;
      }

      if (v5 == 6)
      {
        v13 = 0x72756F48656E6FLL;
        v14 = 0xE700000000000000;
      }

      v15 = 0x6E694D7974666966;
      if (v5 != 4)
      {
        v15 = 0xD000000000000010;
      }

      v16 = 0xEC00000073657475;
      if (v5 != 4)
      {
        v16 = 0x8000000100054B70;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x694D797472696874;
      }

      else
      {
        v17 = 0xD000000000000010;
      }

      if (v5 == 2)
      {
        v18 = 0xED0000736574756ELL;
      }

      else
      {
        v18 = 0x8000000100054B50;
      }

      if (v5)
      {
        v19 = 0xD000000000000011;
      }

      else
      {
        v19 = 0x4D6E656574666966;
      }

      if (v5)
      {
        v20 = 0x8000000100054B30;
      }

      else
      {
        v20 = 0xEE00736574756E69;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_10004C844();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1000494BC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0x4D6E656574666966;
    v27 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          v9 = 0x74756E694D6E6574;
        }

        else
        {
          v9 = v5;
        }

        if (v6 == 3)
        {
          v10 = 0xEA00000000007365;
        }

        else
        {
          v10 = 0xEE00736574756E69;
        }

        if (v6 == 2)
        {
          v9 = 0x756E694D65766966;
          v10 = 0xEB00000000736574;
        }

        v11 = *(*(v28 + 48) + v4) ? 0x7645664F656D6974 : 0x7472656C416F6ELL;
        v12 = v6 ? 0xEB00000000746E65 : 0xE700000000000000;
        v8 = v6 <= 1 ? v11 : v9;
        v7 = v6 <= 1 ? v12 : v10;
      }

      else if (*(*(v28 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0xE600000000000000;
          v8 = 0x796144656E6FLL;
        }

        else
        {
          v7 = 0xE700000000000000;
          v8 = v6 == 9 ? 0x737961446F7774 : 0x6B656557656E6FLL;
        }
      }

      else if (v6 == 5)
      {
        v8 = 0x694D797472696874;
        v7 = 0xED0000736574756ELL;
      }

      else if (v6 == 6)
      {
        v7 = 0xE700000000000000;
        v8 = 0x72756F48656E6FLL;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x7372756F486F7774;
      }

      v13 = 0x737961446F7774;
      if (v27 != 9)
      {
        v13 = 0x6B656557656E6FLL;
      }

      v14 = 0xE700000000000000;
      if (v27 == 8)
      {
        v13 = 0x796144656E6FLL;
        v14 = 0xE600000000000000;
      }

      v15 = 0x7372756F486F7774;
      if (v27 == 6)
      {
        v15 = 0x72756F48656E6FLL;
      }

      v16 = 0xE800000000000000;
      if (v27 == 6)
      {
        v16 = 0xE700000000000000;
      }

      if (v27 == 5)
      {
        v15 = 0x694D797472696874;
        v16 = 0xED0000736574756ELL;
      }

      if (v27 <= 7)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v27 == 3)
      {
        v17 = 0x74756E694D6E6574;
      }

      else
      {
        v17 = v5;
      }

      if (v27 == 3)
      {
        v18 = 0xEA00000000007365;
      }

      else
      {
        v18 = 0xEE00736574756E69;
      }

      if (v27 == 2)
      {
        v17 = 0x756E694D65766966;
        v18 = 0xEB00000000736574;
      }

      if (v27)
      {
        v19 = 0x7645664F656D6974;
      }

      else
      {
        v19 = 0x7472656C416F6ELL;
      }

      if (v27)
      {
        v20 = 0xEB00000000746E65;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      if (v27 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v27 <= 4 ? v17 : v13;
      v22 = v27 <= 4 ? v18 : v14;
      if (v8 == v21 && v7 == v22)
      {
        break;
      }

      v23 = v5;
      v24 = sub_10004C844();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_100049858(unsigned __int8 a1, uint64_t a2)
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
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v12 = 0xE600000000000000;
            v11 = 0x796164697266;
          }

          else
          {
            v12 = 0xE800000000000000;
            v11 = 0x7961647275746173;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x616473656E646577;
          }

          else
          {
            v11 = 0x7961647372756874;
          }

          if (v6 == 4)
          {
            v12 = 0xE900000000000079;
          }

          else
          {
            v12 = 0xE800000000000000;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x7961646E6F6DLL;
        }

        else
        {
          v7 = 0x79616473657574;
        }

        if (v6 == 2)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE700000000000000;
        }

        v9 = 0x7961646E7573;
        if (*(*(v27 + 48) + v4))
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v9 = 0x65536D6574737973;
          v10 = 0xED0000676E697474;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0x7961647275746173;
      if (v5 == 6)
      {
        v13 = 0x796164697266;
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      v15 = 0x7961647372756874;
      if (v5 == 4)
      {
        v15 = 0x616473656E646577;
      }

      v16 = 0xE900000000000079;
      if (v5 != 4)
      {
        v16 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 0x7961646E6F6DLL;
      }

      else
      {
        v17 = 0x79616473657574;
      }

      if (v5 == 2)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = 0x7961646E7573;
      if (v5)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x65536D6574737973;
        v20 = 0xED0000676E697474;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = sub_10004C844();

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

unint64_t sub_100049AF0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 6710895;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x6573656E696863;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x776572626568;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x69726A6968;
          break;
        case 4:
          v8 = 0x6D6D5569726A6968;
          v7 = 0xEE00617275516C41;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x616C676E6162;
          break;
        case 6:
          v7 = 0xE800000000000000;
          v8 = 0x69746172616A7567;
          break;
        case 7:
          v7 = 0xE700000000000000;
          v8 = 0x6164616E6E616BLL;
          break;
        case 8:
          v8 = 0x616C6179616C616DLL;
          v7 = 0xE90000000000006DLL;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v8 = 0x6968746172616DLL;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1634296943;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6C696D6174;
          break;
        case 0xC:
          v7 = 0xE600000000000000;
          v8 = 0x7567756C6574;
          break;
        case 0xD:
          v7 = 0xE600000000000000;
          v8 = 0x6D61726B6976;
          break;
        case 0xE:
          v7 = 0xE600000000000000;
          v8 = 0x6E6165726F6BLL;
          break;
        case 0xF:
          v8 = 0x656D616E74656976;
          v7 = 0xEA00000000006573;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 6710895;
      switch(a1)
      {
        case 1:
          v9 = 0xE700000000000000;
          if (v8 == 0x6573656E696863)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v9 = 0xE600000000000000;
          if (v8 != 0x776572626568)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x69726A6968)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v9 = 0xEE00617275516C41;
          if (v8 != 0x6D6D5569726A6968)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v9 = 0xE600000000000000;
          if (v8 != 0x616C676E6162)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v9 = 0xE800000000000000;
          if (v8 != 0x69746172616A7567)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 7:
          v9 = 0xE700000000000000;
          if (v8 != 0x6164616E6E616BLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v9 = 0xE90000000000006DLL;
          if (v8 != 0x616C6179616C616DLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v9 = 0xE700000000000000;
          if (v8 != 0x6968746172616DLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v9 = 0xE400000000000000;
          v10 = 1634296943;
          goto LABEL_47;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6C696D6174)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v9 = 0xE600000000000000;
          if (v8 != 0x7567756C6574)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v9 = 0xE600000000000000;
          if (v8 != 0x6D61726B6976)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v9 = 0xE600000000000000;
          if (v8 != 0x6E6165726F6BLL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v9 = 0xEA00000000006573;
          if (v8 != 0x656D616E74656976)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v10)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_49:
          v11 = sub_10004C844();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100049FCC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA0000000000746ELL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x657645664F796164;
        }

        else
        {
          v8 = 0x7472656C416F6ELL;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xEA0000000000746ELL;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x6542796144656E6FLL;
        v9 = 0xEC00000065726F66;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x42737961446F7774;
        }

        else
        {
          v8 = 0x426B656557656E6FLL;
        }

        v9 = 0xED000065726F6665;
      }

      if (v6 == 3)
      {
        v10 = 0x42737961446F7774;
      }

      else
      {
        v10 = 0x426B656557656E6FLL;
      }

      if (v6 == 2)
      {
        v10 = 0x6542796144656E6FLL;
      }

      v11 = 0xEC00000065726F66;
      if (v6 != 2)
      {
        v11 = 0xED000065726F6665;
      }

      if (v6)
      {
        v12 = 0x657645664F796164;
      }

      else
      {
        v12 = 0x7472656C416F6ELL;
      }

      if (!v6)
      {
        v5 = 0xE700000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_10004C844();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA0000000000746ELL;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004A1D0(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070728, &qword_100054810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071860, &unk_100054818);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_100070728, &qword_100054810);
      v12 = *v6;
      result = sub_1000488A4(*v6, sub_100008B1C, sub_100048A6C);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004A3E0(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070740, &unk_10004DB70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&qword_100071870, &qword_100054828);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_100070740, &unk_10004DB70);
      v12 = *v6;
      result = sub_1000488A4(*v6, sub_100008B1C, sub_100048A6C);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1000057AC(&unk_100071878, &unk_100054830);
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

unint64_t sub_10004A5FC(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070A98, &qword_100054800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071850, &qword_100054808);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_100070A98, &qword_100054800);
      v12 = *v6;
      result = sub_100048684(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004A7E4(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100070D20, &unk_100050740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071840, &qword_1000547F8);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_100070D20, &unk_100050740);
      v12 = *v6;
      result = sub_100048798(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004A9CC(uint64_t a1)
{
  v2 = sub_1000057AC(&unk_100070EC0, &qword_1000547E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071830, &unk_1000547E8);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &unk_100070EC0, &qword_1000547E0);
      v12 = *v6;
      result = sub_1000488A4(*v6, sub_10002613C, sub_1000494BC);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004ABDC(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_1000712D0, &qword_1000547D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071820, &qword_1000547D8);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_1000712D0, &qword_1000547D0);
      v12 = *v6;
      result = sub_100048940(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004ADC4(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100071448, &unk_100053240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071810, &qword_1000547C8);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_100071448, &unk_100053240);
      v12 = *v6;
      result = sub_100048834(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004AFAC(uint64_t a1)
{
  v2 = sub_1000057AC(&qword_100071650, &qword_1000547B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_100071800, &unk_1000547B8);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &qword_100071650, &qword_1000547B0);
      v12 = *v6;
      result = sub_1000488A4(*v6, sub_1000432DC, sub_100049AF0);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

unint64_t sub_10004B1BC(uint64_t a1)
{
  v2 = sub_1000057AC(&unk_1000717E0, &unk_100054798);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000057AC(&unk_1000717F0, &qword_1000547A8);
    v8 = sub_10004C824();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10004BEA4(v10, v6, &unk_1000717E0, &unk_100054798);
      v12 = *v6;
      result = sub_100048940(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004C414();
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

uint64_t sub_10004B3A4()
{
  v0 = sub_10004C494();
  v1 = *(v0 - 8);
  v59 = v0;
  v60 = v1;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v58 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000057AC(&unk_100070570, &unk_10004D430);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v57 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = v41 - v8;
  v9 = sub_1000057AC(&qword_100070E80, &qword_10004E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v56 = v41 - v11;
  v12 = sub_10004C554();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C5A4();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10004C754();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10004C564();
  v53 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v41[1] = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000057AC(&qword_1000717C0, &qword_100054748);
  sub_10004C744();
  sub_10004C594();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v13 + 104);
  v42 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v43 = v12;
  v26(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v44 = v26;
  v45 = v13 + 104;
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v26(v16, v25, v12);
  v27 = v56;
  sub_10004C574();
  v28 = *(v22 + 56);
  v52 = v22 + 56;
  v54 = v28;
  v28(v27, 0, 1, v21);
  v29 = sub_10004C1C4();
  v61 = 0;
  v62 = 0;
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v47 = v31;
  v48 = v30 + 56;
  v32 = v55;
  v31(v55, 1, 1, v29);
  v31(v57, 1, 1, v29);
  v49 = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v60 + 104);
  v60 += 104;
  v50 = v33;
  v33(v58);
  sub_1000461F8();
  v34 = v32;
  v51 = sub_10004C224();
  v46 = sub_1000057AC(&unk_1000717C8, &qword_100054750);
  sub_10004C744();
  sub_10004C594();
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v44(v16, v42, v43);
  sub_10004C574();
  sub_10004C744();
  sub_10004C594();
  v37(v16, v35, v36);
  v38 = v56;
  sub_10004C574();
  v54(v38, 0, 1, v53);
  LOBYTE(v61) = 5;
  v39 = v47;
  v47(v34, 1, 1, v29);
  v39(v57, 1, 1, v29);
  v50(v58, v49, v59);
  sub_100045F38();
  sub_10004C214();
  return v51;
}

uint64_t sub_10004BB08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10006DAA0;
  v6._object = a2;
  v4 = sub_10004C834(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004BB54(uint64_t a1)
{
  v2 = sub_10004C554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C5A4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004C754();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10004C564();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000057AC(&qword_100071758, qword_1000542D0);
  sub_10004C744();
  sub_10004C594();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_10004C574();
  sub_100005D70(&qword_1000717B0, &qword_1000717B8, &qword_100054740);
  sub_100045F38();
  v13 = sub_10004C504();
  sub_1000057AC(&qword_100070E98, &qword_1000511E8);
  sub_10004C0F4();
  memset(v15, 0, sizeof(v15));
  v16 = 0;

  sub_10004C0E4();
  sub_10004C0A4();
  *&v15[0] = a1;

  swift_unknownObjectRetain();
  sub_10004C094();

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_10004BEA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10004BF38()
{
  result = qword_100071888;
  if (!qword_100071888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100071888);
  }

  return result;
}

uint64_t sub_10004BF8C()
{
  sub_100002C4C(&qword_100070ED0, &qword_1000507C0);
  sub_100005D70(&qword_100070EE0, &qword_100070ED0, &qword_1000507C0);
  return swift_getOpaqueTypeConformance2();
}