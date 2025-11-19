uint64_t SharePlaySettingsLog()
{
  if (qword_118A8[0] != -1)
  {
    sub_5A78();
  }

  return qword_118A0;
}

void sub_2184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_219C(uint64_t a1)
{
  result = [*(a1 + 32) autoSharePlayEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_229C(uint64_t a1)
{
  if (*(a1 + 48) != [*(a1 + 32) autoSharePlayEnabled])
  {
    [*(a1 + 32) setAutoSharePlayEnabled:?];
    v2 = [*(a1 + 40) delegateController];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_2350;
    v3[3] = &unk_C4F8;
    v3[4] = *(a1 + 40);
    v4 = *(a1 + 48);
    [v2 enumerateDelegatesUsingBlock:v3];
  }
}

void sub_2350(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_241C;
    block[3] = &unk_C4D0;
    v7 = v5;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_2530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2548(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2730;
    block[3] = &unk_C520;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

void sub_27FC(uint64_t a1)
{
  v4 = [*(a1 + 32) applicationPolicyManager];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) bundleIdentifier];
  [v4 setAuthorization:v2 forBundleID:v3];
}

void sub_2A94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2B68;
    block[3] = &unk_C520;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

void sub_2B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2C4C;
    block[3] = &unk_C520;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

void sub_2C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2D30;
    block[3] = &unk_C520;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

int64_t sub_30B4(id a1, SharePlayProvider *a2, SharePlayProvider *a3)
{
  v4 = a3;
  v5 = [(SharePlayProvider *)a2 localizedName];
  v6 = [(SharePlayProvider *)v4 localizedName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t SharePlaySettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_5BA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 traitCollection];
  sub_5C14();

  LOBYTE(a1) = sub_5B84();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t SharePlaySettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_5BA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_5C34() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_5B74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C24();
  sub_5B64();
  v14 = [a2 traitCollection];
  sub_5C14();

  sub_51D8();
  sub_5B94();
  (*(v4 + 8))(v7, v3);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_51D8()
{
  result = qword_117C0;
  if (!qword_117C0)
  {
    sub_5B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_117C0);
  }

  return result;
}

unint64_t sub_54F0()
{
  result = qword_11860;
  if (!qword_11860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11860);
  }

  return result;
}

uint64_t sub_5560()
{
  v0 = *(*(sub_5B54() - 8) + 64);
  __chkstk_darwin();
  sub_5C04();
  sub_5BF4();
  sub_5BE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_5970(0, &qword_11870, &off_C2D0);
  sub_5738();
  sub_5B44();
  sub_5B24();
}

uint64_t sub_5674()
{
  v0 = sub_5B34();
  v1 = sub_56E0();

  return SettingsPane.init(makeContent:)(sub_56DC, 0, v0, v1);
}

unint64_t sub_56E0()
{
  result = qword_11868;
  if (!qword_11868)
  {
    sub_5B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11868);
  }

  return result;
}

id sub_5738()
{
  v0 = [objc_allocWithZone(PSSpecifier) init];
  sub_5970(0, &qword_11870, &off_C2D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v13._countAndFlagsBits = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000000007880;
  v15.value._object = 0x8000000000009210;
  v15.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_5B14(v14, v15, v3, v16, v13);

  v4 = sub_5BC4();

  [v0 setName:v4];

  v5 = [objc_allocWithZone(SharePlayProviderController) init];
  sub_5970(0, &qword_11878, off_C2C8);
  v6 = swift_getObjCClassFromMetadata();
  v7 = v5;
  v8 = NSStringFromClass(v6);
  if (!v8)
  {
    sub_5BD4();
    v8 = sub_5BC4();
  }

  [v0 setProperty:v7 forKey:v8];

  v9 = [objc_allocWithZone(TUUserConfiguration) init];
  sub_5970(0, &qword_11880, TUUserConfiguration_ptr);
  v10 = swift_getObjCClassFromMetadata();
  v11 = NSStringFromClass(v10);
  if (!v11)
  {
    sub_5BD4();
    v11 = sub_5BC4();
  }

  [v0 setProperty:v9 forKey:v11];

  return v0;
}

uint64_t sub_5970(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_59CC()
{
  result = qword_11888;
  if (!qword_11888)
  {
    sub_5A30(&unk_11890, &qword_92E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_11888);
  }

  return result;
}

uint64_t sub_5A30(uint64_t *a1, uint64_t *a2)
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

void sub_5A8C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Attempt to retrieve application record for bundle identifier %@ failed with error: %@", &v3, 0x16u);
}