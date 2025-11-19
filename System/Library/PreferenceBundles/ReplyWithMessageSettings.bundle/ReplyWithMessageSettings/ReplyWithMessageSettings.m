id PHDefaultLog()
{
  if (qword_C578 != -1)
  {
    sub_2CC8();
  }

  v1 = qword_C570;

  return v1;
}

void sub_2088(id a1)
{
  qword_C570 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog()
{
  if (qword_C588 != -1)
  {
    sub_2CDC();
  }

  v1 = qword_C580;

  return v1;
}

void sub_2110(id a1)
{
  qword_C580 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue()
{
  if (qword_C598[0] != -1)
  {
    sub_2CF0();
  }

  v1 = qword_C590;

  return v1;
}

void sub_2198(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_C590;
  qword_C590 = v1;
}

uint64_t PhoneSettingsReplyWithMessageBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_2D84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_2DD4();

  LOBYTE(a1) = sub_2D64();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t PhoneSettingsReplyWithMessageBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_2D84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_2DF4() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_2D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2DE4();
  sub_2D44();
  v14 = [a2 traitCollection];
  sub_2DD4();

  sub_2680();
  sub_2D74();
  (*(v4 + 8))(v7, v3);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_2680()
{
  result = qword_C4A8;
  if (!qword_C4A8)
  {
    sub_2D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4A8);
  }

  return result;
}

unint64_t sub_2998()
{
  result = qword_C548;
  if (!qword_C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C548);
  }

  return result;
}

uint64_t sub_2A08()
{
  v0 = *(*(sub_2D34() - 8) + 64);
  __chkstk_darwin();
  sub_2DC4();
  sub_2DB4();
  sub_2DA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2BBC();
  sub_2D24();
  sub_2D04();
}

uint64_t sub_2AFC()
{
  v0 = sub_2D14();
  v1 = sub_2B64();

  return SettingsPane.init(makeContent:)(sub_2A08, 0, v0, v1);
}

unint64_t sub_2B64()
{
  result = qword_C550;
  if (!qword_C550)
  {
    sub_2D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C550);
  }

  return result;
}

unint64_t sub_2BBC()
{
  result = qword_C558;
  if (!qword_C558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C558);
  }

  return result;
}

unint64_t sub_2C1C()
{
  result = qword_C560;
  if (!qword_C560)
  {
    sub_2C80(&qword_C568, &qword_4188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C560);
  }

  return result;
}

uint64_t sub_2C80(uint64_t *a1, uint64_t *a2)
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