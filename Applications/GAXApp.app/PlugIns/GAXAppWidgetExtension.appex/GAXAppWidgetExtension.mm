uint64_t type metadata accessor for StartGuidedAccessIntent()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000017B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartGuidedAccessIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000188C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = *(*(sub_100004410() - 8) + 64);
  __chkstk_darwin();
  v2 = sub_100003A20(&qword_10000C310, &qword_100004988);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v31 = &v28 - v5;
  v6 = sub_100003A20(&qword_10000C318, &qword_100004990);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v32 = &v28 - v9;
  v30 = qword_10000C168;
  type metadata accessor for StartGuidedAccessIntent();
  type metadata accessor for GAXAppReferenceClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = ObjCClassFromMetadata;
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass:ObjCClassFromMetadata];
  v26._countAndFlagsBits = 0x8000000100004B50;
  v42._countAndFlagsBits = 0x545F544547444957;
  v42._object = 0xEC000000454C5449;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v13.super.isa = v12;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_100004320(v42, v44, v13, v46, v26);

  sub_100004400();
  sub_100003A20(&qword_10000C320, qword_100004998);
  sub_1000017B0(&qword_10000C188);
  v27._object = sub_100003F4C(&qword_10000C328, &qword_10000C320, qword_100004998);
  v14 = v31;
  sub_100004420();
  v15 = [v11 bundleForClass:v29];
  v27._countAndFlagsBits = 0x8000000100004B90;
  v43._object = 0x8000000100004B70;
  v43._countAndFlagsBits = 0xD000000000000012;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v16.super.isa = v15;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v17 = sub_100004320(v43, v45, v16, v47, v27);
  v19 = v18;

  v38 = v17;
  v39 = v19;
  v20 = sub_100003F4C(&qword_10000C330, &qword_10000C310, &qword_100004988);
  v21 = sub_100003F94();
  v23 = v32;
  v22 = v33;
  sub_1000043D0();

  (*(v34 + 8))(v14, v22);
  v38 = v22;
  v39 = &type metadata for String;
  v40 = v20;
  v41 = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v35;
  sub_1000043E0();
  return (*(v36 + 8))(v23, v24);
}

uint64_t sub_100001D08()
{
  type metadata accessor for GAXAppReferenceClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4._countAndFlagsBits = 0x8000000100004B50;
  v5._countAndFlagsBits = 0x545F544547444957;
  v5._object = 0xEC000000454C5449;
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v2.super.isa = v1;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_100004320(v5, v6, v2, v7, v4);

  sub_100003F94();
  return sub_1000043F0();
}

uint64_t sub_100001E0C()
{
  v0 = sub_100004340();
  sub_100003EB8(v0, qword_10000C3E8);
  sub_100003D6C(v0, qword_10000C3E8);
  return sub_100004330();
}

uint64_t sub_100001E70(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = *(*(sub_100003A20(&qword_10000C238, &qword_1000048D8) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v4 = sub_100004370();
  v2[38] = v4;
  v5 = *(v4 - 8);
  v2[39] = v5;
  v6 = *(v5 + 64) + 15;
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100001F68, 0, 0);
}

uint64_t sub_100001F68()
{
  if (_AXSGuidedAccessEnabledNoCaching())
  {
    v1 = swift_task_alloc();
    v0[41] = v1;
    *v1 = v0;
    v1[1] = sub_1000022E8;
    v2 = v0[36];

    return sub_1000032B8();
  }

  else
  {
    v4 = v0[38];
    v5 = v0[39];
    v6 = v0[37];
    sub_100003DA4(v0[36], v6);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_100003E14(v0[37], &qword_10000C238, &qword_1000048D8);
      if (qword_10000C180 != -1)
      {
        swift_once();
      }

      v7 = sub_100004390();
      sub_100003D6C(v7, qword_10000C400);
      v8 = sub_100004380();
      v9 = sub_100004470();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unable to create Guided Access settings URL.", v10, 2u);
      }

      v11 = v0[35];
      sub_100004310();
      v12 = v0[40];
      v13 = v0[37];

      v14 = v0[1];

      return v14();
    }

    else
    {
      (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
      v15 = [objc_allocWithZone(_LSOpenConfiguration) init];
      v0[50] = v15;
      [v15 setSensitive:1];
      v16 = [objc_opt_self() defaultWorkspace];
      v0[51] = v16;
      if (v16)
      {
        v18 = v16;
        v19 = v0[40];
        sub_100004350(v17);
        v21 = v20;
        v0[52] = v20;
        v0[10] = v0;
        v0[15] = v0 + 34;
        v0[11] = sub_100002A38;
        v22 = swift_continuation_init();
        v0[33] = sub_100003A20(&qword_10000C2F8, &qword_100004920);
        v0[26] = _NSConcreteStackBlock;
        v0[27] = 1107296256;
        v0[28] = sub_1000031BC;
        v0[29] = &unk_100008568;
        v0[30] = v22;
        [v18 openURL:v21 configuration:v15 completionHandler:v0 + 26];
        v16 = v0 + 10;
      }

      else
      {
        __break(1u);
      }

      return _swift_continuation_await(v16);
    }
  }
}

uint64_t sub_1000022E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v6 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = a2;

  return _swift_task_switch(sub_1000023E8, 0, 0);
}

uint64_t sub_1000023E8()
{
  v1 = v0[43];
  v2 = v0[42] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = [objc_opt_self() defaultWorkspace];
    v0[44] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v0[42];
      v6 = v0[43];
      v7 = sub_100004440();
      v0[45] = v7;
      v8 = [objc_allocWithZone(_LSOpenConfiguration) init];
      v0[46] = v8;
      v0[2] = v0;
      v0[7] = v0 + 54;
      v0[3] = sub_100002698;
      v9 = swift_continuation_init();
      v0[25] = sub_100003A20(&qword_10000C2E8, &qword_100004910);
      v0[18] = _NSConcreteStackBlock;
      v0[19] = 1107296256;
      v0[20] = sub_10000356C;
      v0[21] = &unk_100008540;
      v0[22] = v9;
      [v4 openApplicationWithBundleIdentifier:v7 usingConfiguration:v8 completionHandler:v0 + 18];
      v3 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v3);
  }

  else
  {

    if (qword_10000C180 != -1)
    {
      swift_once();
    }

    v10 = sub_100004390();
    sub_100003D6C(v10, qword_10000C400);
    v11 = sub_100004380();
    v12 = sub_100004470();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to start Guided Access from Control Center because there was no effective app.", v13, 2u);
    }

    v14 = v0[35];

    sub_100004310();
    v15 = v0[40];
    v16 = v0[37];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100002698()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);

    v5 = sub_100002E24;
  }

  else
  {
    v5 = sub_1000027B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000027B0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  v3 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_10000285C;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_10000285C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 344);

    v5 = sub_100002FFC;
  }

  else
  {
    v5 = sub_100002978;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_100002978()
{
  result = [objc_opt_self() server];
  if (result)
  {
    v2 = result;
    v3 = v0[43];

    [v2 toggleGuidedAccess];

    v4 = v0[35];
    sub_100004310();
    v5 = v0[40];
    v6 = v0[37];

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002A38()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 424) = v2;
  if (v2)
  {
    v3 = sub_100002C14;
  }

  else
  {
    v3 = sub_100002B48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002B48()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];

  (*(v5 + 8))(v4, v6);
  v7 = v0[34];

  v8 = v0[35];
  sub_100004310();
  v9 = v0[40];
  v10 = v0[37];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100002C14()
{
  v1 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  swift_willThrow();

  if (qword_10000C180 != -1)
  {
    swift_once();
  }

  v5 = v0[53];
  v6 = sub_100004390();
  sub_100003D6C(v6, qword_10000C400);
  swift_errorRetain();
  v7 = sub_100004380();
  v8 = sub_100004470();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[53];
  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[38];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to open Guided Access settings from Control Center: %@", v14, 0xCu);
    sub_100003E14(v15, &qword_10000C2F0, &qword_100004918);
  }

  else
  {
    v17 = v0[53];
  }

  (*(v12 + 8))(v11, v13);
  v18 = v0[35];
  sub_100004310();
  v19 = v0[40];
  v20 = v0[37];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100002E24()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  swift_willThrow();

  v5 = v0[47];
  if (qword_10000C180 != -1)
  {
    swift_once();
  }

  v6 = sub_100004390();
  sub_100003D6C(v6, qword_10000C400);
  swift_errorRetain();
  v7 = sub_100004380();
  v8 = sub_100004470();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to open application from Control Center: %@", v9, 0xCu);
    sub_100003E14(v10, &qword_10000C2F0, &qword_100004918);
  }

  else
  {
  }

  v12 = v0[35];
  sub_100004310();
  v13 = v0[40];
  v14 = v0[37];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100002FFC()
{
  v1 = v0[49];
  if (qword_10000C180 != -1)
  {
    swift_once();
  }

  v2 = sub_100004390();
  sub_100003D6C(v2, qword_10000C400);
  swift_errorRetain();
  v3 = sub_100004380();
  v4 = sub_100004470();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to open application from Control Center: %@", v5, 0xCu);
    sub_100003E14(v6, &qword_10000C2F0, &qword_100004918);
  }

  else
  {
  }

  v8 = v0[35];
  sub_100004310();
  v9 = v0[40];
  v10 = v0[37];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000031BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100003E74((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003A20(&qword_10000C300, &qword_100004928);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_100004430();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000032D4()
{
  v1 = [objc_opt_self() server];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100003418;
    v3 = swift_continuation_init();
    v0[17] = sub_100003A20(&qword_10000C308, &qword_100004930);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100003638;
    v0[13] = &unk_100008590;
    v0[14] = v3;
    [v2 guidedAccessEffectiveAppBundleIdentifier:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100003418()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000034F8, 0, 0);
}

uint64_t sub_1000034F8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_10000356C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100003E74((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003A20(&qword_10000C300, &qword_100004928);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100003638(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100003E74((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_100004450();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000036B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C178 != -1)
  {
    swift_once();
  }

  v2 = sub_100004340();
  v3 = sub_100003D6C(v2, qword_10000C3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003770(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003808;

  return sub_100001E70(a1);
}

uint64_t sub_100003808()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003918(uint64_t a1)
{
  v2 = sub_1000017B0(&qword_10000C188);

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000039A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A20(&qword_10000C238, &qword_1000048D8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100003A20(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A20(&qword_10000C238, &qword_1000048D8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100003AF8()
{
  sub_100003B64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100003B64()
{
  if (!qword_10000C2A8)
  {
    sub_100004370();
    v0 = sub_100004480();
    if (!v1)
    {
      atomic_store(v0, &qword_10000C2A8);
    }
  }
}

uint64_t sub_100003C00(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003CBC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_100003D08()
{
  v0 = sub_100004390();
  sub_100003EB8(v0, qword_10000C400);
  sub_100003D6C(v0, qword_10000C400);
  result = GAXLogCommon();
  if (result)
  {
    return sub_1000043A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_100003D6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003A20(&qword_10000C238, &qword_1000048D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003E14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003A20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100003E74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_100003EB8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003F4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003C00(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003F94()
{
  result = qword_10000C338;
  if (!qword_10000C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C338);
  }

  return result;
}

uint64_t sub_100003FE8()
{
  sub_100003C00(&qword_10000C318, &qword_100004990);
  sub_100003C00(&qword_10000C310, &qword_100004988);
  sub_100003F4C(&qword_10000C330, &qword_10000C310, &qword_100004988);
  sub_100003F94();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000040E0()
{
  v0 = sub_1000041DC();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for GAXAppWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000415C();
  sub_1000043B0();
  return 0;
}

unint64_t sub_10000415C()
{
  result = qword_10000C340;
  if (!qword_10000C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C340);
  }

  return result;
}

unint64_t sub_1000041DC()
{
  result = qword_10000C348;
  if (!qword_10000C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C348);
  }

  return result;
}