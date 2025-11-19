uint64_t sub_10017DF64(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000FF5D8(&qword_10020EC18);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1001102D0(a1, &v10 - v5, &qword_10020EC18);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC17PreviewFoundation8Document_openingOptions;
  swift_beginAccess();
  sub_100182924(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_10017E03C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Document.DocumentError(0);
  __chkstk_darwin(v8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001829EC(v0, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    String.LocalizationValue.init(stringLiteral:)();
    type metadata accessor for BundleLookupReference_PreviewFoundation();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v5 + 32))(v7, v10, v4);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v12._object = 0x80000001001B8B90;
        v12._countAndFlagsBits = 0xD00000000000001CLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
        v13._countAndFlagsBits = URL.lastPathComponent.getter();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);

        v14 = 0xD000000000000032;
        v15 = 0x80000001001B8BF0;
      }

      else
      {
        (*(v5 + 32))(v7, v10, v4);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._object = 0x80000001001B8B90;
        v23._countAndFlagsBits = 0xD00000000000001CLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        v24._countAndFlagsBits = URL.lastPathComponent.getter();
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);

        v14 = 0xD000000000000030;
        v15 = 0x80000001001B8BB0;
      }

      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v14);
      String.LocalizationValue.init(stringInterpolation:)();
      type metadata accessor for BundleLookupReference_PreviewFoundation();
      v16 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v16];
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v19._object = 0x80000001001B8C30;
      v19._countAndFlagsBits = 0xD00000000000001CLL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
      v20._countAndFlagsBits = URL.lastPathComponent.getter();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);

      v21._object = 0x80000001001B8C50;
      v21._countAndFlagsBits = 0xD00000000000001CLL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
      String.LocalizationValue.init(stringInterpolation:)();
      type metadata accessor for BundleLookupReference_PreviewFoundation();
      v22 = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:v22];
    }

    v25 = v17;
    static Locale.current.getter();
    v26 = String.init(localized:table:bundle:locale:comment:)();
    (*(v5 + 8))(v7, v4);
    return v26;
  }
}

uint64_t sub_10017E648(uint64_t a1)
{
  sub_100140DC8((a1 + 32), *(a1 + 56));
  sub_1000FF5D8(&qword_1002101A0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10017E6A4()
{
  v1[20] = v0;
  v2 = sub_1000FF5D8(&qword_1002101A0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[24] = v3;
  *v3 = v1;
  v3[1] = sub_10017E7B4;

  return sub_10017D498(0xD000000000000019, 0x80000001001B8C70);
}

uint64_t sub_10017E7B4()
{

  return _swift_task_switch(sub_10017E8B0, 0, 0);
}

uint64_t sub_10017E8B0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 25;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10017EA58;
  swift_continuation_init();
  v1[17] = v8;
  v10 = sub_10010F9E8(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v10, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10017E648;
  v1[13] = &unk_1001F9600;
  v11 = type metadata accessor for Document(0);
  v1[18] = v9;
  v1[19] = v11;
  objc_msgSendSuper2(v1 + 9, "closeWithCompletionHandler:", v4);
  (*(v7 + 8))(v10, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_10017EA58()
{

  return _swift_task_switch(sub_10017EB38, 0, 0);
}

uint64_t sub_10017EB38()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017ED14(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100183DEC;

  return sub_10017E6A4();
}

uint64_t sub_10017EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 216) = a6;
  *(v6 + 144) = a4;
  *(v6 + 152) = a5;
  sub_1000FF5D8(&qword_1002104A0);
  *(v6 + 160) = swift_task_alloc();
  v7 = type metadata accessor for Document.DocumentError(0);
  *(v6 + 168) = v7;
  *(v6 + 176) = *(v7 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 208) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017EF04, v9, v8);
}

uint64_t sub_10017EF04()
{

  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = sub_100101048(v1, qword_10020E690);
  swift_errorRetain();
  v51 = v2;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_100000000, v3, v4, "Document handleError() with error: (%@)", v5, 0xCu);
    sub_100110174(v6, &qword_10020DAB0);
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 144);

  sub_1000FF5D8(&qword_1002104A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v12;
  v13 = _convertErrorToNSError(_:)();
  v14 = [v13 domain];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v0 + 104) = v15;
  *(v0 + 112) = v17;
  v18 = swift_task_alloc();
  *(v18 + 16) = v0 + 104;
  v19 = sub_100181FC4(sub_100183B2C, v18, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  *(v0 + 136) = v9;
  swift_errorRetain();
  sub_1000FF5D8(&qword_10020D610);
  v20 = swift_dynamicCast();
  v21 = *(v8 + 56);
  if (v20)
  {
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = *(v0 + 160);
    v21(v24, 0, 1, *(v0 + 168));
    sub_100183B84(v24, v22);
    sub_1001829EC(v22, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = *(v0 + 200);
    if (EnumCaseMultiPayload == 4)
    {
      sub_100183BE8(v26);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1001829EC(v26, *(v0 + 184));
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 184);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        sub_100179938();
        swift_allocError();
        sub_1001829EC(v33, v36);
        v37 = _swift_stdlib_bridgeErrorToNSError();
        sub_100183BE8(v33);
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_100000000, v30, v31, "No handling of error: (%@)", v34, 0xCu);
        sub_100110174(v35, &qword_10020DAB0);
      }

      else
      {

        sub_100183BE8(v33);
      }

      v38 = *(v0 + 192);
      sub_100183BE8(*(v0 + 200));
      sub_100183BE8(v38);
      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v27 = *(v0 + 192);
      sub_100183BE8(v26);
      v28 = type metadata accessor for URL();
      (*(*(v28 - 8) + 8))(v27, v28);
    }
  }

  else
  {
    v29 = *(v0 + 160);
    v21(v29, 1, 1, *(v0 + 168));
    sub_100110174(v29, &qword_1002104A0);
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (([*(v0 + 152) documentState] & 1) == 0)
  {
LABEL_17:
    v39 = *(v0 + 216);
    v40 = *(v0 + 152);
    v41 = _convertErrorToNSError(_:)();
    v42 = type metadata accessor for Document(0);
    *(v0 + 120) = v40;
    *(v0 + 128) = v42;
    objc_msgSendSuper2((v0 + 120), "handleError:userInteractionPermitted:", v41, v39);
    goto LABEL_21;
  }

  v43 = *(v0 + 152) + OBJC_IVAR____TtC17PreviewFoundation8Document_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v46 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v46 + 16))(v44, v45, ObjectType, v46);
    swift_unknownObjectRelease();
  }

  v48 = *(v0 + 152);
  v41 = _convertErrorToNSError(_:)();
  [v48 finishedHandlingError:v41 recovered:0];
LABEL_21:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10017F70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017F7A4, v7, v6);
}

uint64_t sub_10017F7A4()
{
  super_class = v0[2].super_class;

  v0[2].receiver = super_class;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = type metadata accessor for Document(0);
  v0[1].receiver = super_class;
  v0[1].super_class = v5;
  objc_msgSendSuper2(v0 + 1, "presentedItemDidMoveToURL:", v4);

  v0[2].receiver = super_class;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  v6 = v0->super_class;

  return v6();
}

uint64_t sub_10017FAFC()
{
  v1[20] = v0;
  v2 = sub_1000FF5D8(&qword_1002101A0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10017FBC8, 0, 0);
}

uint64_t sub_10017FBC8()
{
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_100000000, v2, v3, "Opening document", v4, 2u);
  }

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_10017FE1C;
  swift_continuation_init();
  *(v0 + 136) = v7;
  v9 = sub_10010F9E8((v0 + 112));
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v9, v5, v7);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10017E648;
  *(v0 + 104) = &unk_1001F9628;
  v10 = type metadata accessor for Document(0);
  *(v0 + 144) = v8;
  *(v0 + 152) = v10;
  objc_msgSendSuper2((v0 + 144), "openWithCompletionHandler:", v0 + 80);
  (*(v6 + 8))(v9, v7);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10017FE1C()
{

  return _swift_task_switch(sub_10017FEFC, 0, 0);
}

uint64_t sub_10017FEFC()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001800D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100180180;

  return sub_10017FAFC();
}

uint64_t sub_100180180(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

id sub_1001802DC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17PreviewFoundation8Document_openingOptions;
  v5 = type metadata accessor for DocumentOpeningOptions();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC17PreviewFoundation8Document_stateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC17PreviewFoundation8Document_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for Document(0);
  v9 = objc_msgSendSuper2(&v12, "initWithFileURL:", v8);

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id sub_100180578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Document(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1001806D8, v6, v5);
}

uint64_t sub_1001806D8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[11] = v2;
    v3 = v2;
    v0[12] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v5;
    v0[14] = v4;

    return _swift_task_switch(sub_1001807D0, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001807D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 80) + 40);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_100180958;
    v5 = *(v0 + 88);

    return v9(v5, ObjectType, v2);
  }

  else
  {

    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    return _swift_task_switch(sub_100180AF0, v7, v8);
  }
}

uint64_t sub_100180958()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100180A78, v3, v2);
}

uint64_t sub_100180A78()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_100180AF0, v1, v2);
}

uint64_t sub_100180AF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100180B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100180BF8, v6, v5);
}

uint64_t sub_100180BF8()
{
  v1 = *(v0[2] + 16);
  v0[7] = v1;
  v2 = v1;
  v0[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v4;
  v0[10] = v3;

  return _swift_task_switch(sub_100180C90, v4, v3);
}

uint64_t sub_100180C90()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 16) + 40);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_100180E18;
    v5 = *(v0 + 56);

    return v9(v5, ObjectType, v2);
  }

  else
  {

    v7 = *(v0 + 40);
    v8 = *(v0 + 48);

    return _swift_task_switch(sub_100180FB0, v7, v8);
  }
}

uint64_t sub_100180E18()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100180F38, v3, v2);
}

uint64_t sub_100180F38()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100180FB0, v1, v2);
}

uint64_t sub_100180FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100181048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a3;
  sub_100128F38(0, 0, v9, a5, v12);
}

uint64_t sub_100181168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100181204, v6, v5);
}

uint64_t sub_100181204()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[11] = v2;
    v3 = v2;
    v0[12] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[13] = v5;
    v0[14] = v4;

    return _swift_task_switch(sub_1001812FC, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001812FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 80) + 40);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_100181484;
    v5 = *(v0 + 88);

    return v9(v5, ObjectType, v2);
  }

  else
  {

    v7 = *(v0 + 64);
    v8 = *(v0 + 72);

    return _swift_task_switch(sub_100183DE4, v7, v8);
  }
}

uint64_t sub_100181484()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1001815A4, v3, v2);
}

uint64_t sub_1001815A4()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_100183DE4, v1, v2);
}

uint64_t sub_10018161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1001816B8, v6, v5);
}

uint64_t sub_1001816B8()
{
  v1 = *(v0[2] + 16);
  v0[7] = v1;
  v2 = v1;
  v0[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9] = v4;
  v0[10] = v3;

  return _swift_task_switch(sub_100181750, v4, v3);
}

uint64_t sub_100181750()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 16) + 40);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_1001818D8;
    v5 = *(v0 + 56);

    return v9(v5, ObjectType, v2);
  }

  else
  {

    v7 = *(v0 + 40);
    v8 = *(v0 + 48);

    return _swift_task_switch(sub_100183DF0, v7, v8);
  }
}

uint64_t sub_1001818D8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1001819F8, v3, v2);
}

uint64_t sub_1001819F8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100183DF0, v1, v2);
}

uint64_t sub_100181AA0(void (*a1)(uint64_t))
{
  a1(v1 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_100181AF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100110344;

  return v6();
}

uint64_t sub_100181BE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10010E934;

  return v7();
}

uint64_t sub_100181CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1001102D0(a3, v23 - v10, &qword_10020D600);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100110174(v11, &qword_10020D600);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100110174(a3, &qword_10020D600);

    return v21;
  }

LABEL_8:
  sub_100110174(a3, &qword_10020D600);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100181FC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_100182070(char *a1)
{
  v2 = type metadata accessor for URL();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v74 - v5;
  __chkstk_darwin(v7);
  v9 = &v74 - v8;
  v10 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v74 - v18;
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  v80 = a1;
  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100110174(v12, &qword_10020D2F8);
    return 0;
  }

  (*(v14 + 32))(v22, v12, v13);
  static UTType.pdf.getter();
  v24 = UTType.conforms(to:)();
  v25 = *(v14 + 8);
  v25(v19, v13);
  v76 = v14 + 8;
  if (v24)
  {
    v26 = v22;
    v77 = v25;
    if (qword_10020D068 != -1)
    {
      swift_once();
    }

    v75 = v13;
    v27 = type metadata accessor for Logger();
    sub_100101048(v27, qword_10020E690);
    v28 = v78;
    v29 = v79;
    (*(v78 + 16))(v9, v80, v79);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v81 = v33;
      *v32 = 136315138;
      v34 = URL.absoluteString.getter();
      v36 = v35;
      (*(v28 + 8))(v9, v29);
      v37 = sub_100125658(v34, v36, &v81);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_100000000, v30, v31, "Create PDFDocument for url: %s", v32, 0xCu);
      sub_10010FA4C(v33);
    }

    else
    {

      (*(v28 + 8))(v9, v29);
    }

    v51 = type metadata accessor for PDFDocument();
  }

  else
  {
    static UTType.image.getter();
    v38 = UTType.conforms(to:)();
    v25(v19, v13);
    v39 = v25;
    if ((v38 & 1) == 0)
    {
      v52 = v79;
      if (qword_10020D068 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100101048(v53, qword_10020E690);
      (*(v14 + 16))(v16, v22, v13);
      v55 = v77;
      v54 = v78;
      (*(v78 + 16))(v77, v80, v52);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v81 = v74;
        *v58 = 136315394;
        v75 = v13;
        v59 = UTType.identifier.getter();
        v80 = v22;
        v60 = v52;
        v62 = v61;
        v39(v16, v13);
        v63 = sub_100125658(v59, v62, &v81);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2080;
        v64 = v77;
        v65 = URL.absoluteString.getter();
        v67 = v66;
        (*(v54 + 8))(v64, v60);
        v68 = sub_100125658(v65, v67, &v81);

        *(v58 + 14) = v68;
        _os_log_impl(&dword_100000000, v56, v57, "Error: Can not create document for type: %s (%s)", v58, 0x16u);
        swift_arrayDestroy();

        v39(v80, v75);
      }

      else
      {

        (*(v54 + 8))(v55, v52);
        v39(v16, v13);
        v39(v22, v13);
      }

      return 0;
    }

    v26 = v22;
    v77 = v25;
    v40 = v79;
    if (qword_10020D068 != -1)
    {
      swift_once();
    }

    v75 = v13;
    v41 = type metadata accessor for Logger();
    sub_100101048(v41, qword_10020E690);
    v42 = v78;
    (*(v78 + 16))(v6, v80, v40);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81 = v46;
      *v45 = 136315138;
      v47 = URL.absoluteString.getter();
      v49 = v48;
      (*(v42 + 8))(v6, v40);
      v50 = sub_100125658(v47, v49, &v81);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_100000000, v43, v44, "Create ImageDocument for url: %s", v45, 0xCu);
      sub_10010FA4C(v46);
    }

    else
    {

      (*(v42 + 8))(v6, v40);
    }

    v51 = type metadata accessor for ImageDocument();
  }

  v69 = objc_allocWithZone(v51);
  URL._bridgeToObjectiveC()(v70);
  v72 = v71;
  v73 = [v69 initWithFileURL:v71];

  (v77)(v26, v75);
  return v73;
}

uint64_t sub_100182924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020EC18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001829EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Document.DocumentError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100182A5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17PreviewFoundation8Document_openingOptions;
  swift_beginAccess();
  return sub_1001102D0(v3 + v4, a2, &qword_10020EC18);
}

uint64_t sub_100182AF0@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_100182B54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100182BB4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100110344;

  return v7(a1, a2);
}

void sub_100182CFC()
{
  sub_10018310C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100182F84()
{
  v4 = (*((swift_isaMask & *v0) + 0xB0) + **((swift_isaMask & *v0) + 0xB0));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10010E934;

  return v4();
}

void sub_10018310C()
{
  if (!qword_10020ED08)
  {
    type metadata accessor for DocumentOpeningOptions();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020ED08);
    }
  }
}

void sub_1001831B4()
{
  sub_100183218();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100183218()
{
  if (!qword_100210260)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_100210260);
    }
  }
}

uint64_t sub_100183294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100110344;

  return v9(a1, a2, a3);
}

uint64_t sub_1001833FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100110344;

  return sub_1001800D8(v2, v3);
}

uint64_t sub_1001834A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100110344;

  return sub_100181AF8(v2, v3, v4);
}

uint64_t sub_100183568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_100181BE0(a1, v4, v5, v6);
}

uint64_t sub_100183634()
{

  return swift_deallocObject();
}

uint64_t sub_10018366C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100110344;

  return sub_10017A74C(a1, v4);
}

uint64_t sub_100183724()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1001837F0(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100110344;

  return sub_10017F70C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001838E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100183930(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100110344;

  return sub_10017EDBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001839F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100183A38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100110344;

  return sub_10017ED14(v2, v3);
}

uint64_t sub_100183AE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100183B2C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100183B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Document.DocumentError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100183BE8(uint64_t a1)
{
  v2 = type metadata accessor for Document.DocumentError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100183C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_10018063C(a1, v4, v5, v6);
}

uint64_t sub_100183CFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_100181168(a1, v4, v5, v6);
}

uint64_t sub_100183DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_url;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100183E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType;
  swift_beginAccess();
  v5 = type metadata accessor for UTType();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100183EF8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_100184010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType;
  swift_beginAccess();
  v4 = type metadata accessor for UTType();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100184098(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType;
  swift_beginAccess();
  v4 = type metadata accessor for UTType();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100184188(uint64_t a1, uint64_t a2, int a3)
{
  v6 = swift_allocObject();
  sub_1001841E0(a1, a2, a3);
  return v6;
}

uint64_t sub_1001841E0(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a3;
  v6 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v6 - 8);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_isEditable) = 1;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess) = 0;
  v16 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_url;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v30 = v3;
  v31 = v17;
  v19(v3 + v16, a1);
  v33 = a2;
  sub_100101A3C(a2, v10);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    v28 = a1;
    URL.pathExtension.getter();
    static UTType.data.getter();
    v21 = v29;
    UTType.init(filenameExtension:conformingTo:)();
    if (v20(v21, 1, v11) == 1)
    {
      static UTType.item.getter();
      if (v20(v21, 1, v11) != 1)
      {
        sub_100101080(v21);
      }
    }

    else
    {
      (*(v12 + 32))(v15, v21, v11);
    }

    v22 = v20(v10, 1, v11);
    a1 = v28;
    if (v22 != 1)
    {
      sub_100101080(v10);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  v23 = v30;
  (*(v12 + 32))(v30 + OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType, v15, v11);
  if (v32)
  {
    v24 = a1;
    v25 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess;
    if (*(v23 + OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess) == 1)
    {
      sub_100101080(v33);
      (*(v18 + 8))(v24, v31);
    }

    else
    {
      v26 = URL.startAccessingSecurityScopedResource()();
      sub_100101080(v33);
      (*(v18 + 8))(v24, v31);
      *(v23 + v25) = v26;
    }
  }

  else
  {
    sub_100101080(v33);
    (*(v18 + 8))(a1, v31);
  }

  return v23;
}

uint64_t sub_1001845A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess;
  if (*(v0 + OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess) == 1)
  {
    URL.stopAccessingSecurityScopedResource()();
    *(v0 + v2) = 0;
  }

  v3 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType;
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  return v1;
}

uint64_t sub_100184674()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess;
  if (*(v0 + OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_hasAccess) == 1)
  {
    URL.stopAccessingSecurityScopedResource()();
    *(v0 + v2) = 0;
  }

  v3 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  v5 = OBJC_IVAR____TtC17PreviewFoundation24URLDocumentConfiguration_contentType;
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URLDocumentConfiguration()
{
  result = qword_1002104E0;
  if (!qword_1002104E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001847DC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UTType();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_10018494C(uint64_t a1, uint64_t a2)
{
  sub_1000FF5D8(&qword_1002105C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  *(inited + 32) = PDFDocumentUserPasswordOption;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = PDFDocumentOwnerPasswordOption;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  swift_bridgeObjectRetain_n();
  v6 = PDFDocumentUserPasswordOption;
  v7 = PDFDocumentOwnerPasswordOption;
  v8 = sub_10010DD28(inited);
  swift_setDeallocating();
  sub_1000FF5D8(&qword_10020D900);
  swift_arrayDestroy();
  *&v2[OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_writeOptions] = v8;

  return [v2 updateChangeCount:0];
}

uint64_t sub_100184B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v14;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_1000FF5D8(&qword_10020DAA8);
  v8[9] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  sub_1000FF5D8(&qword_100210610);
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for PaperDocument();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_100184DE0, 0, 0);
}

uint64_t sub_100184DE0()
{
  v30 = v0;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[24] = sub_100101048(v5, qword_10020E690);
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    v28 = URL.path.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_100125658(v28, v16, &v29);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_100000000, v7, v8, "[PDFDocument] Writing PDF model to %s", v13, 0xCu);
    sub_10010FA4C(v14);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[27] = v17;
  v19 = v0[13];
  sub_1000FF5D8(&qword_10020EEA0);
  Capsule.root.getter();
  v20 = type metadata accessor for PaperRenderableOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[28] = v21;
  v22 = sub_1001875EC(qword_100210618, &type metadata accessor for PaperDocument);
  *v21 = v0;
  v21[1] = sub_100185100;
  v23 = v0[13];
  v24 = v0[14];
  v26 = v0[4];
  v25 = v0[5];

  return PaperDocument.export<A>(_:in:options:)(v25, v26, v23, v24, v22);
}

uint64_t sub_100185100(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  *(*v1 + 232) = a1;

  sub_100110174(v5, &qword_100210610);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1001852C0, 0, 0);
}

uint64_t sub_1001852C0()
{
  v74 = v0;
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  *(v0 + 16) = 0;
  v6 = [v2 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:v0 + 16];

  v7 = *(v0 + 16);
  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v9 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = [v1 defaultManager];
    v11 = [v10 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 80);
  v15 = *(v0 + 48);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v13 + 8))(v12, v14);
  URL.appendingPathComponent(_:)();

  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  if (v15)
  {
    _s3__C22PDFDocumentWriteOptionVMa_0(0);
    sub_1001875EC(&qword_10020D3C0, _s3__C22PDFDocumentWriteOptionVMa_0);
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  v20 = [*(v0 + 232) writeToURL:v18 withOptions:v19.super.isa];

  if (v20)
  {
    if (static Task<>.isCancelled.getter())
    {
      v21 = *(v0 + 216);
      v22 = *(v0 + 168);
      v23 = *(v0 + 176);
      v24 = *(v0 + 136);

      v21(v22, v24);
      v21(v23, v24);
      goto LABEL_16;
    }

    v37 = [v1 defaultManager];
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
    v50 = *(v0 + 200);
    v51 = *(v0 + 152);
    v52 = *(v0 + 136);
    v53 = *(v0 + 24);
    sub_100110174(*(v0 + 72), &qword_10020DAA8);

    v50(v51, v53, v52);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 216);
    v59 = *(v0 + 168);
    v58 = *(v0 + 176);
    v60 = *(v0 + 152);
    v61 = *(v0 + 136);
    if (v56)
    {
      v70 = *(v0 + 232);
      v72 = *(v0 + 176);
      v62 = swift_slowAlloc();
      v69 = v59;
      v63 = swift_slowAlloc();
      v73 = v63;
      *v62 = 136315138;
      v64 = URL.path.getter();
      log = v54;
      v66 = v65;
      v57(v60, v61);
      v67 = sub_100125658(v64, v66, &v73);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_100000000, log, v55, "[PDFDocument] Successfully wrote PDF model to %s", v62, 0xCu);
      sub_10010FA4C(v63);

      v57(v69, v61);
      v57(v72, v61);
    }

    else
    {

      v57(v60, v61);
      v57(v59, v61);
      v57(v58, v61);
    }
  }

  else
  {
    (*(v0 + 200))(*(v0 + 160), *(v0 + 24), *(v0 + 136));
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 216);
    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    if (v27)
    {
      v71 = *(v0 + 216);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v73 = v32;
      *v31 = 136315138;
      sub_1001875EC(&qword_10020DA90, &type metadata accessor for URL);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v71(v29, v30);
      v36 = sub_100125658(v33, v35, &v73);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_100000000, v25, v26, "[PDFDocument] Failed to write PDF file at %s", v31, 0xCu);
      sub_10010FA4C(v32);
    }

    else
    {

      v28(v29, v30);
    }

    v38 = *(v0 + 232);
    v39 = *(v0 + 200);
    v40 = *(v0 + 136);
    v41 = *(v0 + 24);
    type metadata accessor for Document.DocumentError(0);
    sub_1001875EC(&qword_100210098, type metadata accessor for Document.DocumentError);
    v42 = swift_allocError();
    v39(v43, v41, v40);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v44 = *(v0 + 216);
    v45 = *(v0 + 176);
    v46 = *(v0 + 136);
    v47 = *(v0 + 56);
    v44(*(v0 + 168), v46);
    v44(v45, v46);
    *(v47 + 16) = v42;
  }

  dispatch_group_leave(*(v0 + 64));
LABEL_16:

  v48 = *(v0 + 8);

  return v48();
}

id sub_100185D44(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_context;
  type metadata accessor for CRContext();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v6 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_100110174(v16, &qword_1002100A0);
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule;
  v8 = sub_1000FF5D8(&qword_10020EEA0);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_writeOptions] = 0;
  v9 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents;
  *&v2[OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents] = xmmword_1001A99C0;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFileURL:", v10);

  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

uint64_t sub_100185F3C()
{
  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule, &qword_10020EE98);

  v1 = *(v0 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents);
  v2 = *(v0 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents + 8);

  return sub_1001010E8(v1, v2);
}

uint64_t sub_100186030(uint64_t a1)
{
  v2 = v1;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100101048(v4, qword_10020E690);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_100000000, v5, v6, "[PDFDocument] load(fromContents:ofType:)", v7, 2u);
  }

  sub_1001150A0(a1, v17);
  if (swift_dynamicCast())
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_100000000, v8, v9, "[PDFDocument] Content Loaded", v10, 2u);
    }

    v11 = (v2 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents);
    v12 = *(v2 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents);
    v13 = *(v2 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents + 8);
    *v11 = v15;
    v11[1] = v16;
    return sub_1001010E8(v12, v13);
  }

  else
  {
    type metadata accessor for Document.DocumentError(0);
    sub_1001875EC(&qword_100210098, type metadata accessor for Document.DocumentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_100186260(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchTimeInterval();
  v115 = *(v5 - 8);
  v116 = v5;
  __chkstk_darwin(v5);
  v112 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v113 = *(v7 - 8);
  v114 = v7;
  __chkstk_darwin(v7);
  v110 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v98 - v10;
  v11 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v11 - 8);
  v123 = &v98 - v12;
  v13 = sub_1000FF5D8(&qword_10020EE98);
  __chkstk_darwin(v13 - 8);
  v118 = &v98 - v14;
  v15 = sub_1000FF5D8(&qword_10020EEA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v109 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v17;
  __chkstk_darwin(v18);
  v124 = &v98 - v19;
  v20 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v20 - 8);
  v106 = (&v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = &v98 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v119 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v105 = &v98 - v29;
  v107 = v30;
  __chkstk_darwin(v31);
  v33 = &v98 - v32;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100101048(v34, qword_10020E690);
  v120 = *(v26 + 16);
  v121 = v26 + 16;
  v120(v33, a2, v25);
  sub_1001102D0(a3, v24, &qword_10020DAA8);
  v117 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v128 = v15;
  v125 = v16;
  v126 = v25;
  if (v38)
  {
    LODWORD(v102) = v37;
    v104 = a2;
    v39 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v127[0] = v101;
    *v39 = 136315394;
    v100 = sub_1001875EC(&qword_10020DA90, &type metadata accessor for URL);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v99 = *(v26 + 8);
    v99(v33, v25);
    v43 = sub_100125658(v40, v42, v127);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = v106;
    sub_1001102D0(v24, v106, &qword_10020DAA8);
    v45 = *(v26 + 48);
    v46 = v45(v44, 1, v25);
    v103 = v26;
    if (v46 == 1)
    {
      v47 = v105;
      URL.init(fileURLWithPath:)();
      v48 = v45(v44, 1, v25) == 1;
      v49 = v44;
      v15 = v128;
      if (!v48)
      {
        sub_100110174(v49, &qword_10020DAA8);
      }
    }

    else
    {
      v50 = *(v26 + 32);
      v47 = v105;
      v50(v105, v44, v25);
      v15 = v128;
    }

    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v99(v47, v25);
    sub_100110174(v24, &qword_10020DAA8);
    v54 = sub_100125658(v51, v53, v127);

    *(v39 + 14) = v54;
    _os_log_impl(&dword_100000000, v36, v102, "[PDFDocument] writeContents(_:to:for:originalContentsURL:)\n url: %s\n originalContentsURL: %s", v39, 0x16u);
    swift_arrayDestroy();

    v16 = v125;
    a2 = v104;
    v26 = v103;
  }

  else
  {

    sub_100110174(v24, &qword_10020DAA8);
    (*(v26 + 8))(v33, v25);
  }

  v55 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule;
  v56 = v122;
  swift_beginAccess();
  v57 = v56 + v55;
  v58 = v118;
  sub_1001102D0(v57, v118, &qword_10020EE98);
  if ((*(v16 + 48))(v58, 1, v15) != 1)
  {
    v64 = *(v16 + 32);
    v105 = (v16 + 32);
    v106 = v64;
    v65 = v124;
    (v64)(v124, v58, v15);
    v118 = *(v56 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_context);
    v122 = *(v56 + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_writeOptions);

    v104 = dispatch_group_create();
    dispatch_group_enter(v104);
    type metadata accessor for SendableErrorResult();
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    v66 = v123;
    static TaskPriority.userInitiated.getter();
    v67 = type metadata accessor for TaskPriority();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    v120(v119, a2, v126);
    v68 = v109;
    (*(v16 + 16))(v109, v65, v15);
    v69 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v70 = (v107 + v69 + *(v16 + 80)) & ~*(v16 + 80);
    v71 = (v108 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    (*(v26 + 32))(v75 + v69, v119, v126);
    (v106)(v75 + v70, v68, v128);
    v76 = v118;
    *(v75 + v71) = v118;
    *(v75 + v72) = v122;
    v77 = v102;
    *(v75 + v73) = v102;
    v78 = v104;
    *(v75 + v74) = v104;
    v79 = v76;
    v80 = v77;

    v81 = v78;
    v82 = v123;
    sub_100179678(0, 0, v123, &unk_1001A9A40, v75);
    sub_100110174(v82, &qword_10020D600);
    v83 = v110;
    static DispatchTime.now()();
    v84 = v112;
    *v112 = 30;
    v86 = v115;
    v85 = v116;
    (*(v115 + 104))(v84, enum case for DispatchTimeInterval.seconds(_:), v116);
    v87 = v111;
    + infix(_:_:)();
    (*(v86 + 8))(v84, v85);
    v88 = v114;
    v89 = *(v113 + 8);
    v89(v83, v114);
    OS_dispatch_group.wait(timeout:)();
    v89(v87, v88);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      Task.cancel()();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_100000000, v90, v91, "[PDFDocument] Writing timed out", v92, 2u);
      }

      type metadata accessor for Document.DocumentError(0);
      sub_1001875EC(&qword_100210098, type metadata accessor for Document.DocumentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (!*(v80 + 16))
      {

        return (*(v125 + 8))(v124, v128);
      }

      swift_errorRetain();
      swift_errorRetain();
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v95 = 138412290;
        swift_errorRetain();
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v95 + 4) = v97;
        *v96 = v97;
        _os_log_impl(&dword_100000000, v93, v94, "[PDFDocument] File write error: %@", v95, 0xCu);
        sub_100110174(v96, &qword_10020DAB0);
      }
    }

    swift_willThrow();

    return (*(v125 + 8))(v124, v128);
  }

  sub_100110174(v58, &qword_10020EE98);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_100000000, v59, v60, "[PDFDocument] writeContents: NO Capsule to save", v61, 2u);
  }

  type metadata accessor for Document.DocumentError(0);
  sub_1001875EC(&qword_100210098, type metadata accessor for Document.DocumentError);
  swift_allocError();
  v120(v62, a2, v126);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t type metadata accessor for PDFDocument()
{
  result = qword_1002105F8;
  if (!qword_1002105F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100187154()
{
  sub_100187208();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100187208()
{
  if (!qword_100210608)
  {
    sub_10010EC80(&qword_10020EEA0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100210608);
    }
  }
}

uint64_t sub_10018726C()
{
  v9 = type metadata accessor for URL();
  v1 = *(v9 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = sub_1000FF5D8(&qword_10020EEA0);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v2, v9);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_10018741C(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1000FF5D8(&qword_10020EEA0) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10010E934;

  return sub_100184B8C(a1, v10, v11, v1 + v4, v1 + v7, v12, v13, v14);
}

uint64_t sub_1001875EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100187638(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 BOOLForKey:v4];

  *a1 = v5;
}

uint64_t sub_100187734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = type metadata accessor for RadarFixedPredicate();
  WitnessTable = swift_getWitnessTable();

  return View.staticIf<A, B, C>(_:then:else:)(v17, a2, a3, a4, a5, a6, v17, a8, a9, a10, WitnessTable, a12, a13);
}

uint64_t sub_100187824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[2] = a3;
  v19[3] = a4;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a5;
  type metadata accessor for RadarFixedPredicate();
  v8 = type metadata accessor for StaticIf();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  WitnessTable = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v21 = WitnessTable;
  v22 = a7;
  v23 = a8;
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v11, v8);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v15(v20, v14, v8);
  return (v16)(v14, v8);
}

uint64_t getEnumTagSinglePayload for Workaround(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100187B1C()
{
  type metadata accessor for RadarFixedPredicate();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100187BB4()
{
  type metadata accessor for RadarFixedPredicate();
  type metadata accessor for StaticIf();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100187CB4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100187E6C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (*v0)
  {
    swift_getErrorValue();
    swift_errorRetain();
    v4 = Error.localizedDescription.getter();

    return v4;
  }

  else
  {
    v7 = v0[1];
    v6 = v0[2];
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 34;
    v8._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
    v9._countAndFlagsBits = v7;
    v9._object = v6;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);
    v10._object = 0x80000001001B8F40;
    v10._countAndFlagsBits = 0xD00000000000002ELL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    String.LocalizationValue.init(stringInterpolation:)();
    type metadata accessor for BundleLookupReference_PreviewFoundation();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10018807C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v39 = type metadata accessor for LocalizedStringResource();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = *a1;
  v30 = a1[1];
  v31 = v15;
  v29 = a1[2];
  v16 = *a2;
  v33 = a2[1];
  v34 = v16;
  v32 = a2[2];
  String.LocalizationValue.init(stringLiteral:)();
  v17 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  *v8 = v17;
  v18 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v19 = *(v6 + 104);
  v35 = v6 + 104;
  v20 = v36;
  v19(v8, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v36);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  *v8 = v17;
  v19(v8, v18, v20);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LOBYTE(v20) = static LocalizedStringResource.== infix(_:_:)();
  v21 = *(v37 + 8);
  v22 = v39;
  v21(v11, v39);
  v21(v14, v22);
  if (v20)
  {
    v43 = v31;
    v44 = v30;
    v45 = v29;
    v23 = sub_100187E6C();
    v25 = v24;
    v40 = v34;
    v41 = v33;
    v42 = v32;
    if (v23 == sub_100187E6C() && v25 == v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

__n128 sub_100188454(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100188468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001884B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100188514()
{
  result = qword_1002106A0;
  if (!qword_1002106A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002106A0);
  }

  return result;
}

double sub_100188568(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 36));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  static os_log_type_t.fault.getter();
  v10 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100189ECC(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

uint64_t sub_1001886C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v25 = a1;
  v29 = type metadata accessor for Font.TextStyle();
  v23 = *(v29 - 8);
  v8 = v23;
  __chkstk_darwin(v29);
  v30 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v27 = v22 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(*(*(*(AssociatedConformanceWitness + 16) + 16) + 8) + 16);
  v12 = swift_getAssociatedTypeWitness();
  __chkstk_darwin(v12);
  *a4 = swift_getKeyPath();
  sub_1000FF5D8(&qword_1002106A8);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for ScaledTuple();
  v14 = a4 + v13[9];
  v22[1] = a4;
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v13[10];
  v24 = a3;
  v16 = *(a3 - 8);
  (*(v16 + 16))(a4 + v15, a1, a3);
  v17 = v13[11];
  v22[0] = *(v8 + 16);
  v18 = a2;
  v19 = a2;
  v20 = v29;
  (v22[0])(a4 + v17, v19, v29);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  (v22[0])(v30, v18, v20);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  (*(v23 + 8))(v18, v20);
  return (*(v16 + 8))(v25, v24);
}

uint64_t sub_100188A40(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ScaledMetric();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v11[-v8];
  (*(v6 + 16))(&v11[-v8], v1 + *(a1 + 48), v5, v7);
  v12 = v4;
  v13 = v3;
  v14 = v1;
  v15 = v9;
  (*(v3 + 24))(sub_1001897E0, v11, v4, v3);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100188BC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v13 - v8;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ScaledMetric();
  ScaledMetric.wrappedValue.getter();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v6, AssociatedTypeWitness);
  v11 = type metadata accessor for ScaledTuple();
  sub_100188D80(v9, v11, a2);
  return (v10)(v9, AssociatedTypeWitness);
}

uint64_t sub_100188D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v15 = a1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v13 - v10;
  v16 = sub_100188568(a2);
  swift_getAssociatedConformanceWitness();
  sub_1001897F0();
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v4);
  sub_100188FA0(v15, a2, v14);
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_100188FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v38 = a3;
  v33 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 16);
  v30 = *(*(v34 + 16) + 8);
  v32 = *(v30 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v31 = &v26 - v6;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  v39 = sub_100188568(a2);
  sub_1001897F0();
  v29 = AssociatedConformanceWitness;
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  v35 = v8;
  v36 = v7;
  v20 = *(v8 + 104);
  v37 = v10;
  v20(v10, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v7);
  v21 = *(v12 + 16);
  v21(v38, v33, v11);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v12 + 8);
  v33 = v12 + 8;
  v22(v16, v11);
  if (v10)
  {
    dispatch thunk of FloatingPoint.round(_:)();
  }

  else
  {
    v23 = v21;
    v27 = v21;
    v24 = v28;
    v23(v28, v19, v11);
    v32 = v19;
    dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
    dispatch thunk of static FloatingPoint./= infix(_:_:)();
    v22(v16, v11);
    dispatch thunk of FloatingPoint.round(_:)();
    v19 = v32;
    v27(v24, v32, v11);
    dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
    dispatch thunk of static Numeric.*= infix(_:_:)();
    v22(v16, v11);
  }

  (*(v35 + 8))(v37, v36);
  return (v22)(v19, v11);
}

double sub_10018947C(double (*a1)(void), double a2, double a3)
{
  v5 = a1();
  (a1)(a3);
  return v5;
}

double sub_1001894D0@<D0>(void (*a1)(double *__return_ptr, uint64_t *)@<X0>, double *a2@<X8>)
{
  v5 = v2[1];
  v9 = *v2;
  a1(&v8, &v9);
  v6 = v8;
  v9 = v5;
  a1(&v8, &v9);
  result = v8;
  *a2 = v6;
  a2[1] = result;
  return result;
}

double sub_100189550(double (*a1)(void), double a2, double a3, double a4, double a5)
{
  v9 = a1();
  (a1)(a3);
  (a1)(a4);
  (a1)(a5);
  return v9;
}

double sub_1001895EC@<D0>(void (*a1)(double *__return_ptr, uint64_t *)@<X0>, double *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v13 = *v2;
  a1(&v12, &v13);
  v8 = v12;
  v13 = v5;
  a1(&v12, &v13);
  v9 = v12;
  v13 = v6;
  a1(&v12, &v13);
  v10 = v12;
  v13 = v7;
  a1(&v12, &v13);
  result = v12;
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = result;
  return result;
}

uint64_t sub_1001896D0(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_1001897B4@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1001897F0()
{
  result = qword_1002106B0;
  if (!qword_1002106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002106B0);
  }

  return result;
}

void sub_10018984C()
{
  sub_100189E10();
  if (v0 <= 0x3F)
  {
    sub_100189E68();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Font.TextStyle();
        if (v3 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          type metadata accessor for ScaledMetric();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10018998C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FF5D8(qword_100210718);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:
    v11 = a2;
LABEL_4:

    return v9(v10, v11, v8);
  }

  if (a2 == 254)
  {
    v13 = *(a1 + *(a3 + 36) + 8);
    if (v13 > 1)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v14 = *(*(a3 + 16) - 8);
  if (*(v14 + 84) == a2)
  {
    v9 = *(v14 + 48);
    v10 = a1 + *(a3 + 40);
    v11 = a2;
    v8 = *(a3 + 16);
    goto LABEL_4;
  }

  v15 = type metadata accessor for Font.TextStyle();
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v8 = v15;
    v9 = *(v16 + 48);
    v10 = a1 + *(a3 + 44);
    goto LABEL_3;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for ScaledMetric();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + *(a3 + 48);

  return v18(v19, a2, v17);
}

uint64_t sub_100189BD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000FF5D8(qword_100210718);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:
    v13 = a2;
    v14 = a2;
LABEL_4:

    return v11(v12, v13, v14, v10);
  }

  if (a3 == 254)
  {
    *(a1 + *(a4 + 36) + 8) = -a2;
    return result;
  }

  v15 = *(*(a4 + 16) - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = *(v15 + 56);
    v12 = a1 + *(a4 + 40);
    v13 = a2;
    v14 = a2;
    v10 = *(a4 + 16);
    goto LABEL_4;
  }

  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v10 = v16;
    v11 = *(v17 + 56);
    v12 = a1 + *(a4 + 44);
    goto LABEL_3;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for ScaledMetric();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 48);

  return v19(v20, a2, a2, v18);
}

void sub_100189E10()
{
  if (!qword_1002107A0)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002107A0);
    }
  }
}

void sub_100189E68()
{
  if (!qword_1002107A8[0])
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_1002107A8);
    }
  }
}

uint64_t sub_100189ECC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100189EE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 objectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10010F7F8(&v12, v13);
    (*(a2 + 16))(v13, a1, a2);
    return sub_10010FA4C(v13);
  }

  else
  {
    v11 = *(*(a1 - 8) + 56);

    return v11(a3, 1, 1, a1);
  }
}

uint64_t sub_10018A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10018A604(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_10018A080@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_10018A088@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + a2 - 16);
  v4 = *(a1 + a2 - 8);

  sub_100189EE4(v5, v4, a3);
}

void sub_10018A104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = a3[1];
  v8[0] = *a3;
  v8[1] = v7;

  sub_10018A604(a1, v8, v6, v5);
}

void (*sub_10018A160(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v16 = *a2;
  v17 = a2[1];
  v10[6] = v14;
  v10[7] = v16;
  v10[8] = v17;
  swift_bridgeObjectRetain_n();
  sub_100189EE4(a3, a4, v15);

  return sub_10018A2B8;
}

void sub_10018A2B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    v12 = v4;
    v13 = v3;
    sub_10018A604(v5, &v12, v10, v9);
    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    v12 = (*a1)[7];
    v13 = v3;
    sub_10018A604(v6, &v12, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_10018A3D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for Bool;
  *a2 = result;
  return result;
}

uint64_t sub_10018A3EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *(a2 + 24) = result;
  *a2 = v3;
  return result;
}

uint64_t sub_10018A3FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018A514(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10018A424@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for Data;
  *a3 = a1;
  a3[1] = a2;
  return sub_10015BF04(a1, a2);
}

uint64_t sub_10018A438(uint64_t a1)
{
  sub_1001150A0(a1, v3);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018A494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  a2[3] = a1;
  *a2 = v4;
  a2[1] = v3;
  return sub_10015BF04(v4, v3);
}

uint64_t sub_10018A4A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1001150A0(a1, v8);
  result = swift_dynamicCast();
  v4 = v6;
  v5 = v7;
  if (!result)
  {
    v4 = 0;
    v5 = 0xF000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10018A514(uint64_t a1)
{
  sub_1001150A0(a1, v6);
  if (swift_dynamicCast())
  {
    return v4;
  }

  sub_1001150A0(a1, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 5457241 && v5 == 0xE300000000000000)
  {

    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v3 & 1) != 0;
}

void sub_10018A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v23 - v12;
  (*(v10 + 16))(v23 - v12, a1, v9, v11);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(v10 + 8))(v13, v9);
LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  (*(a4 + 8))(v23, a3, a4);
  (*(v14 + 8))(v13, a3);
  v15 = v24;
  if (!v24)
  {
    goto LABEL_5;
  }

  v16 = sub_100140DC8(v23, v24);
  v17 = *(v15 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  v21 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v17 + 8))(v20, v15);
  sub_10010FA4C(v23);
LABEL_6:
  v22 = String._bridgeToObjectiveC()();

  [v5 setObject:v21 forKey:v22];
  swift_unknownObjectRelease();
}

__n128 sub_10018A8D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10018A904()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10018A94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018A994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018A9E8()
{
  type metadata accessor for Device();
  result = swift_initStaticObject();
  qword_1002228E8 = result;
  return result;
}

uint64_t sub_10018AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v35 = *a3;
  v36 = v11;
  v37 = *(a3 + 32);
  type metadata accessor for DocumentConverter.SizeEstimator();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  cbks.putBytes = sub_10018B768;
  cbks.releaseConsumer = 0;
  swift_beginAccess();
  v13 = CGDataConsumerCreate((inited + 16), &cbks);
  swift_endAccess();
  if (!v13)
  {
    __break(1u);
  }

  v24 = v3;
  v25 = inited;
  static UTType.pdf.getter();
  v14 = UTType.conforms(to:)();
  (*(v8 + 8))(v10, v7);
  v15 = v4;
  if (v14)
  {
    v16 = type metadata accessor for PDFDestination();
    v17 = &off_1001F9CE8;
  }

  else
  {
    v16 = type metadata accessor for ImageDestination(0);
    v17 = &off_1001F9D20;
  }

  (*(v8 + 16))(v10, a2, v7);
  cbks = v35;
  v29 = v36;
  v30 = v37;
  v18 = v17[1];
  v32 = v16;
  v33 = v17;
  v19 = sub_10010F9E8(&v31);
  v20 = v13;
  sub_10010E394(&v35, v27);
  v18(v20, v10, &cbks, 1, v19);
  (v17[2])(v26, v24, v16, v17);
  if (v4)
  {

    sub_10010FA4C(&v31);
  }

  else
  {
    (v17[5])();
    v22 = v25;

    sub_10018B7A8(&v31, v34);
    sub_100140DC8(v34, v34[3]);
    v15 = (v17[6])(*(v22 + 16));
    sub_10010FA4C(v34);
  }

  return v15;
}

uint64_t sub_10018ADB4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = v4;
  v36 = a1;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[1];
  v33 = *a4;
  v34 = v13;
  v35 = *(a4 + 4);
  URL._bridgeToObjectiveC()(v35);
  v15 = v14;
  v16 = CGDataConsumerCreateWithURL(v14);

  if (v16)
  {
    v27 = v6;
    v28 = v5;
    static UTType.pdf.getter();
    v17 = UTType.conforms(to:)();
    (*(v10 + 8))(v12, v9);
    if (v17)
    {
      v18 = type metadata accessor for PDFDestination();
      v19 = &off_1001F9CE8;
    }

    else
    {
      v18 = type metadata accessor for ImageDestination(0);
      v19 = &off_1001F9D20;
    }

    (*(v10 + 16))(v12, a2, v9);
    v30[0] = v33;
    v30[1] = v34;
    v31 = v35;
    v22 = v19[1];
    v32[3] = v18;
    v32[4] = v19;
    v23 = sub_10010F9E8(v32);
    v24 = v16;
    sub_10010E394(&v33, v29);
    v22(v24, v12, v30, 0, v23);
    v25 = v28;
    (v19[2])(v36, v27, v18, v19);
    if (!v25)
    {
      (v19[5])();
    }

    return sub_10010FA4C(v32);
  }

  else
  {
    sub_10010F994();
    swift_allocError();
    *v20 = 1;
    return swift_willThrow();
  }
}

__CFData *sub_10018B058(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[1];
  v36 = *a3;
  v37 = v12;
  v38 = *(a3 + 4);
  v13 = [objc_allocWithZone(NSMutableData) init];
  v14 = CGDataConsumerCreateWithCFData(v13);
  if (v14)
  {
    v15 = v14;
    v29 = a1;
    v30 = v3;
    v31 = v4;
    static UTType.pdf.getter();
    v28 = a2;
    v16 = UTType.conforms(to:)();
    (*(v9 + 8))(v11, v8);
    v39 = v13;
    if (v16)
    {
      v17 = type metadata accessor for PDFDestination();
      v18 = &off_1001F9CE8;
    }

    else
    {
      v17 = type metadata accessor for ImageDestination(0);
      v18 = &off_1001F9D20;
    }

    (*(v9 + 16))(v11, v28, v8);
    v33[0] = v36;
    v33[1] = v37;
    v34 = v38;
    v20 = v18[1];
    v35[3] = v17;
    v35[4] = v18;
    v21 = sub_10010F9E8(v35);
    v22 = v15;
    sub_10010E394(&v36, v32);
    v20(v22, v11, v33, 0, v21);
    v23 = v31;
    (v18[2])(v29, v30, v17, v18);
    if (v23)
    {
      v13 = v39;

      sub_10010FA4C(v35);
    }

    else
    {
      (v18[5])();
      v24 = v39;
      sub_10010FA4C(v35);
      v26 = v24;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    sub_10010F994();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_10018B3C0(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void *sub_10018B510()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_10018B588()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 26);
  v7 = *(v0 + 27);
  v8 = *(v0 + 28);
  v9 = *(v0 + 29);
  v10 = *(v0 + 30);
  v11 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  v12 = 0.0;
  if (v2 != 0.0)
  {
    v12 = v2;
  }

  Hasher._combine(_:)(*&v12);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_10018EA64(&qword_10020D950, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10018B6E8()
{
  Hasher.init(_seed:)();
  sub_10018B588();
  return Hasher._finalize()();
}

Swift::Int sub_10018B72C()
{
  Hasher.init(_seed:)();
  sub_10018B588();
  return Hasher._finalize()();
}

void *sub_10018B768(void *result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return a3;
  }

  if (!__OFADD__(*result, a3))
  {
    *result += a3;
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018B7A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

CGImageDestination *sub_10018B7F4(size_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_contentType, v4, v6);
  UTType.identifier.getter();
  (*(v5 + 8))(v8, v4);
  v10 = String._bridgeToObjectiveC()();

  v11 = CGImageDestinationCreateWithDataConsumer(v9, v10, a1, 0);

  v12 = *(v2 + 24);
  *(v2 + 24) = v11;
  v13 = v11;

  if (!v13)
  {
    sub_10010F994();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  return v13;
}

void sub_10018B98C(NSURL *a1@<X8>)
{
  v3 = v1;
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  v6 = CGImageSourceCreateWithURL(v4, 0);

  if (v6)
  {
    Count = CGImageSourceGetCount(v6);
    if (Count < 1)
    {
      sub_10010F994();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
    }

    else
    {
      v8 = sub_10018B7F4(Count);
      if (v2)
      {
      }

      else
      {
        v11 = v8;
        v12 = sub_10010F6D0(_swiftEmptyArrayStorage);
        v13 = v3 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options;
        v14 = *(v3 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options);
        v22 = &type metadata for Float;
        if (v14 <= 0.01)
        {
          v14 = 0.01;
        }

        *&v21 = v14;
        sub_10010F7F8(&v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v12;
        sub_10018DB80(v20, kCGImageDestinationLossyCompressionQuality, isUniquelyReferenced_nonNull_native);
        v16 = v23;
        v17 = *(v13 + 30);
        v22 = &type metadata for Bool;
        LOBYTE(v21) = v17;
        sub_10010F7F8(&v21, v20);
        v18 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v16;
        sub_10018DB80(v20, kCGImagePropertyHasAlpha, v18);
        _s3__C8CFStringCMa_0(0);
        sub_10018EA64(&qword_10020D470, _s3__C8CFStringCMa_0);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        CGImageDestinationAddImageFromSource(v11, v6, 0, isa);
      }
    }
  }

  else
  {
    sub_10010F994();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }
}

void sub_10018BBE0()
{
  v2 = v0;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33[-1] - v8;
  v10 = objc_allocWithZone(PDFDocument);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 initWithURL:v12];

  if (!v14)
  {
    sub_10010F994();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return;
  }

  (*(v4 + 16))(v9, v2 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_contentType, v3);
  static UTType.heic.getter();
  v15 = UTType.conforms(to:)();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  v17 = OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options;
  if ((v15 & 1) != 0 && *(v2 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options + 24) == 1)
  {
    v18 = [v14 pageCount];
    if (v18 < 0)
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (!v18)
    {
      v20 = _swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v19 = v18;
    v20 = sub_10018D3E4(v18, 0);
    if (sub_10018E388(v33, (v20 + 4), v19, 0, v19) == v19)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  sub_1000FF5D8(&qword_100210BC8);
  v21 = swift_allocObject();
  v20 = v21;
  *(v21 + 16) = xmmword_10019A9F0;
  if (*(v2 + v17 + 24))
  {
    *(v21 + 32) = 0;
  }

  else
  {
    *(v21 + 32) = *(v2 + v17 + 16);
  }

LABEL_12:
  if (*(v2 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_forEstimation) == 1)
  {
    if (v20[2] >= 9uLL)
    {
      sub_10018E2B8(v20, (v20 + 4), 0, 0x11uLL);
      v24 = v23;

      v20 = v24;
    }

    v25 = [v14 pageCount];
    *(v2 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_pageRatio) = v25 / v20[2];
  }

  v26 = sub_10018B7F4(v20[2]);
  if (!v1)
  {

    v27 = v20[2];
    if (!v27)
    {
LABEL_24:

      return;
    }

    v28 = 0;
    while (v28 < v20[2])
    {
      v29 = [v14 pageAtIndex:v20[v28 + 4]];
      if (!v29)
      {

        sub_10010F994();
        swift_allocError();
        *v31 = 0;
        swift_willThrow();
        goto LABEL_18;
      }

      v30 = v29;
      sub_10018BFB8(v29);
      ++v28;

      if (v27 == v28)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_18:
}

void sub_10018BFB8(void *a1)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    sub_10010F994();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    return;
  }

  v4 = (v1 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options);
  v5 = *(v1 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options + 8) / 72.0;
  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_forEstimation) == 1)
  {
    v6 = v5;
    *(v1 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_scaleRatio) = v6 * 16.0;
    v5 = 0.25;
  }

  v7 = v2;
  [a1 boundsForBox:0];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a1 transformForBox:0];
  CGAffineTransformScale(&v38, &v39, v5, v5);
  v39 = v38;
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = v15;
  v41 = CGRectApplyAffineTransform(v40, &v39);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v20 = CGColorSpaceCreateWithName(kCGColorSpaceAdobeRGB1998);
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v22 = CGRectGetWidth(v42);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v23 = CGRectGetHeight(v43);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v24 = CGRectGetWidth(v44);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v24 - 0x2000000000000000) >> 62 == 3)
  {
    v25 = CGBitmapContextCreate(0, v22, v23, 8uLL, 4 * v24, v21, 0x2002u);
    if (v25)
    {
      v26 = v25;
      CGContextScaleCTM(v25, v5, v5);
      v27 = *(v4 + 4);
      if (v27)
      {
        v28 = v27;
        CGContextSetFillColorWithColor(v26, v28);
        sub_1000FF5D8(&qword_100210BD0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_10019A9F0;
        *(v29 + 32) = x;
        *(v29 + 40) = y;
        *(v29 + 48) = width;
        *(v29 + 56) = height;
        CGContextRef.fill(_:)(v29);
      }

      [a1 drawWithBox:0 toContext:v26];
      Image = CGBitmapContextCreateImage(v26);
      if (Image)
      {
        v31 = Image;
        sub_10010F6D0(_swiftEmptyArrayStorage);
        v32 = *v4;
        *&v39.d = &type metadata for Float;
        LODWORD(v39.a) = v32;
        sub_10010F7F8(&v39, &v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10018DB80(&v38, kCGImageDestinationLossyCompressionQuality, isUniquelyReferenced_nonNull_native);
        _s3__C8CFStringCMa_0(0);
        sub_10018EA64(&qword_10020D470, _s3__C8CFStringCMa_0);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        CGImageDestinationAddImage(v7, v31, isa);

        return;
      }

      sub_10010F994();
      swift_allocError();
      *v37 = 2;
      swift_willThrow();

      goto LABEL_23;
    }

LABEL_22:
    sub_10010F994();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();
LABEL_23:

    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_10018C4BC(uint64_t result)
{
  v2 = (*(v1 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_pageRatio) * result) * *(v1 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_scaleRatio);
  if (COERCE_INT(fabs(v2)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.2234e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10018C528()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_contentType;
  v2 = type metadata accessor for UTType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

__n128 sub_10018C5E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v15 = *a3;
  v16 = *(a3 + 16);
  v17 = *(a3 + 32);
  *(v10 + 24) = 0;
  *(v10 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_scaleRatio) = 1065353216;
  *(v10 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_pageRatio) = 1065353216;
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_contentType;
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  v13 = v10 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_options;
  result = v15;
  *v13 = v15;
  *(v13 + 16) = v16;
  *(v13 + 32) = v17;
  *(v10 + OBJC_IVAR____TtC17PreviewFoundationP33_3C4103CBD7C5E035C86ED39264E3AAAE16ImageDestination_forEstimation) = a4;
  *a5 = v10;
  return result;
}

CGImageDestination *sub_10018C72C()
{
  result = *(*v0 + 24);
  if (result)
  {
    return CGImageDestinationFinalize(result);
  }

  return result;
}

void sub_10018C784(NSURL *a1@<X8>)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = CGImageSourceCreateWithURL(v3, 0);

  if (v5)
  {
    Count = CGImageSourceGetCount(v5);
    if ((Count & 0x8000000000000000) == 0)
    {
      v7 = Count;
      if (!Count)
      {
LABEL_11:

        return;
      }

      v8 = 0;
      v43 = PDFPageImageInitializationOptionCompressionQuality;
      v33 = v5;
      v34 = PDFPageImageInitializationOptionPerformOCR;
      while (1)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, v8, 0);
        if (!ImageAtIndex)
        {
          sub_10010F994();
          swift_allocError();
          *v32 = 0;
          swift_willThrow();

          return;
        }

        v10 = ImageAtIndex;
        v11 = v43;
        v37 = v43;
        v38 = *(v2 + 32);
        v39 = &type metadata for Float;
        v40 = v34;
        v12 = *(v2 + 59);
        v42 = &type metadata for Bool;
        v41 = v12;
        sub_1000FF5D8(&qword_100210BE0);
        v13 = static _DictionaryStorage.allocate(capacity:)();
        v14 = v11;
        v15 = v34;
        sub_10018E990(&v37, &v35);
        v16 = v35;
        v17 = sub_10011034C(v35);
        if (v18)
        {
          break;
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
        *(v13[6] + 8 * v17) = v16;
        sub_10010F7F8(v36, (v13[7] + 32 * v17));
        v19 = v13[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_15;
        }

        v13[2] = v21;
        sub_10018E990(&v40, &v35);
        v22 = v35;
        v23 = sub_10011034C(v35);
        if (v24)
        {
          break;
        }

        *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v23;
        *(v13[6] + 8 * v23) = v22;
        sub_10010F7F8(v36, (v13[7] + 32 * v23));
        v25 = v13[2];
        v20 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v20)
        {
          goto LABEL_15;
        }

        v13[2] = v26;
        sub_1000FF5D8(&qword_100210BE8);
        swift_arrayDestroy();
        v27 = objc_allocWithZone(PDFPage);
        type metadata accessor for ImageInitializationOption(0);
        sub_10018EA64(&qword_10020D4B0, type metadata accessor for ImageInitializationOption);
        v28 = v10;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v30 = [v27 initWithCGImage:v28 options:isa];

        [*(v2 + 16) insertPage:v30 atIndex:v8];
        ++v8;
        v5 = v33;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_10010F994();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
  }
}

void sub_10018CB00()
{
  v1 = v0;
  v2 = objc_allocWithZone(PDFDocument);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  if (v6)
  {
    v7 = [v6 pageCount];
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = v7;
      if (!v7)
      {
LABEL_7:

        return;
      }

      v9 = 0;
      while (1)
      {
        v10 = *(v1 + 16);
        v11 = [v6 pageAtIndex:v9];
        if (!v11)
        {
          break;
        }

        v12 = v11;
        [v10 insertPage:v11 atIndex:v9];

        if (v8 == ++v9)
        {
          goto LABEL_7;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_10010F994();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }
}

void sub_10018CC3C()
{
  sub_1000FF5D8(&qword_1002105C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001A9DF0;
  *(inited + 32) = PDFDocumentSaveImagesAsJPEGOption;
  *(inited + 40) = *(v0 + 61);
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = PDFDocumentSaveTextFromOCROption;
  v2 = *(v0 + 59);
  *(inited + 104) = &type metadata for Bool;
  *(inited + 80) = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = PDFDocumentSaveImagesAsJPEGOption;
  v4 = PDFDocumentSaveTextFromOCROption;
  v5 = String._bridgeToObjectiveC()();

  *(inited + 112) = v5;
  v6 = *(v0 + 58);
  *(inited + 144) = &type metadata for Bool;
  *(inited + 120) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = String._bridgeToObjectiveC()();

  *(inited + 152) = v7;
  *(inited + 160) = *(v0 + 57);
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = PDFDocumentOptimizeImagesForScreenOption;
  v8 = *(v0 + 60);
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = v8;
  v9 = PDFDocumentOptimizeImagesForScreenOption;
  v10 = sub_10010DD28(inited);
  swift_setDeallocating();
  sub_1000FF5D8(&qword_10020D900);
  swift_arrayDestroy();
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  sub_10018CE60(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  LODWORD(v11) = [v12 writeToConsumer:v11 withOptions:isa];

  if (!v11)
  {
    sub_10010F994();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();
  }
}

uint64_t sub_10018CE60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000FF5D8(&qword_100210BD8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1001150A0(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    _s3__C22PDFDocumentWriteOptionVMa_0(0);
    v15 = v14;
    swift_dynamicCast();
    sub_10010F7F8((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_10010F7F8(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_10010F7F8(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_10010F7F8(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10018D128()
{

  return swift_deallocClassInstance();
}

__n128 sub_10018D170@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v14 = *a3;
  v15 = *(a3 + 16);
  v16 = *(a3 + 32);
  v11 = [objc_allocWithZone(PDFDocument) init];
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 8))(a2, v12);
  *(v10 + 16) = v11;
  *(v10 + 24) = a1;
  result = v14;
  *(v10 + 32) = v14;
  *(v10 + 48) = v15;
  *(v10 + 64) = v16;
  *(v10 + 72) = a4;
  *a5 = v10;
  return result;
}

uint64_t sub_10018D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v15 = a6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.pdf.getter();
  v12 = UTType.conforms(to:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return a5(a1);
  }

  else
  {
    return v15(a1);
  }
}

void *sub_10018D3E4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000FF5D8(&qword_100210BC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10018D468(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000FF5D8(&qword_10020DC80);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10018D4F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000FF5D8(&qword_10020D8E0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_10010F7F8(v21, v31);
      }

      else
      {
        sub_1001150A0(v21, v31);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      _s3__C8CFStringCMa_0(0);
      sub_10018EA64(&qword_10020D8D8, _s3__C8CFStringCMa_0);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_10010F7F8(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10018D7D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1000FF5D8(&qword_10020D970);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v20 = (v15 - 1) & v15;
LABEL_15:
      v23 = v19 | (v11 << 6);
      v24 = *(v8 + 48);
      v41 = *(v38 + 72);
      v42 = v20;
      v25 = v24 + v41 * v23;
      if (v40)
      {
        sub_10018EAAC(v25, v7);
      }

      else
      {
        sub_10018EA00(v25, v7);
      }

      v26 = *(*(v8 + 56) + 8 * v23);
      Hasher.init(_seed:)();
      type metadata accessor for UTType();
      sub_10018EA64(&qword_10020D8F0, &type metadata accessor for UTType);
      dispatch thunk of Hashable.hash(into:)();
      v27 = &v7[*(v39 + 20)];
      v28 = *(v27 + 1);
      v43 = *v27;
      v44 = v28;
      v45 = *(v27 + 4);
      sub_10018B588();
      result = Hasher._finalize()();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_10018EAAC(v7, *(v10 + 48) + v41 * v18);
      *(*(v10 + 56) + 8 * v18) = v26;
      ++*(v10 + 16);
      v15 = v42;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

_OWORD *sub_10018DB80(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10010CB08(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10018DF28();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10018D4F0(v13, a3 & 1);
    v8 = sub_10010CB08(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C8CFStringCMa_0(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10010FA4C(v19);

    return sub_10010F7F8(a1, v19);
  }

  else
  {
    sub_10018DE20(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_10018DCC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_10010CA28(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_10018E0A8();
    goto LABEL_7;
  }

  sub_10018D7D0(result, a3 & 1);
  result = sub_10010CA28(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10018EA00(a2, v10);
  return sub_10018DE88(v13, v10, a1, v19);
}

_OWORD *sub_10018DE20(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10010F7F8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_10018DE88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  result = sub_10018EAAC(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_10018DF28()
{
  v1 = v0;
  sub_1000FF5D8(&qword_10020D8E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1001150A0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10010F7F8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10018E0A8()
{
  v1 = v0;
  v2 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FF5D8(&qword_10020D970);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_10018EA00(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = sub_10018EAAC(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_10018E2B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1000FF5D8(&qword_100210BC8);
      v8 = swift_allocObject();
      v9 = j__malloc_size_1(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t *sub_10018E388(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018E424(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return result;
  }

  v4 = *(a1 + 25);
  v5 = *(a1 + 26);
  v6 = *(a1 + 27);
  v7 = *(a1 + 28);
  v8 = *(a1 + 29);
  v9 = *(a1 + 30);
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (*(a1 + 24))
  {
    result = 0;
    if (!*(a2 + 24))
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v12 = *(a2 + 24);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }
  }

  if (((v4 ^ *(a2 + 25)) & 1) == 0 && ((v5 ^ *(a2 + 26)) & 1) == 0 && ((v6 ^ *(a2 + 27)) & 1) == 0 && ((v7 ^ *(a2 + 28)) & 1) == 0 && ((v8 ^ *(a2 + 29)) & 1) == 0 && ((v9 ^ *(a2 + 30)) & 1) == 0)
  {
    if (v10)
    {
      if (v11)
      {
        type metadata accessor for CGColor(0);
        sub_10018EA64(&qword_10020D950, type metadata accessor for CGColor);
        v13 = v11;
        v14 = static _CFObject.== infix(_:_:)();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v11)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_10018E594()
{
  result = qword_1002108C8;
  if (!qword_1002108C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002108C8);
  }

  return result;
}

__n128 sub_10018E5E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10018E5FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10018E658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10018E6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10018E758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10018E7E8()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10018E85C()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10018E93C()
{
  result = qword_100210BC0;
  if (!qword_100210BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100210BC0);
  }

  return result;
}

uint64_t sub_10018E990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_100210BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018EA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018EA64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018EAAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_10018EB10(char a1)
{
  v2 = swift_allocObject();
  v2[17] = 0;
  static NavigationSplitViewVisibility.detailOnly.getter();
  ObservationRegistrar.init()();
  v2[16] = a1;
  v2[18] = 0;
  return v2;
}

uint64_t sub_10018EB74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationSplitViewVisibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_100191C50(&qword_100210CE0, &type metadata accessor for NavigationSplitViewVisibility);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_10018EDF4@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F64B0, v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10018EE50()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x506E49746C697562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10018EEB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x80000001001B5F10;
  if (v2 == 1)
  {
    v5 = 0x80000001001B5F10;
  }

  else
  {
    v3 = 0x506E49746C697562;
    v5 = 0xEF74694B72657061;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x506E49746C697562;
    v4 = 0xEF74694B72657061;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10018EFC0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10018F06C()
{
  String.hash(into:)();
}

Swift::Int sub_10018F104()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10018F1B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x80000001001B5F10;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x506E49746C697562;
    v4 = 0xEF74694B72657061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *sub_10018F220(char a1)
{
  v3 = type metadata accessor for NavigationSplitViewVisibility();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[17] = 0;
  static NavigationSplitViewVisibility.detailOnly.getter();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility], v6, v3);
  ObservationRegistrar.init()();
  v1[16] = a1;
  v1[18] = 0;
  return v1;
}

uint64_t sub_10018F318(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10018F428(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10018F54C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x80000001001B5F10;
  if (*(v1 + 18) == 1)
  {
    v5 = 0x80000001001B5F10;
  }

  else
  {
    v3 = 0x506E49746C697562;
    v5 = 0xEF74694B72657061;
  }

  if (*(v1 + 18))
  {
    v6 = v3;
  }

  else
  {
    v6 = 1701736302;
  }

  if (*(v1 + 18))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xD000000000000013;
  if (v2 != 1)
  {
    v8 = 0x506E49746C697562;
    v4 = 0xEF74694B72657061;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (v2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {

LABEL_22:
    v12 = *(v1 + 18);
    LOBYTE(v14) = v2;
    sub_10018FCA0(&v14);
    *(v1 + 18) = v2;
    LOBYTE(v14) = v12;
    sub_100190324(&v14);
    return;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10018F75C()
{
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_10018F810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for ThumbnailsViewModel()
{
  result = qword_100210C38;
  if (!qword_100210C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_10018F96C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10018FAAC;
}

void sub_10018FAAC(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_10018FB30()
{
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10018FBD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

void sub_10018FCA0(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v24 = v1;
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 18);
  v5 = 0xD000000000000013;
  v6 = 0x80000001001B5F10;
  if (v3 != 1)
  {
    v5 = 0x506E49746C697562;
    v6 = 0xEF74694B72657061;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v9 = 0x80000001001B5F10;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = 0xEF74694B72657061;
      if (v7 != 0x506E49746C697562)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    if (v7 != 1701736302)
    {
      goto LABEL_18;
    }
  }

  if (v8 == v9)
  {

    return;
  }

LABEL_18:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    _StringGuts.grow(_:)(35);

    v24 = 0xD000000000000021;
    v25 = 0x80000001001B9200;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = 0x80000001001B5F10;
    v12 = 0x506E49746C697562;
    if (*(v2 + 18) == 1)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v11 = 0xEF74694B72657061;
    }

    if (*(v2 + 18))
    {
      v13 = v12;
    }

    else
    {
      v13 = 1701736302;
    }

    if (*(v2 + 18))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = v14;
    String.append(_:)(*&v13);

    v17 = v24;
    v16 = v25;
    if (qword_10020D060 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100101048(v18, qword_10020E678);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100125658(v17, v16, &v24);
      _os_log_impl(&dword_100000000, v19, v20, "[Thumbnails] %s", v21, 0xCu);
      sub_10010FA4C(v22);
    }

    swift_getKeyPath();
    v24 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + 18) && *(v2 + 18) == 1)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        swift_getKeyPath();
        v24 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        sub_100190BD8(*(v2 + 17));
      }
    }
  }
}

uint64_t sub_100190124@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 18);
  return result;
}

void sub_1001901CC(uint64_t a1, unint64_t a2)
{
  if (qword_10020D060 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100101048(v4, qword_10020E678);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100125658(a1, a2, &v9);
    _os_log_impl(&dword_100000000, oslog, v5, "[Thumbnails] %s", v6, 0xCu);
    sub_10010FA4C(v7);
  }
}

void sub_100190324(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v23 = v1;
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 18);
  v5 = 0xD000000000000013;
  v6 = 0x80000001001B5F10;
  if (v3 != 1)
  {
    v5 = 0x506E49746C697562;
    v6 = 0xEF74694B72657061;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v9 = 0x80000001001B5F10;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v9 = 0xEF74694B72657061;
      if (v7 != 0x506E49746C697562)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    if (v7 != 1701736302)
    {
      goto LABEL_18;
    }
  }

  if (v8 == v9)
  {

    return;
  }

LABEL_18:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    _StringGuts.grow(_:)(34);

    v23 = 0xD000000000000020;
    v24 = 0x80000001001B91D0;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = 0x80000001001B5F10;
    v12 = 0x506E49746C697562;
    if (*(v2 + 18) == 1)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v11 = 0xEF74694B72657061;
    }

    if (*(v2 + 18))
    {
      v13 = v12;
    }

    else
    {
      v13 = 1701736302;
    }

    if (*(v2 + 18))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = v14;
    String.append(_:)(*&v13);

    v17 = v23;
    v16 = v24;
    if (qword_10020D060 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100101048(v18, qword_10020E678);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100125658(v17, v16, &v23);
      _os_log_impl(&dword_100000000, v19, v20, "[Thumbnails] %s", v21, 0xCu);
      sub_10010FA4C(v22);
    }
  }
}

uint64_t sub_1001906BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 18);
  return result;
}

void sub_1001907D8()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 18);
  v5 = *(v0 + 24);
  v2 = v5;
  sub_10018FCA0(&v5);
  *(v1 + 18) = v2;
  v4 = v3;
  sub_100190324(&v4);
}

uint64_t (*sub_100190864(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  swift_getKeyPath();
  a1[2] = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel___observationRegistrar;
  *a1 = v1;
  a1[3] = sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *a1 = *(v1 + 18);
  return sub_100190970;
}

uint64_t sub_100190970(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v4 + 18);
  if (a2)
  {
    v8 = *a1;
    sub_10018FCA0(&v8);
    *(v4 + 18) = v3;
    v9 = v5;
    v6 = &v9;
  }

  else
  {
    v10 = *a1;
    sub_10018FCA0(&v10);
    *(v4 + 18) = v3;
    v11 = v5;
    v6 = &v11;
  }

  sub_100190324(v6);
  *a1 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void sub_100190A30(char a1, unsigned __int8 *a2)
{
  v4 = *a2;
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = 0xD000000000000013;
  v6 = 0x80000001001B5F10;
  if (*(v2 + 18) == 1)
  {
    v7 = 0x80000001001B5F10;
  }

  else
  {
    v5 = 0x506E49746C697562;
    v7 = 0xEF74694B72657061;
  }

  if (*(v2 + 18))
  {
    v8 = v5;
  }

  else
  {
    v8 = 1701736302;
  }

  if (*(v2 + 18))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  v10 = 0xD000000000000013;
  if (v4 != 1)
  {
    v10 = 0x506E49746C697562;
    v6 = 0xEF74694B72657061;
  }

  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1701736302;
  }

  if (v4)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  if (v8 == v11 && v9 == v12)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  sub_100190BD8(a1 & 1);
}

void sub_100190BD8(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 17) == v4)
  {
    *(v2 + 17) = v4;
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v25 - 2) = v2;
    *(&v25 - 8) = v4;
    v26 = v2;
    sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((a1 & 1) == 0)
    {
LABEL_3:
      static NavigationSplitViewVisibility.detailOnly.getter();
      v9 = 0x65736C6166;
      v10 = 0xE500000000000000;
      goto LABEL_6;
    }
  }

  static NavigationSplitViewVisibility.all.getter();
  v10 = 0xE400000000000000;
  v9 = 1702195828;
LABEL_6:
  sub_10018EB74(v7);
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v26 = 0xD00000000000001CLL;
  v27 = 0x80000001001B91B0;
  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6372756F73202C29;
  v12._object = 0xEB00000000203A65;
  String.append(_:)(v12);
  swift_getKeyPath();
  v25 = v2;
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = 0x80000001001B5F10;
  v14 = 0x506E49746C697562;
  if (*(v2 + 18) == 1)
  {
    v14 = 0xD000000000000013;
  }

  else
  {
    v13 = 0xEF74694B72657061;
  }

  if (*(v2 + 18))
  {
    v15 = v14;
  }

  else
  {
    v15 = 1701736302;
  }

  if (*(v2 + 18))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v19 = v26;
  v18 = v27;
  if (qword_10020D060 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100101048(v20, qword_10020E678);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100125658(v19, v18, &v26);
    _os_log_impl(&dword_100000000, v21, v22, "[Thumbnails] %s", v23, 0xCu);
    sub_10010FA4C(v24);
  }
}

uint64_t sub_100190FD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  swift_beginAccess();
  v4 = type metadata accessor for NavigationSplitViewVisibility();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1001910D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1001911C8(uint64_t a1)
{
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_10018EB74(v5);
}

uint64_t sub_100191294(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100191330()
{
  v1 = v0;
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v0 + 16))
  {
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v0;

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v1;
    return Binding.init(get:set:)();
  }

  else
  {
    static NavigationSplitViewVisibility.detailOnly.getter();
    static Binding.constant(_:)();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100191554@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  swift_beginAccess();
  v5 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1001916B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NavigationSplitViewVisibility();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, a1, v6);
  sub_10018EB74(v9);
  static NavigationSplitViewVisibility.all.getter();
  v10 = static NavigationSplitViewVisibility.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  v13[1] = a4;
  sub_100191C50(&qword_100210C00, type metadata accessor for ThumbnailsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a4 + 18) && *(a4 + 18) == 1)
  {

LABEL_7:
    sub_100190BD8(v10 & 1);
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_7;
  }
}

uint64_t sub_100191938()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1001919D8()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility;
  v2 = type metadata accessor for NavigationSplitViewVisibility();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_100191AD4()
{
  result = qword_100210C08;
  if (!qword_100210C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100210C08);
  }

  return result;
}

uint64_t sub_100191B40()
{
  result = type metadata accessor for NavigationSplitViewVisibility();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100191C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100191CC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100191D74(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1002223B0 == -1)
  {
    if (qword_1002223B8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10019223C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1002223B8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1002223A8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100192254();
    a3 = v10;
    a4 = v9;
    v8 = dword_100222398 < v11;
    if (dword_100222398 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10022239C > a3)
      {
        return 1;
      }

      if (dword_10022239C >= a3)
      {
        return dword_1002223A0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100222398 < a2;
  if (dword_100222398 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100191F08(uint64_t result)
{
  v1 = qword_1002223B8;
  if (qword_1002223B8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1002223B8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = j__malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100222398, &dword_10022239C, &dword_1002223A0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          j__free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t EntityProperty<>.init()()
{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t static ToolbarContentBuilder.buildBlock<A>(_:)()
{
  return static ToolbarContentBuilder.buildBlock<A>(_:)();
}

{
  return static ToolbarContentBuilder.buildBlock<A>(_:)();
}

uint64_t static ToolbarContentBuilder.buildIf<A>(_:)()
{
  return static ToolbarContentBuilder.buildIf<A>(_:)();
}

{
  return static ToolbarContentBuilder.buildIf<A>(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t Scene.onChange<A>(of:initial:_:)()
{
  return Scene.onChange<A>(of:initial:_:)();
}

{
  return Scene.onChange<A>(of:initial:_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}