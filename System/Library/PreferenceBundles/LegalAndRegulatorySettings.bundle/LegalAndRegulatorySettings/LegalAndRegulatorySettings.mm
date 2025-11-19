id sub_14F4()
{
  type metadata accessor for FindLegalAndRegulatorySettingsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_C460 = result;
  return result;
}

unint64_t sub_1574()
{
  result = qword_C400;
  if (!qword_C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C400);
  }

  return result;
}

uint64_t sub_15E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_319C();
  v3[5] = sub_318C();
  v5 = sub_317C();

  return _swift_task_switch(sub_1680, v5, v4);
}

uint64_t sub_1680()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_30CC();
  v5 = v0[1];

  return v5();
}

uint64_t sub_16F8()
{
  v1 = sub_1884(&qword_C408, &qword_35C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v8 - v4;
  v6 = *v0;
  sub_30BC();
  sub_1908();

  sub_312C();
  sub_1B00();

  sub_311C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1850@<X0>(uint64_t *a1@<X8>)
{
  sub_30FC();
  result = sub_30EC();
  *a1 = result;
  return result;
}

uint64_t sub_1884(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_18CC()
{

  return sub_30AC();
}

unint64_t sub_1908()
{
  result = qword_C410;
  if (!qword_C410)
  {
    sub_30BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C410);
  }

  return result;
}

uint64_t sub_1960(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A0C;

  return sub_15E4(a1, a2, v2);
}

uint64_t sub_1A0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1B00()
{
  result = qword_C418;
  if (!qword_C418)
  {
    sub_1B64(&qword_C408, &qword_35C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C418);
  }

  return result;
}

uint64_t sub_1B64(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1BBC()
{
  sub_1B64(&qword_C408, &qword_35C8);
  sub_1B00();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C20()
{
  v1 = OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState;
  if (*(v0 + OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState);
  }

  else
  {
    v3 = v0;
    sub_30FC();
    v2 = sub_30EC();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1C90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(*(sub_30BC() - 8) + 64);
  __chkstk_darwin();
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidLoad");
  sub_1C20();
  sub_30AC();
  v4 = objc_allocWithZone(sub_1884(&qword_C458, &unk_3680));
  v5 = sub_310C();
  if (qword_C2C8 != -1)
  {
    swift_once();
  }

  v6 = qword_C460;
  v7 = sub_314C();
  v8 = [v6 localizedStringForKey:v7 value:0 table:0];

  if (!v8)
  {
    sub_315C();
    v8 = sub_314C();
  }

  [v1 setTitle:v8];

  v9 = [v5 view];
  if (!v9)
  {
    v10 = v5;
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    [v11 addSubview:v10];

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;

      [v10 setFrame:{0.0, 0.0, v16, v18}];
      [v10 setAutoresizingMask:18];
      [v1 addChildViewController:v5];
      [v5 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_319C();
  v3[6] = sub_318C();
  v5 = sub_317C();

  return _swift_task_switch(sub_2190, v5, v4);
}

uint64_t sub_2190()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = sub_313C();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  v7 = *(v0 + 32);
  *(v0 + 72) = sub_318C();
  v9 = sub_317C();

  return _swift_task_switch(sub_226C, v9, v8);
}

uint64_t sub_226C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 32);
    sub_1C20();
    v5._rawValue = v3;
    sub_30DC(v5);
  }

  v6 = *(v0 + 56);

  if (v6)
  {
    v7 = *(v0 + 56);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

id sub_246C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_24D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2520()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A0C;

  return sub_20F0(v2, v3, v4);
}

uint64_t sub_25D4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_30A8;

  return v7();
}

uint64_t sub_26C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_30A8;

  return sub_25D4(v2, v3, v5);
}

uint64_t sub_2780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A0C;

  return v8();
}

uint64_t sub_2868()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_28A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_30A8;

  return sub_2780(a1, v4, v5, v7);
}

uint64_t sub_2974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1884(&qword_C450, &qword_3630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_2C30(a3, v24 - v10);
  v12 = sub_31BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2CA0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_31AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_317C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_316C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2CA0(a3);

    return v22;
  }

LABEL_8:
  sub_2CA0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1884(&qword_C450, &qword_3630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2CA0(uint64_t a1)
{
  v2 = sub_1884(&qword_C450, &qword_3630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D08(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2E00;

  return v7(a1);
}

uint64_t sub_2E00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2EF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2F30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_30A8;

  return sub_2D08(a1, v5);
}

uint64_t sub_2FE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A0C;

  return sub_2D08(a1, v5);
}