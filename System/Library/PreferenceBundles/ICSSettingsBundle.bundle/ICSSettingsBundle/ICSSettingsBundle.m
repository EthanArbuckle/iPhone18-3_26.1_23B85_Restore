id PHDefaultLog()
{
  if (qword_111B8 != -1)
  {
    sub_5490();
  }

  v1 = qword_111B0;

  return v1;
}

void sub_2648(id a1)
{
  qword_111B0 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_111C8 != -1)
  {
    sub_54A4();
  }

  v1 = qword_111C0;

  return v1;
}

void sub_26D0(id a1)
{
  qword_111C0 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_111D8 != -1)
  {
    sub_54B8();
  }

  v1 = qword_111D0;

  return v1;
}

void sub_2758(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_111D0;
  qword_111D0 = v1;
}

uint64_t sub_2860(uint64_t a1)
{
  qword_111E0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t static ICSTipsHelper.donateEventAnnouceCallsEnabled()()
{
  v0 = (*(*(sub_3938(&qword_11008, &qword_80E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = sub_560C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_3D10(0, 0, v2, &unk_80F0, v4);
}

uint64_t sub_3938(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_39A0()
{
  sub_54DC();
  v1 = sub_55CC();
  v3 = v2;
  v0[3] = v2;
  v4 = sub_55CC();
  v6 = v5;
  v0[4] = v5;
  v7 = async function pointer to static TipEventProxy.donate(eventIdentifier:for:with:)[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_3A98;

  return static TipEventProxy.donate(eventIdentifier:for:with:)(v1, v3, v4, v6, 0);
}

uint64_t sub_3A98()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  if (v0)
  {

    v7 = sub_4808;
  }

  else
  {

    v7 = sub_3C04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3C2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3C64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4804;

  return sub_3980(a1);
}

uint64_t sub_3D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_3938(&qword_11008, &qword_80E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_4374(a3, v26 - v10);
  v12 = sub_560C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_43E4(v11);
  }

  else
  {
    sub_55FC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_55EC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_55DC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_3938(&qword_11038, &qword_8138);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_43E4(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_43E4(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_3938(&qword_11038, &qword_8138);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id ICSTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSTipsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSTipsHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id ICSTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICSTipsHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_41D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4280;

  return sub_3980(a1);
}

uint64_t sub_4280()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4374(uint64_t a1, uint64_t a2)
{
  v4 = sub_3938(&qword_11008, &qword_80E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43E4(uint64_t a1)
{
  v2 = sub_3938(&qword_11008, &qword_80E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_444C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_4540;

  return v6(v2 + 32);
}

uint64_t sub_4540()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_4654(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4804;

  return sub_444C(a1, v5);
}

uint64_t sub_470C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4744(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4280;

  return sub_444C(a1, v5);
}

unint64_t sub_4844()
{
  result = qword_110D8;
  if (!qword_110D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_110D8);
  }

  return result;
}

uint64_t sub_48B4()
{
  v0 = *(*(sub_551C() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_54FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4CD8(0, &qword_110F0, &off_C2E0);
  sub_4C04();
  sub_550C();
  sub_54EC();
  sub_552C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v8 = sub_553C();
  v10 = v9;
  v12 = v11;
  sub_4BAC();
  sub_554C();
  sub_4CC8(v8, v10, v12 & 1);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_4B00()
{
  sub_3938(&qword_110E0, &qword_8208);
  sub_54FC();
  sub_4BAC();
  swift_getOpaqueTypeConformance2();
  return sub_55AC();
}

unint64_t sub_4BAC()
{
  result = qword_110E8;
  if (!qword_110E8)
  {
    sub_54FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_110E8);
  }

  return result;
}

id sub_4C04()
{
  v0 = [objc_allocWithZone(PSSpecifier) init];
  v1 = [objc_allocWithZone(TUUserConfiguration) init];
  sub_4CD8(0, &qword_110F8, TUUserConfiguration_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_55CC();
    v3 = sub_55BC();
  }

  [v0 setProperty:v1 forKey:v3];

  return v0;
}

uint64_t sub_4CC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_4CD8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_4D34()
{
  result = qword_11100;
  if (!qword_11100)
  {
    sub_4D98(&qword_11108, qword_8228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11100);
  }

  return result;
}

uint64_t sub_4D98(uint64_t *a1, uint64_t *a2)
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

uint64_t ICSSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_559C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_561C();

  LOBYTE(a1) = sub_557C();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ICSSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_559C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_563C() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_556C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_562C();
  sub_555C();
  v14 = [a2 traitCollection];
  sub_561C();

  sub_51F4();
  sub_558C();
  (*(v4 + 8))(v7, v3);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_51F4()
{
  result = qword_11110;
  if (!qword_11110)
  {
    sub_556C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11110);
  }

  return result;
}