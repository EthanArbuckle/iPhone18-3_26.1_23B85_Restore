uint64_t sub_100233730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1001076D0();
  sub_100107AC8();
  v32 = v30[33];
  v33 = v30[17];
  sub_1002347FC();
  sub_100234710(v34, v35);
  sub_10013B1E8(v33, &unk_1003CCCB8);
  sub_1002349AC();
  sub_100234794();
  sub_100234710(v32, v36);
  v37 = v30[62];
  v38 = v30[46];
  sub_10023477C();
  sub_100234658(v39, v38, v40);
  sub_10023493C();
  _StringGuts.grow(_:)(38);

  sub_1002348D8("Completed checking for messages for ");
  sub_100234A9C();
  static os_log_type_t.default.getter();
  v41 = sub_100234AD0();
  if (os_log_type_enabled(v41, v31))
  {
    sub_100234A10();
    a22 = v37;
    v42 = sub_10008BF58();
    *v37 = 136446466;
    sub_100234814(v42);
    v43._countAndFlagsBits = sub_100123E30();
    String.append(_:)(v43);
    sub_10009F134();
    v44 = sub_100234980();

    *(v37 + 4) = v44;
    sub_100234970();
    sub_100234AE8(v45, v46, v47);
    sub_1000B047C();
    *(v37 + 14) = v32;
    sub_1000EDD4C(&_mh_execute_header, v48, v49, "%{public}s%{public}s");
    sub_1000B0048();
    sub_1000B0080();
    sub_10008BF3C();

    sub_100234764();
    sub_100234710(a23, v50);
    v51 = a24;
  }

  else
  {
    v52 = v30[46];
    v53 = v30[43];

    sub_100234764();
    sub_100234710(v52, v54);
    v51 = v53;
  }

  sub_10013B1E8(v51, &qword_1003CDC70);
  sub_1002347DC();
  sub_100234844();

  sub_100098AA4();
  sub_100107434();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1002339D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38)
{
  sub_1001076D0();
  a37 = v39;
  a38 = v40;
  sub_100107AC8();
  a36 = v38;
  v41 = v38[55];
  v42 = v38[36];
  type metadata accessor for URL();
  sub_10013B618();
  (*(v43 + 8))(v42);
  sub_10023477C();
  v44 = sub_100107174();
  sub_100234658(v44, v45, v46);
  sub_10023493C();
  _StringGuts.grow(_:)(41);
  v47 = a27;
  v38[9] = a26;
  v38[10] = v47;
  v48._object = 0x8000000100320440;
  v48._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v48);
  v49._countAndFlagsBits = sub_100123E30();
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8250;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v38[11] = v41;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v51 = v38[9];
  v52 = v38[10];
  v53 = static os_log_type_t.error.getter();
  v54 = Logger.logObject.getter();
  v55 = os_log_type_enabled(v54, v53);
  v56 = v38[45];
  if (v55)
  {
    a23 = v38[55];
    a24 = v38[45];
    a22 = v51;
    v58 = v38[13];
    v57 = v38[14];
    sub_10008E688();
    v59 = sub_10008BF58();
    sub_10023482C(v59, 4.8752e-34);
    v60._countAndFlagsBits = v58;
    v60._object = v57;
    String.append(_:)(v60);
    sub_10009F134();
    sub_100234980();
    sub_10019DEC4();
    MEMORY[0xD000000000000027] = v57;
    sub_100234970();
    v62 = sub_100080210(a22, v52, v61);

    MEMORY[0xD000000000000031] = v62;
    sub_10013BE10(&_mh_execute_header, v54, v53, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000B0080();
    sub_100081C28();

    sub_100234764();
    v64 = a24;
  }

  else
  {

    sub_100234764();
    v64 = v56;
  }

  sub_100234710(v64, v63);
  v65 = v38[46];
  sub_10023477C();
  sub_100234658(v66, v65, v67);
  sub_10023493C();
  _StringGuts.grow(_:)(38);

  a26 = 0xD000000000000024;
  a27 = 0x8000000100320380;
  sub_100234A9C();
  static os_log_type_t.default.getter();
  v68 = sub_100234AD0();
  v69 = os_log_type_enabled(v68, v52);
  v70 = v38[46];
  v71 = v38[43];
  if (v69)
  {
    a24 = v38[46];
    v72 = v38[14];
    sub_10008E688();
    v73 = sub_10008BF58();
    sub_10023482C(v73, 4.8752e-34);
    a23 = v71;
    sub_100234A9C();
    sub_10009F134();
    sub_100234980();
    sub_10019DEC4();
    MEMORY[0xD000000000000027] = v72;
    sub_100234970();
    sub_100234AE8(v74, v75, v76);
    sub_1000B047C();
    MEMORY[0xD000000000000031] = &a26;
    sub_10013BE10(&_mh_execute_header, v68, v52, "%{public}s%{public}s");
    sub_1000B0048();
    sub_1000B0080();
    sub_10008BF3C();

    sub_100234764();
    sub_100234710(a24, v77);
  }

  else
  {

    sub_100234764();
    sub_100234710(v70, v78);
  }

  sub_10013B1E8(v71, &qword_1003CDC70);
  sub_1002347DC();
  sub_100234844();

  sub_100098AA4();
  sub_100107434();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_100233E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for MessageServerRequest();
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100233EC4, 0, 0);
}

uint64_t sub_100233EC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  *v1 = v5;
  *(v1 + 8) = xmmword_1002F9150;
  *(v1 + 24) = 1;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v6 = *(v2 + 32);
  v7 = qword_1003CBE50;
  v8 = v5;

  if (v7 != -1)
  {
    sub_1001C532C();
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = type metadata accessor for SKLogger();
  sub_10007EDA4(v11, qword_1003F26B0);
  sub_10023477C();
  sub_100234658(v12, v9 + v6, v13);
  v14 = *(v10 + 36);
  *(v9 + v14) = [objc_opt_self() sharedManager];
  swift_task_alloc();
  sub_1000F2F10();
  v0[8] = v15;
  *v15 = v16;
  v15[1] = sub_100234004;
  v17 = v0[2];

  return sub_1000D41E4(v17);
}

uint64_t sub_100234004()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;

  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1002340F4()
{
  sub_10008BE9C();
  v1 = *(v0 + 80);
  sub_1002349D4();

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2(v3, v1 & 1);
}

uint64_t sub_100234168(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 96) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = type metadata accessor for MessageServerRequest();
  *(v7 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100234208, 0, 0);
}

uint64_t sub_100234208()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 96);
  v7 = *(v0 + 24);
  *v1 = v5;
  *(v1 + 8) = v7;
  *(v1 + 24) = v6 & 1;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v8 = *(v2 + 32);
  v9 = qword_1003CBE50;
  v10 = v5;

  if (v9 != -1)
  {
    sub_1001C532C();
  }

  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = type metadata accessor for SKLogger();
  sub_10007EDA4(v13, qword_1003F26B0);
  sub_10023477C();
  sub_100234658(v14, v11 + v8, v15);
  v16 = *(v12 + 36);
  *(v11 + v16) = [objc_opt_self() sharedManager];
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 80) = v17;
  *v17 = v18;
  v17[1] = sub_100234348;
  v19 = *(v0 + 16);

  return sub_1000D41E4(v19);
}

uint64_t sub_100234348()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;
  *(v1 + 97) = v4;

  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100234438()
{
  sub_10008BE9C();
  v1 = *(v0 + 97);
  sub_1002349D4();

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3, v1 & 1);
}

uint64_t sub_1002344A8()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1002344DC()
{
  type metadata accessor for Date();
  sub_10013B618();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10023459C(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_100141DEC(a1, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t sub_100234658(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_1002346B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_100234710(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100234814(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 88) = 91;
  *(v1 - 80) = 0xE100000000000000;
  return result;
}

uint64_t sub_10023482C(uint64_t result, float a2)
{
  *v2 = a2;
  *(v3 - 96) = result;
  *(v3 - 88) = 91;
  *(v3 - 80) = 0xE100000000000000;
  return result;
}

uint64_t sub_100234844()
{
  *(v1 - 104) = *(v0 + 128);
}

uint64_t sub_1002348F0()
{
}

void sub_10023494C()
{
  v1 = v0[31];
  v0[63] = *v1;
  v0[64] = v1[1];
  v0[65] = v1[2];
}

unint64_t sub_100234980()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 80);

  return sub_100080210(v2, v3, (v0 - 96));
}

uint64_t sub_1002349AC()
{

  return sub_100234710(v0, type metadata accessor for ConsultMessageListenerTask);
}

uint64_t sub_1002349D4()
{

  return sub_100234710(v0, type metadata accessor for MessageServerRequest);
}

__n128 sub_1002349FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  v24[1].n128_u64[0] = v26;
  v24[1].n128_u64[1] = v25;
  v24[2].n128_u64[0] = v23;
  result = a23;
  *v24 = a23;
  return result;
}

uint64_t sub_100234A10()
{
  *(v1 - 104) = *(v0 + 344);

  return swift_slowAlloc();
}

uint64_t sub_100234A3C()
{
}

unint64_t sub_100234A74()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2082;

  return sub_100080210(v3, v1, (v4 - 96));
}

void sub_100234A9C()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

uint64_t sub_100234AB4()
{

  return sub_100081D0C(v0, 1, v1);
}

uint64_t sub_100234AD0()
{

  return Logger.logObject.getter();
}

unint64_t sub_100234AE8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100080210(v4, v3, a3);
}

id sub_100234B20(void *a1, uint64_t a2, uint64_t a3)
{

  return sub_1000D8328(a1, a2, a3, v3, v4, v5);
}

uint64_t sub_100234B9C()
{
  swift_unknownObjectWeakDestroy();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100234BCC()
{
  sub_100234B9C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100234C10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100234C4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100234C6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100234CAC()
{
  sub_100080FB4(&qword_1003D2FA8);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1003F2700 = result;
  return result;
}

uint64_t sub_100234D1C()
{
  qword_1003F2708 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

void sub_100234D58(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_10008B5D0(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_10023ED48(v6, a2, isUniquelyReferenced_nonNull_native, sub_100219330, &unk_1003D30A0, &unk_1002FB928, type metadata accessor for AMSBagKey);

    *v2 = v5;
  }

  else
  {
    sub_1000AF25C(a1, &unk_1003CCB70);
    sub_10023E140(v6);

    sub_1000AF25C(v6, &unk_1003CCB70);
  }
}

uint64_t sub_100234E50()
{
  sub_10023FF5C();
  if (*(v1 + 24))
  {
    sub_10008B5D0(v1, v7);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023FE44();
    sub_10023E7C0();

    *v0 = v6;
  }

  else
  {
    sub_10023FEFC(v1);
    v3 = sub_10023FF3C();
    sub_10023E25C(v3, v4, v5);

    return sub_10023FEFC(v7);
  }

  return result;
}

void sub_100234EEC()
{
  sub_1001C5518();
  v2 = sub_100080FB4(&qword_1003CD2A8);
  sub_1000B01B0(v2);
  sub_100089118();
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = sub_100080FB4(&unk_1003D30F0);
  v7 = *(v6 - 8);
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  if (sub_100081D0C(v1, 1, v6) == 1)
  {
    sub_10023FEFC(v1);
    sub_10023E328(v0, v5);
    type metadata accessor for UUID();
    sub_100098B7C();
    (*(v11 + 8))(v0);
    sub_10023FEFC(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v1;
    sub_10023E8DC(v10, v0, isUniquelyReferenced_nonNull_native);
    *v1 = v15;
    type metadata accessor for UUID();
    sub_100098B7C();
    (*(v13 + 8))(v0);
  }

  sub_10021AED8();
}

uint64_t sub_1002350E0()
{
  sub_10023FF5C();
  if (*(v1 + 8))
  {
    sub_10023FEFC(v1);
    v2 = sub_10023FF3C();
    sub_10023E4D0(v2, v3, v4);

    return sub_10023FEFC(v11);
  }

  else
  {
    sub_10023FA84(v1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023FE44();
    sub_10023EAE0(v6, v7, v8, v9);

    *v0 = v10;
  }

  return result;
}

uint64_t sub_100235180()
{
  sub_1001C5518();
  sub_100080FB4(&qword_1003CCCB0);
  swift_allocError();
  *v1 = v0;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1002351F0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return swift_continuation_throwingResume();
}

void sub_100235238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v10);
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v14 = [objc_allocWithZone(AMSMutablePromise) init];
  v15 = type metadata accessor for TaskPriority();
  sub_100081DFC(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  v16[5] = v5;
  v16[6] = a1;
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = v14;
  swift_unknownObjectRetain();
  v17 = a1;

  v18 = v14;
  sub_100165CBC();

  v19 = [objc_opt_self() bagValueWithKey:v17 valueType:5 valuePromise:v18];

  sub_10021AED8();
}

id sub_1002353A8()
{
  String._bridgeToObjectiveC()();
  sub_1000D3ED4();

  v1 = [swift_getObjCClassFromMetadata() contextWithBundleID:v0];

  return v1;
}

void sub_100235424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  sub_1001C3F00();
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100081D0C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1000AF25C(v11, &unk_1003CE2B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v21[0] = 0;
        v21[1] = 0;
        v19 = v21;
        v21[2] = v15;
        v21[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v20[1] = 7;
      v20[2] = v19;
      v20[3] = v18;
      swift_task_create();

      sub_1000AF25C(a3, &unk_1003CE2B0);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000AF25C(a3, &unk_1003CE2B0);
  if (v17 | v15)
  {
    v21[4] = 0;
    v21[5] = 0;
    v21[6] = v15;
    v21[7] = v17;
  }

  swift_task_create();
LABEL_14:
  sub_100093CB8();
}

uint64_t sub_1002356A4()
{

  v1 = String.init<A>(_:)();
  String.append<A>(contentsOf:)();
  return v1;
}

uint64_t sub_100235724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10023FF5C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;

  sub_100235238(v8, &unk_1002FB998, v9, a4);
  v11 = v10;

  return v11;
}

NSString sub_1002357D8()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2710 = result;
  return result;
}

NSString sub_10023580C()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2718 = result;
  return result;
}

NSString sub_1002358AC()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2720 = result;
  return result;
}

NSString sub_100235928()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2728 = result;
  return result;
}

NSString sub_1002359CC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2730 = result;
  return result;
}

NSString sub_100235A70()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2738 = result;
  return result;
}

NSString sub_100235B38()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2740 = result;
  return result;
}

NSString sub_100235BB4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2748 = result;
  return result;
}

NSString sub_100235C7C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2750 = result;
  return result;
}

NSString sub_100235D00()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2758 = result;
  return result;
}

NSString sub_100235DA4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2760 = result;
  return result;
}

NSString sub_100235E6C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2768 = result;
  return result;
}

NSString sub_100235EF0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2770 = result;
  return result;
}

NSString sub_100235FB8()
{
  sub_1000B00A8();
  result = sub_10023FF68();
  qword_1003F2778 = result;
  return result;
}

NSString sub_100236050()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2780 = result;
  return result;
}

NSString sub_1002360CC()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2788 = result;
  return result;
}

NSString sub_10023616C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2790 = result;
  return result;
}

NSString sub_100236210()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2798 = result;
  return result;
}

NSString sub_1002362B0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F27A0 = result;
  return result;
}

NSString sub_100236354()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F27A8 = result;
  return result;
}

NSString sub_1002363F8()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F27B0 = result;
  return result;
}

NSString sub_100236498()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F27B8 = result;
  return result;
}

NSString sub_100236538()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F27C0 = result;
  return result;
}

NSString sub_100236600()
{
  sub_1000B00A8();
  result = sub_10023FF68();
  qword_1003F27C8 = result;
  return result;
}

NSString sub_100236698()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F27D0 = result;
  return result;
}

NSString sub_100236738()
{
  sub_1000B00A8();
  result = sub_10023FFB0();
  qword_1003F27D8 = result;
  return result;
}

NSString sub_1002367D0()
{
  sub_1000B00A8();
  result = sub_10023FF68();
  qword_1003F27E0 = result;
  return result;
}

NSString sub_100236844()
{
  sub_1000B00A8();
  result = sub_10023FFB0();
  qword_1003F27E8 = result;
  return result;
}

NSString sub_100236900()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F27F0 = result;
  return result;
}

NSString sub_1002369A0()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F27F8 = result;
  return result;
}

NSString sub_100236A1C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2800 = result;
  return result;
}

NSString sub_100236AE4()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2808 = result;
  return result;
}

NSString sub_100236B60()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2810 = result;
  return result;
}

NSString sub_100236C30()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2818 = result;
  return result;
}

NSString sub_100236CD0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2820 = result;
  return result;
}

NSString sub_100236D54()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2828 = result;
  return result;
}

NSString sub_100236DF8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2830 = result;
  return result;
}

NSString sub_100236E9C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2838 = result;
  return result;
}

NSString sub_100236F64()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2840 = result;
  return result;
}

NSString sub_100237004()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2848 = result;
  return result;
}

NSString sub_1002370A4()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2850 = result;
  return result;
}

NSString sub_100237144()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2858 = result;
  return result;
}

NSString sub_1002371E4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2860 = result;
  return result;
}

NSString sub_10023728C()
{
  sub_1000B00A8();
  result = sub_10023FFB0();
  qword_1003F2868 = result;
  return result;
}

NSString sub_100237324()
{
  sub_1000B00A8();
  result = sub_10023FFB0();
  qword_1003F2870 = result;
  return result;
}

NSString sub_1002373BC()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2878 = result;
  return result;
}

NSString sub_10023745C()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2880 = result;
  return result;
}

NSString sub_1002374FC()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2888 = result;
  return result;
}

NSString sub_10023759C()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2890 = result;
  return result;
}

NSString sub_100237618()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2898 = result;
  return result;
}

NSString sub_1002376E0()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28A0 = result;
  return result;
}

NSString sub_100237780()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28A8 = result;
  return result;
}

NSString sub_100237820()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28B0 = result;
  return result;
}

NSString sub_1002378C0()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28B8 = result;
  return result;
}

NSString sub_100237960()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F28C0 = result;
  return result;
}

NSString sub_100237A04()
{
  sub_1000B00A8();
  result = sub_10023FF68();
  qword_1003F28C8 = result;
  return result;
}

NSString sub_100237A9C()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28D0 = result;
  return result;
}

NSString sub_100237B18()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F28D8 = result;
  return result;
}

NSString sub_100237BE0()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28E0 = result;
  return result;
}

NSString sub_100237C80()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F28E8 = result;
  return result;
}

NSString sub_100237D20()
{
  sub_10023FEB4();
  result = String._bridgeToObjectiveC()();
  qword_1003F28F0 = result;
  return result;
}

NSString sub_100237DB4()
{
  sub_10023FEB4();
  result = String._bridgeToObjectiveC()();
  qword_1003F28F8 = result;
  return result;
}

NSString sub_100237E28()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2900 = result;
  return result;
}

NSString sub_100237ED4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2908 = result;
  return result;
}

NSString sub_100237F78()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2910 = result;
  return result;
}

NSString sub_10023801C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2918 = result;
  return result;
}

NSString sub_1002380C0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003F2920 = result;
  return result;
}

id sub_100238164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagKey();
  return objc_msgSendSuper2(&v2, "init");
}

NSString sub_100238198()
{
  sub_1000B00A8();
  result = String._bridgeToObjectiveC()();
  qword_1003F2928 = result;
  return result;
}

uint64_t sub_100238230(int *a1)
{
  v3 = type metadata accessor for URLQueryItem();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_10023837C;

  return v6();
}

uint64_t sub_10023837C()
{
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 48) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_1002384C0()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    sub_1002133B4();
    result = sub_100214D14();
    v7 = result;
    v8 = 0;
    v9 = v1 + 64;
    v28 = v3;
    v24 = v5;
    v25 = v2;
    v23 = v1 + 72;
    v26 = v1 + 64;
    v27 = v1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v8;
      v31 = v5;
      v29 = v6;

      URLQueryItem.init(name:value:)();

      v11 = _swiftEmptyArrayStorage[2];
      if (v11 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_1002133B4();
      }

      v12 = v0[4];
      v13 = v0[2];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      result = (*(v28 + 32))(_swiftEmptyArrayStorage + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v11, v12, v13);
      v1 = v27;
      v14 = 1 << *(v27 + 32);
      if (v7 >= v14)
      {
        goto LABEL_26;
      }

      v9 = v26;
      v15 = *(v26 + 8 * v10);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v31)
      {
        goto LABEL_28;
      }

      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v14 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v10 << 6;
        v18 = (v23 + 8 * v10);
        v19 = v10 + 1;
        while (v19 < (v14 + 63) >> 6)
        {
          v21 = *v18++;
          v20 = v21;
          v17 += 64;
          ++v19;
          if (v21)
          {
            result = sub_10013AC84(v7, v31, v29 & 1);
            v14 = __clz(__rbit64(v20)) + v17;
            goto LABEL_19;
          }
        }

        result = sub_10013AC84(v7, v31, v29 & 1);
      }

LABEL_19:
      v6 = 0;
      v8 = v30 + 1;
      v7 = v14;
      v5 = v24;
      if (v30 + 1 == v25)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    v22 = v0[1];

    return v22(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_1002387C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  sub_100080FB4(&unk_1003D0540);
  v8[25] = swift_task_alloc();
  v9 = type metadata accessor for URLQueryItem();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  type metadata accessor for URLError.Code();
  v8[30] = swift_task_alloc();
  v10 = type metadata accessor for URLError();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  sub_100080FB4(&qword_1003CEDE0);
  v8[34] = swift_task_alloc();
  v11 = type metadata accessor for URLComponents();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v8[38] = v12;
  v8[39] = *(v12 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();

  return _swift_task_switch(sub_100238A54, 0, 0);
}

uint64_t sub_100238A54()
{
  v1 = [*(v0 + 160) URLForKey:*(v0 + 168)];
  *(v0 + 336) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100238B8C;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_100080FB4(&unk_1003CEE10);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10023FCCC;
  *(v0 + 104) = &unk_100391798;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100238B8C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

void sub_100238C8C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[18];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (sub_100081D0C(v2, 1, v1) == 1)
  {
    v4 = v0[41];
    v5 = v0[42];
    v6 = v0[38];
    v7 = v0[39];
    v8 = v0[33];
    v9 = v0[31];
    v10 = v0[32];
    sub_1000AF25C(v0[34], &qword_1003CEDE0);
    static URLError.Code.badURL.getter();
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_10023FDCC();
    sub_10023FA3C(v11, v12);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();

    (*(v7 + 8))(v4, v6);
    v13 = sub_10023FF98();
    sub_10023FF80(v13, "finishWithError:");

    sub_10023FD50();

    sub_100098AC4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_100238F44;
  sub_10008E654();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_100238F44()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 360) = v4;
  *(v2 + 368) = v0;

  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100239048()
{
  v1 = v0[45];
  v2 = URLComponents.queryItems.getter();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v0[27];
    v6 = *(v5 + 16);
    v5 += 16;
    v47 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v7 = v0[45] + v47;
    v45 = (v5 - 8);
    v46 = *(v5 + 56);
    v8 = (v5 + 16);
    v9 = v6;
    do
    {
      v11 = v0[28];
      v10 = v0[29];
      v12 = v0[26];
      v13 = sub_100107174();
      v9(v13);
      (v9)(v11, v10, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001D9D58();
        v3 = v17;
      }

      v14 = *(v3 + 2);
      if (v14 >= *(v3 + 3) >> 1)
      {
        sub_1001D9D58();
        v3 = v18;
      }

      v15 = v0[28];
      v16 = v0[26];
      (*v45)(v0[29], v16);
      *(v3 + 2) = v14 + 1;
      (*v8)(&v3[v47 + v14 * v46], v15, v16);
      v7 += v46;
      --v4;
    }

    while (v4);
  }

  v19 = v0[38];
  v20 = v0[36];
  v21 = v0[25];
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v22 = sub_100081D0C(v21, 1, v19);
  v23 = (v20 + 8);
  v24 = v0[42];
  v50 = v0[41];
  if (v22 == 1)
  {
    v25 = v0[39];
    v48 = v0[37];
    v49 = v0[38];
    v26 = v0[35];
    v28 = v0[32];
    v27 = v0[33];
    v29 = v0[31];
    sub_1000AF25C(v0[25], &unk_1003D0540);
    static URLError.Code.badURL.getter();
    sub_1000B61D4(_swiftEmptyArrayStorage);
    sub_10023FDCC();
    sub_10023FA3C(v30, v31);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v28 + 8))(v27, v29);
    swift_willThrow();

    (*v23)(v48, v26);
    (*(v25 + 8))(v50, v49);
    v32 = sub_10023FF98();
    sub_10023FF80(v32, "finishWithError:");
  }

  else
  {
    v34 = v0[39];
    v33 = v0[40];
    v36 = v0[37];
    v35 = v0[38];
    v37 = v0[35];
    v38 = v0[24];
    (*(v34 + 32))(v33, v0[25], v35);
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    [v38 finishWithResult:v40];

    v42 = *(v34 + 8);
    v42(v33, v35);
    (*v23)(v36, v37);
    v42(v50, v35);
  }

  sub_10023FD50();

  sub_100098AC4();

  return v43();
}

uint64_t sub_10023942C()
{
  v1 = *(v0 + 336);
  swift_willThrow();

  v2 = sub_10023FF98();
  sub_10023FF80(v2, "finishWithError:");

  sub_10023FD50();

  sub_100098AC4();

  return v3();
}

uint64_t sub_100239514()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);

  (*(v2 + 8))(v1, v3);
  v4 = sub_100107174();
  v5(v4);
  v6 = sub_10023FF98();
  sub_10023FF80(v6, "finishWithError:");

  sub_10023FD50();

  sub_100098AC4();

  return v7();
}

uint64_t *sub_10023962C(uint64_t a1, void *a2, char a3, void *a4)
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v8 = a4;
    return sub_100235180();
  }

  else if (a2)
  {
    return sub_1002351F0(*result, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002396A0()
{
  v3 = &type metadata for StoreKitFeatureFlag;
  v4 = sub_1000B7380();
  v2[0] = 0;
  v0 = isFeatureEnabled(_:)();
  sub_100080F0C(v2);
  if (v0)
  {
    return 0x74694B65726F7453;
  }

  else
  {
    return 0x65726F7473707061;
  }
}

uint64_t sub_100239728(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1003CC0D0 == -1)
      {
        goto LABEL_8;
      }
    }

    else if (qword_1003CC0D8 == -1)
    {
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  if (qword_1003CC0C8 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:

  return swift_unknownObjectRetain();
}

uint64_t sub_100239A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) expirationDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return sub_100081DFC(a1, v5, 1, v6);
}

id sub_100239CA4(uint64_t a1, char a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for Bag());
  result = sub_100239EEC(a2);
  *a3 = result;
  return result;
}

uint64_t sub_100239D08(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

uint64_t sub_100239DC0(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  *a3 = a1;

  return swift_unknownObjectRelease();
}

void sub_100239E58()
{
  sub_1001C5518();
  v0 = objc_allocWithZone(type metadata accessor for Bag.XcodeBag());
  sub_1000D3ED4();

  v1 = sub_100107174();
  sub_10023BE00(v1, v2);
}

id sub_100239EEC(char a1)
{
  v2 = v1;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = [objc_opt_self() currentProcess];
  v8 = **(&off_1003917E8 + a1);
  [v7 setAccountMediaType:v8];

  sub_10008E5A4(0, &qword_1003D30C8);
  v9 = type metadata accessor for Bag();
  v10 = sub_1002396A0();
  v12 = v11;
  v13 = v7;
  v14 = sub_10023A0EC(v10, v12, 49, 0xE100000000000000, v7);
  *&v2[OBJC_IVAR____TtC9storekitd3Bag_bag] = v14;
  v15 = type metadata accessor for TaskPriority();
  sub_100081DFC(v6, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = v14;
  v17 = v14;
  sub_100235424(0, 0, v6, &unk_1002FB940, v16);
  v19 = v18;

  *&v2[OBJC_IVAR____TtC9storekitd3Bag_accountListenerTask] = v19;
  v21.receiver = v2;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_10023A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [swift_getObjCClassFromMetadata() bagForProfile:v6 profileVersion:v7 processInfo:a5];

  return v8;
}

uint64_t sub_10023A18C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 240) = a5;
  *(v5 + 234) = a4;
  v6 = sub_100080FB4(&qword_1003D30D0);
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  v7 = sub_100080FB4(&qword_1003D30D8);
  *(v5 + 272) = v7;
  *(v5 + 280) = *(v7 - 8);
  *(v5 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10023A2C4, 0, 0);
}

uint64_t sub_10023A2C4()
{
  if (qword_1003CBC38 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  sub_1000ADD80();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v5 = sub_10023FDE4(v4);
  *v5 = v6;
  sub_10023FCDC(v5);
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)(v7);
}

uint64_t sub_10023A3C4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10023A4AC()
{
  v40 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  *(v0 + 304) = v2;
  *(v0 + 312) = v3;
  if (!v3)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    sub_100098AC4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 234);
  if (v5 == v1)
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
      LOBYTE(v5) = *(v0 + 234);
    }

    v6 = v0 + 224;
    v7 = type metadata accessor for SKLogger();
    sub_10007EDA4(v7, qword_1003F26C8);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v8 = *(v0 + 200);
    *(v0 + 176) = *(v0 + 192);
    *(v0 + 184) = v8;
    v9._countAndFlagsBits = 0x6164696C61766E49;
    v9._object = 0xED000020676E6974;
    String.append(_:)(v9);
    *(v0 + 233) = v5;
    _print_unlocked<A, B>(_:_:)();
    v10._object = 0x8000000100321320;
    v10._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v10);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = static os_log_type_t.default.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      v38 = v12;
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v15 = 136446466;
      *(v0 + 208) = 91;
      *(v0 + 216) = 0xE100000000000000;
      v16._countAndFlagsBits = v4;
      v16._object = v3;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(*(v0 + 208), *(v0 + 216), &v39);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v19 = sub_100080210(v38, v11, &v39);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      v6 = v0 + 224;
    }

    else
    {
    }

    if (qword_1003CC050 != -1)
    {
      sub_10022E530();
    }

    v27 = [*(v0 + 240) stringForKey:{qword_1003F28B8, v38}];
    *(v0 + 320) = v27;
    *(v0 + 16) = v0;
    *(v0 + 56) = v6;
    *(v0 + 24) = sub_10023A930;
    v28 = swift_continuation_init();
    *(v0 + 136) = sub_100080FB4(&unk_1003D30E0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10023FCCC;
    *(v0 + 104) = &unk_100391720;
    *(v0 + 112) = v28;
    [v27 valueWithCompletion:v0 + 80];
    sub_10008E654();

    return _swift_continuation_await(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  else
  {

    v22 = swift_task_alloc();
    v23 = sub_10023FDE4(v22);
    *v23 = v24;
    sub_10023FCDC();
    sub_100098AD0();
    sub_10008E654();

    return AsyncStream.Iterator.next(isolation:)(v25);
  }
}

uint64_t sub_10023A930()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10023AA30()
{
  sub_10008BE9C();
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  v3 = swift_task_alloc();
  v4 = sub_10023FDE4(v3);
  *v4 = v5;
  sub_10023FCDC();
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)(v6);
}

uint64_t sub_10023AAC4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  swift_willThrow();

  v3 = swift_task_alloc();
  v4 = sub_10023FDE4(v3);
  *v4 = v5;
  sub_10023FCDC();
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)(v6);
}

id sub_10023AB78()
{

  sub_100080FB4(&qword_1003CCCB0);
  Task.cancel()();

  v2.receiver = v0;
  v2.super_class = type metadata accessor for Bag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10023AC78(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) arrayForKey:a1];

  return v2;
}

id sub_10023AD1C(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) BOOLForKey:a1];

  return v2;
}

void sub_10023ADC0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9storekitd3Bag_bag);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10019FE54;
  v5[3] = &unk_1003916D0;
  v4 = _Block_copy(v5);

  [v3 createSnapshotWithCompletion:v4];
  _Block_release(v4);
}

void sub_10023AF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10023AF7C(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) doubleForKey:a1];

  return v2;
}

id sub_10023B020(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) integerForKey:a1];

  return v2;
}

id sub_10023B0C4(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) stringForKey:a1];

  return v2;
}

id sub_10023B168(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) URLForKey:a1];

  return v2;
}

id sub_10023B20C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9storekitd3Bag_bag);
  if (([v5 respondsToSelector:"URLForKey:account:"] & 1) == 0 || (result = objc_msgSend(v5, "URLForKey:account:", a1, a2)) == 0)
  {
    v7 = [v5 URLForKey:a1];

    return v7;
  }

  return result;
}

id sub_10023B32C(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9storekitd3Bag_bag) dictionaryForKey:a1];

  return v2;
}

uint64_t type metadata accessor for Bag()
{
  return objc_opt_self();
}

{
  return type metadata accessor for Bag();
}

void *sub_10023B434()
{
  sub_100080FB4(&unk_1003D30B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB8D0;
  if (qword_1003CBED0 != -1)
  {
    swift_once();
  }

  v1 = qword_1003F2738;
  *(inited + 32) = qword_1003F2738;
  *(inited + 40) = 0xD000000000000027;
  *(inited + 48) = 0x8000000100320F90;
  v2 = qword_1003CBEF0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1003F2758;
  *(inited + 56) = qword_1003F2758;
  *(inited + 64) = 0xD00000000000002DLL;
  *(inited + 72) = 0x8000000100320FC0;
  v5 = qword_1003CBF90;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1003F27F8;
  *(inited + 80) = qword_1003F27F8;
  *(inited + 88) = 0xD000000000000031;
  *(inited + 96) = 0x8000000100320FF0;
  v8 = qword_1003CBFA8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1003F2810;
  *(inited + 104) = qword_1003F2810;
  *(inited + 112) = 0xD000000000000021;
  *(inited + 120) = 0x8000000100321030;
  v11 = qword_1003CBFB0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1003F2818;
  *(inited + 128) = qword_1003F2818;
  *(inited + 136) = 0xD00000000000001CLL;
  *(inited + 144) = 0x8000000100321060;
  v14 = qword_1003CBFD8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1003F2840;
  *(inited + 152) = qword_1003F2840;
  strcpy((inited + 160), "/subscriptions");
  *(inited + 175) = -18;
  v17 = qword_1003CC000;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1003F2868;
  *(inited + 176) = qword_1003F2868;
  *(inited + 184) = 0xD000000000000038;
  *(inited + 192) = 0x8000000100321080;
  v20 = qword_1003CC008;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1003F2870;
  *(inited + 200) = qword_1003F2870;
  *(inited + 208) = 0xD000000000000035;
  *(inited + 216) = 0x80000001003210C0;
  v23 = qword_1003CC020;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1003F2888;
  *(inited + 224) = qword_1003F2888;
  *(inited + 232) = 0xD00000000000002ELL;
  *(inited + 240) = 0x8000000100321100;
  v26 = qword_1003CC038;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1003F28A0;
  *(inited + 248) = qword_1003F28A0;
  *(inited + 256) = 0x6D65656465722FLL;
  *(inited + 264) = 0xE700000000000000;
  v29 = qword_1003CC040;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_1003F28A8;
  *(inited + 272) = qword_1003F28A8;
  *(inited + 280) = 0x2F646E756665722FLL;
  *(inited + 288) = 0xEF74736575716572;
  v32 = qword_1003CC048;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_1003F28B0;
  *(inited + 296) = qword_1003F28B0;
  *(inited + 304) = 0xD000000000000038;
  *(inited + 312) = 0x8000000100321130;
  v35 = qword_1003CC068;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = qword_1003F28D0;
  *(inited + 320) = qword_1003F28D0;
  *(inited + 328) = 0xD000000000000015;
  *(inited + 336) = 0x8000000100321170;
  v38 = qword_1003CC088;
  v39 = v37;
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = qword_1003F28F0;
  *(inited + 344) = qword_1003F28F0;
  *(inited + 352) = 0xD000000000000012;
  *(inited + 360) = 0x8000000100321190;
  v41 = qword_1003CC090;
  v42 = v40;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_1003F28F8;
  *(inited + 368) = qword_1003F28F8;
  *(inited + 376) = 0xD000000000000012;
  *(inited + 384) = 0x80000001003211B0;
  type metadata accessor for AMSBagKey(0);
  sub_10023FA3C(&qword_1003CC178, type metadata accessor for AMSBagKey);
  v44 = v43;
  result = Dictionary.init(dictionaryLiteral:)();
  off_1003D2FB0 = result;
  return result;
}

uint64_t sub_10023BCDC()
{
  swift_beginAccess();
  sub_10023FAF4();
  return swift_endAccess();
}

void sub_10023BE00(void *a1, void *a2)
{
  v121[2] = a2;
  v121[1] = a1;
  v3 = sub_100080FB4(&qword_1003CD9A0);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  v6 = v121 - v5;
  v7 = OBJC_IVAR____TtCC9storekitd3BagP33_548B24E65CA9FE1CAECE2177332C57EA8XcodeBag_expirationDate;
  v8 = type metadata accessor for Date();
  sub_100081DFC(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtCC9storekitd3BagP33_548B24E65CA9FE1CAECE2177332C57EA8XcodeBag_isExpired] = 0;
  static Date.distantFuture.getter();
  v122 = v8;
  sub_100081DFC(v6, 0, 1, v8);
  swift_beginAccess();
  v125 = v2;
  sub_10023FAF4();
  swift_endAccess();
  v9 = [objc_opt_self() sharedInstance];
  v133._countAndFlagsBits = 0x736F686C61636F6CLL;
  v133._object = 0xEA00000000003A74;
  v124 = v9;
  *&v131[0] = [v9 activePort];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = v133;
  v133._countAndFlagsBits = 0x2F2F3A70747468;
  v133._object = 0xE700000000000000;
  v123 = v11;
  String.append(_:)(v11);
  object = v133._object;
  countAndFlagsBits = v133._countAndFlagsBits;
  if (qword_1003CC0E0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v12 = off_1003D2FB0;
    type metadata accessor for AMSBagKey(0);
    v14 = v13;
    sub_10023FA3C(&qword_1003CC178, type metadata accessor for AMSBagKey);

    v121[0] = v14;
    v15 = Dictionary.init(dictionaryLiteral:)();
    v16 = v12 + 64;
    v17 = 1 << v12[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v12 + 8);
    v20 = (v17 + 63) >> 6;
    v127 = v12;

    v21 = 0;
    *&v126 = v12 + 64;
    if (!v19)
    {
      break;
    }

    while (1)
    {
      v22 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v19)) | (v22 << 6);
      v24 = *(v127[6] + 8 * v23);
      v25 = (v127[7] + 16 * v23);
      v26 = v25[1];
      *&v131[0] = *v25;
      *(&v131[0] + 1) = v26;
      v132._countAndFlagsBits = countAndFlagsBits;
      v132._object = object;
      v27 = v24;

      v132._countAndFlagsBits = String.init<A>(_:)();
      v132._object = v28;
      String.append<A>(contentsOf:)();
      v135 = &type metadata for String;
      v133 = v132;
      sub_10008B5D0(&v133, v131);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132._countAndFlagsBits = v15;
      v30 = sub_100219330(v27);
      v32 = v15[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        break;
      }

      v35 = v30;
      v36 = v31;
      sub_100080FB4(&unk_1003D30A0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
      {
        v37 = sub_100219330(v27);
        if ((v36 & 1) != (v38 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v35 = v37;
      }

      v19 &= v19 - 1;
      v15 = v132._countAndFlagsBits;
      if (v36)
      {
        v39 = (*(v132._countAndFlagsBits + 56) + 32 * v35);
        sub_100080F0C(v39);
        sub_10008B5D0(v131, v39);
      }

      else
      {
        *(v132._countAndFlagsBits + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v15[6] + 8 * v35) = v27;
        sub_10008B5D0(v131, (v15[7] + 32 * v35));

        v40 = v15[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_84;
        }

        v15[2] = v42;
      }

      v21 = v22;
      v16 = v126;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  while (1)
  {
LABEL_6:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *&v16[8 * v22];
    ++v21;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  *&v125[OBJC_IVAR____TtCC9storekitd3BagP33_548B24E65CA9FE1CAECE2177332C57EA8XcodeBag_bag] = v15;
  if (qword_1003CBEB0 != -1)
  {
    swift_once();
  }

  v43 = qword_1003F2718;
  v44 = sub_100080FB4(&unk_1003D0530);
  v135 = v44;
  v133._countAndFlagsBits = &off_100383490;
  sub_10023FD78();
  sub_100234D58(&v133, v43);
  swift_endAccess();
  if (qword_1003CBEC8 != -1)
  {
    swift_once();
  }

  v45 = qword_1003F2730;
  v135 = &type metadata for Int;
  v133._countAndFlagsBits = 1;
  sub_10023FD78();
  sub_100234D58(&v133, v45);
  swift_endAccess();
  if (qword_1003CBEE0 != -1)
  {
    swift_once();
  }

  v46 = qword_1003F2748;
  sub_100080FB4(&qword_1003D30B0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002ED2C0;
  *(v47 + 32) = 0x702D6C72752D3276;
  *(v47 + 40) = 0xEF736E7265747461;
  *(v47 + 48) = &off_1003834F0;
  v127 = v44;
  *(v47 + 72) = v44;
  strcpy((v47 + 80), "v2-mapped-urls");
  *(v47 + 95) = -18;
  sub_100080FB4(&unk_1003CEE30);
  v48 = swift_allocObject();
  v126 = xmmword_1002ED020;
  *(v48 + 16) = xmmword_1002ED020;
  strcpy((v48 + 32), "/subscriptions");
  *(v48 + 47) = -18;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  v121[0] = v46;
  _StringGuts.grow(_:)(16);
  v49 = object;

  v50 = countAndFlagsBits;
  v133._countAndFlagsBits = countAndFlagsBits;
  v133._object = v49;
  v51._countAndFlagsBits = 0x697263736275732FLL;
  v51._object = 0xEE00736E6F697470;
  String.append(_:)(v51);
  v52 = v133._object;
  *(v48 + 48) = v133._countAndFlagsBits;
  *(v48 + 56) = v52;
  *(v48 + 64) = 0xD00000000000001ALL;
  *(v48 + 72) = 0x8000000100320DC0;
  v133._countAndFlagsBits = 0;
  v133._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v133._countAndFlagsBits = v50;
  v133._object = v49;
  v53._countAndFlagsBits = 0xD00000000000001ALL;
  v53._object = 0x8000000100320DC0;
  String.append(_:)(v53);
  v54 = v133._object;
  *(v48 + 80) = v133._countAndFlagsBits;
  *(v48 + 88) = v54;
  v55 = Dictionary.init(dictionaryLiteral:)();
  v56 = sub_100080FB4(&unk_1003D1CC0);
  *(v47 + 96) = v55;
  *(v47 + 120) = v56;
  *(v47 + 128) = 0xD000000000000014;
  *(v47 + 136) = 0x8000000100320DE0;
  *(v47 + 168) = sub_100080FB4(&qword_1003D28E0);
  *(v47 + 144) = _swiftEmptyArrayStorage;
  v57 = Dictionary.init(dictionaryLiteral:)();
  v135 = sub_100080FB4(&qword_1003CC200);
  v133._countAndFlagsBits = v57;
  sub_10023FD78();
  sub_100234D58(&v133, v121[0]);
  swift_endAccess();
  sub_10008E5A4(0, &qword_1003CD2E8);
  v58 = sub_1002353A8();
  v59 = [v124 getStorefrontWithContext:v58];
  if (v59)
  {
    v60 = v59;
    v61 = v58;
    type metadata accessor for OctaneStorefrontKey(0);
    sub_10023FA3C(&qword_1003CC3C8, type metadata accessor for OctaneStorefrontKey);
    v62 = &type metadata for String;
    sub_100107174();
    v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1003CBEE8 != -1)
    {
      sub_10023FDF4();
    }

    v64 = qword_1003F2750;
    v65 = sub_1000D3ED4();
    v66 = sub_1001DA9EC(v65, v63);
    if (v67)
    {
      v68 = &type metadata for String;
    }

    else
    {
      v66 = sub_10023FED0();
    }

    v133._countAndFlagsBits = v66;
    v133._object = v67;
    v135 = v68;
    sub_10023FD78();
    sub_100234D58(&v133, &unk_1003F2000);
    swift_endAccess();
    if (qword_1003CBF00 != -1)
    {
      sub_10022E4B4();
    }

    v78 = qword_1003F2768;
    v79 = sub_1000D3ED4();
    v80 = sub_1001DA9EC(v79, v63);
    v74 = v123._countAndFlagsBits;
    if (v81)
    {
      v82 = &type metadata for String;
    }

    else
    {
      v80 = sub_10023FED0();
    }

    v70 = v125;
    v133._countAndFlagsBits = v80;
    v133._object = v81;
    v135 = v82;
    sub_10023FD18();
    v83 = sub_10023FDB0();
    sub_100234D58(v83, &unk_1003F2000);
    swift_endAccess();
    if (qword_1003CBFB8 != -1)
    {
      sub_10022E510();
    }

    v84 = qword_1003F2820;
    v85 = [v124 getStringValueForIdentifier:4 withContext:v61];
    if (v85)
    {
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v133._countAndFlagsBits = v86;
      v133._object = v88;
      *&v131[0] = 95;
      *(&v131[0] + 1) = 0xE100000000000000;
      v132._countAndFlagsBits = 45;
      v132._object = 0xE100000000000000;
      sub_100106050();
      v85 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v90 = v89;
    }

    else
    {
      v90 = 0;
      v62 = 0;
      v134 = 0;
    }

    v133._countAndFlagsBits = v85;
    v133._object = v90;
    v135 = v62;
    sub_10023FD18();
    v91 = sub_10023FDB0();
    sub_100234D58(v91, v84);
    swift_endAccess();
    if (qword_1003CC050 != -1)
    {
      sub_10022E530();
    }

    v92 = qword_1003F28B8;
    v93 = sub_1000D3ED4();
    v94 = sub_1001DA9EC(v93, v63);
    v58 = v61;
    if (v95)
    {
      v96 = &type metadata for String;
    }

    else
    {
      v94 = sub_10023FED0();
    }

    v133._countAndFlagsBits = v94;
    v133._object = v95;
    v135 = v96;
    sub_10023FD18();
    v97 = sub_10023FDB0();
    sub_100234D58(v97, v84);
    swift_endAccess();
    if (qword_1003CC058 != -1)
    {
      sub_10023FE24();
    }

    v98 = qword_1003F28C0;
    v99 = sub_1000D3ED4();
    v100 = sub_1001DA9EC(v99, v63);
    v102 = v101;

    if (v102)
    {
      v103 = &type metadata for String;
    }

    else
    {
      v100 = 0;
      v103 = 0;
      v134 = 0;
    }

    v71 = v122;
    v133._countAndFlagsBits = v100;
    v133._object = v102;
    v135 = v103;
    sub_10023FD18();
    v104 = sub_10023FDB0();
    sub_100234D58(v104, v84);
    swift_endAccess();
    v73 = v123._object;
  }

  else
  {
    if (qword_1003CBEE8 != -1)
    {
      sub_10023FDF4();
    }

    v69 = qword_1003F2750;
    v135 = &type metadata for String;
    v133._countAndFlagsBits = 21333;
    v133._object = 0xE200000000000000;
    v70 = v125;
    sub_10023FD18();
    sub_10023FD94(v69);
    swift_endAccess();
    v71 = v122;
    if (qword_1003CBF00 != -1)
    {
      sub_10022E4B4();
    }

    v72 = qword_1003F2768;
    v135 = &type metadata for String;
    v133._countAndFlagsBits = 4477781;
    v133._object = 0xE300000000000000;
    sub_10023FD18();
    sub_10023FD94(v72);
    swift_endAccess();
    v73 = v123._object;
    v74 = v123._countAndFlagsBits;
    if (qword_1003CBFB8 != -1)
    {
      sub_10022E510();
    }

    v75 = qword_1003F2820;
    v135 = &type metadata for String;
    v133._countAndFlagsBits = 0x53552D6E65;
    v133._object = 0xE500000000000000;
    sub_10023FD18();
    sub_10023FD94(v75);
    swift_endAccess();
    if (qword_1003CC050 != -1)
    {
      sub_10022E530();
    }

    v76 = qword_1003F28B8;
    v135 = &type metadata for String;
    v133._countAndFlagsBits = 4281173;
    v133._object = 0xE300000000000000;
    sub_10023FD18();
    sub_10023FD94(v76);
    swift_endAccess();
    if (qword_1003CC058 != -1)
    {
      sub_10023FE24();
    }

    v77 = qword_1003F28C0;
    v135 = &type metadata for String;
    v133._countAndFlagsBits = 0x313434333431;
    v133._object = 0xE600000000000000;
    sub_10023FD18();
    sub_10023FD94(v77);
    swift_endAccess();
  }

  if (qword_1003CBFC0 != -1)
  {
    swift_once();
  }

  v105 = qword_1003F2828;
  v135 = &type metadata for Double;
  v133._countAndFlagsBits = 0x3FF0000000000000;
  sub_10023FD18();
  sub_10023FD94(v105);
  swift_endAccess();
  if (qword_1003CBFE0 != -1)
  {
    swift_once();
  }

  v106 = qword_1003F2848;
  v135 = &type metadata for String;
  v133._countAndFlagsBits = v74;
  v133._object = v73;
  sub_10023FD18();
  v107 = v106;

  v108 = sub_10023FDB0();
  sub_100234D58(v108, v107);
  swift_endAccess();
  if (qword_1003CBFE8 != -1)
  {
    swift_once();
  }

  v109 = qword_1003F2850;
  v135 = &type metadata for String;
  v133._countAndFlagsBits = v74;
  v133._object = v73;
  sub_10023FD18();

  sub_10023FD94(v109);
  swift_endAccess();
  if (qword_1003CC018 != -1)
  {
    swift_once();
  }

  v110 = qword_1003F2880;
  v135 = &type metadata for Int;
  v133._countAndFlagsBits = 25;
  sub_10023FD18();
  sub_10023FD94(v110);
  swift_endAccess();
  if (qword_1003CC060 != -1)
  {
    swift_once();
  }

  v111 = qword_1003F28C8;
  v135 = &type metadata for Int;
  v133._countAndFlagsBits = 2;
  sub_10023FD18();
  sub_10023FD94(v111);
  swift_endAccess();
  if (qword_1003CC070 != -1)
  {
    swift_once();
  }

  v112 = qword_1003F28D8;
  v135 = v71;
  sub_10009E720(&v133._countAndFlagsBits);
  v113 = v112;
  Date.init()();
  sub_10023FD18();
  v114 = sub_10023FDB0();
  sub_100234D58(v114, v113);
  swift_endAccess();
  if (qword_1003CC078 != -1)
  {
    swift_once();
  }

  v115 = qword_1003F28E0;
  v135 = &type metadata for Int;
  v133._countAndFlagsBits = 1;
  sub_10023FD18();
  sub_10023FD94(v115);
  swift_endAccess();
  v116 = v123._object;
  if (qword_1003CC080 != -1)
  {
    swift_once();
  }

  v117 = qword_1003F28E8;
  v135 = &type metadata for Int;
  v133._countAndFlagsBits = 50;
  sub_10023FD18();
  sub_10023FD94(v117);
  swift_endAccess();
  if (qword_1003CC098 != -1)
  {
    swift_once();
  }

  v118 = qword_1003F2900;
  sub_100080FB4(&unk_1003D2720);
  v119 = swift_allocObject();
  *(v119 + 16) = v126;
  *(v119 + 32) = 0x736F686C61636F6CLL;
  *(v119 + 40) = 0xE900000000000074;
  *(v119 + 48) = v74;
  *(v119 + 56) = v116;
  v135 = v127;
  v133._countAndFlagsBits = v119;
  sub_10023FD18();
  sub_10023FD94(v118);
  swift_endAccess();

  v120 = type metadata accessor for Bag.XcodeBag();
  v130.receiver = v70;
  v130.super_class = v120;
  objc_msgSendSuper2(&v130, "init");
  sub_100093CB8();
}

void sub_10023D090(uint64_t a1, const void *a2)
{
  v58 = a2;
  v52 = type metadata accessor for SKLogger();
  __chkstk_darwin(v52);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Date();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  v5 = OBJC_IVAR____TtCC9storekitd3BagP33_548B24E65CA9FE1CAECE2177332C57EA8XcodeBag_bag;
  swift_beginAccess();
  v6 = *(a1 + v5);

  v7 = Dictionary.init(dictionaryLiteral:)();
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v61 = v6;

  v13 = 0;
  v14 = &unk_1002FB920;
  v60 = v6 + 64;
  v59 = v12;
  if (v11)
  {
    while (1)
    {
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v13 << 6);
      v17 = *(*(v61 + 48) + 8 * v16);
      sub_100080F58(*(v61 + 56) + 32 * v16, &v69);
      v68 = v17;
      sub_1001C3F00();
      v6 = v66;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v21 = v17;

      v22 = v14;
      sub_1001C3F00();

      sub_10008B5D0(&v65, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v7;
      v24 = sub_1000B6328(v18, v20);
      v26 = v7[2];
      v27 = (v25 & 1) == 0;
      v14 = (v26 + v27);
      if (__OFADD__(v26, v27))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v28 = v24;
      v6 = v25;
      sub_100080FB4(&qword_1003CCA88);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
      {
        v29 = sub_1000B6328(v18, v20);
        if ((v6 & 1) != (v30 & 1))
        {
          _Block_release(v58);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v28 = v29;
      }

      v14 = v22;
      if (v6)
      {

        v7 = v62;
        v6 = v62[7] + 32 * v28;
        sub_100080F0C(v6);
        sub_10008B5D0(v63, v6);
        sub_1000AF25C(&v68, &unk_1003D3090);
      }

      else
      {
        v7 = v62;
        v62[(v28 >> 6) + 8] |= 1 << v28;
        v31 = (v7[6] + 16 * v28);
        *v31 = v18;
        v31[1] = v20;
        sub_10008B5D0(v63, (v7[7] + 32 * v28));
        sub_1000AF25C(&v68, &unk_1003D3090);
        v32 = v7[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_27;
        }

        v7[2] = v34;
      }

      v11 &= v11 - 1;
      sub_100080F0C(&v67);
      v8 = v60;
      v12 = v59;
      if (!v11)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_8;
    }
  }

  v14 = v57;
  sub_10023F714(v7, v57);

  v35 = v54;
  static Date.distantFuture.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v55 + 8))(v35, v56);
  [v14 setExpirationDate:{isa, v52}];

  v37 = [objc_opt_self() currentProcess];
  [v14 setProcessInfo:v37];

  type metadata accessor for Bag();
  v38 = sub_1002396A0();
  sub_1000AF110(v38, v39, v14, &selRef_setProfile_);
  sub_1000AF110(49, 0xE100000000000000, v14, &selRef_setProfileVersion_);
  v68 = 0;
  v6 = [v14 buildWithError:&v68];
  if (v6)
  {
    v40 = v68;
    v41 = 0;
    goto LABEL_24;
  }

  v42 = v68;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1003CBE58 != -1)
  {
LABEL_28:
    swift_once();
  }

  v43 = sub_10007EDA4(v52, qword_1003F26C8);
  v44 = v53;
  sub_10007EDDC(v43, v53);
  swift_errorRetain();
  v45 = Logger.logObject.getter();
  v46 = type metadata accessor for Logger();
  (*(*(v46 - 8) + 8))(v44, v46);
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = _convertErrorToNSError(_:)();
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&_mh_execute_header, v45, v47, "Failed to create snapshot bag: %{public}@", v48, 0xCu);
    sub_1000AF25C(v49, &qword_1003D18D0);
  }

  v41 = _convertErrorToNSError(_:)();
LABEL_24:
  v51 = v58;
  (*(v58 + 2))(v58, v6, v41);

  _Block_release(v51);
}

id sub_10023DA74(uint64_t a1, uint64_t a2)
{
  v5 = sub_100080FB4(&unk_1003D0540);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = OBJC_IVAR____TtCC9storekitd3BagP33_548B24E65CA9FE1CAECE2177332C57EA8XcodeBag_bag;
  swift_beginAccess();
  v9 = *(v2 + v8);

  sub_100219334(a1, v9);

  if (v27)
  {
    sub_10008B5D0(&v26, v28);
    switch(a2)
    {
      case 0:
        sub_100080F58(v28, &v26);
        v10 = &qword_1003CE638;
        goto LABEL_11;
      case 1:
      case 2:
      case 3:
        sub_100080F58(v28, &v26);
        v10 = &qword_1003D0520;
        goto LABEL_11;
      case 4:
        sub_100080F58(v28, &v26);
        v10 = &unk_1003D3078;
        goto LABEL_11;
      case 5:
        sub_100080F58(v28, &v26);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        URL.init(string:)();

        v16 = type metadata accessor for URL();
        if (sub_100081D0C(v7, 1, v16) == 1)
        {
          goto LABEL_14;
        }

        URL._bridgeToObjectiveC()(v17);
        v19 = v18;
        (*(*(v16 - 8) + 8))(v7, v16);
        goto LABEL_13;
      case 6:
        sub_100080F58(v28, &v26);
        v10 = &unk_1003D0550;
LABEL_11:
        sub_10008E5A4(0, v10);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v19 = v25[1];
LABEL_13:
        v20 = v19;
        v21 = [objc_opt_self() promiseWithResult:v20];
        v15 = v20;
        break;
      default:
LABEL_14:
        v22 = AMSError();
        v20 = _convertErrorToNSError(_:)();
        v21 = [objc_opt_self() promiseWithError:v20];

        v15 = 0;
        break;
    }

    v14 = v21;
    sub_100080F0C(v28);
  }

  else
  {
    sub_1000AF25C(&v26, &unk_1003CCB70);
    v11 = AMSError();
    v12 = _convertErrorToNSError(_:)();
    v13 = [objc_opt_self() promiseWithError:v12];

    v14 = v13;
    v15 = 0;
  }

  v23 = [objc_opt_self() bagValueWithKey:a1 valueType:a2 valuePromise:v14];

  return v23;
}

id sub_10023DEC8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for Bag.XcodeBag()
{
  result = qword_1003D3058;
  if (!qword_1003D3058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10023DFA4()
{
  sub_10023E04C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10023E04C()
{
  if (!qword_1003D3068)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D3068);
    }
  }
}

void sub_10023E0CC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

double sub_10023E140@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_100219330();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = *(*v1 + 24);
    sub_100080FB4(&unk_1003D30A0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);

    sub_10008B5D0((*(v9 + 56) + 32 * v5), a1);
    type metadata accessor for AMSBagKey(0);
    sub_10023FA3C(&qword_1003CC178, type metadata accessor for AMSBagKey);
    _NativeDictionary._delete(at:)();
    *v1 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_10023E25C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1000B6328(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023FF14();
    v8 = sub_100080FB4(&qword_1003CCA88);
    sub_10023FE94(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);

    sub_10008B5D0((*(v19 + 56) + 32 * v7), a3);
    _NativeDictionary._delete(at:)();
    *v3 = v19;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10023E328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100212DC0(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    *v26 = *v2;
    v7 = sub_100080FB4(&qword_1003CD2B8);
    sub_10023FE94(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26[0]);
    v15 = *(*v27 + 48);
    v16 = type metadata accessor for UUID();
    sub_100098B7C();
    (*(v17 + 8))(v15 + *(v17 + 72) * v6, v16);
    v18 = *(*v27 + 56);
    v19 = sub_100080FB4(&unk_1003D30F0);
    sub_100098B7C();
    (*(v20 + 32))(a2, v18 + *(v20 + 72) * v6, v19);
    sub_10023FA3C(&qword_1003D3100, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *v2 = *v27;
    v21 = a2;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v23 = sub_100080FB4(&unk_1003D30F0);
    v21 = a2;
    v22 = 1;
  }

  return sub_100081DFC(v21, v22, 1, v23);
}

unint64_t sub_10023E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000B6328(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v10 = *(*v3 + 24);
    sub_100080FB4(&qword_1003D3148);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);

    sub_10023FA84(*(v11 + 56) + 8 * v8, a3);
    sub_100080FB4(&unk_1003D2770);
    result = _NativeDictionary._delete(at:)();
    *v3 = v11;
  }

  else
  {
    *a3 = 0;
  }

  *(a3 + 8) = (v7 & 1) == 0;
  return result;
}

uint64_t sub_10023E5D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1000B6328(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_100080FB4(&qword_1003D3150);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  sub_100080FB4(&qword_1003D3158);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

double sub_10023E6C0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100219330(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023FF14();
    v7 = sub_100080FB4(&unk_1003D3130);
    sub_10023FE94(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);

    sub_10008B5D0((*(v18 + 56) + 32 * v6), a2);
    type metadata accessor for SKServerKey(0);
    sub_10023FA3C(&qword_1003CC3B8, type metadata accessor for SKServerKey);
    _NativeDictionary._delete(at:)();
    *v2 = v18;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_10023E7C0()
{
  sub_10023FF5C();
  v4 = v3;
  sub_1000B6328(v5, v6);
  sub_10023FD04();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  sub_100080FB4(&qword_1003CCA88);
  v12 = sub_10023FE14();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    sub_1000B6328(v2, v1);
    sub_10023FDBC();
    if (!v15)
    {
      goto LABEL_14;
    }

    v10 = v14;
  }

  v16 = *v0;
  if (v11)
  {
    sub_100080F0C(*(v16 + 56) + 32 * v10);
    sub_1001073F0();
    sub_10021AED8();

    return sub_10008B5D0(v17, v18);
  }

  else
  {
    sub_10023F36C(v10, v2, v1, v4, v16);
    sub_10021AED8();
  }
}

uint64_t sub_10023E8DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_100212DC0(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  sub_100080FB4(&qword_1003CD2B8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_100212DC0(a2);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    v23 = v22[7];
    v24 = sub_100080FB4(&unk_1003D30F0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 40);
    v27 = v24;
    v28 = v23 + *(v25 + 72) * v18;

    return v26(v28, a1, v27);
  }

  else
  {
    (*(v9 + 16))(v11, a2, v8);
    return sub_10023F3C4(v18, v11, a1, v22);
  }
}

uint64_t sub_10023EAE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000B6328(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_100080FB4(&qword_1003D3148);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_1000B6328(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  if (v17)
  {
    return sub_10023FAF4();
  }

  sub_10023F4C4(v16, a2, a3, a1, *v5);
}

uint64_t sub_10023EC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10023FE64(a1, a2, a3);
  sub_10023FD04();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  sub_100080FB4(&qword_1003D3150);
  v12 = sub_10023FE14();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    sub_1000B6328(v5, v3);
    sub_10023FDBC();
    if (!v15)
    {
      goto LABEL_14;
    }

    v10 = v14;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    sub_10021AED8();
  }

  else
  {
    v18 = sub_10023FF28();
    sub_10023F530(v18, v19, v20, v21, v22);
    sub_10021AED8();
  }
}

_OWORD *sub_10023ED48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  a4(a2);
  sub_10023FD04();
  if (v14)
  {
    __break(1u);
LABEL_14:
    a7(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  sub_100080FB4(a5);
  v17 = sub_10023FE14();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    a4(a2);
    sub_10023FDBC();
    if (!v20)
    {
      goto LABEL_14;
    }

    v15 = v19;
  }

  v21 = *v7;
  if (v16)
  {
    sub_100080F0C(*(v21 + 56) + 32 * v15);
    sub_1001073F0();
    sub_10023FEE0();

    return sub_10008B5D0(v22, v23);
  }

  else
  {
    sub_10023F578(v15, a2, a1, v21);
    sub_10023FEE0();

    return v26;
  }
}

void sub_10023EE74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  sub_100212CF4(a2);
  sub_10023FD04();
  if (v11)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_100080FB4(&qword_1003CF348);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    sub_100212CF4(a2);
    sub_10023FDBC();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    sub_100080F0C(*(v16 + 56) + 32 * v12);
    v17 = sub_1001073F0();

    sub_10008B5D0(v17, v18);
  }

  else
  {
    sub_1001060C4(a2, v19);
    sub_10023F5CC(v12, v19, a1, v16);
  }
}

uint64_t sub_10023EF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  sub_1000B6328(a3, a4);
  sub_10023FD04();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_100080FB4(qword_1003D2EA0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_1000B6328(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v6;
  if (v17)
  {
    v21 = (*(v20 + 56) + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
    sub_100093CB8();
  }

  else
  {
    sub_10023F634(v16, a3, a4, a1, a2, v20);
    sub_100093CB8();
  }
}

void sub_10023F0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10023FE64(a1, a2, a3);
  sub_10023FD04();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_100080FB4(&unk_1003D3120);
  v12 = sub_10023FE14();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    sub_1000B6328(v5, v3);
    sub_10023FDBC();
    if (!v15)
    {
      goto LABEL_14;
    }

    v10 = v14;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    sub_10021AED8();
  }

  else
  {
    v18 = sub_10023FF28();
    sub_10023F530(v18, v19, v20, v21, v22);
    sub_10021AED8();
  }
}

void sub_10023F218(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = v7;
  v13 = *v7;
  sub_1000B6328(a2, a3);
  sub_10023FD04();
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  sub_100080FB4(a5);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v13))
  {
    goto LABEL_5;
  }

  v19 = sub_1000B6328(a2, a3);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v17 = v19;
LABEL_5:
  if (v18)
  {
    v21 = a7(0);
    sub_1000B01B0(v21);
    sub_10023FC14();
    sub_10023FEE0();
  }

  else
  {
    sub_10023F680(v17, a2, a3, a1, *v9);
    sub_10023FEE0();
  }
}

void sub_10023F36C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10023FD38(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  sub_10008B5D0(v11, (*(v7 + 56) + 32 * v6));
  sub_10023FF50();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

uint64_t sub_10023F3C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_100080FB4(&unk_1003D30F0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_10023F4C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10023FA84(a4, a5[7] + 8 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10023F530(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_10023F578(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10023FD38(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  sub_10008B5D0(v8, (*(v6 + 56) + 32 * v5));
  sub_10023FF50();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

void sub_10023F5CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10023FD38(a1, a4 + 8 * (a1 >> 6));
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  sub_10008B5D0(v10, (*(v6 + 56) + 32 * v5));
  sub_10023FF50();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

uint64_t sub_10023F634(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_10023FD38(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_10023F680(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10023FD38(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v12 = v11(0);
  sub_1000B01B0(v12);
  sub_10023FC6C();
  sub_10023FF50();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }
}

void sub_10023F714(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a2 setData:isa];
}

uint64_t sub_10023F788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023F7A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10023F7E0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A7644;
  v5 = sub_1000C71E8();

  return sub_10023A18C(v5, v6, v7, v3, v2);
}

uint64_t sub_10023F8C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10023F904()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10023F95C()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[8];
  v5 = v0[9];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A7644;
  v8 = sub_1000C71E8();

  return sub_1002387C0(v8, v9, v10, v2, v3, v4, v6, v5);
}

uint64_t sub_10023FA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10023FA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D2770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023FAF4()
{
  sub_1001C5518();
  sub_100080FB4(v1);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_10023FB4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10023FB84()
{
  sub_10008BE9C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BA4D8;
  v2 = sub_1001073F0();

  return sub_100238230(v2);
}

uint64_t sub_10023FC14()
{
  sub_1001C5518();
  v1(0);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_10023FC6C()
{
  sub_1001C5518();
  v1(0);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_10023FD18()
{

  return swift_beginAccess();
}

uint64_t sub_10023FD50()
{
}

uint64_t sub_10023FD78()
{

  return swift_beginAccess();
}

void sub_10023FD94(void *a1)
{

  sub_100234D58(v1 - 120, a1);
}

uint64_t sub_10023FDF4()
{

  return swift_once();
}

uint64_t sub_10023FE24()
{

  return swift_once();
}

unint64_t sub_10023FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000B6328(a2, a3);
}

BOOL sub_10023FE94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10023FED0()
{
  result = 0;
  *(v0 - 104) = 0;
  return result;
}

uint64_t sub_10023FEFC(uint64_t a1)
{

  return sub_1000AF25C(a1, v1);
}

NSString sub_10023FF68()
{

  return String._bridgeToObjectiveC()();
}

id sub_10023FF80(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_10023FF98()
{

  return _convertErrorToNSError(_:)();
}

NSString sub_10023FFB0()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10023FFDC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return sub_100081D0C(a1 + v9, a2, v8);
  }

  type metadata accessor for SubscriptionStatusQuery.Kind(0);
  sub_1000B9378();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_10024010C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100080FB4(&unk_1003D20F0);
  sub_1000B9378();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    type metadata accessor for SubscriptionStatusQuery.Kind(0);
    sub_1000B9378();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  sub_100081DFC(a1 + v11, a2, a2, v10);
}

void sub_100240224()
{
  sub_100081F84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionStatusQuery.Kind(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002402D0()
{
  sub_10024033C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10024033C()
{
  if (!qword_1003CE868)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1003CE868);
    }
  }
}

uint64_t sub_100240384(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100321840 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657461647075 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1002404EC(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x746361736E617274;
      break;
    case 3:
      result = 0x73657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100240588(void *a1)
{
  sub_100080FB4(&qword_1003D3340);
  sub_1000890DC();
  v55 = v4;
  v56 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v52 = v6;
  type metadata accessor for Date();
  sub_1000890DC();
  v53 = v8;
  v54 = v7;
  __chkstk_darwin(v7);
  sub_100093D40();
  v51 = v10 - v9;
  sub_100080FB4(&qword_1003D3348);
  sub_1000890DC();
  v49 = v12;
  v50 = v11;
  sub_100089118();
  __chkstk_darwin(v13);
  sub_1000891AC();
  v48 = v14;
  sub_100080FB4(&qword_1003D3350);
  sub_1000890DC();
  v46 = v16;
  v47 = v15;
  sub_100089118();
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = sub_100080FB4(&qword_1003D3358);
  sub_1000890DC();
  v45 = v21;
  sub_100089118();
  __chkstk_darwin(v22);
  sub_100089380();
  type metadata accessor for SubscriptionStatusQuery.Kind(0);
  sub_100098B7C();
  __chkstk_darwin(v23);
  sub_100093D40();
  v26 = v25 - v24;
  sub_100080FB4(&qword_1003D3360);
  sub_1000890DC();
  v58 = v28;
  v59 = v27;
  sub_100089118();
  __chkstk_darwin(v29);
  v31 = &v45 - v30;
  v32 = a1[4];
  sub_100086D24(a1, a1[3]);
  sub_100242154();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002422F8(v57, v26, type metadata accessor for SubscriptionStatusQuery.Kind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = 2;
      sub_1002421FC();
      v43 = v48;
      sub_100242CCC();
      v44 = v50;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v49 + 8))(v43, v44);
      return (*(v58 + 8))(v31, v32);
    case 2u:
      v35 = v53;
      v34 = v54;
      v36 = v51;
      (*(v53 + 32))(v51, v26, v54);
      v62 = 3;
      sub_1002421A8();
      v37 = v52;
      sub_100242CCC();
      sub_100242C88();
      sub_100241FA4(v38, v39);
      v40 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v37, v40);
      (*(v35 + 8))(v36, v34);
      return (*(v58 + 8))(v31, v32);
    case 3u:
      v60 = 0;
      sub_1002422A4();
      v41 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v1, v20);
      return (*(v58 + 8))(v31, v41);
    default:
      sub_100242D28();
      sub_100242250();
      sub_100242CCC();
      v33 = v47;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v46 + 8))(v19, v33);
      return (*(v58 + 8))(v31, v32);
  }
}

uint64_t sub_100240B58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  sub_100080FB4(&qword_1003D32F0);
  sub_1000890DC();
  v96 = v4;
  v97 = v5;
  sub_100089118();
  __chkstk_darwin(v6);
  sub_1000891AC();
  v105 = v7;
  sub_100080FB4(&qword_1003D32F8);
  sub_1000890DC();
  v94 = v9;
  v95 = v8;
  sub_100089118();
  __chkstk_darwin(v10);
  sub_1000891AC();
  v101 = v11;
  sub_100080FB4(&qword_1003D3300);
  sub_1000890DC();
  v92 = v13;
  v93 = v12;
  sub_100089118();
  __chkstk_darwin(v14);
  sub_1000891AC();
  v100 = v15;
  v102 = sub_100080FB4(&qword_1003D3308);
  sub_1000890DC();
  v91 = v16;
  sub_100089118();
  __chkstk_darwin(v17);
  sub_1000891AC();
  v99 = v18;
  sub_100080FB4(&qword_1003D3310);
  sub_1000890DC();
  v103 = v20;
  v104 = v19;
  sub_100089118();
  __chkstk_darwin(v21);
  sub_100089380();
  v22 = type metadata accessor for SubscriptionStatusQuery.Kind(0);
  sub_100098B7C();
  v24 = __chkstk_darwin(v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v87 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = (&v87 - v31);
  __chkstk_darwin(v30);
  v34 = &v87 - v33;
  v35 = a1[3];
  v106 = a1;
  sub_100086D24(a1, v35);
  sub_100242154();
  v36 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
LABEL_10:
    v55 = v106;
    return sub_100080F0C(v55);
  }

  v88 = v32;
  v89 = v29;
  v90 = v26;
  v37 = v104;
  v107 = v34;
  v38 = v2;
  v39 = KeyedDecodingContainer.allKeys.getter();
  sub_100162698(v39, 0);
  if (v41 == v42 >> 1)
  {
    v43 = v22;
LABEL_9:
    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v54 = v53;
    sub_100080FB4(&qword_1003CC798);
    *v54 = v43;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v52 - 8) + 104))(v54, enum case for DecodingError.typeMismatch(_:), v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v103 + 8))(v38, v37);
    goto LABEL_10;
  }

  v87 = 0;
  if (v41 >= (v42 >> 1))
  {
    __break(1u);
    JUMPOUT(0x1002413E8);
  }

  v44 = v2;
  v43 = v22;
  v45 = *(v40 + v41);
  sub_100162694(v41 + 1);
  v47 = v46;
  v49 = v48;
  swift_unknownObjectRelease();
  if (v47 != v49 >> 1)
  {
    v38 = v44;
    goto LABEL_9;
  }

  v50 = v102;
  switch(v45)
  {
    case 1:
      sub_100242D28();
      sub_100242250();
      sub_100242CAC();
      v77 = KeyedDecodingContainer.decode(_:forKey:)();
      v79 = v78;
      swift_unknownObjectRelease();
      v80 = sub_100242D00();
      v81(v80);
      v82 = sub_100242C44();
      v83(v82);
      v84 = v88;
      *v88 = v77;
      v84[1] = v79;
      swift_storeEnumTagMultiPayload();
      v85 = v84;
      goto LABEL_18;
    case 2:
      v109 = 2;
      sub_1002421FC();
      sub_100242CAC();
      v57 = KeyedDecodingContainer.decode(_:forKey:)();
      v67 = v66;
      v105 = v57;
      swift_unknownObjectRelease();
      v68 = sub_100242CEC();
      v69(v68);
      v70 = sub_100242CA0();
      v71(v70);
      v72 = v89;
      *v89 = v105;
      v72[1] = v67;
      goto LABEL_17;
    case 3:
      v110 = 3;
      sub_1002421A8();
      v58 = v87;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v58)
      {
        v61 = sub_100242C44();
        v62(v61);
        swift_unknownObjectRelease();
        v55 = v106;
        return sub_100080F0C(v55);
      }

      type metadata accessor for Date();
      sub_100242C88();
      sub_100241FA4(v59, v60);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v73 = sub_100242D14();
      v74(v73);
      v75 = sub_100242CA0();
      v76(v75);
      v72 = v90;
LABEL_17:
      swift_storeEnumTagMultiPayload();
      v85 = v72;
LABEL_18:
      v65 = v107;
      sub_100242098(v85, v107);
LABEL_19:
      v86 = v106;
      sub_100242098(v65, v98);
      result = sub_100080F0C(v86);
      break;
    default:
      v108 = 0;
      sub_1002422A4();
      v51 = v99;
      sub_100242CAC();
      swift_unknownObjectRelease();
      (*(v91 + 8))(v51, v50);
      v63 = sub_100242C44();
      v64(v63);
      v65 = v107;
      swift_storeEnumTagMultiPayload();
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_1002413F8(uint64_t a1)
{
  v2 = sub_1002422A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241434(uint64_t a1)
{
  v2 = sub_1002422A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100241478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100240384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002414A0(uint64_t a1)
{
  v2 = sub_100242154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002414DC(uint64_t a1)
{
  v2 = sub_100242154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100241518(uint64_t a1)
{
  v2 = sub_100242250();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241554(uint64_t a1)
{
  v2 = sub_100242250();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100241590(uint64_t a1)
{
  v2 = sub_1002421FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002415CC(uint64_t a1)
{
  v2 = sub_1002421FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100241608(uint64_t a1)
{
  v2 = sub_1002421A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241644(uint64_t a1)
{
  v2 = sub_1002421A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002416B0(char a1)
{
  result = 0x6946746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x61727453636E7973;
      break;
    case 4:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100241770(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D32E0);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100086D24(a1, a1[3]);
  sub_100242044();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = *v3;
  v17[14] = 0;
  sub_100126E24();
  sub_1000B9360();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SubscriptionStatusQuery(0);
    sub_100242D28();
    type metadata accessor for ClientOverride(0);
    sub_100242C70();
    sub_100241FA4(v12, v13);
    sub_1000B9360();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17[12] = 2;
    type metadata accessor for SubscriptionStatusQuery.Kind(0);
    sub_100242C58();
    sub_100241FA4(v14, v15);
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[11] = v3[*(v11 + 28)];
    v17[10] = 3;
    sub_1000B90D0();
    sub_1000B9360();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[9] = 4;
    sub_1000B9360();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1002419E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for SubscriptionStatusQuery.Kind(0);
  sub_100098B7C();
  __chkstk_darwin(v4);
  sub_100093D40();
  v7 = v6 - v5;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089380();
  sub_100080FB4(&qword_1003D32C8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v9);
  v27 = type metadata accessor for SubscriptionStatusQuery(0);
  sub_100098B7C();
  __chkstk_darwin(v10);
  sub_100093D40();
  v13 = (v12 - v11);
  sub_100086D24(a1, a1[3]);
  sub_100242044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return sub_100080F0C(a1);
  }

  sub_100126D14();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v13 = v29;
  type metadata accessor for ClientOverride(0);
  sub_100242D28();
  sub_100242C70();
  sub_100241FA4(v15, v16);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100086E28(v2, &v13[v27[5]]);
  sub_100242C58();
  sub_100241FA4(v17, v18);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100242098(v7, &v13[v27[6]]);
  sub_1000B8F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[v27[7]] = v28;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  v22 = sub_100127CA0();
  v23(v22);
  v24 = &v13[v27[8]];
  *v24 = v19;
  v24[1] = v21;
  sub_1002422F8(v13, a2, type metadata accessor for SubscriptionStatusQuery);
  sub_100080F0C(a1);
  return sub_1002420FC(v13, type metadata accessor for SubscriptionStatusQuery);
}

uint64_t sub_100241E78(uint64_t a1)
{
  v2 = sub_100242044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100241EB4(uint64_t a1)
{
  v2 = sub_100242044();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100241F20(uint64_t a1)
{
  *(a1 + 8) = sub_100241FA4(&qword_1003CE280, type metadata accessor for SubscriptionStatusQuery);
  result = sub_100241FA4(&qword_1003D32B8, type metadata accessor for SubscriptionStatusQuery);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100241FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100241FEC(uint64_t a1)
{
  result = sub_100241FA4(&qword_1003D32C0, type metadata accessor for SubscriptionStatusQuery);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100242044()
{
  result = qword_1003D32D0;
  if (!qword_1003D32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D32D0);
  }

  return result;
}

uint64_t sub_100242098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStatusQuery.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002420FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100242154()
{
  result = qword_1003D3318;
  if (!qword_1003D3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3318);
  }

  return result;
}

unint64_t sub_1002421A8()
{
  result = qword_1003D3320;
  if (!qword_1003D3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3320);
  }

  return result;
}

unint64_t sub_1002421FC()
{
  result = qword_1003D3328;
  if (!qword_1003D3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3328);
  }

  return result;
}

unint64_t sub_100242250()
{
  result = qword_1003D3330;
  if (!qword_1003D3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3330);
  }

  return result;
}

unint64_t sub_1002422A4()
{
  result = qword_1003D3338;
  if (!qword_1003D3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3338);
  }

  return result;
}

uint64_t sub_1002422F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusQuery.Kind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100242424);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_100242490(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10024252CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100242630);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10024266C()
{
  result = qword_1003D3368;
  if (!qword_1003D3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3368);
  }

  return result;
}

unint64_t sub_1002426C4()
{
  result = qword_1003D3370;
  if (!qword_1003D3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3370);
  }

  return result;
}

unint64_t sub_10024271C()
{
  result = qword_1003D3378;
  if (!qword_1003D3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3378);
  }

  return result;
}

unint64_t sub_100242774()
{
  result = qword_1003D3380;
  if (!qword_1003D3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3380);
  }

  return result;
}

unint64_t sub_1002427CC()
{
  result = qword_1003D3388;
  if (!qword_1003D3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3388);
  }

  return result;
}

unint64_t sub_100242824()
{
  result = qword_1003D3390;
  if (!qword_1003D3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3390);
  }

  return result;
}

unint64_t sub_10024287C()
{
  result = qword_1003D3398;
  if (!qword_1003D3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3398);
  }

  return result;
}

unint64_t sub_1002428D4()
{
  result = qword_1003D33A0;
  if (!qword_1003D33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33A0);
  }

  return result;
}

unint64_t sub_10024292C()
{
  result = qword_1003D33A8;
  if (!qword_1003D33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33A8);
  }

  return result;
}

unint64_t sub_100242984()
{
  result = qword_1003D33B0;
  if (!qword_1003D33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33B0);
  }

  return result;
}

unint64_t sub_1002429DC()
{
  result = qword_1003D33B8;
  if (!qword_1003D33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33B8);
  }

  return result;
}

unint64_t sub_100242A34()
{
  result = qword_1003D33C0;
  if (!qword_1003D33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33C0);
  }

  return result;
}

unint64_t sub_100242A8C()
{
  result = qword_1003D33C8;
  if (!qword_1003D33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33C8);
  }

  return result;
}

unint64_t sub_100242AE4()
{
  result = qword_1003D33D0;
  if (!qword_1003D33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33D0);
  }

  return result;
}

unint64_t sub_100242B3C()
{
  result = qword_1003D33D8;
  if (!qword_1003D33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33D8);
  }

  return result;
}

unint64_t sub_100242B94()
{
  result = qword_1003D33E0;
  if (!qword_1003D33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33E0);
  }

  return result;
}

unint64_t sub_100242BEC()
{
  result = qword_1003D33E8;
  if (!qword_1003D33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D33E8);
  }

  return result;
}

uint64_t sub_100242CAC()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100242CCC()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100242D34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (([a1 sk_allowAdvancedTransactionQueries] & 1) != 0 || (v7 = type metadata accessor for SubscriptionStatusQuery(0), v2[*(v7 + 28)] == 1) && *v2 == 3)
  {
    sub_100244A54(v2, a2);
    v4 = type metadata accessor for SubscriptionStatusQuery(0);
    v5 = a2;
    v6 = 0;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v8 = type metadata accessor for SKLogger();
    sub_10007EDA4(v8, qword_1003F26C8);
    v9 = &v2[*(v7 + 32)];
    v10 = *v9;
    v11 = v9[1];
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = sub_10008E688();
      v15 = sub_10008E670();
      *v14 = 136446466;
      v19 = v15;
      v16._countAndFlagsBits = v10;
      v16._object = v11;
      String.append(_:)(v16);
      sub_10009F134();
      v17 = sub_100080210(91, 0xE100000000000000, &v19);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_100080210(0xD000000000000037, 0x80000001003140B0, &v19);
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    v5 = a2;
    v6 = 1;
    v4 = v7;
  }

  return sub_100081DFC(v5, v6, 1, v4);
}

void sub_100242F54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v74 = a3;
  v11 = sub_100080FB4(&qword_1003D2898);
  sub_1000890DC();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = v64 - v17;
  v72._countAndFlagsBits = a4;
  v72._object = a5;
  v19 = sub_100243798(a1, a2, a4, a5, 0, 0);
  _s24SubscriptionStatusEntityCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = v74;
  v21 = [ObjCClassFromMetadata queryOnConnection:v74 predicate:v19];

  LOBYTE(v76) = 0;
  v22 = *(v13 + 16);
  v70 = a6;
  v65 = v22;
  v64[1] = v13 + 16;
  v22(v18, a6, v11);
  v23 = *(v13 + 80);
  v24 = (v23 + 56) & ~v23;
  v68 = v15;
  v25 = a2;
  v64[2] = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  *(v26 + 24) = a1;
  v73 = a1;
  *(v26 + 32) = a2;
  *(v26 + 40) = 0;
  *(v26 + 48) = &v76;
  v28 = (v13 + 32);
  v27 = *(v13 + 32);
  v67 = v24;
  v69 = v18;
  v71 = v11;
  v27(v26 + v24, v18, v11);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100244AC4;
  *(v29 + 24) = v26;
  v82 = sub_1000939AC;
  v83 = v29;
  sub_100244CA8();
  sub_100244C90();
  v80 = v30;
  v81 = &unk_100391BB8;
  v31 = _Block_copy(&aBlock);
  v32 = v83;
  v33 = v20;

  v74 = v21;
  [v21 enumeratePersistentIDsUsingBlock:v31];
  _Block_release(v31);
  LOBYTE(v31) = sub_100244D10();

  if (v31)
  {
    __break(1u);
LABEL_16:
    sub_100213374(v34 > 1, v29, 1);
    v38 = aBlock;
    goto LABEL_5;
  }

  v35 = v76;

  if (v35)
  {

    return;
  }

  v64[0] = v27;
  _s13ReceiptEntityCMa();
  v36 = swift_getObjCClassFromMetadata();
  v76 = 0;
  v77 = 0;
  v37 = sub_1000911E8(v72._countAndFlagsBits, v72._object, v73, v25);
  v21 = [v36 queryOnConnection:? predicate:?];

  aBlock = _swiftEmptyArrayStorage;
  sub_100213374(0, 1, 0);
  v38 = aBlock;
  v32 = aBlock[2];
  v34 = aBlock[3];
  v29 = v32 + 1;
  if (v32 >= v34 >> 1)
  {
    goto LABEL_16;
  }

LABEL_5:
  v38[2] = v29;
  v39 = &v38[2 * v32];
  v39[4] = 0x74706965636572;
  v39[5] = 0xE700000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = swift_allocObject();
  *(v41 + 16) = &v76;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100244AEC;
  *(v42 + 24) = v41;
  v82 = sub_1000938C8;
  v83 = v42;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_1001087F4;
  v81 = &unk_100391C30;
  v43 = _Block_copy(&aBlock);

  [v21 enumeratePersistentIDsAndProperties:isa usingBlock:v43];

  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    __break(1u);
    goto LABEL_18;
  }

  v44 = v77;
  if (!v77)
  {
    v28 = v21;
    if (qword_1003CBE58 == -1)
    {
LABEL_10:
      v57 = type metadata accessor for SKLogger();
      sub_10007EDA4(v57, qword_1003F26C8);
      aBlock = 0;
      v79 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      aBlock = 0xD000000000000030;
      v79 = 0x8000000100321950;
      String.append(_:)(v72);
      v59 = aBlock;
      v58 = v79;
      v60 = static os_log_type_t.error.getter();

      v61 = Logger.logObject.getter();

      if (os_log_type_enabled(v61, v60))
      {
        v62 = sub_10008E688();
        aBlock = sub_10008E670();
        *v62 = 136446466;
        *(v62 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
        *(v62 + 12) = 2082;
        v63 = sub_100080210(v59, v58, &aBlock);

        *(v62 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v61, v60, "%{public}s%{public}s", v62, 0x16u);
        swift_arrayDestroy();
        sub_100081C28();
        sub_100081C28();
      }

      else
      {
      }

      goto LABEL_14;
    }

LABEL_19:
    sub_100081C08();
    goto LABEL_10;
  }

  v72._countAndFlagsBits = v41;
  v45 = v76;

  v46 = v73;
  v47 = sub_100243798(v73, v25, v45, v44, 0, 0);

  v72._object = [ObjCClassFromMetadata queryOnConnection:v33 predicate:v47];

  v75 = 0;
  v48 = v69;
  v49 = v71;
  v65(v69, v70, v71);
  v50 = v67;
  v51 = swift_allocObject();
  *(v51 + 16) = v33;
  *(v51 + 24) = v46;
  *(v51 + 32) = v25;
  *(v51 + 40) = 0;
  *(v51 + 48) = &v75;
  (v64[0])(v51 + v50, v48, v49);
  v52 = swift_allocObject();
  v28 = v21;
  *(v52 + 16) = sub_100244C78;
  *(v52 + 24) = v51;
  v82 = sub_1000DC764;
  v83 = v52;
  sub_100244CA8();
  sub_100244C90();
  v80 = v53;
  v81 = &unk_100391CA8;
  v54 = _Block_copy(&aBlock);
  v55 = v33;

  object = v72._object;
  [v72._object enumeratePersistentIDsUsingBlock:v54];

  _Block_release(v54);
  LOBYTE(object) = sub_100244D10();

  if (object)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
}

id sub_100243798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2A0;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v16 = &type metadata for String;
  v14 = a1;
  v15 = a2;

  *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v14);
  v17 = inited;
  if (a4)
  {
    v16 = &type metadata for String;
    v14 = a3;
    v15 = a4;

    sub_100223CB4(0xD000000000000017, 0x8000000100316D90, &v14);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    inited = v17;
  }

  if (a6)
  {
    v16 = &type metadata for String;
    v14 = a5;
    v15 = a6;

    sub_100223CB4(0xD000000000000015, 0x80000001003140F0, &v14);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    inited = v17;
  }

  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EE04(inited);

  return sub_10018F08C();
}

void sub_1002439CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(&v19, a2, &v21);
  sub_10008E550(&v19);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v7 = String._bridgeToObjectiveC()();

      v8 = sub_100027B30(v7, 0);

      if (v8 && (v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v8, v9))
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1001DA990(v10, v11, v9, &v19);

        if (*(&v20 + 1))
        {
          v12 = swift_dynamicCast();
          v14 = *(&v21 + 1);
          v13 = v21;
          if (!v12)
          {
            v13 = 0;
            v14 = 0;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      sub_10008105C(&v19);
      v13 = 0;
      v14 = 0;
LABEL_16:
      *a5 = v13;
      a5[1] = v14;

      return;
    }
  }

  else
  {
    sub_10008105C(&v21);
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for SKLogger();
  sub_10007EDA4(v15, qword_1003F26C8);
  v16 = static os_log_type_t.error.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *&v19 = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_100080210(0, 0xE000000000000000, &v19);
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_100080210(0xD00000000000002BLL, 0x80000001003143E0, &v19);
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100243CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8)
{
  v14 = sub_100080FB4(&qword_1003D3410);
  sub_1000890DC();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v67 - v18;
  v20 = [objc_allocWithZone(_s24SubscriptionStatusEntityCMa()) initWithPersistentID:a1 onConnection:a4];
  v21 = sub_1000DBB74();
  v77 = v22;
  v78 = v21;
  v73 = a5;
  v74 = v14;
  v75 = v19;
  v76 = a7;
  v23 = sub_1000DBA48();
  v24 = v20;
  v26 = v25;
  v71 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v79 = 0;
  v28 = sub_100028E90(isa, &v79);

  v29 = v79;
  v69 = v26;
  v70 = v24;
  if (!v28)
  {
    v44 = v79;
    if (!v29)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_11;
  }

  v68 = v16;
  sub_100080FB4(&unk_1003CE640);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v29;

  if (v31)
  {
    goto LABEL_10;
  }

  if (v30)
  {
    v32 = sub_1001C9D90(v30);

    v72 = v32;
    if (v32)
    {
      v33 = v72;
      sub_1001DA490();
      v82 = v34;
      v35 = v33[2];
      if (v35)
      {
        v36 = 4;
        v37 = v77;
        v38 = v73;
        do
        {
          v39 = v72[v36];

          sub_100223354(v40);
          v42 = __chkstk_darwin(v41);
          *(&v67 - 2) = v39;
          *(&v67 - 1) = &v82;
          sub_100092A64(v42, v78, v37, v38, a6, a4, sub_100244AB8, (&v67 - 4));

          ++v36;
          --v35;
        }

        while (v35);

        v43 = v82;
        v26 = v69;
        v24 = v70;
      }

      else
      {
        v43 = v34;
      }

      v63 = v78;
      v64 = v68;
      v65 = v74;
      v66 = v75;
      if ((v76 & 1) != 0 && !*(v43 + 16))
      {
        sub_10008E168(v71, v26);
      }

      else
      {
        *a8 = 1;
        v79 = v63;
        v80 = v77;
        v81 = v43;

        sub_100080FB4(&qword_1003D2898);
        AsyncStream.Continuation.yield(_:)();

        sub_10008E168(v71, v26);
        (*(v64 + 8))(v66, v65);
      }
    }
  }

LABEL_11:
  v45 = v78;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v46 = type metadata accessor for SKLogger();
  sub_10007EDA4(v46, qword_1003F26C8);
  v79 = 0;
  v80 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v47._object = 0x80000001003218E0;
  v47._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v45;
  v48._object = v77;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 8250;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  v82 = v29;
  v50 = v29;
  sub_100080FB4(&qword_1003CCBC8);
  v51._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v51);

  v53 = v79;
  v52 = v80;
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v55 = v79;
  v54 = v80;
  v56 = static os_log_type_t.error.getter();

  v57 = Logger.logObject.getter();

  if (os_log_type_enabled(v57, v56))
  {
    v58 = sub_10008E688();
    v82 = sub_10008E670();
    *v58 = 136446466;
    sub_100244CC8();
    v59._countAndFlagsBits = v55;
    v59._object = v54;
    String.append(_:)(v59);
    sub_10009F134();
    v60 = sub_100244CF4();

    *(v58 + 4) = v60;
    *(v58 + 12) = 2082;
    v61 = sub_100080210(v53, v52, &v82);

    *(v58 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v57, v56, "%{public}s%{public}s", v58, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();

    sub_10008E168(v71, v69);
  }

  else
  {

    sub_10008E168(v71, v69);
  }
}

void sub_10024451C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000DB29C();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v8, v9, a2, v24);

  if (!v25)
  {

    sub_10008105C(v24);
LABEL_8:
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    sub_10007EDA4(v15, qword_1003F26C8);
    v16 = static os_log_type_t.error.getter();
    v17 = Logger.logObject.getter();
    if (!os_log_type_enabled(v17, v16))
    {
      goto LABEL_19;
    }

    v18 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_100080210(0, 0xE000000000000000, v24);
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_100080210(0xD000000000000038, 0x8000000100318A50, v24);
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v10, v11, a2, v24);

  if (v25)
  {
    if (swift_dynamicCast())
    {
      sub_100143760();
      v12 = *(*a3 + 16);
      sub_100143804(v12);
      v13 = *a3;
      *(v13 + 16) = v12 + 1;
      v14 = (v13 + 40 * v12);
      v14[4] = v22;
      v14[5] = v23;
      v14[6] = v5;
      v14[7] = v7;
      v14[8] = v22;
      return;
    }
  }

  else
  {

    sub_10008105C(v24);
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for SKLogger();
  sub_10007EDA4(v19, qword_1003F26C8);
  v20 = static os_log_type_t.error.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v20))
  {
    v21 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100080210(0, 0xE000000000000000, v24);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_100080210(0xD000000000000039, 0x8000000100321910, v24);
    _os_log_impl(&_mh_execute_header, v17, v20, "%{public}s%{public}s", v21, 0x16u);
LABEL_18:
    swift_arrayDestroy();
  }

LABEL_19:
}

uint64_t sub_100244A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStatusQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100244AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100244B00()
{
  v1 = sub_100080FB4(&qword_1003D2898);
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

unint64_t sub_100244CF4()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return sub_100080210(v2, v3, (v0 - 96));
}

uint64_t sub_100244D10()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_100244D30()
{
  sub_10008BE9C();
  v0[57] = v1;
  v0[58] = v2;
  v0[55] = v3;
  v0[56] = v4;
  sub_100080FB4(&unk_1003D0540);
  v0[59] = sub_1001078CC();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v0[62] = swift_task_alloc();
  v0[63] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v0[64] = v5;
  sub_1000B046C(v5);
  v0[65] = v6;
  v0[66] = sub_1001078CC();
  v0[67] = swift_task_alloc();
  v0[68] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100245EC8()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 608) = v4;
  if (v4)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100245FD0()
{
  sub_1000B0004();
  v1 = v0[74];
  v2 = v0[57];
  v0[77] = v0[52];

  v4 = sub_1001A7AB4(v3);
  if (qword_1003CC050 != -1)
  {
    swift_once();
  }

  v5 = v0[75];
  v0[78] = [v4 stringForKey:qword_1003F28B8];
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[7] = v0 + 48;
  v0[3] = sub_100246148;
  v6 = sub_1000B0500();
  v0[25] = v5;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10023FCCC;
  v0[21] = &unk_100391E60;
  v0[22] = v6;
  v7 = sub_10024E940();
  [v7 v8];

  return _swift_continuation_await(v0 + 2, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100246148()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 632) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100246244()
{
  v2 = *(v0 + 616);
  v3 = *(v0 + 384);

  sub_100080FB4(&unk_1003D2720);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002ED020;
  *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 40) = v5;
  *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v4 + 56) = v6;

  sub_1001793D8();
  sub_100107EE4();
  v7 = *(v0 + 512);
  if (!v2)
  {
    v25 = sub_1001B53A4();
    sub_100081DFC(v25, v26, 1, v7);
    goto LABEL_7;
  }

  sub_1001787A0(v2, *(v0 + 504));

  v8 = sub_1001B53A4();
  if (sub_100081D0C(v8, v9, v7) == 1)
  {
LABEL_7:
    v27 = *(v0 + 584);
    sub_10008B69C(*(v0 + 504), &unk_1003D0540);
    *(v0 + 425) = 2;
    sub_10008B5E0();
    swift_willThrowTypedImpl();

    sub_10024E640();

    sub_10024E6B4(2);
    goto LABEL_8;
  }

  v10 = *(v0 + 568);
  v11 = *(v0 + 544);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 440);
  (*(v12 + 32))(v11, *(v0 + 504), v13);
  v15 = v10[5];
  (*(v12 + 16))(v14 + v15, v11, v13);
  sub_100081DFC(v14 + v15, 0, 1, v13);
  v16 = v14 + v10[6];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v14 + v10[10]) = 2;
  if (qword_1003CBF30 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 584);
  v18 = *(v0 + 568);
  v20 = *(v0 + 440);
  v19 = *(v0 + 448);
  v21 = qword_1003F2798;

  v22 = sub_100107174();
  v23(v22);
  sub_10016FC08(v19);
  *(v20 + *(v18 + 28)) = v21;
  sub_10024E868();

  sub_100098AA4();
LABEL_8:

  return v24();
}

uint64_t sub_100246A38()
{
  sub_10008BE9C();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = type metadata accessor for URL();
  v1[18] = v5;
  sub_1000B046C(v5);
  v1[19] = v6;
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for URLQueryItem();
  v1[21] = v7;
  sub_1000B046C(v7);
  v1[22] = v8;
  v1[23] = sub_1001078CC();
  v1[24] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  v1[25] = sub_1001078CC();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10024709C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 289) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100247188()
{
  v29 = v1;
  if (*(v1 + 289) == 1)
  {
    static os_log_type_t.default.getter();

    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      v3 = *(v1 + 232);
      v2 = *(v1 + 240);
      v4 = sub_10008E688();
      sub_10008E670();
      sub_10024E67C(4.8752e-34);
      v5._countAndFlagsBits = v3;
      v5._object = v2;
      String.append(_:)(v5);
      sub_10008C018();
      sub_10008BF20(v6, v7, v8, v9, v10, v11, v12, v13, v27, v28[0], v28[1], v28[2]);
      sub_1000B0494();
      sub_10013BBCC();
      *(v4 + 14) = sub_100080210(0xD000000000000028, 0x80000001003219B0, v28);
      sub_10013BF7C(&_mh_execute_header, v14, v15, "%{public}s%{public}s");
      sub_100106E34();
      sub_100081C28();
      sub_100081C28();
    }

    v16 = swift_task_alloc();
    *(v1 + 256) = v16;
    *v16 = v1;
    sub_10024E698(v16);
    sub_1000B0178();

    return sub_100247ECC(v17, v18, v19);
  }

  else
  {
    v22 = swift_task_alloc();
    *(v1 + 272) = v22;
    *v22 = v1;
    sub_10024E698(v22);
    sub_1000B0178();

    return sub_10024A470(v23, v24, v25);
  }
}

uint64_t sub_100247350(char a1)
{
  sub_10008C070();
  v5 = v4;
  sub_10008BEFC();
  *v6 = v5;
  v7 = *v2;
  sub_10008BEFC();
  *v8 = v7;
  *(v5 + 264) = v1;

  if (!v1)
  {
    *(v5 + 290) = a1 & 1;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10024746C()
{
  v27 = v2;
  if (*(v2 + 290))
  {
    sub_10024EB1C();
    sub_10008B69C(v1, &unk_1003D0540);

    sub_100098AA4();
    sub_1000B0178();

    __asm { BRAA            X1, X16 }
  }

  static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_100107EE4();
  if (sub_10009F1F4())
  {
    v6 = *(v2 + 232);
    v5 = *(v2 + 240);
    v7 = sub_10008E688();
    sub_10008E670();
    sub_10024E67C(4.8752e-34);
    v8._countAndFlagsBits = v6;
    v8._object = v5;
    String.append(_:)(v8);
    sub_10008C018();
    sub_10008BF20(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26[0], v26[1], v26[2]);
    sub_1000B0494();
    sub_10013BBCC();
    *(v7 + 14) = sub_100080210(0xD000000000000047, 0x80000001003219E0, v26);
    sub_10013BF7C(&_mh_execute_header, v17, v18, "%{public}s%{public}s");
    sub_100106E34();
    sub_100081C28();
    sub_100081C28();
  }

  v19 = swift_task_alloc();
  *(v2 + 272) = v19;
  *v19 = v2;
  sub_10024E698(v19);
  sub_1000B0178();

  return sub_10024A470(v20, v21, v22);
}

uint64_t sub_100247648()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_10008BEFC();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100247744()
{
  sub_1000B0004();
  sub_10024EB1C();
  sub_10008B69C(v0, &unk_1003D0540);

  sub_100098AA4();

  return v1();
}

uint64_t sub_1002477F0()
{
  sub_1000B02BC();
  sub_10024EB08();
  sub_10008B69C(v0, &unk_1003D0540);

  sub_100098AC4();

  return v1();
}

uint64_t sub_1002478A8()
{
  sub_1000B02BC();
  sub_10024EB08();
  sub_10008B69C(v0, &unk_1003D0540);

  sub_100098AC4();

  return v1();
}

uint64_t sub_100247960(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100247990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100247960(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002479BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100247978(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1002479E8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for URL();
    sub_10024E154(&qword_1003D3440, &type metadata accessor for URL);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_100247B24()
{
  sub_1000B0004();
  v1 = v0[20];
  v2 = type metadata accessor for ExternalGatewaySheet();
  if (*(v1 + *(v2 + 36)) == 3)
  {
    v3 = sub_1001A7AB4(v2);
    if (qword_1003CBF80 != -1)
    {
      swift_once();
    }

    v0[21] = [v3 BOOLForKey:qword_1003F27E8];
    swift_unknownObjectRelease();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100247CEC;
    v4 = sub_1000B0500();
    v0[17] = sub_100080FB4(&qword_1003CEDB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10012C050;
    v0[13] = &unk_100391E10;
    v0[14] = v4;
    v5 = sub_10024E940();
    [v5 v6];

    return _swift_continuation_await(v0 + 2, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v14 = sub_10024E6D8();

    return v15(v14);
  }
}

uint64_t sub_100247CEC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100247DE8()
{
  sub_10008BE9C();
  v1 = *(v0 + 168);

  v2 = *(v0 + 152);
  sub_10009F198();

  return v3((v2 & 1) == 0);
}

uint64_t sub_100247E54()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  sub_10009F198();

  return v2(1);
}

uint64_t sub_100247ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[90] = v3;
  v4[89] = a3;
  v4[88] = a2;
  v4[87] = a1;
  v5 = type metadata accessor for URL();
  v4[91] = v5;
  v4[92] = *(v5 - 8);
  v4[93] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  v4[94] = swift_task_alloc();

  return _swift_task_switch(sub_100247FD0, 0, 0);
}

uint64_t sub_100248564()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_10008BEFC();
  *v5 = v4;
  *(v6 + 816) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100248660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000D40B0();
  a25 = v27;
  a26 = v28;
  sub_1001077D8();
  a24 = v26;
  v29 = *(v26 + 933);
  v62 = URL.absoluteString.getter();
  v64 = v30;
  v31 = sub_100234E50();
  v32 = [objc_allocWithZone(AMSEngagement) initWithBag:sub_1001A7AB4(v31)];
  *(v26 + 824) = v32;
  swift_unknownObjectRelease();
  sub_1000AFD34();
  _StringGuts.grow(_:)(39);
  *(v26 + 632) = v62;
  *(v26 + 640) = v64;
  v33._countAndFlagsBits = 0xD000000000000025;
  v33._object = 0x8000000100321A50;
  String.append(_:)(v33);
  *(v26 + 930) = v29;
  _print_unlocked<A, B>(_:_:)();
  v34 = *(v26 + 632);
  v35 = *(v26 + 640);
  v36 = static os_log_type_t.default.getter();

  v37 = Logger.logObject.getter();

  if (sub_1000B035C())
  {
    v38 = *(v26 + 784);
    v39 = *(v26 + 776);
    v40 = sub_10008E688();
    a15 = sub_10008E670();
    *v40 = 136446466;
    sub_10009F0F8();
    v63 = v41;
    v65 = v42;
    v43._countAndFlagsBits = v39;
    v43._object = v38;
    String.append(_:)(v43);
    sub_10008C018();
    sub_100080210(v63, v65, &a15);
    sub_1000C44AC();

    *(v40 + 4) = v39;
    *(v40 + 12) = 2082;
    sub_100080210(v34, v35, &a15);
    sub_1000B047C();
    *(v40 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v37, v36, "%{public}s%{public}s", v40, 0x16u);
    sub_10008BF74();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v44 = *(v26 + 792);
  sub_100080FB4(&unk_1003D28A0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1002ED2A0;
  sub_100223354(*(v44 + 16));
  v47 = v46;
  v48 = objc_allocWithZone(AMSEngagementPlacementInfo);
  *(v45 + 32) = sub_10024D6EC(0xD000000000000014, 0x80000001002FC1E0, v47);
  v49 = objc_allocWithZone(AMSEngagementMessageEvent);
  v50 = sub_10024D78C();
  v51 = [v32 enqueueMessageEvent:v50];
  *(v26 + 832) = v51;

  *(v26 + 80) = v26;
  *(v26 + 120) = v26 + 680;
  *(v26 + 88) = sub_100248A50;
  v52 = swift_continuation_init();
  *(v26 + 328) = sub_100080FB4(&qword_1003D3418);
  *(v26 + 272) = _NSConcreteStackBlock;
  *(v26 + 280) = 1107296256;
  *(v26 + 288) = sub_10024CCF8;
  *(v26 + 296) = &unk_100391CF8;
  *(v26 + 304) = v52;
  [v51 resultWithCompletion:v26 + 272];
  sub_10009F1B8();

  return _swift_continuation_await(v53, v54, v55, v56, v57, v58, v59, v60);
}

uint64_t sub_100248A50()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 840) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100249438()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 880) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002497CC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 904) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002498C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000D40B0();
  a25 = v27;
  a26 = v28;
  sub_1001077D8();
  a24 = v26;
  v29 = *(v26 + 760);
  v30 = *(v26 + 688);

  swift_unknownObjectRelease();
  sub_1000C446C();
  a14 = 0xD000000000000027;
  a15 = v31;
  v62 = v30;
  v32 = [v30 description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v34._countAndFlagsBits = sub_1000D4078();
  String.append(_:)(v34);

  v35 = a14;
  v36 = a15;
  static os_log_type_t.default.getter();
  sub_10015D264();

  Logger.logObject.getter();
  sub_10015D2A0();

  if (sub_1000B035C())
  {
    sub_10008E688();
    sub_10008BF58();
    sub_1000AFD44(4.8752e-34);
    a13 = v37;
    a14 = v38;
    a15 = v39;
    sub_10021AE18();
    sub_10009F134();
    v40 = a15;
    sub_100080210(a14, a15, &a13);
    sub_1000B0494();
    sub_10024E6C8();
    sub_100080210(v35, v36, &a13);
    sub_1000B047C();
    *(&type metadata for Any + 14) = v40;
    sub_10024E700(&_mh_execute_header, v41, v33, "%{public}s%{public}s");
    sub_10024EA78();
    sub_10008BF90();
    sub_10008BF3C();
  }

  else
  {
  }

  v42 = *(v26 + 864);
  v43 = *(v26 + 848);
  v44 = *(v26 + 824);
  v45 = *(v26 + 792);
  v60 = *(v26 + 856);
  v61 = *(v26 + 744);
  v46 = *(v26 + 736);
  v59 = *(v26 + 728);
  v47 = *(v26 + 720);
  v48 = [v62 userInfo];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(v26 + 464) = sub_100080FB4(&unk_1003CE640);
  *(v26 + 440) = v49;
  sub_10024CD24(1, v26 + 440, 0, v47, v45);

  (*(v46 + 8))(v61, v59);
  sub_10008B69C(v26 + 440, &unk_1003CCB70);

  sub_10009F198();
  sub_10009F1B8();

  return v52(v50, v51, v52, v53, v54, v55, v56, v57, v59, v60, v61, v62, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_100249B8C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 920) = *(v3 + 176);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100249C88()
{
  v35 = v0;
  v1 = v0[98];
  v2 = v0[95];
  sub_1000C446C();
  v33 = 0xD000000000000022;
  v34 = v3;
  v31 = v4;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = sub_1000D4078();
  String.append(_:)(v7);

  v8 = v34;
  static os_log_type_t.default.getter();
  sub_10015D264();

  Logger.logObject.getter();
  sub_10015D2A0();

  if (sub_1000B035C())
  {
    sub_10008E688();
    sub_10008BF58();
    sub_1000AFD44(4.8752e-34);
    v32 = v9;
    v33 = v10;
    v34 = v11;
    sub_10021AE18();
    sub_10009F134();
    v12 = v34;
    sub_100080210(v33, v34, &v32);
    sub_1000B0494();
    sub_10024E6C8();
    sub_100080210(0xD000000000000022, v8, &v32);
    sub_1000B047C();
    *(v1 + 14) = v12;
    sub_10024E700(&_mh_execute_header, v13, v6, "%{public}s%{public}s");
    sub_10008BF74();
    sub_10008BF90();
    sub_10008BF3C();
  }

  else
  {
  }

  v14 = v0[114];
  v15 = v0[103];
  v16 = v0[99];
  v29 = v0[107];
  v30 = v0[93];
  v17 = v0[92];
  v27 = v0[106];
  v28 = v0[91];
  v18 = v0[90];
  v19 = [v31 selectedActionIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = _swiftEmptyDictionarySingleton;
  sub_10023EF9C(v20, v22, 0x64657463656C6573, 0xEE006E6F69746341, isUniquelyReferenced_nonNull_native);
  v24 = v33;
  v0[62] = sub_100080FB4(&unk_1003D1CC0);
  v0[59] = v24;
  sub_10024CD24(1, (v0 + 59), 0, v18, v16);

  (*(v17 + 8))(v30, v28);
  sub_10008B69C((v0 + 59), &unk_1003CCB70);

  sub_10009F198();

  return v25(1);
}

uint64_t sub_100249F80()
{
  sub_10024E9D4();

  v0 = sub_10024E6D8();

  return v1(v0);
}

uint64_t sub_10024A274()
{
  v3 = v0[112];
  v4 = v0[108];
  v5 = v0[107];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_10024E730();
  sub_10024EA94();

  sub_10008B69C((v0 + 63), &unk_1003CCB70);
  swift_willThrow();

  v6 = sub_1000D4078();
  v7(v6);
  sub_10024E9D4();

  v8 = sub_10024E6D8();

  return v9(v8);
}

uint64_t sub_10024A37C()
{
  v3 = *(v0 + 912);
  v4 = *(v0 + 856);
  swift_willThrow();

  sub_10024E730();
  sub_10024EA94();

  sub_10008B69C(v0 + 504, &unk_1003CCB70);
  swift_willThrow();

  v5 = sub_1000D4078();
  v6(v5);
  sub_10024E9D4();

  v7 = sub_10024E6D8();

  return v8(v7);
}

uint64_t sub_10024A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[100] = v3;
  v4[99] = a3;
  v4[98] = a2;
  v4[97] = a1;
  v5 = type metadata accessor for URL();
  v4[101] = v5;
  v4[102] = *(v5 - 8);
  v4[103] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540);
  v4[104] = swift_task_alloc();

  return _swift_task_switch(sub_10024A574, 0, 0);
}

uint64_t sub_10024A574()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 808);
  if (*(v0 + 784))
  {
    v3 = *(v0 + 784);
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_10008B634(*(v0 + 776), *(v0 + 832), &unk_1003D0540);
  v4 = sub_100081D0C(v1, 1, v2);

  if (v4 == 1)
  {
    sub_10008B69C(*(v0 + 832), &unk_1003D0540);
    sub_1000B6328(0x6C616E7265747865, 0xEC0000006B6E694CLL);
    if (v5)
    {
      sub_1000D3ED4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v3;
      v7 = v3[3];
      sub_100080FB4(&qword_1003CCA88);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
      v3 = *v50;

      sub_10008B5D0((*(*v50 + 56) - 0x7FFFFFF29232D680), (v0 + 624));
      _NativeDictionary._delete(at:)();
    }

    else
    {
      *(v0 + 624) = 0u;
      *(v0 + 640) = 0u;
    }

    sub_10008B69C(v0 + 624, &unk_1003CCB70);
  }

  else
  {
    v8 = *(v0 + 832);
    v9 = *(v0 + 816);
    v10 = *(v0 + 808);
    v11 = URL.absoluteString.getter();
    *(v0 + 168) = &type metadata for String;
    *(v0 + 144) = v11;
    *(v0 + 152) = v12;
    (*(v9 + 8))(v8, v10);
    sub_10008B5D0((v0 + 144), (v0 + 720));
    swift_isUniquelyReferenced_nonNull_native();
    sub_10023E7C0();
  }

  v13 = **(v0 + 800);
  *(v0 + 840) = v13;
  v14 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_storeItemID);
  *(v0 + 616) = &type metadata for UInt64;
  *(v0 + 592) = v14;
  sub_10008B5D0((v0 + 592), (v0 + 176));
  swift_isUniquelyReferenced_nonNull_native();
  *v51 = v3;
  sub_10019DCE0();
  sub_10023E7C0();
  v15 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v16 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  *(v0 + 232) = &type metadata for String;
  *(v0 + 208) = v15;
  *(v0 + 216) = v16;
  sub_10008B5D0((v0 + 208), (v0 + 240));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10024E798();
  sub_10024E7A4();
  sub_10023E7C0();
  v17 = *v51;
  v18 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_vendorName + 8);
  if (v18)
  {
    v19 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_vendorName);
    *(v0 + 296) = &type metadata for String;
    *(v0 + 272) = v19;
    *(v0 + 280) = v18;
    sub_10008B5D0((v0 + 272), (v0 + 688));

    swift_isUniquelyReferenced_nonNull_native();
    sub_10024E798();
    sub_10023E7C0();
    v17 = *v51;
  }

  else
  {
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_10008B69C(v0 + 272, &unk_1003CCB70);
    sub_1000B6328(0x65706F6C65766564, 0xED0000656D614E72);
    if (v20)
    {
      sub_1000C44AC();
      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_100080FB4(&qword_1003CCA88);
      sub_10024EB8C(v21, v22, v23, v24, v25, v26, v27, v28, v49, v51[0]);
      sub_10024EBAC();
      sub_10008B5D0(*(v17 + 56), (v0 + 304));
      _NativeDictionary._delete(at:)();
    }

    else
    {
      *(v0 + 304) = 0u;
      *(v0 + 320) = 0u;
    }

    sub_10008B69C(v0 + 304, &unk_1003CCB70);
  }

  v29 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_signerOrganization + 8);
  if (v29)
  {
    v30 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_signerOrganization);
    v31 = &type metadata for String;
    v32 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_signerOrganization + 8);
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v31 = 0;
    *(v0 + 352) = 0;
  }

  *(v0 + 336) = v30;
  *(v0 + 344) = v32;
  *(v0 + 360) = v31;
  if (v29)
  {
    sub_10008B5D0((v0 + 336), (v0 + 656));

    swift_isUniquelyReferenced_nonNull_native();
    sub_10024E798();
    sub_10023E7C0();
  }

  else
  {
    sub_10008B69C(v0 + 336, &unk_1003CCB70);
    sub_1000B6328(0xD000000000000012, 0x800000010031C650);
    if (v33)
    {
      sub_1000C44AC();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_100080FB4(&qword_1003CCA88);
      sub_10024EB8C(v34, v35, v36, v37, v38, v39, v40, v41, v49, v17);
      sub_10024EBAC();
      sub_10008B5D0(*(v17 + 56), (v0 + 368));
      _NativeDictionary._delete(at:)();
    }

    else
    {
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0u;
    }

    sub_10008B69C(v0 + 368, &unk_1003CCB70);
  }

  v42 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_localizedName);
  v43 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_localizedName + 8);
  *(v0 + 424) = &type metadata for String;
  *(v0 + 400) = v42;
  *(v0 + 408) = v43;
  sub_10008B5D0((v0 + 400), (v0 + 432));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10024E798();
  sub_10024EB78();
  sub_10023E7C0();
  v44 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_isBeta);
  *(v0 + 488) = &type metadata for Bool;
  *(v0 + 464) = v44;
  sub_10008B5D0((v0 + 464), (v0 + 496));
  swift_isUniquelyReferenced_nonNull_native();
  sub_10024E798();
  sub_10023E7C0();
  v45 = *(v13 + OBJC_IVAR____TtC9storekitd6Client_isAppStoreSigned);
  *(v0 + 552) = &type metadata for Bool;
  *(v0 + 528) = v45;
  sub_10008B5D0((v0 + 528), (v0 + 560));
  swift_isUniquelyReferenced_nonNull_native();
  sub_10024E798();
  sub_10024E774();
  sub_10023E7C0();
  *(v0 + 848) = *v51;
  *(v0 + 856) = [objc_allocWithZone(AMSEngagementRequest) init];
  v46 = swift_task_alloc();
  *(v0 + 864) = v46;
  *v46 = v0;
  v46[1] = sub_10024AC28;
  v47 = *(v0 + 824);

  return sub_10024B68C(v47);
}

uint64_t sub_10024AC28()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_10008BEFC();
  *v6 = v5;
  *(v3 + 872) = v0;

  if (v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10024AD30()
{
  sub_1000B02BC();
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  (*(v4 + 8))(v3, v5);
  [v1 setURL:v9];

  sub_100223354(v2);
  sub_100106CE0();

  v10 = sub_100107174();
  sub_10024DF20(v10, v11);
  v13 = sub_1001A81B0(v12);
  [v1 setAccount:v13];

  v14 = type metadata accessor for ExternalGatewaySheet();
  v0[110] = v14;
  v15 = (v6 + *(v14 + 32));
  v0[111] = *v15;
  v0[112] = v15[1];
  v16 = String._bridgeToObjectiveC()();
  [v1 setLogKey:v16];

  [v1 setAnonymousMetrics:1];
  v17 = swift_task_alloc();
  v0[113] = v17;
  *v17 = v0;
  v17[1] = sub_10024AEBC;

  return sub_10024BCA8();
}

uint64_t sub_10024AEBC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 912) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024B294()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 944) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024B580()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_10024B5F0()
{
  sub_1000B0004();
  v1 = *(v0 + 936);
  v2 = *(v0 + 856);
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_100098AC4();

  return v3();
}

uint64_t sub_10024B68C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_100080FB4(&unk_1003D0540);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10024B728, 0, 0);
}

uint64_t sub_10024B728()
{
  sub_1000B0004();
  v1 = v0[22];
  v3 = sub_1001A7AB4(v2);
  v4 = type metadata accessor for ExternalGatewaySheet();
  v0[24] = v4;
  v0[25] = [v3 URLForKey:*(v1 + *(v4 + 28))];
  swift_unknownObjectRelease();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10024B88C;
  v5 = swift_continuation_init();
  v0[17] = sub_100080FB4(&unk_1003CEE10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10012C050;
  v0[13] = &unk_100391DC0;
  v0[14] = v5;
  v6 = sub_10024E940();
  [v6 v7];

  return _swift_continuation_await(v0 + 2, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10024B88C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024B988()
{
  sub_10008BE9C();
  v1 = *(v0 + 144);

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100098AA4();

  return v2();
}

uint64_t sub_10024BCA8()
{
  *(v1 + 912) = v0;
  sub_100098AD0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10024BCD4()
{
  sub_1000B02BC();
  v1 = v0[114];
  v2 = objc_opt_self();
  v0[115] = v2;
  v0[116] = *v1;
  v3 = sub_1001A81B0(v2);
  sub_1000B00A8();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 identifierStoreWithAccount:v3 bagNamespace:v4 bag:sub_1001A7AB4(v4)];
  v0[117] = v5;
  swift_unknownObjectRelease();

  v0[2] = v0;
  v0[7] = v0 + 113;
  v0[3] = sub_10024BE84;
  v6 = swift_continuation_init();
  v7 = sub_100080FB4(&qword_1003D3420);
  v0[118] = v7;
  v0[38] = v7;
  v0[31] = _NSConcreteStackBlock;
  v0[32] = 1107296256;
  v0[33] = sub_10024CCF8;
  v0[34] = &unk_100391D70;
  v0[35] = v6;
  [v5 resultWithCompletion:v0 + 31];

  return _swift_continuation_await(v0 + 2, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10024BE84()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 952) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024BF80()
{
  sub_1000B02BC();
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[115];
  v4 = v0[113];
  v0[120] = v4;

  v5 = sub_1001A81B0([v4 setIncludeAccountMatchStatus:1]);
  sub_1000B00A8();
  v6 = String._bridgeToObjectiveC()();
  v0[121] = [v3 identifierStoreWithAccount:v5 bagNamespace:v6 bag:sub_1001A7AB4(v6)];
  swift_unknownObjectRelease();

  v0[10] = v0;
  v0[15] = v0 + 111;
  v0[11] = sub_10024C120;
  v7 = swift_continuation_init();
  v0[46] = v1;
  v0[39] = _NSConcreteStackBlock;
  v0[40] = 1107296256;
  v0[41] = sub_10024CCF8;
  v0[42] = &unk_100391D98;
  v0[43] = v7;
  v8 = sub_10024E940();
  [v8 v9];

  return _swift_continuation_await(v0 + 10, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10024C120()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 976) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10024C21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000D40B0();
  sub_1001077D8();
  v57 = *(v18 + 960);
  v19 = *(v18 + 888);

  v20 = sub_10008E5A4(0, &qword_1003D08B0);
  v21 = sub_1001891F4(0x644972657375, 0xE600000000000000, 1);
  sub_100080FB4(&unk_1003D28A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002ED2A0;
  *(v22 + 32) = v21;
  v58 = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = sub_10024E940();
  v26 = [v24 v25];

  sub_10024EB50();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100080FB4(&unk_1003D18F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED290;
  *(v18 + 792) = 0x734E72657375;
  *(v18 + 800) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_1000C446C();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000013;
  *(inited + 80) = v28;
  sub_10024EB50();
  v29 = Dictionary.init(dictionaryLiteral:)();
  sub_10024D66C(v29);
  v30 = sub_1001891F4(0x6449746E65696C63, 0xE800000000000000, 0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1002ED2A0;
  *(v31 + 32) = v30;
  v32 = v30;
  Array._bridgeToObjectiveC()();
  sub_10024E94C();

  v33 = [v19 generateEventFieldsForKeys:v20];

  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10024D66C(v34);

  v35 = *(v18 + 928);
  sub_10024E6E8();
  sub_10024E848();
  AnyHashable.init<A>(_:)();
  v36 = (v35 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v37 = *(v35 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v38 = *(v35 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  *(v18 + 560) = &type metadata for String;
  *(v18 + 536) = v37;
  *(v18 + 544) = v38;
  sub_10008B5D0((v18 + 536), (v18 + 568));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10024EB30();
  sub_10023EE74(v18 + 568, v18 + 416, v39);
  sub_10008E550(v18 + 416);
  sub_10024E5EC();
  AnyHashable.init<A>(_:)();
  v40 = *v36;
  v41 = v36[1];
  *(v18 + 656) = &type metadata for String;
  *(v18 + 632) = v40;
  *(v18 + 640) = v41;
  sub_10008B5D0((v18 + 632), (v18 + 664));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10024EB30();
  sub_10023EE74(v18 + 664, v18 + 456, v42);
  sub_10008E550(v18 + 456);
  sub_10024E5B4();
  AnyHashable.init<A>(_:)();
  v43 = *(v35 + OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion);
  v44 = *(v35 + OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion + 8);
  *(v18 + 752) = &type metadata for String;
  *(v18 + 728) = v43;
  *(v18 + 736) = v44;
  sub_10008B5D0((v18 + 728), (v18 + 760));

  swift_isUniquelyReferenced_nonNull_native();
  sub_10024EB30();
  sub_10023EE74(v18 + 760, v18 + 496, v45);
  sub_10008E550(v18 + 496);
  sub_10024E618();
  AnyHashable.init<A>(_:)();
  sub_10024E838();
  *(v18 + 696) = 0xD000000000000012;
  sub_10024E7F4(v46);
  sub_10024EB30();
  sub_10023EE74(v18 + 600, v18 + 376, v47);
  sub_10008E550(v18 + 376);
  sub_10009F198();
  sub_10009F1B8();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, 1, 3, a11, v57, v58, a14, a15, a16, a17, a18);
}

void sub_10024CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v6 = [objc_allocWithZone(AMSEngagement) initWithBag:sub_1001A7AB4(a1)];
  swift_unknownObjectRelease();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  sub_10007EDA4(v7, qword_1003F26C8);
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x8000000100321CD0;
  String.append(_:)(v8);
  v9 = type metadata accessor for ExternalGatewaySheet();
  v40 = *(a4 + *(v9 + 36));
  LOBYTE(v45[0]) = v40;
  _print_unlocked<A, B>(_:_:)();
  v10 = (a4 + *(v9 + 32));
  v12 = *v10;
  v11 = v10[1];
  v13 = static os_log_type_t.default.getter();

  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v13))
  {
    v35 = v6;
    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136446466;
    v16._countAndFlagsBits = v12;
    v16._object = v11;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = sub_100080210(91, 0xE100000000000000, v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = sub_100080210(0, 0xE000000000000000, v45);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v35;
  }

  else
  {
  }

  sub_100080FB4(&unk_1003D18F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FC1B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000013;
  *(inited + 80) = 0x800000010031D650;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 144), "MessageResult");
  *(inited + 158) = -4864;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  strcpy((inited + 216), "StoreKitEclair");
  *(inited + 231) = -18;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = 0xD000000000000014;
  *(inited + 296) = 0x80000001002FC1E0;
  *&v43 = 0x6144746E65696C63;
  *(&v43 + 1) = 0xEA00000000006174;
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v21 = *(a5 + 16);
  *(inited + 384) = sub_100080FB4(&qword_1003CC200);
  *(inited + 360) = v21;

  AnyHashable.init<A>(_:)();
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = v37 & 1;
  *&v43 = 0x746C75736572;
  *(&v43 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_10008B634(a2, &v43, &unk_1003CCB70);
  if (v44)
  {
    sub_10008B5D0(&v43, (inited + 504));
  }

  else
  {
    v22 = Dictionary.init(dictionaryLiteral:)();
    *(inited + 528) = sub_100080FB4(&unk_1003CE640);
    *(inited + 504) = v22;
    if (v44)
    {
      sub_10008B69C(&v43, &unk_1003CCB70);
    }
  }

  *&v43 = 0x726F727265;
  *(&v43 + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (a3)
  {
    swift_getErrorValue();
    v44 = v41;
    v23 = sub_10009E720(&v43);
    (*(*(v41 - 8) + 16))(v23);
    sub_10008B5D0(&v43, (inited + 576));
  }

  else
  {
    *(inited + 600) = &type metadata for String;
    *(inited + 576) = 0;
    *(inited + 584) = 0xE000000000000000;
  }

  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v25._countAndFlagsBits = 0xD000000000000026;
  v25._object = 0x8000000100321D00;
  String.append(_:)(v25);
  LOBYTE(v42) = v40;
  _print_unlocked<A, B>(_:_:)();
  v26 = v43;
  v27 = static os_log_type_t.default.getter();

  v28 = Logger.logObject.getter();

  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 136446466;
    v42 = v30;
    *&v43 = 91;
    *(&v43 + 1) = 0xE100000000000000;
    v31._countAndFlagsBits = v12;
    v31._object = v11;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 8285;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v33 = sub_100080210(v43, *(&v43 + 1), &v42);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = sub_100080210(v26, *(&v26 + 1), &v42);

    *(v29 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t *sub_10024D5BC(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_10024D66C(uint64_t a1)
{
  swift_isUniquelyReferenced_nonNull_native();
  sub_10024E798();
  sub_10024DBE0(a1, sub_10024DBCC, 0, v3, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

id sub_10024D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  if (a3)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithPlacement:v5 context:v6.super.isa];

  return v7;
}

id sub_10024D78C()
{
  v1 = String._bridgeToObjectiveC()();

  sub_10008E5A4(0, &qword_1003D3438);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithServiceType:v1 placementInfo:isa];

  return v3;
}

uint64_t type metadata accessor for ExternalGatewaySheet()
{
  result = qword_1003D34A0;
  if (!qword_1003D34A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024D86C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024D8D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100080FB4(&qword_1003D2E78);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

  v34 = v2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_10011FF6C(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 48) + 40 * v18;
    if (a2)
    {
      v20 = *v19;
      v21 = *(v19 + 16);
      v38 = *(v19 + 32);
      v36 = v20;
      v37 = v21;
      sub_10008B5D0((*(v5 + 56) + 32 * v18), v35);
    }

    else
    {
      sub_1001060C4(v19, &v36);
      sub_100080F58(*(v5 + 56) + 32 * v18, v35);
    }

    result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v7 + 48) + 40 * v25;
    v31 = v36;
    v32 = v37;
    *(v30 + 32) = v38;
    *v30 = v31;
    *(v30 + 16) = v32;
    result = sub_10008B5D0(v35, (*(v7 + 56) + 32 * v25));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10024DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001060C4(a3, a1);

  return sub_100080F58(a4, a2);
}

uint64_t sub_10024DBE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_10024DFA0(a1, a2, a3, v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_10024DFDC(&v31);
    if (!*(&v32 + 1))
    {
      sub_100123174();
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_10008B5D0(v34, v27);
    v7 = *a5;
    v9 = sub_100212CF4(&v28);
    v10 = v7[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_100080FB4(&qword_1003CF348);
        _NativeDictionary.copy()();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_10024D8D0(v12, a4 & 1);
      v14 = sub_100212CF4(&v28);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_100080F58(v27, v26);
        sub_100080F0C(v27);
        sub_10008E550(&v28);
        v17 = (v16[7] + 32 * v9);
        sub_100080F0C(v17);
        sub_10008B5D0(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_10008B5D0(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10024DE24(void *a1)
{
  v2 = [a1 messageActions];

  if (!v2)
  {
    return 0;
  }

  sub_10008E5A4(0, &qword_1003D3430);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10024DE9C(void *a1)
{
  v2 = [a1 placementsMap];

  if (!v2)
  {
    return 0;
  }

  sub_100080FB4(&qword_1003D3428);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10024DF20(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setClientData:isa];
}

uint64_t sub_10024DFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

_OWORD *sub_10024DFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1001060C4(*(v3 + 48) + 40 * v10, &v14);
    sub_100080F58(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_10008B5D0(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_10008B69C(&v14, &qword_1003CE658);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10024E154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024E1B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D0540);
    v9 = a1 + *(a3 + 20);

    return sub_100081D0C(v9, a2, v8);
  }
}

void *sub_10024E258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D0540);
    v8 = v5 + *(a4 + 20);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

void sub_10024E2E4()
{
  type metadata accessor for Client(319);
  if (v0 <= 0x3F)
  {
    sub_1000B77F4();
    if (v1 <= 0x3F)
    {
      sub_10016D86C(319, &qword_1003CDCF8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AMSBagKey(319);
        if (v3 <= 0x3F)
        {
          sub_10016D86C(319, &unk_1003D34B0);
          if (v4 <= 0x3F)
          {
            sub_10016D86C(319, &qword_1003CD3C0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewaySheet.LinkOut(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10024E4DCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10024E518()
{
  result = qword_1003D34F8;
  if (!qword_1003D34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D34F8);
  }

  return result;
}

uint64_t sub_10024E5B4()
{
  strcpy((v0 + 824), "hostAppVersion");
  *(v0 + 839) = -18;
  return v0 + 824;
}

uint64_t sub_10024E5EC()
{
  *(v0 + 840) = 0x70704174736F68;
  *(v0 + 848) = 0xE700000000000000;
  return v0 + 840;
}

uint64_t sub_10024E618()
{
  *(v0 + 808) = 0x6369706F74;
  *(v0 + 816) = 0xE500000000000000;
  return v0 + 808;
}

uint64_t sub_10024E640()
{
  v2 = *(v0 + 448);

  return sub_10016FC08(v2);
}

void sub_10024E700(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_10024E730()
{
  *v0 = 0u;
  v0[1] = 0u;

  return swift_errorRetain();
}

void sub_10024E7C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v13;
  v16 = v12;

  String.append(_:)(*&v15);
}

uint64_t sub_10024E7F4@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 704) = a1;
  sub_10008B5D0((v1 + 696), (v1 + 600));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10024E868()
{
}

unint64_t sub_10024E890(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = v5;
  *(v4 + 12) = 2082;

  return sub_100080210(v3, v2, va);
}

uint64_t sub_10024E8B8@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 + a1;
  v5 = *(v3 + a1);
  v6 = *(v4 + 8);
  *(v2 + 560) = v1;
  *(v2 + 536) = v5;
  *(v2 + 544) = v6;
  sub_10008B5D0((v2 + 536), (v2 + 568));
}

uint64_t sub_10024E8FC@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  v5 = *v4;
  v6 = v4[1];
  *(v2 + 752) = v1;
  *(v2 + 728) = v5;
  *(v2 + 736) = v6;
  sub_10008B5D0((v2 + 728), (v2 + 760));
}

uint64_t sub_10024E970()
{
  v3 = *v2;
  v4 = v2[1];
  *(v1 + 656) = v0;
  *(v1 + 632) = v3;
  *(v1 + 640) = v4;
  sub_10008B5D0((v1 + 632), (v1 + 664));
}

void sub_10024E9B0()
{

  _StringGuts.grow(_:)(46);
}

uint64_t sub_10024E9D4()
{
}

unint64_t sub_10024E9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a17;
  v20 = a18;

  return sub_100080210(v19, v20, &a16);
}

void sub_10024EA0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v14;
  v18 = v15;

  String.append(_:)(*&v17);
}

id sub_10024EA30(uint64_t a1, const char *a2)
{

  return [v6 a2];
}

void sub_10024EA54(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 | 0xD;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  String.append(_:)(v3);
}

uint64_t sub_10024EA78()
{

  return swift_arrayDestroy();
}

void sub_10024EA94()
{

  sub_10024CD24(0, v0, v1, v3, v2);
}

unint64_t sub_10024EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v20 = a18;
  v21 = a19;

  return sub_100080210(v20, v21, &a17);
}

BOOL sub_10024EB8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10024EBAC()
{
}

uint64_t sub_10024EBCC()
{
}

void sub_10024EBEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v14;
  v17 = v13;

  String.append(_:)(*&v16);
}

void sub_10024EC0C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10024EC2C()
{
  v5 = 0;
  URL.path(percentEncoded:)(0);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  if (v5)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

uint64_t sub_10024ECE0(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_10024ECF4()
{
  sub_100098BB4();
  v4 = [sub_10024F364() integerForKey:?];
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10024EDF0;
  swift_continuation_init();
  v5 = sub_100080FB4(&qword_1003CEDB0);
  sub_10024F32C(v5);
  v0[11] = 1107296256;
  sub_10024F34C();
  [v4 valueWithCompletion:v2];

  return _swift_continuation_await(v1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10024EDF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10024EF88;
  }

  else
  {
    v2 = sub_10024EF00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024EF00()
{
  sub_100098BB4();
  v1 = v0[22];
  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10024EF88()
{
  sub_100098BB4();
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10024EFF4(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return sub_1000AFCB8();
}

uint64_t sub_10024F008()
{
  sub_100098BB4();
  v4 = [sub_10024F364() BOOLForKey:?];
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10024F104;
  swift_continuation_init();
  v5 = sub_100080FB4(&qword_1003CEDB0);
  sub_10024F32C(v5);
  v0[11] = 1107296256;
  sub_10024F34C();
  [v4 valueWithCompletion:v2];

  return _swift_continuation_await(v1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10024F104()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10024F29C;
  }

  else
  {
    v2 = sub_10024F214;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024F214()
{
  sub_100098BB4();
  v1 = v0[22];
  v2 = v0[18];
  v3 = [v2 BOOLValue];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10024F29C()
{
  sub_100098BB4();
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_10024F32C(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

void sub_10024F34C()
{
  v1[12] = sub_1000FF948;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_10024F398(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_10024F5F8(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_10024F78C(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_10024F980(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_10024FB00(int a1)
{
  v1 = *(&off_100399EE0 + ((-35 * (dword_1003D38B0 ^ 0x82 ^ qword_1003D3860)) ^ byte_10030D790[byte_100308F40[(-35 * (dword_1003D38B0 ^ 0x82 ^ qword_1003D3860))] ^ 0xB]) + 73);
  v2 = -35 * ((qword_1003D3860 + *v1) ^ 0x82);
  v3 = *(&off_100399EE0 + (byte_100308E40[byte_100305E54[v2 - 4] ^ 0xCD] ^ v2) - 156);
  v4 = &v7[*v3 ^ *v1];
  *v1 = (1228258013 * v4) ^ 0xC891BCBEBCEAD82;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v5 = 675097751 * ((v8 - 2022169286 - 2 * (v8 & 0x8778253A)) ^ 0xC43800AC);
  v8[0] = v5 ^ 0x51D;
  v8[1] = a1 - ((2 * a1) & 0xB17391FE) + 1488570623 + v5;
  LOBYTE(v3) = -35 * ((*v3 + *v1) ^ 0x82);
  (*(*(&off_100399EE0 + ((-35 * (dword_1003D38B0 ^ 0x82 ^ qword_1003D3860)) ^ byte_100308E40[byte_100305E50[(-35 * (dword_1003D38B0 ^ 0x82 ^ qword_1003D3860))] ^ 0xC7]) - 232) + (byte_100309048[(byte_100306058[v3 - 8] ^ 0x9E) - 8] ^ v3) + 3621))(v8);
  return (v8[2] - 671454635);
}

uint64_t sub_10024FD3C(uint64_t a1)
{
  v1 = *(&off_100399EE0 + ((-35 * ((qword_1003D3860 - dword_1003D3870) ^ 0x82)) ^ byte_100308E40[byte_100305E50[(-35 * ((qword_1003D3860 - dword_1003D3870) ^ 0x82))] ^ 0xC4]) + 112);
  v2 = -35 * ((qword_1003D3860 - *v1) ^ 0x82);
  v3 = *(&off_100399EE0 + (byte_100305F5C[(byte_10030055C[v2 - 12] ^ 0x30) - 12] ^ v2) - 25);
  v4 = *v1 ^ &v6 ^ *v3;
  *v1 = 1228258013 * v4 + 0x5804E9A2B9663D3ALL;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v8 = a1;
  v7[0] = 1504884919 * ((-271268910 - (v7 | 0xEFD4C3D2) + (v7 | 0x102B3C2D)) ^ 0xEBE88B36) + 2552;
  LOBYTE(v3) = -35 * ((*v3 + *v1) ^ 0x82);
  (*(*(&off_100399EE0 + ((-35 * (dword_1003D3870 ^ 0x82 ^ qword_1003D3860)) ^ byte_100309040[byte_100306050[(-35 * (dword_1003D3870 ^ 0x82 ^ qword_1003D3860))] ^ 0x6C]) - 173) + (byte_100309148[(byte_100306150[v3] ^ 0xB5) - 8] ^ v3) + 3741))(v7);
  return (v7[1] - 671454635);
}

uint64_t sub_100250098(uint64_t a1)
{
  v1 = *(&off_100399EE0 + (byte_100305F5C[(byte_10030055C[(-35 * ((qword_1003D3860 - dword_1003D3868) ^ 0x82)) - 12] ^ 0x30) - 12] ^ (-35 * ((qword_1003D3860 - dword_1003D3868) ^ 0x82))) - 34);
  v2 = *(&off_100399EE0 + ((-35 * ((qword_1003D3860 - *v1) ^ 0x82)) ^ byte_100308D40[byte_100305D50[(-35 * ((qword_1003D3860 - *v1) ^ 0x82))] ^ 0x8E]) - 97);
  v3 = &v5[*v1 + *v2];
  *v1 = 1228258013 * v3 - 0xC891BCBEBCEAD82;
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v7 = 786 - 210068311 * ((2 * (&v6 & 0x275361A0) - &v6 + 1487707740) ^ 0xFC3048B);
  v6 = a1;
  LOBYTE(v2) = -35 * (*v1 ^ 0x82 ^ *v2);
  return (*(*(&off_100399EE0 + ((-35 * ((qword_1003D3860 - dword_1003D3868) ^ 0x82)) ^ byte_100308E40[byte_100305E50[(-35 * ((qword_1003D3860 - dword_1003D3868) ^ 0x82))] ^ 0xB]) - 81) + (byte_100308E40[byte_100305E54[v2 - 4] ^ 0xF5] ^ v2) + 3619))(&v6);
}

uint64_t sub_100250298(uint64_t a1)
{
  v1 = *(&off_100399EE0 + ((-35 * ((qword_1003D3860 - dword_1003D3780) ^ 0x82)) ^ byte_100305F50[byte_100300550[(-35 * ((qword_1003D3860 - dword_1003D3780) ^ 0x82))] ^ 0x8C]) - 113);
  v2 = *(v1 - 4);
  v3 = *(&off_100399EE0 + (byte_100308E40[byte_100305E50[(-35 * ((qword_1003D3860 + v2) ^ 0x82))] ^ 0xC4] ^ (-35 * ((qword_1003D3860 + v2) ^ 0x82))) - 5);
  v4 = &v6[*v3 - v2];
  *(v1 - 4) = 1228258013 * v4 + 0x5804E9A2B9663D3ALL;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v8 = a1;
  v7 = 1564307779 * (((&v7 | 0xC35CDD75) + (~&v7 | 0x3CA3228A)) ^ 0x54511167) + 171;
  LOBYTE(v3) = -35 * ((*v3 + *(v1 - 4)) ^ 0x82);
  return (*(*(&off_100399EE0 + ((-35 * ((qword_1003D3860 - dword_1003D3780) ^ 0x82)) ^ byte_10030D790[byte_100308F40[(-35 * ((qword_1003D3860 - dword_1003D3780) ^ 0x82))] ^ 0xF4]) - 22) + (v3 ^ byte_100308E40[byte_100305E50[v3] ^ 0xC7]) + 3548))(&v7);
}

uint64_t sub_1002505F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(&off_100399EE0 + ((-35 * ((qword_1003D3860 + dword_1003D3840) ^ 0x82)) ^ byte_10030D790[byte_100308F40[(-35 * ((qword_1003D3860 + dword_1003D3840) ^ 0x82))] ^ 0xB]) + 68);
  v5 = -35 * (*v4 ^ qword_1003D3860 ^ 0x82);
  v6 = *(&off_100399EE0 + (byte_10030D79C[(byte_100308F44[v5 - 4] ^ 0xB) - 12] ^ v5) - 110);
  v7 = &v9[*v4 + *v6];
  *v4 = 1228258013 * v7 + 0x5804E9A2B9663D3ALL;
  *v6 = 1228258013 * (v7 ^ 0xC891BCBEBCEAD82);
  v13 = a4;
  v11 = (1361651671 * ((v10 - 309418394 - 2 * (v10 & 0xED8EA666)) ^ 0xA6E56A18)) ^ 0x891;
  v10[1] = a2;
  v10[2] = a1;
  v10[0] = a3;
  LODWORD(v6) = 1228258013 * ((*v6 + *v4) ^ 0xEBCEAD82);
  (*(*(&off_100399EE0 + ((-35 * ((qword_1003D3860 - dword_1003D3840) ^ 0x82)) ^ byte_100308E40[byte_100305E50[(-35 * ((qword_1003D3860 - dword_1003D3840) ^ 0x82))] ^ 0xC4]) - 35) + (byte_100308E40[byte_100305E54[v6 - 4] ^ 0xB] ^ v6) + 3662))(v10);
  return (v12 - 671454635);
}

uint64_t sub_1002507FC(uint64_t a1)
{
  v1 = *(&off_100399EE0 + ((-35 * ((qword_1003D3860 - dword_1003D3848) ^ 0x82)) ^ byte_10030D790[byte_100308F40[(-35 * ((qword_1003D3860 - dword_1003D3848) ^ 0x82))] ^ 0xF4]) + 158);
  v2 = -35 * ((qword_1003D3860 + *v1) ^ 0x82);
  v3 = *(&off_100399EE0 + (byte_100308E40[byte_100305E54[v2 - 4] ^ 0xF5] ^ v2) - 71);
  v4 = (*v3 + *v1) ^ &v6;
  *v1 = (1228258013 * v4) ^ 0xC891BCBEBCEAD82;
  *v3 = 1228258013 * (v4 ^ 0xC891BCBEBCEAD82);
  v7 = a1;
  v8 = 1092 - 1785193651 * ((&v7 & 0x7AB1488 | ~(&v7 | 0x7AB1488)) ^ 0xE754F5B);
  LOBYTE(v3) = -35 * (*v1 ^ 0x82 ^ *v3);
  (*(*(&off_100399EE0 + ((-35 * (dword_1003D3848 ^ 0x82 ^ qword_1003D3860)) ^ byte_100305F50[byte_100300550[(-35 * (dword_1003D3848 ^ 0x82 ^ qword_1003D3860))] ^ 0x8C]) - 114) + (byte_100308D44[(byte_100305D58[v3 - 8] ^ 0x60) - 4] ^ v3) + 3726))(&v7);
  return v9;
}

void sub_100250B5C(_DWORD *a1)
{
  v1 = *a1 ^ (1564307779 * ((((2 * a1) | 0x3ABEDB08) - a1 - 492793220) ^ 0x8A52A197));
  __asm { BRAA            X1, X17 }
}

void sub_100250DB8(uint64_t a1)
{
  v1 = 1037613739 * (a1 ^ 0xD1022D7F);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100250E30@<X0>(uint64_t a1@<X8>)
{
  v7 = (v1 + 1811109220) & 0x940CA7CF;
  *(v6 - 112) = v7 + 932 - ((((2 * (v6 - 112)) | 0x3F431690) - (v6 - 112) + 1616803000) ^ 0x8AC475B) * v3;
  *(v6 - 104) = a1;
  (*(v4 + 8 * (v7 + 2808)))(v6 - 112);
  v8 = *(v6 - 96);
  *(v6 - 104) = v2;
  *(v6 - 112) = v7 + 932 - ((v6 - 205607331 - 2 * ((v6 - 112) & 0xF3BEAECD)) ^ 0x64B362DE) * v3;
  (*(v4 + 8 * (v7 ^ 0xD08)))(v6 - 112);
  v9 = (-1292542870 * (*(v6 - 96) + v8) + *(v6 - 96) * v8 + 1816157156) * v5;
  v11[1] = (v9 ^ 0x6BF9FDAF) + (v7 ^ 0xF7BE3037) + ((2 * v9) & 0xD7F3FB5E);
  *(v6 - 104) = v2;
  *(v6 - 96) = v11;
  *(v6 - 112) = v7 - 435584651 * ((((v6 - 112) | 0x54EE6E68) - (v6 - 112) + ((v6 - 112) & 0xAB119190)) ^ 0x39DC743E) + 992;
  return (*(v4 + 8 * (v7 + 2627)))(v6 - 112);
}

uint64_t sub_1002511A4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = *(v6 + a5 + 16);
  v9 = (a2 + a5);
  *(v9 - 1) = *(v6 + a5);
  *v9 = v8;
  return (*(v7 + 8 * (((v5 == a5) * a4) ^ a3)))();
}

uint64_t sub_1002511D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = v3 + 32;
  v10 = (v6 ^ v9) + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v4 == v9) * v7) ^ (v5 + 2606))))();
}

void sub_1002511DC(_DWORD *a1)
{
  v1 = *a1 - 1504884919 * (((a1 | 0xE4FD304B) - a1 + (a1 & 0x1B02CFB4)) ^ 0x1F3E8750);
  v3[1] = (1037613739 * ((((v3 ^ 0x14431228) & 0x7F4B3278) + (v3 ^ 0x6B9C2DD4) - ((v3 ^ 0x6B9C2DD4) & 0x7F4B3278)) ^ 0xC5D532D3)) ^ (v1 - 2030747224);
  v2 = *(&off_100399EE0 + (v1 - 2541));
  (*(v2 + 8 * (v1 + 1094)))(v3);
  __asm { BRAA            X8, X17 }
}

void sub_10025135C()
{
  v0 = *(&off_100399EE0 + ((-35 * (dword_1003D3838 ^ 0x82 ^ qword_1003D3860)) ^ byte_100305F50[byte_100300550[(-35 * (dword_1003D3838 ^ 0x82 ^ qword_1003D3860))] ^ 0x8C]) + 34);
  v1 = *(v0 - 4);
  v2 = *(&off_100399EE0 + (byte_100308E40[byte_100305E50[(-35 * (v1 ^ qword_1003D3860 ^ 0x82))] ^ 0xC7] ^ (-35 * (v1 ^ qword_1003D3860 ^ 0x82))) - 202);
  v3 = &v5[*v2 - v1];
  *(v0 - 4) = 1228258013 * (v3 - 0xC891BCBEBCEAD82);
  *v2 = 1228258013 * (v3 ^ 0xC891BCBEBCEAD82);
  v6[1] = (1037613739 * ((((v6 | 0x1ABCBB7C) ^ 0xFFFFFFFE) - (~v6 | 0xE5434483)) ^ 0x344169FC)) ^ 0x86F54BA0;
  LOBYTE(v2) = -35 * ((*v2 + *(v0 - 4)) ^ 0x82);
  v4 = *(&off_100399EE0 + ((-35 * ((qword_1003D3860 + dword_1003D3838) ^ 0x82)) ^ byte_100309040[byte_100306050[(-35 * ((qword_1003D3860 + dword_1003D3838) ^ 0x82))] ^ 0x6C]) - 173);
  (*(v4 + 8 * ((v2 ^ byte_100308E40[byte_100305E50[v2] ^ 0xB]) + 3554)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100251610@<X0>(int a1@<W8>)
{
  *(v4 - 192) = v1 + ((v4 - 2062889335 - 2 * ((v4 - 192) & 0x850ACF49)) ^ 0x9B28421C) * v3 + a1;
  result = (*(v5 + 8 * (a1 + 2266)))(v4 - 192);
  *(v2 + 24) = 671412233;
  return result;
}

uint64_t sub_100251740()
{
  v4 = (v3 - 1507743400) & 0x59DE57FF;
  v8 = v3 - (&v8 ^ 0xE6A8AC10) * v1 + 1807;
  v9 = v6;
  (*(v0 + 8 * (v3 ^ 0xFC5)))(&v8);
  v9 = v7;
  v8 = v4 - (&v8 ^ 0xE6A8AC10) * v1 + 1463;
  (*(v0 + 8 * (v4 ^ 0xC9Du)))(&v8);
  return (v2 - 671454635);
}