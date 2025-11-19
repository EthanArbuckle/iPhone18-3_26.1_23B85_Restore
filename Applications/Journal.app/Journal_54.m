uint64_t sub_1005BFB6C()
{
  v58 = v0;
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[38];
  v53 = v0[52];

  v8 = *(v6 + 16);
  v8(v2, v7, v5);
  v8(v3, v1, v5);
  v8(v4, v53, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  if (v11)
  {
    v52 = v0[48];
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v17 = 136315394;
    v18 = Date.debugDescription.getter();
    v20 = v19;
    v51 = v10;
    v21 = *(v15 + 8);
    v21(v12, v16);
    v22 = sub_100008458(v18, v20, &v56);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v24 = v23;
    v21(v14, v16);
    v21(v52, v16);
    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v51, "Ended mindfulness session at %s and logged a mindfulness session for %f seconds", v17, 0x16u);
    sub_10000BA7C(v54);

    if ((static Runtime.isInternalBuild.getter() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
    v21(v13, v16);
    v21(v12, v16);
    if ((static Runtime.isInternalBuild.getter() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  Date.timeIntervalSince(_:)();
  if (v25 > 3600.0)
  {
    v27 = v0[51];
    v26 = v0[52];
    v28 = v0[43];
    v55 = v0[50];
    v29 = v0[39];
    *(v29 + OBJC_IVAR____TtC7Journal18MindfulnessManager_shouldShowTTRAlert) = 1;
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v30 = v57;
    v0[36] = v56;
    v0[37] = v30;
    v31._countAndFlagsBits = 0x7461447472617473;
    v31._object = 0xEB00000000203A65;
    String.append(_:)(v31);
    sub_10005C3F4();
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0x746144646E65202CLL;
    v33._object = 0xEB00000000203A65;
    String.append(_:)(v33);
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._object = 0x80000001008FD9A0;
    v35._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v35);
    Date.timeIntervalSince(_:)();
    Double.write<A>(to:)();
    v36._countAndFlagsBits = 0x73646E6F63657320;
    v36._object = 0xE800000000000000;
    String.append(_:)(v36);
    v37 = v0[36];
    v38 = v0[37];
    v21(v55, v28);
    v21(v27, v28);
    v21(v26, v28);
    v39 = (v29 + OBJC_IVAR____TtC7Journal18MindfulnessManager_ttrErrorDescription);
    *v39 = v37;
    v39[1] = v38;

    goto LABEL_8;
  }

LABEL_7:
  v40 = v0[51];
  v41 = v0[52];
  v42 = v0[43];
  v21(v0[50], v42);
  v21(v40, v42);
  v21(v41, v42);
LABEL_8:
  v44 = v0[62];
  v43 = v0[63];
  v45 = v0[61];
  v46 = v0[56];
  v47 = v0[43];
  v48 = v0[39];
  v44(v46, 1, 1, v47);
  swift_beginAccess();
  sub_100041B1C(v46, v48 + v45);
  swift_endAccess();
  v44(v46, 1, 1, v47);
  swift_beginAccess();
  sub_100041B1C(v46, v48 + v43);
  swift_endAccess();
  sub_10000BA7C((v0 + 2));

  v49 = v0[1];

  return v49();
}

uint64_t sub_1005C0134()
{
  sub_100004F84(v0 + 16, &qword_100AEAA10);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal18MindfulnessManager_startDate, &unk_100AD4790);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal18MindfulnessManager_endDate, &unk_100AD4790);

  v1 = OBJC_IVAR____TtC7Journal18MindfulnessManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7Journal18MindfulnessManager_calendar;
  v4 = type metadata accessor for Calendar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MindfulnessManager()
{
  result = qword_100AEA880;
  if (!qword_100AEA880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005C02F8()
{
  sub_100008F84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Calendar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1005C0434(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_1005BDB18(v8, a1, v6, v7, v9, v1 + v5);
}

void sub_1005C053C(char a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1005BE0BC(a1, v4, v5);
}

uint64_t sub_1005C05B0(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_1005BE318(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1005C06B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005BCEA0(a1, v4, v5, v6);
}

uint64_t sub_1005C076C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005BC52C(a1, v4, v5, v6);
}

char *sub_1005C0824(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView;
  v10 = [objc_opt_self() effectWithStyle:7];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  sub_1000F24EC(&unk_100AD4780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100941D70;
  v14 = objc_opt_self();
  *(v13 + 32) = [v14 clearColor];
  v15 = [v14 whiteColor];
  v16 = [v15 colorWithAlphaComponent:0.92];

  *(v13 + 40) = v16;
  *(v13 + 48) = [v14 whiteColor];
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  v18 = v17;
  v20 = v19;
  v21 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v21;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v22;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v18;
  v33 = v20;
  static UIView.Invalidating.subscript.setter();
  *&v4[v12] = v24;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for MaskedBlurView();
  v25 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  [v25 setOverrideUserInterfaceStyle:2];
  v26 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView;
  v27 = *&v25[OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView];
  [v25 bounds];
  [v27 setFrame:?];

  [*&v25[v26] setAutoresizingMask:18];
  v28 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  [*&v25[v26] setMaskView:*&v25[OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView]];
  v29 = *&v25[v28];
  [v25 bounds];
  [v29 setFrame:?];

  [*&v25[v28] setAutoresizingMask:18];
  [v25 addSubview:*&v25[v26]];

  return v25;
}

uint64_t sub_1005C0C0C(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurView;
  v4 = [objc_opt_self() effectWithStyle:7];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D70;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 clearColor];
  v9 = [v8 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.92];

  *(v7 + 40) = v10;
  *(v7 + 48) = [v8 whiteColor];
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  v11 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.setter();

  *(v1 + v6) = v14;
  type metadata accessor for MaskedBlurView();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1005C0FD0(char a1)
{
  v3 = OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView;
  v4 = *(v1 + OBJC_IVAR____TtC7Journal14MaskedBlurView_blurMaskView);
  if (a1)
  {
    static UnitPoint.top.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
    v5 = *(v1 + v3);
    static UnitPoint.bottom.getter();
  }

  else
  {
    static UnitPoint.leading.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
    v7 = *(v1 + v3);
    static UnitPoint.trailing.getter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.setter();
  v6 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  return static UIView.Invalidating.subscript.setter();
}

id sub_1005C11B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaskedBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005C1254()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

id sub_1005C15D4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CanvasGridCollectionView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_1005C1628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasGridCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005C16E0(uint64_t a1)
{
  v2[3] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[4] = v3;
  v2[5] = v5;

  return _swift_task_switch(sub_1005C1770, v3, v5);
}

uint64_t sub_1005C1770()
{
  v1 = v0[3];
  v2 = *(v1 + qword_100AEAAB0);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_1000F24EC(&qword_100AEABD8);
  *v4 = v0;
  v4[1] = sub_1005C1878;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10095F7A8, v3, v5);
}

uint64_t sub_1005C1878()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1005C19B0;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1005C1994;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005C19B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C1A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1005C1A38, 0, 0);
}

uint64_t sub_1005C1A38()
{
  v1 = *(*(v0 + 32) + qword_100AEAAA0);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1005C1AE4;

  return CKDatabase.records(for:desiredKeys:)(v1, 0);
}

uint64_t sub_1005C1AE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_1005C1C30, 0, 0);
  }
}

void sub_1005C1C84()
{

  v1 = *(v0 + qword_100AEAAB0);
}

id sub_1005C1CD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchRecordDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005C1D0C(uint64_t a1)
{

  v2 = *(a1 + qword_100AEAAB0);
}

uint64_t type metadata accessor for BatchRecordDownloadOperation()
{
  result = qword_100AEAAE0;
  if (!qword_100AEAAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C1E0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1005C1EA0, v4, v6);
}

uint64_t sub_1005C1EA0()
{
  v1 = v0[4];
  v2 = *(v1 + qword_100AEAAB0);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1000F24EC(&qword_100AEABD8);
  *v4 = v0;
  v4[1] = sub_1005C1FA8;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_10095F798, v3, v5);
}

uint64_t sub_1005C1FA8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1005C20E4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1005C20C4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005C20E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005C2150(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_1005C1A14(a1, a2, v6);
}

uint64_t sub_1005C2200(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032ECC;

  return sub_1005C1A14(a1, a2, v6);
}

uint64_t sub_1005C22B0(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for UUID();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for AssetType();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[37] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[38] = v5;
  v2[39] = v6;

  return _swift_task_switch(sub_1005C24D0, v5, v6);
}

uint64_t sub_1005C24D0()
{
  v1 = v0[16];
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    goto LABEL_86;
  }

  if ((*(v1 + 33) & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if (*(v1 + 34))
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  (*(v0[22] + 104))(v0[36], enum case for AssetType.photo(_:), v0[21]);
  v2 = sub_1003E4D90(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v6 = v0[36];
    v7 = v0[21];
    v8 = v0[22];
    *(v2 + 16) = v5;
    (*(v8 + 32))(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v6, v7);
    v1 = v0[16];
    if (*(v1 + 34))
    {
LABEL_8:
      (*(v0[22] + 104))(v0[35], enum case for AssetType.music(_:), v0[21]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
      }

      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        v2 = sub_1003E4D90(v9 > 1, v10 + 1, 1, v2);
      }

      v11 = v0[35];
      v12 = v0[21];
      v13 = v0[22];
      *(v2 + 16) = v10 + 1;
      (*(v13 + 32))(v2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10, v11, v12);
      v1 = v0[16];
    }

LABEL_13:
    if (*(v1 + 35))
    {
      (*(v0[22] + 104))(v0[34], enum case for AssetType.podcast(_:), v0[21]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
      }

      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1003E4D90(v14 > 1, v15 + 1, 1, v2);
      }

      v16 = v0[34];
      v17 = v0[21];
      v18 = v0[22];
      *(v2 + 16) = v15 + 1;
      (*(v18 + 32))(v2 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, v16, v17);
      v1 = v0[16];
      if ((*(v1 + 36) & 1) == 0)
      {
LABEL_15:
        if ((*(v1 + 37) & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_36;
      }
    }

    else if ((*(v1 + 36) & 1) == 0)
    {
      goto LABEL_15;
    }

    (*(v0[22] + 104))(v0[33], enum case for AssetType.book(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_1003E4D90(v19 > 1, v20 + 1, 1, v2);
    }

    v21 = v0[33];
    v22 = v0[21];
    v23 = v0[22];
    *(v2 + 16) = v20 + 1;
    (*(v23 + 32))(v2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, v21, v22);
    v1 = v0[16];
    if ((*(v1 + 37) & 1) == 0)
    {
LABEL_16:
      if ((*(v1 + 38) & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_41;
    }

LABEL_36:
    (*(v0[22] + 104))(v0[32], enum case for AssetType.visit(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v25 = *(v2 + 16);
    v24 = *(v2 + 24);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_1003E4D90(v24 > 1, v25 + 1, 1, v2);
    }

    v26 = v0[32];
    v27 = v0[21];
    v28 = v0[22];
    *(v2 + 16) = v25 + 1;
    (*(v28 + 32))(v2 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, v26, v27);
    v1 = v0[16];
    if ((*(v1 + 38) & 1) == 0)
    {
LABEL_17:
      if ((*(v1 + 39) & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_46;
    }

LABEL_41:
    (*(v0[22] + 104))(v0[31], enum case for AssetType.multiPinMap(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      v2 = sub_1003E4D90(v29 > 1, v30 + 1, 1, v2);
    }

    v31 = v0[31];
    v32 = v0[21];
    v33 = v0[22];
    *(v2 + 16) = v30 + 1;
    (*(v33 + 32))(v2 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v31, v32);
    v1 = v0[16];
    if ((*(v1 + 39) & 1) == 0)
    {
LABEL_18:
      if ((*(v1 + 40) & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    }

LABEL_46:
    (*(v0[22] + 104))(v0[30], enum case for AssetType.audio(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v35 = *(v2 + 16);
    v34 = *(v2 + 24);
    if (v35 >= v34 >> 1)
    {
      v2 = sub_1003E4D90(v34 > 1, v35 + 1, 1, v2);
    }

    v36 = v0[30];
    v37 = v0[21];
    v38 = v0[22];
    *(v2 + 16) = v35 + 1;
    (*(v38 + 32))(v2 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, v36, v37);
    v1 = v0[16];
    if ((*(v1 + 40) & 1) == 0)
    {
LABEL_19:
      if ((*(v1 + 43) & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_56;
    }

LABEL_51:
    (*(v0[22] + 104))(v0[29], enum case for AssetType.video(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v40 = *(v2 + 16);
    v39 = *(v2 + 24);
    if (v40 >= v39 >> 1)
    {
      v2 = sub_1003E4D90(v39 > 1, v40 + 1, 1, v2);
    }

    v41 = v0[29];
    v42 = v0[21];
    v43 = v0[22];
    *(v2 + 16) = v40 + 1;
    (*(v43 + 32))(v2 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40, v41, v42);
    v1 = v0[16];
    if ((*(v1 + 43) & 1) == 0)
    {
LABEL_20:
      if ((*(v1 + 44) & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }

LABEL_56:
    (*(v0[22] + 104))(v0[28], enum case for AssetType.link(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v45 = *(v2 + 16);
    v44 = *(v2 + 24);
    if (v45 >= v44 >> 1)
    {
      v2 = sub_1003E4D90(v44 > 1, v45 + 1, 1, v2);
    }

    v46 = v0[28];
    v47 = v0[21];
    v48 = v0[22];
    *(v2 + 16) = v45 + 1;
    (*(v48 + 32))(v2 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45, v46, v47);
    v1 = v0[16];
    if ((*(v1 + 44) & 1) == 0)
    {
LABEL_21:
      if ((*(v1 + 45) & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_66;
    }

LABEL_61:
    (*(v0[22] + 104))(v0[27], enum case for AssetType.contact(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v50 = *(v2 + 16);
    v49 = *(v2 + 24);
    if (v50 >= v49 >> 1)
    {
      v2 = sub_1003E4D90(v49 > 1, v50 + 1, 1, v2);
    }

    v51 = v0[27];
    v52 = v0[21];
    v53 = v0[22];
    *(v2 + 16) = v50 + 1;
    (*(v53 + 32))(v2 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50, v51, v52);
    v1 = v0[16];
    if ((*(v1 + 45) & 1) == 0)
    {
LABEL_22:
      if ((*(v1 + 46) & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_71;
    }

LABEL_66:
    (*(v0[22] + 104))(v0[26], enum case for AssetType.workoutRoute(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v55 = *(v2 + 16);
    v54 = *(v2 + 24);
    if (v55 >= v54 >> 1)
    {
      v2 = sub_1003E4D90(v54 > 1, v55 + 1, 1, v2);
    }

    v56 = v0[26];
    v57 = v0[21];
    v58 = v0[22];
    *(v2 + 16) = v55 + 1;
    (*(v58 + 32))(v2 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v55, v56, v57);
    v1 = v0[16];
    if ((*(v1 + 46) & 1) == 0)
    {
LABEL_23:
      if ((*(v1 + 47) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_76;
    }

LABEL_71:
    (*(v0[22] + 104))(v0[25], enum case for AssetType.workoutIcon(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v60 = *(v2 + 16);
    v59 = *(v2 + 24);
    if (v60 >= v59 >> 1)
    {
      v2 = sub_1003E4D90(v59 > 1, v60 + 1, 1, v2);
    }

    v61 = v0[25];
    v62 = v0[21];
    v63 = v0[22];
    *(v2 + 16) = v60 + 1;
    (*(v63 + 32))(v2 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v60, v61, v62);
    v1 = v0[16];
    if ((*(v1 + 47) & 1) == 0)
    {
LABEL_24:
      if ((*(v1 + 48) & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_81:
      (*(v0[22] + 104))(v0[23], enum case for AssetType.motionActivity(_:), v0[21]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
      }

      v70 = *(v2 + 16);
      v69 = *(v2 + 24);
      if (v70 >= v69 >> 1)
      {
        v2 = sub_1003E4D90(v69 > 1, v70 + 1, 1, v2);
      }

      v72 = v0[22];
      v71 = v0[23];
      v73 = v0[21];
      *(v2 + 16) = v70 + 1;
      (*(v72 + 32))(v2 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v71, v73);
      v1 = v0[16];
      goto LABEL_86;
    }

LABEL_76:
    (*(v0[22] + 104))(v0[24], enum case for AssetType.confetti(_:), v0[21]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003E4D90(0, *(v2 + 16) + 1, 1, v2);
    }

    v65 = *(v2 + 16);
    v64 = *(v2 + 24);
    if (v65 >= v64 >> 1)
    {
      v2 = sub_1003E4D90(v64 > 1, v65 + 1, 1, v2);
    }

    v66 = v0[24];
    v67 = v0[21];
    v68 = v0[22];
    *(v2 + 16) = v65 + 1;
    (*(v68 + 32))(v2 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v65, v66, v67);
    v1 = v0[16];
    if (*(v1 + 48))
    {
      goto LABEL_81;
    }

LABEL_86:
    v0[40] = v2;
    v74 = v0[19];
    v2 = v0[20];
    v5 = v0[18];
    UUID.init()();
    v4 = UUID.uuidString.getter();
    (*(v74 + 8))(v2, v5);
    v75 = sub_1007634AC(4);
    v77 = v76;
    v79 = v78;
    v81 = v80;

    v0[41] = v75;
    v0[42] = v77;
    v0[43] = v79;
    v0[44] = v81;
    v3 = *(v1 + 16);
    v0[45] = v3;
    if (v3 < 1)
    {
      __break(1u);
      goto LABEL_98;
    }

    v82 = v0[16];
    v5 = *v82;
    v0[46] = *v82;
    v3 = v82[1];
    v0[47] = v3;
    v0[48] = v82[3];
    v0[49] = 1;
    v2 = v3 - v5;
    if (v3 == v5)
    {
      goto LABEL_94;
    }

    if (v3 >= v5)
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v2 = sub_1003E4D90(v3 > 1, v5, 1, v2);
  }

  v0[11] = 0;
  swift_stdlib_random();
  v83 = v0[11];
  v84 = (v83 * v2) >> 64;
  v85 = v83 * v2;
  v86 = v0[46];
  if (v2 > v85)
  {
    v87 = (v86 - v0[47]) % (v0[47] - v86);
    if (v87 > v85)
    {
      do
      {
        v88 = v0[47] - v0[46];
        v0[15] = 0;
        swift_stdlib_random();
        v89 = v0[15];
      }

      while (v87 > v89 * v88);
      v84 = (v89 * v88) >> 64;
      v86 = v0[46];
    }
  }

  v5 = v86 + v84;
LABEL_94:
  v90 = v0[37];
  v0[5] = 0x207972746E45;
  v0[6] = 0xE600000000000000;
  v0[12] = 1;
  v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v91);

  v92._countAndFlagsBits = 23328;
  v92._object = 0xE200000000000000;
  String.append(_:)(v92);
  v93._countAndFlagsBits = static String._fromSubstring(_:)();
  String.append(_:)(v93);

  v94._countAndFlagsBits = 93;
  v94._object = 0xE100000000000000;
  String.append(_:)(v94);
  v95 = v0[5];
  v96 = v0[6];
  v0[50] = v96;

  v97 = swift_task_alloc();
  v0[51] = v97;
  *v97 = v0;
  v97[1] = sub_1005C329C;
  v98 = v0[48];
  v99 = v0[40];

  return sub_1005C396C(v90, &protocol witness table for MainActor, v95, v96, v99, v5, v98);
}

uint64_t sub_1005C329C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 416) = a1;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);

  return _swift_task_switch(sub_1005C3438, v4, v3);
}

uint64_t sub_1005C3438()
{
  v1 = *(v0[52] + 24);
  v0[13] = 0;
  v2 = [v1 save:v0 + 13];
  v3 = v0[13];
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000F24EC(&unk_100AE88B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940080;
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v0[7] = 0xD000000000000019;
    v0[8] = 0x80000001008FDAE0;
    swift_getErrorValue();
    v7._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v7);

    v8 = v0[7];
    v9 = v0[8];
    *(v6 + 56) = &type metadata for String;
    *(v6 + 32) = v8;
    *(v6 + 40) = v9;
    print(_:separator:terminator:)();
  }

  v10 = v0[49];
  if (v10 == v0[45])
  {

    sub_1000F24EC(&unk_100AE88B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100940080;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = 0xD000000000000014;
    *(v11 + 40) = 0x80000001008FDB00;
    print(_:separator:terminator:)();

    v12 = v0[1];

    return v12();
  }

  v14 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0[49] = v14;
  v15 = v0[46];
  v16 = v0[47];
  v17 = v16 - v15;
  if (v16 != v15)
  {
    if (v16 >= v15)
    {
      v0[11] = 0;
      swift_stdlib_random();
      v18 = v0[11];
      v19 = (v18 * v17) >> 64;
      v20 = v18 * v17;
      v21 = v0[46];
      if (v17 > v20)
      {
        v22 = (v21 - v0[47]) % (v0[47] - v21);
        if (v22 > v20)
        {
          do
          {
            v23 = v0[47] - v0[46];
            v0[15] = 0;
            swift_stdlib_random();
            v24 = v0[15];
          }

          while (v22 > v24 * v23);
          v19 = (v24 * v23) >> 64;
          v21 = v0[46];
        }
      }

      v16 = v21 + v19;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
  }

LABEL_16:
  v0[5] = 0x207972746E45;
  v25 = v0[37];
  v0[6] = 0xE600000000000000;
  v0[12] = v14;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 23328;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = static String._fromSubstring(_:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 93;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v0[5];
  v31 = v0[6];
  v0[50] = v31;

  v32 = swift_task_alloc();
  v0[51] = v32;
  *v32 = v0;
  v32[1] = sub_1005C329C;
  v33 = v0[48];
  v34 = v0[40];

  return sub_1005C396C(v25, &protocol witness table for MainActor, v30, v31, v34, v16, v33);
}

uint64_t sub_1005C396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v8[116] = v9;
  v8[115] = a7;
  v8[114] = a6;
  v8[113] = a5;
  v8[112] = a4;
  v8[111] = a3;
  v8[110] = a2;
  v8[109] = a1;
  v8[117] = *v9;
  sub_1000F24EC(&qword_100AD1420);
  v8[118] = swift_task_alloc();
  v11 = type metadata accessor for JournalFeatureFlags();
  v8[119] = v11;
  v8[120] = *(v11 - 8);
  v8[121] = swift_task_alloc();
  v12 = type metadata accessor for AssetPlacement();
  v8[122] = v12;
  v8[123] = *(v12 - 8);
  v8[124] = swift_task_alloc();
  v8[125] = sub_1000F24EC(&qword_100ADA970);
  v8[126] = swift_task_alloc();
  v13 = type metadata accessor for ConfettiAssetMetadata();
  v8[127] = v13;
  v8[128] = *(v13 - 8);
  v8[129] = swift_task_alloc();
  v14 = sub_1000F24EC(&qword_100AEABE0);
  v8[130] = v14;
  v8[131] = *(v14 - 8);
  v8[132] = swift_task_alloc();
  type metadata accessor for AttributeContainer();
  v8[133] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8D78);
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v8[136] = sub_1000F24EC(&qword_100AD8B30);
  v8[137] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8B38);
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v15 = type metadata accessor for MotionActivityAssetMetadata();
  v8[140] = v15;
  v8[141] = *(v15 - 8);
  v8[142] = swift_task_alloc();
  v8[143] = sub_1000F24EC(&qword_100ADA8A0);
  v8[144] = swift_task_alloc();
  v16 = type metadata accessor for WorkoutRouteAssetMetadata();
  v8[145] = v16;
  v8[146] = *(v16 - 8);
  v8[147] = swift_task_alloc();
  v8[148] = sub_1000F24EC(&qword_100ADA888);
  v8[149] = swift_task_alloc();
  v17 = type metadata accessor for WorkoutIconAssetMetadata();
  v8[150] = v17;
  v8[151] = *(v17 - 8);
  v8[152] = swift_task_alloc();
  v8[153] = sub_1000F24EC(&qword_100ADA8F0);
  v8[154] = swift_task_alloc();
  v18 = type metadata accessor for ContactAssetMetadata();
  v8[155] = v18;
  v8[156] = *(v18 - 8);
  v8[157] = swift_task_alloc();
  sub_1000F24EC(&qword_100AEABE8);
  v8[158] = swift_task_alloc();
  v19 = type metadata accessor for RandomVideoAssetGenerator.VideoAsset();
  v8[159] = v19;
  v8[160] = *(v19 - 8);
  v8[161] = swift_task_alloc();
  v8[162] = sub_1000F24EC(&qword_100AD8FA0);
  v8[163] = swift_task_alloc();
  v20 = type metadata accessor for AudioAssetMetadata();
  v8[164] = v20;
  v8[165] = *(v20 - 8);
  v8[166] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED30);
  v8[167] = swift_task_alloc();
  v21 = type metadata accessor for VisitAssetMetadata();
  v8[168] = v21;
  v8[169] = *(v21 - 8);
  v8[170] = swift_task_alloc();
  v8[171] = swift_task_alloc();
  v8[172] = swift_task_alloc();
  v8[173] = swift_task_alloc();
  v8[174] = sub_1000F24EC(&qword_100ADA8C0);
  v8[175] = swift_task_alloc();
  v22 = type metadata accessor for BookAssetMetadata();
  v8[176] = v22;
  v8[177] = *(v22 - 8);
  v8[178] = swift_task_alloc();
  v8[179] = sub_1000F24EC(&qword_100ADA958);
  v8[180] = swift_task_alloc();
  v23 = type metadata accessor for PodcastAssetMetadata();
  v8[181] = v23;
  v8[182] = *(v23 - 8);
  v8[183] = swift_task_alloc();
  v8[184] = sub_1000F24EC(&qword_100ADA8E0);
  v8[185] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADF198);
  v8[186] = swift_task_alloc();
  v24 = type metadata accessor for MusicAssetMetadata();
  v8[187] = v24;
  v8[188] = *(v24 - 8);
  v8[189] = swift_task_alloc();
  v25 = type metadata accessor for MediaViewType();
  v8[190] = v25;
  v8[191] = *(v25 - 8);
  v8[192] = swift_task_alloc();
  v8[193] = swift_task_alloc();
  v8[194] = sub_1000F24EC(&unk_100AEE0A0);
  v8[195] = swift_task_alloc();
  v26 = type metadata accessor for PhotoLibraryAssetMetadata();
  v8[196] = v26;
  v8[197] = *(v26 - 8);
  v8[198] = swift_task_alloc();
  v27 = type metadata accessor for URL();
  v8[199] = v27;
  v8[200] = *(v27 - 8);
  v8[201] = swift_task_alloc();
  v8[202] = swift_task_alloc();
  v8[203] = swift_task_alloc();
  v8[204] = swift_task_alloc();
  v8[205] = swift_task_alloc();
  v8[206] = swift_task_alloc();
  v8[207] = swift_task_alloc();
  v8[208] = swift_task_alloc();
  v8[209] = swift_task_alloc();
  v8[210] = swift_task_alloc();
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  v8[213] = type metadata accessor for AssetAttachment.AssetType(0);
  v8[214] = swift_task_alloc();
  v28 = type metadata accessor for UUID();
  v8[215] = v28;
  v8[216] = *(v28 - 8);
  v8[217] = swift_task_alloc();
  v8[218] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v8[219] = swift_task_alloc();
  v8[220] = swift_task_alloc();
  v8[221] = swift_task_alloc();
  v8[222] = swift_task_alloc();
  v8[223] = swift_task_alloc();
  v8[224] = swift_task_alloc();
  v8[225] = swift_task_alloc();
  v8[226] = swift_task_alloc();
  v8[227] = swift_task_alloc();
  v8[228] = swift_task_alloc();
  v8[229] = swift_task_alloc();
  v8[230] = swift_task_alloc();
  v8[231] = swift_task_alloc();
  v8[232] = swift_task_alloc();
  v8[233] = swift_task_alloc();
  v8[234] = swift_task_alloc();
  v8[235] = swift_task_alloc();
  v8[236] = swift_task_alloc();
  v8[237] = swift_task_alloc();
  v8[238] = swift_task_alloc();
  v8[239] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v8[240] = swift_task_alloc();
  v8[241] = swift_task_alloc();
  v8[242] = swift_task_alloc();
  v8[243] = swift_task_alloc();
  v8[244] = swift_task_alloc();
  v8[245] = swift_task_alloc();
  v8[246] = swift_task_alloc();
  v8[247] = swift_task_alloc();
  v8[248] = swift_task_alloc();
  v8[249] = swift_task_alloc();
  v8[250] = swift_task_alloc();
  v8[251] = swift_task_alloc();
  v8[252] = swift_task_alloc();
  v8[253] = swift_task_alloc();
  v8[254] = swift_task_alloc();
  v8[255] = swift_task_alloc();
  v29 = type metadata accessor for AssetSource();
  v8[256] = v29;
  v8[257] = *(v29 - 8);
  v8[258] = swift_task_alloc();
  v8[259] = swift_task_alloc();
  v8[260] = swift_task_alloc();
  v8[261] = swift_task_alloc();
  v8[262] = swift_task_alloc();
  v8[263] = swift_task_alloc();
  v8[264] = swift_task_alloc();
  v8[265] = swift_task_alloc();
  v8[266] = swift_task_alloc();
  v8[267] = swift_task_alloc();
  v8[268] = swift_task_alloc();
  v8[269] = swift_task_alloc();
  v8[270] = swift_task_alloc();
  v8[271] = swift_task_alloc();
  v30 = type metadata accessor for AssetType();
  v8[272] = v30;
  v8[273] = *(v30 - 8);
  v8[274] = swift_task_alloc();
  v8[275] = swift_task_alloc();
  v8[276] = swift_task_alloc();
  v8[277] = swift_task_alloc();
  v31 = type metadata accessor for EntryDateSource();
  v8[278] = v31;
  v8[279] = *(v31 - 8);
  v8[280] = swift_task_alloc();
  v32 = type metadata accessor for Date();
  v8[281] = v32;
  v8[282] = *(v32 - 8);
  v8[283] = swift_task_alloc();
  v8[284] = swift_task_alloc();
  v8[285] = swift_task_alloc();
  v8[286] = swift_task_alloc();
  v8[287] = swift_task_alloc();
  v8[288] = swift_task_alloc();
  v33 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[289] = v33;
  v8[290] = *(v33 - 8);
  v8[291] = swift_task_alloc();
  v8[292] = swift_task_alloc();
  v8[293] = swift_task_alloc();
  v34 = type metadata accessor for EntrySource();
  v8[294] = v34;
  v35 = *(v34 - 8);
  v8[295] = v35;
  v8[296] = *(v35 + 64);
  v8[297] = swift_task_alloc();
  v8[298] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v36 = dispatch thunk of Actor.unownedExecutor.getter();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v8[300] = v38;
  v8[299] = v36;

  return _swift_task_switch(sub_1005C4B40, v36, v38);
}

uint64_t sub_1005C4B40()
{
  v1 = *(v0 + 2384);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2360);
  v5 = *(v0 + 2352);
  v6 = *(v0 + 2320);
  v15 = *(v0 + 2344);
  v7 = *(v0 + 928);
  (*(v4 + 104))(v1, enum case for EntrySource.blankEntry(_:), v5);
  *(v0 + 2408) = *(v7 + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  (*(v4 + 16))(v2, v1, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 2416) = v9;
  (*(v4 + 32))(v9 + v8, v2, v5);
  *(v9 + ((v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  *(v0 + 2880) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v6 + 104);
  *(v0 + 2424) = v10;
  *(v0 + 2432) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v15);

  v11 = swift_task_alloc();
  *(v0 + 2440) = v11;
  v12 = type metadata accessor for EntryViewModel();
  *(v0 + 2448) = v12;
  *v11 = v0;
  v11[1] = sub_1005C4D68;
  v13 = *(v0 + 2344);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 672, v13, sub_1005ED4B0, v9, v12);
}

uint64_t sub_1005C4D68()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[293];
    v5 = v2[290];
    v6 = v2[289];
    v7 = *(v5 + 8);
    v2[307] = v7;
    v2[308] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    v8 = v2[300];
    v9 = v2[299];

    return _swift_task_switch(sub_1005C4F14, v9, v8);
  }
}

uint64_t sub_1005C4F14()
{
  v1 = v0[115];
  (*(v0[295] + 8))(v0[298], v0[294]);
  v0[309] = v0[84];
  if (v1)
  {
    v2 = v0[115];
    if ((v2 * 86400) >> 64 == (86400 * v2) >> 63)
    {
      if (((86400 * v2) & 0x8000000000000000) == 0)
      {
        v3 = v0[287];
        v4 = v0[282];
        v5 = v0[281];
        v6 = v0[280];
        v7 = v0[279];
        v8 = v0[278];
        sub_1006A699C(0x20000000000001);
        Date.init()();
        Date.addingTimeInterval(_:)();
        v9 = *(v4 + 8);
        v0[311] = v9;
        v0[312] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v9(v3, v5);
        (*(v7 + 104))(v6, enum case for EntryDateSource.custom(_:), v8);
        v10 = swift_task_alloc();
        v0[313] = v10;
        *v10 = v0;
        v11 = sub_1005C54F8;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v12 = v0[280];
  v13 = v0[279];
  v14 = v0[278];
  static Date.now.getter();
  (*(v13 + 104))(v12, enum case for EntryDateSource.custom(_:), v14);
  v10 = swift_task_alloc();
  v0[310] = v10;
  *v10 = v0;
  v11 = sub_1005C5184;
LABEL_6:
  v10[1] = v11;
  v15 = v0[288];
  v16 = v0[280];
  v17 = v0[110];
  v18 = v0[109];

  return sub_10078281C(v18, v17, v15, v16);
}

uint64_t sub_1005C5184()
{
  v1 = *v0;
  v2 = *(*v0 + 2304);
  v3 = *(*v0 + 2256);
  v4 = *(*v0 + 2248);
  v5 = *(*v0 + 2240);
  v6 = *(*v0 + 2232);
  v7 = *(*v0 + 2224);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 2400);
  v9 = *(v1 + 2392);

  return _swift_task_switch(sub_1005C5398, v9, v8);
}

uint64_t sub_1005C5398()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2880);
  v4 = *(v0 + 2336);
  v5 = *(v0 + 2312);
  v6 = *(v0 + 936);
  v7 = swift_allocObject();
  *(v0 + 2512) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v2(v4, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 2520) = v8;
  *v8 = v0;
  v8[1] = sub_1005C581C;
  v9 = *(v0 + 2448);
  v10 = *(v0 + 2336);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 856, v10, sub_1005ED548, v7, v9);
}

uint64_t sub_1005C54F8()
{
  v1 = *v0;
  v2 = *(*v0 + 2240);
  v3 = *(*v0 + 2232);
  v4 = *(*v0 + 2224);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 2400);
  v6 = *(v1 + 2392);

  return _swift_task_switch(sub_1005C56A8, v6, v5);
}

uint64_t sub_1005C56A8()
{
  (*(v0 + 2488))(*(v0 + 2304), *(v0 + 2248));
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2424);
  v3 = *(v0 + 2880);
  v4 = *(v0 + 2336);
  v5 = *(v0 + 2312);
  v6 = *(v0 + 936);
  v7 = swift_allocObject();
  *(v0 + 2512) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v2(v4, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 2520) = v8;
  *v8 = v0;
  v8[1] = sub_1005C581C;
  v9 = *(v0 + 2448);
  v10 = *(v0 + 2336);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 856, v10, sub_1005ED548, v7, v9);
}

uint64_t sub_1005C581C()
{
  v2 = *v1;
  *(*v1 + 2528) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 2456))(*(v2 + 2336), *(v2 + 2312));

    v4 = *(v2 + 2400);
    v5 = *(v2 + 2392);

    return _swift_task_switch(sub_1005C59B8, v5, v4);
  }
}

uint64_t sub_1005C59B8()
{
  v0[317] = v0[107];
  v1 = swift_task_alloc();
  v0[318] = v1;
  *v1 = v0;
  v1[1] = sub_1005C5A84;
  v2 = v0[109];

  return sub_100780A08(v2);
}

uint64_t sub_1005C5A84()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005C5BD8, v3, v2);
}

uint64_t sub_1005C5BD8()
{
  v1 = *(*(v0 + 904) + 16);
  *(v0 + 2552) = v1;
  if (!v1)
  {
LABEL_103:

    v196 = *(v0 + 8);
    v197 = *(v0 + 2536);

    return v196(v197);
  }

  v2 = *(v0 + 912);
  *(v0 + 2560) = sub_1000F24EC(&unk_100AE88B0);
  v3 = swift_allocObject();
  v494 = 1;
  *(v3 + 16) = xmmword_100940080;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x80000001008FDB20;
  print(_:separator:terminator:)();

  *(v0 + 112) = &off_100A59AA8;
  *(v0 + 120) = &off_100A59C08;
  v464 = v0 + 120;
  *(v0 + 128) = &off_100A59D68;
  v457 = v0 + 128;
  *(v0 + 2568) = [objc_allocWithZone(type metadata accessor for RandomVideoAssetGenerator()) init];
  v4 = [objc_allocWithZone(type metadata accessor for RandomAudioRecordingsGenerator()) init];
  *(v0 + 2576) = v4;
  if (v2 < 0)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v192 = swift_task_alloc();
    *(v0 + 2808) = v192;
    *(v192 + 16) = 1;
    v359 = swift_task_alloc();
    *(v0 + 2816) = v359;
    v360 = sub_1000F24EC(&qword_100AEABF0);
    *v359 = v0;
    v359[1] = sub_1005DDCB8;
    v165 = *(v0 + 880);
    v164 = *(v0 + 872);
    v170 = v360;
    v168 = sub_1005ED564;
    v163 = v0 + 824;
LABEL_98:
    v167 = v385 | 0x8000000000000000;
    v166 = 0xD000000000000024;
    v169 = v192;

    return withCheckedContinuation<A>(isolation:function:_:)(v163, v164, v165, v166, v167, v168, v169, v170);
  }

  if (!*(v0 + 912))
  {
LABEL_102:
    v195 = *(v0 + 2568);

    goto LABEL_103;
  }

  v451 = (v0 + 688);
  v365 = (v0 + 736);
  v391 = (v0 + 752);
  v500 = (v0 + 776);
  v412 = (v0 + 784);
  v434 = (v0 + 816);
  v510 = (v0 + 808);
  v519 = (v0 + 840);
  *(v0 + 2884) = *(*(v0 + 2184) + 80);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v5 = 0;
  size = CGRectZero.size;
  *(v0 + 136) = CGRectZero.origin;
  *(v0 + 2888) = enum case for AssetType.photo(_:);
  *(v0 + 2892) = enum case for AssetType.livePhoto(_:);
  *(v0 + 2896) = enum case for AssetType.video(_:);
  *(v0 + 2900) = enum case for AssetType.music(_:);
  *(v0 + 2904) = enum case for AssetType.podcast(_:);
  *(v0 + 2908) = enum case for AssetType.book(_:);
  *(v0 + 2912) = enum case for AssetType.audio(_:);
  *(v0 + 2916) = enum case for AssetType.visit(_:);
  *(v0 + 2920) = enum case for AssetType.multiPinMap(_:);
  *(v0 + 2924) = enum case for AssetType.genericMap(_:);
  *(v0 + 2928) = enum case for AssetType.link(_:);
  *(v0 + 2932) = enum case for AssetType.contact(_:);
  *(v0 + 2936) = enum case for AssetType.workoutIcon(_:);
  *(v0 + 2940) = enum case for AssetType.workoutRoute(_:);
  *(v0 + 2944) = enum case for AssetType.reflection(_:);
  *(v0 + 2948) = enum case for AssetType.stateOfMind(_:);
  *(v0 + 2952) = enum case for AssetType.motionActivity(_:);
  *(v0 + 2956) = enum case for AssetType.thirdPartyMedia(_:);
  *(v0 + 2960) = enum case for AssetType.placeholder(_:);
  v385 = "RandomEntry asset";
  *(v0 + 2964) = enum case for AssetType.streakEvent(_:);
  *(v0 + 2968) = enum case for AssetType.drawing(_:);
  *(v0 + 2972) = enum case for AssetType.confetti(_:);
  *(v0 + 2976) = enum case for AssetType.unknown(_:);
  v7 = enum case for AssetSource.unknown(_:);
  *(v0 + 2980) = enum case for AssetSource.unknown(_:);
  *(v0 + 2584) = UIFontTextStyleFootnote;
  *(v0 + 2592) = UIFontDescriptorSystemDesignRounded;
  *(v0 + 2984) = enum case for MotionActivityTypeEnum.walking(_:);
  *(v0 + 2988) = enum case for AssetSource.locationPicker(_:);
  *(v0 + 2992) = enum case for MediaViewType.podcast(_:);
  *(v0 + 2996) = v7;
  *(v0 + 3000) = enum case for MediaViewType.song(_:);
  *(v0 + 3004) = enum case for AssetPlacement.grid(_:);
  *(v0 + 3008) = enum case for JournalFeatureFlags.enhancedSync(_:);
  *(v0 + 152) = size;
  v8 = *(v0 + 2528);
  while (1)
  {
    *(v0 + 2608) = v5;
    *(v0 + 2600) = v8;
    v9 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v10 = *(v0 + 832);
    v11 = (v10 * v9) >> 64;
    v12 = v10 * v9;
    v13 = *(v0 + 2552);
    if (v9 > v12)
    {
      v14 = -v13 % v13;
      if (v14 > v12)
      {
        do
        {
          v15 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v16 = *(v0 + 680);
        }

        while (v14 > v16 * v15);
        v11 = (v16 * v15) >> 64;
        v13 = *(v0 + 2552);
      }
    }

    if (v11 >= v13)
    {
      __break(1u);
LABEL_119:
      v514 = *(v0 + 2988);
      v438 = *(v0 + 2980);
      v253 = *(v0 + 2256);
      v254 = *(v0 + 2248);
      v430 = *(v0 + 2160);
      v255 = *(v0 + 2056);
      v504 = *(v0 + 2048);
      v256 = *(v0 + 1904);
      v257 = *(v0 + 1872);
      v258 = *(v0 + 1864);
      v483 = *(v0 + 1384);
      v490 = *(v0 + 1376);
      v460 = *(v0 + 1368);
      v467 = *(v0 + 1360);
      v454 = *(v0 + 1352);
      v424 = *(v0 + 1344);
      v259 = *(v0 + 1336);
      v260 = swift_allocObject();
      *(v260 + 16) = xmmword_100940080;
      *(v260 + 56) = &type metadata for String;
      *(v260 + 32) = 0xD000000000000018;
      *(v260 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v261 = *(v253 + 56);
      v261(v256, 0, 1, v254);
      v261(v257, 1, 1, v254);
      v261(v258, 1, 1, v254);
      v497 = *(v255 + 104);
      v497(v259, v514, v504);
      v475 = *(v255 + 56);
      v475(v259, 0, 1, v504);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v261(v256, 0, 1, v254);
      v261(v257, 1, 1, v254);
      v261(v258, 1, 1, v254);
      v497(v259, v514, v504);
      v475(v259, 0, 1, v504);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v261(v256, 0, 1, v254);
      v261(v257, 1, 1, v254);
      v261(v258, 1, 1, v254);
      v497(v259, v514, v504);
      v475(v259, 0, 1, v504);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v261(v256, 0, 1, v254);
      v261(v257, 1, 1, v254);
      v261(v258, 1, 1, v254);
      v497(v259, v514, v504);
      v475(v259, 0, 1, v504);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8);
      v262 = *(v454 + 72);
      v263 = (*(v454 + 80) + 32) & ~*(v454 + 80);
      v264 = swift_allocObject();
      *(v264 + 16) = xmmword_100941FE0;
      v265 = v264 + v263;
      v266 = *(v454 + 16);
      v266(v265, v483, v424);
      v266(v265 + v262, v490, v424);
      v266(v265 + 2 * v262, v460, v424);
      v266(v265 + 3 * v262, v467, v424);
      sub_1006ADB18(v264);
      v497(v430, v438, v504);
      v239 = sub_10011CEC0(v430, _swiftEmptyArrayStorage);
      v267 = *(v454 + 8);
      v267(v467, v424);
      v267(v460, v424);
      v267(v490, v424);
      v267(v483, v424);
      goto LABEL_126;
    }

    v17 = *(v0 + 2888);
    v18 = *(v0 + 2216);
    v19 = *(v0 + 2208);
    v20 = *(v0 + 2184);
    v21 = *(v0 + 2176);
    v22 = *(v20 + 16);
    v23 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v20 + 72) * v11;
    *(v0 + 2616) = v22;
    *(v0 + 2624) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v18, v23, v21);
    v22(v19, v18, v21);
    v24 = (*(v20 + 88))(v19, v21);
    if (v24 == v17)
    {
      v191 = swift_allocObject();
      *(v191 + 16) = xmmword_100940080;
      *(v191 + 56) = &type metadata for String;
      *(v191 + 32) = 0xD000000000000013;
      *(v191 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v192 = swift_task_alloc();
      *(v0 + 2632) = v192;
      *(v192 + 16) = 1;
      v193 = swift_task_alloc();
      *(v0 + 2640) = v193;
      v194 = sub_1000F24EC(&qword_100AEABF0);
      *v193 = v0;
      v193[1] = sub_1005CAA34;
      v165 = *(v0 + 880);
      v164 = *(v0 + 872);
      v170 = v194;
      v168 = sub_1005ED67C;
      v163 = v0 + 848;
      goto LABEL_98;
    }

    if (v24 == *(v0 + 2892))
    {
      goto LABEL_5;
    }

    if (v24 == *(v0 + 2896))
    {
      v199 = swift_allocObject();
      *(v199 + 16) = xmmword_100940080;
      *(v199 + 56) = &type metadata for String;
      *(v199 + 32) = 0xD000000000000013;
      *(v199 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v200 = swift_task_alloc();
      *(v0 + 2704) = v200;
      *v200 = v0;
      v200[1] = sub_1005D1548;
      v201 = *(v0 + 1264);
      v202 = *(v0 + 880);
      v203 = *(v0 + 872);

      return sub_1006A580C(v201, v203, v202);
    }

    if (v24 == *(v0 + 2900))
    {
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100940080;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 32) = 0xD000000000000012;
      *(v25 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v26 = *(v0 + 112);
      v27 = *(v26 + 16);
      if (v27)
      {
        *v434 = 0;
        swift_stdlib_random();
        v28 = *v434 * v27;
        v29 = (*v434 * v27) >> 64;
        if (v27 > v28)
        {
          v30 = -v27 % v27;
          v31 = (v0 + 840);
          if (v30 > v28)
          {
            do
            {
              *v31 = 0;
              swift_stdlib_random();
              v31 = (v0 + 840);
            }

            while (v30 > *v519 * v27);
            v29 = (*v519 * v27) >> 64;
          }
        }

        if (v29 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_150;
        }

        swift_beginAccess();

        sub_100691A14(v29);
        swift_endAccess();
      }

      v46 = *(v0 + 2024);
      v47 = *(v0 + 1600);
      v48 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v47 + 48))(v46, 1, v48) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
        v53 = Data.init(contentsOf:options:)();
        if (v8)
        {
          v55 = *(v0 + 2216);
          v56 = *(v0 + 2184);
          v57 = *(v0 + 2176);
          v58 = *(v0 + 1664);
          v59 = *(v0 + 1600);
          v60 = *(v0 + 1592);

          (*(v59 + 8))(v58, v60);
          (*(v56 + 8))(v55, v57);
LABEL_71:
          v8 = 0;
          goto LABEL_6;
        }

        v111 = v53;
        v112 = v54;
        v113 = objc_allocWithZone(UIImage);
        sub_100049ED8(v111, v112);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v115 = [v113 initWithData:isa];

        sub_1000340DC(v111, v112);
        v116 = v111;
        if (!v115)
        {
          v448 = *(v0 + 2216);
          v117 = *(v0 + 2184);
          v118 = *(v0 + 2176);
          v119 = *(v0 + 1664);
          v120 = *(v0 + 1600);
          v121 = *(v0 + 1592);

          sub_1000340DC(v116, v112);
          (*(v120 + 8))(v119, v121);
LABEL_70:
          (*(v117 + 8))(v448, v118);
          goto LABEL_71;
        }

        v457 = v111;
        v464 = v112;
        v380 = *(v0 + 3000);
        v392 = *(v0 + 2900);
        v204 = *(v0 + 2256);
        v376 = *(v0 + 2248);
        v480 = *(v0 + 2200);
        v426 = *(v0 + 2192);
        v205 = *(v0 + 2184);
        v399 = v205;
        v471 = *(v0 + 2176);
        v501 = *(v0 + 2160);
        v435 = *(v0 + 2152);
        v372 = *(v0 + 2144);
        v520 = *(v0 + 2056);
        v495 = *(v0 + 2048);
        v419 = *(v0 + 2016);
        v362 = *(v0 + 1896);
        v386 = *(v0 + 1744);
        v406 = *(v0 + 1736);
        v511 = *(v0 + 1728);
        v413 = *(v0 + 1720);
        v442 = *(v0 + 1712);
        v206 = *(v0 + 1600);
        v207 = *(v0 + 1592);
        v369 = *(v0 + 1544);
        v208 = *(v0 + 1528);
        v366 = *(v0 + 1520);
        (*(v520 + 104))();

        (*(v206 + 56))(v419, 1, 1, v207);
        v420 = v115;
        Date.init()();
        (*(v204 + 56))(v362, 0, 1, v376);
        (*(v208 + 104))(v369, v380, v366);
        (*(v205 + 104))(v480, v392, v471);
        v393 = *(v520 + 16);
        v393(v501, v372, v495);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
        (*(v511 + 16))(v406, v386, v413);
        v22(v426, v480, v471);
        v209 = v501;
        v393(v435, v501, v495);
        v210 = sub_100285908(v406, v426, v435);
        v211 = *(v511 + 8);
        v211(v386, v413);
        v500 = *(v520 + 8);
        v500(v209, v495);
        (*(v399 + 8))(v480, v471);
        *v442 = v420;
        swift_storeEnumTagMultiPayload();
        v494 = v420;
        UUID.init()();
        v212 = UUID.uuidString.getter();
        v214 = v213;
        v211(v386, v413);
        type metadata accessor for AssetAttachment(0);
        v215 = swift_allocObject();
        *(v215 + 16) = 0;
        sub_1005ED56C(v442, v215 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v216 = (v215 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v216 = v212;
        v216[1] = v214;
        v217 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v510 = v210;
        if (*((*(v210 + v217) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v210 + v217) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_157:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v436 = *(v0 + 2048);
        v443 = *(v0 + 2144);
        v218 = *(v0 + 2016);
        v219 = *(v0 + 2008);
        v377 = *(v0 + 1904);
        v220 = *(v0 + 1896);
        v452 = *(v0 + 1664);
        v407 = *(v0 + 1600);
        v427 = *(v0 + 1592);
        v387 = *(v0 + 1544);
        v221 = *(v0 + 1528);
        v381 = *(v0 + 1520);
        v394 = *(v0 + 1512);
        v421 = *(v0 + 1504);
        v472 = *(v0 + 1496);
        v222 = *(v0 + 1488);
        v414 = *(v0 + 1480);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v218, v219, &unk_100AD6DD0);
        sub_1000082B4(v220, v377, &unk_100AD4790);
        (*(v221 + 16))(v222, v387, v381);
        (*(v221 + 56))(v222, 0, 1, v381);
        MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

        sub_1000340DC(v457, v464);
        (*(v221 + 8))(v387, v381);
        sub_100004F84(v220, &unk_100AD4790);
        sub_100004F84(v218, &unk_100AD6DD0);
        v500(v443, v436);
        (*(v407 + 8))(v452, v427);
        (*(v421 + 32))(v414, v394, v472);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E90);
        v223 = swift_allocObject();
        v224 = *(*v223 + 104);
        v225 = sub_1000F24EC(&qword_100AD6F70);
        (*(*(v225 - 8) + 56))(v223 + v224, 1, 1, v225);
        *(v223 + *(*v223 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v414, v223 + *(*v223 + 120), &qword_100ADA8E0);
        v226 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_124:
        v239 = v510;
        *(v510 + *v226) = v223;
LABEL_125:

        v8 = 0;
LABEL_126:
        *(v0 + 2832) = v239;
        *(v0 + 2824) = v8;
        v297 = *(v0 + 2608);
        v524 = *(v0 + 3008);
        v517 = *(v0 + 3004);
        v298 = *(v0 + 992);
        v299 = *(v0 + 984);
        v508 = *(v0 + 976);
        v300 = *(v0 + 968);
        v301 = *(v0 + 960);
        v302 = *(v0 + 952);
        v303 = *(v0 + 896);
        *(v0 + 576) = *(v0 + 888);
        *(v0 + 584) = v303;

        v304._countAndFlagsBits = 0x20746573734120;
        v304._object = 0xE700000000000000;
        String.append(_:)(v304);
        *(v0 + 768) = v297;
        v305._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v305);

        v306 = v239;
        v307 = objc_allocWithZone(NSAttributedString);
        v308 = String._bridgeToObjectiveC()();

        v309 = [v307 initWithString:v308];

        v310 = *(v306 + OBJC_IVAR____TtC7Journal5Asset_title);
        *(v306 + OBJC_IVAR____TtC7Journal5Asset_title) = v309;

        *v298 = static AssetPlacement.maxGridCount.getter();
        (*(v299 + 104))(v298, v517, v508);
        (*(v301 + 104))(v300, v524, v302);
        LOBYTE(v308) = JournalFeatureFlags.isEnabled.getter();
        (*(v301 + 8))(v300, v302);
        if (v308)
        {
          *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
          v311 = swift_task_alloc();
          *(v0 + 2848) = v311;
          *v311 = v0;
          v311[1] = sub_1005DEA30;
          v312 = *(v0 + 992);
          v313 = *(v0 + 880);
          v314 = *(v0 + 872);

          return sub_10056B238(v314, v313, v306, v312, 1);
        }

        else
        {
          v315 = swift_task_alloc();
          *(v0 + 2872) = v315;
          *v315 = v0;
          v315[1] = sub_1005DEE38;
          v316 = *(v0 + 992);
          v317 = *(v0 + 880);
          v318 = *(v0 + 872);

          return sub_1001F8424(v318, v317, v306, v316);
        }
      }

      v49 = *(v0 + 2216);
      v50 = *(v0 + 2184);
      v51 = *(v0 + 2176);
      v52 = *(v0 + 2024);
      goto LABEL_51;
    }

    if (v24 == *(v0 + 2904))
    {
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100940080;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 32) = 0xD000000000000015;
      *(v32 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v33 = *(v0 + 120);
      v34 = *(v33 + 16);
      if (v34)
      {
        *v412 = 0;
        swift_stdlib_random();
        v35 = *v412 * v34;
        v36 = (*v412 * v34) >> 64;
        if (v34 > v35)
        {
          v37 = -v34 % v34;
          v38 = (v0 + 808);
          if (v37 > v35)
          {
            do
            {
              *v38 = 0;
              swift_stdlib_random();
              v38 = (v0 + 808);
            }

            while (v37 > *v510 * v34);
            v36 = (*v510 * v34) >> 64;
          }
        }

        if (v36 >= *(v33 + 16))
        {
          goto LABEL_151;
        }

        swift_beginAccess();

        sub_100691A14(v36);
        swift_endAccess();
      }

      v100 = *(v0 + 2000);
      v101 = *(v0 + 1600);
      v102 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v101 + 48))(v100, 1, v102) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
        v103 = Data.init(contentsOf:options:)();
        if (!v8)
        {
          v138 = v104;
          v139 = v103;
          v140 = objc_allocWithZone(UIImage);
          sub_100049ED8(v139, v138);
          v141 = Data._bridgeToObjectiveC()().super.isa;
          v142 = [v140 initWithData:v141];

          sub_1000340DC(v139, v138);
          v143 = v139;
          if (!v142)
          {
            v448 = *(v0 + 2216);
            v117 = *(v0 + 2184);
            v118 = *(v0 + 2176);
            v144 = *(v0 + 1656);
            v145 = *(v0 + 1600);
            v146 = *(v0 + 1592);

            sub_1000340DC(v143, v138);
            (*(v145 + 8))(v144, v146);
            goto LABEL_70;
          }

          v444 = v139;
          v453 = v138;
          v388 = *(v0 + 2992);
          v400 = *(v0 + 2904);
          v232 = *(v0 + 2256);
          v382 = *(v0 + 2248);
          v395 = *(v0 + 2200);
          v415 = *(v0 + 2192);
          v512 = *(v0 + 2184);
          v458 = *(v0 + 2176);
          v496 = *(v0 + 2160);
          v422 = *(v0 + 2152);
          v378 = *(v0 + 2136);
          v521 = *(v0 + 2056);
          v473 = *(v0 + 2048);
          v233 = *(v0 + 1992);
          v367 = *(v0 + 1888);
          v465 = *(v0 + 1744);
          v408 = *(v0 + 1736);
          v502 = *(v0 + 1728);
          v481 = *(v0 + 1720);
          v428 = *(v0 + 1712);
          v363 = *(v0 + 1656);
          v234 = *(v0 + 1600);
          v235 = *(v0 + 1592);
          v373 = *(v0 + 1536);
          v236 = *(v0 + 1528);
          v370 = *(v0 + 1520);
          (*(v521 + 104))();

          (*(v234 + 16))(v233, v363, v235);
          (*(v234 + 56))(v233, 0, 1, v235);
          Date.init()();
          (*(v232 + 56))(v367, 0, 1, v382);
          (*(v236 + 104))(v373, v388, v370);
          (*(v512 + 104))(v395, v400, v458);
          v401 = *(v521 + 16);
          v401(v496, v378, v473);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
          (*(v502 + 16))(v408, v465, v481);
          v22(v415, v395, v458);
          v401(v422, v496, v473);
          v237 = sub_100285908(v408, v415, v422);
          v238 = *(v502 + 8);
          v238(v465, v481);
          v503 = *(v521 + 8);
          v503(v496, v473);
          (*(v512 + 8))(v395, v458);
          *v428 = v142;
          swift_storeEnumTagMultiPayload();
          v239 = v237;
          v513 = v142;
          UUID.init()();
          v240 = UUID.uuidString.getter();
          v242 = v241;
          v238(v465, v481);
          type metadata accessor for AssetAttachment(0);
          v243 = swift_allocObject();
          *(v243 + 16) = 0;
          sub_1005ED56C(v428, v243 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v244 = (v243 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v244 = v240;
          v244[1] = v242;
          v245 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v239 + v245) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v239 + v245) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v459 = *(v0 + 2048);
          v466 = *(v0 + 2136);
          v246 = *(v0 + 2008);
          v247 = *(v0 + 1992);
          v389 = *(v0 + 1904);
          v383 = *(v0 + 1888);
          v482 = *(v0 + 1656);
          v416 = *(v0 + 1600);
          v437 = *(v0 + 1592);
          v402 = *(v0 + 1536);
          v248 = *(v0 + 1528);
          v396 = *(v0 + 1520);
          v249 = *(v0 + 1488);
          v409 = *(v0 + 1464);
          v423 = *(v0 + 1456);
          v474 = *(v0 + 1448);
          v429 = *(v0 + 1440);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v247, v246, &unk_100AD6DD0);
          sub_1000082B4(v383, v389, &unk_100AD4790);
          (*(v248 + 16))(v249, v402, v396);
          (*(v248 + 56))(v249, 0, 1, v396);
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

          sub_1000340DC(v444, v453);
          (*(v248 + 8))(v402, v396);
          sub_100004F84(v383, &unk_100AD4790);
          sub_100004F84(v247, &unk_100AD6DD0);
          v503(v466, v459);
          (*(v416 + 8))(v482, v437);
          (*(v423 + 32))(v429, v409, v474);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80);
          v250 = swift_allocObject();
          v251 = *(*v250 + 104);
          v252 = sub_1000F24EC(&qword_100AD2A70);
          (*(*(v252 - 8) + 56))(v250 + v251, 1, 1, v252);
          *(v250 + *(*v250 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v429, v250 + *(*v250 + 120), &qword_100ADA958);
          *(v239 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v250;

          goto LABEL_125;
        }

        v105 = *(v0 + 2216);
        v106 = *(v0 + 2184);
        v107 = *(v0 + 2176);
        v108 = *(v0 + 1656);
        v109 = *(v0 + 1600);
        v110 = *(v0 + 1592);

        (*(v109 + 8))(v108, v110);
LABEL_67:
        (*(v106 + 8))(v105, v107);
        goto LABEL_71;
      }

      v49 = *(v0 + 2216);
      v50 = *(v0 + 2184);
      v51 = *(v0 + 2176);
      v52 = *(v0 + 2000);
LABEL_51:
      (*(v50 + 8))(v49, v51);

LABEL_52:

      sub_100004F84(v52, &unk_100AD6DD0);
      goto LABEL_6;
    }

    if (v24 == *(v0 + 2908))
    {
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_100940080;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 32) = 0xD000000000000012;
      *(v39 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v40 = *(v0 + 128);
      v41 = *(v40 + 16);
      if (v41)
      {
        *v391 = 0;
        swift_stdlib_random();
        v42 = *v391 * v41;
        v43 = (*v391 * v41) >> 64;
        if (v41 > v42)
        {
          v44 = -v41 % v41;
          v45 = (v0 + 776);
          if (v44 > v42)
          {
            do
            {
              *v45 = 0;
              swift_stdlib_random();
              v45 = (v0 + 776);
            }

            while (v44 > *v500 * v41);
            v43 = (*v500 * v41) >> 64;
          }
        }

        if (v43 >= *(v40 + 16))
        {
          goto LABEL_152;
        }

        swift_beginAccess();

        sub_100691A14(v43);
        swift_endAccess();
      }

      v130 = *(v0 + 1984);
      v131 = *(v0 + 1600);
      v132 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v131 + 48))(v130, 1, v132) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
        v133 = Data.init(contentsOf:options:)();
        if (!v8)
        {
          v147 = v133;
          v148 = v134;
          v149 = objc_allocWithZone(UIImage);
          sub_100049ED8(v147, v148);
          v150 = Data._bridgeToObjectiveC()().super.isa;
          v151 = [v149 initWithData:v150];

          sub_1000340DC(v147, v148);
          if (!v151)
          {
            v449 = *(v0 + 2216);
            v152 = *(v0 + 2184);
            v153 = *(v0 + 2176);
            v154 = *(v0 + 1648);
            v155 = *(v0 + 1600);
            v156 = *(v0 + 1592);

            sub_1000340DC(v147, v148);
            (*(v155 + 8))(v154, v156);
            (*(v152 + 8))(v449, v153);
            goto LABEL_71;
          }

          v469 = v148;
          v403 = *(v0 + 2908);
          v278 = *(v0 + 2256);
          v397 = *(v0 + 2248);
          v485 = *(v0 + 2200);
          v431 = *(v0 + 2192);
          v279 = *(v0 + 2184);
          v477 = *(v0 + 2176);
          v506 = *(v0 + 2160);
          v439 = *(v0 + 2152);
          v390 = *(v0 + 2128);
          v523 = *(v0 + 2056);
          v280 = *(v0 + 2048);
          v281 = *(v0 + 1880);
          v498 = *(v0 + 1744);
          v410 = *(v0 + 1736);
          v516 = *(v0 + 1728);
          v417 = *(v0 + 1720);
          v455 = *(v0 + 1712);
          (*(v523 + 104))();

          v445 = v151;
          Date.init()();
          (*(v278 + 56))(v281, 0, 1, v397);
          (*(v279 + 104))(v485, v403, v477);
          v404 = *(v523 + 16);
          v404(v506, v390, v280);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset()) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v516 + 16))(v410, v498, v417);
          v22(v431, v485, v477);
          v282 = v506;
          v404(v439, v506, v280);
          v283 = sub_100285908(v410, v431, v439);
          v284 = *(v516 + 8);
          v284(v498, v417);
          v507 = *(v523 + 8);
          v507(v282, v280);
          (*(v279 + 8))(v485, v477);
          *v455 = v445;
          swift_storeEnumTagMultiPayload();
          v486 = v445;
          UUID.init()();
          v285 = UUID.uuidString.getter();
          v287 = v286;
          v284(v498, v417);
          type metadata accessor for AssetAttachment(0);
          v288 = swift_allocObject();
          *(v288 + 16) = 0;
          sub_1005ED56C(v455, v288 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v289 = (v288 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v289 = v285;
          v289[1] = v287;
          v290 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v510 = v283;
          if (*((*(v510 + v290) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v510 + v290) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v432 = *(v0 + 2048);
          v440 = *(v0 + 2128);
          v291 = *(v0 + 1904);
          v292 = *(v0 + 1880);
          v456 = *(v0 + 1648);
          v293 = *(v0 + 1600);
          v446 = *(v0 + 1592);
          v294 = *(v0 + 1424);
          v425 = *(v0 + 1416);
          v478 = *(v0 + 1408);
          v462 = *(v0 + 1400);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v292, v291, &unk_100AD4790);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v147, v469);
          sub_100004F84(v292, &unk_100AD4790);
          v507(v440, v432);
          (*(v293 + 8))(v456, v446);
          (*(v425 + 32))(v462, v294, v478);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8);
          v223 = swift_allocObject();
          v295 = *(*v223 + 104);
          v296 = sub_1000F24EC(&qword_100AD4318);
          (*(*(v296 - 8) + 56))(v223 + v295, 1, 1, v296);
          *(v223 + *(*v223 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v462, v223 + *(*v223 + 120), &qword_100ADA8C0);
          v226 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
          goto LABEL_124;
        }

        v105 = *(v0 + 2216);
        v106 = *(v0 + 2184);
        v107 = *(v0 + 2176);
        v135 = *(v0 + 1648);
        v136 = *(v0 + 1600);
        v137 = *(v0 + 1592);

        (*(v136 + 8))(v135, v137);
        goto LABEL_67;
      }

      v52 = *(v0 + 1984);
      (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

      goto LABEL_52;
    }

    if (v24 == *(v0 + 2912))
    {
      break;
    }

    if (v24 == *(v0 + 2916))
    {
      goto LABEL_5;
    }

    if (v24 == *(v0 + 2920))
    {
      goto LABEL_119;
    }

    if (v24 == *(v0 + 2924))
    {
      v468 = *(v0 + 2988);
      v522 = *(v0 + 2980);
      v268 = *(v0 + 2256);
      v269 = *(v0 + 2248);
      v270 = *(v0 + 2056);
      v271 = *(v0 + 1904);
      v272 = *(v0 + 1872);
      v461 = *(v0 + 2048);
      v273 = *(v0 + 1864);
      v476 = *(v0 + 1384);
      v484 = *(v0 + 1352);
      v491 = *(v0 + 2160);
      v505 = *(v0 + 1376);
      v515 = *(v0 + 1344);
      v274 = *(v0 + 1336);
      v275 = swift_allocObject();
      *(v275 + 16) = xmmword_100940080;
      *(v275 + 56) = &type metadata for String;
      *(v275 + 32) = 0xD000000000000017;
      *(v275 + 40) = 0x80000001008FDC40;
      print(_:separator:terminator:)();

      Date.init()();
      v276 = *(v268 + 56);
      v276(v271, 0, 1, v269);
      v276(v272, 1, 1, v269);
      v276(v273, 1, 1, v269);
      v277 = *(v270 + 104);
      v277(v274, v468, v461);
      (*(v270 + 56))(v274, 0, 1, v461);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      v277(v491, v522, v461);
      (*(v484 + 16))(v505, v476, v515);
      v239 = sub_10033CC64(v491, v505);
      (*(v484 + 8))(v476, v515);
      goto LABEL_126;
    }

    if (v24 != *(v0 + 2928))
    {
      if (v24 == *(v0 + 2932))
      {
        v192 = swift_task_alloc();
        *(v0 + 2760) = v192;
        *(v192 + 16) = 1;
        v319 = swift_task_alloc();
        *(v0 + 2768) = v319;
        v320 = sub_1000F24EC(&qword_100AEABF0);
        *v319 = v0;
        v319[1] = sub_1005DB91C;
        v165 = *(v0 + 880);
        v164 = *(v0 + 872);
        v170 = v320;
        v168 = sub_1005ED67C;
        v163 = v0 + 712;
        goto LABEL_98;
      }

      if (v24 == *(v0 + 2936))
      {
        v192 = swift_task_alloc();
        *(v0 + 2776) = v192;
        *(v192 + 16) = 1;
        v335 = swift_task_alloc();
        *(v0 + 2784) = v335;
        v336 = sub_1000F24EC(&qword_100AEABF0);
        *v335 = v0;
        v335[1] = sub_1005DC438;
        v165 = *(v0 + 880);
        v164 = *(v0 + 872);
        v170 = v336;
        v168 = sub_1005ED67C;
        v163 = v0 + 720;
        goto LABEL_98;
      }

      if (v24 == *(v0 + 2940))
      {
        v337 = sub_1005ED3EC(v24, -90.0, 90.0);
        v339 = v338;
        sub_1005ED3EC(v337, -180.0, 180.0);
        v341 = v340;
        *v365 = _swiftEmptyArrayStorage;
        v163 = sub_1006A699C(5001);
        if (v163 + 5000 < 1)
        {
          __break(1u);
LABEL_159:
          __break(1u);
          return withCheckedContinuation<A>(isolation:function:_:)(v163, v164, v165, v166, v167, v168, v169, v170);
        }

        v342 = v163 + 4999;
        v343 = 1;
        while (1)
        {
          v344 = sub_1005ED3EC(v163, -0.01, 0.01);
          v339 = v339 + v345;
          sub_1005ED3EC(v344, -0.01, 0.01);
          v341 = v341 + v346;
          [objc_allocWithZone(CLLocation) initWithLatitude:v339 longitude:v341];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v365 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v365 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v163 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (!v342)
          {
            break;
          }

          --v342;
          if (__OFADD__(v343++, 1))
          {
            __break(1u);
            goto LABEL_157;
          }
        }

        v374 = *(v0 + 2940);
        v348 = *(v0 + 2304);
        v368 = *(v0 + 2280);
        v349 = *(v0 + 2256);
        v350 = *(v0 + 2248);
        v371 = *(v0 + 2200);
        v398 = *(v0 + 2192);
        v499 = *(v0 + 2184);
        v470 = *(v0 + 2176);
        v487 = *(v0 + 2160);
        v405 = *(v0 + 2152);
        v525 = *(v0 + 2056);
        v509 = *(v0 + 2080);
        v518 = *(v0 + 2048);
        v411 = *(v0 + 1904);
        v418 = *(v0 + 1872);
        v351 = *(v0 + 1792);
        v463 = *(v0 + 1784);
        v479 = *(v0 + 1744);
        v379 = *(v0 + 1736);
        v492 = *(v0 + 1728);
        v384 = *(v0 + 1720);
        v433 = *(v0 + 1176);
        v441 = *(v0 + 1168);
        v447 = *(v0 + 1152);
        v450 = *(v0 + 1160);
        (*(v525 + 104))();
        Date.init()();
        Date.addingTimeInterval(_:)();
        v361 = *(v349 + 8);
        v361(v348, v350);
        v364 = *(v349 + 56);
        v364(v351, 0, 1, v350);
        Date.init()();
        Date.addingTimeInterval(_:)();
        v361(v348, v350);
        sub_1006A699C(0x20000000000001);
        Date.addingTimeInterval(_:)();
        v361(v368, v350);
        v364(v463, 0, 1, v350);
        sub_1006A699C(0x20000000000001);
        sub_1006A699C(0x20000000000001);
        (*(v499 + 104))(v371, v374, v470);
        v375 = *(v525 + 16);
        v375(v487, v509, v518);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
        (*(v492 + 16))(v379, v479, v384);
        v22(v398, v371, v470);
        v375(v405, v487, v518);
        v352 = sub_100285908(v379, v398, v405);
        (*(v492 + 8))(v479, v384);
        v493 = *(v525 + 8);
        v493(v487, v518);
        (*(v499 + 8))(v371, v470);
        sub_1000082B4(v351, v411, &unk_100AD4790);
        sub_1000082B4(v463, v418, &unk_100AD4790);
        v239 = v352;
        WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
        sub_100004F84(v463, &unk_100AD4790);
        sub_100004F84(v351, &unk_100AD4790);
        v493(v509, v518);
        (*(v441 + 32))(v447, v433, v450);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E20);
        v353 = swift_allocObject();
        v354 = *(*v353 + 104);
        v355 = sub_1000F24EC(&qword_100AD5B28);
        (*(*(v355 - 8) + 56))(v353 + v354, 1, 1, v355);
        *(v353 + *(*v353 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v447, v353 + *(*v353 + 120), &qword_100ADA8A0);
        *(v239 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v353;

        goto LABEL_126;
      }

      if (v24 != *(v0 + 2944))
      {
        if (v24 == *(v0 + 2948))
        {
          v356 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v356, *(v0 + 2980), *(v0 + 2048));
          v239 = sub_10019BB28(v356, 0, 0);
          goto LABEL_126;
        }

        if (v24 == *(v0 + 2952))
        {
          v192 = swift_task_alloc();
          *(v0 + 2792) = v192;
          *(v192 + 16) = 1;
          v357 = swift_task_alloc();
          *(v0 + 2800) = v357;
          v358 = sub_1000F24EC(&qword_100AEABF0);
          *v357 = v0;
          v357[1] = sub_1005DCF44;
          v165 = *(v0 + 880);
          v164 = *(v0 + 872);
          v170 = v358;
          v168 = sub_1005ED67C;
          v163 = v0 + 760;
          goto LABEL_98;
        }

        if (v24 != *(v0 + 2956) && v24 != *(v0 + 2960) && v24 != *(v0 + 2964) && v24 != *(v0 + 2968))
        {
          if (v24 == *(v0 + 2972))
          {
            goto LABEL_153;
          }

          if (v24 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }

LABEL_5:
      (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
      goto LABEL_6;
    }

    v122 = *(v0 + 1944);
    v123 = *(v0 + 1936);
    v124 = *(v0 + 1600);
    v125 = *(v0 + 1592);
    v126 = [objc_allocWithZone(LPLinkMetadata) init];
    *(v0 + 2712) = v126;
    URL.init(string:)();
    sub_1000082B4(v122, v123, &unk_100AD6DD0);
    v127 = *(v124 + 48);
    if (v127(v123, 1, v125) == 1)
    {
      v129 = 0;
    }

    else
    {
      v157 = *(v0 + 1936);
      v158 = *(v0 + 1600);
      v159 = *(v0 + 1592);
      URL._bridgeToObjectiveC()(v128);
      v129 = v160;
      (*(v158 + 8))(v157, v159);
    }

    v161 = *(v0 + 1928);
    v162 = *(v0 + 1592);
    [v126 setURL:v129];

    URL.init(string:)();
    v163 = (v127)(v161, 1, v162);
    if (v163 == 1)
    {
      goto LABEL_159;
    }

    v172 = *(v0 + 1928);
    v173 = *(v0 + 1600);
    v174 = *(v0 + 1592);
    URL._bridgeToObjectiveC()(v171);
    v176 = v175;
    v177 = *(v173 + 8);
    *(v0 + 2720) = v177;
    *(v0 + 2728) = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v177(v172, v174);
    [v126 setOriginalURL:v176];

    *(v0 + 656) = 0x20656C707041;
    *(v0 + 664) = 0xE600000000000000;
    *(v0 + 696) = 0;
    swift_stdlib_random();
    v178 = *(v0 + 696);
    v489 = v127;
    if (((100 * v178) & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      v179 = (v178 * 0x64uLL) >> 64;
    }

    else
    {
      v180 = (v0 + 688);
      do
      {
        *v180 = 0;
        swift_stdlib_random();
        v180 = (v0 + 688);
      }

      while (((100 * *v451) & 0xFFFFFFFFFFFFFFF0) == 0);
      v179 = (*v451 * 0x64uLL) >> 64;
    }

    v181 = *(v0 + 1944);
    v182 = *(v0 + 1920);
    v183 = *(v0 + 1592);
    *(v0 + 864) = v179;
    v184._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v184);

    v185 = String._bridgeToObjectiveC()();

    [v126 setTitle:v185];

    sub_1000082B4(v181, v182, &unk_100AD6DD0);
    if (v489(v182, 1, v183) != 1)
    {
      v321 = *(v0 + 2980);
      v322 = *(v0 + 2104);
      v323 = *(v0 + 2056);
      v324 = *(v0 + 2048);
      v325 = *(v0 + 1616);
      v326 = *(v0 + 1608);
      v327 = *(v0 + 1600);
      v328 = *(v0 + 1592);
      (*(v327 + 32))(v325, *(v0 + 1920), v328);
      (*(v323 + 104))(v322, v321, v324);
      (*(v327 + 16))(v326, v325, v328);
      Date.init()();
      v329 = swift_task_alloc();
      *(v0 + 2736) = v329;
      *v329 = v0;
      v329[1] = sub_1005D69DC;
      v330 = *(v0 + 2288);
      v331 = *(v0 + 2104);
      v332 = *(v0 + 1608);
      v333 = *(v0 + 880);
      v334 = *(v0 + 872);

      return sub_1001DEA08(v334, v333, v331, v332, 0, 0, v330);
    }

    v186 = *(v0 + 2216);
    v187 = *(v0 + 2184);
    v188 = *(v0 + 2176);
    v189 = *(v0 + 1944);
    v190 = *(v0 + 1920);

    sub_100004F84(v189, &unk_100AD6DD0);
    (*(v187 + 8))(v186, v188);
    sub_100004F84(v190, &unk_100AD6DD0);
LABEL_6:
    v5 = *(v0 + 2608) + 1;
    if (v5 == *(v0 + 912))
    {
      v4 = *(v0 + 2576);
      goto LABEL_102;
    }
  }

  v61 = *(v0 + 1744);
  v62 = *(v0 + 1728);
  v63 = *(v0 + 1720);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100940080;
  *(v64 + 56) = &type metadata for String;
  *(v64 + 32) = 0xD000000000000012;
  *(v64 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v65 = UUID.uuidString.getter();
  v67 = v66;
  v68 = *(v62 + 8);
  *(v0 + 2648) = v68;
  *(v0 + 2656) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v68(v61, v63);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 1672);
  v70 = *(v0 + 1600);
  v71 = *(v0 + 1592);
  v72 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v72, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v65;
  *(v0 + 648) = v67;
  v73._countAndFlagsBits = 1717658414;
  v73._object = 0xE400000000000000;
  String.append(_:)(v73);
  URL.appendingPathComponent(_:)();

  v74 = *(v70 + 8);
  *(v0 + 2664) = v74;
  *(v0 + 2672) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v69, v71);
  v75 = sub_1001C075C(5, &off_100A57518);
  v77 = v76;
  *(v0 + 2680) = v76;
  v78 = objc_opt_self();
  v79 = [v78 defaultManager];
  URL.absoluteString.getter();
  v80 = String._bridgeToObjectiveC()();

  v81 = [v79 fileExistsAtPath:v80];

  if (!v81)
  {
    goto LABEL_112;
  }

  v82 = [v78 defaultManager];
  URL._bridgeToObjectiveC()(v83);
  v85 = v84;
  *(v0 + 744) = 0;
  v86 = [v82 removeItemAtURL:v84 error:v0 + 744];

  v87 = *(v0 + 744);
  if (!v86)
  {
    v88 = v87;

    v89 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v90 = *(v0 + 2664);
    v488 = *(v0 + 2216);
    v91 = *(v0 + 2184);
    v92 = *(v0 + 2176);
    v93 = *(v0 + 1640);
    v94 = *(v0 + 1592);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v96 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v96;
    v97._object = 0x80000001008FDC20;
    v97._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v97);
    *(v0 + 728) = v89;
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    v98 = *(v0 + 608);
    v99 = *(v0 + 616);
    *(v95 + 56) = &type metadata for String;
    *(v95 + 32) = v98;
    *(v95 + 40) = v99;
    print(_:separator:terminator:)();

    v90(v93, v94);
    (*(v91 + 8))(v488, v92);
    goto LABEL_71;
  }

  v227 = v87;
LABEL_112:
  v228 = swift_task_alloc();
  *(v0 + 2688) = v228;
  *v228 = v0;
  v228[1] = sub_1005D08E4;
  v229 = *(v0 + 1640);
  v230 = *(v0 + 880);
  v231 = *(v0 + 872);

  return sub_10016A7C4(v231, v230, v75, v77, v229);
}

uint64_t sub_1005CAA34()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005CABA4, v3, v2);
}

uint64_t sub_1005CABA4()
{
  v676 = v0;
  v1 = v0;
  v471 = *(v0 + 848);
  v2 = *(v471 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v471 + 48;
    v470 = v2 - 1;
    while (1)
    {
      v611 = v3;
      v619 = v4;
      v585 = *(v1 + 2616);
      v31 = *(v1 + 2996);
      v593 = *(v1 + 2888);
      v32 = *(v1 + 2256);
      v482 = *(v674 + 2248);
      v635 = *(v674 + 2200);
      v511 = *(v674 + 2192);
      v33 = *(v674 + 2184);
      v504 = v33;
      v624 = *(v674 + 2176);
      v34 = *(v674 + 2168);
      v35 = *(v674 + 2160);
      v520 = *(v674 + 2152);
      v36 = *(v674 + 2056);
      v37 = *(v674 + 2048);
      v38 = *(v674 + 2040);
      v544 = v38;
      v575 = *(v674 + 2032);
      v475 = *(v674 + 1912);
      v642 = *(v674 + 1744);
      v498 = *(v674 + 1736);
      v652 = *(v674 + 1720);
      v663 = *(v674 + 1728);
      log = *(v674 + 1712);
      v39 = *(v674 + 1600);
      v40 = *(v674 + 1592);
      v554 = v40;
      v565 = v39;
      v491 = *(v5 - 16);
      v473 = v5;
      (*(v36 + 104))(v34, v31, v37);
      (*(v39 + 56))(v38, 1, 1, v40);
      (*(v32 + 56))(v475, 1, 1, v482);
      (*(v33 + 104))(v635, v593, v624);
      v483 = *(v36 + 16);
      v483(v35, v34, v37);
      v41 = v491;
      swift_bridgeObjectRetain_n();
      v492 = v41;
      UUID.init()();
      v42 = objc_allocWithZone(type metadata accessor for PhotoAsset());
      *&v42[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = 0;
      v472 = *(v663 + 16);
      v472(v498, v642, v652);
      v585(v511, v635, v624);
      v483(v520, v35, v37);
      v43 = sub_100285908(v498, v511, v520);
      v44 = *(v663 + 8);
      v44(v642, v652);
      v586 = *(v36 + 8);
      v586(v35, v37);
      (*(v504 + 8))(v635, v624);
      sub_1000F24EC(&unk_100AD4780);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100941D50;
      log->isa = v492;
      swift_storeEnumTagMultiPayload();
      v24 = &unk_100AD6DD0;
      v636 = v492;
      UUID.init()();
      v46 = v642;
      v47 = UUID.uuidString.getter();
      v49 = v48;
      v643 = v44;
      v44(v46, v652);
      type metadata accessor for AssetAttachment(0);
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      sub_1005ED56C(log, v50 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v51 = (v50 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v51 = v47;
      v51[1] = v49;
      *(v45 + 32) = v50;
      v52 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      v653 = v43;
      *&v43[v52] = v45;

      sub_1000082B4(v544, v575, &unk_100AD6DD0);
      if ((*(v565 + 48))(v575, 1, v554) == 1)
      {
        v19 = v674;
        sub_100004F84(*(v674 + 2032), &unk_100AD6DD0);
      }

      else
      {
        v53 = *(*(v674 + 1600) + 32);
        v53(*(v674 + 1696), *(v674 + 2032), *(v674 + 1592));
        v54 = [objc_opt_self() defaultManager];
        URL.path.getter();
        v55 = String._bridgeToObjectiveC()();

        v56 = [v54 fileExistsAtPath:v55];

        if (v56)
        {
          v57 = *(v674 + 1744);
          v576 = *(v674 + 1720);
          v58 = *(v674 + 1712);
          v59 = *(v674 + 1696);
          v60 = *(v674 + 1600);
          v61 = *(v674 + 1592);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_100941D50;
          (*(v60 + 16))(v58, v59, v61);
          type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          UUID.init()();
          v63 = UUID.uuidString.getter();
          v65 = v64;
          v643(v57, v576);
          v66 = swift_allocObject();
          *(v66 + 16) = 0;
          v19 = v674;
          sub_1005ED56C(v58, v66 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v67 = (v66 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v67 = v63;
          v67[1] = v65;
          *(v62 + 32) = v66;
          (*(v60 + 8))(v59, v61);
          v43 = v653;
          *&v653[v52] = v62;
        }

        else
        {
          v625 = v53;
          if (qword_100ACFE08 != -1)
          {
            swift_once();
          }

          v68 = *(v674 + 1696);
          v69 = *(v674 + 1688);
          v70 = *(v674 + 1680);
          v71 = *(v674 + 1672);
          v72 = *(v674 + 1600);
          v73 = *(v674 + 1592);
          v74 = type metadata accessor for Logger();
          sub_10000617C(v74, qword_100AE55E0);
          v75 = *(v72 + 16);
          v75(v69, v68, v73);
          v75(v70, v69, v73);
          v76 = v71;
          v625(v71, v69, v73);
          v77 = v43;
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          v80 = *(v72 + 8);
          v80(v76, v73);
          if (os_log_type_enabled(v78, v79))
          {
            v577 = v79;
            v81 = *(v674 + 1744);
            v82 = *(v674 + 1720);
            v626 = *(v674 + 1696);
            v534 = *(v674 + 1680);
            v545 = *(v674 + 1592);
            v83 = swift_slowAlloc();
            v555 = swift_slowAlloc();
            v675[0] = swift_slowAlloc();
            *v83 = 138412802;
            *(v83 + 4) = v77;
            *v555 = v77;
            *(v83 + 12) = 2080;
            v472(v81, &v77[OBJC_IVAR____TtC7Journal5Asset_id], v82);
            sub_10004B9D8(&qword_100AE19B0, &type metadata accessor for UUID);
            loga = v78;
            v84 = v77;
            v85 = dispatch thunk of CustomStringConvertible.description.getter();
            v87 = v86;
            v643(v81, v82);
            v88 = sub_100008458(v85, v87, v675);

            *(v83 + 14) = v88;
            *(v83 + 22) = 2080;
            sub_10004B9D8(&qword_100ADEFD0, &type metadata accessor for URL);
            v89 = dispatch thunk of CustomStringConvertible.description.getter();
            v91 = v90;
            v80(v534, v545);
            v92 = sub_100008458(v89, v91, v675);

            *(v83 + 24) = v92;
            _os_log_impl(&_mh_execute_header, loga, v577, "%@[%s] failed init imageFile does not exist: %s", v83, 0x20u);
            sub_100004F84(v555, &unk_100AD4BB0);

            swift_arrayDestroy();

            v43 = v653;

            v80(v626, v545);
            v19 = v674;
          }

          else
          {
            v19 = v674;
            v93 = *(v674 + 1696);
            v94 = *(v674 + 1680);
            v95 = *(v674 + 1592);

            v80(v94, v95);
            v80(v93, v95);
          }
        }

        v24 = &unk_100AD6DD0;
      }

      v96 = *&v43[v52];
      if (v96 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_18;
        }
      }

      else if (!*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        v29 = *(v19 + 271);
        v97 = *(v19 + 256);
        v98 = *(v19 + 255);
        v99 = *(v19 + 239);

        v1 = v19;
        swift_bridgeObjectRelease_n();

        sub_100004F84(v99, &unk_100AD4790);
        sub_100004F84(v98, &unk_100AD6DD0);
        v586(v29, v97);
        v30 = v619;
        if (v470 == v619)
        {
          break;
        }

        v3 = 0;
        goto LABEL_5;
      }

      v6 = v19[17];
      v7 = v19[18];
      v8 = v19[19];
      v9 = v19[20];
      v623 = *(v19 + 271);
      v574 = *(v19 + 256);
      v553 = *(v19 + 255);
      v10 = *(v19 + 239);
      v543 = *(v19 + 198);
      v11 = *(v19 + 197);
      v641 = *(v19 + 196);
      v564 = *(v19 + 195);
      sub_1000082B4(v10, *(v19 + 238), &unk_100AD4790);
      v662 = v43;
      v678.origin.x = v6;
      v678.origin.y = v7;
      v678.size.width = v8;
      v678.size.height = v9;
      v12 = NSStringFromCGRect(v678);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v679.origin.x = v6;
      v679.origin.y = v7;
      v679.size.width = v8;
      v679.size.height = v9;
      v16 = NSStringFromCGRect(v679);
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v680.origin.x = v6;
      v680.origin.y = v7;
      v680.size.width = v8;
      v680.size.height = v9;
      v20 = NSStringFromCGRect(v680);
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = &unk_100AD6DD0;
      v461 = 0;
      v462 = 0;
      v469 = v23;
      v1 = v674;
      v467 = v19;
      v468 = v21;
      v465 = v15;
      v466 = v17;
      v464 = v13;
      LOBYTE(v463) = 1;
      LOBYTE(v460) = 1;
      PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();

      v25 = v10;
      v3 = v662;
      sub_100004F84(v25, &unk_100AD4790);
      sub_100004F84(v553, &unk_100AD6DD0);
      v586(v623, v574);
      (*(v11 + 32))(v564, v543, v641);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&unk_100AEE0B0);
      v26 = swift_allocObject();
      v27 = *(*v26 + 104);
      v28 = sub_1000F24EC(&qword_100AD5B20);
      (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
      *(v26 + *(*v26 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v564, v26 + *(*v26 + 120), &unk_100AEE0A0);
      v29 = *&v662[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
      *&v662[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata] = v26;

      v30 = v619;
      if (v470 == v619)
      {

        v100 = *(v674 + 2600);
        goto LABEL_25;
      }

LABEL_5:
      v4 = v30 + 1;
      v5 = v473 + 24;
      if (v4 >= *(v471 + 16))
      {
        __break(1u);
LABEL_131:
        v587 = v19;
        v500 = *(v1 + 3000);
        v512 = *(v1 + 2900);
        v314 = *(v1 + 2256);
        v494 = *(v1 + 2248);
        v505 = *(v1 + 2200);
        v546 = *(v1 + 2192);
        v315 = *(v1 + 2184);
        v594 = *(v1 + 2176);
        v646 = *(v1 + 2160);
        v556 = *(v1 + 2152);
        v488 = *(v1 + 2144);
        v656 = *(v1 + 2056);
        v612 = *(v1 + 2048);
        v536 = *(v1 + 2016);
        v476 = *(v1 + 1896);
        v603 = *(v1 + 1744);
        logb = *(v1 + 1736);
        v666 = *(v1 + 1728);
        v627 = *(v1 + 1720);
        v567 = *(v1 + 1712);
        v316 = *(v674 + 1600);
        v317 = *(v674 + 1592);
        v484 = *(v674 + 1544);
        v318 = *(v674 + 1528);
        v479 = *(v674 + 1520);
        (*(v656 + 104))();

        (*(v316 + 56))(v536, 1, 1, v317);
        v1 = v674;
        v537 = v29;
        Date.init()();
        (*(v314 + 56))(v476, 0, 1, v494);
        (*(v318 + 104))(v484, v500, v479);
        (*(v315 + 104))(v505, v512, v594);
        v513 = *(v656 + 16);
        v513(v646, v488, v612);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
        (*(v666 + 16))(logb, v603, v627);
        (v3)(v546, v505, v594);
        v319 = v646;
        v513(v556, v646, v612);
        v320 = sub_100285908(logb, v546, v556);
        v321 = *(v666 + 8);
        v321(v603, v627);
        v645 = *(v656 + 8);
        (v645)(v319, v612);
        v322 = v320;
        (*(v315 + 8))(v505, v594);
        *v567 = v537;
        swift_storeEnumTagMultiPayload();
        v611 = v537;
        UUID.init()();
        v323 = UUID.uuidString.getter();
        v325 = v324;
        v321(v603, v627);
        type metadata accessor for AssetAttachment(0);
        v326 = swift_allocObject();
        *(v326 + 16) = 0;
        sub_1005ED56C(v567, v326 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v327 = (v326 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v327 = v323;
        v327[1] = v325;
        v328 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v665 = v322;
        if (*((*&v322[v328] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v322[v328] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_170:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v568 = *(v1 + 2048);
        v579 = *(v1 + 2144);
        v329 = *(v1 + 2016);
        v330 = *(v1 + 2008);
        v495 = *(v1 + 1904);
        v331 = *(v1 + 1896);
        v595 = *(v1 + 1664);
        logc = *(v1 + 1600);
        v557 = *(v1 + 1592);
        v506 = *(v1 + 1544);
        v332 = *(v1 + 1528);
        v501 = *(v1 + 1520);
        v514 = *(v1 + 1512);
        v547 = *(v1 + 1504);
        v604 = *(v1 + 1496);
        v333 = *(v1 + 1488);
        v538 = *(v1 + 1480);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v329, v330, &unk_100AD6DD0);
        sub_1000082B4(v331, v495, &unk_100AD4790);
        (*(v332 + 16))(v333, v506, v501);
        (*(v332 + 56))(v333, 0, 1, v501);
        MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

        sub_1000340DC(v24, v587);
        (*(v332 + 8))(v506, v501);
        sub_100004F84(v331, &unk_100AD4790);
        sub_100004F84(v329, &unk_100AD6DD0);
        (v645)(v579, v568);
        (logc[1].isa)(v595, v557);
        (*(v547 + 32))(v538, v514, v604);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E90);
        v334 = swift_allocObject();
        v335 = *(*v334 + 104);
        v336 = sub_1000F24EC(&qword_100AD6F70);
        (*(*(v336 - 8) + 56))(v334 + v335, 1, 1, v336);
        *(v334 + *(*v334 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v538, v334 + *(*v334 + 120), &qword_100ADA8E0);
        v3 = v665;
        *&v665[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = v334;
LABEL_140:

        v100 = 0;
LABEL_25:
        *(v1 + 2832) = v3;
        *(v1 + 2824) = v100;
        v106 = *(v1 + 2608);
        v664 = *(v1 + 3008);
        v654 = *(v1 + 3004);
        v107 = *(v1 + 992);
        v108 = *(v1 + 984);
        v644 = *(v1 + 976);
        v109 = *(v1 + 968);
        v110 = *(v1 + 960);
        v111 = *(v1 + 952);
        v112 = *(v1 + 896);
        *(v1 + 576) = *(v1 + 888);
        *(v1 + 584) = v112;

        v113._countAndFlagsBits = 0x20746573734120;
        v113._object = 0xE700000000000000;
        String.append(_:)(v113);
        *(v1 + 768) = v106;
        v114._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v114);

        v115 = v3;
        v116 = objc_allocWithZone(NSAttributedString);
        v117 = String._bridgeToObjectiveC()();

        v118 = [v116 initWithString:v117];

        v119 = *(v115 + OBJC_IVAR____TtC7Journal5Asset_title);
        *(v115 + OBJC_IVAR____TtC7Journal5Asset_title) = v118;

        *v107 = static AssetPlacement.maxGridCount.getter();
        (*(v108 + 104))(v107, v654, v644);
        (*(v110 + 104))(v109, v664, v111);
        LOBYTE(v117) = JournalFeatureFlags.isEnabled.getter();
        (*(v110 + 8))(v109, v111);
        if (v117)
        {
          *(v1 + 2840) = CFAbsoluteTimeGetCurrent();
          v120 = swift_task_alloc();
          *(v1 + 2848) = v120;
          *v120 = v1;
          v120[1] = sub_1005DEA30;
          v121 = *(v1 + 992);
          v122 = *(v1 + 880);
          v123 = *(v1 + 872);

          return sub_10056B238(v123, v122, v115, v121, 1);
        }

        else
        {
          v301 = swift_task_alloc();
          *(v1 + 2872) = v301;
          *v301 = v1;
          v301[1] = sub_1005DEE38;
          v302 = *(v1 + 992);
          v303 = *(v1 + 880);
          v304 = *(v1 + 872);

          return sub_1001F8424(v304, v303, v115, v302);
        }
      }
    }
  }

  v100 = *(v1 + 2600);
  (*(*(v1 + 2184) + 8))(*(v1 + 2216), *(v1 + 2176));
  v101 = *(v1 + 2608) + 1;
  if (v101 == *(v1 + 912))
  {
LABEL_21:
    v102 = *(v1 + 2568);

    v103 = *(v674 + 8);
    v104 = *(v674 + 2536);

    return v103(v104);
  }

  v493 = (v1 + 688);
  v499 = (v1 + 736);
  v535 = (v1 + 752);
  v578 = (v1 + 784);
  v655 = (v1 + 776);
  v665 = (v1 + 808);
  v602 = (v1 + 816);
  v587 = 0x80000001008FDE30;
  v645 = 1;
  v566 = (v1 + 840);
  while (1)
  {
    *(v1 + 2608) = v101;
    *(v1 + 2600) = v100;
    v124 = *(v1 + 2552);
    *(v1 + 832) = 0;
    swift_stdlib_random();
    v125 = *(v1 + 832);
    v126 = (v125 * v124) >> 64;
    v127 = v125 * v124;
    v128 = *(v1 + 2552);
    if (v124 > v127)
    {
      v129 = -v128 % v128;
      if (v129 > v127)
      {
        do
        {
          v130 = *(v1 + 2552);
          *(v1 + 680) = 0;
          swift_stdlib_random();
          v131 = *(v1 + 680);
        }

        while (v129 > v131 * v130);
        v126 = (v131 * v130) >> 64;
        v128 = *(v1 + 2552);
      }
    }

    if (v126 >= v128)
    {
      __break(1u);
LABEL_142:
      v630 = *(v1 + 2988);
      v560 = *(v1 + 2980);
      v368 = *(v1 + 2256);
      v369 = *(v1 + 2248);
      v550 = *(v1 + 2160);
      v658 = *(v1 + 2048);
      v669 = *(v1 + 2056);
      v370 = *(v1 + 1904);
      v371 = *(v674 + 1864);
      v598 = *(v674 + 1384);
      v638 = *(v674 + 1376);
      v581 = *(v674 + 1368);
      v607 = *(v674 + 1360);
      v614 = *(v1 + 1872);
      v590 = *(v674 + 1352);
      v541 = *(v674 + 1344);
      v372 = *(v674 + 1336);
      v373 = swift_allocObject();
      *(v373 + 16) = xmmword_100940080;
      *(v373 + 56) = &type metadata for String;
      *(v373 + 32) = 0xD000000000000018;
      *(v373 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      v675[0] = _swiftEmptyArrayStorage;
      Date.init()();
      v374 = *(v368 + 56);
      v374(v370, 0, 1, v369);
      v374(v614, 1, 1, v369);
      v374(v371, 1, 1, v369);
      v570 = *(v669 + 104);
      v570(v372, v630, v658);
      v620 = *(v669 + 56);
      v620(v372, 0, 1, v658);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v374(v370, 0, 1, v369);
      v374(v614, 1, 1, v369);
      v374(v371, 1, 1, v369);
      v570(v372, v630, v658);
      v620(v372, 0, 1, v658);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v374(v370, 0, 1, v369);
      v374(v614, 1, 1, v369);
      v374(v371, 1, 1, v369);
      v570(v372, v630, v658);
      v620(v372, 0, 1, v658);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v374(v370, 0, 1, v369);
      v374(v614, 1, 1, v369);
      v374(v371, 1, 1, v369);
      v570(v372, v630, v658);
      v620(v372, 0, 1, v658);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8);
      v375 = *(v590 + 72);
      v376 = (*(v590 + 80) + 32) & ~*(v590 + 80);
      v377 = swift_allocObject();
      *(v377 + 16) = xmmword_100941FE0;
      v378 = v377 + v376;
      v379 = *(v590 + 16);
      v379(v378, v598, v541);
      v379(v378 + v375, v638, v541);
      v379(v378 + 2 * v375, v581, v541);
      v379(v378 + 3 * v375, v607, v541);
      v1 = v674;
      sub_1006ADB18(v377);
      v570(v550, v560, v658);
      v3 = sub_10011CEC0(v550, v675[0]);
      v380 = *(v590 + 8);
      v380(v607, v541);
      v380(v581, v541);
      v380(v638, v541);
      v380(v598, v541);
      goto LABEL_25;
    }

    v132 = *(v1 + 2888);
    v133 = *(v1 + 2884);
    v134 = *(v1 + 2216);
    v135 = *(v1 + 2208);
    v136 = *(v1 + 2184);
    v137 = v1;
    v138 = *(v1 + 2176);
    v3 = *(v136 + 16);
    v139 = *(v137 + 904) + ((v133 + 32) & ~v133) + *(v136 + 72) * v126;
    *(v137 + 2616) = v3;
    *(v137 + 2624) = (v136 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v3)(v134, v139, v138);
    (v3)(v135, v134, v138);
    v140 = (*(v136 + 88))(v135, v138);
    if (v140 == v132)
    {
      v305 = swift_allocObject();
      *(v305 + 16) = xmmword_100940080;
      *(v305 + 56) = &type metadata for String;
      *(v305 + 32) = 0xD000000000000013;
      *(v305 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v306 = swift_task_alloc();
      *(v137 + 2632) = v306;
      *(v306 + 16) = 1;
      v307 = swift_task_alloc();
      *(v137 + 2640) = v307;
      v308 = sub_1000F24EC(&qword_100AEABF0);
      *v307 = v137;
      v307[1] = sub_1005CAA34;
      v277 = *(v137 + 880);
      v276 = *(v137 + 872);
      v282 = v308;
      v280 = sub_1005ED67C;
      v275 = v137 + 848;
      goto LABEL_124;
    }

    v1 = v137;
    if (v140 == *(v137 + 2892))
    {
      goto LABEL_30;
    }

    if (v140 == *(v137 + 2896))
    {
      v309 = swift_allocObject();
      *(v309 + 16) = xmmword_100940080;
      *(v309 + 56) = &type metadata for String;
      *(v309 + 32) = 0xD000000000000013;
      *(v309 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v310 = swift_task_alloc();
      *(v137 + 2704) = v310;
      *v310 = v137;
      v310[1] = sub_1005D1548;
      v311 = *(v137 + 1264);
      v312 = *(v137 + 880);
      v313 = *(v137 + 872);

      return sub_1006A580C(v311, v313, v312);
    }

    if (v140 == *(v137 + 2900))
    {
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_100940080;
      *(v141 + 56) = &type metadata for String;
      *(v141 + 32) = 0xD000000000000012;
      *(v141 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v142 = *(v137 + 112);
      v143 = *(v142 + 16);
      if (v143)
      {
        *v602 = 0;
        swift_stdlib_random();
        v144 = *v602 * v143;
        v145 = (*v602 * v143) >> 64;
        if (v143 > v144)
        {
          v146 = -v143 % v143;
          if (v146 > v144)
          {
            do
            {
              *v566 = 0;
              swift_stdlib_random();
            }

            while (v146 > *v566 * v143);
            v145 = (*v566 * v143) >> 64;
          }

          v1 = v674;
        }

        if (v145 >= *(v142 + 16))
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          v306 = swift_task_alloc();
          *(v1 + 2808) = v306;
          *(v306 + 16) = 1;
          v458 = swift_task_alloc();
          *(v1 + 2816) = v458;
          v459 = sub_1000F24EC(&qword_100AEABF0);
          *v458 = v1;
          v458[1] = sub_1005DDCB8;
          v277 = *(v1 + 880);
          v276 = *(v1 + 872);
          v282 = v459;
          v280 = sub_1005ED564;
          v275 = v1 + 824;
          goto LABEL_124;
        }

        swift_beginAccess();

        sub_100691A14(v145);
        swift_endAccess();
      }

      v160 = *(v1 + 2024);
      v161 = v1;
      v162 = *(v1 + 1600);
      v163 = v161[199];
      URL.init(string:)();
      if ((*(v162 + 48))(v160, 1, v163) == 1)
      {
        v164 = v161[253];
        (*(v161[273] + 8))(v161[277], v161[272]);

        sub_100004F84(v164, &unk_100AD6DD0);
        v1 = v161;
      }

      else
      {
        (*(v161[200] + 32))(v161[208], v161[253], v161[199]);
        v165 = Data.init(contentsOf:options:)();
        v1 = v161;
        v611 = v100;
        if (!v100)
        {
          v24 = v165;
          v19 = v166;
          v214 = objc_allocWithZone(UIImage);
          sub_100049ED8(v24, v19);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v29 = [v214 initWithData:isa];

          sub_1000340DC(v24, v19);
          if (v29)
          {
            goto LABEL_131;
          }

          v216 = *(v1 + 2216);
          v217 = *(v1 + 2184);
          v218 = *(v1 + 2176);
          v219 = *(v1 + 1664);
          v220 = *(v1 + 1600);
          v221 = *(v674 + 1592);

          sub_1000340DC(v24, v19);
          v222 = v221;
          v1 = v674;
          (*(v220 + 8))(v219, v222);
          goto LABEL_99;
        }

        v167 = v161[277];
        v168 = v161[273];
        v169 = v161[272];
        v170 = v161[208];
        v171 = v161[200];
        v172 = *(v674 + 1592);

        v173 = v172;
        v1 = v674;
        (*(v171 + 8))(v170, v173);
        (*(v168 + 8))(v167, v169);
        v100 = 0;
      }

      goto LABEL_31;
    }

    if (v140 == *(v137 + 2904))
    {
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_100940080;
      *(v147 + 56) = &type metadata for String;
      *(v147 + 32) = 0xD000000000000015;
      *(v147 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v148 = *(v137 + 120);
      v149 = *(v148 + 16);
      if (v149)
      {
        *v578 = 0;
        swift_stdlib_random();
        v150 = *v578 * v149;
        v151 = (*v578 * v149) >> 64;
        if (v149 > v150)
        {
          v152 = -v149 % v149;
          v153 = v665;
          if (v152 <= v150)
          {
            v1 = v674;
          }

          else
          {
            do
            {
              *v153 = 0;
              swift_stdlib_random();
              v153 = v665;
            }

            while (v152 > *v665 * v149);
            v151 = (*v665 * v149) >> 64;
            v1 = v674;
          }
        }

        if (v151 >= *(v148 + 16))
        {
          goto LABEL_164;
        }

        swift_beginAccess();

        sub_100691A14(v151);
        swift_endAccess();
      }

      v230 = *(v1 + 2000);
      v231 = *(v1 + 1600);
      v232 = *(v1 + 1592);
      URL.init(string:)();
      if ((*(v231 + 48))(v230, 1, v232) == 1)
      {
        v233 = *(v1 + 2000);
        (*(*(v1 + 2184) + 8))(*(v1 + 2216), *(v1 + 2176));

LABEL_94:

        sub_100004F84(v233, &unk_100AD6DD0);
        goto LABEL_31;
      }

      (*(*(v1 + 1600) + 32))(*(v1 + 1656), *(v1 + 2000), *(v1 + 1592));
      v234 = Data.init(contentsOf:options:)();
      v611 = v100;
      if (!v100)
      {
        v242 = v234;
        v243 = v235;
        v244 = objc_allocWithZone(UIImage);
        sub_100049ED8(v242, v243);
        v245 = Data._bridgeToObjectiveC()().super.isa;
        v246 = [v244 initWithData:v245];

        sub_1000340DC(v242, v243);
        if (v246)
        {
          v580 = v243;
          v515 = *(v674 + 2992);
          v507 = *(v674 + 2904);
          v489 = *(v674 + 2256);
          v502 = *(v674 + 2248);
          v596 = *(v674 + 2200);
          v539 = *(v674 + 2192);
          v667 = *(v674 + 2184);
          v588 = *(v674 + 2176);
          v628 = *(v674 + 2160);
          v548 = *(v674 + 2152);
          v496 = *(v674 + 2136);
          v657 = *(v674 + 2056);
          v342 = *(v674 + 1992);
          v343 = *(v674 + 1888);
          v605 = *(v674 + 1744);
          v613 = *(v674 + 2048);
          v521 = *(v674 + 1736);
          v647 = *(v674 + 1728);
          logd = *(v674 + 1720);
          v558 = *(v674 + 1712);
          v477 = *(v674 + 1656);
          v344 = *(v674 + 1600);
          v345 = *(v674 + 1592);
          v485 = *(v674 + 1536);
          v346 = *(v674 + 1528);
          v480 = *(v674 + 1520);
          (*(v657 + 104))();

          (*(v344 + 16))(v342, v477, v345);
          (*(v344 + 56))(v342, 0, 1, v345);
          Date.init()();
          (*(v489 + 56))(v343, 0, 1, v502);
          (*(v346 + 104))(v485, v515, v480);
          (*(v667 + 104))(v596, v507, v588);
          v516 = *(v657 + 16);
          v516(v628, v496, v613);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
          (*(v647 + 16))(v521, v605, logd);
          (v3)(v539, v596, v588);
          v516(v548, v628, v613);
          v347 = sub_100285908(v521, v539, v548);
          v348 = *(v647 + 8);
          v348(v605, logd);
          v648 = *(v657 + 8);
          v648(v628, v613);
          (*(v667 + 8))(v596, v588);
          *v558 = v246;
          swift_storeEnumTagMultiPayload();
          v349 = v347;
          v629 = v246;
          v350 = v349;
          UUID.init()();
          v351 = UUID.uuidString.getter();
          v353 = v352;
          v348(v605, logd);
          type metadata accessor for AssetAttachment(0);
          v354 = swift_allocObject();
          *(v354 + 16) = 0;
          sub_1005ED56C(v558, v354 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v355 = (v354 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v355 = v351;
          v355[1] = v353;
          v356 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v668 = v350;
          if (*((*&v350[v356] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v350[v356] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v589 = *(v674 + 2136);
          v569 = *(v674 + 2048);
          v357 = *(v674 + 2008);
          v358 = *(v674 + 1992);
          v508 = *(v674 + 1904);
          v359 = *(v674 + 1888);
          v606 = *(v674 + 1656);
          loge = *(v674 + 1600);
          v559 = *(v674 + 1592);
          v517 = *(v674 + 1536);
          v360 = *(v674 + 1528);
          v361 = *(v674 + 1520);
          v362 = *(v674 + 1488);
          v522 = *(v674 + 1464);
          v540 = *(v674 + 1456);
          v597 = *(v674 + 1448);
          v549 = *(v674 + 1440);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          v363 = v358;
          sub_1000082B4(v358, v357, &unk_100AD6DD0);
          v364 = v359;
          sub_1000082B4(v359, v508, &unk_100AD4790);
          (*(v360 + 16))(v362, v517, v361);
          (*(v360 + 56))(v362, 0, 1, v361);
          v1 = v674;
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

          sub_1000340DC(v242, v580);
          (*(v360 + 8))(v517, v361);
          sub_100004F84(v364, &unk_100AD4790);
          sub_100004F84(v363, &unk_100AD6DD0);
          v648(v589, v569);
          (loge[1].isa)(v606, v559);
          (*(v540 + 32))(v549, v522, v597);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80);
          v365 = swift_allocObject();
          v366 = *(*v365 + 104);
          v367 = sub_1000F24EC(&qword_100AD2A70);
          (*(*(v367 - 8) + 56))(v365 + v366, 1, 1, v367);
          *(v365 + *(*v365 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v549, v365 + *(*v365 + 120), &qword_100ADA958);
          v3 = v668;
          *&v668[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = v365;

          goto LABEL_140;
        }

        v1 = v674;
        v216 = *(v674 + 2216);
        v217 = *(v674 + 2184);
        v218 = *(v674 + 2176);
        v247 = *(v674 + 1656);
        v248 = *(v674 + 1600);
        v249 = *(v674 + 1592);

        sub_1000340DC(v242, v243);
        (*(v248 + 8))(v247, v249);
        goto LABEL_99;
      }

      v236 = *(v1 + 2216);
      v237 = *(v1 + 2184);
      v238 = *(v1 + 2176);
      v239 = *(v1 + 1656);
      v240 = *(v1 + 1600);
      v241 = *(v1 + 1592);

      (*(v240 + 8))(v239, v241);
      (*(v237 + 8))(v236, v238);
      v100 = 0;
      goto LABEL_31;
    }

    if (v140 == *(v137 + 2908))
    {
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_100940080;
      *(v154 + 56) = &type metadata for String;
      *(v154 + 32) = 0xD000000000000012;
      *(v154 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v155 = *(v137 + 128);
      v156 = *(v155 + 16);
      if (v156)
      {
        *v535 = 0;
        swift_stdlib_random();
        v157 = *v535 * v156;
        v158 = (*v535 * v156) >> 64;
        if (v156 > v157)
        {
          v1 = -v156 % v156;
          v159 = v655;
          if (v1 > v157)
          {
            do
            {
              *v159 = 0;
              swift_stdlib_random();
              v159 = v655;
            }

            while (v1 > *v655 * v156);
            v158 = (*v655 * v156) >> 64;
          }
        }

        if (v158 >= *(v155 + 16))
        {
          goto LABEL_165;
        }

        v1 = v674;
        swift_beginAccess();

        sub_100691A14(v158);
        swift_endAccess();
      }

      v250 = *(v1 + 1984);
      v251 = *(v1 + 1600);
      v252 = *(v1 + 1592);
      URL.init(string:)();
      if ((*(v251 + 48))(v250, 1, v252) == 1)
      {
        v233 = *(v1 + 1984);
        (*(*(v1 + 2184) + 8))(*(v1 + 2216), *(v1 + 2176));

        goto LABEL_94;
      }

      (*(*(v1 + 1600) + 32))(*(v1 + 1648), *(v1 + 1984), *(v1 + 1592));
      v253 = Data.init(contentsOf:options:)();
      v611 = v100;
      if (!v100)
      {
        v261 = v253;
        v262 = v254;
        v263 = objc_allocWithZone(UIImage);
        sub_100049ED8(v261, v262);
        v264 = Data._bridgeToObjectiveC()().super.isa;
        v265 = [v263 initWithData:v264];

        sub_1000340DC(v261, v262);
        if (v265)
        {
          v609 = v262;
          v523 = *(v674 + 2908);
          v391 = *(v674 + 2256);
          v509 = *(v674 + 2248);
          v616 = *(v674 + 2200);
          v561 = *(v674 + 2192);
          v392 = *(v674 + 2184);
          v518 = *(v674 + 2176);
          v649 = *(v674 + 2160);
          v571 = *(v674 + 2152);
          v503 = *(v674 + 2128);
          v660 = *(v674 + 2056);
          v393 = *(v674 + 2048);
          v394 = *(v674 + 1880);
          v632 = *(v674 + 1744);
          logf = *(v674 + 1736);
          v671 = *(v674 + 1728);
          v542 = *(v674 + 1720);
          v591 = *(v674 + 1712);
          (*(v660 + 104))();

          v582 = v265;
          Date.init()();
          (*(v391 + 56))(v394, 0, 1, v509);
          (*(v392 + 104))(v616, v523, v518);
          v524 = *(v660 + 16);
          v524(v649, v503, v393);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset()) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v671 + 16))(logf, v632, v542);
          (v3)(v561, v616, v518);
          v395 = v649;
          v524(v571, v649, v393);
          v396 = sub_100285908(logf, v561, v571);
          v397 = *(v671 + 8);
          v397(v632, v542);
          v650 = *(v660 + 8);
          v650(v395, v393);
          v398 = v396;
          (*(v392 + 8))(v616, v518);
          *v591 = v582;
          swift_storeEnumTagMultiPayload();
          v617 = v582;
          UUID.init()();
          v399 = UUID.uuidString.getter();
          v401 = v400;
          v397(v632, v542);
          type metadata accessor for AssetAttachment(0);
          v402 = swift_allocObject();
          *(v402 + 16) = 0;
          sub_1005ED56C(v591, v402 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v403 = (v402 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v403 = v399;
          v403[1] = v401;
          v404 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v672 = v398;
          if (*((*&v398[v404] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v398[v404] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v562 = *(v674 + 2128);
          v551 = *(v674 + 2048);
          v405 = *(v674 + 1904);
          v406 = *(v674 + 1880);
          v407 = *(v674 + 1600);
          v572 = *(v674 + 1592);
          v583 = *(v674 + 1648);
          v408 = *(v674 + 1424);
          v409 = *(v674 + 1416);
          v592 = *(v674 + 1400);
          v600 = *(v674 + 1408);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v406, v405, &unk_100AD4790);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v261, v609);
          sub_100004F84(v406, &unk_100AD4790);
          v650(v562, v551);
          (*(v407 + 8))(v583, v572);
          (*(v409 + 32))(v592, v408, v600);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8);
          v410 = swift_allocObject();
          v411 = *(*v410 + 104);
          v412 = sub_1000F24EC(&qword_100AD4318);
          (*(*(v412 - 8) + 56))(v410 + v411, 1, 1, v412);
          *(v410 + *(*v410 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v592, v410 + *(*v410 + 120), &qword_100ADA8C0);
          v3 = v672;
          *&v672[OBJC_IVAR____TtC7Journal9BookAsset_metadata] = v410;

          v100 = 0;
          v1 = v674;
          goto LABEL_25;
        }

        v1 = v674;
        v216 = *(v674 + 2216);
        v217 = *(v674 + 2184);
        v218 = *(v674 + 2176);
        v266 = *(v674 + 1648);
        v267 = *(v674 + 1600);
        v268 = *(v674 + 1592);

        sub_1000340DC(v261, v262);
        (*(v267 + 8))(v266, v268);
LABEL_99:
        (*(v217 + 8))(v216, v218);
LABEL_100:
        v100 = 0;
        goto LABEL_31;
      }

      v255 = *(v1 + 2216);
      v256 = *(v1 + 2184);
      v257 = *(v1 + 2176);
      v258 = *(v1 + 1648);
      v259 = *(v1 + 1600);
      v260 = *(v1 + 1592);

      (*(v259 + 8))(v258, v260);
      (*(v256 + 8))(v255, v257);
      v100 = 0;
      goto LABEL_31;
    }

    if (v140 == *(v137 + 2912))
    {
      break;
    }

    if (v140 == *(v137 + 2916))
    {
      goto LABEL_30;
    }

    if (v140 == *(v137 + 2920))
    {
      goto LABEL_142;
    }

    if (v140 == *(v137 + 2924))
    {
      v608 = *(v137 + 2988);
      v670 = *(v137 + 2980);
      v381 = *(v137 + 2256);
      v382 = *(v137 + 2248);
      v383 = *(v137 + 2056);
      v384 = *(v137 + 1904);
      v385 = *(v137 + 1872);
      v599 = *(v137 + 2048);
      v386 = *(v137 + 1864);
      v631 = *(v1 + 2160);
      v639 = *(v1 + 1376);
      v615 = *(v1 + 1384);
      v621 = *(v1 + 1352);
      v659 = *(v1 + 1344);
      v387 = *(v674 + 1336);
      v388 = swift_allocObject();
      *(v388 + 16) = xmmword_100940080;
      *(v388 + 56) = &type metadata for String;
      *(v388 + 32) = 0xD000000000000017;
      *(v388 + 40) = 0x80000001008FDC40;
      print(_:separator:terminator:)();

      Date.init()();
      v389 = *(v381 + 56);
      v389(v384, 0, 1, v382);
      v389(v385, 1, 1, v382);
      v389(v386, 1, 1, v382);
      v390 = *(v383 + 104);
      v390(v387, v608, v599);
      (*(v383 + 56))(v387, 0, 1, v599);
      v1 = v674;
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      v390(v631, v670, v599);
      (*(v621 + 16))(v639, v615, v659);
      v3 = sub_10033CC64(v631, v639);
      (*(v621 + 8))(v615, v659);
      goto LABEL_25;
    }

    if (v140 != *(v137 + 2928))
    {
      if (v140 == *(v137 + 2932))
      {
        v306 = swift_task_alloc();
        *(v137 + 2760) = v306;
        *(v306 + 16) = 1;
        v413 = swift_task_alloc();
        *(v137 + 2768) = v413;
        v414 = sub_1000F24EC(&qword_100AEABF0);
        *v413 = v137;
        v413[1] = sub_1005DB91C;
        v277 = *(v137 + 880);
        v276 = *(v137 + 872);
        v282 = v414;
        v280 = sub_1005ED67C;
        v275 = v137 + 712;
LABEL_124:
        v279 = 0x80000001008FDB40;
        v278 = 0xD000000000000024;
        v281 = v306;

        return withCheckedContinuation<A>(isolation:function:_:)(v275, v276, v277, v278, v279, v280, v281, v282);
      }

      if (v140 == *(v137 + 2936))
      {
        v306 = swift_task_alloc();
        *(v137 + 2776) = v306;
        *(v306 + 16) = 1;
        v429 = swift_task_alloc();
        *(v137 + 2784) = v429;
        v430 = sub_1000F24EC(&qword_100AEABF0);
        *v429 = v137;
        v429[1] = sub_1005DC438;
        v277 = *(v137 + 880);
        v276 = *(v137 + 872);
        v282 = v430;
        v280 = sub_1005ED67C;
        v275 = v137 + 720;
        goto LABEL_124;
      }

      if (v140 == *(v137 + 2940))
      {
        v431 = sub_1005ED3EC(v140, -90.0, 90.0);
        v433 = v432;
        sub_1005ED3EC(v431, -180.0, 180.0);
        v435 = v434;
        *v499 = _swiftEmptyArrayStorage;
        v275 = sub_1006A699C(5001);
        if (v275 + 5000 >= 1)
        {
          v436 = v275 + 4999;
          v1 = 1;
          v24 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
          while (1)
          {
            v437 = sub_1005ED3EC(v275, -0.01, 0.01);
            v433 = v433 + v438;
            sub_1005ED3EC(v437, -0.01, 0.01);
            v435 = v435 + v439;
            [objc_allocWithZone(CLLocation) initWithLatitude:v433 longitude:v435];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v499 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v499 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v275 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v436)
            {
              break;
            }

            --v436;
            if (__OFADD__(v1++, 1))
            {
              __break(1u);
              goto LABEL_170;
            }
          }

          v1 = v674;
          v486 = *(v674 + 2940);
          v446 = *(v674 + 2304);
          v478 = *(v674 + 2280);
          v447 = *(v674 + 2256);
          v448 = *(v674 + 2248);
          v610 = *(v674 + 2200);
          v510 = *(v674 + 2192);
          v640 = *(v674 + 2184);
          v481 = *(v674 + 2176);
          v622 = *(v674 + 2160);
          v519 = *(v674 + 2152);
          v651 = *(v674 + 2080);
          v661 = *(v674 + 2048);
          v673 = *(v674 + 2056);
          v525 = *(v674 + 1904);
          logg = *(v674 + 1872);
          v449 = *(v674 + 1792);
          v601 = *(v674 + 1784);
          v618 = *(v674 + 1744);
          v490 = *(v674 + 1736);
          v633 = *(v674 + 1728);
          v497 = *(v674 + 1720);
          v552 = *(v674 + 1176);
          v563 = *(v674 + 1168);
          v573 = *(v674 + 1152);
          v584 = *(v674 + 1160);
          (*(v673 + 104))(v651, *(v674 + 2980), v661, v440, v441, v442, v443, v444, v460, v461);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v450 = *(v447 + 8);
          v450(v446, v448);
          v474 = *(v447 + 56);
          v474(v449, 0, 1, v448);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v450(v446, v448);
          sub_1006A699C(0x20000000000001);
          Date.addingTimeInterval(_:)();
          v450(v478, v448);
          v474(v601, 0, 1, v448);
          sub_1006A699C(0x20000000000001);
          sub_1006A699C(0x20000000000001);
          (*(v640 + 104))(v610, v486, v481);
          v487 = *(v673 + 16);
          v487(v622, v651, v661);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v633 + 16))(v490, v618, v497);
          (v3)(v510, v610, v481);
          v487(v519, v622, v661);
          v451 = sub_100285908(v490, v510, v519);
          (*(v633 + 8))(v618, v497);
          v634 = *(v673 + 8);
          v634(v622, v661);
          (*(v640 + 8))(v610, v481);
          sub_1000082B4(v449, v525, &unk_100AD4790);
          sub_1000082B4(v601, logg, &unk_100AD4790);
          v3 = v451;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v601, &unk_100AD4790);
          sub_100004F84(v449, &unk_100AD4790);
          v634(v651, v661);
          (*(v563 + 32))(v573, v552, v584);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20);
          v452 = swift_allocObject();
          v453 = *(*v452 + 104);
          v454 = sub_1000F24EC(&qword_100AD5B28);
          (*(*(v454 - 8) + 56))(v452 + v453, 1, 1, v454);
          *(v452 + *(*v452 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v573, v452 + *(*v452 + 120), &qword_100ADA8A0);
          *&v3[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = v452;

          goto LABEL_25;
        }

        __break(1u);
LABEL_172:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v275, v276, v277, v278, v279, v280, v281, v282);
      }

      if (v140 != *(v137 + 2944))
      {
        if (v140 == *(v137 + 2948))
        {
          v455 = *(v137 + 2160);
          (*(*(v137 + 2056) + 104))(v455, *(v137 + 2980), *(v137 + 2048));
          v3 = sub_10019BB28(v455, 0, 0);
          goto LABEL_25;
        }

        if (v140 == *(v137 + 2952))
        {
          v306 = swift_task_alloc();
          *(v137 + 2792) = v306;
          *(v306 + 16) = 1;
          v456 = swift_task_alloc();
          *(v137 + 2800) = v456;
          v457 = sub_1000F24EC(&qword_100AEABF0);
          *v456 = v137;
          v456[1] = sub_1005DCF44;
          v277 = *(v137 + 880);
          v276 = *(v137 + 872);
          v282 = v457;
          v280 = sub_1005ED67C;
          v275 = v137 + 760;
          goto LABEL_124;
        }

        if (v140 != *(v137 + 2956) && v140 != *(v137 + 2960) && v140 != *(v137 + 2964) && v140 != *(v137 + 2968))
        {
          if (v140 == *(v137 + 2972))
          {
            goto LABEL_166;
          }

          if (v140 != *(v137 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }

LABEL_30:
      (*(*(v137 + 2184) + 8))(*(v137 + 2216), *(v137 + 2176));
      goto LABEL_31;
    }

    v223 = *(v137 + 1944);
    v224 = *(v137 + 1936);
    v225 = *(v137 + 1600);
    v226 = *(v137 + 1592);
    v227 = [objc_allocWithZone(LPLinkMetadata) init];
    *(v137 + 2712) = v227;
    URL.init(string:)();
    sub_1000082B4(v223, v224, &unk_100AD6DD0);
    v637 = *(v225 + 48);
    if (v637(v224, 1, v226) == 1)
    {
      v229 = 0;
    }

    else
    {
      v269 = *(v137 + 1936);
      v270 = *(v137 + 1600);
      v271 = *(v137 + 1592);
      URL._bridgeToObjectiveC()(v228);
      v229 = v272;
      (*(v270 + 8))(v269, v271);
    }

    v273 = *(v137 + 1928);
    v274 = *(v137 + 1592);
    [v227 setURL:{v229, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469}];

    URL.init(string:)();
    v275 = (v637)(v273, 1, v274);
    if (v275 == 1)
    {
      goto LABEL_172;
    }

    v284 = *(v137 + 1928);
    v285 = *(v137 + 1600);
    v286 = *(v137 + 1592);
    URL._bridgeToObjectiveC()(v283);
    v288 = v287;
    v289 = *(v285 + 8);
    *(v137 + 2720) = v289;
    *(v137 + 2728) = (v285 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v289(v284, v286);
    [v227 setOriginalURL:v288];

    *(v137 + 656) = 0x20656C707041;
    *(v137 + 664) = 0xE600000000000000;
    *(v137 + 696) = 0;
    swift_stdlib_random();
    v290 = *(v137 + 696);
    if (((100 * v290) & 0xFFFFFFFFFFFFFFF0) == 0)
    {
      do
      {
        *v493 = 0;
        swift_stdlib_random();
        v290 = *v493;
      }

      while (((100 * *v493) & 0xFFFFFFFFFFFFFFF0) == 0);
    }

    v1 = v674;
    v291 = *(v674 + 1944);
    v292 = *(v674 + 1920);
    v293 = *(v674 + 1592);
    *(v674 + 864) = (v290 * 0x64uLL) >> 64;
    v294._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v294);

    v295 = String._bridgeToObjectiveC()();

    [v227 setTitle:v295];

    sub_1000082B4(v291, v292, &unk_100AD6DD0);
    if (v637(v292, 1, v293) != 1)
    {
      v415 = *(v674 + 2980);
      v416 = *(v674 + 2104);
      v417 = *(v674 + 2056);
      v418 = *(v674 + 2048);
      v419 = *(v674 + 1616);
      v420 = *(v674 + 1608);
      v421 = *(v674 + 1600);
      v422 = *(v674 + 1592);
      (*(v421 + 32))(v419, *(v674 + 1920), v422);
      (*(v417 + 104))(v416, v415, v418);
      (*(v421 + 16))(v420, v419, v422);
      Date.init()();
      v423 = swift_task_alloc();
      *(v674 + 2736) = v423;
      *v423 = v674;
      v423[1] = sub_1005D69DC;
      v424 = *(v674 + 2288);
      v425 = *(v674 + 2104);
      v426 = *(v674 + 1608);
      v427 = *(v674 + 880);
      v428 = *(v674 + 872);

      return sub_1001DEA08(v428, v427, v425, v426, 0, 0, v424);
    }

    v296 = *(v674 + 2216);
    v297 = *(v674 + 2184);
    v298 = *(v674 + 2176);
    v299 = *(v674 + 1944);
    v300 = *(v674 + 1920);

    sub_100004F84(v299, &unk_100AD6DD0);
    (*(v297 + 8))(v296, v298);
    sub_100004F84(v300, &unk_100AD6DD0);
LABEL_31:
    v101 = *(v1 + 2608) + 1;
    if (v101 == *(v1 + 912))
    {
      goto LABEL_21;
    }
  }

  v174 = *(v137 + 1744);
  v175 = *(v137 + 1728);
  v176 = *(v137 + 1720);
  v177 = swift_allocObject();
  *(v177 + 16) = xmmword_100940080;
  *(v177 + 56) = &type metadata for String;
  *(v177 + 32) = 0xD000000000000012;
  *(v177 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v178 = UUID.uuidString.getter();
  v180 = v179;
  v181 = *(v175 + 8);
  *(v137 + 2648) = v181;
  *(v137 + 2656) = (v175 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v181(v174, v176);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v182 = *(v137 + 1672);
  v183 = *(v137 + 1600);
  v184 = *(v1 + 1592);
  v185 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v185, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v1 + 640) = v178;
  *(v1 + 648) = v180;
  v186._countAndFlagsBits = 1717658414;
  v186._object = 0xE400000000000000;
  String.append(_:)(v186);
  URL.appendingPathComponent(_:)();

  v187 = *(v183 + 8);
  *(v1 + 2664) = v187;
  *(v1 + 2672) = (v183 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v187(v182, v184);
  v188 = sub_1001C075C(5, &off_100A57518);
  v190 = v189;
  *(v1 + 2680) = v189;
  v191 = objc_opt_self();
  v192 = [v191 defaultManager];
  URL.absoluteString.getter();
  v193 = String._bridgeToObjectiveC()();

  v194 = [v192 fileExistsAtPath:v193];

  if (!v194)
  {
    goto LABEL_134;
  }

  v195 = [v191 defaultManager];
  URL._bridgeToObjectiveC()(v196);
  v198 = v197;
  *(v1 + 744) = 0;
  v199 = [v195 removeItemAtURL:v197 error:v1 + 744];

  v200 = *(v1 + 744);
  if (!v199)
  {
    v201 = v200;

    v202 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v611 = v202;
    v203 = *(v1 + 2664);
    v204 = *(v1 + 2216);
    v205 = *(v1 + 2184);
    v206 = *(v1 + 2176);
    v207 = *(v1 + 1640);
    v208 = *(v1 + 1592);
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_100940080;
    *(v1 + 592) = 0;
    *(v1 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v210 = *(v1 + 600);
    *(v1 + 608) = *(v1 + 592);
    *(v1 + 616) = v210;
    v211._object = 0x80000001008FDC20;
    v211._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v211);
    *(v1 + 728) = v202;
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    v212 = *(v1 + 608);
    v213 = *(v1 + 616);
    *(v209 + 56) = &type metadata for String;
    *(v209 + 32) = v212;
    *(v209 + 40) = v213;
    print(_:separator:terminator:)();

    v203(v207, v208);
    (*(v205 + 8))(v204, v206);
    goto LABEL_100;
  }

  v337 = v200;
LABEL_134:
  v338 = swift_task_alloc();
  *(v1 + 2688) = v338;
  *v338 = v1;
  v338[1] = sub_1005D08E4;
  v339 = *(v1 + 1640);
  v340 = *(v1 + 880);
  v341 = *(v1 + 872);

  return sub_10016A7C4(v341, v340, v188, v190, v339);
}

uint64_t sub_1005D08E4()
{
  v2 = *v1;
  *(*v1 + 2696) = v0;

  v3 = *(v2 + 2400);
  v4 = *(v2 + 2392);
  if (v0)
  {
    v5 = sub_1005E8714;
  }

  else
  {
    v5 = sub_1005D0A64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005D0A64()
{
  isUniquelyReferenced_nonNull_native = sub_1006A699C(40);
  v3 = isUniquelyReferenced_nonNull_native + 10;
  if (isUniquelyReferenced_nonNull_native + 10 < 0)
  {
    __break(1u);
LABEL_24:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_11;
  }

  v4 = _swiftEmptyArrayStorage;
  if (isUniquelyReferenced_nonNull_native != -10)
  {
    do
    {
      sub_1005ED3EC(isUniquelyReferenced_nonNull_native, -1.0, 1.0);
      v6 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1003E6584(0, *(v4 + 2) + 1, 1, v4);
        v4 = isUniquelyReferenced_nonNull_native;
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1003E6584((v7 > 1), v8 + 1, 1, v4);
        v4 = isUniquelyReferenced_nonNull_native;
      }

      *(v4 + 2) = v8 + 1;
      v4[v8 + 4] = v6;
      --v3;
    }

    while (v3);
  }

  v86 = *(v0 + 2648);
  v84 = *(v0 + 2616);
  v77 = *(v0 + 2912);
  v9 = *(v0 + 2256);
  v92 = *(v0 + 2248);
  v95 = *(v0 + 2200);
  v82 = *(v0 + 2192);
  v10 = *(v0 + 2184);
  v93 = *(v0 + 2176);
  v83 = *(v0 + 2152);
  v75 = *(v0 + 2120);
  v76 = *(v0 + 2160);
  v11 = *(v0 + 2048);
  v12 = *(v0 + 1976);
  v89 = *(v0 + 1968);
  v91 = *(v0 + 1856);
  v98 = *(v0 + 1744);
  v79 = *(v0 + 1728);
  v80 = *(v0 + 1736);
  v81 = *(v0 + 1720);
  v13 = *(v0 + 1640);
  v14 = *(v0 + 1600);
  v15 = *(v0 + 1592);
  v100 = *(v0 + 2056);
  (*(v100 + 104))();
  v74 = *(v14 + 16);
  v74(v12, v13, v15);
  (*(v14 + 56))(v12, 0, 1, v15);
  v16 = v91;
  v90 = *(v9 + 56);
  v90(v16, 1, 1, v92);
  (*(v10 + 104))(v95, v77, v93);
  v78 = *(v100 + 16);
  v78(v76, v75, v11);
  UUID.init()();
  v17 = objc_allocWithZone(type metadata accessor for AudioAsset());
  *&v17[OBJC_IVAR____TtC7Journal10AudioAsset_metadata] = 0;
  (*(v79 + 16))(v80, v98, v81);
  v84(v82, v95, v93);
  v78(v83, v76, v11);
  v18 = sub_100285908(v80, v82, v83);
  v86(v98, v81);
  v97 = *(v100 + 8);
  v97(v76, v11);
  (*(v10 + 8))(v95, v93);
  sub_1000082B4(v12, v89, &unk_100AD6DD0);
  if ((*(v14 + 48))(v89, 1, v15) == 1)
  {
    sub_100004F84(*(v0 + 1968), &unk_100AD6DD0);
    goto LABEL_12;
  }

  v19 = v18;
  v20 = *(v0 + 2648);
  v21 = *(v0 + 1744);
  v22 = *(v0 + 1720);
  v23 = *(v0 + 1712);
  v24 = *(v0 + 1632);
  v25 = *(v0 + 1592);
  (*(*(v0 + 1600) + 32))(v24, *(v0 + 1968), v25);
  v74(v23, v24, v25);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  v20(v21, v22);
  v1 = v19;
  type metadata accessor for AssetAttachment(0);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  sub_1005ED56C(v23, v29 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v30 = (v29 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v30 = v26;
  v30[1] = v28;
  v31 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v19[v31] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v19[v31] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

LABEL_11:
  v32 = *(v0 + 2664);
  v33 = *(v0 + 1632);
  v34 = *(v0 + 1592);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v32(v33, v34);
  v18 = v1;
LABEL_12:
  v35 = *(v0 + 2256);
  v36 = *(v0 + 2248);
  v37 = *(v0 + 1840);
  sub_1000082B4(*(v0 + 1856), v37, &unk_100AD4790);
  v38 = *(v35 + 48);
  if (v38(v37, 1, v36) == 1)
  {
    v39 = *(v0 + 2248);
    v40 = *(v0 + 1840);
    static Date.now.getter();
    if (v38(v40, 1, v39) != 1)
    {
      sub_100004F84(*(v0 + 1840), &unk_100AD4790);
    }
  }

  else
  {
    (*(*(v0 + 2256) + 32))(*(v0 + 1848), *(v0 + 1840), *(v0 + 2248));
  }

  v94 = *(v0 + 2664);
  v85 = *(v0 + 2048);
  v87 = *(v0 + 2120);
  v41 = *(v0 + 1976);
  v42 = *(v0 + 1856);
  v43 = *(v0 + 1640);
  v44 = *(v0 + 1592);
  v45 = *(v0 + 1328);
  v46 = *(v0 + 1320);
  v47 = *(v0 + 1304);
  v88 = *(v0 + 1312);
  v90(*(v0 + 1848), 0, 1, *(v0 + 2248));
  AudioAssetMetadata.init(duration:intensities:recordingDate:transcriptSegments:)();
  sub_100004F84(v42, &unk_100AD4790);
  sub_100004F84(v41, &unk_100AD6DD0);
  v97(v87, v85);
  v94(v43, v44);
  (*(v46 + 32))(v47, v45, v88);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8FA8);
  v48 = swift_allocObject();
  v49 = *(*v48 + 104);
  v50 = sub_1000F24EC(&qword_100AD8F98);
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  *(v48 + *(*v48 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v47, v48 + *(*v48 + 120), &qword_100AD8FA0);
  *&v18[OBJC_IVAR____TtC7Journal10AudioAsset_metadata] = v48;

  v51 = *(v0 + 2696);
  *(v0 + 2832) = v18;
  *(v0 + 2824) = v51;
  v52 = *(v0 + 2608);
  v101 = *(v0 + 3008);
  v99 = *(v0 + 3004);
  v53 = *(v0 + 992);
  v54 = *(v0 + 984);
  v96 = *(v0 + 976);
  v55 = *(v0 + 968);
  v56 = *(v0 + 960);
  v57 = *(v0 + 952);
  v58 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v58;

  v59._countAndFlagsBits = 0x20746573734120;
  v59._object = 0xE700000000000000;
  String.append(_:)(v59);
  *(v0 + 768) = v52;
  v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v60);

  v61 = objc_allocWithZone(NSAttributedString);
  v62 = String._bridgeToObjectiveC()();

  v63 = [v61 initWithString:v62];

  v64 = *&v18[OBJC_IVAR____TtC7Journal5Asset_title];
  *&v18[OBJC_IVAR____TtC7Journal5Asset_title] = v63;

  *v53 = static AssetPlacement.maxGridCount.getter();
  (*(v54 + 104))(v53, v99, v96);
  (*(v56 + 104))(v55, v101, v57);
  LOBYTE(v62) = JournalFeatureFlags.isEnabled.getter();
  (*(v56 + 8))(v55, v57);
  if (v62)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v65 = swift_task_alloc();
    *(v0 + 2848) = v65;
    *v65 = v0;
    v65[1] = sub_1005DEA30;
    v66 = *(v0 + 992);
    v67 = *(v0 + 880);
    v68 = *(v0 + 872);

    return sub_10056B238(v68, v67, v18, v66, 1);
  }

  else
  {
    v70 = swift_task_alloc();
    *(v0 + 2872) = v70;
    *v70 = v0;
    v70[1] = sub_1005DEE38;
    v71 = *(v0 + 992);
    v72 = *(v0 + 880);
    v73 = *(v0 + 872);

    return sub_1001F8424(v73, v72, v18, v71);
  }
}

uint64_t sub_1005D1548()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005D169C, v3, v2);
}

uint64_t sub_1005D169C()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  if ((*(*(v0 + 1280) + 48))(v2, 1, v1) != 1)
  {
    v501 = *(v0 + 2616);
    v401 = *(v0 + 2996);
    v435 = *(v0 + 2896);
    v422 = *(v0 + 2256);
    v429 = *(v0 + 2248);
    v534 = *(v0 + 2200);
    v470 = *(v0 + 2192);
    v528 = *(v0 + 2176);
    v558 = *(v0 + 2160);
    v562 = *(v0 + 2184);
    v478 = *(v0 + 2152);
    v8 = *(v0 + 2112);
    v9 = *(v0 + 2056);
    v10 = *(v0 + 2048);
    v11 = *(v0 + 1960);
    v510 = *(v0 + 1952);
    v413 = *(v0 + 1832);
    v546 = *(v0 + 1744);
    v446 = *(v0 + 1736);
    v573 = *(v0 + 1728);
    v452 = *(v0 + 1720);
    v12 = *(v0 + 1600);
    v13 = *(v0 + 1592);
    v14 = *(v0 + 1288);
    sub_1005ED56C(v2, v14, type metadata accessor for RandomVideoAssetGenerator.VideoAsset);
    (*(v9 + 104))(v8, v401, v10);
    v485 = v13;
    v402 = *(v12 + 16);
    v402(v11, v14 + *(v1 + 24), v13);
    (*(v12 + 56))(v11, 0, 1, v13);
    (*(v422 + 56))(v413, 1, 1, v429);
    (*(v562 + 104))(v534, v435, v528);
    v436 = *(v9 + 16);
    v436(v558, v8, v10);
    UUID.init()();
    v15 = objc_allocWithZone(type metadata accessor for VideoAsset());
    *&v15[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
    (*(v573 + 16))(v446, v546, v452);
    v501(v470, v534, v528);
    v16 = v558;
    v436(v478, v558, v10);
    v17 = sub_100285908(v446, v470, v478);
    v18 = *(v573 + 8);
    v18(v546, v452);
    v557 = *(v9 + 8);
    v557(v16, v10);
    (*(v562 + 8))(v534, v528);
    sub_1000082B4(v11, v510, &unk_100AD6DD0);
    v19 = (*(v12 + 48))(v510, 1, v485);
    v20 = *(v0 + 1952);
    v520 = v17;
    if (v19 != 1)
    {
      v210 = *(v0 + 1744);
      v211 = *(v0 + 1720);
      v212 = v18;
      v213 = *(v0 + 1712);
      v214 = *(v0 + 1624);
      v215 = *(v0 + 1592);
      (*(*(v0 + 1600) + 32))(v214, v20, v215);
      v402(v213, v214, v215);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      UUID.init()();
      v216 = UUID.uuidString.getter();
      v218 = v217;
      v212(v210, v211);
      type metadata accessor for AssetAttachment(0);
      v219 = swift_allocObject();
      *(v219 + 16) = 0;
      sub_1005ED56C(v213, v219 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v220 = (v219 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v220 = v216;
      v220[1] = v218;
      v221 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v17[v221] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v17[v221] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_155;
      }

      goto LABEL_105;
    }

    sub_100004F84(v20, &unk_100AD6DD0);
LABEL_106:
    v225 = *(v0 + 136);
    v226 = *(v0 + 144);
    v227 = *(v0 + 152);
    v228 = *(v0 + 160);
    v530 = *(v0 + 2048);
    v536 = *(v0 + 2112);
    v495 = *(v0 + 1832);
    v502 = *(v0 + 1960);
    v487 = *(v0 + 1584);
    v229 = *(v0 + 1576);
    v564 = *(v0 + 1568);
    v547 = *(v0 + 1560);
    v512 = *(v0 + 1288);
    sub_1000082B4(v495, *(v0 + 1904), &unk_100AD4790);
    v590.origin.x = v225;
    v590.origin.y = v226;
    v590.size.width = v227;
    v590.size.height = v228;
    v230 = NSStringFromCGRect(v590);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v591.origin.x = v225;
    v591.origin.y = v226;
    v591.size.width = v227;
    v591.size.height = v228;
    v231 = NSStringFromCGRect(v591);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v592.origin.x = v225;
    v592.origin.y = v226;
    v592.size.width = v227;
    v592.size.height = v228;
    v232 = NSStringFromCGRect(v592);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    sub_100004F84(v495, &unk_100AD4790);
    sub_100004F84(v502, &unk_100AD6DD0);
    v557(v536, v530);
    sub_1005ED5D4(v512);
    (*(v229 + 32))(v547, v487, v564);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0);
    v233 = swift_allocObject();
    v234 = *(*v233 + 104);
    v235 = sub_1000F24EC(&qword_100AD5B20);
    (*(*(v235 - 8) + 56))(v233 + v234, 1, 1, v235);
    *(v233 + *(*v233 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v547, v233 + *(*v233 + 120), &unk_100AEE0A0);
    v236 = v520;
    *&v520[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = v233;

    v21 = *(v0 + 2600);
LABEL_107:
    *(v0 + 2832) = v236;
    *(v0 + 2824) = v21;
    v237 = *(v0 + 2608);
    v583 = *(v0 + 3008);
    v575 = *(v0 + 3004);
    v238 = *(v0 + 992);
    v239 = *(v0 + 984);
    v565 = *(v0 + 976);
    v240 = *(v0 + 968);
    v241 = *(v0 + 960);
    v242 = *(v0 + 952);
    v243 = *(v0 + 896);
    *(v0 + 576) = *(v0 + 888);
    *(v0 + 584) = v243;

    v244._countAndFlagsBits = 0x20746573734120;
    v244._object = 0xE700000000000000;
    String.append(_:)(v244);
    *(v0 + 768) = v237;
    v245._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v245);

    v246 = objc_allocWithZone(NSAttributedString);
    v247 = String._bridgeToObjectiveC()();

    v248 = [v246 initWithString:v247];

    v249 = *&v236[OBJC_IVAR____TtC7Journal5Asset_title];
    *&v236[OBJC_IVAR____TtC7Journal5Asset_title] = v248;

    *v238 = static AssetPlacement.maxGridCount.getter();
    (*(v239 + 104))(v238, v575, v565);
    (*(v241 + 104))(v240, v583, v242);
    LOBYTE(v247) = JournalFeatureFlags.isEnabled.getter();
    (*(v241 + 8))(v240, v242);
    if (v247)
    {
      *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
      v250 = swift_task_alloc();
      *(v0 + 2848) = v250;
      *v250 = v0;
      v250[1] = sub_1005DEA30;
      v251 = *(v0 + 992);
      v252 = *(v0 + 880);
      v253 = *(v0 + 872);

      return sub_10056B238(v253, v252, v236, v251, 1);
    }

    else
    {
      v254 = swift_task_alloc();
      *(v0 + 2872) = v254;
      *v254 = v0;
      v254[1] = sub_1005DEE38;
      v255 = *(v0 + 992);
      v256 = *(v0 + 880);
      v257 = *(v0 + 872);

      return sub_1001F8424(v257, v256, v236, v255);
    }
  }

  (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
  sub_100004F84(v2, &qword_100AEABE8);
  v3 = *(v0 + 2608) + 1;
  if (v3 == *(v0 + 912))
  {
LABEL_3:
    v4 = *(v0 + 2568);

    v5 = *(v0 + 8);
    v6 = *(v0 + 2536);

    return v5(v6);
  }

  v535 = (v0 + 688);
  v414 = (v0 + 736);
  v461 = (v0 + 752);
  v486 = (v0 + 784);
  v574 = (v0 + 776);
  v582 = (v0 + 808);
  v511 = (v0 + 816);
  v21 = *(v0 + 2600);
  v494 = 0x80000001008FDE30;
  v563 = 1;
  v453 = (v0 + 840);
  while (1)
  {
    *(v0 + 2608) = v3;
    *(v0 + 2600) = v21;
    v22 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v23 = *(v0 + 832);
    v24 = (v23 * v22) >> 64;
    v25 = v23 * v22;
    v26 = *(v0 + 2552);
    if (v22 > v25)
    {
      v27 = -v26 % v26;
      if (v27 > v25)
      {
        do
        {
          v28 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v29 = *(v0 + 680);
        }

        while (v27 > v29 * v28);
        v24 = (v29 * v28) >> 64;
        v26 = *(v0 + 2552);
      }
    }

    if (v24 >= v26)
    {
      __break(1u);
LABEL_131:
      v559 = *(v0 + 2988);
      v475 = *(v0 + 2980);
      v314 = *(v0 + 2256);
      v315 = *(v0 + 2248);
      v467 = *(v0 + 2160);
      v578 = *(v0 + 2056);
      v316 = *(v0 + 1904);
      v317 = *(v0 + 1872);
      v318 = *(v0 + 1864);
      v531 = *(v0 + 1384);
      v541 = *(v0 + 1376);
      v551 = *(v0 + 2048);
      v497 = *(v0 + 1368);
      v507 = *(v0 + 1360);
      v490 = *(v0 + 1352);
      v458 = *(v0 + 1344);
      v319 = *(v0 + 1336);
      v320 = swift_allocObject();
      *(v320 + 16) = xmmword_100940080;
      *(v320 + 56) = &type metadata for String;
      *(v320 + 32) = 0xD000000000000018;
      *(v320 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v321 = *(v314 + 56);
      v321(v316, 0, 1, v315);
      v321(v317, 1, 1, v315);
      v321(v318, 1, 1, v315);
      v569 = *(v578 + 104);
      v569(v319, v559, v551);
      v524 = *(v578 + 56);
      v524(v319, 0, 1, v551);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v321(v316, 0, 1, v315);
      v321(v317, 1, 1, v315);
      v321(v318, 1, 1, v315);
      v569(v319, v559, v551);
      v524(v319, 0, 1, v551);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v321(v316, 0, 1, v315);
      v321(v317, 1, 1, v315);
      v321(v318, 1, 1, v315);
      v569(v319, v559, v551);
      v524(v319, 0, 1, v551);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v321(v316, 0, 1, v315);
      v321(v317, 1, 1, v315);
      v321(v318, 1, 1, v315);
      v569(v319, v559, v551);
      v524(v319, 0, 1, v551);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8);
      v322 = *(v490 + 72);
      v323 = (*(v490 + 80) + 32) & ~*(v490 + 80);
      v324 = swift_allocObject();
      *(v324 + 16) = xmmword_100941FE0;
      v325 = v324 + v323;
      v326 = *(v490 + 16);
      v326(v325, v531, v458);
      v326(v325 + v322, v541, v458);
      v326(v325 + 2 * v322, v497, v458);
      v326(v325 + 3 * v322, v507, v458);
      sub_1006ADB18(v324);
      v569(v467, v475, v551);
      v236 = sub_10011CEC0(v467, _swiftEmptyArrayStorage);
      v327 = *(v490 + 8);
      v327(v507, v458);
      v327(v497, v458);
      v327(v541, v458);
      v327(v531, v458);
      goto LABEL_107;
    }

    v30 = *(v0 + 2888);
    v31 = *(v0 + 2216);
    v32 = *(v0 + 2208);
    v33 = *(v0 + 2184);
    v34 = *(v0 + 2176);
    v35 = *(v33 + 16);
    v36 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v33 + 72) * v24;
    *(v0 + 2616) = v35;
    *(v0 + 2624) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v31, v36, v34);
    v35(v32, v31, v34);
    v37 = (*(v33 + 88))(v32, v34);
    if (v37 == v30)
    {
      v258 = swift_allocObject();
      *(v258 + 16) = xmmword_100940080;
      *(v258 + 56) = &type metadata for String;
      *(v258 + 32) = 0xD000000000000013;
      *(v258 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v259 = swift_task_alloc();
      *(v0 + 2632) = v259;
      *(v259 + 16) = 1;
      v260 = swift_task_alloc();
      *(v0 + 2640) = v260;
      v261 = sub_1000F24EC(&qword_100AEABF0);
      *v260 = v0;
      v260[1] = sub_1005CAA34;
      v184 = *(v0 + 880);
      v183 = *(v0 + 872);
      v189 = v261;
      v187 = sub_1005ED67C;
      v182 = v0 + 848;
      goto LABEL_115;
    }

    if (v37 == *(v0 + 2892))
    {
      goto LABEL_9;
    }

    if (v37 == *(v0 + 2896))
    {
      v262 = swift_allocObject();
      *(v262 + 16) = xmmword_100940080;
      *(v262 + 56) = &type metadata for String;
      *(v262 + 32) = 0xD000000000000013;
      *(v262 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v263 = swift_task_alloc();
      *(v0 + 2704) = v263;
      *v263 = v0;
      v263[1] = sub_1005D1548;
      v264 = *(v0 + 1264);
      v265 = *(v0 + 880);
      v266 = *(v0 + 872);

      return sub_1006A580C(v264, v266, v265);
    }

    if (v37 == *(v0 + 2900))
    {
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100940080;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 32) = 0xD000000000000012;
      *(v38 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v39 = *(v0 + 112);
      v40 = *(v39 + 16);
      if (v40)
      {
        *v511 = 0;
        swift_stdlib_random();
        v41 = *v511 * v40;
        v42 = (*v511 * v40) >> 64;
        if (v40 > v41)
        {
          v43 = -v40 % v40;
          if (v43 > v41)
          {
            do
            {
              *v453 = 0;
              swift_stdlib_random();
            }

            while (v43 > *v453 * v40);
            v42 = (*v453 * v40) >> 64;
          }
        }

        if (v42 < *(v39 + 16))
        {
          v44 = *(v39 + 32 * v42 + 40);
          swift_beginAccess();
          v557 = v44;

          sub_100691A14(v42);
          swift_endAccess();

          goto LABEL_40;
        }

        __break(1u);
LABEL_155:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_105:
        v222 = *(v0 + 1624);
        v223 = *(v0 + 1600);
        v224 = *(v0 + 1592);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        (*(v223 + 8))(v222, v224);
        goto LABEL_106;
      }

      v557 = 0xE900000000000034;
LABEL_40:
      v59 = *(v0 + 2024);
      v60 = *(v0 + 1600);
      v61 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v60 + 48))(v59, 1, v61) == 1)
      {
        v62 = *(v0 + 2216);
        v63 = *(v0 + 2184);
        v64 = *(v0 + 2176);
        v65 = *(v0 + 2024);
        goto LABEL_42;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
      v66 = Data.init(contentsOf:options:)();
      v520 = v21;
      if (v21)
      {
        v68 = *(v0 + 2216);
        v69 = *(v0 + 2184);
        v70 = *(v0 + 2176);
        v71 = *(v0 + 1664);
        v72 = *(v0 + 1600);
        v73 = *(v0 + 1592);

        (*(v72 + 8))(v71, v73);
        goto LABEL_62;
      }

      v114 = v66;
      v115 = v67;
      v116 = objc_allocWithZone(UIImage);
      sub_100049ED8(v114, v115);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v118 = [v116 initWithData:isa];

      sub_1000340DC(v114, v115);
      if (!v118)
      {
        v119 = *(v0 + 2216);
        v120 = *(v0 + 2184);
        v121 = *(v0 + 2176);
        v122 = *(v0 + 1664);
        v123 = *(v0 + 1600);
        v124 = *(v0 + 1592);

        sub_1000340DC(v114, v115);
        (*(v123 + 8))(v122, v124);
        (*(v120 + 8))(v119, v121);
        goto LABEL_72;
      }

      v494 = v115;
      v423 = *(v0 + 3000);
      v437 = *(v0 + 2900);
      v267 = *(v0 + 2256);
      v415 = *(v0 + 2248);
      v430 = *(v0 + 2200);
      v471 = *(v0 + 2192);
      v576 = *(v0 + 2184);
      v503 = *(v0 + 2176);
      v548 = *(v0 + 2160);
      v521 = *(v0 + 2152);
      v409 = *(v0 + 2144);
      v584 = *(v0 + 2056);
      v537 = *(v0 + 2048);
      v462 = *(v0 + 2016);
      v398 = *(v0 + 1896);
      v513 = *(v0 + 1744);
      v447 = *(v0 + 1736);
      v566 = *(v0 + 1728);
      v454 = *(v0 + 1720);
      v479 = *(v0 + 1712);
      v268 = *(v0 + 1600);
      v269 = *(v0 + 1592);
      v406 = *(v0 + 1544);
      v270 = *(v0 + 1528);
      v403 = *(v0 + 1520);
      (*(v584 + 104))();

      (*(v268 + 56))(v462, 1, 1, v269);
      v463 = v118;
      Date.init()();
      (*(v267 + 56))(v398, 0, 1, v415);
      (*(v270 + 104))(v406, v423, v403);
      (*(v576 + 104))(v430, v437, v503);
      v438 = *(v584 + 16);
      v438(v548, v409, v537);
      UUID.init()();
      *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
      (*(v566 + 16))(v447, v513, v454);
      v35(v471, v430, v503);
      v438(v521, v548, v537);
      v520 = sub_100285908(v447, v471, v521);
      v271 = *(v566 + 8);
      v271(v513, v454);
      v563 = *(v584 + 8);
      (v563)(v548, v537);
      (*(v576 + 8))(v430, v503);
      *v479 = v463;
      swift_storeEnumTagMultiPayload();
      v574 = v463;
      UUID.init()();
      v272 = UUID.uuidString.getter();
      v274 = v273;
      v271(v513, v454);
      type metadata accessor for AssetAttachment(0);
      v275 = swift_allocObject();
      *(v275 + 16) = 0;
      sub_1005ED56C(v479, v275 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v276 = (v275 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v276 = v272;
      v276[1] = v274;
      v277 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v520[v277] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v520[v277] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_162:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v504 = *(v0 + 2144);
      v488 = *(v0 + 2048);
      v278 = *(v0 + 2016);
      v279 = *(v0 + 2008);
      v416 = *(v0 + 1904);
      v410 = *(v0 + 1896);
      v514 = *(v0 + 1664);
      v455 = *(v0 + 1600);
      v480 = *(v0 + 1592);
      v431 = *(v0 + 1544);
      v280 = *(v0 + 1528);
      v424 = *(v0 + 1520);
      v439 = *(v0 + 1512);
      v472 = *(v0 + 1504);
      v538 = *(v0 + 1496);
      v281 = *(v0 + 1488);
      v464 = *(v0 + 1480);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      sub_1000082B4(v278, v279, &unk_100AD6DD0);
      sub_1000082B4(v410, v416, &unk_100AD4790);
      (*(v280 + 16))(v281, v431, v424);
      (*(v280 + 56))(v281, 0, 1, v424);
      MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

      sub_1000340DC(v114, v494);
      (*(v280 + 8))(v431, v424);
      sub_100004F84(v410, &unk_100AD4790);
      sub_100004F84(v278, &unk_100AD6DD0);
      (v563)(v504, v488);
      (*(v455 + 8))(v514, v480);
      (*(v472 + 32))(v464, v439, v538);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E90);
      v282 = swift_allocObject();
      v283 = *(*v282 + 104);
      v284 = sub_1000F24EC(&qword_100AD6F70);
      (*(*(v284 - 8) + 56))(v282 + v283, 1, 1, v284);
      *(v282 + *(*v282 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v464, v282 + *(*v282 + 120), &qword_100ADA8E0);
      v285 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_136:
      v236 = v520;
      *&v520[*v285] = v282;
LABEL_137:

      v21 = 0;
      goto LABEL_107;
    }

    if (v37 == *(v0 + 2904))
    {
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_100940080;
      *(v45 + 56) = &type metadata for String;
      *(v45 + 32) = 0xD000000000000015;
      *(v45 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v46 = *(v0 + 120);
      v47 = *(v46 + 16);
      if (!v47)
      {
        v557 = 0xEA00000000003130;
        goto LABEL_56;
      }

      *v486 = 0;
      swift_stdlib_random();
      v48 = *v486 * v47;
      v49 = (*v486 * v47) >> 64;
      if (v47 > v48)
      {
        v50 = -v47 % v47;
        v51 = (v0 + 808);
        if (v50 > v48)
        {
          do
          {
            *v51 = 0;
            swift_stdlib_random();
            v51 = (v0 + 808);
          }

          while (v50 > *v582 * v47);
          v49 = (*v582 * v47) >> 64;
        }
      }

      if (v49 < *(v46 + 16))
      {
        v125 = *(v46 + 32 * v49 + 40);
        swift_beginAccess();
        v557 = v125;

        sub_100691A14(v49);
        swift_endAccess();

LABEL_56:
        v126 = *(v0 + 2000);
        v127 = *(v0 + 1600);
        v128 = *(v0 + 1592);
        URL.init(string:)();
        if ((*(v127 + 48))(v126, 1, v128) != 1)
        {
          (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
          v130 = Data.init(contentsOf:options:)();
          v520 = v21;
          if (v21)
          {
            v68 = *(v0 + 2216);
            v69 = *(v0 + 2184);
            v70 = *(v0 + 2176);
            v132 = *(v0 + 1656);
            v133 = *(v0 + 1600);
            v134 = *(v0 + 1592);

            (*(v133 + 8))(v132, v134);
LABEL_62:
            (*(v69 + 8))(v68, v70);
LABEL_72:
            v21 = 0;
            goto LABEL_10;
          }

          v142 = v131;
          v143 = v130;
          v144 = objc_allocWithZone(UIImage);
          sub_100049ED8(v143, v142);
          v145 = Data._bridgeToObjectiveC()().super.isa;
          v146 = [v144 initWithData:v145];

          sub_1000340DC(v143, v142);
          v147 = v143;
          if (!v146)
          {
            v529 = *(v0 + 2216);
            v148 = *(v0 + 2184);
            v149 = *(v0 + 2176);
            v150 = *(v0 + 1656);
            v151 = *(v0 + 1600);
            v152 = *(v0 + 1592);

            sub_1000340DC(v147, v142);
            (*(v151 + 8))(v150, v152);
            (*(v148 + 8))(v529, v149);
            goto LABEL_72;
          }

          v489 = v143;
          v496 = v142;
          v425 = *(v0 + 2992);
          v440 = *(v0 + 2904);
          v291 = *(v0 + 2256);
          v417 = *(v0 + 2248);
          v432 = *(v0 + 2200);
          v456 = *(v0 + 2192);
          v567 = *(v0 + 2184);
          v505 = *(v0 + 2176);
          v549 = *(v0 + 2160);
          v465 = *(v0 + 2152);
          v411 = *(v0 + 2136);
          v585 = *(v0 + 2056);
          v522 = *(v0 + 2048);
          v292 = *(v0 + 1992);
          v399 = *(v0 + 1888);
          v515 = *(v0 + 1744);
          v448 = *(v0 + 1736);
          v577 = *(v0 + 1728);
          v539 = *(v0 + 1720);
          v473 = *(v0 + 1712);
          v396 = *(v0 + 1656);
          v293 = *(v0 + 1600);
          v294 = *(v0 + 1592);
          v407 = *(v0 + 1536);
          v295 = *(v0 + 1528);
          v404 = *(v0 + 1520);
          (*(v585 + 104))();

          (*(v293 + 16))(v292, v396, v294);
          (*(v293 + 56))(v292, 0, 1, v294);
          Date.init()();
          (*(v291 + 56))(v399, 0, 1, v417);
          (*(v295 + 104))(v407, v425, v404);
          (*(v567 + 104))(v432, v440, v505);
          v441 = *(v585 + 16);
          v441(v549, v411, v522);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
          (*(v577 + 16))(v448, v515, v539);
          v35(v456, v432, v505);
          v296 = v549;
          v441(v465, v549, v522);
          v297 = sub_100285908(v448, v456, v465);
          v298 = *(v577 + 8);
          v298(v515, v539);
          v550 = *(v585 + 8);
          v550(v296, v522);
          (*(v567 + 8))(v432, v505);
          *v473 = v146;
          swift_storeEnumTagMultiPayload();
          v299 = v297;
          v568 = v146;
          UUID.init()();
          v300 = UUID.uuidString.getter();
          v302 = v301;
          v298(v515, v539);
          type metadata accessor for AssetAttachment(0);
          v303 = swift_allocObject();
          *(v303 + 16) = 0;
          sub_1005ED56C(v473, v303 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v304 = (v303 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v304 = v300;
          v304[1] = v302;
          v305 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v523 = v299;
          if (*((*&v299[v305] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v299[v305] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v506 = *(v0 + 2136);
          v481 = *(v0 + 2048);
          v306 = *(v0 + 2008);
          v307 = *(v0 + 1992);
          v418 = *(v0 + 1904);
          v308 = *(v0 + 1888);
          v540 = *(v0 + 1656);
          v449 = *(v0 + 1600);
          v474 = *(v0 + 1592);
          v433 = *(v0 + 1536);
          v309 = *(v0 + 1528);
          v426 = *(v0 + 1520);
          v310 = *(v0 + 1488);
          v442 = *(v0 + 1464);
          v457 = *(v0 + 1456);
          v516 = *(v0 + 1448);
          v466 = *(v0 + 1440);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v307, v306, &unk_100AD6DD0);
          sub_1000082B4(v308, v418, &unk_100AD4790);
          (*(v309 + 16))(v310, v433, v426);
          (*(v309 + 56))(v310, 0, 1, v426);
          PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

          sub_1000340DC(v489, v496);
          (*(v309 + 8))(v433, v426);
          sub_100004F84(v308, &unk_100AD4790);
          sub_100004F84(v307, &unk_100AD6DD0);
          v550(v506, v481);
          (*(v449 + 8))(v540, v474);
          (*(v457 + 32))(v466, v442, v516);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E80);
          v311 = swift_allocObject();
          v312 = *(*v311 + 104);
          v313 = sub_1000F24EC(&qword_100AD2A70);
          (*(*(v313 - 8) + 56))(v311 + v312, 1, 1, v313);
          *(v311 + *(*v311 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v466, v311 + *(*v311 + 120), &qword_100ADA958);
          v236 = v523;
          *&v523[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = v311;

          goto LABEL_137;
        }

        v65 = *(v0 + 2000);
        (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

LABEL_58:

        v129 = v65;
LABEL_59:
        sub_100004F84(v129, &unk_100AD6DD0);
        goto LABEL_10;
      }

      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      v259 = swift_task_alloc();
      *(v0 + 2808) = v259;
      *(v259 + 16) = 1;
      v394 = swift_task_alloc();
      *(v0 + 2816) = v394;
      v395 = sub_1000F24EC(&qword_100AEABF0);
      *v394 = v0;
      v394[1] = sub_1005DDCB8;
      v184 = *(v0 + 880);
      v183 = *(v0 + 872);
      v189 = v395;
      v187 = sub_1005ED564;
      v182 = v0 + 824;
      goto LABEL_115;
    }

    if (v37 == *(v0 + 2908))
    {
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100940080;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 32) = 0xD000000000000012;
      *(v52 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v53 = *(v0 + 128);
      v54 = *(v53 + 16);
      if (v54)
      {
        *v461 = 0;
        swift_stdlib_random();
        v55 = *v461 * v54;
        v56 = (*v461 * v54) >> 64;
        if (v54 > v55)
        {
          v57 = -v54 % v54;
          v58 = (v0 + 776);
          if (v57 > v55)
          {
            do
            {
              *v58 = 0;
              swift_stdlib_random();
              v58 = (v0 + 776);
            }

            while (v57 > *v574 * v54);
            v56 = (*v574 * v54) >> 64;
          }
        }

        if (v56 >= *(v53 + 16))
        {
          goto LABEL_157;
        }

        v153 = *(v53 + 32 * v56 + 40);
        swift_beginAccess();
        v557 = v153;

        sub_100691A14(v56);
        swift_endAccess();
      }

      else
      {
        v557 = 0xEA00000000003030;
      }

      v154 = *(v0 + 1984);
      v155 = *(v0 + 1600);
      v156 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v155 + 48))(v154, 1, v156) != 1)
      {
        (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
        v157 = Data.init(contentsOf:options:)();
        v520 = v21;
        if (v21)
        {
          v159 = *(v0 + 2216);
          v160 = *(v0 + 2184);
          v161 = *(v0 + 2176);
          v162 = *(v0 + 1648);
          v163 = *(v0 + 1600);
          v164 = *(v0 + 1592);

          (*(v163 + 8))(v162, v164);
          (*(v160 + 8))(v159, v161);
        }

        else
        {
          v165 = v157;
          v166 = v158;
          v167 = objc_allocWithZone(UIImage);
          sub_100049ED8(v165, v166);
          v168 = Data._bridgeToObjectiveC()().super.isa;
          v169 = [v167 initWithData:v168];

          sub_1000340DC(v165, v166);
          if (v169)
          {
            v508 = v166;
            v443 = *(v0 + 2908);
            v337 = *(v0 + 2256);
            v427 = *(v0 + 2248);
            v518 = *(v0 + 2200);
            v476 = *(v0 + 2192);
            v338 = *(v0 + 2184);
            v434 = *(v0 + 2176);
            v570 = *(v0 + 2160);
            v526 = *(v0 + 2152);
            v419 = *(v0 + 2128);
            v339 = *(v0 + 1880);
            v543 = *(v0 + 1744);
            v553 = *(v0 + 2048);
            v450 = *(v0 + 1736);
            v587 = *(v0 + 1728);
            v459 = *(v0 + 1720);
            v491 = *(v0 + 1712);
            v580 = *(v0 + 2056);
            (*(v580 + 104))();

            v482 = v169;
            Date.init()();
            (*(v337 + 56))(v339, 0, 1, v427);
            (*(v338 + 104))(v518, v443, v434);
            v444 = *(v580 + 16);
            v444(v570, v419, v553);
            UUID.init()();
            *(objc_allocWithZone(type metadata accessor for BookAsset()) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
            (*(v587 + 16))(v450, v543, v459);
            v35(v476, v518, v434);
            v340 = v570;
            v444(v526, v570, v553);
            v520 = sub_100285908(v450, v476, v526);
            v341 = *(v587 + 8);
            v341(v543, v459);
            v571 = *(v580 + 8);
            v571(v340, v553);
            (*(v338 + 8))(v518, v434);
            *v491 = v482;
            swift_storeEnumTagMultiPayload();
            v554 = v482;
            UUID.init()();
            v342 = UUID.uuidString.getter();
            v344 = v343;
            v341(v543, v459);
            type metadata accessor for AssetAttachment(0);
            v345 = swift_allocObject();
            *(v345 + 16) = 0;
            sub_1005ED56C(v491, v345 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v346 = (v345 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v346 = v342;
            v346[1] = v344;
            v347 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v520[v347] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v520[v347] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v483 = *(v0 + 2128);
            v477 = *(v0 + 2048);
            v348 = *(v0 + 1904);
            v349 = *(v0 + 1880);
            v350 = *(v0 + 1600);
            v492 = *(v0 + 1592);
            v499 = *(v0 + 1648);
            v351 = *(v0 + 1424);
            v468 = *(v0 + 1416);
            v544 = *(v0 + 1408);
            v519 = *(v0 + 1400);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1000082B4(v349, v348, &unk_100AD4790);
            BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

            sub_1000340DC(v165, v508);
            sub_100004F84(v349, &unk_100AD4790);
            v571(v483, v477);
            (*(v350 + 8))(v499, v492);
            (*(v468 + 32))(v519, v351, v544);
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&qword_100AEABF8);
            v282 = swift_allocObject();
            v352 = *(*v282 + 104);
            v353 = sub_1000F24EC(&qword_100AD4318);
            (*(*(v353 - 8) + 56))(v282 + v352, 1, 1, v353);
            *(v282 + *(*v282 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v519, v282 + *(*v282 + 120), &qword_100ADA8C0);
            v285 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
            goto LABEL_136;
          }

          v170 = *(v0 + 2216);
          v171 = *(v0 + 2184);
          v172 = *(v0 + 2176);
          v173 = *(v0 + 1648);
          v174 = *(v0 + 1600);
          v175 = *(v0 + 1592);

          sub_1000340DC(v165, v166);
          (*(v174 + 8))(v173, v175);
          (*(v171 + 8))(v170, v172);
        }

        v21 = 0;
        goto LABEL_10;
      }

      v62 = *(v0 + 2216);
      v63 = *(v0 + 2184);
      v64 = *(v0 + 2176);
      v65 = *(v0 + 1984);
LABEL_42:
      (*(v63 + 8))(v62, v64);

      goto LABEL_58;
    }

    if (v37 == *(v0 + 2912))
    {
      break;
    }

    if (v37 != *(v0 + 2916))
    {
      if (v37 == *(v0 + 2920))
      {
        goto LABEL_131;
      }

      if (v37 == *(v0 + 2924))
      {
        v525 = *(v0 + 2988);
        v586 = *(v0 + 2980);
        v328 = *(v0 + 2256);
        v329 = *(v0 + 2248);
        v330 = *(v0 + 2056);
        v331 = *(v0 + 1904);
        v332 = *(v0 + 1872);
        v517 = *(v0 + 2048);
        v498 = *(v0 + 1864);
        v552 = *(v0 + 2160);
        v560 = *(v0 + 1376);
        v532 = *(v0 + 1384);
        v542 = *(v0 + 1352);
        v579 = *(v0 + 1344);
        v333 = *(v0 + 1336);
        v334 = swift_allocObject();
        *(v334 + 16) = xmmword_100940080;
        *(v334 + 56) = &type metadata for String;
        *(v334 + 32) = 0xD000000000000017;
        *(v334 + 40) = 0x80000001008FDC40;
        print(_:separator:terminator:)();

        Date.init()();
        v335 = *(v328 + 56);
        v335(v331, 0, 1, v329);
        v335(v332, 1, 1, v329);
        v335(v498, 1, 1, v329);
        v336 = *(v330 + 104);
        v336(v333, v525, v517);
        (*(v330 + 56))(v333, 0, 1, v517);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        v336(v552, v586, v517);
        (*(v542 + 16))(v560, v532, v579);
        v236 = sub_10033CC64(v552, v560);
        (*(v542 + 8))(v532, v579);
        goto LABEL_107;
      }

      if (v37 == *(v0 + 2928))
      {
        v135 = *(v0 + 1944);
        v136 = *(v0 + 1936);
        v137 = *(v0 + 1600);
        v138 = *(v0 + 1592);
        v139 = [objc_allocWithZone(LPLinkMetadata) init];
        *(v0 + 2712) = v139;
        URL.init(string:)();
        sub_1000082B4(v135, v136, &unk_100AD6DD0);
        v557 = *(v137 + 48);
        if ((v557)(v136, 1, v138) == 1)
        {
          v141 = 0;
        }

        else
        {
          v176 = *(v0 + 1936);
          v177 = *(v0 + 1600);
          v178 = *(v0 + 1592);
          URL._bridgeToObjectiveC()(v140);
          v141 = v179;
          (*(v177 + 8))(v176, v178);
        }

        v180 = *(v0 + 1928);
        v181 = *(v0 + 1592);
        [v139 setURL:v141];

        URL.init(string:)();
        v182 = (v557)(v180, 1, v181);
        if (v182 == 1)
        {
          goto LABEL_164;
        }

        v191 = *(v0 + 1928);
        v192 = *(v0 + 1600);
        v193 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v190);
        v195 = v194;
        v196 = *(v192 + 8);
        *(v0 + 2720) = v196;
        *(v0 + 2728) = (v192 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v196(v191, v193);
        [v139 setOriginalURL:v195];

        *(v0 + 656) = 0x20656C707041;
        *(v0 + 664) = 0xE600000000000000;
        *(v0 + 696) = 0;
        swift_stdlib_random();
        v197 = *(v0 + 696);
        if (((100 * v197) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          v198 = (v197 * 0x64uLL) >> 64;
        }

        else
        {
          v199 = (v0 + 688);
          do
          {
            *v199 = 0;
            swift_stdlib_random();
            v199 = (v0 + 688);
          }

          while (((100 * *v535) & 0xFFFFFFFFFFFFFFF0) == 0);
          v198 = (*v535 * 0x64uLL) >> 64;
        }

        v200 = *(v0 + 1944);
        v201 = *(v0 + 1920);
        v202 = *(v0 + 1592);
        *(v0 + 864) = v198;
        v203._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v203);

        v204 = String._bridgeToObjectiveC()();

        [v139 setTitle:v204];

        sub_1000082B4(v200, v201, &unk_100AD6DD0);
        if ((v557)(v201, 1, v202) != 1)
        {
          v356 = *(v0 + 2980);
          v357 = *(v0 + 2104);
          v358 = *(v0 + 2056);
          v359 = *(v0 + 2048);
          v360 = *(v0 + 1616);
          v361 = *(v0 + 1608);
          v362 = *(v0 + 1600);
          v363 = *(v0 + 1592);
          (*(v362 + 32))(v360, *(v0 + 1920), v363);
          (*(v358 + 104))(v357, v356, v359);
          (*(v362 + 16))(v361, v360, v363);
          Date.init()();
          v364 = swift_task_alloc();
          *(v0 + 2736) = v364;
          *v364 = v0;
          v364[1] = sub_1005D69DC;
          v365 = *(v0 + 2288);
          v366 = *(v0 + 2104);
          v367 = *(v0 + 1608);
          v368 = *(v0 + 880);
          v369 = *(v0 + 872);

          return sub_1001DEA08(v369, v368, v366, v367, 0, 0, v365);
        }

        v205 = *(v0 + 2216);
        v206 = *(v0 + 2184);
        v207 = *(v0 + 2176);
        v208 = *(v0 + 1944);
        v209 = *(v0 + 1920);

        sub_100004F84(v208, &unk_100AD6DD0);
        (*(v206 + 8))(v205, v207);
        v129 = v209;
        goto LABEL_59;
      }

      if (v37 == *(v0 + 2932))
      {
        v259 = swift_task_alloc();
        *(v0 + 2760) = v259;
        *(v259 + 16) = 1;
        v354 = swift_task_alloc();
        *(v0 + 2768) = v354;
        v355 = sub_1000F24EC(&qword_100AEABF0);
        *v354 = v0;
        v354[1] = sub_1005DB91C;
        v184 = *(v0 + 880);
        v183 = *(v0 + 872);
        v189 = v355;
        v187 = sub_1005ED67C;
        v182 = v0 + 712;
LABEL_115:
        v186 = 0x80000001008FDB40;
        v185 = 0xD000000000000024;
        v188 = v259;

        return withCheckedContinuation<A>(isolation:function:_:)(v182, v183, v184, v185, v186, v187, v188, v189);
      }

      if (v37 == *(v0 + 2936))
      {
        v259 = swift_task_alloc();
        *(v0 + 2776) = v259;
        *(v259 + 16) = 1;
        v370 = swift_task_alloc();
        *(v0 + 2784) = v370;
        v371 = sub_1000F24EC(&qword_100AEABF0);
        *v370 = v0;
        v370[1] = sub_1005DC438;
        v184 = *(v0 + 880);
        v183 = *(v0 + 872);
        v189 = v371;
        v187 = sub_1005ED67C;
        v182 = v0 + 720;
        goto LABEL_115;
      }

      if (v37 == *(v0 + 2940))
      {
        v372 = sub_1005ED3EC(v37, -90.0, 90.0);
        v374 = v373;
        sub_1005ED3EC(v372, -180.0, 180.0);
        v376 = v375;
        *v414 = _swiftEmptyArrayStorage;
        v182 = sub_1006A699C(5001);
        if (v182 + 5000 >= 1)
        {
          v377 = v182 + 4999;
          v114 = 1;
          while (1)
          {
            v378 = sub_1005ED3EC(v182, -0.01, 0.01);
            v374 = v374 + v379;
            sub_1005ED3EC(v378, -0.01, 0.01);
            v376 = v376 + v380;
            [objc_allocWithZone(CLLocation) initWithLatitude:v374 longitude:v376];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v414 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v414 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v182 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v377)
            {
              break;
            }

            --v377;
            if (__OFADD__(v114++, 1))
            {
              __break(1u);
              goto LABEL_162;
            }
          }

          v420 = *(v0 + 2940);
          v382 = *(v0 + 2304);
          v400 = *(v0 + 2280);
          v383 = *(v0 + 2256);
          v384 = *(v0 + 2248);
          v408 = *(v0 + 2200);
          v445 = *(v0 + 2192);
          v561 = *(v0 + 2184);
          v405 = *(v0 + 2176);
          v412 = *(v0 + 2160);
          v451 = *(v0 + 2152);
          v572 = *(v0 + 2080);
          v581 = *(v0 + 2048);
          v588 = *(v0 + 2056);
          v460 = *(v0 + 1904);
          v469 = *(v0 + 1872);
          v385 = *(v0 + 1792);
          v527 = *(v0 + 1784);
          v533 = *(v0 + 1744);
          v428 = *(v0 + 1736);
          v545 = *(v0 + 1728);
          v555 = *(v0 + 1720);
          v484 = *(v0 + 1176);
          v493 = *(v0 + 1168);
          v500 = *(v0 + 1152);
          v509 = *(v0 + 1160);
          (*(v588 + 104))();
          Date.init()();
          Date.addingTimeInterval(_:)();
          v386 = *(v383 + 8);
          v386(v382, v384);
          v397 = *(v383 + 56);
          v397(v385, 0, 1, v384);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v386(v382, v384);
          sub_1006A699C(0x20000000000001);
          Date.addingTimeInterval(_:)();
          v386(v400, v384);
          v397(v527, 0, 1, v384);
          sub_1006A699C(0x20000000000001);
          sub_1006A699C(0x20000000000001);
          (*(v561 + 104))(v408, v420, v405);
          v421 = *(v588 + 16);
          v421(v412, v572, v581);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v545 + 16))(v428, v533, v555);
          v35(v445, v408, v405);
          v421(v451, v412, v581);
          v387 = sub_100285908(v428, v445, v451);
          (*(v545 + 8))(v533, v555);
          v556 = *(v588 + 8);
          v556(v412, v581);
          (*(v561 + 8))(v408, v405);
          sub_1000082B4(v385, v460, &unk_100AD4790);
          sub_1000082B4(v527, v469, &unk_100AD4790);
          v236 = v387;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v527, &unk_100AD4790);
          sub_100004F84(v385, &unk_100AD4790);
          v556(v572, v581);
          (*(v493 + 32))(v500, v484, v509);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20);
          v388 = swift_allocObject();
          v389 = *(*v388 + 104);
          v390 = sub_1000F24EC(&qword_100AD5B28);
          (*(*(v390 - 8) + 56))(v388 + v389, 1, 1, v390);
          *(v388 + *(*v388 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v500, v388 + *(*v388 + 120), &qword_100ADA8A0);
          *&v236[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = v388;

          goto LABEL_107;
        }

        __break(1u);
LABEL_164:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v182, v183, v184, v185, v186, v187, v188, v189);
      }

      if (v37 != *(v0 + 2944))
      {
        if (v37 == *(v0 + 2948))
        {
          v391 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v391, *(v0 + 2980), *(v0 + 2048));
          v236 = sub_10019BB28(v391, 0, 0);
          goto LABEL_107;
        }

        if (v37 == *(v0 + 2952))
        {
          v259 = swift_task_alloc();
          *(v0 + 2792) = v259;
          *(v259 + 16) = 1;
          v392 = swift_task_alloc();
          *(v0 + 2800) = v392;
          v393 = sub_1000F24EC(&qword_100AEABF0);
          *v392 = v0;
          v392[1] = sub_1005DCF44;
          v184 = *(v0 + 880);
          v183 = *(v0 + 872);
          v189 = v393;
          v187 = sub_1005ED67C;
          v182 = v0 + 760;
          goto LABEL_115;
        }

        if (v37 != *(v0 + 2956) && v37 != *(v0 + 2960) && v37 != *(v0 + 2964) && v37 != *(v0 + 2968))
        {
          if (v37 == *(v0 + 2972))
          {
            goto LABEL_158;
          }

          if (v37 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }
    }

LABEL_9:
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_10:
    v3 = *(v0 + 2608) + 1;
    if (v3 == *(v0 + 912))
    {
      goto LABEL_3;
    }
  }

  v74 = *(v0 + 1744);
  v75 = *(v0 + 1728);
  v76 = *(v0 + 1720);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100940080;
  *(v77 + 56) = &type metadata for String;
  *(v77 + 32) = 0xD000000000000012;
  *(v77 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v78 = UUID.uuidString.getter();
  v80 = v79;
  v81 = *(v75 + 8);
  *(v0 + 2648) = v81;
  *(v0 + 2656) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81(v74, v76);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v82 = *(v0 + 1672);
  v83 = *(v0 + 1600);
  v84 = *(v0 + 1592);
  v85 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v85, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v78;
  *(v0 + 648) = v80;
  v86._countAndFlagsBits = 1717658414;
  v86._object = 0xE400000000000000;
  String.append(_:)(v86);
  URL.appendingPathComponent(_:)();

  v87 = *(v83 + 8);
  *(v0 + 2664) = v87;
  *(v0 + 2672) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87(v82, v84);
  v88 = sub_1001C075C(5, &off_100A57518);
  v90 = v89;
  *(v0 + 2680) = v89;
  v91 = objc_opt_self();
  v92 = [v91 defaultManager];
  URL.absoluteString.getter();
  v93 = String._bridgeToObjectiveC()();

  v94 = [v92 fileExistsAtPath:v93];

  if (!v94)
  {
    goto LABEL_124;
  }

  v95 = [v91 defaultManager];
  URL._bridgeToObjectiveC()(v96);
  v98 = v97;
  *(v0 + 744) = 0;
  v99 = [v95 removeItemAtURL:v97 error:v0 + 744];

  v100 = *(v0 + 744);
  if (!v99)
  {
    v101 = v100;

    v102 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v520 = v102;
    v557 = *(v0 + 2672);
    v103 = *(v0 + 2664);
    v104 = *(v0 + 2216);
    v105 = *(v0 + 2184);
    v106 = *(v0 + 2176);
    v107 = *(v0 + 1640);
    v108 = *(v0 + 1592);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v110 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v110;
    v111._object = 0x80000001008FDC20;
    v111._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v111);
    *(v0 + 728) = v102;
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    v112 = *(v0 + 608);
    v113 = *(v0 + 616);
    *(v109 + 56) = &type metadata for String;
    *(v109 + 32) = v112;
    *(v109 + 40) = v113;
    print(_:separator:terminator:)();

    v103(v107, v108);
    (*(v105 + 8))(v104, v106);
    v21 = 0;
    goto LABEL_10;
  }

  v286 = v100;
LABEL_124:
  v287 = swift_task_alloc();
  *(v0 + 2688) = v287;
  *v287 = v0;
  v287[1] = sub_1005D08E4;
  v288 = *(v0 + 1640);
  v289 = *(v0 + 880);
  v290 = *(v0 + 872);

  return sub_10016A7C4(v290, v289, v88, v90, v288);
}

uint64_t sub_1005D69DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2744) = v1;

  if (v1)
  {

    v5 = v4[300];
    v6 = v4[299];
    v7 = sub_1005D6E88;
  }

  else
  {
    v4[344] = a1;
    v5 = v4[300];
    v6 = v4[299];
    v7 = sub_1005D6B3C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1005D6B3C()
{
  v1 = *(v0 + 2720);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1592);

  v1(v3, v4);
  sub_100004F84(v2, &unk_100AD6DD0);
  v5 = *(v0 + 2752);
  v6 = *(v0 + 2744);
  *(v0 + 2832) = v5;
  *(v0 + 2824) = v6;
  v7 = *(v0 + 2608);
  v30 = *(v0 + 3004);
  v31 = *(v0 + 3008);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v29 = *(v0 + 976);
  v10 = *(v0 + 968);
  v11 = *(v0 + 960);
  v12 = *(v0 + 952);
  v13 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v13;

  v14._countAndFlagsBits = 0x20746573734120;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  *(v0 + 768) = v7;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16 = objc_allocWithZone(NSAttributedString);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithString:v17];

  v19 = *(v5 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v5 + OBJC_IVAR____TtC7Journal5Asset_title) = v18;

  *v8 = static AssetPlacement.maxGridCount.getter();
  (*(v9 + 104))(v8, v30, v29);
  (*(v11 + 104))(v10, v31, v12);
  LOBYTE(v17) = JournalFeatureFlags.isEnabled.getter();
  (*(v11 + 8))(v10, v12);
  if (v17)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v20 = swift_task_alloc();
    *(v0 + 2848) = v20;
    *v20 = v0;
    v20[1] = sub_1005DEA30;
    v21 = *(v0 + 992);
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);

    return sub_10056B238(v23, v22, v5, v21, 1);
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 2872) = v25;
    *v25 = v0;
    v25[1] = sub_1005DEE38;
    v26 = *(v0 + 992);
    v27 = *(v0 + 880);
    v28 = *(v0 + 872);

    return sub_1001F8424(v28, v27, v5, v26);
  }
}

uint64_t sub_1005D6E88()
{
  v1 = *(v0 + 2720);
  v2 = *(v0 + 1944);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1592);

  v1(v3, v4);
  sub_100004F84(v2, &unk_100AD6DD0);
  (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
  v5 = *(v0 + 2608) + 1;
  if (v5 == *(v0 + 912))
  {
LABEL_2:
    v6 = *(v0 + 2568);

    v7 = *(v0 + 8);
    v8 = *(v0 + 2536);

    return v7(v8);
  }

  v367 = (v0 + 688);
  v417 = (v0 + 752);
  v374 = (v0 + 776);
  v442 = (v0 + 784);
  v408 = (v0 + 808);
  v464 = (v0 + 816);
  v436 = (v0 + 840);
  v490 = 0x80000001008FDE10;
  v448 = 0x80000001008FDE30;
  v10 = &unk_100AD6DD0;
  while (1)
  {
    *(v0 + 2608) = v5;
    *(v0 + 2600) = 0;
    v11 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v12 = *(v0 + 832);
    v13 = (v12 * v11) >> 64;
    v14 = v12 * v11;
    v15 = *(v0 + 2552);
    if (v11 > v14)
    {
      v16 = -v15 % v15;
      if (v16 > v14)
      {
        do
        {
          v17 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v18 = *(v0 + 680);
        }

        while (v16 > v18 * v17);
        v13 = (v18 * v17) >> 64;
        v15 = *(v0 + 2552);
      }
    }

    if (v13 >= v15)
    {
      __break(1u);
LABEL_108:
      v480 = *(v0 + 2988);
      v414 = *(v0 + 2980);
      v234 = *(v0 + 2256);
      v235 = *(v0 + 2248);
      v404 = *(v0 + 2160);
      v236 = *(v0 + 2056);
      v475 = *(v0 + 2048);
      v237 = *(v0 + 1904);
      v238 = *(v0 + 1872);
      v239 = *(v0 + 1864);
      v439 = *(v0 + 1376);
      v494 = *(v0 + 1368);
      v451 = *(v0 + 1384);
      v459 = *(v0 + 1360);
      v445 = *(v0 + 1352);
      v397 = *(v0 + 1344);
      v240 = *(v0 + 1336);
      v241 = swift_allocObject();
      *(v241 + 16) = xmmword_100940080;
      *(v241 + 56) = &type metadata for String;
      *(v241 + 32) = 0xD000000000000018;
      *(v241 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v242 = *(v234 + 56);
      v242(v237, 0, 1, v235);
      v242(v238, 1, 1, v235);
      v242(v239, 1, 1, v235);
      v501 = *(v236 + 104);
      v501(v240, v480, v475);
      v243 = *(v236 + 56);
      v243(v240, 0, 1, v475);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v242(v237, 0, 1, v235);
      v242(v238, 1, 1, v235);
      v242(v239, 1, 1, v235);
      v501(v240, v480, v475);
      v243(v240, 0, 1, v475);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v242(v237, 0, 1, v235);
      v242(v238, 1, 1, v235);
      v242(v239, 1, 1, v235);
      v501(v240, v480, v475);
      v243(v240, 0, 1, v475);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v242(v237, 0, 1, v235);
      v242(v238, 1, 1, v235);
      v242(v239, 1, 1, v235);
      v501(v240, v480, v475);
      v243(v240, 0, 1, v475);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8);
      v244 = *(v445 + 72);
      v245 = (*(v445 + 80) + 32) & ~*(v445 + 80);
      v246 = swift_allocObject();
      *(v246 + 16) = xmmword_100941FE0;
      v247 = v246 + v245;
      v248 = *(v445 + 16);
      v248(v247, v451, v397);
      v248(v247 + v244, v439, v397);
      v248(v247 + 2 * v244, v494, v397);
      v248(v247 + 3 * v244, v459, v397);
      sub_1006ADB18(v246);
      v501(v404, v414, v475);
      v200 = sub_10011CEC0(v404, _swiftEmptyArrayStorage);
      v249 = *(v445 + 8);
      v249(v459, v397);
      v249(v494, v397);
      v249(v439, v397);
      v249(v451, v397);
      goto LABEL_130;
    }

    v19 = v10;
    v20 = *(v0 + 2888);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2208);
    v23 = *(v0 + 2184);
    v24 = *(v0 + 2176);
    v25 = *(v23 + 16);
    v26 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v23 + 72) * v13;
    *(v0 + 2616) = v25;
    *(v0 + 2624) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v26, v24);
    v25(v22, v21, v24);
    v27 = (*(v23 + 88))(v22, v24);
    if (v27 == v20)
    {
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_100940080;
      *(v172 + 56) = &type metadata for String;
      *(v172 + 32) = 0xD000000000000013;
      *(v172 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v173 = swift_task_alloc();
      *(v0 + 2632) = v173;
      *(v173 + 16) = 1;
      v174 = swift_task_alloc();
      *(v0 + 2640) = v174;
      v175 = sub_1000F24EC(&qword_100AEABF0);
      *v174 = v0;
      v174[1] = sub_1005CAA34;
      v148 = *(v0 + 880);
      v147 = *(v0 + 872);
      v153 = v175;
      v151 = sub_1005ED67C;
      v146 = v0 + 848;
      goto LABEL_92;
    }

    if (v27 == *(v0 + 2892))
    {
      goto LABEL_6;
    }

    if (v27 == *(v0 + 2896))
    {
      v176 = swift_allocObject();
      *(v176 + 16) = xmmword_100940080;
      *(v176 + 56) = &type metadata for String;
      *(v176 + 32) = 0xD000000000000013;
      *(v176 + 40) = 0x80000001008FDBE0;
      print(_:separator:terminator:)();

      v177 = swift_task_alloc();
      *(v0 + 2704) = v177;
      *v177 = v0;
      v177[1] = sub_1005D1548;
      v178 = *(v0 + 1264);
      v179 = *(v0 + 880);
      v180 = *(v0 + 872);

      return sub_1006A580C(v178, v180, v179);
    }

    if (v27 == *(v0 + 2900))
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100940080;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 32) = 0xD000000000000012;
      *(v28 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v29 = *(v0 + 112);
      v30 = *(v29 + 16);
      if (!v30)
      {
        goto LABEL_41;
      }

      *v464 = 0;
      swift_stdlib_random();
      v31 = *v464 * v30;
      v32 = (*v464 * v30) >> 64;
      if (v30 > v31)
      {
        v33 = -v30 % v30;
        if (v33 > v31)
        {
          do
          {
            *v436 = 0;
            swift_stdlib_random();
          }

          while (v33 > *v436 * v30);
          v32 = (*v436 * v30) >> 64;
        }
      }

      if (v32 < *(v29 + 16))
      {
        swift_beginAccess();

        sub_100691A14(v32);
        swift_endAccess();

LABEL_41:
        v46 = *(v0 + 2024);
        v47 = *(v0 + 1600);
        v48 = *(v0 + 1592);
        URL.init(string:)();
        if ((*(v47 + 48))(v46, 1, v48) == 1)
        {
          v49 = *(v0 + 2216);
          v50 = *(v0 + 2184);
          v51 = *(v0 + 2176);
          v52 = *(v0 + 2024);
LABEL_52:
          (*(v50 + 8))(v49, v51);

LABEL_53:

          v96 = v52;
          v97 = v10;
LABEL_54:
          sub_100004F84(v96, v97);
          goto LABEL_8;
        }

        (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
        v53 = Data.init(contentsOf:options:)();
        v471 = 0;
        v100 = v99;
        v101 = v53;
        v102 = objc_allocWithZone(UIImage);
        sub_100049ED8(v101, v100);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v104 = [v102 initWithData:isa];
        v105 = v101;
        v106 = v104;

        sub_1000340DC(v101, v100);
        if (v106)
        {
          v442 = v101;
          v448 = v100;
          v361 = *(v0 + 3000);
          v381 = *(v0 + 2900);
          v181 = *(v0 + 2256);
          v357 = *(v0 + 2248);
          v456 = *(v0 + 2200);
          v418 = *(v0 + 2192);
          v182 = *(v0 + 2184);
          v368 = *(v0 + 2176);
          v472 = *(v0 + 2160);
          v425 = *(v0 + 2152);
          v354 = *(v0 + 2144);
          v499 = *(v0 + 2056);
          v465 = *(v0 + 2048);
          v409 = *(v0 + 2016);
          v346 = *(v0 + 1896);
          v375 = *(v0 + 1744);
          v393 = *(v0 + 1736);
          v491 = *(v0 + 1728);
          v400 = *(v0 + 1720);
          v431 = *(v0 + 1712);
          v183 = *(v0 + 1600);
          v184 = *(v0 + 1592);
          v351 = *(v0 + 1544);
          v185 = *(v0 + 1528);
          v348 = *(v0 + 1520);
          (*(v499 + 104))();

          (*(v183 + 56))(v409, 1, 1, v184);
          v410 = v106;
          Date.init()();
          (*(v181 + 56))(v346, 0, 1, v357);
          (*(v185 + 104))(v351, v361, v348);
          (*(v182 + 104))(v456, v381, v368);
          v382 = *(v499 + 16);
          v382(v472, v354, v465);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
          (*(v491 + 16))(v393, v375, v400);
          v25(v418, v456, v368);
          v186 = v472;
          v382(v425, v472, v465);
          v187 = sub_100285908(v393, v418, v425);
          v188 = *(v491 + 8);
          v188(v375, v400);
          v471 = *(v499 + 8);
          v471(v186, v465);
          (*(v182 + 8))(v456, v368);
          *v431 = v410;
          swift_storeEnumTagMultiPayload();
          v464 = v410;
          UUID.init()();
          v189 = UUID.uuidString.getter();
          v191 = v190;
          v188(v375, v400);
          type metadata accessor for AssetAttachment(0);
          v192 = swift_allocObject();
          *(v192 + 16) = 0;
          sub_1005ED56C(v431, v192 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v193 = (v192 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v193 = v189;
          v193[1] = v191;
          v194 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v490 = v187;
          if (*((*(v187 + v194) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v187 + v194) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_146:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v419 = *(v0 + 2048);
          v426 = *(v0 + 2144);
          v195 = *(v0 + 2016);
          v196 = *(v0 + 2008);
          v362 = *(v0 + 1904);
          v197 = *(v0 + 1896);
          v432 = *(v0 + 1664);
          v387 = *(v0 + 1600);
          v411 = *(v0 + 1592);
          v376 = *(v0 + 1544);
          v198 = *(v0 + 1528);
          v369 = *(v0 + 1520);
          v383 = *(v0 + 1512);
          v401 = *(v0 + 1504);
          v437 = *(v0 + 1496);
          v199 = *(v0 + 1488);
          v394 = *(v0 + 1480);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v195, v196, &unk_100AD6DD0);
          sub_1000082B4(v197, v362, &unk_100AD4790);
          (*(v198 + 16))(v199, v376, v369);
          (*(v198 + 56))(v199, 0, 1, v369);
          MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

          sub_1000340DC(v442, v448);
          (*(v198 + 8))(v376, v369);
          sub_100004F84(v197, &unk_100AD4790);
          sub_100004F84(v195, &unk_100AD6DD0);
          v471(v426, v419);
          v200 = v490;
          (*(v387 + 8))(v432, v411);
          (*(v401 + 32))(v394, v383, v437);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E90);
          v201 = swift_allocObject();
          v202 = *(*v201 + 104);
          v203 = sub_1000F24EC(&qword_100AD6F70);
          (*(*(v203 - 8) + 56))(v201 + v202, 1, 1, v203);
          *(v201 + *(*v201 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v394, v201 + *(*v201 + 120), &qword_100ADA8E0);
          v204 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
          goto LABEL_113;
        }

        v485 = *(v0 + 2216);
        v107 = *(v0 + 2184);
        v108 = *(v0 + 2176);
        v109 = *(v0 + 1664);
LABEL_69:
        v127 = *(v0 + 1600);
        v128 = *(v0 + 1592);

        sub_1000340DC(v105, v100);
        (*(v127 + 8))(v109, v128);
        (*(v107 + 8))(v485, v108);
LABEL_7:
        v10 = v19;
        goto LABEL_8;
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      v173 = swift_task_alloc();
      *(v0 + 2808) = v173;
      *(v173 + 16) = 1;
      v343 = swift_task_alloc();
      *(v0 + 2816) = v343;
      v344 = sub_1000F24EC(&qword_100AEABF0);
      *v343 = v0;
      v343[1] = sub_1005DDCB8;
      v148 = *(v0 + 880);
      v147 = *(v0 + 872);
      v153 = v344;
      v151 = sub_1005ED564;
      v146 = v0 + 824;
LABEL_92:
      v150 = 0x80000001008FDB40;
      v149 = 0xD000000000000024;
      v152 = v173;

      return withCheckedContinuation<A>(isolation:function:_:)(v146, v147, v148, v149, v150, v151, v152, v153);
    }

    if (v27 == *(v0 + 2904))
    {
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100940080;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 32) = 0xD000000000000015;
      *(v34 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v35 = *(v0 + 120);
      v36 = *(v35 + 16);
      if (v36)
      {
        *v442 = 0;
        swift_stdlib_random();
        v37 = *v442 * v36;
        v38 = (*v442 * v36) >> 64;
        if (v36 > v37)
        {
          v39 = -v36 % v36;
          if (v39 > v37)
          {
            do
            {
              *v408 = 0;
              swift_stdlib_random();
            }

            while (v39 > *v408 * v36);
            v38 = (*v408 * v36) >> 64;
          }
        }

        if (v38 >= *(v35 + 16))
        {
          goto LABEL_140;
        }

        swift_beginAccess();

        sub_100691A14(v38);
        swift_endAccess();
      }

      v93 = *(v0 + 2000);
      v94 = *(v0 + 1600);
      v95 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v94 + 48))(v93, 1, v95) == 1)
      {
        v49 = *(v0 + 2216);
        v50 = *(v0 + 2184);
        v51 = *(v0 + 2176);
        v52 = *(v0 + 2000);
        goto LABEL_52;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
      v98 = Data.init(contentsOf:options:)();
      v471 = 0;
      v100 = v121;
      v122 = v98;
      v123 = objc_allocWithZone(UIImage);
      sub_100049ED8(v122, v100);
      v124 = Data._bridgeToObjectiveC()().super.isa;
      v125 = [v123 initWithData:v124];
      v105 = v122;
      v126 = v125;

      sub_1000340DC(v122, v100);
      if (v126)
      {
        v433 = v122;
        v438 = v100;
        v370 = *(v0 + 2992);
        v388 = *(v0 + 2904);
        v355 = *(v0 + 2256);
        v363 = *(v0 + 2248);
        v377 = *(v0 + 2200);
        v402 = *(v0 + 2192);
        v210 = *(v0 + 2184);
        v443 = *(v0 + 2176);
        v473 = *(v0 + 2160);
        v412 = *(v0 + 2152);
        v358 = *(v0 + 2136);
        v500 = *(v0 + 2056);
        v457 = *(v0 + 2048);
        v211 = *(v0 + 1992);
        v347 = *(v0 + 1888);
        v449 = *(v0 + 1744);
        v395 = *(v0 + 1736);
        v492 = *(v0 + 1728);
        v466 = *(v0 + 1720);
        v420 = *(v0 + 1712);
        v345 = *(v0 + 1656);
        v212 = *(v0 + 1600);
        v213 = *(v0 + 1592);
        v352 = *(v0 + 1536);
        v214 = *(v0 + 1528);
        v349 = *(v0 + 1520);
        (*(v500 + 104))();

        (*(v212 + 16))(v211, v345, v213);
        (*(v212 + 56))(v211, 0, 1, v213);
        Date.init()();
        (*(v355 + 56))(v347, 0, 1, v363);
        (*(v214 + 104))(v352, v370, v349);
        (*(v210 + 104))(v377, v388, v443);
        v389 = *(v500 + 16);
        v389(v473, v358, v457);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
        (*(v492 + 16))(v395, v449, v466);
        v25(v402, v377, v443);
        v215 = v473;
        v389(v412, v473, v457);
        v216 = sub_100285908(v395, v402, v412);
        v217 = *(v492 + 8);
        v217(v449, v466);
        v474 = *(v500 + 8);
        v474(v215, v457);
        (*(v210 + 8))(v377, v443);
        *v420 = v126;
        swift_storeEnumTagMultiPayload();
        v218 = v216;
        v458 = v126;
        UUID.init()();
        v219 = UUID.uuidString.getter();
        v221 = v220;
        v217(v449, v466);
        type metadata accessor for AssetAttachment(0);
        v222 = swift_allocObject();
        *(v222 + 16) = 0;
        sub_1005ED56C(v420, v222 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v223 = (v222 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v223 = v219;
        v223[1] = v221;
        v224 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v493 = v218;
        if (*((*(v218 + v224) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v218 + v224) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v421 = *(v0 + 2048);
        v427 = *(v0 + 2136);
        v225 = *(v0 + 2008);
        v226 = *(v0 + 1992);
        v371 = *(v0 + 1904);
        v364 = *(v0 + 1888);
        v450 = *(v0 + 1656);
        v390 = *(v0 + 1600);
        v413 = *(v0 + 1592);
        v378 = *(v0 + 1536);
        v227 = *(v0 + 1528);
        v228 = *(v0 + 1520);
        v229 = *(v0 + 1488);
        v384 = *(v0 + 1464);
        v396 = *(v0 + 1456);
        v444 = *(v0 + 1448);
        v403 = *(v0 + 1440);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v226, v225, &unk_100AD6DD0);
        sub_1000082B4(v364, v371, &unk_100AD4790);
        (*(v227 + 16))(v229, v378, v228);
        (*(v227 + 56))(v229, 0, 1, v228);
        v200 = v493;
        PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

        sub_1000340DC(v433, v438);
        (*(v227 + 8))(v378, v228);
        sub_100004F84(v364, &unk_100AD4790);
        sub_100004F84(v226, &unk_100AD6DD0);
        v474(v427, v421);
        (*(v390 + 8))(v450, v413);
        (*(v396 + 32))(v403, v384, v444);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E80);
        v230 = swift_allocObject();
        v231 = *(*v230 + 104);
        v232 = sub_1000F24EC(&qword_100AD2A70);
        (*(*(v232 - 8) + 56))(v230 + v231, 1, 1, v232);
        *(v230 + *(*v230 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v403, v230 + *(*v230 + 120), &qword_100ADA958);
        v233 = &OBJC_IVAR____TtC7Journal12PodcastAsset_metadata;
        goto LABEL_128;
      }

      v485 = *(v0 + 2216);
      v107 = *(v0 + 2184);
      v108 = *(v0 + 2176);
      v109 = *(v0 + 1656);
      goto LABEL_69;
    }

    if (v27 == *(v0 + 2908))
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100940080;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = 0xD000000000000012;
      *(v40 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v41 = *(v0 + 128);
      v42 = *(v41 + 16);
      if (v42)
      {
        *v417 = 0;
        swift_stdlib_random();
        v43 = *v417 * v42;
        v44 = (*v417 * v42) >> 64;
        if (v42 > v43)
        {
          v45 = -v42 % v42;
          if (v45 > v43)
          {
            do
            {
              *v374 = 0;
              swift_stdlib_random();
            }

            while (v45 > *v374 * v42);
            v44 = (*v374 * v42) >> 64;
          }
        }

        if (v44 >= *(v41 + 16))
        {
          goto LABEL_141;
        }

        swift_beginAccess();

        sub_100691A14(v44);
        swift_endAccess();
      }

      v118 = *(v0 + 1984);
      v119 = *(v0 + 1600);
      v120 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v119 + 48))(v118, 1, v120) == 1)
      {
        v52 = *(v0 + 1984);
        (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

        goto LABEL_53;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
      v471 = 0;
      v129 = Data.init(contentsOf:options:)();
      v131 = v130;
      v132 = objc_allocWithZone(UIImage);
      sub_100049ED8(v129, v131);
      v133 = Data._bridgeToObjectiveC()().super.isa;
      v134 = [v132 initWithData:v133];

      sub_1000340DC(v129, v131);
      if (v134)
      {
        v440 = v129;
        v447 = v131;
        v379 = *(v0 + 2908);
        v261 = *(v0 + 2256);
        v372 = *(v0 + 2248);
        v453 = *(v0 + 2200);
        v405 = *(v0 + 2192);
        v262 = *(v0 + 2184);
        v398 = v262;
        v263 = *(v0 + 2176);
        v477 = *(v0 + 2160);
        v415 = *(v0 + 2152);
        v365 = *(v0 + 2128);
        v264 = *(v0 + 1880);
        v461 = *(v0 + 1744);
        v468 = *(v0 + 2048);
        v385 = *(v0 + 1736);
        v502 = *(v0 + 1728);
        v391 = *(v0 + 1720);
        v428 = *(v0 + 1712);
        v496 = *(v0 + 2056);
        (*(v496 + 104))();

        v422 = v134;
        Date.init()();
        (*(v261 + 56))(v264, 0, 1, v372);
        (*(v262 + 104))(v453, v379, v263);
        v380 = *(v496 + 16);
        v380(v477, v365, v468);
        UUID.init()();
        v265 = objc_allocWithZone(type metadata accessor for BookAsset());
        *&v265[OBJC_IVAR____TtC7Journal9BookAsset_metadata] = 0;
        (*(v502 + 16))(v385, v461, v391);
        v25(v405, v453, v263);
        v266 = v477;
        v380(v415, v477, v468);
        v200 = sub_100285908(v385, v405, v415);
        v267 = *(v502 + 8);
        v267(v461, v391);
        v478 = *(v496 + 8);
        v478(v266, v468);
        (*(v398 + 8))(v453, v263);
        *v428 = v422;
        swift_storeEnumTagMultiPayload();
        v469 = v422;
        UUID.init()();
        v268 = UUID.uuidString.getter();
        v270 = v269;
        v267(v461, v391);
        type metadata accessor for AssetAttachment(0);
        v271 = swift_allocObject();
        *(v271 + 16) = 0;
        sub_1005ED56C(v428, v271 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v272 = (v271 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v272 = v268;
        v272[1] = v270;
        v273 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v200 + v273) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v200 + v273) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v423 = *(v0 + 2128);
        v416 = *(v0 + 2048);
        v274 = *(v0 + 1904);
        v275 = *(v0 + 1880);
        v276 = *(v0 + 1600);
        v429 = *(v0 + 1592);
        v434 = *(v0 + 1648);
        v406 = *(v0 + 1424);
        v277 = *(v0 + 1416);
        v454 = *(v0 + 1400);
        v462 = *(v0 + 1408);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v275, v274, &unk_100AD4790);
        BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

        sub_1000340DC(v440, v447);
        sub_100004F84(v275, &unk_100AD4790);
        v478(v423, v416);
        (*(v276 + 8))(v434, v429);
        (*(v277 + 32))(v454, v406, v462);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AEABF8);
        v201 = swift_allocObject();
        v278 = *(*v201 + 104);
        v279 = sub_1000F24EC(&qword_100AD4318);
        (*(*(v279 - 8) + 56))(v201 + v278, 1, 1, v279);
        *(v201 + *(*v201 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v454, v201 + *(*v201 + 120), &qword_100ADA8C0);
        v204 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
LABEL_113:
        *(v200 + *v204) = v201;
        goto LABEL_129;
      }

      v486 = *(v0 + 2216);
      v135 = *(v0 + 2184);
      v136 = *(v0 + 2176);
      v137 = *(v0 + 1648);
      v138 = *(v0 + 1600);
      v139 = *(v0 + 1592);

      sub_1000340DC(v129, v131);
      (*(v138 + 8))(v137, v139);
      (*(v135 + 8))(v486, v136);
      goto LABEL_7;
    }

    if (v27 == *(v0 + 2912))
    {
      break;
    }

    if (v27 == *(v0 + 2916))
    {
      goto LABEL_6;
    }

    if (v27 == *(v0 + 2920))
    {
      goto LABEL_108;
    }

    if (v27 == *(v0 + 2924))
    {
      v452 = *(v0 + 2988);
      v495 = *(v0 + 2980);
      v250 = *(v0 + 2256);
      v251 = *(v0 + 2248);
      v252 = *(v0 + 2056);
      v253 = *(v0 + 1904);
      v254 = *(v0 + 1872);
      v446 = *(v0 + 2048);
      v255 = *(v0 + 1864);
      v476 = *(v0 + 2160);
      v481 = *(v0 + 1376);
      v460 = *(v0 + 1384);
      v467 = *(v0 + 1352);
      v487 = *(v0 + 1344);
      v256 = *(v0 + 1336);
      v257 = swift_allocObject();
      *(v257 + 16) = xmmword_100940080;
      *(v257 + 56) = &type metadata for String;
      *(v257 + 32) = 0xD000000000000017;
      *(v257 + 40) = 0x80000001008FDC40;
      print(_:separator:terminator:)();

      Date.init()();
      v258 = *(v250 + 56);
      v258(v253, 0, 1, v251);
      v258(v254, 1, 1, v251);
      v258(v255, 1, 1, v251);
      v259 = *(v252 + 104);
      v259(v256, v452, v446);
      (*(v252 + 56))(v256, 0, 1, v446);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      v259(v476, v495, v446);
      (*(v467 + 16))(v481, v460, v487);
      v260 = sub_10033CC64(v476, v481);
      (*(v467 + 8))(v460, v487);
      v200 = v260;
      goto LABEL_130;
    }

    if (v27 == *(v0 + 2928))
    {
      v110 = *(v0 + 1944);
      v111 = *(v0 + 1936);
      v112 = *(v0 + 1600);
      v113 = *(v0 + 1592);
      v114 = [objc_allocWithZone(LPLinkMetadata) init];
      *(v0 + 2712) = v114;
      URL.init(string:)();
      sub_1000082B4(v110, v111, v10);
      v115 = *(v112 + 48);
      if (v115(v111, 1, v113) == 1)
      {
        v117 = 0;
      }

      else
      {
        v140 = *(v0 + 1936);
        v141 = *(v0 + 1600);
        v142 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v116);
        v117 = v143;
        (*(v141 + 8))(v140, v142);
      }

      v144 = *(v0 + 1928);
      v145 = *(v0 + 1592);
      [v114 setURL:v117];

      URL.init(string:)();
      v146 = (v115)(v144, 1, v145);
      if (v146 == 1)
      {
        goto LABEL_148;
      }

      v155 = *(v0 + 1928);
      v156 = *(v0 + 1600);
      v157 = *(v0 + 1592);
      URL._bridgeToObjectiveC()(v154);
      v159 = v158;
      v160 = *(v156 + 8);
      *(v0 + 2720) = v160;
      *(v0 + 2728) = (v156 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v160(v155, v157);
      [v114 setOriginalURL:v159];

      *(v0 + 656) = 0x20656C707041;
      *(v0 + 664) = 0xE600000000000000;
      *(v0 + 696) = 0;
      swift_stdlib_random();
      v161 = *(v0 + 696);
      if (((100 * v161) & 0xFFFFFFFFFFFFFFF0) == 0)
      {
        do
        {
          *v367 = 0;
          swift_stdlib_random();
          v161 = *v367;
        }

        while (((100 * *v367) & 0xFFFFFFFFFFFFFFF0) == 0);
      }

      v162 = *(v0 + 1944);
      v163 = *(v0 + 1920);
      v164 = *(v0 + 1592);
      *(v0 + 864) = (v161 * 0x64uLL) >> 64;
      v165._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v165);

      v166 = String._bridgeToObjectiveC()();

      [v114 setTitle:v166];

      v10 = v19;
      sub_1000082B4(v162, v163, v19);
      if (v115(v163, 1, v164) != 1)
      {
        v282 = *(v0 + 2980);
        v283 = *(v0 + 2104);
        v284 = *(v0 + 2056);
        v285 = *(v0 + 2048);
        v286 = *(v0 + 1616);
        v287 = *(v0 + 1608);
        v288 = *(v0 + 1600);
        v289 = *(v0 + 1592);
        (*(v288 + 32))(v286, *(v0 + 1920), v289);
        (*(v284 + 104))(v283, v282, v285);
        (*(v288 + 16))(v287, v286, v289);
        Date.init()();
        v290 = swift_task_alloc();
        *(v0 + 2736) = v290;
        *v290 = v0;
        v290[1] = sub_1005D69DC;
        v291 = *(v0 + 2288);
        v292 = *(v0 + 2104);
        v293 = *(v0 + 1608);
        v294 = *(v0 + 880);
        v295 = *(v0 + 872);

        return sub_1001DEA08(v295, v294, v292, v293, 0, 0, v291);
      }

      v167 = *(v0 + 2216);
      v168 = *(v0 + 2184);
      v169 = *(v0 + 2176);
      v170 = *(v0 + 1944);
      v171 = *(v0 + 1920);

      sub_100004F84(v170, v19);
      (*(v168 + 8))(v167, v169);
      v96 = v171;
      v97 = v19;
      goto LABEL_54;
    }

    if (v27 == *(v0 + 2932))
    {
      v173 = swift_task_alloc();
      *(v0 + 2760) = v173;
      *(v173 + 16) = 1;
      v280 = swift_task_alloc();
      *(v0 + 2768) = v280;
      v281 = sub_1000F24EC(&qword_100AEABF0);
      *v280 = v0;
      v280[1] = sub_1005DB91C;
      v148 = *(v0 + 880);
      v147 = *(v0 + 872);
      v153 = v281;
      v151 = sub_1005ED67C;
      v146 = v0 + 712;
      goto LABEL_92;
    }

    if (v27 == *(v0 + 2936))
    {
      v173 = swift_task_alloc();
      *(v0 + 2776) = v173;
      *(v173 + 16) = 1;
      v296 = swift_task_alloc();
      *(v0 + 2784) = v296;
      v297 = sub_1000F24EC(&qword_100AEABF0);
      *v296 = v0;
      v296[1] = sub_1005DC438;
      v148 = *(v0 + 880);
      v147 = *(v0 + 872);
      v153 = v297;
      v151 = sub_1005ED67C;
      v146 = v0 + 720;
      goto LABEL_92;
    }

    if (v27 == *(v0 + 2940))
    {
      v298 = sub_1005ED3EC(v27, -90.0, 90.0);
      v300 = v299;
      sub_1005ED3EC(v298, -180.0, 180.0);
      v302 = v301;
      v303 = (v0 + 736);
      *(v0 + 736) = _swiftEmptyArrayStorage;
      v146 = sub_1006A699C(5001);
      if (v146 + 5000 >= 1)
      {
        v304 = v146 + 4999;
        v305 = 1;
        while (1)
        {
          v306 = sub_1005ED3EC(v146, -0.01, 0.01);
          v300 = v300 + v307;
          sub_1005ED3EC(v306, -0.01, 0.01);
          v302 = v302 + v308;
          [objc_allocWithZone(CLLocation) initWithLatitude:v300 longitude:v302];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v303 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v303 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v303 = (v0 + 736);
          }

          v146 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (!v304)
          {
            break;
          }

          --v304;
          if (__OFADD__(v305++, 1))
          {
            __break(1u);
            goto LABEL_146;
          }
        }

        v359 = *(v0 + 2940);
        v310 = *(v0 + 2304);
        v350 = *(v0 + 2280);
        v311 = *(v0 + 2256);
        v312 = *(v0 + 2248);
        v353 = *(v0 + 2200);
        v386 = *(v0 + 2192);
        v488 = *(v0 + 2184);
        v463 = *(v0 + 2176);
        v356 = *(v0 + 2160);
        v392 = *(v0 + 2152);
        v479 = *(v0 + 2056);
        v497 = *(v0 + 2080);
        v503 = *(v0 + 2048);
        v399 = *(v0 + 1904);
        v407 = *(v0 + 1872);
        v313 = *(v0 + 1792);
        v455 = *(v0 + 1784);
        v470 = *(v0 + 1744);
        v366 = *(v0 + 1736);
        v482 = *(v0 + 1728);
        v373 = *(v0 + 1720);
        v424 = *(v0 + 1176);
        v430 = *(v0 + 1168);
        v435 = *(v0 + 1152);
        v441 = *(v0 + 1160);
        (*(v479 + 104))();
        Date.init()();
        Date.addingTimeInterval(_:)();
        v314 = *(v311 + 8);
        v314(v310, v312);
        v315 = *(v311 + 56);
        v315(v313, 0, 1, v312);
        Date.init()();
        Date.addingTimeInterval(_:)();
        v314(v310, v312);
        sub_1006A699C(0x20000000000001);
        Date.addingTimeInterval(_:)();
        v314(v350, v312);
        v315(v455, 0, 1, v312);
        sub_1006A699C(0x20000000000001);
        sub_1006A699C(0x20000000000001);
        (*(v488 + 104))(v353, v359, v463);
        v360 = *(v479 + 16);
        v360(v356, v497, v503);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
        (*(v482 + 16))(v366, v470, v373);
        v25(v386, v353, v463);
        v360(v392, v356, v503);
        v316 = sub_100285908(v366, v386, v392);
        (*(v482 + 8))(v470, v373);
        v483 = *(v479 + 8);
        v483(v356, v503);
        (*(v488 + 8))(v353, v463);
        sub_1000082B4(v313, v399, &unk_100AD4790);
        sub_1000082B4(v455, v407, &unk_100AD4790);
        v200 = v316;
        WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
        sub_100004F84(v455, &unk_100AD4790);
        sub_100004F84(v313, &unk_100AD4790);
        v483(v497, v503);
        (*(v430 + 32))(v435, v424, v441);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E20);
        v230 = swift_allocObject();
        v317 = *(*v230 + 104);
        v318 = sub_1000F24EC(&qword_100AD5B28);
        (*(*(v318 - 8) + 56))(v230 + v317, 1, 1, v318);
        *(v230 + *(*v230 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v435, v230 + *(*v230 + 120), &qword_100ADA8A0);
        v233 = &OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
LABEL_128:
        *(v200 + *v233) = v230;

LABEL_129:

LABEL_130:
        *(v0 + 2832) = v200;
        *(v0 + 2824) = 0;
        v319 = *(v0 + 2608);
        v504 = *(v0 + 3008);
        v498 = *(v0 + 3004);
        v320 = *(v0 + 992);
        v321 = *(v0 + 984);
        v489 = *(v0 + 976);
        v322 = *(v0 + 968);
        v323 = *(v0 + 960);
        v324 = *(v0 + 952);
        v325 = *(v0 + 896);
        *(v0 + 576) = *(v0 + 888);
        *(v0 + 584) = v325;

        v326._countAndFlagsBits = 0x20746573734120;
        v326._object = 0xE700000000000000;
        String.append(_:)(v326);
        *(v0 + 768) = v319;
        v327._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v327);

        v328 = objc_allocWithZone(NSAttributedString);
        v329 = String._bridgeToObjectiveC()();

        v330 = [v328 initWithString:v329];

        v331 = *(v200 + OBJC_IVAR____TtC7Journal5Asset_title);
        *(v200 + OBJC_IVAR____TtC7Journal5Asset_title) = v330;

        *v320 = static AssetPlacement.maxGridCount.getter();
        (*(v321 + 104))(v320, v498, v489);
        (*(v323 + 104))(v322, v504, v324);
        LOBYTE(v329) = JournalFeatureFlags.isEnabled.getter();
        (*(v323 + 8))(v322, v324);
        if (v329)
        {
          *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
          v332 = swift_task_alloc();
          *(v0 + 2848) = v332;
          *v332 = v0;
          v332[1] = sub_1005DEA30;
          v333 = *(v0 + 992);
          v334 = *(v0 + 880);
          v335 = *(v0 + 872);

          return sub_10056B238(v335, v334, v200, v333, 1);
        }

        else
        {
          v336 = swift_task_alloc();
          *(v0 + 2872) = v336;
          *v336 = v0;
          v336[1] = sub_1005DEE38;
          v337 = *(v0 + 992);
          v338 = *(v0 + 880);
          v339 = *(v0 + 872);

          return sub_1001F8424(v339, v338, v200, v337);
        }
      }

      __break(1u);
LABEL_148:
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)(v146, v147, v148, v149, v150, v151, v152, v153);
    }

    if (v27 == *(v0 + 2944))
    {
LABEL_6:
      (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
      goto LABEL_7;
    }

    if (v27 == *(v0 + 2948))
    {
      v340 = *(v0 + 2160);
      (*(*(v0 + 2056) + 104))(v340, *(v0 + 2980), *(v0 + 2048));
      v200 = sub_10019BB28(v340, 0, 0);
      goto LABEL_130;
    }

    if (v27 == *(v0 + 2952))
    {
      v173 = swift_task_alloc();
      *(v0 + 2792) = v173;
      *(v173 + 16) = 1;
      v341 = swift_task_alloc();
      *(v0 + 2800) = v341;
      v342 = sub_1000F24EC(&qword_100AEABF0);
      *v341 = v0;
      v341[1] = sub_1005DCF44;
      v148 = *(v0 + 880);
      v147 = *(v0 + 872);
      v153 = v342;
      v151 = sub_1005ED67C;
      v146 = v0 + 760;
      goto LABEL_92;
    }

    if (v27 != *(v0 + 2956) && v27 != *(v0 + 2960) && v27 != *(v0 + 2964) && v27 != *(v0 + 2968))
    {
      if (v27 == *(v0 + 2972))
      {
        goto LABEL_142;
      }

      if (v27 != *(v0 + 2976))
      {

        return _diagnoseUnexpectedEnumCase<A>(type:)();
      }
    }

    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_8:
    v5 = *(v0 + 2608) + 1;
    if (v5 == *(v0 + 912))
    {
      goto LABEL_2;
    }
  }

  v54 = *(v0 + 1744);
  v55 = *(v0 + 1728);
  v56 = *(v0 + 1720);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100940080;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 32) = 0xD000000000000012;
  *(v57 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v61 = *(v55 + 8);
  *(v0 + 2648) = v61;
  *(v0 + 2656) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v54, v56);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 1672);
  v63 = *(v0 + 1600);
  v64 = *(v0 + 1592);
  v65 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v65, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v58;
  *(v0 + 648) = v60;
  v66._countAndFlagsBits = 1717658414;
  v66._object = 0xE400000000000000;
  String.append(_:)(v66);
  URL.appendingPathComponent(_:)();

  v67 = *(v63 + 8);
  *(v0 + 2664) = v67;
  *(v0 + 2672) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v62, v64);
  v68 = sub_1001C075C(5, &off_100A57518);
  v70 = v69;
  *(v0 + 2680) = v69;
  v71 = objc_opt_self();
  v72 = [v71 defaultManager];
  URL.absoluteString.getter();
  v73 = String._bridgeToObjectiveC()();

  v74 = [v72 fileExistsAtPath:v73];

  if (!v74)
  {
    goto LABEL_101;
  }

  v75 = [v71 defaultManager];
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  *(v0 + 744) = 0;
  v79 = [v75 removeItemAtURL:v77 error:v0 + 744];

  v80 = *(v0 + 744);
  if (!v79)
  {
    v81 = v80;

    v82 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v471 = v82;
    v83 = *(v0 + 2664);
    v484 = *(v0 + 2216);
    v84 = *(v0 + 2184);
    v85 = *(v0 + 2176);
    v86 = *(v0 + 1640);
    v87 = *(v0 + 1592);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v89 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v89;
    v90._object = 0x80000001008FDC20;
    v90._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v90);
    *(v0 + 728) = v82;
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    v91 = *(v0 + 608);
    v92 = *(v0 + 616);
    *(v88 + 56) = &type metadata for String;
    *(v88 + 32) = v91;
    *(v88 + 40) = v92;
    print(_:separator:terminator:)();

    v83(v86, v87);
    (*(v84 + 8))(v484, v85);
    goto LABEL_7;
  }

  v205 = v80;
LABEL_101:
  v206 = swift_task_alloc();
  *(v0 + 2688) = v206;
  *v206 = v0;
  v206[1] = sub_1005D08E4;
  v207 = *(v0 + 1640);
  v208 = *(v0 + 880);
  v209 = *(v0 + 872);

  return sub_10016A7C4(v209, v208, v68, v70, v207);
}

uint64_t sub_1005DB91C()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DBA8C, v3, v2);
}

uint64_t sub_1005DBA8C()
{
  v1 = *(v0 + 712);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = v2;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(v0 + 2608);
  v5 = *(v0 + 2980);
  v6 = *(v0 + 2096);
  v7 = *(v0 + 2056);
  v8 = *(v0 + 2048);

  (*(v7 + 104))(v6, v5, v8);
  strcpy((v0 + 624), "Test contact ");
  *(v0 + 638) = -4864;
  *(v0 + 704) = v4;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  Date.init()();
  if ((v4 * -3600) >> 64 != (-3600 * v4) >> 63)
  {
    __break(1u);
LABEL_16:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_7;
  }

  v75 = *(v0 + 2616);
  v68 = *(v0 + 2932);
  v10 = *(v0 + 2304);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2248);
  v64 = *(v0 + 2200);
  v71 = *(v0 + 2192);
  v83 = *(v0 + 2184);
  v78 = *(v0 + 2176);
  v73 = *(v0 + 2152);
  v66 = *(v0 + 2096);
  v67 = *(v0 + 2160);
  v85 = *(v0 + 2056);
  v65 = *(v0 + 2048);
  v13 = *(v0 + 1824);
  v14 = *(v0 + 1816);
  v80 = *(v0 + 1744);
  v15 = *(v0 + 1736);
  v82 = *(v0 + 1728);
  v70 = *(v0 + 1720);
  Date.addingTimeInterval(_:)();
  v77 = v2;
  v16 = *(v11 + 8);
  v16(v10, v12);
  v17 = *(v11 + 56);
  v17(v13, 0, 1, v12);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v16(v10, v12);
  v17(v14, 0, 1, v12);
  (*(v83 + 104))(v64, v68, v78);
  v69 = *(v85 + 16);
  v69(v67, v66, v65);
  UUID.init()();
  v18 = objc_allocWithZone(type metadata accessor for ContactAsset());
  *&v18[OBJC_IVAR____TtC7Journal12ContactAsset_metadata] = 0;
  (*(v82 + 16))(v15, v80, v70);
  v75(v71, v64, v78);
  v69(v73, v67, v65);
  v19 = sub_100285908(v15, v71, v73);
  v20 = *(v82 + 8);
  v20(v80, v70);
  v8 = v77;
  v2 = v19;
  v81 = *(v85 + 8);
  v81(v67, v65);
  (*(v83 + 8))(v64, v78);
  if (!v77)
  {
    goto LABEL_8;
  }

  v21 = *(v0 + 1744);
  v22 = *(v0 + 1720);
  v23 = *(v0 + 1712);
  *v23 = v77;
  swift_storeEnumTagMultiPayload();
  v24 = v77;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v20(v21, v22);
  type metadata accessor for AssetAttachment(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  sub_1005ED56C(v23, v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v29 = (v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v29 = v25;
  v29[1] = v27;
  v30 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_8:
  v74 = *(v0 + 2048);
  v76 = *(v0 + 2096);
  v87 = v2;
  v31 = v8;
  v32 = *(v0 + 1872);
  v33 = *(v0 + 1824);
  v34 = *(v0 + 1816);
  v35 = *(v0 + 1256);
  v36 = *(v0 + 1248);
  v79 = *(v0 + 1240);
  v72 = *(v0 + 1232);
  sub_1000082B4(v33, *(v0 + 1904), &unk_100AD4790);
  sub_1000082B4(v34, v32, &unk_100AD4790);
  ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)();

  sub_100004F84(v34, &unk_100AD4790);
  sub_100004F84(v33, &unk_100AD4790);
  v81(v76, v74);
  (*(v36 + 32))(v72, v35, v79);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0E60);
  v37 = swift_allocObject();
  v38 = *(*v37 + 104);
  v39 = sub_1000F24EC(&qword_100AD8440);
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *(v37 + *(*v37 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v72, v37 + *(*v37 + 120), &qword_100ADA8F0);
  *(v87 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata) = v37;

  v40 = *(v0 + 2600);
  *(v0 + 2832) = v87;
  *(v0 + 2824) = v40;
  v41 = *(v0 + 2608);
  v86 = *(v0 + 3008);
  v84 = *(v0 + 3004);
  v42 = *(v0 + 992);
  v43 = *(v0 + 984);
  v44 = *(v0 + 976);
  v45 = *(v0 + 968);
  v46 = *(v0 + 960);
  v47 = *(v0 + 952);
  v48 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v48;

  v49._countAndFlagsBits = 0x20746573734120;
  v49._object = 0xE700000000000000;
  String.append(_:)(v49);
  *(v0 + 768) = v41;
  v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v50);

  v51 = objc_allocWithZone(NSAttributedString);
  v52 = String._bridgeToObjectiveC()();

  v53 = [v51 initWithString:v52];

  v54 = *(v87 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v87 + OBJC_IVAR____TtC7Journal5Asset_title) = v53;

  *v42 = static AssetPlacement.maxGridCount.getter();
  (*(v43 + 104))(v42, v84, v44);
  (*(v46 + 104))(v45, v86, v47);
  LOBYTE(v52) = JournalFeatureFlags.isEnabled.getter();
  (*(v46 + 8))(v45, v47);
  if (v52)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v55 = swift_task_alloc();
    *(v0 + 2848) = v55;
    *v55 = v0;
    v55[1] = sub_1005DEA30;
    v56 = *(v0 + 992);
    v57 = *(v0 + 880);
    v58 = *(v0 + 872);

    return sub_10056B238(v58, v57, v87, v56, 1);
  }

  else
  {
    v60 = swift_task_alloc();
    *(v0 + 2872) = v60;
    *v60 = v0;
    v60[1] = sub_1005DEE38;
    v61 = *(v0 + 992);
    v62 = *(v0 + 880);
    v63 = *(v0 + 872);

    return sub_1001F8424(v63, v62, v87, v61);
  }
}

uint64_t sub_1005DC438()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DC5A8, v3, v2);
}

uint64_t sub_1005DC5A8()
{
  v2 = *(v0 + 720);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 2608);
  v6 = *(v0 + 2980);
  v7 = *(v0 + 2088);
  v8 = *(v0 + 2056);
  v9 = *(v0 + 2048);

  (*(v8 + 104))(v7, v6, v9);
  Date.init()();
  if ((v5 * -3600) >> 64 != (-3600 * v5) >> 63)
  {
    __break(1u);
LABEL_16:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_7;
  }

  v82 = *(v0 + 2616);
  v87 = *(v0 + 2608);
  v72 = *(v0 + 2936);
  v10 = *(v0 + 2304);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2248);
  v68 = *(v0 + 2200);
  v78 = *(v0 + 2192);
  v91 = *(v0 + 2184);
  v83 = *(v0 + 2176);
  v71 = *(v0 + 2160);
  v80 = *(v0 + 2152);
  v70 = *(v0 + 2088);
  v89 = *(v0 + 2056);
  v69 = *(v0 + 2048);
  v85 = v3;
  v13 = *(v0 + 1808);
  v14 = *(v0 + 1800);
  v15 = *(v0 + 1744);
  v74 = *(v0 + 1736);
  v67 = *(v0 + 1728);
  v76 = *(v0 + 1720);
  Date.addingTimeInterval(_:)();
  v16 = *(v11 + 8);
  v16(v10, v12);
  v17 = *(v11 + 56);
  v17(v13, 0, 1, v12);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v16(v10, v12);
  v17(v14, 0, 1, v12);
  (*(v91 + 104))(v68, v72, v83);
  v73 = *(v89 + 16);
  v73(v71, v70, v69);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for WorkoutIconAsset()) + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = 0;
  (*(v67 + 16))(v74, v15, v76);
  v82(v78, v68, v83);
  v73(v80, v71, v69);
  v18 = sub_100285908(v74, v78, v80);
  v19 = *(v67 + 8);
  v19(v15, v76);
  v81 = (60 * v87);
  v1 = v18;
  v86 = *(v89 + 8);
  v86(v71, v69);
  (*(v91 + 8))(v68, v83);
  if (!v85)
  {
    goto LABEL_8;
  }

  v20 = *(v0 + 1744);
  v21 = *(v0 + 1720);
  v22 = *(v0 + 1712);
  *v22 = v85;
  swift_storeEnumTagMultiPayload();
  v23 = v85;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v19(v20, v21);
  type metadata accessor for AssetAttachment(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  sub_1005ED56C(v22, v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v28 = (v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v28 = v24;
  v28[1] = v26;
  v29 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_16;
  }

LABEL_7:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_8:
  v77 = *(v0 + 2048);
  v79 = *(v0 + 2088);
  v30 = *(v0 + 1872);
  v92 = v1;
  v31 = *(v0 + 1808);
  v32 = *(v0 + 1800);
  v33 = *(v0 + 1216);
  v34 = *(v0 + 1208);
  v84 = *(v0 + 1200);
  v75 = *(v0 + 1192);
  sub_1000082B4(v31, *(v0 + 1904), &unk_100AD4790);
  sub_1000082B4(v32, v30, &unk_100AD4790);
  LOBYTE(v66) = 1;
  LOBYTE(v65) = 1;
  LOBYTE(v64) = 1;
  LOBYTE(v63) = 1;
  LOBYTE(v62) = 0;
  WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();

  sub_100004F84(v32, &unk_100AD4790);
  sub_100004F84(v31, &unk_100AD4790);
  v86(v79, v77);
  (*(v34 + 32))(v75, v33, v84);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0DD0);
  v35 = swift_allocObject();
  v36 = *(*v35 + 104);
  v37 = sub_1000F24EC(&qword_100AE4280);
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *(v35 + *(*v35 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v75, v35 + *(*v35 + 120), &qword_100ADA888);
  *(v92 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata) = v35;

  v38 = *(v0 + 2600);
  *(v0 + 2832) = v92;
  *(v0 + 2824) = v38;
  v39 = *(v0 + 2608);
  v90 = *(v0 + 3008);
  v88 = *(v0 + 3004);
  v40 = *(v0 + 992);
  v41 = *(v0 + 984);
  v42 = *(v0 + 976);
  v43 = *(v0 + 968);
  v44 = *(v0 + 960);
  v45 = *(v0 + 952);
  v46 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v46;

  v47._countAndFlagsBits = 0x20746573734120;
  v47._object = 0xE700000000000000;
  String.append(_:)(v47);
  *(v0 + 768) = v39;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  v49 = objc_allocWithZone(NSAttributedString);
  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 initWithString:{v50, *&v81, v62, 0, 0, 0, 0, 0, v63, 0, v64, 0, 0, 0, v65, 0, v66, 0, 0}];

  v52 = *(v92 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v92 + OBJC_IVAR____TtC7Journal5Asset_title) = v51;

  *v40 = static AssetPlacement.maxGridCount.getter();
  (*(v41 + 104))(v40, v88, v42);
  (*(v44 + 104))(v43, v90, v45);
  LOBYTE(v50) = JournalFeatureFlags.isEnabled.getter();
  (*(v44 + 8))(v43, v45);
  if (v50)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v53 = swift_task_alloc();
    *(v0 + 2848) = v53;
    *v53 = v0;
    v53[1] = sub_1005DEA30;
    v54 = *(v0 + 992);
    v55 = *(v0 + 880);
    v56 = *(v0 + 872);

    return sub_10056B238(v56, v55, v92, v54, 1);
  }

  else
  {
    v58 = swift_task_alloc();
    *(v0 + 2872) = v58;
    *v58 = v0;
    v58[1] = sub_1005DEE38;
    v59 = *(v0 + 992);
    v60 = *(v0 + 880);
    v61 = *(v0 + 872);

    return sub_1001F8424(v61, v60, v92, v59);
  }
}

uint64_t sub_1005DCF44()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DD0B4, v3, v2);
}

uint64_t sub_1005DD0B4()
{
  v1 = *(v0 + 760);
  if (*(v1 + 16))
  {
    v97 = *(v1 + 32);
    v2 = v97;
  }

  else
  {
    v97 = 0;
  }

  v82 = *(v0 + 2616);
  v3 = *(v0 + 2980);
  v83 = *(v0 + 2952);
  v4 = *(v0 + 2304);
  v74 = *(v0 + 2272);
  v5 = *(v0 + 2256);
  v6 = *(v0 + 2248);
  v85 = *(v0 + 2176);
  v87 = *(v0 + 2200);
  v93 = *(v0 + 2160);
  v95 = *(v0 + 2184);
  v80 = *(v0 + 2192);
  v81 = *(v0 + 2152);
  v7 = *(v0 + 2072);
  v8 = *(v0 + 2056);
  v103 = v8;
  v9 = *(v0 + 2048);
  v10 = *(v0 + 1776);
  v75 = *(v0 + 1768);
  v90 = *(v0 + 1744);
  v77 = v9;
  v78 = *(v0 + 1736);
  v101 = *(v0 + 1728);
  v79 = *(v0 + 1720);

  (*(v8 + 104))(v7, v3, v9);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v11 = *(v5 + 8);
  v11(v4, v6);
  v12 = *(v5 + 56);
  v12(v10, 0, 1, v6);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v11(v4, v6);
  sub_1006A699C(0x20000000000001);
  Date.addingTimeInterval(_:)();
  v11(v74, v6);
  v12(v75, 0, 1, v6);
  (*(v95 + 104))(v87, v83, v85);
  v76 = *(v8 + 16);
  v76(v93, v7, v77);
  v84 = v97;
  UUID.init()();
  v13 = objc_allocWithZone(type metadata accessor for MotionActivityAsset());
  *&v13[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = 0;
  (*(v101 + 16))(v78, v90, v79);
  v82(v80, v87, v85);
  v76(v81, v93, v77);
  v14 = sub_100285908(v78, v80, v81);
  v15 = *(v101 + 8);
  v15(v90, v79);
  v16 = v93;
  v17 = v14;
  v94 = *(v103 + 8);
  v94(v16, v77);
  (*(v95 + 8))(v87, v85);
  v96 = v14;
  if (v97)
  {
    v18 = *(v0 + 1744);
    v19 = v15;
    v20 = *(v0 + 1720);
    v21 = *(v0 + 1712);
    *v21 = v84;
    swift_storeEnumTagMultiPayload();
    v91 = v84;
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    v98 = v19;
    v19(v18, v20);
    type metadata accessor for AssetAttachment(0);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    sub_1005ED56C(v21, v25 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v26 = (v25 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v26 = v22;
    v26[1] = v24;
    v27 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v28 = *(v0 + 1744);
    v88 = *(v0 + 1720);
    v29 = *(v0 + 1712);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    *v29 = v91;
    swift_storeEnumTagMultiPayload();
    v30 = v91;
    UUID.init()();
    v31 = UUID.uuidString.getter();
    v33 = v32;
    v98(v28, v88);
    v34 = swift_allocObject();
    *(v34 + 16) = 1;
    sub_1005ED56C(v29, v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v35 = (v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v35 = v31;
    v35[1] = v33;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v17[v27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v36 = *(v0 + 1104);
  MotionActivityTypeEnum.init(rawValue:)();
  v37 = type metadata accessor for MotionActivityTypeEnum();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    v40 = *(v0 + 1104);
    (*(v38 + 104))(*(v0 + 1112), *(v0 + 2984), v37);
    if (v39(v40, 1, v37) != 1)
    {
      sub_100004F84(*(v0 + 1104), &qword_100AD8B38);
    }
  }

  else
  {
    (*(v38 + 32))(*(v0 + 1112), *(v0 + 1104), v37);
  }

  v89 = *(v0 + 2048);
  v92 = *(v0 + 2072);
  v41 = *(v0 + 1904);
  v42 = *(v0 + 1872);
  v43 = *(v0 + 1776);
  v44 = *(v0 + 1768);
  v45 = *(v0 + 1136);
  v46 = *(v0 + 1128);
  v99 = *(v0 + 1120);
  v86 = *(v0 + 1096);
  (*(v38 + 56))(*(v0 + 1112), 0, 1, v37);
  sub_1000082B4(v43, v41, &unk_100AD4790);
  sub_1000082B4(v44, v42, &unk_100AD4790);
  v73 = v42;
  MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)();

  sub_100004F84(v44, &unk_100AD4790);
  sub_100004F84(v43, &unk_100AD4790);
  v94(v92, v89);
  (*(v46 + 32))(v86, v45, v99);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8B40);
  v47 = swift_allocObject();
  v48 = *(*v47 + 104);
  v49 = sub_1000F24EC(&qword_100AD8740);
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  *(v47 + *(*v47 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v86, v47 + *(*v47 + 120), &qword_100AD8B30);
  *(v96 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata) = v47;

  v50 = *(v0 + 2600);
  *(v0 + 2832) = v96;
  *(v0 + 2824) = v50;
  v51 = *(v0 + 2608);
  v104 = *(v0 + 3008);
  v102 = *(v0 + 3004);
  v52 = *(v0 + 992);
  v53 = *(v0 + 984);
  v100 = *(v0 + 976);
  v54 = *(v0 + 968);
  v55 = *(v0 + 960);
  v56 = *(v0 + 952);
  v57 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v57;

  v58._countAndFlagsBits = 0x20746573734120;
  v58._object = 0xE700000000000000;
  String.append(_:)(v58);
  *(v0 + 768) = v51;
  v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v59);

  v60 = objc_allocWithZone(NSAttributedString);
  v61 = String._bridgeToObjectiveC()();

  v62 = [v60 initWithString:{v61, v73}];

  v63 = *(v96 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v96 + OBJC_IVAR____TtC7Journal5Asset_title) = v62;

  *v52 = static AssetPlacement.maxGridCount.getter();
  (*(v53 + 104))(v52, v102, v100);
  (*(v55 + 104))(v54, v104, v56);
  LOBYTE(v61) = JournalFeatureFlags.isEnabled.getter();
  (*(v55 + 8))(v54, v56);
  if (v61)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v64 = swift_task_alloc();
    *(v0 + 2848) = v64;
    *v64 = v0;
    v64[1] = sub_1005DEA30;
    v65 = *(v0 + 992);
    v66 = *(v0 + 880);
    v67 = *(v0 + 872);

    return sub_10056B238(v67, v66, v96, v65, 1);
  }

  else
  {
    v69 = swift_task_alloc();
    *(v0 + 2872) = v69;
    *v69 = v0;
    v69[1] = sub_1005DEE38;
    v70 = *(v0 + 992);
    v71 = *(v0 + 880);
    v72 = *(v0 + 872);

    return sub_1001F8424(v72, v71, v96, v70);
  }
}

uint64_t sub_1005DDCB8()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DDE28, v3, v2);
}

uint64_t sub_1005DDE28()
{
  v1 = *(v0 + 824);
  if (*(v1 + 16))
  {
    v93 = *(v1 + 32);
    v2 = v93;
  }

  else
  {
    v93 = 0;
  }

  v86 = *(v0 + 2616);
  v66 = *(v0 + 2592);
  v68 = *(v0 + 2584);
  v3 = *(v0 + 2980);
  v78 = *(v0 + 2972);
  v4 = *(v0 + 2304);
  v71 = *(v0 + 2256);
  v72 = *(v0 + 2264);
  v5 = *(v0 + 2248);
  v89 = *(v0 + 2200);
  v82 = *(v0 + 2192);
  v96 = *(v0 + 2184);
  v76 = *(v0 + 2176);
  v77 = *(v0 + 2160);
  v84 = *(v0 + 2152);
  v6 = *(v0 + 2064);
  v7 = *(v0 + 2056);
  v8 = *(v0 + 2048);
  v73 = v6;
  v70 = *(v0 + 1760);
  v74 = *(v0 + 1752);
  v91 = *(v0 + 1744);
  v75 = *(v0 + 1728);
  v80 = *(v0 + 1736);
  v81 = *(v0 + 1720);
  v69 = *(v0 + 1080);
  v9 = *(v0 + 1056);
  v10 = *(v0 + 1048);
  v67 = *(v0 + 1040);

  v12 = sub_1005ED3EC(v11, -90.0, 90.0);
  sub_1005ED3EC(v12, -180.0, 180.0);
  (*(v7 + 104))(v6, v3, v8);
  *(v0 + 800) = 0;
  swift_stdlib_random();
  KeyPath = swift_getKeyPath();
  *swift_task_alloc() = KeyPath;
  swift_getKeyPath();

  sub_10005C484();
  static AttributeContainer.subscript.getter();

  sub_1000F24EC(&unk_100ADFBF0);
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_100955130;
  *(inited + 16) = xmmword_100940050;
  *(inited + 48) = 0;
  *(inited + 56) = v66;
  *(inited + 64) = 0;
  *(inited + 72) = 4;
  v15 = v66;
  v16 = sub_100047788(v68, inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v0 + 792) = v16;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v10 + 8))(v9, v67);
  AttributedString.init(_:attributes:)();
  v17 = type metadata accessor for AttributedString();
  (*(*(v17 - 8) + 56))(v69, 0, 1, v17);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v18 = *(v71 + 8);
  v18(v4, v5);
  v19 = *(v71 + 56);
  v19(v70, 0, 1, v5);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v18(v4, v5);
  sub_1006A699C(0x20000000000001);
  Date.addingTimeInterval(_:)();
  v18(v72, v5);
  v19(v74, 0, 1, v5);
  (*(v96 + 104))(v89, v78, v76);
  v79 = *(v7 + 16);
  v79(v77, v73, v8);
  UUID.init()();
  *(objc_allocWithZone(type metadata accessor for ConfettiAsset()) + OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata) = 0;
  (*(v75 + 16))(v80, v91, v81);
  v86(v82, v89, v76);
  v79(v84, v77, v8);
  v20 = sub_100285908(v80, v82, v84);
  v21 = *(v75 + 8);
  v21(v91, v81);
  v22 = v20;
  v92 = *(v7 + 8);
  v92(v77, v8);
  (*(v96 + 8))(v89, v76);
  if (v93)
  {
    v23 = *(v0 + 1744);
    v24 = *(v0 + 1720);
    v25 = *(v0 + 1712);
    *v25 = v93;
    swift_storeEnumTagMultiPayload();
    v26 = v93;
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    v21(v23, v24);
    type metadata accessor for AssetAttachment(0);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    sub_1005ED56C(v25, v30 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v31 = (v30 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v31 = v27;
    v31[1] = v29;
    v32 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v22[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v22[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v90 = *(v0 + 2064);
  v88 = *(v0 + 2048);
  v33 = *(v0 + 1904);
  v34 = *(v0 + 1872);
  v97 = v22;
  v35 = *(v0 + 1760);
  v36 = *(v0 + 1752);
  v83 = *(v0 + 1080);
  v37 = *(v0 + 1032);
  v38 = *(v0 + 1024);
  v87 = *(v0 + 1016);
  v85 = *(v0 + 1008);
  sub_1000082B4(v83, *(v0 + 1072), &qword_100AD8D78);
  sub_1000082B4(v35, v33, &unk_100AD4790);
  sub_1000082B4(v36, v34, &unk_100AD4790);
  ConfettiAssetMetadata.init(isHost:title:placeName:startDate:endDate:)();

  sub_100004F84(v36, &unk_100AD4790);
  sub_100004F84(v35, &unk_100AD4790);
  sub_100004F84(v83, &qword_100AD8D78);
  v92(v90, v88);
  (*(v38 + 32))(v85, v37, v87);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0DA8);
  v39 = swift_allocObject();
  v40 = *(*v39 + 104);
  v41 = sub_1000F24EC(&qword_100ADA980);
  (*(*(v41 - 8) + 56))(v39 + v40, 1, 1, v41);
  *(v39 + *(*v39 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v85, v39 + *(*v39 + 120), &qword_100ADA970);
  *(v97 + OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata) = v39;

  v42 = *(v0 + 2600);
  *(v0 + 2832) = v97;
  *(v0 + 2824) = v42;
  v43 = *(v0 + 2608);
  v95 = *(v0 + 3008);
  v94 = *(v0 + 3004);
  v44 = *(v0 + 992);
  v45 = *(v0 + 984);
  v46 = *(v0 + 976);
  v47 = *(v0 + 968);
  v48 = *(v0 + 960);
  v49 = *(v0 + 952);
  v50 = *(v0 + 896);
  *(v0 + 576) = *(v0 + 888);
  *(v0 + 584) = v50;

  v51._countAndFlagsBits = 0x20746573734120;
  v51._object = 0xE700000000000000;
  String.append(_:)(v51);
  *(v0 + 768) = v43;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53 = objc_allocWithZone(NSAttributedString);
  v54 = String._bridgeToObjectiveC()();

  v55 = [v53 initWithString:v54];

  v56 = *(v97 + OBJC_IVAR____TtC7Journal5Asset_title);
  *(v97 + OBJC_IVAR____TtC7Journal5Asset_title) = v55;

  *v44 = static AssetPlacement.maxGridCount.getter();
  (*(v45 + 104))(v44, v94, v46);
  (*(v48 + 104))(v47, v95, v49);
  LOBYTE(v54) = JournalFeatureFlags.isEnabled.getter();
  (*(v48 + 8))(v47, v49);
  if (v54)
  {
    *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
    v57 = swift_task_alloc();
    *(v0 + 2848) = v57;
    *v57 = v0;
    v57[1] = sub_1005DEA30;
    v58 = *(v0 + 992);
    v59 = *(v0 + 880);
    v60 = *(v0 + 872);

    return sub_10056B238(v60, v59, v97, v58, 1);
  }

  else
  {
    v62 = swift_task_alloc();
    *(v0 + 2872) = v62;
    *v62 = v0;
    v62[1] = sub_1005DEE38;
    v63 = *(v0 + 992);
    v64 = *(v0 + 880);
    v65 = *(v0 + 872);

    return sub_1001F8424(v65, v64, v97, v63);
  }
}

uint64_t sub_1005DEA30()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DEB84, v3, v2);
}

uint64_t sub_1005DEB84()
{
  (*(v0 + 2424))(*(v0 + 2328), *(v0 + 2880), *(v0 + 2312));

  v1 = swift_task_alloc();
  *(v0 + 2856) = v1;
  *v1 = v0;
  v1[1] = sub_1005DEC9C;
  v2 = *(v0 + 2536);
  v3 = *(v0 + 2328);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_1002D2D78, v2, &type metadata for () + 8);
}

uint64_t sub_1005DEC9C()
{
  v2 = *v1;
  *(*v1 + 2864) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 2456))(*(v2 + 2328), *(v2 + 2312));

    v4 = *(v2 + 2400);
    v5 = *(v2 + 2392);

    return _swift_task_switch(sub_1005E3B08, v5, v4);
  }
}

uint64_t sub_1005DEE38()
{
  v1 = *v0;

  v2 = *(v1 + 2400);
  v3 = *(v1 + 2392);

  return _swift_task_switch(sub_1005DEF8C, v3, v2);
}

uint64_t sub_1005DEF8C()
{
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2832);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 2184);
  v5 = *(v0 + 2176);
  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 2608) + 1;
  if (v6 == *(v0 + 912))
  {
LABEL_2:
    v7 = *(v0 + 2568);

    v8 = *(v0 + 8);
    v9 = *(v0 + 2536);

    return v8(v9);
  }

  v476 = (v0 + 688);
  v372 = (v0 + 736);
  v413 = (v0 + 752);
  v435 = (v0 + 784);
  v506 = (v0 + 776);
  v515 = (v0 + 808);
  v455 = (v0 + 816);
  v449 = 0x80000001008FDD50;
  v485 = 0x80000001008FDE10;
  v498 = 1;
  v405 = (v0 + 840);
  while (1)
  {
    *(v0 + 2608) = v6;
    *(v0 + 2600) = v1;
    v11 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v12 = *(v0 + 832);
    v13 = (v12 * v11) >> 64;
    v14 = v12 * v11;
    v15 = *(v0 + 2552);
    if (v11 > v14)
    {
      v16 = -v15 % v15;
      if (v16 > v14)
      {
        do
        {
          v17 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v18 = *(v0 + 680);
        }

        while (v16 > v18 * v17);
        v13 = (v18 * v17) >> 64;
        v15 = *(v0 + 2552);
      }
    }

    if (v13 >= v15)
    {
      __break(1u);
LABEL_117:
      v495 = *(v0 + 2988);
      v426 = *(v0 + 2980);
      v252 = *(v0 + 2256);
      v253 = *(v0 + 2248);
      v419 = *(v0 + 2160);
      v510 = *(v0 + 2056);
      v254 = *(v0 + 1904);
      v255 = *(v0 + 1872);
      v256 = *(v0 + 1864);
      v473 = *(v0 + 1384);
      v480 = *(v0 + 1376);
      v488 = *(v0 + 2048);
      v445 = *(v0 + 1368);
      v452 = *(v0 + 1360);
      v439 = *(v0 + 1352);
      v410 = *(v0 + 1344);
      v257 = *(v0 + 1336);
      v258 = swift_allocObject();
      *(v258 + 16) = xmmword_100940080;
      *(v258 + 56) = &type metadata for String;
      *(v258 + 32) = 0xD000000000000018;
      *(v258 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v259 = *(v252 + 56);
      v259(v254, 0, 1, v253);
      v259(v255, 1, 1, v253);
      v259(v256, 1, 1, v253);
      v502 = *(v510 + 104);
      v502(v257, v495, v488);
      v467 = *(v510 + 56);
      v467(v257, 0, 1, v488);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v259(v254, 0, 1, v253);
      v259(v255, 1, 1, v253);
      v259(v256, 1, 1, v253);
      v502(v257, v495, v488);
      v467(v257, 0, 1, v488);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v259(v254, 0, 1, v253);
      v259(v255, 1, 1, v253);
      v259(v256, 1, 1, v253);
      v502(v257, v495, v488);
      v467(v257, 0, 1, v488);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v259(v254, 0, 1, v253);
      v259(v255, 1, 1, v253);
      v259(v256, 1, 1, v253);
      v502(v257, v495, v488);
      v467(v257, 0, 1, v488);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8);
      v260 = *(v439 + 72);
      v261 = (*(v439 + 80) + 32) & ~*(v439 + 80);
      v262 = swift_allocObject();
      *(v262 + 16) = xmmword_100941FE0;
      v263 = v262 + v261;
      v264 = *(v439 + 16);
      v264(v263, v473, v410);
      v264(v263 + v260, v480, v410);
      v264(v263 + 2 * v260, v445, v410);
      v264(v263 + 3 * v260, v452, v410);
      sub_1006ADB18(v262);
      v502(v419, v426, v488);
      v238 = sub_10011CEC0(v419, _swiftEmptyArrayStorage);
      v265 = *(v439 + 8);
      v265(v452, v410);
      v265(v445, v410);
      v265(v480, v410);
      v265(v473, v410);
      goto LABEL_124;
    }

    v19 = *(v0 + 2888);
    v20 = *(v0 + 2216);
    v21 = *(v0 + 2208);
    v22 = *(v0 + 2184);
    v23 = *(v0 + 2176);
    v24 = *(v22 + 16);
    v25 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v22 + 72) * v13;
    *(v0 + 2616) = v24;
    *(v0 + 2624) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v20, v25, v23);
    v24(v21, v20, v23);
    v26 = (*(v22 + 88))(v21, v23);
    if (v26 == v19)
    {
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_100940080;
      *(v196 + 56) = &type metadata for String;
      *(v196 + 32) = 0xD000000000000013;
      *(v196 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v197 = swift_task_alloc();
      *(v0 + 2632) = v197;
      *(v197 + 16) = 1;
      v198 = swift_task_alloc();
      *(v0 + 2640) = v198;
      v199 = sub_1000F24EC(&qword_100AEABF0);
      *v198 = v0;
      v198[1] = sub_1005CAA34;
      v170 = *(v0 + 880);
      v169 = *(v0 + 872);
      v175 = v199;
      v173 = sub_1005ED67C;
      v168 = v0 + 848;
      goto LABEL_101;
    }

    if (v26 != *(v0 + 2892))
    {
      break;
    }

LABEL_6:
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_7:
    v6 = *(v0 + 2608) + 1;
    if (v6 == *(v0 + 912))
    {
      goto LABEL_2;
    }
  }

  if (v26 == *(v0 + 2896))
  {
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_100940080;
    *(v200 + 56) = &type metadata for String;
    *(v200 + 32) = 0xD000000000000013;
    *(v200 + 40) = 0x80000001008FDBE0;
    print(_:separator:terminator:)();

    v201 = swift_task_alloc();
    *(v0 + 2704) = v201;
    *v201 = v0;
    v201[1] = sub_1005D1548;
    v202 = *(v0 + 1264);
    v203 = *(v0 + 880);
    v204 = *(v0 + 872);

    return sub_1006A580C(v202, v204, v203);
  }

  if (v26 == *(v0 + 2900))
  {
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100940080;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 32) = 0xD000000000000012;
    *(v27 + 40) = 0x80000001008FDE10;
    print(_:separator:terminator:)();

    v28 = *(v0 + 112);
    v29 = *(v28 + 16);
    if (!v29)
    {
      goto LABEL_36;
    }

    *v455 = 0;
    swift_stdlib_random();
    v30 = *v455 * v29;
    v31 = (*v455 * v29) >> 64;
    if (v29 > v30)
    {
      v32 = -v29 % v29;
      if (v32 > v30)
      {
        do
        {
          *v405 = 0;
          swift_stdlib_random();
        }

        while (v32 > *v405 * v29);
        v31 = (*v405 * v29) >> 64;
      }
    }

    if (v31 >= *(v28 + 16))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      v197 = swift_task_alloc();
      *(v0 + 2808) = v197;
      *(v197 + 16) = 1;
      v355 = swift_task_alloc();
      *(v0 + 2816) = v355;
      v356 = sub_1000F24EC(&qword_100AEABF0);
      *v355 = v0;
      v355[1] = sub_1005DDCB8;
      v170 = *(v0 + 880);
      v169 = *(v0 + 872);
      v175 = v356;
      v173 = sub_1005ED564;
      v168 = v0 + 824;
      goto LABEL_101;
    }

    swift_beginAccess();

    sub_100691A14(v31);
    swift_endAccess();

LABEL_36:
    v47 = *(v0 + 2024);
    v48 = *(v0 + 1600);
    v49 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v48 + 48))(v47, 1, v49) == 1)
    {
      v50 = *(v0 + 2216);
      v51 = *(v0 + 2184);
      v52 = *(v0 + 2176);
      v53 = *(v0 + 2024);
      goto LABEL_38;
    }

    (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
    v54 = Data.init(contentsOf:options:)();
    if (v1)
    {
      v56 = *(v0 + 2216);
      v57 = *(v0 + 2184);
      v58 = *(v0 + 2176);
      v59 = *(v0 + 1664);
      v60 = *(v0 + 1600);
      v61 = *(v0 + 1592);

      (*(v60 + 8))(v59, v61);
      goto LABEL_58;
    }

    v102 = v54;
    v103 = v55;
    v104 = objc_allocWithZone(UIImage);
    sub_100049ED8(v102, v103);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v106 = [v104 initWithData:isa];

    sub_1000340DC(v102, v103);
    if (!v106)
    {
      v107 = *(v0 + 2216);
      v108 = *(v0 + 2184);
      v109 = *(v0 + 2176);
      v110 = *(v0 + 1664);
      v111 = *(v0 + 1600);
      v112 = *(v0 + 1592);

      sub_1000340DC(v102, v103);
      (*(v111 + 8))(v110, v112);
      (*(v108 + 8))(v107, v109);
      goto LABEL_68;
    }

    v449 = v103;
    v380 = *(v0 + 3000);
    v391 = *(v0 + 2900);
    v205 = *(v0 + 2256);
    v373 = *(v0 + 2248);
    v456 = *(v0 + 2200);
    v422 = *(v0 + 2192);
    v499 = *(v0 + 2184);
    v386 = *(v0 + 2176);
    v486 = *(v0 + 2160);
    v429 = *(v0 + 2152);
    v368 = *(v0 + 2144);
    v516 = *(v0 + 2056);
    v477 = *(v0 + 2048);
    v414 = *(v0 + 2016);
    v359 = *(v0 + 1896);
    v463 = *(v0 + 1744);
    v399 = *(v0 + 1736);
    v507 = *(v0 + 1728);
    v406 = *(v0 + 1720);
    v436 = *(v0 + 1712);
    v206 = *(v0 + 1600);
    v207 = *(v0 + 1592);
    v365 = *(v0 + 1544);
    v208 = *(v0 + 1528);
    v362 = *(v0 + 1520);
    (*(v516 + 104))();

    (*(v206 + 56))(v414, 1, 1, v207);
    v415 = v106;
    Date.init()();
    (*(v205 + 56))(v359, 0, 1, v373);
    (*(v208 + 104))(v365, v380, v362);
    (*(v499 + 104))(v456, v391, v386);
    v392 = *(v516 + 16);
    v392(v486, v368, v477);
    UUID.init()();
    *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
    (*(v507 + 16))(v399, v463, v406);
    v24(v422, v456, v386);
    v209 = v486;
    v392(v429, v486, v477);
    v210 = sub_100285908(v399, v422, v429);
    v211 = *(v507 + 8);
    v211(v463, v406);
    v485 = *(v516 + 8);
    v485(v209, v477);
    (*(v499 + 8))(v456, v386);
    *v436 = v415;
    swift_storeEnumTagMultiPayload();
    v498 = v415;
    UUID.init()();
    v212 = UUID.uuidString.getter();
    v214 = v213;
    v211(v463, v406);
    type metadata accessor for AssetAttachment(0);
    v215 = swift_allocObject();
    *(v215 + 16) = 0;
    sub_1005ED56C(v436, v215 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v216 = (v215 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v216 = v212;
    v216[1] = v214;
    v217 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v506 = v210;
    if (*((*(v210 + v217) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v210 + v217) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_154:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v437 = *(v0 + 2048);
    v443 = *(v0 + 2144);
    v218 = *(v0 + 2016);
    v219 = *(v0 + 2008);
    v374 = *(v0 + 1904);
    v369 = *(v0 + 1896);
    v457 = *(v0 + 1664);
    v407 = *(v0 + 1600);
    v430 = *(v0 + 1592);
    v387 = *(v0 + 1544);
    v220 = *(v0 + 1528);
    v381 = *(v0 + 1520);
    v400 = *(v0 + 1512);
    v423 = *(v0 + 1504);
    v464 = *(v0 + 1496);
    v221 = *(v0 + 1488);
    v416 = *(v0 + 1480);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000082B4(v218, v219, &unk_100AD6DD0);
    sub_1000082B4(v369, v374, &unk_100AD4790);
    (*(v220 + 16))(v221, v387, v381);
    (*(v220 + 56))(v221, 0, 1, v381);
    MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

    sub_1000340DC(v102, v449);
    (*(v220 + 8))(v387, v381);
    sub_100004F84(v369, &unk_100AD4790);
    sub_100004F84(v218, &unk_100AD6DD0);
    v485(v443, v437);
    (*(v407 + 8))(v457, v430);
    (*(v423 + 32))(v416, v400, v464);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AE0E90);
    v222 = swift_allocObject();
    v223 = *(*v222 + 104);
    v224 = sub_1000F24EC(&qword_100AD6F70);
    (*(*(v224 - 8) + 56))(v222 + v223, 1, 1, v224);
    *(v222 + *(*v222 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v416, v222 + *(*v222 + 120), &qword_100ADA8E0);
    v225 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_122:
    v238 = v506;
    *(v506 + *v225) = v222;
LABEL_123:

    v1 = 0;
LABEL_124:
    *(v0 + 2832) = v238;
    *(v0 + 2824) = v1;
    v293 = *(v0 + 2608);
    v520 = *(v0 + 3008);
    v513 = *(v0 + 3004);
    v294 = *(v0 + 992);
    v295 = *(v0 + 984);
    v504 = *(v0 + 976);
    v296 = *(v0 + 968);
    v297 = *(v0 + 960);
    v298 = *(v0 + 952);
    v299 = *(v0 + 896);
    *(v0 + 576) = *(v0 + 888);
    *(v0 + 584) = v299;

    v300._countAndFlagsBits = 0x20746573734120;
    v300._object = 0xE700000000000000;
    String.append(_:)(v300);
    *(v0 + 768) = v293;
    v301._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v301);

    v302 = v238;
    v303 = objc_allocWithZone(NSAttributedString);
    v304 = String._bridgeToObjectiveC()();

    v305 = [v303 initWithString:v304];

    v306 = *(v302 + OBJC_IVAR____TtC7Journal5Asset_title);
    *(v302 + OBJC_IVAR____TtC7Journal5Asset_title) = v305;

    *v294 = static AssetPlacement.maxGridCount.getter();
    (*(v295 + 104))(v294, v513, v504);
    (*(v297 + 104))(v296, v520, v298);
    LOBYTE(v304) = JournalFeatureFlags.isEnabled.getter();
    (*(v297 + 8))(v296, v298);
    if (v304)
    {
      *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
      v307 = swift_task_alloc();
      *(v0 + 2848) = v307;
      *v307 = v0;
      v307[1] = sub_1005DEA30;
      v308 = *(v0 + 992);
      v309 = *(v0 + 880);
      v310 = *(v0 + 872);

      return sub_10056B238(v310, v309, v302, v308, 1);
    }

    else
    {
      v311 = swift_task_alloc();
      *(v0 + 2872) = v311;
      *v311 = v0;
      v311[1] = sub_1005DEE38;
      v312 = *(v0 + 992);
      v313 = *(v0 + 880);
      v314 = *(v0 + 872);

      return sub_1001F8424(v314, v313, v302, v312);
    }
  }

  if (v26 == *(v0 + 2904))
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100940080;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 32) = 0xD000000000000015;
    *(v33 + 40) = 0x80000001008FDD50;
    print(_:separator:terminator:)();

    v34 = *(v0 + 120);
    v35 = *(v34 + 16);
    if (v35)
    {
      *v435 = 0;
      swift_stdlib_random();
      v36 = *v435 * v35;
      v37 = (*v435 * v35) >> 64;
      if (v35 > v36)
      {
        v38 = -v35 % v35;
        v39 = (v0 + 808);
        if (v38 > v36)
        {
          do
          {
            *v39 = 0;
            swift_stdlib_random();
            v39 = (v0 + 808);
          }

          while (v38 > *v515 * v35);
          v37 = (*v515 * v35) >> 64;
        }
      }

      if (v37 >= *(v34 + 16))
      {
        goto LABEL_148;
      }

      swift_beginAccess();

      sub_100691A14(v37);
      swift_endAccess();
    }

    v113 = *(v0 + 2000);
    v114 = *(v0 + 1600);
    v115 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v114 + 48))(v113, 1, v115) != 1)
    {
      (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
      v117 = Data.init(contentsOf:options:)();
      if (v1)
      {
        v56 = *(v0 + 2216);
        v57 = *(v0 + 2184);
        v58 = *(v0 + 2176);
        v119 = *(v0 + 1656);
        v120 = *(v0 + 1600);
        v121 = *(v0 + 1592);

        (*(v120 + 8))(v119, v121);
LABEL_58:
        (*(v57 + 8))(v56, v58);
LABEL_68:
        v1 = 0;
        goto LABEL_7;
      }

      v129 = v118;
      v130 = v117;
      v131 = objc_allocWithZone(UIImage);
      sub_100049ED8(v130, v129);
      v132 = Data._bridgeToObjectiveC()().super.isa;
      v133 = [v131 initWithData:v132];

      sub_1000340DC(v130, v129);
      v134 = v130;
      if (!v133)
      {
        v472 = *(v0 + 2216);
        v135 = *(v0 + 2184);
        v136 = *(v0 + 2176);
        v137 = *(v0 + 1656);
        v138 = *(v0 + 1600);
        v139 = *(v0 + 1592);

        sub_1000340DC(v134, v129);
        (*(v138 + 8))(v137, v139);
        (*(v135 + 8))(v472, v136);
        goto LABEL_68;
      }

      v438 = v130;
      v444 = v129;
      v382 = *(v0 + 2992);
      v393 = *(v0 + 2904);
      v231 = *(v0 + 2256);
      v375 = *(v0 + 2248);
      v388 = *(v0 + 2200);
      v408 = *(v0 + 2192);
      v508 = *(v0 + 2184);
      v450 = *(v0 + 2176);
      v487 = *(v0 + 2160);
      v417 = *(v0 + 2152);
      v370 = *(v0 + 2136);
      v517 = *(v0 + 2056);
      v465 = *(v0 + 2048);
      v232 = *(v0 + 1992);
      v360 = *(v0 + 1888);
      v458 = *(v0 + 1744);
      v401 = *(v0 + 1736);
      v500 = *(v0 + 1728);
      v478 = *(v0 + 1720);
      v424 = *(v0 + 1712);
      v357 = *(v0 + 1656);
      v233 = *(v0 + 1600);
      v234 = *(v0 + 1592);
      v366 = *(v0 + 1536);
      v235 = *(v0 + 1528);
      v363 = *(v0 + 1520);
      (*(v517 + 104))();

      (*(v233 + 16))(v232, v357, v234);
      (*(v233 + 56))(v232, 0, 1, v234);
      Date.init()();
      (*(v231 + 56))(v360, 0, 1, v375);
      (*(v235 + 104))(v366, v382, v363);
      (*(v508 + 104))(v388, v393, v450);
      v394 = *(v517 + 16);
      v394(v487, v370, v465);
      UUID.init()();
      *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
      (*(v500 + 16))(v401, v458, v478);
      v24(v408, v388, v450);
      v394(v417, v487, v465);
      v236 = sub_100285908(v401, v408, v417);
      v237 = *(v500 + 8);
      v237(v458, v478);
      v501 = *(v517 + 8);
      v501(v487, v465);
      (*(v508 + 8))(v388, v450);
      *v424 = v133;
      swift_storeEnumTagMultiPayload();
      v238 = v236;
      v509 = v133;
      UUID.init()();
      v239 = UUID.uuidString.getter();
      v241 = v240;
      v237(v458, v478);
      type metadata accessor for AssetAttachment(0);
      v242 = swift_allocObject();
      *(v242 + 16) = 0;
      sub_1005ED56C(v424, v242 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v243 = (v242 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v243 = v239;
      v243[1] = v241;
      v244 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v238 + v244) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v238 + v244) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v451 = *(v0 + 2048);
      v459 = *(v0 + 2136);
      v245 = *(v0 + 2008);
      v246 = *(v0 + 1992);
      v383 = *(v0 + 1904);
      v376 = *(v0 + 1888);
      v479 = *(v0 + 1656);
      v409 = *(v0 + 1600);
      v431 = *(v0 + 1592);
      v395 = *(v0 + 1536);
      v247 = *(v0 + 1528);
      v389 = *(v0 + 1520);
      v248 = *(v0 + 1488);
      v402 = *(v0 + 1464);
      v418 = *(v0 + 1456);
      v466 = *(v0 + 1448);
      v425 = *(v0 + 1440);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      sub_1000082B4(v246, v245, &unk_100AD6DD0);
      sub_1000082B4(v376, v383, &unk_100AD4790);
      (*(v247 + 16))(v248, v395, v389);
      (*(v247 + 56))(v248, 0, 1, v389);
      PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

      sub_1000340DC(v438, v444);
      (*(v247 + 8))(v395, v389);
      sub_100004F84(v376, &unk_100AD4790);
      sub_100004F84(v246, &unk_100AD6DD0);
      v501(v459, v451);
      (*(v409 + 8))(v479, v431);
      (*(v418 + 32))(v425, v402, v466);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E80);
      v249 = swift_allocObject();
      v250 = *(*v249 + 104);
      v251 = sub_1000F24EC(&qword_100AD2A70);
      (*(*(v251 - 8) + 56))(v249 + v250, 1, 1, v251);
      *(v249 + *(*v249 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v425, v249 + *(*v249 + 120), &qword_100ADA958);
      *(v238 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v249;

      goto LABEL_123;
    }

    v53 = *(v0 + 2000);
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

    goto LABEL_54;
  }

  if (v26 == *(v0 + 2908))
  {
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100940080;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = 0xD000000000000012;
    *(v40 + 40) = 0x80000001008FDCA0;
    print(_:separator:terminator:)();

    v41 = *(v0 + 128);
    v42 = *(v41 + 16);
    if (v42)
    {
      *v413 = 0;
      swift_stdlib_random();
      v43 = *v413 * v42;
      v44 = (*v413 * v42) >> 64;
      if (v42 > v43)
      {
        v45 = -v42 % v42;
        v46 = (v0 + 776);
        if (v45 > v43)
        {
          do
          {
            *v46 = 0;
            swift_stdlib_random();
            v46 = (v0 + 776);
          }

          while (v45 > *v506 * v42);
          v44 = (*v506 * v42) >> 64;
        }
      }

      if (v44 >= *(v41 + 16))
      {
        goto LABEL_149;
      }

      swift_beginAccess();

      sub_100691A14(v44);
      swift_endAccess();
    }

    v140 = *(v0 + 1984);
    v141 = *(v0 + 1600);
    v142 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v141 + 48))(v140, 1, v142) != 1)
    {
      (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
      v143 = Data.init(contentsOf:options:)();
      if (v1)
      {
        v145 = *(v0 + 2216);
        v146 = *(v0 + 2184);
        v147 = *(v0 + 2176);
        v148 = *(v0 + 1648);
        v149 = *(v0 + 1600);
        v150 = *(v0 + 1592);

        (*(v149 + 8))(v148, v150);
        (*(v146 + 8))(v145, v147);
      }

      else
      {
        v151 = v143;
        v152 = v144;
        v153 = objc_allocWithZone(UIImage);
        sub_100049ED8(v151, v152);
        v154 = Data._bridgeToObjectiveC()().super.isa;
        v155 = [v153 initWithData:v154];

        sub_1000340DC(v151, v152);
        if (v155)
        {
          v453 = v152;
          v396 = *(v0 + 2908);
          v275 = *(v0 + 2256);
          v384 = *(v0 + 2248);
          v461 = *(v0 + 2200);
          v427 = *(v0 + 2192);
          v276 = *(v0 + 2184);
          v390 = *(v0 + 2176);
          v490 = *(v0 + 2160);
          v512 = *(v0 + 2152);
          v377 = *(v0 + 2128);
          v482 = *(v0 + 2048);
          v277 = *(v0 + 1880);
          v469 = *(v0 + 1744);
          v403 = *(v0 + 1736);
          v519 = *(v0 + 1728);
          v411 = *(v0 + 1720);
          v440 = *(v0 + 1712);
          v503 = *(v0 + 2056);
          (*(v503 + 104))();

          v432 = v155;
          Date.init()();
          (*(v275 + 56))(v277, 0, 1, v384);
          (*(v276 + 104))(v461, v396, v390);
          v397 = *(v503 + 16);
          v397(v490, v377, v482);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset()) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v519 + 16))(v403, v469, v411);
          v24(v427, v461, v390);
          v278 = v490;
          v397(v512, v490, v482);
          v279 = sub_100285908(v403, v427, v512);
          v280 = *(v519 + 8);
          v506 = v279;
          v280(v469, v411);
          v491 = *(v503 + 8);
          v491(v278, v482);
          (*(v276 + 8))(v461, v390);
          *v440 = v432;
          swift_storeEnumTagMultiPayload();
          v483 = v432;
          UUID.init()();
          v281 = UUID.uuidString.getter();
          v283 = v282;
          v280(v469, v411);
          type metadata accessor for AssetAttachment(0);
          v284 = swift_allocObject();
          *(v284 + 16) = 0;
          sub_1005ED56C(v440, v284 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v285 = (v284 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v285 = v281;
          v285[1] = v283;
          v286 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v506 + v286) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v506 + v286) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v433 = *(v0 + 2128);
          v428 = *(v0 + 2048);
          v287 = *(v0 + 1904);
          v288 = *(v0 + 1880);
          v289 = *(v0 + 1600);
          v441 = *(v0 + 1592);
          v447 = *(v0 + 1648);
          v290 = *(v0 + 1424);
          v420 = *(v0 + 1416);
          v462 = *(v0 + 1400);
          v470 = *(v0 + 1408);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v288, v287, &unk_100AD4790);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v151, v453);
          sub_100004F84(v288, &unk_100AD4790);
          v491(v433, v428);
          (*(v289 + 8))(v447, v441);
          (*(v420 + 32))(v462, v290, v470);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8);
          v222 = swift_allocObject();
          v291 = *(*v222 + 104);
          v292 = sub_1000F24EC(&qword_100AD4318);
          (*(*(v292 - 8) + 56))(v222 + v291, 1, 1, v292);
          *(v222 + *(*v222 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v462, v222 + *(*v222 + 120), &qword_100ADA8C0);
          v225 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
          goto LABEL_122;
        }

        v156 = *(v0 + 2216);
        v157 = *(v0 + 2184);
        v158 = *(v0 + 2176);
        v159 = *(v0 + 1648);
        v160 = *(v0 + 1600);
        v161 = *(v0 + 1592);

        sub_1000340DC(v151, v152);
        (*(v160 + 8))(v159, v161);
        (*(v157 + 8))(v156, v158);
      }

      v1 = 0;
      goto LABEL_7;
    }

    v50 = *(v0 + 2216);
    v51 = *(v0 + 2184);
    v52 = *(v0 + 2176);
    v53 = *(v0 + 1984);
LABEL_38:
    (*(v51 + 8))(v50, v52);

LABEL_54:

    v116 = v53;
LABEL_55:
    sub_100004F84(v116, &unk_100AD6DD0);
    goto LABEL_7;
  }

  if (v26 != *(v0 + 2912))
  {
    if (v26 != *(v0 + 2916))
    {
      if (v26 == *(v0 + 2920))
      {
        goto LABEL_117;
      }

      if (v26 == *(v0 + 2924))
      {
        v468 = *(v0 + 2988);
        v518 = *(v0 + 2980);
        v266 = *(v0 + 2256);
        v267 = *(v0 + 2248);
        v268 = *(v0 + 2056);
        v269 = *(v0 + 1904);
        v270 = *(v0 + 1872);
        v460 = *(v0 + 2048);
        v446 = *(v0 + 1864);
        v489 = *(v0 + 2160);
        v496 = *(v0 + 1376);
        v474 = *(v0 + 1384);
        v481 = *(v0 + 1352);
        v511 = *(v0 + 1344);
        v271 = *(v0 + 1336);
        v272 = swift_allocObject();
        *(v272 + 16) = xmmword_100940080;
        *(v272 + 56) = &type metadata for String;
        *(v272 + 32) = 0xD000000000000017;
        *(v272 + 40) = 0x80000001008FDC40;
        print(_:separator:terminator:)();

        Date.init()();
        v273 = *(v266 + 56);
        v273(v269, 0, 1, v267);
        v273(v270, 1, 1, v267);
        v273(v446, 1, 1, v267);
        v274 = *(v268 + 104);
        v274(v271, v468, v460);
        (*(v268 + 56))(v271, 0, 1, v460);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        v274(v489, v518, v460);
        (*(v481 + 16))(v496, v474, v511);
        v238 = sub_10033CC64(v489, v496);
        (*(v481 + 8))(v474, v511);
        goto LABEL_124;
      }

      if (v26 == *(v0 + 2928))
      {
        v122 = *(v0 + 1944);
        v123 = *(v0 + 1936);
        v124 = *(v0 + 1600);
        v125 = *(v0 + 1592);
        v126 = [objc_allocWithZone(LPLinkMetadata) init];
        *(v0 + 2712) = v126;
        URL.init(string:)();
        sub_1000082B4(v122, v123, &unk_100AD6DD0);
        v494 = *(v124 + 48);
        if (v494(v123, 1, v125) == 1)
        {
          v128 = 0;
        }

        else
        {
          v162 = *(v0 + 1936);
          v163 = *(v0 + 1600);
          v164 = *(v0 + 1592);
          URL._bridgeToObjectiveC()(v127);
          v128 = v165;
          (*(v163 + 8))(v162, v164);
        }

        v166 = *(v0 + 1928);
        v167 = *(v0 + 1592);
        [v126 setURL:v128];

        URL.init(string:)();
        v168 = (v494)(v166, 1, v167);
        if (v168 == 1)
        {
          goto LABEL_156;
        }

        v177 = *(v0 + 1928);
        v178 = *(v0 + 1600);
        v179 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v176);
        v181 = v180;
        v182 = *(v178 + 8);
        *(v0 + 2720) = v182;
        *(v0 + 2728) = (v178 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v182(v177, v179);
        [v126 setOriginalURL:v181];

        *(v0 + 656) = 0x20656C707041;
        *(v0 + 664) = 0xE600000000000000;
        *(v0 + 696) = 0;
        swift_stdlib_random();
        v183 = *(v0 + 696);
        if (((100 * v183) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          v184 = (v183 * 0x64uLL) >> 64;
        }

        else
        {
          v185 = (v0 + 688);
          do
          {
            *v185 = 0;
            swift_stdlib_random();
            v185 = (v0 + 688);
          }

          while (((100 * *v476) & 0xFFFFFFFFFFFFFFF0) == 0);
          v184 = (*v476 * 0x64uLL) >> 64;
        }

        v186 = *(v0 + 1944);
        v187 = *(v0 + 1920);
        v188 = *(v0 + 1592);
        *(v0 + 864) = v184;
        v189._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v189);

        v190 = String._bridgeToObjectiveC()();

        [v126 setTitle:v190];

        sub_1000082B4(v186, v187, &unk_100AD6DD0);
        if (v494(v187, 1, v188) != 1)
        {
          v317 = *(v0 + 2980);
          v318 = *(v0 + 2104);
          v319 = *(v0 + 2056);
          v320 = *(v0 + 2048);
          v321 = *(v0 + 1616);
          v322 = *(v0 + 1608);
          v323 = *(v0 + 1600);
          v324 = *(v0 + 1592);
          (*(v323 + 32))(v321, *(v0 + 1920), v324);
          (*(v319 + 104))(v318, v317, v320);
          (*(v323 + 16))(v322, v321, v324);
          Date.init()();
          v325 = swift_task_alloc();
          *(v0 + 2736) = v325;
          *v325 = v0;
          v325[1] = sub_1005D69DC;
          v326 = *(v0 + 2288);
          v327 = *(v0 + 2104);
          v328 = *(v0 + 1608);
          v329 = *(v0 + 880);
          v330 = *(v0 + 872);

          return sub_1001DEA08(v330, v329, v327, v328, 0, 0, v326);
        }

        v191 = *(v0 + 2216);
        v192 = *(v0 + 2184);
        v193 = *(v0 + 2176);
        v194 = *(v0 + 1944);
        v195 = *(v0 + 1920);

        sub_100004F84(v194, &unk_100AD6DD0);
        (*(v192 + 8))(v191, v193);
        v116 = v195;
        goto LABEL_55;
      }

      if (v26 == *(v0 + 2932))
      {
        v197 = swift_task_alloc();
        *(v0 + 2760) = v197;
        *(v197 + 16) = 1;
        v315 = swift_task_alloc();
        *(v0 + 2768) = v315;
        v316 = sub_1000F24EC(&qword_100AEABF0);
        *v315 = v0;
        v315[1] = sub_1005DB91C;
        v170 = *(v0 + 880);
        v169 = *(v0 + 872);
        v175 = v316;
        v173 = sub_1005ED67C;
        v168 = v0 + 712;
LABEL_101:
        v172 = 0x80000001008FDB40;
        v171 = 0xD000000000000024;
        v174 = v197;

        return withCheckedContinuation<A>(isolation:function:_:)(v168, v169, v170, v171, v172, v173, v174, v175);
      }

      if (v26 == *(v0 + 2936))
      {
        v197 = swift_task_alloc();
        *(v0 + 2776) = v197;
        *(v197 + 16) = 1;
        v331 = swift_task_alloc();
        *(v0 + 2784) = v331;
        v332 = sub_1000F24EC(&qword_100AEABF0);
        *v331 = v0;
        v331[1] = sub_1005DC438;
        v170 = *(v0 + 880);
        v169 = *(v0 + 872);
        v175 = v332;
        v173 = sub_1005ED67C;
        v168 = v0 + 720;
        goto LABEL_101;
      }

      if (v26 == *(v0 + 2940))
      {
        v333 = sub_1005ED3EC(v26, -90.0, 90.0);
        v335 = v334;
        sub_1005ED3EC(v333, -180.0, 180.0);
        v337 = v336;
        *v372 = _swiftEmptyArrayStorage;
        v168 = sub_1006A699C(5001);
        if (v168 + 5000 >= 1)
        {
          v338 = v168 + 4999;
          v102 = 1;
          while (1)
          {
            v339 = sub_1005ED3EC(v168, -0.01, 0.01);
            v335 = v335 + v340;
            sub_1005ED3EC(v339, -0.01, 0.01);
            v337 = v337 + v341;
            [objc_allocWithZone(CLLocation) initWithLatitude:v335 longitude:v337];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v372 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v372 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v168 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v338)
            {
              break;
            }

            --v338;
            if (__OFADD__(v102++, 1))
            {
              __break(1u);
              goto LABEL_154;
            }
          }

          v378 = *(v0 + 2940);
          v343 = *(v0 + 2304);
          v361 = *(v0 + 2280);
          v344 = *(v0 + 2256);
          v345 = *(v0 + 2248);
          v367 = *(v0 + 2200);
          v398 = *(v0 + 2192);
          v497 = *(v0 + 2184);
          v364 = *(v0 + 2176);
          v371 = *(v0 + 2160);
          v404 = *(v0 + 2152);
          v505 = *(v0 + 2080);
          v514 = *(v0 + 2048);
          v521 = *(v0 + 2056);
          v412 = *(v0 + 1904);
          v421 = *(v0 + 1872);
          v346 = *(v0 + 1792);
          v471 = *(v0 + 1784);
          v475 = *(v0 + 1744);
          v385 = *(v0 + 1736);
          v484 = *(v0 + 1728);
          v492 = *(v0 + 1720);
          v434 = *(v0 + 1176);
          v442 = *(v0 + 1168);
          v448 = *(v0 + 1152);
          v454 = *(v0 + 1160);
          (*(v521 + 104))();
          Date.init()();
          Date.addingTimeInterval(_:)();
          v347 = *(v344 + 8);
          v347(v343, v345);
          v358 = *(v344 + 56);
          v358(v346, 0, 1, v345);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v347(v343, v345);
          sub_1006A699C(0x20000000000001);
          Date.addingTimeInterval(_:)();
          v347(v361, v345);
          v358(v471, 0, 1, v345);
          sub_1006A699C(0x20000000000001);
          sub_1006A699C(0x20000000000001);
          (*(v497 + 104))(v367, v378, v364);
          v379 = *(v521 + 16);
          v379(v371, v505, v514);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v484 + 16))(v385, v475, v492);
          v24(v398, v367, v364);
          v379(v404, v371, v514);
          v348 = sub_100285908(v385, v398, v404);
          (*(v484 + 8))(v475, v492);
          v493 = *(v521 + 8);
          v493(v371, v514);
          (*(v497 + 8))(v367, v364);
          sub_1000082B4(v346, v412, &unk_100AD4790);
          sub_1000082B4(v471, v421, &unk_100AD4790);
          v238 = v348;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v471, &unk_100AD4790);
          sub_100004F84(v346, &unk_100AD4790);
          v493(v505, v514);
          (*(v442 + 32))(v448, v434, v454);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20);
          v349 = swift_allocObject();
          v350 = *(*v349 + 104);
          v351 = sub_1000F24EC(&qword_100AD5B28);
          (*(*(v351 - 8) + 56))(v349 + v350, 1, 1, v351);
          *(v349 + *(*v349 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v448, v349 + *(*v349 + 120), &qword_100ADA8A0);
          *(v238 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v349;

          goto LABEL_124;
        }

        __break(1u);
LABEL_156:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v168, v169, v170, v171, v172, v173, v174, v175);
      }

      if (v26 != *(v0 + 2944))
      {
        if (v26 == *(v0 + 2948))
        {
          v352 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v352, *(v0 + 2980), *(v0 + 2048));
          v238 = sub_10019BB28(v352, 0, 0);
          goto LABEL_124;
        }

        if (v26 == *(v0 + 2952))
        {
          v197 = swift_task_alloc();
          *(v0 + 2792) = v197;
          *(v197 + 16) = 1;
          v353 = swift_task_alloc();
          *(v0 + 2800) = v353;
          v354 = sub_1000F24EC(&qword_100AEABF0);
          *v353 = v0;
          v353[1] = sub_1005DCF44;
          v170 = *(v0 + 880);
          v169 = *(v0 + 872);
          v175 = v354;
          v173 = sub_1005ED67C;
          v168 = v0 + 760;
          goto LABEL_101;
        }

        if (v26 != *(v0 + 2956) && v26 != *(v0 + 2960) && v26 != *(v0 + 2964) && v26 != *(v0 + 2968))
        {
          if (v26 == *(v0 + 2972))
          {
            goto LABEL_150;
          }

          if (v26 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }
    }

    goto LABEL_6;
  }

  v62 = *(v0 + 1744);
  v63 = *(v0 + 1728);
  v64 = *(v0 + 1720);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100940080;
  *(v65 + 56) = &type metadata for String;
  *(v65 + 32) = 0xD000000000000012;
  *(v65 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v66 = UUID.uuidString.getter();
  v68 = v67;
  v69 = *(v63 + 8);
  *(v0 + 2648) = v69;
  *(v0 + 2656) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69(v62, v64);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 1672);
  v71 = *(v0 + 1600);
  v72 = *(v0 + 1592);
  v73 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v73, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v66;
  *(v0 + 648) = v68;
  v74._countAndFlagsBits = 1717658414;
  v74._object = 0xE400000000000000;
  String.append(_:)(v74);
  URL.appendingPathComponent(_:)();

  v75 = *(v71 + 8);
  *(v0 + 2664) = v75;
  *(v0 + 2672) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v75(v70, v72);
  v76 = sub_1001C075C(5, &off_100A57518);
  v78 = v77;
  *(v0 + 2680) = v77;
  v79 = objc_opt_self();
  v80 = [v79 defaultManager];
  URL.absoluteString.getter();
  v81 = String._bridgeToObjectiveC()();

  v82 = [v80 fileExistsAtPath:v81];

  if (!v82)
  {
    goto LABEL_110;
  }

  v83 = [v79 defaultManager];
  URL._bridgeToObjectiveC()(v84);
  v86 = v85;
  *(v0 + 744) = 0;
  v87 = [v83 removeItemAtURL:v85 error:v0 + 744];

  v88 = *(v0 + 744);
  if (!v87)
  {
    v89 = v88;

    v90 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v91 = *(v0 + 2664);
    v92 = *(v0 + 2216);
    v93 = *(v0 + 2184);
    v94 = *(v0 + 2176);
    v95 = *(v0 + 1640);
    v96 = *(v0 + 1592);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v98 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v98;
    v99._object = 0x80000001008FDC20;
    v99._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v99);
    *(v0 + 728) = v90;
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    v100 = *(v0 + 608);
    v101 = *(v0 + 616);
    *(v97 + 56) = &type metadata for String;
    *(v97 + 32) = v100;
    *(v97 + 40) = v101;
    print(_:separator:terminator:)();

    v91(v95, v96);
    (*(v93 + 8))(v92, v94);
    v1 = 0;
    goto LABEL_7;
  }

  v226 = v88;
LABEL_110:
  v227 = swift_task_alloc();
  *(v0 + 2688) = v227;
  *v227 = v0;
  v227[1] = sub_1005D08E4;
  v228 = *(v0 + 1640);
  v229 = *(v0 + 880);
  v230 = *(v0 + 872);

  return sub_10016A7C4(v230, v229, v76, v78, v228);
}