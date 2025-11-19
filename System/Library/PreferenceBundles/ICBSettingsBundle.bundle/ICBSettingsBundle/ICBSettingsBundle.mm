uint64_t sub_1740(uint64_t a1)
{
  qword_CBE0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

id PHDefaultLog()
{
  if (qword_CBF8 != -1)
  {
    sub_40D0();
  }

  v1 = qword_CBF0;

  return v1;
}

void sub_21B0(id a1)
{
  qword_CBF0 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_CC08 != -1)
  {
    sub_40E4();
  }

  v1 = qword_CC00;

  return v1;
}

void sub_2238(id a1)
{
  qword_CC00 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_CC18[0] != -1)
  {
    sub_40F8();
  }

  v1 = qword_CC10;

  return v1;
}

void sub_22C0(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_CC10;
  qword_CC10 = v1;
}

unint64_t sub_33E0()
{
  result = qword_CB08;
  if (!qword_CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB08);
  }

  return result;
}

uint64_t sub_3450@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_413C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_411C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_41FC();
  sub_41EC();
  sub_41DC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3830();
  sub_412C();
  sub_410C();
  sub_414C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v16}];
  v10 = sub_415C();
  v12 = v11;
  v14 = v13;
  sub_37D8();
  sub_416C();
  sub_387C(v10, v12, v14 & 1);

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_36E8()
{
  sub_3790(&qword_CB10, &qword_53D8);
  sub_411C();
  sub_37D8();
  swift_getOpaqueTypeConformance2();
  return sub_41CC();
}

uint64_t sub_3790(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_37D8()
{
  result = qword_CB18;
  if (!qword_CB18)
  {
    sub_411C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB18);
  }

  return result;
}

unint64_t sub_3830()
{
  result = qword_CB20;
  if (!qword_CB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_CB20);
  }

  return result;
}

uint64_t sub_387C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_38A0()
{
  result = qword_CB28;
  if (!qword_CB28)
  {
    sub_3904(&qword_CB30, qword_53F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB28);
  }

  return result;
}

uint64_t sub_3904(uint64_t *a1, uint64_t *a2)
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

uint64_t ICBSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_41BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_420C();

  LOBYTE(a1) = sub_419C();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ICBSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_41BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_422C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_418C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_421C();
  sub_417C();
  v15 = [a2 traitCollection];
  sub_420C();

  sub_3DCC();
  sub_41AC();
  (*(v4 + 8))(v7, v3);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_3DCC()
{
  result = qword_CB38;
  if (!qword_CB38)
  {
    sub_418C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CB38);
  }

  return result;
}