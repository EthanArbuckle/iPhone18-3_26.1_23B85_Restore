uint64_t sub_1002CB768()
{
  v1 = *v0;
  v2 = *(*v0 + 432);

  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return _swift_task_switch(sub_1002CB8A8, v4, v3);
}

uint64_t sub_1002CB8A8()
{
  v1 = *(v0 + 416);

  sub_100014984(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002CB9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CBB34, v8, v7);
}

uint64_t sub_1002CBB34()
{
  v1 = *(v0 + 64);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:0 message:v2 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v3 addAction:v5];
  v6 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v6)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_1000095E8(v0 + 16, &unk_101184EA0);
    goto LABEL_10;
  }

  *(v0 + 56) = v6;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_8;
  }

  v7 = *(v0 + 40);
  if (!v7)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = *(*sub_10000954C((v0 + 16), v7) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 16);
  if (v8)
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    *v9 = v3;
    *(v9 + 8) = 1;
    *(v9 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v9, v10, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v10, v11, type metadata accessor for AppInterfaceContext.Activity);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_1002CF4E8(v11, v14 + v13, type metadata accessor for AppInterfaceContext.Activity);
    v15 = v3;
    sub_100706900(v10, sub_100139B24, v14);

    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v9, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002CBF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a3, v5);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = a2;
  (*(v6 + 32))(&v15[v14], v8, v5);
  sub_1001F4CB8(0, 0, v11, &unk_100EC5AF8, v15);
}

uint64_t sub_1002CC120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  sub_10010FC20(&unk_101181520);
  v5[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for MainActor();
  v5[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v8;
  v5[30] = v7;

  return _swift_task_switch(sub_1002CC25C, v8, v7);
}

uint64_t sub_1002CC25C()
{
  *(v0[20] + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;

  v0[31] = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1002CC324;

  return ApplicationCapabilities.Controller.updated()((v0 + 2));
}

uint64_t sub_1002CC324()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1002CC468, v3, v2);
}

uint64_t sub_1002CC468()
{
  v0[18] = v0[13];
  v1 = v0[24];
  sub_1000089F8((v0 + 18), (v0 + 19), &qword_10118A3E8);
  sub_100014984((v0 + 2));
  v2 = (v1 + 16);
  if (v0[18])
  {
    v3 = v0[26];
    v4 = v0[23];
    sub_1000095E8((v0 + 18), &qword_10118A3E8);
    v5 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*v2)(v3, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Got subscription status, trying again", v8, 2u);
    }

    v9 = v0[26];
    v10 = v0[23];
    v11 = v0[24];

    (*(v11 + 8))(v9, v10);
    v12 = swift_task_alloc();
    v0[33] = v12;
    *v12 = v0;
    v12[1] = sub_1002CC7E4;
    v13 = v0[21];

    return sub_1002CA3D8(v13);
  }

  else
  {
    v15 = v0[25];
    v16 = v0[23];

    v17 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*v2)(v15, v17, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not get subscription status, returning", v20, 2u);
    }

    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[22];
    v24 = v0[23];
    v25 = v0[20];

    (*(v22 + 8))(v21, v24);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);

    v27 = static MainActor.shared.getter();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v25;
    sub_1001F4CB8(0, 0, v23, &unk_100EC5B08, v28);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1002CC7E4()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1002CC904, v3, v2);
}

uint64_t sub_1002CC904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CC980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CCAEC, v8, v7);
}

uint64_t sub_1002CCAEC()
{
  v1 = *(v0 + 64);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  v7 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v7)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_1000095E8(v0 + 16, &unk_101184EA0);
    goto LABEL_10;
  }

  *(v0 + 56) = v7;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_8;
  }

  v8 = *(v0 + 40);
  if (!v8)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = *(*sub_10000954C((v0 + 16), v8) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 16);
  if (v9)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    *v10 = v4;
    *(v10 + 8) = 1;
    *(v10 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v10, v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v11, v12, type metadata accessor for AppInterfaceContext.Activity);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_1002CF4E8(v12, v15 + v14, type metadata accessor for AppInterfaceContext.Activity);
    v16 = v4;
    sub_100706900(v11, sub_100139B24, v15);

    sub_1002CF550(v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002CCF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CD0C4, v8, v7);
}

uint64_t sub_1002CD0C4()
{
  v1 = *(v0 + 64);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  v7 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v7)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_1000095E8(v0 + 16, &unk_101184EA0);
    goto LABEL_10;
  }

  *(v0 + 56) = v7;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_8;
  }

  v8 = *(v0 + 40);
  if (!v8)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = *(*sub_10000954C((v0 + 16), v8) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 16);
  if (v9)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    *v10 = v4;
    *(v10 + 8) = 1;
    *(v10 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v10, v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v11, v12, type metadata accessor for AppInterfaceContext.Activity);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_1002CF4E8(v12, v15 + v14, type metadata accessor for AppInterfaceContext.Activity);
    v16 = v4;
    sub_100706900(v11, sub_100139B24, v15);

    sub_1002CF550(v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
  }

LABEL_10:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002CD534(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CD690, v6, v5);
}

uint64_t sub_1002CD690()
{
  v39 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  v7 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v34 = *(v2 + 16);
  v35 = v7;
  v34(v1);
  (*(v3 + 16))(v4, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[8];
  v36 = v0[7];
  v37 = v0[10];
  v13 = v0[5];
  v12 = v0[6];
  v14 = &stru_101148000;
  v15 = v0[4];
  if (v10)
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v16 = 136315394;
    sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v15);
    v20 = sub_1000105AC(v17, v19, &v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    v21 = [objc_opt_self() sharedPrivacyInfo];
    LODWORD(v17) = [v21 privacyAcknowledgementRequiredForMusic];

    *(v16 + 14) = v17;
    v14 = &stru_101148000;
    _os_log_impl(&_mh_execute_header, v8, v9, "Handling URL %s - privacyAcknowledgementRequiredForMusic:%{BOOL}d", v16, 0x12u);
    sub_10000959C(v33);

    v22 = *(v11 + 8);
    v22(v37, v36);
  }

  else
  {

    (*(v13 + 8))(v12, v15);
    v22 = *(v11 + 8);
    v22(v37, v36);
  }

  v23 = [objc_opt_self() v14[136].name];
  v24 = [v23 privacyAcknowledgementRequiredForMusic];

  if (v24)
  {
    (v34)(v0[9], v35, v0[7]);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Waiting for GDPR agreement to launch sing", v27, 2u);
    }

    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[3];

    v22(v28, v29);
    type metadata accessor for PrivacyAcknowledgementObserver();
    swift_allocObject();

    *(v30 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1002D0278, v30);
  }

  else
  {
    sub_1002CDA98();
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1002CDA98()
{
  v0 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v0 - 8);
  v42 = &v37 - v1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLComponents();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v39 = *(v10 + 16);
  v40 = v15;
  v39(v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v5;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Launch Sing", v18, 2u);
    v5 = v38;
  }

  v19 = *(v10 + 8);
  v19(v14, v9);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v20 = v42;
  URLComponents.url.getter();
  if ((*(v3 + 48))(v20, 1, v2) == 1)
  {
    sub_1000095E8(v20, &qword_101183A20);
    v21 = v41;
    (v39)(v41, v40, v9);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136315138;
      swift_beginAccess();
      sub_1002CF674(&qword_10118A3D8, &type metadata accessor for URLComponents);
      v42 = v9;
      v26 = v44;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = sub_1000105AC(v27, v28, &v45);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to launch SingMic %s", v24, 0xCu);
      sub_10000959C(v25);

      v19(v41, v42);
      return (*(v43 + 8))(v8, v26);
    }

    v19(v21, v9);
  }

  else
  {
    (*(v3 + 32))(v5, v20, v2);
    v31 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    sub_10010CD7C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    v35 = v2;
    sub_1002CF674(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 openURL:v34 options:isa completionHandler:0];

    (*(v3 + 8))(v5, v35);
  }

  return (*(v43 + 8))(v8, v44);
}

void sub_1002CE0DC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v8 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v8, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "GDPR has been accepted, launch sing.", v11, 2u);
    }

    (*(v5 + 8))(v7, v4);
    sub_1002CDA98();
    *(a2 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  }
}

uint64_t sub_1002CE258()
{
  sub_1002CF550(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_source, type metadata accessor for LaunchOptions.Source);
  sub_1002CF550(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);

  sub_100020438(*(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler));

  sub_1000095E8(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, &qword_101183A20);

  return v0;
}

uint64_t sub_1002CE330()
{
  sub_1002CE258();

  return swift_deallocClassInstance();
}

void sub_1002CE3B0()
{
  type metadata accessor for LaunchOptions.Source(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LaunchOptions.Kind(319);
    if (v1 <= 0x3F)
    {
      sub_100039B3C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002CE524()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1002CE5E0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaybackIntentDescriptor(319);
      if (v2 <= 0x3F)
      {
        sub_1002CE628();
        if (v3 <= 0x3F)
        {
          sub_10005B724();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002CE5E0()
{
  if (!qword_10118A130)
  {
    v0 = sub_10001F7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10118A130);
    }
  }
}

void sub_1002CE628()
{
  if (!qword_10118A140)
  {
    sub_1001109D0(&qword_1011815E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10118A140);
    }
  }
}

uint64_t sub_1002CE6B0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_100009F78(319, qword_10118A200);
    if (v2 <= 0x3F)
    {
      result = sub_100009F78(319, &qword_101190C20);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002CE758()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101189E90);
  sub_1000060E4(v0, qword_101189E90);
  return static Logger.music(_:)();
}

unsigned __int8 *sub_1002CE7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1002CED50();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1002CED50()
{
  v0 = String.subscript.getter();
  v4 = sub_1002CEDD0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1002CEDD0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000DA5C(v9, 0), v12 = sub_1002CEF28(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1002CEF28(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1002CF148(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1002CF148(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1002CF148(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1002CF1C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099F20, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002CF218(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101099FA0, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002CF264(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000013 && 0x8000000100E45280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0;
    }

    if (a1 == 0xD000000000000014 && 0x8000000100E45260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 4;
    }

    if (a1 == 0xD000000000000015 && 0x8000000100E45240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    if (a1 == 0xD000000000000019 && 0x8000000100E45220 == a2)
    {

      return 1;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1002CF3F4(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002C0E18(a1, v4, v5);
}

uint64_t sub_1002CF480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CF4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CF550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002CF5B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002BFAAC(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1002CF674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002CF6BC(uint64_t a1)
{
  v4 = *(sub_10010FC20(&qword_10118A308) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C0324(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1002CF7E4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C1038(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002CF984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1002C45CC(a1, v4, v5, v6);
}

uint64_t sub_1002CFA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002C40C0(a1, v4, v5, v6);
}

uint64_t sub_1002CFAEC(void *a1, void *a2)
{
  v65 = a2;
  v3 = sub_10010FC20(&qword_101183A20);
  v4 = __chkstk_darwin(v3 - 8);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v54 - v7;
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = [a1 options];
  v19 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_100734164();
  v22 = v21;
  v60 = *(v12 + 8);
  v61 = v12 + 8;
  v60(v17, v11);
  v66 = v18;
  v23 = [v18 sourceApplication];
  if (v23)
  {
    v24 = v23;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v62 = v20;

    v26 = v22;
  }

  if ([v66 annotation])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70[0] = v68;
  v70[1] = v69;
  v63 = v15;
  v59 = v22;
  if (*(&v69 + 1))
  {
    sub_10010FC20(&qword_101197BD0);
    if (swift_dynamicCast())
    {
      v27 = v67;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1000095E8(v70, &unk_101183F30);
  }

  v27 = 0;
LABEL_12:
  v64 = v12;
  v28 = *(v12 + 56);
  v28(v10, 1, 1, v11);
  if (!v27)
  {
    v28(v8, 1, 1, v11);
    sub_1000095E8(v8, &qword_101183A20);
    v38 = v63;
    v39 = v60;
    v40 = v65;
    if (!v59)
    {
      goto LABEL_18;
    }

LABEL_32:

    v49 = [a1 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1007346B4(v38);
    v39(v17, v11);
    v42 = v64;
    goto LABEL_33;
  }

  v57 = a1;
  v58 = v26;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (!*(v27 + 16))
  {

LABEL_21:
    v28(v8, 1, 1, v11);
    sub_1000095E8(v8, &qword_101183A20);
    goto LABEL_22;
  }

  v32 = v29;
  v55 = v10;

  v33 = sub_100019C10(v32, v31);
  v35 = v34;

  if ((v35 & 1) == 0)
  {

    v10 = v55;
    goto LABEL_21;
  }

  sub_10000DD18(*(v27 + 56) + 32 * v33, v70);

  v36 = swift_dynamicCast();
  v28(v8, v36 ^ 1u, 1, v11);
  v37 = v64;
  if ((*(v64 + 48))(v8, 1, v11) != 1)
  {
    v10 = v55;
    sub_1000095E8(v55, &qword_101183A20);

    (*(v37 + 32))(v10, v8, v11);
    v28(v10, 0, 1, v11);
    a1 = v57;
    v40 = v65;
    v38 = v63;
    goto LABEL_31;
  }

  sub_1000095E8(v8, &qword_101183A20);
  v10 = v55;
LABEL_22:
  v40 = v65;
  v26 = v58;
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v63;
  if (!*(v27 + 16))
  {

    a1 = v57;
    v39 = v60;
    if (!v59)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v45 = sub_100019C10(v43, v44);
  v47 = v46;

  a1 = v57;
  if (v47)
  {
    sub_10000DD18(*(v27 + 56) + 32 * v45, v70);

    if (swift_dynamicCast())
    {
      v48 = v56;
      URL.init(string:)();

      sub_1000095E8(v10, &qword_101183A20);
      sub_10003D17C(v48, v10, &qword_101183A20);
    }
  }

  else
  {
  }

  v40 = v65;
LABEL_31:
  v39 = v60;
  v26 = v58;
  if (v59)
  {
    goto LABEL_32;
  }

LABEL_18:
  v41 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v64;
LABEL_33:
  (*(v42 + 16))(v17, v38, v11);
  type metadata accessor for LaunchOptions(0);
  v50 = swift_allocObject();
  sub_1002B8D68(v17, 0, v40);

  v39(v38, v11);
  v51 = (v50 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v51 = v62;
  v51[1] = v26;

  v52 = OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL;
  swift_beginAccess();
  sub_10006B010(v10, v50 + v52, &qword_101183A20);
  swift_endAccess();

  return v50;
}

uint64_t sub_1002D0280(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002CBF24(a1, v4, v5);
}

uint64_t sub_1002D02F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002CCF58(a1, v4, v5, v6);
}

uint64_t sub_1002D03A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002CB9C8(a1, v4, v5, v6);
}

uint64_t sub_1002D045C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002CC980(a1, v4, v5, v6);
}

uint64_t sub_1002D0510(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002CC120(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D0610(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1002D0718;

  return sub_1002C6E24(a1, v1 + v5, v6);
}

uint64_t sub_1002D0718(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002D081C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LaunchURL.Resolver() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_1002C7DDC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1002D096C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1002C7630(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D0A64(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C7574(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D0B5C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002D0C28(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1002C74B8(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1002D0D20()
{
  result = qword_10118A410;
  if (!qword_10118A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A410);
  }

  return result;
}

unint64_t sub_1002D0D88()
{
  result = qword_10118A438;
  if (!qword_10118A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A438);
  }

  return result;
}

uint64_t sub_1002D0E1C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1002D2F88, v4);
}

void sub_1002D0EB0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_10118CDE0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void *sub_1002D0F2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
LABEL_27:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  v11 = 0;
  v56 = a3 & 0xC000000000000001;
  v49 = a3 & 0xFFFFFFFFFFFFFF8;
  v53 = (v7 + 8);
  *&v8 = 136315138;
  v48 = v8;
  v46 = a2;
  v47 = a3;
  v55 = v10;
  while (1)
  {
    if (v56)
    {
      v14 = sub_1007E914C(v11, a3);
    }

    else
    {
      if (v11 >= *(v49 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(a3 + 8 * v11 + 32);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v57 = v11 + 1;
    _s11PlaylistTabCMa();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      break;
    }

LABEL_14:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      if (qword_10117F7A0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, qword_101218E00);
      v22 = v15;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = v51;
        *v25 = v48;
        v50 = v22;
        v26 = a1;
        v27 = [v20 description];
        v28 = v6;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v22;
        v31 = v30;

        a1 = v26;
        v32 = v29;
        v6 = v28;
        v33 = sub_1000105AC(v32, v31, &v58);
        v22 = v52;

        *(v25 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "[Tab Matching] 📁 Checking children for tab group: %s", v25, 0xCu);
        sub_10000959C(v51);
        a2 = v46;

        a3 = v47;
      }

      v12 = [v20 children];
      sub_100009F78(0, &qword_101181F70);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_1002D0F2C(a1, a2, v7);

      if (v13)
      {
        return v13;
      }
    }

    else
    {
    }

    ++v11;
    if (v57 == v55)
    {
      return 0;
    }
  }

  v13 = v16;
  v58 = v16;
  v17 = v15;
  v18 = v54;
  swift_getAtKeyPath();

  sub_1002D2F90(&unk_1011A4660, &type metadata accessor for Playlist);
  v7 = static MusicItem<>.==~ infix(_:_:)();
  (*v53)(v18, v6);
  if ((v7 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000060E4(v34, qword_101218E00);
  v35 = v17;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58 = v39;
    *v38 = v48;
    v35 = v35;
    v40 = [v13 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_1000105AC(v41, v43, &v58);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "[Tab Matching] ✅ Found matching tab: %s", v38, 0xCu);
    sub_10000959C(v39);
  }

  return v13;
}

void *sub_1002D14D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for MusicPin.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
LABEL_27:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  v11 = 0;
  v56 = a3 & 0xC000000000000001;
  v49 = a3 & 0xFFFFFFFFFFFFFF8;
  v53 = (v7 + 8);
  *&v8 = 136315138;
  v48 = v8;
  v46 = a2;
  v47 = a3;
  v55 = v10;
  while (1)
  {
    if (v56)
    {
      v14 = sub_1007E914C(v11, a3);
    }

    else
    {
      if (v11 >= *(v49 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(a3 + 8 * v11 + 32);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v57 = v11 + 1;
    _s6PinTabCMa(0);
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      break;
    }

LABEL_14:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      if (qword_10117F7A0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, qword_101218E00);
      v22 = v15;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v58 = v51;
        *v25 = v48;
        v50 = v22;
        v26 = a1;
        v27 = [v20 description];
        v28 = v6;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v22;
        v31 = v30;

        a1 = v26;
        v32 = v29;
        v6 = v28;
        v33 = sub_1000105AC(v32, v31, &v58);
        v22 = v52;

        *(v25 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "[Tab Matching] 📁 Checking children for tab group: %s", v25, 0xCu);
        sub_10000959C(v51);
        a2 = v46;

        a3 = v47;
      }

      v12 = [v20 children];
      sub_100009F78(0, &qword_101181F70);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_1002D14D8(a1, a2, v7);

      if (v13)
      {
        return v13;
      }
    }

    else
    {
    }

    ++v11;
    if (v57 == v55)
    {
      return 0;
    }
  }

  v13 = v16;
  v58 = v16;
  v17 = v15;
  v18 = v54;
  swift_getAtKeyPath();

  sub_1002D2F90(&unk_10118A440, &type metadata accessor for MusicPin.Item);
  v7 = dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)();
  (*v53)(v18, v6);
  if ((v7 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000060E4(v34, qword_101218E00);
  v35 = v17;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58 = v39;
    *v38 = v48;
    v35 = v35;
    v40 = [v13 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_1000105AC(v41, v43, &v58);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "[Tab Matching] ✅ Found matching tab: %s", v38, 0xCu);
    sub_10000959C(v39);
  }

  return v13;
}

void *sub_1002D1A7C(unsigned int a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_30:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v46 = v3;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007E914C(v4, a3);
    }

    else
    {
      if (v4 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v8 = *(a3 + 8 * v4 + 32);
    }

    v9 = v8;
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    _s8FacetTabCMa();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_16;
    }

    v7 = v11;
    v51 = v11;
    v12 = v9;
    swift_getAtKeyPath();

    v13 = Library.Menu.Identifier.rawValue.getter(v50);
    v15 = v14;
    if (v13 == Library.Menu.Identifier.rawValue.getter(a1) && v15 == v16)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_23;
    }

    v10 = v4 + 1;
LABEL_16:
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      if (qword_10117F7A0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218E00);
      v21 = v9;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v51 = v45;
        *v24 = 136315138;
        v44 = v21;
        v25 = [v19 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v21;
        v28 = v10;
        v30 = v29;

        v31 = sub_1000105AC(v26, v30, &v51);
        v10 = v28;
        v21 = v27;

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v23, "[Tab Matching] 📁 Checking children for tab group: %s", v24, 0xCu);
        sub_10000959C(v45);
      }

      v5 = [v19 children];
      sub_100009F78(0, &qword_101181F70);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_1002D1A7C(a1, a2, v6);

      v3 = v46;
      if (v7)
      {
        return v7;
      }
    }

    else
    {
    }

    ++v4;
    if (v10 == v3)
    {
      return 0;
    }
  }

LABEL_23:
  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000060E4(v32, qword_101218E00);
  v33 = v12;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v51 = v37;
    *v36 = 136315138;
    v33 = v33;
    v38 = [v7 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_1000105AC(v39, v41, &v51);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "[Tab Matching] ✅ Found matching tab: %s", v36, 0xCu);
    sub_10000959C(v37);
  }

  return v7;
}

uint64_t sub_1002D1F90()
{
  v2 = [v0 parent];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = &stru_101148000;
  v5 = [v2 children];
  v6 = sub_100009F78(0, &qword_101181F70);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1003FCB00(v0, v7);
  LOBYTE(v5) = v9;

  if (v5)
  {
LABEL_3:

    return 0;
  }

  v12 = [v3 children];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_65;
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (__OFSUB__(v13, v8))
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v13 - v8) <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13 - v8;
  }

  if (v14 < 1)
  {
    goto LABEL_67;
  }

  v15 = 1;
  while (1)
  {
    v1 = v8 + v15;
    if (__OFADD__(v8, v15))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_8;
    }

    v10 = v8 - v15;
    if (__OFSUB__(v8, v15))
    {
      goto LABEL_60;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = 0;
    if (v1 < v13)
    {
      goto LABEL_21;
    }

LABEL_30:
    v25 = v10;
    v1 = 0;
    if (!v10)
    {
      goto LABEL_33;
    }

LABEL_31:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v1 = v10;
LABEL_33:

      goto LABEL_35;
    }

    v26 = [v10 isEnabled];

    v1 = v10;
    if (v26)
    {
LABEL_57:

      return v10;
    }

LABEL_35:

    if (v14 == v15)
    {
      v3 = v3;
      v28 = [v3 parent];
      if (v28)
      {

        v29 = sub_1002D1F90();
        return v29;
      }

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        if (v10 >= v13)
        {
          goto LABEL_75;
        }

        v13 = [v3 v4[155].name];
        v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v1 & 0xC000000000000001) == 0)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v10 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v30 = *(v1 + 8 * v10 + 32);
            goto LABEL_49;
          }

          __break(1u);
          goto LABEL_72;
        }

LABEL_69:
        v30 = sub_1007E914C(v10, v1);
LABEL_49:
        v13 = v30;

        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (!v31)
        {
          goto LABEL_74;
        }

        v32 = [v31 v4[155].name];
        v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(v1 >> 62))
        {
          result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_52:
            if ((v1 & 0xC000000000000001) != 0)
            {
              goto LABEL_96;
            }

            if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            for (i = *(v1 + 32); ; i = sub_1007E914C(0, v1))
            {
              v10 = i;

              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                goto LABEL_57;
              }

              v13 = v10;
LABEL_74:

LABEL_75:
              v27 = __OFSUB__(v8--, 1);
              if (v27)
              {
                break;
              }

              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_3;
              }

              v34 = [v3 v4[155].name];
              v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if ((v13 & 0xC000000000000001) != 0)
              {
                goto LABEL_90;
              }

              if (v8 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_92;
              }

              v35 = *(v13 + 8 * v8 + 32);
LABEL_80:
              v8 = v35;

              objc_opt_self();
              v36 = swift_dynamicCastObjCClass();
              if (!v36)
              {

                return 0;
              }

              v13 = [v36 v4[155].name];
              v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v6 >> 62))
              {
                if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_93;
                }

                goto LABEL_83;
              }

LABEL_92:
              if (!_CocoaArrayWrapper.endIndex.getter())
              {
LABEL_93:

                goto LABEL_3;
              }

LABEL_83:
              if ((v6 & 0xC000000000000001) != 0)
              {
                v37 = sub_1007E914C(0, v6);
                goto LABEL_86;
              }

              if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v37 = *(v6 + 32);
LABEL_86:
                v10 = v37;

                objc_opt_self();
                if (!swift_dynamicCastObjCClass())
                {
                  return v10;
                }

                return 0;
              }

              __break(1u);
LABEL_96:
              ;
            }

            __break(1u);
LABEL_90:
            v35 = sub_1007E914C(v8, v13);
            goto LABEL_80;
          }

LABEL_73:

          goto LABEL_74;
        }

LABEL_72:
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_52;
        }

        goto LABEL_73;
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v27 = __OFADD__(v15++, 1);
    if (v27)
    {
      goto LABEL_61;
    }
  }

  v4 = [v3 v4[155].name];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_1007E914C(v8 - v15, v16);
  }

  else
  {
    if (v10 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

    v17 = *(v16 + 8 * v10 + 32);
  }

  v10 = v17;

  v4 = &stru_101148000;
  if (v1 >= v13)
  {
    goto LABEL_30;
  }

LABEL_21:
  v4 = [v3 v4[155].name];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = sub_1007E914C(v8 + v15, v18);
  }

  else
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    if (v1 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v19 = *(v18 + 8 * v1 + 32);
  }

  v20 = v19;

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  v22 = v10;
  v23 = v20;
  v1 = v23;
  if (v21 || (v1 = v23, v24 = [v1 isEnabled], v1, !v24))
  {
    v4 = &stru_101148000;
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  return v1;
}

uint64_t sub_1002D2600()
{
  v1 = [v0 defaultChildIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tabForIdentifier:v1];

    return v3;
  }

  v5 = [v0 children];
  sub_100009F78(0, &qword_101181F70);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_1007E914C(0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v3 = v7;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return v3;
  }

  v8 = v3;
  v9 = sub_1002D2600();

  return v9;
}

uint64_t sub_1002D276C()
{
  v0 = type metadata accessor for UIButton.Configuration.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderless()();
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = objc_opt_self();
    v11 = [v10 configurationWithTextStyle:UIFontTextStyleTitle3];
    v12 = [v10 configurationWithWeight:5];
    v13 = [v11 configurationByApplyingConfiguration:v12];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v14 = [objc_opt_self() labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
    UIButton.Configuration.cornerStyle.setter();
    (*(v1 + 104))(v3, enum case for UIButton.Configuration.Size.small(_:), v0);
    return UIButton.Configuration.buttonSize.setter();
  }

  else
  {
    v16 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:3];
    return UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }
}

void sub_1002D2A20(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  v9 = type metadata accessor for UITabBarControllerSidebar.ScrollTarget();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v14 = Strong;
  v15 = [Strong sidebar];
  v16 = [v15 isHidden];

  if ((v16 & 1) != 0 || (v17 = *(a1 + 48), v17 == 255) || (v18 = *(a1 + 56), v19 = *(a1 + 40), v20 = *(a1 + 24), v46 = *(a1 + 8), v47 = v20, v48 = v19, v49 = v17, v50 = v18, PresentationSource.Position.canPresent(from:)(v14)))
  {

LABEL_6:
    a3();
    return;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000060E4(v21, qword_101218E00);
  v22 = a6;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v25;
    v43 = swift_slowAlloc();
    v45 = v43;
    *v25 = 136446210;
    v26 = v22;
    v44 = v22;
    v27 = v26;
    v28 = [v26 description];
    v41 = v24;
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v23;
    v32 = v31;

    v22 = v44;
    v33 = sub_1000105AC(v30, v32, &v45);

    v34 = v42;
    *(v42 + 1) = v33;
    v35 = v40;
    _os_log_impl(&_mh_execute_header, v40, v41, "Attempted to present popover on tab=%{public}s that is no longer visible in the sidebar — Attempting scroll to tab.", v34, 0xCu);
    sub_10000959C(v43);
  }

  else
  {
  }

  v36 = [v14 sidebar];
  *v12 = v22;
  (*(v10 + 104))(v12, enum case for UITabBarControllerSidebar.ScrollTarget.tab(_:), v9);
  v37 = v22;
  UITabBarControllerSidebar.scroll(to:animated:)();

  v38 = (*(v10 + 8))(v12, v9);
  (a3)(v38);
}

uint64_t UITab.commandIssuingIdentifier.getter()
{
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 0x203A646928;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  v2 = [v0 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_1002D2E40()
{
  v1 = *v0;
  swift_getObjectType();
  v10 = _typeName(_:qualified:)();
  v2._countAndFlagsBits = 0x203A646928;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return v10;
}

unint64_t sub_1002D2EF4()
{
  result = qword_101181558;
  if (!qword_101181558)
  {
    sub_1001109D0(&qword_101181550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181558);
  }

  return result;
}

uint64_t sub_1002D2F90(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002D2FD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v5 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___actionCellRegistration;
  v6 = sub_10010FC20(&qword_10118A4E8);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&unk_1011A4510);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView] = 0;
  v9 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController;
  v10 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v1[v9] = sub_10003AAD8(0xD00000000000001BLL, 0x8000000100E45520);
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController] = 0;
  type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer] = 0;
  *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections] = &off_10109A1C0;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  v13 = [v11 traitCollection];
  v14 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  LOBYTE(ObjectType) = v15;

  if ((ObjectType & 1) == 0)
  {
    v16 = [v11 navigationItem];
    [v16 setLargeTitleDisplayMode:v14];
  }

  return v11;
}

uint64_t sub_1002D3384()
{
  ObjectType = swift_getObjectType();
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "viewDidLoad");
  v1 = sub_1002D378C();
  v2 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView;
  v3 = *&v0[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v6 = v3;

  v7 = [v5 init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = sub_1002D8EC0;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v10 + 80) = 0;
  *(v10 + 88) = v8;
  v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1002193FC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010A4E50;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithSectionProvider:v12 configuration:v7];

  _Block_release(v12);

  [v1 setCollectionViewLayout:v13];

  v14 = *&v0[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController];
  [*&v0[v2] setPrefetchDataSource:v14];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = ObjectType;
  v17 = (v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v18 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v17 = sub_1002D8EC8;
  v17[1] = v16;

  sub_100020438(v18);

  v19 = (v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v20 = *(v14 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v19 = sub_1002D3EBC;
  v19[1] = 0;
  sub_100020438(v20);
  v21 = sub_1002D41E4();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = (v21 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  v24 = *(v21 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  *v23 = sub_1002D8ED0;
  v23[1] = v22;

  sub_100020438(v24);

  v29[3] = sub_10010FC20(&qword_10118A4E8);
  v25 = sub_10001C8B8(v29);
  sub_1002D5798(v25);
  v30[3] = sub_10010FC20(&unk_1011A4510);
  v26 = sub_10001C8B8(v30);
  sub_1002D5A08(v26);
  return swift_arrayDestroy();
}

id sub_1002D378C()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002D3B84(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  v8 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    v15 = Strong;
    swift_beginAccess();
    (*(v5 + 16))(v7, &v15[v14], v4);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v5 + 8))(v7, v4);
    if (v17[1] == v17[0])
    {
      v16 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    }

    else
    {
      v16 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
    }

    (*(v9 + 104))(v11, *v16, v8);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
  }
}

double sub_1002D3E1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong traitCollection];

    [v2 displayScale];
  }

  return 48.0;
}

uint64_t sub_1002D3EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  v11 = sub_10010FC20(&unk_1011841D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13];
  sub_1000089F8(a1, v18, &unk_101183F30);
  if (v19)
  {
    v15 = swift_dynamicCast();
    (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      IndexPath.item.getter();
      MusicItemCollection.subscript.getter();
      Track.artwork.getter();
      (*(v5 + 8))(v7, v4);
      return (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    sub_1000095E8(v18, &unk_101183F30);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_1000095E8(v10, &unk_1011842D0);
  v17 = type metadata accessor for Artwork();
  return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t sub_1002D41E4()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController;
  if (*(v0 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController);
  }

  else
  {
    type metadata accessor for LibraryDownloadsController();
    v2 = swift_allocObject();
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    v3 = (v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
    *v3 = 0;
    v3[1] = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;
    v4 = v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache) = _swiftEmptyDictionarySingleton;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1002D42E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011841D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
    v10 = *(v9 + 16);
    if (v10)
    {
      v25 = v4;
      v26 = a2;

      v11 = 0;
      while (1)
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        if (*(v9 + v11 + 32) == 1)
        {
          break;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        if (v10 == ++v11)
        {

          return;
        }
      }

LABEL_10:

      sub_100020674(&qword_1011913B0, &unk_1011841D0);
      v13 = v26;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v14 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer;
      v15 = *&v8[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer];
      if (aBlock[0] == aBlock[7])
      {
        *&v8[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer] = 0;

        sub_1002D46CC(v8, v13);
      }

      else if (!v15)
      {
        v16 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
        swift_beginAccess();
        v17 = v25;
        (*(v25 + 16))(v6, &v8[v16], v3);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v17 + 8))(v6, v3);
        if (aBlock[0] == aBlock[6])
        {
          sub_1002D46CC(v8, v13);
        }

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = v11;
        aBlock[4] = sub_1002D8ED8;
        aBlock[5] = v20;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010A4EC8;
        v21 = _Block_copy(aBlock);

        v22 = [v18 scheduledTimerWithTimeInterval:0 repeats:v21 block:1.0];
        _Block_release(v21);
        v23 = *&v8[v14];
        *&v8[v14] = v22;
      }

      sub_1002D53A8();
    }
  }
}

id sub_1002D46CC(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v18 - v7;
  v9 = *(v5 + 16);
  v9(v18 - v7, a2, v4, v6);
  v10 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
  swift_beginAccess();
  (*(v5 + 24))(&a1[v10], v8, v4);
  swift_endAccess();
  v11 = *&a1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController];
  v19[3] = v4;
  v12 = sub_10001C8B8(v19);
  (v9)(v12, &a1[v10], v4);
  (*(v5 + 8))(v8, v4);
  v13 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(v19, v11 + v13, &unk_101183F30);
  swift_endAccess();
  v14 = sub_1002D378C();
  [v14 reloadData];

  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = v19[0] != v18[1];
  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v16 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView;
  [*&a1[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView] setBouncesVertically:v15];
  return [*&a1[v16] setAlwaysBounceVertical:v15];
}

void sub_1002D4948(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void *, NSObject *))
{
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1002D41E4();
    v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v9;
    v16 = v9;
    v17 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
    swift_beginAccess();
    v32 = a3;
    v18 = *(v5 + 16);
    v18(v12, v15 + v17, v4);

    v19 = sub_1002D378C();
    v20 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    v18(v16, &v14[v20], v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = v30;
    v18(v30, v12, v4);
    v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    (*(v5 + 32))(v24 + v23, v22, v4);
    v25 = sub_100020674(&qword_1011913B0, &unk_1011841D0);
    sub_1002D8F50(&qword_10118A618, &type metadata accessor for Track);

    *(&v29 + 1) = v25;
    *&v29 = v4;
    v26 = v31;
    UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(v31, v12, v32, 1, sub_1002D8EE0, v24, sub_1002D5318, 0, 0, 0, 0, 0, v29);

    v27 = *(v5 + 8);
    v27(v26, v4);
    v27(v12, v4);

    v28 = *&v14[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer];
    *&v14[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer] = 0;
  }
}

void sub_1002D4CCC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011841D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v41 = v6;
    v42 = v4;
    v43 = v3;
    v13 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    v14 = (v8 + 16);
    v47 = *(v8 + 16);
    v47(v10, &v12[v13], v7);
    v15 = sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v16 = dispatch thunk of Collection.distance(from:to:)();
    v45 = v8;
    v18 = *(v8 + 8);
    v17 = (v8 + 8);
    v44 = v18;
    v18(v10, v7);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v46 = v15;
    v19 = v16 == dispatch thunk of Collection.distance(from:to:)();
    v20 = v47;
    if (v19 || (v21 = *&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections], (v22 = *(v21 + 16)) == 0))
    {
LABEL_13:
      v20(v10, a2, v7);
      swift_beginAccess();
      (*(v45 + 24))(&v12[v13], v10, v7);
      swift_endAccess();
      v32 = *&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController];
      v49[3] = v7;
      v33 = sub_10001C8B8(v49);
      v20(v33, &v12[v13], v7);
      v34 = v44;
      v44(v10, v7);
      v35 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
      swift_beginAccess();
      sub_10006B010(v49, v32 + v35, &unk_101183F30);
      swift_endAccess();
      v20(v10, &v12[v13], v7);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v34(v10, v7);
      v36 = v49[0] != v48;
      [v12 setNeedsUpdateContentUnavailableConfiguration];
      v37 = sub_1002D378C();
      [v37 setBouncesVertically:v36];

      [*&v12[OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v36];
    }

    else
    {
      v38[1] = v17;
      v38[2] = v14;
      v39 = v13;
      v40 = a2;

      v23 = 0;
      while (v23 < *(v21 + 16))
      {
        if ((*(v21 + v23 + 32) & 1) == 0)
        {

LABEL_11:

          v38[0] = sub_1002D378C();
          sub_10010FC20(&unk_101191400);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_100EBC6B0;
          *(v25 + 32) = v23;
          v49[0] = v25;
          sub_1002D8F50(&unk_10118A630, &type metadata accessor for IndexSet);
          sub_10010FC20(&unk_101191410);
          sub_100020674(&unk_10118A640, &unk_101191410);
          v26 = v41;
          v27 = v43;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          IndexSet._bridgeToObjectiveC()(v28);
          v30 = v29;
          (*(v42 + 8))(v26, v27);
          v31 = v38[0];
          [v38[0] reloadSections:v30];

LABEL_12:
          a2 = v40;
          v13 = v39;
          v20 = v47;
          goto LABEL_13;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_11;
        }

        if (v22 == ++v23)
        {

          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1002D5318()
{
  type metadata accessor for Track();
  sub_1002D8F50(&unk_10118A620, &type metadata accessor for Track);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

void sub_1002D53A8()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011841D0);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v25 - v5;
  v7 = [v0 navigationController];
  if (!v7)
  {
    return;
  }

  v25[0] = v7;
  v8 = [v7 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_4:
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v11)
      {
        __break(1u);
      }

      else if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v9 + 8 * v12 + 32);
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_27;
      }

      v13 = sub_10004056C(v12, v9);
LABEL_9:
      v14 = v13;

      v1 = v0;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
LABEL_16:
        v21 = v25[0];

        return;
      }

      v16 = [v25[0] viewControllers];
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v9 >> 62))
      {
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        goto LABEL_28;
      }

LABEL_27:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_12:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v17 = sub_10004056C(0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v17 = *(v9 + 32);
        }

        v18 = v17;

        v19 = v1;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_16;
        }

LABEL_29:
        v22 = sub_1002D41E4();
        v23 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
        swift_beginAccess();
        (*(v3 + 16))(v6, v22 + v23, v2);

        sub_100020674(&qword_1011913B0, &unk_1011841D0);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        (*(v3 + 8))(v6, v2);
        if (v25[2] == v25[1])
        {
          v24 = [v25[0] popViewControllerAnimated:1];
        }

        else
        {
        }

        return;
      }

LABEL_28:

      goto LABEL_29;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_1002D5798@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118A538);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___actionCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10118A538);
  v10 = sub_10010FC20(&qword_10118A4E8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10118A538);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10118A538);
  return swift_endAccess();
}

uint64_t sub_1002D5A08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118A5B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10118A5B0);
  v10 = sub_10010FC20(&unk_1011A4510);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10118A5B0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Track();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_10118A5B0);
  return swift_endAccess();
}

uint64_t sub_1002D5CC8(char a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v4 = sub_1002D378C();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = sub_1002D41E4();
  v6 = *(v5 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
  *(v5 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
  if (v6 != 1)
  {
    sub_10016D6B8();
  }
}

uint64_t sub_1002D5E5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10010FC20(&unk_1011841D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  isa = UIContentUnavailableConfigurationState._bridgeToObjectiveC()().super.isa;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "_bridgedUpdateContentUnavailableConfigurationUsingState:", isa);

  v8 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v1[v8], v3);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v4 + 8))(v6, v3);
  if (v14 == v13)
  {
    if (qword_10117F728 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for UIContentUnavailableConfiguration();
    v10 = sub_1000060E4(v9, qword_101218CF0);
    *(&v15 + 1) = v9;
    v16 = &protocol witness table for UIContentUnavailableConfiguration;
    v11 = sub_10001C8B8(&v14);
    (*(*(v9 - 8) + 16))(v11, v10, v9);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t sub_1002D61A0()
{
  v1[3] = sub_10010FC20(&unk_10118A510);
  v1[4] = sub_100020674(&qword_1011914E0, &unk_10118A510);
  sub_10001C8B8(v1);
  sub_10010FC20(&unk_10118A520);
  sub_1002D8BFC();
  UIHostingConfiguration<>.init(content:)();
  return UICollectionViewCell.contentConfiguration.setter();
}

double sub_1002D6274@<D0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  result = *&v7;
  *(a1 + 32) = v7;
  return result;
}

void sub_1002D62E8()
{
  v0 = sub_10010FC20(&unk_10118A540);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  v7 = sub_10010FC20(&unk_1011841D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    v13 = Strong;
    swift_beginAccess();
    (*(v8 + 16))(v10, &v13[v12], v7);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v14 = (*(v8 + 8))(v10, v7);
    __chkstk_darwin(v14);
    LOBYTE(v17[-2]) = v15;
    v17[-1] = v13;
    sub_10010FC20(&qword_10118A550);
    sub_1002D8C94();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v16 = *(v1 + 8);
    v16(v3, v0);
    static Edge.Set.vertical.getter();
    v17[3] = v0;
    v17[4] = sub_100020674(&unk_10118A5A0, &unk_10118A540);
    sub_10001C8B8(v17);
    UIHostingConfiguration.margins(_:_:)();
    v16(v6, v0);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

double sub_1002D668C@<D0>(char a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_10010FC20(&unk_1011841D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0x206C65636E6143;
    v11._object = 0xE700000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
    v12 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    (*(v7 + 16))(v9, a2 + v12, v6);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v13 = dispatch thunk of Collection.distance(from:to:)();
    (*(v7 + 8))(v9, v6);
    *&v53 = v13;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 0x616F6C6E776F4420;
    v14._object = 0xEC00000029732864;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    LocalizedStringKey.init(stringInterpolation:)();
    v15 = Text.init(_:tableName:bundle:comment:)();
    v17 = v16;
    v19 = v18;
    static Color.accentColor.getter();
    v20 = Text.foregroundColor(_:)();
    v34 = v21;
    v35 = v20;
    v23 = v22;
    v25 = v24;

    sub_10011895C(v15, v17, v19 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v36[55] = v52[5];
    *&v36[71] = v52[6];
    *&v36[87] = v52[7];
    *&v36[103] = v52[8];
    *&v36[7] = v52[2];
    *&v36[23] = v52[3];
    v37 = v23 & 1;
    *&v36[39] = v52[4];
    v27 = static HorizontalAlignment.listRowSeparatorLeading.getter();
    *(&v51[4] + 9) = *&v36[64];
    *(&v51[5] + 9) = *&v36[80];
    *(&v51[6] + 9) = *&v36[96];
    *(v51 + 9) = *v36;
    *(&v51[1] + 9) = *&v36[16];
    *(&v51[2] + 9) = *&v36[32];
    *&v49 = v35;
    *(&v49 + 1) = v34;
    LOBYTE(v50) = v23 & 1;
    *(&v50 + 1) = v25;
    *&v51[0] = KeyPath;
    BYTE8(v51[0]) = 1;
    *(&v51[3] + 9) = *&v36[48];
    *(&v51[7] + 1) = *&v36[111];
    *&v52[0] = v27;
    *(&v52[0] + 1) = variable initialization expression of PlaybackTimeObserver.lastTargetTimestamp;
    *&v52[1] = 0;
    sub_1002D8E44(&v49);
  }

  else
  {
    sub_1002D8E38(&v49);
  }

  v46 = v51[6];
  v47 = v51[7];
  v48[0] = v52[0];
  *(v48 + 9) = *(v52 + 9);
  v42 = v51[2];
  v43 = v51[3];
  v44 = v51[4];
  v45 = v51[5];
  v38 = v49;
  v39 = v50;
  v40 = v51[0];
  v41 = v51[1];
  sub_10010FC20(&qword_10118A568);
  sub_1002D8D20();
  _ConditionalContent<>.init(storage:)();
  v28 = v62;
  a3[8] = v61;
  a3[9] = v28;
  a3[10] = v63[0];
  *(a3 + 169) = *(v63 + 9);
  v29 = v58;
  a3[4] = v57;
  a3[5] = v29;
  v30 = v60;
  a3[6] = v59;
  a3[7] = v30;
  v31 = v54;
  *a3 = v53;
  a3[1] = v31;
  result = *&v55;
  v33 = v56;
  a3[2] = v55;
  a3[3] = v33;
  return result;
}

void sub_1002D6B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_10118A5B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20[0] = v20;
    __chkstk_darwin(Strong);
    v20[1] = a1;
    v20[-2] = a3;
    v20[-1] = v13;
    v14 = v13;
    sub_10010FC20(&qword_10118A5C0);
    v15 = sub_1001109D0(&qword_10118A5C8);
    v16 = sub_100020674(&qword_10118A5D0, &qword_10118A5C8);
    v21[0] = v15;
    v21[1] = v16;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v17 = *(v6 + 8);
    v17(v8, v5);
    static Edge.Set.vertical.getter();
    v18 = [v14 traitCollection];
    v19 = [v18 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v21[3] = v5;
    v21[4] = sub_100020674(&qword_10118A5D8, &qword_10118A5B8);
    sub_10001C8B8(v21);
    UIHostingConfiguration.margins(_:_:)();
    v17(v11, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1002D6EA4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v81 = a3;
  v4 = type metadata accessor for MusicFavoriteStatus();
  v78 = *(v4 - 8);
  v79 = v4;
  __chkstk_darwin(v4);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v65 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v65 - v15;
  v72 = &v65 - v15;
  v17 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&qword_10118A5C8);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  v65 = a1;
  Track.artworkViewModel.getter(v16);
  (*(v11 + 16))(v13, a1, v10);
  v23 = (*(v11 + 88))(v13, v10);
  v24 = enum case for Track.song(_:);
  if (v23 == enum case for Track.musicVideo(_:))
  {
    v25 = 0x4055555555555555;
  }

  else
  {
    v25 = 0x4048000000000000;
  }

  v26 = *(v11 + 8);
  v80 = v10;
  v26(v13, v10);
  if (v23 == v24)
  {
    v27 = 0x4048000000000000;
  }

  else
  {
    v27 = v25;
  }

  ArtworkImage.Size.init(cgSize:)(v27, 0x4048000000000000, 0, v82);
  v28 = Corner.small.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  v32 = sub_10010FC20(&unk_101182950);
  v33 = v73;
  (*(*(v32 - 8) + 56))(v73, 1, 11, v32);
  v76 = v19;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v72, v33, 0, 1, v82, v29, v30, v31, v19);
  v34 = v65;
  v35 = Track.title.getter();
  v72 = v36;
  v73 = v35;
  v37 = Track.artistName.getter();
  v70 = v38;
  v71 = v37;
  v69 = Track.albumTitle.getter();
  v68 = v39;
  Track.duration.getter();
  v67 = static Duration.seconds(_:)();
  v66 = v40;
  v41 = v75;
  Track.favoriteStatus.getter();
  v42 = v77;
  v43 = v78;
  v44 = v79;
  (*(v78 + 104))(v77, enum case for MusicFavoriteStatus.favorited(_:), v79);
  v45 = static MusicFavoriteStatus.== infix(_:_:)();
  v46 = *(v43 + 8);
  v46(v42, v44);
  v46(v41, v44);
  Track.contentRating.getter();
  sub_1002D41E4();
  sub_10016DC70();

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  Player.state<A>(for:)(v34);
  v47 = sub_1002D378C();
  v48 = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_1002D8E5C(v76, v22);
  v49 = &v22[v20[11]];
  v50 = v72;
  *v49 = v73;
  *(v49 + 1) = v50;
  v51 = &v22[v20[12]];
  v52 = v70;
  *v51 = v71;
  *(v51 + 1) = v52;
  v53 = &v22[v20[13]];
  v54 = v68;
  *v53 = v69;
  v53[1] = v54;
  v55 = &v22[v20[14]];
  v56 = v66;
  *v55 = v67;
  v55[1] = v56;
  v22[v20[15]] = v45 & 1;
  v22[v20[17]] = 0;
  v57 = &v22[v20[18]];
  sub_10010FC20(&unk_10118A5F0);
  sub_100020674(&qword_101192B40, &unk_10118A5F0);
  *v57 = ObservedObject.init(wrappedValue:)();
  v57[1] = v58;
  v59 = &v22[v20[19]];
  sub_10010FC20(&qword_10118A600);
  sub_100020674(&qword_10118A608, &qword_10118A600);
  *v59 = ObservedObject.init(wrappedValue:)();
  v59[1] = v60;
  *&v22[v20[20]] = 0;
  v61 = &v22[v20[21]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&v22[v20[22]] = v48;
  v62 = v20[23];
  *&v22[v62] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v63 = v20[24];
  *&v22[v63] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();
  sub_1002D8F50(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100020674(&qword_10118A5D0, &qword_10118A5C8);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v22, &qword_10118A5C8);
}

unint64_t sub_1002D782C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v4 - 8);
  v34 = &v28 - v5;
  v6 = sub_10010FC20(&unk_1011A4510);
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v31 = &v28 - v7;
  v8 = sub_10010FC20(&unk_1011841D0);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Track();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_10118A4E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = v2;
  v19 = *(v2 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v19 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v19 + result + 32))
  {
    v21 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    v22 = v28;
    (*(v28 + 16))(v10, v18 + v21, v8);
    IndexPath.item.getter();
    MusicItemCollection.subscript.getter();
    (*(v22 + 8))(v10, v8);
    v23 = v31;
    sub_1002D5A08(v31);
    v25 = v29;
    v24 = v30;
    v26 = v34;
    (*(v29 + 16))(v34, v13, v30);
    (*(v25 + 56))(v26, 0, 1, v24);
    v27 = sub_1007F89CC(v23, a2, v26);
    sub_1000095E8(v26, &qword_10118A530);
    (*(v32 + 8))(v23, v33);
    (*(v25 + 8))(v13, v24);
  }

  else
  {
    sub_1002D5798(v17);
    v36 = xmmword_100EC5C80;
    sub_100009F78(0, &unk_101184790);
    v27 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    (*(v15 + 8))(v17, v14);
  }

  return v27;
}

uint64_t sub_1002D8004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  else
  {
    v3 = 0x6C416C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE90000000000006CLL;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x64616F6C6E776F64;
  }

  else
  {
    v5 = 0x6C416C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE90000000000006CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002D80B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002D8138()
{
  String.hash(into:)();
}

Swift::Int sub_1002D81AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002D8230@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A1E8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1002D8290(uint64_t *a1@<X8>)
{
  v2 = 0x6C416C65636E6163;
  if (*v1)
  {
    v2 = 0x64616F6C6E776F64;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for LibraryDownloadingViewController()
{
  result = qword_10118A4C0;
  if (!qword_10118A4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002D84D4()
{
  sub_1002D866C();
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_10118A4E0, &qword_10118A4E8);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &unk_10118A4F0, &unk_1011A4510);
      if (v2 <= 0x3F)
      {
        sub_10005BC8C();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002D866C()
{
  if (!qword_10118A4D0)
  {
    sub_100009F78(255, &unk_101184750);
    v0 = type metadata accessor for UICollectionView.SupplementaryRegistration();
    if (!v1)
    {
      atomic_store(v0, &qword_10118A4D0);
    }
  }
}

unint64_t sub_1002D86E8()
{
  result = qword_10118A508;
  if (!qword_10118A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A508);
  }

  return result;
}

void sub_1002D873C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v2 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  if (*(v8 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (*(v8 + a1 + 32) == 1)
  {
    v9 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_items;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v9, v4);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.distance(from:to:)();
    (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1002D88F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v1 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (*(v1 + result + 32))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
  }

  sub_1002D41E4();
  sub_10016D498();
}

void sub_1002D89E4()
{
  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v2 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___actionCellRegistration;
  v3 = sub_10010FC20(&qword_10118A4E8);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___listCellRegistration;
  v5 = sub_10010FC20(&unk_1011A4510);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___collectionView) = 0;
  v6 = OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_prefetchingController;
  v7 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v6) = sub_10003AAD8(0xD00000000000001BLL, 0x8000000100E45520);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController____lazy_storage___downloadsController) = 0;
  type metadata accessor for Track();
  MusicItemCollection.init(arrayLiteral:)();
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_updateTimer) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryDownloadingViewController_sections) = &off_10109A238;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002D8BFC()
{
  result = qword_10119A350;
  if (!qword_10119A350)
  {
    sub_1001109D0(&unk_10118A520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A350);
  }

  return result;
}

unint64_t sub_1002D8C94()
{
  result = qword_10118A558;
  if (!qword_10118A558)
  {
    sub_1001109D0(&qword_10118A550);
    sub_1002D8D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A558);
  }

  return result;
}

unint64_t sub_1002D8D20()
{
  result = qword_10118A560;
  if (!qword_10118A560)
  {
    sub_1001109D0(&qword_10118A568);
    sub_1002D8DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A560);
  }

  return result;
}

unint64_t sub_1002D8DAC()
{
  result = qword_10118A570;
  if (!qword_10118A570)
  {
    sub_1001109D0(&qword_10118A578);
    sub_100118EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A570);
  }

  return result;
}

uint64_t sub_1002D8E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002D8EE0()
{
  v1 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1002D4CCC(v2, v3);
}

uint64_t sub_1002D8F50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D8FA0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v34 = a3;
  v40 = type metadata accessor for Track();
  v5 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v33 - v9;
  v10 = sub_10010FC20(&unk_1011841D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - v12;
  v14 = sub_10010FC20(&unk_10118C0B0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  (*(v11 + 16))(v13, v4, v10);
  sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  dispatch thunk of Sequence.makeIterator()();
  v18 = *(v15 + 44);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.endIndex.getter();
  v19 = *&v17[v18];
  v33 = v5;
  if (v19 == v41[0])
  {
    v20 = v40;
LABEL_7:
    sub_1000095E8(v17, &unk_10118C0B0);
    v28 = 1;
    v29 = v34;
  }

  else
  {
    v21 = (v5 + 16);
    v35 = (v5 + 8);
    v36 = (v5 + 32);
    v20 = v40;
    while (1)
    {
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v37;
      (*v21)(v37);
      v22(v41, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v24 = v20;
      v25 = *v36;
      (*v36)(v8, v23, v24);
      v26 = v42;
      v27 = v38(v8);
      if (v26)
      {
        (*v35)(v8, v40);
        return sub_1000095E8(v17, &unk_10118C0B0);
      }

      if (v27)
      {
        break;
      }

      v42 = 0;
      v20 = v40;
      (*v35)(v8, v40);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v17[v18] == v41[0])
      {
        goto LABEL_7;
      }
    }

    sub_1000095E8(v17, &unk_10118C0B0);
    v31 = v34;
    v32 = v40;
    v25(v34, v8, v40);
    v29 = v31;
    v20 = v32;
    v28 = 0;
  }

  return (*(v33 + 56))(v29, v28, 1, v20);
}

void sub_1002D93F4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1002DCAE4();
    sub_1002DCB30(&qword_1011828C0, sub_1002DCAE4);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          sub_1002DCAE4();
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_10005C9F8();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002D9674(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void, void))
{
  if (a3 >> 62)
  {
LABEL_16:
    v11 = a4;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a4 = v11;
    v6 = v12;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v14 = a4;
      v7 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v8 = v14(v7, a3);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a3 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_13;
          }
        }

        v16 = v8;
        v10 = a1(&v16);
        if (v4)
        {
          goto LABEL_14;
        }

        if (v10)
        {
          return v8;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

uint64_t Logger.NowPlaying.motion.unsafeMutableAddressor()
{
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.NowPlaying.motion);
}

void sub_1002D9810(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (v5 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_unknownObjectWeakAssign();
  sub_1002DA1E8();
  v6 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6))
  {
    v7 = OBJC_IVAR____TtC5Music20MotionArtworkManager_windowSceneDidUpdateEffectiveGeometryObserver;
    *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_windowSceneDidUpdateEffectiveGeometryObserver) = 0;

    if (a1)
    {
      v8 = [a1 windowScene];
      if (v8)
      {
        v9 = v8;
        if (qword_10117F740 != -1)
        {
          swift_once();
        }

        v10 = qword_101218D40;
        v11 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for NotificationObserver();
        swift_allocObject();
        *(v2 + v7) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v9, 1, 1, sub_1002DC460, v11);
      }
    }
  }
}

uint64_t sub_1002D999C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002D9A10()
{
  v0 = type metadata accessor for EditorialVideoArtworkFlavor();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9[15] = 11;
  v4 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4))
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      goto LABEL_5;
    }

    if (v6)
    {
      v7 = 0;
      return v7 & 1;
    }
  }

  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
LABEL_5:
  v7 = sub_1002D9B70(v3);
  (*(v1 + 8))(v3, v0);
  return v7 & 1;
}

uint64_t sub_1002D9B70(uint64_t a1)
{
  v2 = type metadata accessor for VideoArtwork();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v17;
  if (v17)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if ((v10 & 0x8000000000000000) == 0 && v10 < *(v17 + 16))
    {
      v11 = (v17 + 24 * v10);
      v12 = v11[5];
      v13 = v11[6];
      sub_1002DC3D8(v11[4], v12);

      if (!v12)
      {
        return 0;
      }

      if (*(v13 + 16))
      {
        v14 = sub_1006BE63C(a1);
        if (v15)
        {
          (*(v3 + 16))(v6, *(v13 + 56) + *(v3 + 72) * v14, v2);

          (*(v3 + 32))(v8, v6, v2);
          v16 = sub_1002D9DB4(v8, a1);
          (*(v3 + 8))(v8, v2);
          if (v16)
          {

            return 1;
          }

          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002D9DB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for EditorialVideoArtworkFlavor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VideoArtwork();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16) && (v15 = sub_1006BE63C(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = swift_endAccess();
    v21[1] = v21;
    __chkstk_darwin(v18);
    v21[-2] = a1;

    v19 = sub_1002D9674(sub_1002DC41C, &v21[-4], v17, sub_1007E9718);

    result = v19;
    if (v19)
    {
      return result;
    }
  }

  else
  {
    swift_endAccess();
  }

  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MotionData();
  swift_allocObject();
  return sub_10027541C(v12, v8);
}

uint64_t sub_1002DA024()
{
  v1 = OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher;
  if (*(v0 + OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music20MotionArtworkManager____lazy_storage___nowPlayingInfoCenterPublisher);
  }

  else
  {
    v3 = [objc_opt_self() defaultCenter];
    v4 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MotionArtworkNowPlayingInfoCenterPublisher();
    v2 = swift_allocObject();
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 72) = &_swiftEmptySetSingleton;
    *(v2 + 16) = v3;
    *(v2 + 24) = sub_1002DCA14;
    *(v2 + 32) = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002DA118()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = static Published.subscript.modify();
    sub_100195B44(0);
    v1(v2, 0);
  }

  return result;
}

uint64_t sub_1002DA1E8()
{
  v1 = v0;
  v39 = sub_10010FC20(&qword_10118A828);
  __chkstk_darwin(v39);
  v3 = &v36 - v2;
  v41 = 11;
  v4 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    Strong = [objc_opt_self() mainScreen];
  }

  v6 = Strong;
  [Strong bounds];
  v8 = v7;
  v10 = v9;

  if (v8 > v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  v12 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v40 = v13;
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  v36 = v18;
  v37 = v14;
  v38 = v3;
  while (1)
  {
    if (!v17)
    {
      do
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_40;
        }

        if (v21 >= v18)
        {
        }

        v17 = *(v14 + 8 * v21);
        ++v20;
      }

      while (!v17);
      v20 = v21;
    }

    v22 = __clz(__rbit64(v17)) | (v20 << 6);
    v23 = v40;
    v24 = *(v40 + 48);
    v25 = type metadata accessor for EditorialVideoArtworkFlavor();
    (*(*(v25 - 8) + 16))(v3, v24 + *(*(v25 - 8) + 72) * v22, v25);
    v26 = *(*(v23 + 56) + 8 * v22);
    *&v3[*(v39 + 48)] = v26;
    v27 = v26 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      break;
    }

LABEL_12:
    v17 &= v17 - 1;
    v3 = v38;
    result = sub_1000095E8(v38, &qword_10118A828);
    v18 = v36;
    v14 = v37;
  }

  v28 = 0;
  while ((v26 & 0xC000000000000001) != 0)
  {
    result = sub_1007E9718(v28, v26);
    v29 = result;
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_38;
    }

LABEL_27:
    v31 = v29 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize;
    v32 = *(v29 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize);
    v33 = *(v29 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize + 8);
    v34 = *(v29 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshotSize + 16);
    *v31 = v11;
    *(v31 + 8) = v8;
    *(v31 + 16) = 0;
    if ((v34 & 1) != 0 || (v11 == v32 ? (v35 = v8 == v33) : (v35 = 0), !v35))
    {
      sub_100276998();
    }

    ++v28;
    if (v30 == v27)
    {
      goto LABEL_12;
    }
  }

  if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  v29 = *(v26 + 8 * v28 + 32);

  v30 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_27;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1002DA528()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002DA1E8();
  }

  return result;
}

uint64_t sub_1002DA5A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002DA614()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002DA688@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002DA708()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002DA77C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002DA7E4(5000000000000000000, 0);
  }

  return result;
}

uint64_t sub_1002DA7E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-v7 - 8];
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = static Published.subscript.modify();
  sub_1003B4074(&v17, 1);
  v9(v16, 0);

  v10 = OBJC_IVAR____TtC5Music20MotionArtworkManager_nowPlayingInfoCenterMotionDataObservationTask;
  if (*(v2 + OBJC_IVAR____TtC5Music20MotionArtworkManager_nowPlayingInfoCenterMotionDataObservationTask))
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = v3;
  *(v3 + v10) = sub_10086E3AC(0, 0, v8, &unk_100EC6140, v13);
}

uint64_t sub_1002DAA00()
{
  v1 = type metadata accessor for EditorialVideoArtworkFlavor();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v62 - v6;
  __chkstk_darwin(v5);
  v66 = &v62 - v8;
  v9 = sub_10010FC20(&unk_10118A8D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  v15 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  v69 = v15;
  v70 = v0;
  v16 = *(v0 + v15);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v63 = (v18 + 63) >> 6;
  v76 = (v2 + 16);
  v77 = (v2 + 32);
  v71 = v2;
  v67 = v16;
  v68 = (v2 + 8);

  v21 = 0;
  v72 = v14;
  v73 = v12;
  v64 = v1;
  v65 = v17;
  v75 = v7;
  if (!v20)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v22 = v21;
LABEL_15:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v22 << 6);
      v28 = v66;
      v27 = v67;
      v29 = v71;
      (*(v71 + 16))(v66, *(v67 + 48) + *(v71 + 72) * v26, v1);
      v30 = *(*(v27 + 56) + 8 * v26);
      v31 = sub_10010FC20(&qword_10118A828);
      v32 = *(v31 + 48);
      v33 = *(v29 + 32);
      v12 = v73;
      v33(v73, v28, v1);
      *&v12[v32] = v30;
      (*(*(v31 - 8) + 56))(v12, 0, 1, v31);

      v14 = v72;
      v17 = v65;
LABEL_16:
      sub_1002DC9A4(v12, v14);
      v34 = sub_10010FC20(&qword_10118A828);
      if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
      {
      }

      v35 = *&v14[*(v34 + 48)];
      v36 = v75;
      (*v77)(v75, v14, v1);
      if (v35 >> 62)
      {
        break;
      }

      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_19;
      }

LABEL_5:
      (*v68)(v36, v1);

      if (!v20)
      {
        goto LABEL_7;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 4)
    {
      goto LABEL_5;
    }

LABEL_19:
    v37 = v17;
    v38 = *v76;
    v39 = v1;
    v40 = v74;
    (*v76)(v74, v36, v39);
    v41 = sub_1002DB05C(3, v35);
    v43 = v69;
    v42 = v70;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v42 + v43);
    v45 = v78;
    *(v42 + v43) = 0x8000000000000000;
    v47 = sub_1006BE63C(v40);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_37;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      v17 = v37;
      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v78;
        if (v46)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1006C8730();
        v54 = v78;
        if (v51)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1006C1048(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_1006BE63C(v74);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_39;
      }

      v47 = v52;
      v17 = v37;
      v54 = v78;
      if (v51)
      {
LABEL_26:
        *(v54[7] + 8 * v47) = v41;

        v1 = v64;
        goto LABEL_33;
      }
    }

    v54[(v47 >> 6) + 8] |= 1 << v47;
    v56 = v64;
    v38(v54[6] + *(v71 + 72) * v47, v74);
    *(v54[7] + 8 * v47) = v41;
    v57 = v54[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_38;
    }

    v54[2] = v59;
    v1 = v56;
LABEL_33:
    v60 = *v68;
    (*v68)(v74, v1);
    *(v70 + v69) = v54;
    swift_endAccess();
    v60(v75, v1);
    v14 = v72;
    v12 = v73;
  }

  while (v20);
LABEL_7:
  if (v63 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v63;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v63)
    {
      v55 = sub_10010FC20(&qword_10118A828);
      (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
      v20 = 0;
      v21 = v24;
      goto LABEL_16;
    }

    v20 = *(v17 + 8 * v22);
    ++v21;
    if (v20)
    {
      v21 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002DB05C(int64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v2 = a2;
  v3 = a1;
  if (!a1)
  {
LABEL_24:

    return _swiftEmptyArrayStorage;
  }

  v16 = _swiftEmptyArrayStorage;
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v6 = 0;
    v15 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E9718(v6, v2);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }
      }

      v9 = v16;
      if (v16[2] >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000D9158(v16);
          v9 = result;
          v16 = result;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v15 >= v9[2])
        {
          goto LABEL_39;
        }

        v9[v15 + 4] = v7;

        specialized ContiguousArray._endMutation()();
        if ((v15 + 1) < v3)
        {
          v11 = v15 + 1;
        }

        else
        {
          v11 = 0;
        }

        v15 = v11;
        v6 = v8;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_29;
        }
      }
    }
  }

LABEL_28:
  v15 = 0;
LABEL_29:

  if (!v15)
  {
    return v16;
  }

  v12 = v16[2];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v12 < v15)
  {
    __break(1u);
  }

  else
  {
    v13 = v16[2];
    if (v13 >= v15 && v13 >= v12)
    {

      sub_1002DC468(v14, (v16 + 4), v15, (2 * v12) | 1);
      sub_1002DC468(v16, (v16 + 4), 0, (2 * v15) | 1);
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t (*sub_1002DB2E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002DB348;
}

uint64_t sub_1002DB348(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1002DAA00();
  }

  return result;
}

uint64_t sub_1002DB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v9;
  v6[14] = v8;

  return _swift_task_switch(sub_1002DB474, v9, v8);
}

uint64_t sub_1002DB474()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1002DB534;
  v3 = v0[6];
  v2 = v0[7];

  return sub_10062A46C(v3, v2, 0, 0, 1);
}

uint64_t sub_1002DB534()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_1002DB7E8;
  }

  else
  {
    v8 = sub_1002DB6CC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002DB6CC()
{
  v1 = *(v0 + 128);

  static Task<>.checkCancellation()();
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = static Published.subscript.modify();
    sub_100195B44(1);
    v3(v0 + 16, 0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002DB7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DB854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VideoArtwork();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v39 = &v34 - v13;
  v14 = type metadata accessor for EditorialVideoArtworkFlavor();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + 16);
  if (!v18)
  {
    return 0;
  }

  v35 = v10;
  v36 = a5;
  v37 = v9;
  v21 = *(v15 + 16);
  v20 = v15 + 16;
  v19 = v21;
  v22 = a4 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v23 = (v20 - 8);
  v24 = *(v20 + 56);
  v21(v17, v22, v14);
  while (1)
  {
    if (a2)
    {
      if (*(a3 + 16))
      {
        v25 = sub_1006BE63C(v17);
        if (v26)
        {
          break;
        }
      }
    }

    (*v23)(v17, v14);
    v22 += v24;
    if (!--v18)
    {
      return 0;
    }

    v19(v17, v22, v14);
  }

  v27 = v35;
  v28 = *(a3 + 56) + *(v35 + 72) * v25;
  v29 = v37;
  v30 = v38;
  (*(v35 + 16))(v38, v28, v37);
  v31 = v39;
  (*(v27 + 32))(v39, v30, v29);
  v32 = sub_1002D9DB4(v31, v17);
  (*(v27 + 8))(v31, v29);
  (*v23)(v17, v14);
  return v32;
}

uint64_t sub_1002DBAE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = *(v5 + 16);
  v30 = OBJC_IVAR____TtC5Music10MotionData_videoFlavor;
  v28 = v10;
  v10(&v28 - v8, a1 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, v4);
  v11 = sub_1002DB2E4(v32);
  v13 = sub_10057605C(v31);
  if (*v12)
  {
    v14 = v12;

    v15 = sub_1002DC71C(v14);

    if (*v14 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (v16 >= v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v15)
      {
LABEL_4:
        sub_1003BBCF8(v15, v16);
        (v13)(v31, 0);
        (*(v5 + 8))(v9, v4);
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_20:
    sub_1006C8730();
    v18 = v31[0];
    *(v13 + v2) = v31[0];
    if (v9)
    {
LABEL_14:
      v26 = (v18[7] + 8 * v15);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_15:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        return sub_1002DAA00();
      }

LABEL_17:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_15;
    }

LABEL_13:
    v25 = v29;
    v28(v29, a1 + v5, v4);
    sub_1006C782C(v15, v25, _swiftEmptyArrayStorage, v18);
    goto LABEL_14;
  }

  (v13)(v31, 0);
  (*(v5 + 8))(v9, v4);
LABEL_6:
  v11(v32, 0);
  v13 = OBJC_IVAR____TtC5Music20MotionArtworkManager_cachedMotionData;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *(v13 + v2);
  v18 = v31[0];
  *(v13 + v2) = 0x8000000000000000;
  v5 = v30;
  v15 = sub_1006BE63C(a1 + v30);
  v20 = v18[2];
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v9) = v19;
  if (v18[3] >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v13 + v2) = v18;
      if (v19)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_20;
  }

  sub_1006C1048(v22, isUniquelyReferenced_nonNull_native);
  v18 = v31[0];
  v23 = sub_1006BE63C(a1 + v5);
  if ((v9 & 1) == (v24 & 1))
  {
    v15 = v23;
    *(v13 + v2) = v18;
    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002DBE90()
{
  v1 = OBJC_IVAR____TtC5Music20MotionArtworkManager__currentNowPlayingMotionData;
  v2 = sub_10010FC20(&qword_101189E18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC5Music20MotionArtworkManager__supportedNowPlayingArtworkFlavors;
  v4 = sub_10010FC20(&qword_10118A818);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Music20MotionArtworkManager__motionDataClients;
  v6 = sub_10010FC20(&qword_10118A820);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC5Music20MotionArtworkManager__isInForeground;
  v8 = sub_10010FC20(&unk_101189E60);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_1002DC070()
{
  sub_1002DBE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1002DC0C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.NowPlaying.motion);
  sub_1000060E4(v0, static Logger.NowPlaying.motion);
  return static Logger.nowPlaying(_:)(0x6E6F69746F4DLL, 0xE600000000000000);
}

uint64_t static Logger.NowPlaying.motion.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.NowPlaying.motion);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002DC1D8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002DC258()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_1002DC2D4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002DC354()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002DC3D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002DC468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *v4;
  v9 = *(*v4 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if (!result)
  {
    goto LABEL_8;
  }

  v11 = *(v8 + 24) >> 1;
  if (v11 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == v5)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = *v4;
      v11 = *(*v4 + 24) >> 1;
      if (v6 != v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  if (v11 - *(v8 + 16) < v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for MotionData();
  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    v12 = *(v8 + 16);
    v13 = __OFADD__(v12, v7);
    v14 = v12 + v7;
    if (!v13)
    {
      *(v8 + 16) = v14;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_13:
  swift_unknownObjectRelease();

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1002DC5C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1002DC608(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_1007E9718(v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v5 = static VideoArtwork.== infix(_:_:)();

    if (v5)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1002DC71C(unint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  result = sub_1002DC608(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      sub_1007E9718(v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v9 = static VideoArtwork.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = sub_1007E9718(v6, v3);
          v11 = sub_1007E9718(v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v12)
          {
            goto LABEL_45;
          }

          if (v7 >= v12)
          {
            goto LABEL_46;
          }

          v10 = *(v3 + 32 + 8 * v6);
          v11 = *(v3 + 32 + 8 * v7);
        }

        v13 = v2;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1005024DC(v3);
          v14 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v3 & 0xFFFFFFFFFFFFFF8;
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v11;

        if ((v3 & 0x8000000000000000) != 0 || v14)
        {
          v3 = sub_1005024DC(v3);
          v15 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_43;
        }

        v2 = v13;
        *(v15 + 8 * v7 + 32) = v10;

        *v13 = v3;
      }

      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_42;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1002DC9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118A8D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DCA1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1002DB37C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1002DCAE4()
{
  result = qword_10118D430;
  if (!qword_10118D430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118D430);
  }

  return result;
}

uint64_t sub_1002DCB30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002DCBA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

id sub_1002DCC7C()
{
  v1 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_1002DCCE0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1002DCCE0()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(_s19CompositionalLayoutCMa());
  v17[4] = sub_10030AC60;
  v17[5] = v0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1005A63A8;
  v17[3] = &unk_1010A5FC0;
  v2 = _Block_copy(v17);

  v3 = [v1 initWithSectionProvider:v2];
  _Block_release(v2);

  _s22AutoPlayBackgroundViewCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  static UICollectionReusableView.reuseIdentifier.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  v7 = [objc_allocWithZone(_s14CollectionViewCMa()) initWithFrame:v5 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v8._object = 0x8000000100E461E0;
  v8._countAndFlagsBits = 0xD000000000000010;
  v9 = AccessibilityIdentifier.init(name:)(v8);
  v10 = UIView.withAccessibilityIdentifier(_:)(v9, *(&v9 + 1));

  v11 = v10;
  [v11 setAlwaysBounceVertical:1];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  [v13 verticalScrollIndicatorInsets];
  [v13 setVerticalScrollIndicatorInsets:32.0];
  [v13 setContentInsetAdjustmentBehavior:2];
  [v13 _setHiddenPocketEdges:15];
  v15 = [v13 layer];

  [v15 setAllowsGroupBlending:0];
  [v13 _setAutomaticContentOffsetAdjustmentEnabled:0];

  return v13;
}

uint64_t sub_1002DCFC0(unint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  sub_1002EB520(a1, a2);
  v7 = v6;

  return v7;
}

void sub_1002DD040(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100305140(a1);
  if ([v1 isViewLoaded])
  {
    v21 = v4;
    v22 = v7;
    v11 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
    swift_beginAccess();
    v12 = v8;
    v13 = *&v1[v11];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = a1;
    aBlock[4] = sub_10030AC50;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A5F48;
    v15 = _Block_copy(aBlock);
    v20 = a1;
    v16 = v13;
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v21 + 8))(v6, v3);
    (*(v12 + 8))(v10, v22);
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
    *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse] = a1;
  }
}

uint64_t sub_1002DD3A8(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v4)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 257;
    v8 = a2;
  }

  else
  {
    v7 = v4;
    v8 = a2;
    v9 = [v7 tracklist];
    v10 = [v9 shuffleType];

    v11 = [v8 tracklist];
    v12 = [v11 shuffleType];

    if (v10 == v12)
    {
      v6 = 257;
    }

    else
    {
      v6 = 1;
    }
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v8;
  v15 = a1;
  sub_1002F4E14(v6, sub_10030AC58, v13);
}

void sub_1002DD4E0(uint64_t a1, void *a2)
{
  v2 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  v4 = *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (!v4)
  {
    *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext) = 0;
  }

  *(a1 + v2) = a2;
  v3 = a2;
}

void sub_1002DD538(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    v21 = v4;
    v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
    swift_beginAccess();
    v22 = v7;
    v13 = *&v1[v12];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = a1;
    aBlock[4] = sub_10030ABFC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A5ED0;
    v15 = _Block_copy(aBlock);
    v20 = a1;
    v16 = v13;
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v21 + 8))(v6, v3);
    (*(v8 + 8))(v11, v22);
  }

  else
  {
    v18 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse];
    *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse] = a1;
  }
}

uint64_t sub_1002DD898(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  v6 = a1;
  sub_1002F4E14(256, sub_10030AC04, v4);
}

uint64_t sub_1002DD920(uint64_t a1)
{
  v2 = sub_1002DCC7C(a1);
  v3 = [v2 collectionViewLayout];

  _s19CompositionalLayoutCMa();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    sub_1002F815C(3u);
    *(v5 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = v6 + v7;
  }

  sub_1002E7054();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    [*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) contentOffset];
    if (!(*&v9[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
    {
      v12 = v11;
      result = [v9 isBeingPresented];
      if ((result & 1) == 0)
      {
        v13 = *&v9[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v13)
        {
          __break(1u);
          return result;
        }

        v14 = *&v13[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
        *&v13[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = v10 - v12;
        if (v10 - v12 != v14)
        {
          v15 = v13;
          sub_1001B6800();
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002DDA94(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25[-v9];
  if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount) != a1)
  {
    v25[15] = 2;
    v11 = sub_100309CC0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v11))
    {
      v12 = sub_10010FC20(&qword_10118AB38);
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
      sub_1002E802C(v10);
      sub_1000095E8(v10, &qword_10118ABE0);
      goto LABEL_4;
    }

    v15 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (v15)
    {
      v16 = v15;
      sub_1004357B8(3u);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        v19 = sub_1002DCC7C();
        v20 = _UICollectionViewListLayoutElementKindSectionHeader;
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v5 + 8))(v7, v4);
        v14 = [v19 supplementaryViewForElementKind:v20 atIndexPath:isa];

        if (v14)
        {
          type metadata accessor for NowPlayingQueueHeaderView();
          v22 = swift_dynamicCastClass();
          if (!v22)
          {
            goto LABEL_5;
          }

          v23 = v22;
          v24 = v14;
          sub_1002EB08C(v23);

LABEL_4:
          v13 = sub_1002DCC7C();
          v14 = [v13 collectionViewLayout];

          [v14 invalidateLayout];
LABEL_5:
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1002DDD7C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection);
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = result;
  if (v2 != result && !result && (*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce) & 1) != 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1005E15A8(4, 1);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1002DDE0C()
{
  v1 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v1 - 8);
  v3 = &v27[-v2];
  v4 = [objc_allocWithZone(UIView) init];
  v5 = [v4 layer];
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  [v5 setShadowColor:v8];
  v9 = [v4 layer];
  [v9 setShadowRadius:12.0];

  v10 = [v4 layer];
  LODWORD(v11) = 1050253722;
  [v10 setShadowOpacity:v11];

  v12 = [v4 layer];
  [v12 setShadowOffset:{0.0, 1.0}];

  v13 = [v4 layer];
  [v13 setMasksToBounds:0];

  v14 = [objc_opt_self() effectWithBlurRadius:24.0];
  v15 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v14];

  v16 = [v15 contentView];
  v17 = [v6 whiteColor];
  v18 = [v17 colorWithAlphaComponent:0.05];

  [v16 setBackgroundColor:v18];
  v19 = v15;
  [v19 setAutoresizingMask:18];
  v20 = [v0 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (sub_1005C3564(v27[15]))
  {
    v21 = UIView.Corner.small.unsafeMutableAddressor();
    v22 = type metadata accessor for UIView.Corner();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v3, v21, v22);
    (*(v23 + 56))(v3, 0, 1, v22);
  }

  else
  {
    v24 = type metadata accessor for UIView.Corner();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
  }

  UIView.corner.setter();
  v25 = [v19 layer];

  [v25 setMasksToBounds:1];
  [v4 addSubview:v19];

  return v4;
}

void sub_1002DE24C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState;
  if (v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == (a1 & 1))
  {
    v8 = sub_1002DEF54();
    v9 = [v8 attributedText];

    v10 = sub_1002DEB20();
    v11.super.isa = sub_1002DE42C(v10).super.isa;
    isa = v11.super.isa;
    if (v9)
    {
      sub_100009F78(0, &unk_101189D70);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }

    else
    {
    }

    if (v2[v3] == 1)
    {

      sub_1002E555C(1);
    }
  }

  else
  {
    v4 = sub_1002DCC7C();
    v5 = [v4 collectionViewLayout];

    [v5 invalidateLayout];
    if (v2[v3] == 1)
    {
      sub_1002E555C(1);
      v6 = [v2 view];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      v14 = sub_1002DEF54();
      [v7 addSubview:v14];
    }

    else
    {
      v14 = sub_1002DEF54();
      [v14 removeFromSuperview];
    }
  }
}

NSAttributedString sub_1002DE42C(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    sub_1002DE968();
    sub_10010FC20(&qword_10119FB30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = NSFontAttributeName;
    v19 = objc_opt_self();
    v20 = NSFontAttributeName;
    v21 = [v19 preferredFontForTextStyle:UIFontTextStyleBody];
    *(inited + 64) = sub_100009F78(0, &qword_101183A00);
    *(inited + 40) = v21;
    sub_10010BA14(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_101180420);
    v22 = objc_allocWithZone(NSAttributedString);
    v23 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100309644(&qword_10118AC30, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = [v22 initWithString:v23 attributes:isa];

    return v25;
  }

  else
  {
    sub_100009F78(0, &unk_101189D70);
    v1 = sub_1002DE968();
    v26 = v2;
    v27 = v1;
    sub_10010FC20(&qword_10119FB30);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_100EBC6B0;
    *(v3 + 32) = NSFontAttributeName;
    v4 = objc_opt_self();
    v5 = NSFontAttributeName;
    v6 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
    v7 = sub_100009F78(0, &qword_101183A00);
    *(v3 + 64) = v7;
    *(v3 + 40) = v6;
    v8 = sub_10010BA14(v3);
    swift_setDeallocating();
    sub_1000095E8(v3 + 32, &qword_101180420);
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9];

    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100EBC6B0;
    *(v11 + 32) = v5;
    v12 = static UIFont.preferredFont(forTextStyle:weight:)();
    *(v11 + 64) = v7;
    *(v11 + 40) = v12;
    v13 = sub_10010BA14(v11);
    swift_setDeallocating();
    sub_1000095E8(v11 + 32, &qword_101180420);
    v14._countAndFlagsBits = 0x6C6F626D79737B7BLL;
    v15._object = v26;
    v15._countAndFlagsBits = v27;
    v14._object = 0xEA00000000007D7DLL;
    v28.value.super.isa = v10;
    v28.is_nil = v13;
    return NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(v15, v8, v14, v28, v16);
  }
}

uint64_t sub_1002DE968()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_1002DEB20()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v27 - v7;
  v9 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  v10 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (!v10)
  {
    return 2;
  }

  v11 = [v10 tracklist];
  if (v11)
  {
    v12 = v11;
    if ([v11 actionAtQueueEnd] == 3)
    {
    }

    else
    {
      v13 = sub_1002DEE20();

      if (v13)
      {
        return 0;
      }
    }
  }

  v15 = *(v0 + v9);
  if (!v15)
  {
    return 2;
  }

  v16 = [v15 tracklist];
  if (!v16)
  {
    return 2;
  }

  v17 = v16;
  v18 = [v16 playingItemIndexPath];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v2 + 32))(v8, v4, v1);
  v20 = [v17 items];
  v21 = [v20 sectionAtIndex:IndexPath.section.getter()];

  v22 = [v21 metadataObject];
  if (!v22 || (v23 = [v22 flattenedGenericObject], v22, !v23) || (v24 = objc_msgSend(v23, "anyObject"), v23, !v24))
  {
    (*(v2 + 8))(v8, v1);
LABEL_17:

    return 2;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = [v25 subtype];

    (*(v2 + 8))(v8, v1);
    if (v26 != 1)
    {
      return 1;
    }
  }

  else
  {

    (*(v2 + 8))(v8, v1);
  }

  return 2;
}

BOOL sub_1002DEE20()
{
  v1 = [v0 actionAtQueueEndCommand];
  result = 0;
  if (v1)
  {
    v2 = [v1 supportedActions];
    sub_100009F78(0, &qword_101189A20);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [objc_allocWithZone(NSNumber) initWithInteger:3];
    v8 = v4;
    __chkstk_darwin(v4);
    v7[2] = &v8;
    v5 = sub_10044AC40(sub_10030AA00, v7, v3);

    swift_unknownObjectRelease();

    if (v5)
    {
      return 1;
    }
  }

  return result;
}

id sub_1002DEF54()
{
  v1 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    v5 = v0;
    v6 = sub_1002DEB20();
    isa = sub_1002DE42C(v6).super.isa;
    [v4 setAttributedText:isa];

    v8 = v4;
    sub_1002DEB20();
    v18 = sub_1002DE968();
    v19 = v9;
    v17 = sub_100009838();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v10 = String._bridgeToObjectiveC()();

    [v8 setAccessibilityLabel:{v10, &type metadata for String, v17, v17, v17, 0, 0xE000000000000000, 0x6C6F626D79737B7BLL, 0xEA00000000007D7DLL, v18, v19}];

    [v8 setNumberOfLines:0];
    v11 = [objc_opt_self() whiteColor];
    v12 = [v11 colorWithAlphaComponent:0.45];

    [v8 setTextColor:v12];
    v13 = [v8 layer];
    [v13 setCompositingFilter:kCAFilterPlusL];

    [v8 setTextAlignment:1];
    v14 = *(v5 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

char *sub_1002DF180(void *a1)
{
  v2 = v1;
  sub_100432704(&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext]);
  v4 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for old_ArtworkPrefetchingController()) init];
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset] = 0;
  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_playerResponseSubscription] = 0;
  v5 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v6 = qword_101218AC8;
  *&v1[v5] = (*(*qword_101218AC8 + 432))();
  v7 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController;
  *&v2[v7] = [objc_allocWithZone(MPRequestResponseController) init];
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bindings] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_useListeningHistoryObserver] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningCancellable] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_applicationCapabilitiesSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext] = 0;
  v8 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_feedbackGenerator;
  *&v2[v9] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:3];
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection] = 3;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] = 0;
  *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel] = 0;
  v10 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__hasSeenSharedListeningQueueItemRemoveAlert];
  v46 = 2;
  v45[0] = 0xD00000000000002ALL;
  v45[1] = 0x8000000100E45B00;
  v11 = [objc_opt_self() standardUserDefaults];
  sub_100009838();
  UserDefault.init(wrappedValue:defaults:key:)(&v46, v11, v45, &type metadata for String, &v41);
  v12 = v42;
  v13 = v43;
  *v10 = v41;
  *(v10 + 2) = v12;
  v10[24] = v13;
  v14 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds];
  *v14 = 0u;
  v14[1] = 0u;
  v15 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset];
  *v15 = 0;
  v15[1] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback] = 0;
  v16 = &v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_onEndContextMenuInteraction];
  *v16 = 0;
  v16[1] = 0;
  v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip] = 1;
  v17 = type metadata accessor for NowPlayingQueueViewController(0);
  v44.receiver = v2;
  v44.super_class = v17;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v19 = a1;
  v20 = v18;
  sub_1002DD040(a1);
  sub_100009F78(0, &unk_10118A270);
  sub_100305FB0();
  v22 = v21;
  v23 = [objc_allocWithZone(MPModelShimRequest) init];
  v24 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v25 = String._bridgeToObjectiveC()();
  [v24 setLabel:v25];

  sub_100009F78(0, &qword_101183F80);
  v26 = static MPMediaLibrary.device.getter();
  [v24 setMediaLibrary:v26];

  v27 = static MPModelPlaylist.defaultMusicKind.getter();
  v28 = [v27 playlistEntryKind];

  [v24 setItemKind:v28];
  v29 = sub_100020BA8(4u);
  [v24 setItemProperties:v29];

  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6C0;
  *(v30 + 32) = v22;
  sub_100009F78(0, &unk_101186F00);
  v31 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setScopedContainers:isa];

  [v23 setModelRequest:v24];
  v33 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController;
  v34 = *&v20[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController];
  [v34 setDelegate:v20];

  [*&v20[v33] setRequest:v23];
  Playing = MPCPlayerRequestTracklistRange.upNextPlayingItems.unsafeMutableAddressor();
  v36 = *Playing;
  v37 = Playing[1];
  v38 = (*(*v6 + 752))(&v41);
  v39.reverseCount = v36;
  v39.forwardCount = v37;
  Player.NowPlayingConfiguration.insert(_:)(v39);
  v38(&v41, 0);

  return v20;
}

id sub_1002DF7A8()
{
  v1 = v0;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v2 = qword_101218AC8;
  Playing = MPCPlayerRequestTracklistRange.upNextPlayingItems.unsafeMutableAddressor();
  v4 = *Playing;
  v5 = Playing[1];
  v6 = (*(*v2 + 752))(v10);
  v7.reverseCount = v4;
  v7.forwardCount = v5;
  Player.NowPlayingConfiguration.remove(_:)(v7);
  v6(v10, 0);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  return objc_msgSendSuper2(&v9, "dealloc");
}

id sub_1002DFB44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10010FC20(&unk_101183D80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v144 - v5;
  v7 = sub_10010FC20(&qword_101189DE0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v144 - v9;
  *&v166 = sub_10010FC20(&unk_10118AC90);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v144 - v11;
  v12 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v12 - 8);
  *&v167 = &v144 - v13;
  v160 = sub_10010FC20(&qword_1011897D0);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v144 - v14;
  v163 = sub_10010FC20(&qword_101182BA8);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v144 - v15;
  v157 = type metadata accessor for DispatchWorkItemFlags();
  v156 = *(v157 - 1);
  __chkstk_darwin(v157);
  v154 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for DispatchQoS();
  v153 = *(v155 - 8);
  __chkstk_darwin(v155);
  v152 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NowPlayingQueueViewController(0);
  v175.receiver = v0;
  v175.super_class = v18;
  objc_msgSendSuper2(&v175, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v20 = result;
  v147 = v6;
  v148 = v4;
  v149 = v3;
  v150 = v10;
  v151 = v8;
  v21 = [result layer];

  [v21 setAllowsGroupBlending:0];
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = result;
  v23 = [result layer];

  [v23 setAllowsGroupOpacity:0];
  sub_1002F815C(0);
  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader] = v25 != 6;
  v26 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController;
  v27 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController];
  v28 = &v27[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
  v29 = *&v27[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_defaultCatalogMetricsProviding];
  *v28 = sub_1002E16E4;
  v28[1] = 0;
  v30 = v27;
  sub_100020438(v29);

  v31 = *&v1[v26];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = &v31[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding];
  v34 = *&v31[OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_catalogProviding];
  *v33 = sub_10030AC68;
  v33[1] = v32;
  v35 = v31;

  sub_100020438(v34);

  v36 = sub_1002DCC7C();
  [v36 setPrefetchDataSource:*&v1[v26]];

  sub_1002EF478();
  v37 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v38 = [*&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] collectionViewLayout];
  _s19CompositionalLayoutCMa();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v40 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    v41 = *(v39 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource);
    *(v39 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = v40;
    v42 = v40;

    v38 = v41;
  }

  [*&v1[v37] setDelegate:v1];
  [*&v1[v37] setAllowsFocus:1];
  [*&v1[v37] setRemembersLastFocusedIndexPath:1];
  v43 = *&v1[v37];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_28;
  }

  v44 = result;
  v145 = v7;
  v146 = ObjectType;
  [result frame];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  [v43 setFrame:{v46, v48, v50, v52}];
  [*&v1[v37] setAutoresizingMask:18];
  v53 = *&v1[v37];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = &v53[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock];
  v56 = *&v53[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock];
  *v55 = sub_10030AC70;
  v55[1] = v54;

  v57 = v53;
  sub_100020438(v56);

  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v58 = result;
  [result addSubview:*&v1[v37]];

  v59 = *&v1[v37];
  type metadata accessor for NowPlayingQueueHeaderView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v61 = *&v1[v37];
  type metadata accessor for NowPlayingAutoPlayHeaderView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v63 = *&v1[v37];
  type metadata accessor for NowPlayingHistoryHeaderView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v65 = *&v1[v37];
  _s17PlayingHeaderViewCMa();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v67 = *&v1[v37];
  type metadata accessor for NowPlayingQueueControlsView();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v69 = *&v1[v37];
  _s25NowPlayingQueueFooterViewCMa();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)();

  v71 = *&v1[v37];
  type metadata accessor for NowPlayingQueueRemainingSongsCell();
  v72 = v71;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v73 = *&v1[v37];
  type metadata accessor for NowPlayingQueueAddCell();
  v74 = v73;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v75 = *&v1[v37];
  type metadata accessor for NowPlayingQueueRepeatCell();
  v76 = v75;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v77 = *&v1[v37];
  type metadata accessor for NowPlayingQueueCell();
  v78 = v77;
  static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)();

  v79 = *&v1[v37];
  v80 = objc_allocWithZone(UILongPressGestureRecognizer);
  v81 = v79;
  v82 = [v80 initWithTarget:v1 action:"handleLongPress:"];
  [v81 addGestureRecognizer:v82];

  v83 = *&v1[v37];
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = &v83[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  v86 = *&v83[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock];
  *v85 = sub_10030AC78;
  v85[1] = v84;
  v87 = v83;

  sub_100020438(v86);

  v88 = *&v1[v37];
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v90 = swift_allocObject();
  *(v90 + 24) = 0u;
  *(v90 + 40) = 0u;
  *(v90 + 56) = 0u;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 1;
  *(v90 + 96) = 0;
  v91 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v92 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v92 - 8) + 56))(v90 + v91, 1, 1, v92);
  *(v90 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v90 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v90 + 16) = v88;
  *(v90 + 24) = 0;
  *(v90 + 32) = 0;
  *(v90 + 40) = sub_10030AC80;
  v93 = *(v90 + 56);
  *(v90 + 64) = 0;
  *(v90 + 48) = v89;
  *(v90 + 56) = 0;
  v94 = v88;
  swift_retain_n();
  sub_100020438(v93);
  v95 = *(v90 + 72);
  *(v90 + 72) = 0;
  *(v90 + 80) = 0;
  sub_100020438(v95);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController] = v90;

  v96 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v97 = *&v1[v96];
  v98 = swift_allocObject();
  *(v98 + 16) = v1;
  v173 = sub_10030AC88;
  v174 = v98;
  aBlock = _NSConcreteStackBlock;
  v170 = 1107296256;
  v171 = sub_10002BC98;
  v172 = &unk_1010A6010;
  v99 = _Block_copy(&aBlock);
  v100 = v97;
  v101 = v1;
  v102 = v152;
  static DispatchQoS.unspecified.getter();
  v168 = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  v103 = v154;
  v104 = v157;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v99);

  (*(v156 + 8))(v103, v104);
  (*(v153 + 8))(v102, v155);

  [v101 setViewRespectsSystemMinimumLayoutMargins:0];
  type metadata accessor for Whitetail.Binding();
  v105 = *&v1[v37];
  KeyPath = swift_getKeyPath();
  v172 = sub_10010FC20(&unk_10118ACA0);
  v173 = &protocol witness table for KeyValueObservationTrigger<A, B>;
  aBlock = v105;
  v170 = KeyPath;
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = v105;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&aBlock, 1, sub_10030ACC4, v107);
  v109 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bindings;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v110 = *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor();
  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v110, 0, sub_10030ACCC, v111);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (qword_10117F208 != -1)
  {
    swift_once();
  }

  v112 = qword_101218648;
  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v112, 0, sub_10030ACD4, v113);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (qword_10117FCC8 != -1)
  {
    swift_once();
  }

  v114 = qword_101219538;
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v114, 0, sub_10030B054, v115);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v101[v109] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  LOBYTE(aBlock) = 3;
  v116 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v116))
  {
    v117 = MPPlaybackUserDefaultsPrivateListeningEnabledDidChangeNotification;
    v118 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v101[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_useListeningHistoryObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v117, 0, 1, 0, sub_10030AD08, v118);
  }

  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v119 = v158;
  ApplicationCapabilities.Controller.$capabilities.getter();

  sub_100009F78(0, &qword_101182960);
  v120 = static OS_dispatch_queue.main.getter();
  aBlock = v120;
  v121 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v122 = *(v121 - 8);
  v123 = v167;
  v157 = *(v122 + 56);
  v156 = v122 + 56;
  (v157)(v167, 1, 1, v121);
  sub_100020674(&qword_101182BB0, &qword_1011897D0);
  sub_1000206BC();
  v124 = v161;
  v125 = v160;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v123, &qword_101182140);

  (*(v159 + 8))(v119, v125);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101182BB8, &qword_101182BA8);
  v126 = v163;
  v127 = Publisher<>.sink(receiveValue:)();

  (*(v162 + 8))(v124, v126);
  *&v101[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_applicationCapabilitiesSubscription] = v127;

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v128 = v164;
  GroupActivitiesManager.$participantsCount.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_10118ACB0, &unk_10118AC90);
  v129 = v166;
  v130 = Publisher<>.sink(receiveValue:)();

  (*(v165 + 8))(v128, v129);
  *&v101[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningCancellable] = v130;

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v131 = v147;
  (*(*qword_101218AC8 + 456))();
  v132 = static OS_dispatch_queue.main.getter();
  aBlock = v132;
  v133 = v167;
  (v157)(v167, 1, 1, v121);
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  v134 = v150;
  v135 = v149;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v133, &qword_101182140);

  (*(v148 + 8))(v131, v135);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_10118ACC0, &qword_101189DE0);
  v136 = v145;
  v137 = Publisher<>.sink(receiveValue:)();

  (*(v151 + 8))(v134, v136);
  *&v101[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_playerResponseSubscription] = v137;

  [*&v101[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_historyRequestController] beginAutomaticResponseLoading];
  sub_10010FC20(&unk_101182D80);
  v138 = swift_allocObject();
  v167 = xmmword_100EBC6B0;
  *(v138 + 16) = xmmword_100EBC6B0;
  *(v138 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v138 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v139 = swift_allocObject();
  v166 = xmmword_100EBDC20;
  *(v139 + 16) = xmmword_100EBDC20;
  *(v139 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v139 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  v140 = sub_1001D1C24();
  *(v139 + 48) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v139 + 56) = v140;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v141 = swift_allocObject();
  *(v141 + 16) = v166;
  v142 = sub_100050078();
  *(v141 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v141 + 40) = v142;
  *(v141 + 48) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v141 + 56) = v140;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v143 = swift_allocObject();
  *(v143 + 16) = v167;
  *(v143 + 32) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v143 + 40) = v140;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

double sub_1002E16E4(int a1, id a2)
{
  v2 = a2;
  if (qword_10117F850 != -1)
  {
    swift_once();
    v2 = a2;
  }

  v3 = *&qword_101218F38;
  v4 = [v2 traitCollection];
  [v4 displayScale];

  return v3;
}

uint64_t sub_1002E1788()
{
  v0 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      v7 = _s23QueueSnapshotIdentifierOMa(0);
      if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
      {

        sub_1000095E8(v2, &unk_10118AAF0);
      }

      else
      {
        v8 = sub_1004329EC();
        sub_10030AD48(v2, _s23QueueSnapshotIdentifierOMa);
        if (v8)
        {
          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (v9)
          {
            v10 = [v9 artworkCatalog];

            return v10;
          }
        }

        else
        {
        }
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002E1944(CGFloat a1, CGFloat a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118AB38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  v14 = [Strong traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (LOBYTE(v51) && LOBYTE(v51) != 1)
  {

    return;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_17;
  }

  v50 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v16 = *&v13[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v16)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v47 = _UICollectionViewListLayoutElementKindSectionHeader;
  v48 = (v5 + 8);
  v17 = 1;
  v18 = v16;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v19 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v49 = *(v9 + 8);
  v49(v11, v8);
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_10:

    goto LABEL_11;
  }

  v21 = 0;
  while (*(v19 + v21 + 32) != 1)
  {
    if (v20 == ++v21)
    {
      goto LABEL_10;
    }
  }

  v27 = sub_1002DCC7C();
  v46 = v47;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v45 = isa;
  (*v48)(v7, v4);
  v29 = v46;
  v30 = [v27 layoutAttributesForSupplementaryElementOfKind:v46 atIndexPath:isa];

  v31 = v30;
  if (!v30)
  {
LABEL_11:
    v22 = *&v13[v50];
    if (v22)
    {
      v17 = 5;
      v23 = v22;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v24 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v49(v11, v8);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = 0;
        while (*(v24 + v26 + 32) != 5)
        {
          if (v25 == ++v26)
          {
            goto LABEL_16;
          }
        }

        v32 = sub_1002DCC7C();
        v33 = v47;
        IndexPath.init(item:section:)();
        v34 = IndexPath._bridgeToObjectiveC()().super.isa;
        (*v48)(v7, v4);
        v31 = [v32 layoutAttributesForSupplementaryElementOfKind:v33 atIndexPath:v34];

        if (v31)
        {
          [v31 frame];
          v55.x = a1;
          v55.y = a2;
          if (CGRectContainsPoint(v57, v55))
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_16:
      }

LABEL_17:

      return;
    }

    goto LABEL_31;
  }

  [v30 frame];
  v54.x = a1;
  v54.y = a2;
  if (!CGRectContainsPoint(v56, v54))
  {

    goto LABEL_11;
  }

LABEL_25:
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012190C8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v38 = 136446466;
    v51 = a1;
    v52 = a2;
    type metadata accessor for CGPoint(0);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000105AC(v39, v40, &v53);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2082;
    LOBYTE(v51) = v17;
    v42 = String.init<A>(describing:)();
    v44 = sub_1000105AC(v42, v43, &v53);

    *(v38 + 14) = v44;
    swift_arrayDestroy();
  }
}

void *sub_1002E1FB0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      result = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (!result)
      {
        __break(1u);
        return result;
      }

      [result setControlsHidden:1 animated:1];
      swift_unknownObjectRelease();
    }

    v3 = sub_1002DCC7C();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v3[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = sub_10030AD40;
      *(v5 + 24) = v4;
      v6 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
      swift_beginAccess();
      v7 = *&v3[v6];
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v3[v6] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_10006429C(0, v7[2] + 1, 1, v7);
        *&v3[v6] = v7;
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        v7 = sub_10006429C((v9 > 1), v10 + 1, 1, v7);
      }

      v7[2] = v10 + 1;
      v11 = &v7[2 * v10];
      v11[4] = sub_10018A020;
      v11[5] = v5;
      *&v3[v6] = v7;
      swift_endAccess();
    }

    else
    {

      sub_1002E21AC();
    }
  }

  return result;
}

void sub_1002E21AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (v3)
      {
        [v3 setControlsHidden:0 animated:1];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_1002E2250(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v3 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v3 - 8);
  v71 = &v66 - v4;
  v5 = sub_10010FC20(&qword_10118AB38);
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v66 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v66 - v12;
  __chkstk_darwin(v13);
  v73 = &v66 - v14;
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v18 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v25 = Strong;
  v75 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v75)
  {
    v69 = a2;
    sub_1000089F8(v76, v23, &unk_10118BCE0);
    v26 = *(v9 + 48);
    v27 = v26(v23, 1, v8);
    v68 = v9;
    if (v27 == 1)
    {
      v28 = v75;
      v29 = v8;
LABEL_9:
      sub_1000089F8(v76, v20, &unk_10118BCE0);
      if (v26(v20, 1, v29) == 1)
      {
        sub_1000095E8(v20, &unk_10118BCE0);
        v37 = v69;
        *(v69 + 24) = &type metadata for DragDropToQueue.Destination;
        *(v37 + 32) = sub_1002B8664();

        *v37 = v75;
        *(v37 + 8) = 4;
        *(v37 + 16) = 0;
        return;
      }

      v38 = v68;
      v39 = *(v68 + 32);
      v40 = v73;
      v39();
      if (!IndexPath.item.getter())
      {
        if (IndexPath.section.getter() >= 1)
        {
          v47 = *&v25[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
          if (!v47)
          {
LABEL_41:
            __break(1u);
            return;
          }

          v48 = v38;
          v49 = v47;
          v50 = IndexPath.section.getter();
          v51 = v50 - 1;
          if (__OFSUB__(v50, 1))
          {
            goto LABEL_36;
          }

          dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
          v52 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
          (*(v74 + 8))(v7, v5);
          if ((v51 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v51 >= *(v52 + 16))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v53 = *(v52 + v51 + 32);

          v38 = v48;
          if (v53 == 2)
          {
            v54 = 2;
            goto LABEL_30;
          }
        }

        v54 = 0;
        goto LABEL_30;
      }

      if (!__OFSUB__(IndexPath.item.getter(), 1))
      {
        IndexPath.section.getter();
        v41 = v72;
        IndexPath.init(item:section:)();
        v42 = *&v25[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
        v43 = v71;
        if (v42)
        {
          v44 = v42;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          v45 = _s23QueueSnapshotIdentifierOMa(0);
          if ((*(*(v45 - 8) + 48))(v43, 1, v45) == 1)
          {

            v46 = *(v38 + 8);
            v46(v41, v29);
            v46(v40, v29);
            sub_1000095E8(v43, &unk_10118AAF0);
LABEL_32:
            v65 = v69;
            *(v69 + 32) = 0;
            *v65 = 0u;
            v65[1] = 0u;
            return;
          }

          if (swift_getEnumCaseMultiPayload() != 1)
          {

            v64 = *(v38 + 8);
            v64(v41, v29);
            v64(v40, v29);
            sub_10030AD48(v43, _s23QueueSnapshotIdentifierOMa);
            goto LABEL_32;
          }

          v55 = *(v43 + *(sub_10010FC20(&qword_10118AB08) + 48));
          v56 = v70;
          (v39)(v70, v43, v29);
          v57 = [v55 tracklist];
          v58 = [v57 displayItems];

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v54 = [v58 itemAtIndexPath:isa];

          v38 = v68;
          v60 = *(v38 + 8);
          v60(v56, v29);
          v40 = v73;
          v60(v72, v29);
          v61 = v54;
LABEL_30:
          v62 = v69;
          *(v69 + 24) = &type metadata for DragDropToQueue.Destination;
          *(v62 + 32) = sub_1002B8664();
          v63 = v75;
          sub_100309AD8(v54);

          *v62 = v63;
          *(v62 + 8) = v54;
          *(v62 + 16) = 0;
          (*(v38 + 8))(v40, v29);
          return;
        }

        goto LABEL_40;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v30 = *(v9 + 32);
    v67 = v8;
    v30(v17, v23, v8);
    v31 = *&v25[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (!v31)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v66 = v75;
    v32 = v31;
    v33 = IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v34 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v74 + 8))(v7, v5);
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v33 < *(v34 + 16))
    {
      v35 = *(v34 + v33 + 32);

      v36 = v17;
      v29 = v67;
      (*(v68 + 8))(v36, v67);
      if (v35)
      {
        goto LABEL_9;
      }

      v25 = v66;
      a2 = v69;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_17:

LABEL_18:
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

void sub_1002E2A80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
    swift_beginAccess();
    if ((*(v2 + 8) & 1) == 0)
    {
      v3 = sub_1002DCC7C();
      [v3 contentSize];
      v5 = v4;
      v7 = v6;

      sub_1002E6B90(v5, v7);
    }
  }
}

void sub_1002E2B2C()
{
  v0 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v0 - 8);
  v60 = (&v50 - v1);
  v2 = type metadata accessor for UICellAccessory.ReorderOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UICellAccessory.DisplayedState();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v72 = v15;
  v18 = sub_1002DCC7C();
  v19 = [v18 visibleCells];

  sub_100009F78(0, &unk_101184750);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v72;
    if (v21)
    {
      goto LABEL_4;
    }

LABEL_30:

    return;
  }

LABEL_29:
  v21 = _CocoaArrayWrapper.endIndex.getter();
  v22 = v72;
  if (!v21)
  {
    goto LABEL_30;
  }

LABEL_4:
  v23 = 0;
  v74 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v69 = v20 & 0xC000000000000001;
  v67 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v68 = v20 & 0xFFFFFFFFFFFFFF8;
  v65 = (v11 + 32);
  v55 = enum case for UICellAccessory.DisplayedState.always(_:);
  v54 = (v5 + 104);
  v53 = enum case for UICellAccessory.LayoutDimension.custom(_:);
  v52 = v3 + 1;
  v51 = (v5 + 8);
  v64 = (v11 + 8);
  v50 = xmmword_100EBC6B0;
  v62 = v21;
  v56 = v2;
  v63 = v9;
  v73 = v17;
  v66 = v20;
  while (1)
  {
    if (v69)
    {
      v25 = sub_1007E97A0(v23, v20);
    }

    else
    {
      if (v23 >= *(v68 + 16))
      {
        goto LABEL_28;
      }

      v25 = *(v20 + 8 * v23 + 32);
    }

    v3 = v25;
    v11 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    type metadata accessor for NowPlayingQueueCell();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {

      return;
    }

    v5 = v26;
    v27 = *&v17[v67];
    v28 = v3;
    v29 = [v27 indexPathForCell:v5];
    if (!v29)
    {

      return;
    }

    v30 = v29;
    v71 = v23 + 1;
    v31 = v70;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*v65)(v22, v31, v10);
    v32 = *&v17[v74];
    if (!v32)
    {
      break;
    }

    v33 = v32;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v34 = _s23QueueSnapshotIdentifierOMa(0);
    if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
    {

      (*v64)(v22, v10);
      sub_1000095E8(v9, &unk_10118AAF0);
      return;
    }

    v11 = sub_1004329EC();
    sub_10030AD48(v9, _s23QueueSnapshotIdentifierOMa);
    if (!v11)
    {

      (*v64)(v22, v10);
      return;
    }

    sub_1002E3428(v22, v11);
    v36 = v35;
    *(v5 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled) = v35 & 1;
    v37 = *(v5 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView);
    v38 = 1.0;
    if (v36)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    v39 = v10;
    [v37 setAlpha:{v38, v50}];

    v40 = *&v73[v74];
    if (!v40)
    {
      goto LABEL_33;
    }

    v41 = *&v40[qword_10118F958];
    if (v41 && (v42 = v40, sub_100030444(v41), v43 = v41(v42, v72), v42, sub_100020438(v41), (v43 & 1) != 0))
    {
      sub_10010FC20(&unk_101184740);
      v44 = *(type metadata accessor for UICellAccessory() - 8);
      v57 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      *(swift_allocObject() + 16) = v50;
      v45 = v58;
      (*v54)(v58, v55, v61);
      v46 = v60;
      *v60 = 0x403C000000000000;
      v47 = type metadata accessor for UICellAccessory.LayoutDimension();
      v48 = *(v47 - 8);
      (*(v48 + 104))(v46, v53, v47);
      (*(v48 + 56))(v46, 0, 1, v47);
      v3 = v28;
      v49 = v59;
      v2 = v56;
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      static UICellAccessory.reorder(displayed:options:)();
      (*v52)(v49, v2);
      (*v51)(v45, v61);
      UICollectionViewListCell.accessories.setter();
      v24 = v11;
      v11 = v3;
    }

    else
    {
      v24 = v28;
      UICollectionViewListCell.accessories.setter();
      v3 = v24;
    }

    v22 = v72;
    v10 = v39;
    (*v64)(v72, v39);
    ++v23;
    v9 = v63;
    v17 = v73;
    v20 = v66;
    if (v71 == v62)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1002E3428(uint64_t a1, void *a2)
{
  v3 = v2;
  v89 = type metadata accessor for IndexPath();
  v91 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  v90 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v79 - v12;
  __chkstk_darwin(v13);
  v87 = &v79 - v14;
  v15 = sub_10010FC20(&qword_10118AB38);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v79 - v17;
  v19 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v79 - v20;
  v22 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v23 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v23)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v24 = v23;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v25 = _s23QueueSnapshotIdentifierOMa(0);
  if ((*(*(v25 - 8) + 48))(v21, 1, v25) == 1)
  {
    sub_1000095E8(v21, &unk_10118AAF0);
    v26 = 0;
  }

  else
  {
    v27 = sub_100432FF0();
    v28 = v21;
    v26 = v27;
    sub_10030AD48(v28, _s23QueueSnapshotIdentifierOMa);
  }

  v29 = *(v3 + v22);
  if (!v29)
  {
    goto LABEL_31;
  }

  v30 = v29;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v31 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v16 + 8))(v18, v15);
  v32 = IndexPath.section.getter();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v32 >= *(v31 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
LABEL_12:
    v36 = type metadata accessor for Logger();
    sub_1000060E4(v36, qword_1012190C8);
    v37 = v86;
    v38 = v89;
    (*(v18 + 2))(v86, a1, v89);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v18;
      v43 = swift_slowAlloc();
      v92 = v43;
      *v41 = 136446210;
      sub_100309644(&unk_101197050, &type metadata accessor for IndexPath);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v42 + 1))(v37, v38);
      v47 = sub_1000105AC(v44, v46, &v92);

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "[NowPlayingQueueViewController] ---- Disabling cell at indexPath: %{public}s due to missing changeItemCommand", v41, 0xCu);
      sub_10000959C(v43);
    }

    else
    {

      (*(v18 + 1))(v37, v38);
    }

    return;
  }

  v33 = v9;
  v34 = a2;
  v35 = *(v31 + v32 + 32);

  if (v35 <= 1)
  {
    v48 = v91;
    if (!v35)
    {
      v49 = v87;
      sub_100537EF0(v34, v87);
      if (qword_10117F938 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000060E4(v50, qword_1012190C8);
      v51 = v89;
      (*(v48 + 2))(v33, a1, v89);
      v52 = *(v88 + 16);
      v53 = v84;
      v86 = v33;
      v54 = v90;
      v83 = v52;
      v52(v84, v49, v90);
      v55 = v34;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v92 = v82;
        *v58 = 136446978;
        sub_100309644(&unk_101197050, &type metadata accessor for IndexPath);
        v79 = v56;
        v59 = v86;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v26;
        v62 = v61;
        (*(v48 + 1))(v59, v51);
        v63 = sub_1000105AC(v60, v62, &v92);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2082;
        v64 = v85;
        v83(v85, v53, v90);
        v65 = String.init<A>(describing:)();
        v67 = v66;
        v68 = v88;
        v69 = v53;
        v70 = v57;
        v71 = *(v88 + 8);
        v71(v69, v90);
        v72 = sub_1000105AC(v65, v67, &v92);
        LOBYTE(v67) = v81;

        *(v58 + 14) = v72;
        *(v58 + 22) = 1026;
        *(v58 + 24) = v67 & 1;
        *(v58 + 28) = 2114;
        *(v58 + 30) = v55;
        v73 = v80;
        *v80 = v55;
        v74 = v55;
        v75 = v79;
        _os_log_impl(&_mh_execute_header, v79, v70, "[NowPlayingQueueViewController] History item at indexPath=%{public}s playabilityStatus=%{public}s canJumpToItem=%{BOOL,public}d modelObject=%{public}@", v58, 0x26u);
        sub_1000095E8(v73, &unk_101183D70);

        swift_arrayDestroy();

        v49 = v87;
        v54 = v90;

        v76 = v68;
      }

      else
      {

        v77 = v88;
        v71 = *(v88 + 8);
        v71(v53, v54);
        (*(v48 + 1))(v86, v51);
        v76 = v77;
        v64 = v85;
      }

      (*(v76 + 104))(v64, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v54);
      v78 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v71(v64, v54);
      if (v78)
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        (*(*qword_101218AC8 + 768))(&type metadata for Player.InsertCommand, &protocol witness table for Player.InsertCommand);
        v71(v49, v54);
      }

      else
      {
        v71(v49, v54);
      }
    }
  }

  else
  {
    v18 = v91;
    if ((v35 - 2) < 3 && (v26 & 1) == 0)
    {
      if (qword_10117F938 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }
}

void sub_1002E3E00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1002DCC7C();

    [v2 reloadData];
  }
}

uint64_t sub_1002E3E6C()
{
  v0 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10010FC20(&qword_10118AB38);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_1002E802C(v2);

    return sub_1000095E8(v2, &qword_10118ABE0);
  }

  return result;
}

void sub_1002E3F74()
{
  v0 = sub_10010FC20(&qword_10118AB10);
  __chkstk_darwin(v0);
  v2 = &v55 - v1;
  v3 = sub_10010FC20(&qword_10118AB00);
  __chkstk_darwin(v3);
  v5 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v63 = &v55 - v7;
  v64 = _s23QueueSnapshotIdentifierOMa(0);
  v8 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v10 - 8);
  v68 = &v55 - v11;
  v12 = type metadata accessor for IndexPath();
  v74 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  if (![Strong isViewLoaded])
  {

    return;
  }

  v62 = v14;
  v20 = sub_1002DCC7C();
  v21 = [v20 indexPathsForVisibleItems];

  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = *(v22 + 16);
  if (!v73)
  {
LABEL_29:

    return;
  }

  v59 = v5;
  v60 = v3;
  v56 = v2;
  v23 = 0;
  v24 = *(v74 + 80);
  v72 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v71 = v22 + ((v24 + 32) & ~v24);
  v69 = v22;
  v70 = v74 + 16;
  v65 = (v8 + 48);
  v66 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v57 = v0;
  v58 = (v74 + 32);
  v25 = (v74 + 8);
  v26 = v64;
  v27 = v22;
  while (v23 < *(v27 + 16))
  {
    (*(v74 + 16))(v17, v71 + *(v74 + 72) * v23, v12);
    v28 = *&v19[v72];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v30 = [v28 cellForItemAtIndexPath:isa];

    if (!v30)
    {
      (*v25)(v17, v12);
      goto LABEL_7;
    }

    type metadata accessor for NowPlayingQueueCell();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = *&v19[v66];
      if (!v32)
      {
        goto LABEL_32;
      }

      v33 = v31;
      v34 = v32;
      v35 = v68;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*v65)(v35, 1, v26) == 1)
      {
        (*v25)(v17, v12);

        sub_1000095E8(v35, &unk_10118AAF0);
      }

      else
      {
        sub_1003090DC(v35, v67, _s23QueueSnapshotIdentifierOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if ((EnumCaseMultiPayload - 2) >= 3)
        {
          if (!EnumCaseMultiPayload)
          {
            v37 = v63;
            sub_10003D17C(v67, v63, &qword_10118AB00);
            v38 = v37;
            v39 = v59;
            sub_1000089F8(v38, v59, &qword_10118AB00);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v40 = *v39;
            }

            else
            {
              v50 = v56;
              sub_10003D17C(v39, v56, &qword_10118AB10);
              v40 = SnapshotIdentifier.Lazy.object.getter(v57);
              sub_1000095E8(v50, &qword_10118AB10);
            }

            v49 = v68;
            v48 = [v40 innermostModelObject];

            sub_1000095E8(v63, &qword_10118AB00);
            goto LABEL_24;
          }

          v41 = sub_10010FC20(&qword_10118AB08);
          v42 = *(v67 + *(v41 + 48));
          (*v58)(v62);
          v61 = v42;
          v43 = [v42 tracklist];
          v44 = [v43 displayItems];

          v45 = IndexPath._bridgeToObjectiveC()().super.isa;
          v46 = [v44 itemAtIndexPath:v45];

          v47 = [v46 metadataObject];
          if (v47)
          {
            v48 = [v47 innermostModelObject];

            (*v25)(v62, v12);
            v49 = v68;
LABEL_24:
            sub_10030AD48(v49, _s23QueueSnapshotIdentifierOMa);
            sub_1002E3428(v17, v48);
            v52 = v51;
            *(v33 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled) = v51 & 1;
            v53 = *(v33 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView);
            v54 = 1.0;
            if (v52)
            {
              UIInterfaceGetContentDisabledAlpha();
            }

            [v53 setAlpha:v54];

            (*v25)(v17, v12);
            v26 = v64;
            goto LABEL_6;
          }

          (*v25)(v62, v12);

          v26 = v64;
          v35 = v68;
        }

        sub_10030AD48(v35, _s23QueueSnapshotIdentifierOMa);
        (*v25)(v17, v12);
      }
    }

    else
    {

      (*v25)(v17, v12);
    }

LABEL_6:
    v27 = v69;
LABEL_7:
    if (v73 == ++v23)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}