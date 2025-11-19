uint64_t sub_100088960()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 200);
  *v4 = *v2;
  *(v3 + 208) = v0;

  sub_100052FF8();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_100088CC8;
  }

  else
  {
    v9 = sub_100088A88;
  }

  return _swift_task_switch(v9, v8, v7);
}

void sub_100088A88()
{
  v1 = v0[26];
  v2 = v0[19];

  static Task<>.checkCancellation()();
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  if (v1)
  {
    sub_100096670(v0[6], type metadata accessor for SupportSolutions);
    v8 = *(v4 + 8);
    v7 = (v4 + 8);
    v9 = sub_100096B1C();
    v10(v9);
    sub_100096EB0();
    swift_errorRetain();
    Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100096CB8();
    if (sub_100096E98())
    {
      sub_10002B114();
      v6 = sub_100096944();
      sub_100096C88(5.7779e-34);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      sub_100096A88(v11);
      sub_100096980(&_mh_execute_header, v12, v13, "Fetching solutions failed or cancelled: %@");
      sub_10000ABCC(v6, &qword_100189390, &qword_1001241D0);
      sub_1000968EC();
      sub_1000968D0();
    }

    sub_100096ACC();
    v14 = sub_100096B1C();
    v7(v14);
    *v6 = v1;
    sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100096AAC();
    v15 = sub_100096A14();
    sub_100096D30(v15, v16, v17, v3);
    swift_errorRetain();
    sub_10008A374(v6);
  }

  else
  {
    v18 = v0[2];
    v19 = v0[3];
    sub_1000967A0();
    v20 = sub_100096DAC();
    sub_100096614(v20, v21, v22);
    v23 = sub_100003768(&qword_10018E458, &qword_100129E90);
    swift_storeEnumTagMultiPayload();
    v24 = sub_100096D30(v19, 0, 2, v23);
    sub_10008A374(v24);
    sub_100096724();
    sub_100096670(v6, v25);
    v26 = *(v4 + 8);
    v27 = sub_100096B1C();
    v28(v27);
  }

  sub_10009683C();

  sub_10000875C();
  sub_100096DCC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100088CC8()
{
  v2 = v0[19];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  (*(v4 + 8))(v3, v5);
  v6 = v0[26];
  sub_100096EB0();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    sub_10002B114();
    v9 = sub_100096944();
    *v1 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    sub_100096A88(v10);
    sub_100096B70(&_mh_execute_header, v7, v8, "Fetching solutions failed or cancelled: %@");
    sub_10000ABCC(v9, &qword_100189390, &qword_1001241D0);
    sub_1000968EC();
    sub_1000968D0();
  }

  v11 = v0[24];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];
  v15 = v0[2];
  v16 = v0[3];

  v17 = sub_100096A5C();
  v11(v17);
  *v16 = v6;
  v18 = sub_100003768(&qword_10018E458, &qword_100129E90);
  sub_100096DAC();
  swift_storeEnumTagMultiPayload();
  v19 = sub_100096A14();
  sub_100003CE8(v19, v20, v21, v18);
  swift_errorRetain();
  sub_10008A374(v16);

  sub_10009683C();

  sub_10000875C();

  return v22();
}

id sub_100088EB4()
{
  result = [objc_opt_self() supportsFaceID];
  byte_1001A57A0 = result;
  return result;
}

uint64_t sub_100088EE8()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = sub_10000ED84(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = objc_allocWithZone(type metadata accessor for ContentMessageViewModel());
  sub_100096D48();
  result = ContentMessageViewModel.init(title:message:symbolName:)();
  qword_1001A57A8 = result;
  return result;
}

void sub_100089078()
{
  sub_100017C00();
  v2 = v0;
  v109 = v3;
  v4 = sub_100003768(&qword_10018E480, &qword_100129F40);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  sub_10000ED78();
  __chkstk_darwin(v7);
  v112 = &v106 - v8;
  v9 = sub_100003768(&qword_10018E490, &qword_100129F70);
  v10 = sub_10000ED84(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100012454();
  v111 = v13 - v14;
  __chkstk_darwin(v15);
  v110 = &v106 - v16;
  v17 = sub_100003768(&qword_10018A310, &unk_1001241F0);
  v18 = sub_10000ED84(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100012454();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = type metadata accessor for SupportFlowBiomeManager();
  v28 = sub_100008780(v27);
  v107 = v29;
  v108 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_10000C30C();
  v34 = v33 - v32;
  v35 = type metadata accessor for NavigationPath();
  v36 = sub_100008780(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  sub_10000C30C();
  sub_100096A30();
  DeviceEventCoordinator.init()();
  v41 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_serviceStatusCoordinator;
  type metadata accessor for ServiceStatusCoordinator();
  swift_allocObject();
  *(v0 + v41) = sub_10007815C();
  v42 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator;
  v43 = type metadata accessor for SupportContentCoordinator();
  sub_100096E68(v43);
  sub_10005259C();
  *(v0 + v42) = v44;
  v45 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_tipsContentManager;
  *(v2 + v45) = [objc_allocWithZone(TPSFullTipContentManager) init];
  v46 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_welcomeContentProvider;
  LaunchWelcomeProvider = type metadata accessor for FlowViewDataProvider.FirstLaunchWelcomeProvider(0);
  v48 = sub_100096E68(LaunchWelcomeProvider);
  sub_1000935C4();
  *(v2 + v46) = v48;
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel) = 0;
  type metadata accessor for SupportFlowSession();
  v49 = sub_100096808();
  v106 = v50;
  sub_100003CE8(v49, v51, v52, v50);
  v53 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient;
  v54 = type metadata accessor for SupportFlowSessionAnalyticsClient();
  sub_100096E68(v54);
  *(v2 + v53) = SupportFlowSessionAnalyticsClient.init()();
  type metadata accessor for EntryPoint();
  v55 = sub_100096808();
  v57 = v56;
  sub_100003CE8(v55, v58, v59, v56);
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__userDidAcknowledgeWelcome) = 0;
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel) = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FlowViewDataProvider(0);
  v60 = sub_10008AAA4();
  v61 = (v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__language);
  *v61 = v60;
  v61[1] = v62;
  v63 = [objc_opt_self() defaultStore];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 aa_primaryAppleAccount];

    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount) = v65;
    type metadata accessor for URL();
    v66 = sub_100096808();
    sub_100003CE8(v66, v67, v68, v69);
    NavigationPath.init()();
    (*(v38 + 32))(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath, v1, v35);
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__isSearching) = 0;
    v70 = (v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchText);
    *v70 = 0;
    v70[1] = 0xE000000000000000;
    type metadata accessor for SupportFlowIdentifier();
    v71 = sub_100096808();
    sub_100003CE8(v71, v72, v73, v74);
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem) = 0;
    v75 = (v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
    *v75 = 0;
    v75[1] = 0;
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__mainSection) = 0;
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__suggestedSection) = 0;
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__sections) = _swiftEmptyArrayStorage;
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    sub_100052F8C();
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap) = Dictionary.init(dictionaryLiteral:)();
    sub_100025778(0, &qword_10018E478, TPSTip_ptr);
    sub_100052F8C();
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__stepMap) = Dictionary.init(dictionaryLiteral:)();
    v76 = v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowContentLoadingState;
    *v76 = 0;
    *(v76 + 8) = -1;
    v77 = v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceStatusLoadingState;
    *v77 = 0;
    *(v77 + 8) = -1;
    v78 = v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__articlesLoadingState;
    *v78 = 0;
    *(v78 + 8) = -1;
    v79 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__solutionsLoadingState;
    v80 = sub_100003768(&qword_10018E458, &qword_100129E90);
    sub_100003CE8(v2 + v79, 1, 2, v80);
    *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask) = 0;
    ObservationRegistrar.init()();
    v81 = v109;
    v82 = sub_100096CF4();
    sub_10000AB80(v82, v83, v84, v85);
    v86 = type metadata accessor for DeepLinkContext();
    sub_10000ED90(v26);
    if (v87)
    {
      sub_10000ABCC(v26, &qword_10018A310, &unk_1001241F0);
    }

    else
    {
      v88 = &v26[*(v86 + 24)];
      v89 = *v88;
      v90 = *(v88 + 1);

      sub_100096920();
      sub_100096670(v26, v91);
    }

    SupportFlowBiomeManager.init(sessionId:version:)();
    (*(v107 + 32))(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager, v34, v108);
    sub_10000AB80(v81, v23, &qword_10018A310, &unk_1001241F0);
    sub_10000ED90(v23);
    if (v87)
    {
      sub_10000ABCC(v23, &qword_10018A310, &unk_1001241F0);
    }

    else
    {
      v92 = (v23 + *(v86 + 28));
      v93 = *v92;
      v94 = v92[1];

      sub_100096920();
      sub_100096670(v23, v95);
    }

    v96 = v110;
    EntryPoint.init(bundleIdentifier:)();
    sub_100096B34();
    sub_100003CE8(v97, v98, v99, v57);
    v100 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint;
    sub_100096A24();
    swift_beginAccess();
    sub_1000961A0(v96, v2 + v100, &qword_10018E490, &qword_100129F70);
    swift_endAccess();
    SupportFlowBiomeManager.sessionId.getter();
    sub_10000AB80(v2 + v100, v111, &qword_10018E490, &qword_100129F70);
    v101 = v112;
    sub_100096D88();
    SupportFlowSession.init(sessionId:entryPoint:)();
    sub_10000ABCC(v81, &qword_10018A310, &unk_1001241F0);
    sub_100096B34();
    sub_100003CE8(v102, v103, v104, v106);
    v105 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession;
    sub_100096A24();
    swift_beginAccess();
    sub_1000961A0(v101, v2 + v105, &qword_10018E480, &qword_100129F40);
    swift_endAccess();
    sub_100017C18();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100089838(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__userDidAcknowledgeWelcome) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__userDidAcknowledgeWelcome) = v2;
  }

  else
  {
    swift_getKeyPath();
    sub_100096B40();
    __chkstk_darwin(v3);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100093748(v5, sub_100095ED0, v6, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  }

  return result;
}

void sub_100089910(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel;
  v5 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel);
  type metadata accessor for SearchResultsViewModel();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v9);
    sub_100096768();
    *(v10 - 16) = v2;
    *(v10 - 8) = a1;
    sub_100093748(v11, sub_100095E68, v12, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    sub_100096B10();
  }
}

void sub_100089A64(void *a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount;
  v4 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount);
  v5 = sub_100096908();
  v9 = sub_10009090C(v5, v6, v7, v8);

  if (v9)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v10);
    sub_100096754();
    sub_100093748(v11, sub_100095DA4, v12, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    sub_100096B10();
  }

  else
  {
    v13 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_100089B88()
{
  sub_100017C00();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for NavigationPath();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  sub_100096A30();
  v11 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  sub_100052F98();
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v1, v2 + v11, v5);
  sub_10009531C(&qword_10018DA38, &type metadata accessor for NavigationPath);
  sub_100096BB8();
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v8 + 8);
  v13(v1, v5);
  if (v11)
  {
    v14 = sub_100096BB8();
    (v12)(v14);
    sub_10008B1A0(v1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096768();
    *(v16 - 16) = v2;
    *(v16 - 8) = v4;
    sub_100093748(v17, sub_100095CD8, v18, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  }

  v13(v4, v5);
  sub_100017C18();
}

uint64_t sub_100089D90(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__isSearching) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__isSearching) = v2;

    return sub_10008B4D4();
  }

  else
  {
    swift_getKeyPath();
    sub_100096B40();
    __chkstk_darwin(v3);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100093748(v5, sub_100095C98, v6, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  }
}

void sub_100089EB0()
{
  sub_100096D74();
  v3 = v1;
  v5 = v4;
  v7 = (v0 + *v6);
  v8 = *v7 == v4 && v7[1] == v1;
  if (v8 || (v9 = v2, v10 = v7[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v7 = v5;
    v7[1] = v3;
    sub_100053050();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10009673C();
    sub_100093748(v13, v9, v14, v15, v16, v17);

    sub_100053050();
  }
}

void sub_10008A010(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap;
  v4 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap);

  sub_100113D60(v5, a1);
  v7 = v6;

  if (v7)
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;

    sub_10008C73C();
  }

  else
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v9);
    sub_100096754();
    sub_100093748(v10, sub_10009596C, v11, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    sub_100096B10();
  }
}

void sub_10008A16C()
{
  sub_100096D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *v7;
  v9 = *(v0 + *v7);

  LOBYTE(v4) = v4(v10, v6);

  if (v4)
  {
    v11 = *(v0 + v8);
    *(v0 + v8) = v6;
    sub_100053050();
  }

  else
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v13);
    sub_100096754();
    sub_10009673C();
    sub_100093748(v14, v2, v15, v16, v17, v18);

    sub_100053050();
  }
}

uint64_t sub_10008A2B4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v14 = v4;
  v15 = a1;
  v16 = a2;
  sub_10009673C();
  sub_100093748(v8, a4, &v13, v9, v10, v11);
  sub_1000955BC(a1, a2);
}

uint64_t sub_10008A374(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_100093748(KeyPath, sub_100095508, &v5, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

  return sub_10000ABCC(a1, &qword_10018DA20, &qword_100129760);
}

void sub_10008A444(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10008A474(v2);
}

void sub_10008A474(void *a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel;
  v4 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel);
  v5 = sub_100096908();
  v7 = sub_100090890(v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v8);
    sub_100096754();
    sub_100093748(v9, sub_100095F60, v10, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    sub_100096B10();
  }

  else
  {
    v11 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_10008A588(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__contentMessageViewModel) = a2;
  v3 = a2;
}

uint64_t (*sub_10008A620())()
{
  sub_100096A24();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10008A680()
{
  v1 = v0;
  v2 = sub_100003768(&qword_10018E480, &qword_100129F40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22[-v4];
  v6 = sub_100003768(&qword_10018E490, &qword_100129F70);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v22[-v11];
  v13 = type metadata accessor for EntryPoint();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint;
  swift_beginAccess();
  sub_10000AB80(v1 + v18, v12, &qword_10018E490, &qword_100129F70);
  if (sub_10000E5F0(v12, 1, v13) == 1)
  {
    return sub_10000ABCC(v12, &qword_10018E490, &qword_100129F70);
  }

  (*(v14 + 32))(v17, v12, v13);
  SupportFlowBiomeManager.sessionId.getter();
  (*(v14 + 16))(v10, v17, v13);
  sub_100003CE8(v10, 0, 1, v13);
  SupportFlowSession.init(sessionId:entryPoint:)();
  (*(v14 + 8))(v17, v13);
  v20 = type metadata accessor for SupportFlowSession();
  sub_100003CE8(v5, 0, 1, v20);
  v21 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession;
  swift_beginAccess();
  sub_1000961A0(v5, v1 + v21, &qword_10018E480, &qword_100129F40);
  return swift_endAccess();
}

id sub_10008A9A0()
{
  swift_getKeyPath();
  sub_10009670C();
  v3 = sub_10009531C(v1, v2);
  sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_100096E80();

  v11 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel);

  return v11;
}

void sub_10008AA68(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchResultsViewModel) = a2;
  v3 = a2;
}

uint64_t sub_10008AAA4()
{
  v0 = static Locale.preferredLanguages.getter();
  if (v0[2])
  {
    v2 = v0[4];
    v1 = v0[5];
  }

  else
  {
    v2 = 28261;
  }

  return v2;
}

BOOL sub_10008AB14()
{
  v1 = sub_10008CA44();
  if (v2 < 0xFEu)
  {
    sub_1000955BC(v1, v2);
    return 0;
  }

  else
  {
    v3 = sub_10008C6FC();
    sub_100114850(v3);
    sub_10006F37C();

    return v0 == 0;
  }
}

void sub_10008AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v21;
  a20 = v22;
  v23 = sub_100003768(&qword_10018DA20, &qword_100129760);
  sub_10000ED84(v23);
  v25 = *(v24 + 64);
  sub_10000ED78();
  __chkstk_darwin(v26);
  sub_100096A30();
  v27 = sub_100003768(&qword_10018E458, &qword_100129E90);
  v28 = sub_10000AF7C(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_100012454();
  v33 = (v31 - v32);
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = sub_10008CA58();
  v39 = v38;
  sub_1000955BC(v37, v38);
  if (v39 > 0xFD)
  {
    goto LABEL_7;
  }

  v40 = sub_10008CA44();
  v42 = v41;
  sub_100096D18();
  if (!v44 & v43)
  {
LABEL_6:
    sub_1000955BC(v40, v42);
    goto LABEL_7;
  }

  v45 = sub_10008CA6C();
  v47 = v46;
  sub_100096D18();
  if (!v44 & v43)
  {
    sub_1000955BC(v45, v47);
    goto LABEL_6;
  }

  sub_10008CBB8();
  if (sub_10000E5F0(v20, 2, v27))
  {
    sub_1000955BC(v40, v42);
    sub_1000955BC(v45, v47);
    sub_10000ABCC(v20, &qword_10018DA20, &qword_100129760);
  }

  else
  {
    v49 = sub_100025A88();
    sub_10000AB34(v49, v50, v51, v52);
    if (v42)
    {
      sub_1000955BC(v45, v47);
      sub_10000ABCC(v36, &qword_10018E458, &qword_100129E90);
    }

    else
    {
      if ((v47 & 1) == 0)
      {
        if (static Bool.isInternal.getter())
        {
          v53 = v36;
        }

        else
        {
          v54 = sub_100096DAC();
          sub_10000AB34(v54, v55, v56, v57);
          sub_100096D48();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v58 = *v33;
            goto LABEL_7;
          }

          v53 = v33;
        }

        sub_10000ABCC(v53, &qword_10018E458, &qword_100129E90);
        goto LABEL_7;
      }

      sub_10000ABCC(v36, &qword_10018E458, &qword_100129E90);
    }
  }

LABEL_7:
  sub_100017C18();
}

uint64_t sub_10008ADD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  v4 = *(v3 + 80);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
}

void sub_10008AE04(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100089A64(v2);
}

void sub_10008AE34(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__primaryAccount) = a2;
  v3 = a2;
}

void sub_10008AEE0()
{
  sub_100096D74();
  v1 = v0;
  v2 = sub_100096D94();
  v4 = sub_100003768(v2, v3);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_100017BAC();
  sub_100052F98();
  swift_beginAccess();
  sub_100096BE8();
  sub_10000AB80(v8, v9, v10, v11);
  v12 = sub_100096908();
  v14 = sub_100090590(v12, v13);
  v15 = sub_100096D48();
  sub_10000ABCC(v15, v16, &unk_100122AE0);
  if (v14)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v17);
    sub_100096754();
    sub_100093748(v18, sub_100095D44, v19, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  }

  else
  {
    sub_100077FE8();
    sub_100096BE8();
    sub_10000AB80(v20, v21, v22, v23);
    sub_100096A24();
    swift_beginAccess();
    sub_100096BE8();
    sub_1000961A0(v24, v25, v26, v27);
    swift_endAccess();
  }

  sub_10000ABCC(v1, &qword_100188EE0, &unk_100122AE0);
  sub_100053050();
}

uint64_t sub_10008B070()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10008A620();
  v7 = v6;
  v8 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v7, 1, v8))
  {
    sub_10008B260(v4);
    NavigationPath.count.getter();
    (*(v1 + 8))(v4, v0);
    SupportFlowSession.lastScreen.setter();
  }

  return (v5)(v10, 0);
}

uint64_t sub_10008B1A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  sub_1000969C8();
  swift_beginAccess();
  v4 = type metadata accessor for NavigationPath();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_10008B070();
  v6 = *(v5 + 8);
  v7 = sub_100077FE8();
  return v8(v7);
}

uint64_t sub_10008B260@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_10009670C();
  sub_10009531C(v3, v4);
  sub_10009681C();

  v5 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  sub_100052F98();
  swift_beginAccess();
  v6 = type metadata accessor for NavigationPath();
  sub_10000AF7C(v6);
  return (*(v7 + 16))(a1, v9 + v5);
}

void sub_10008B350(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = sub_100008780(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  sub_100096914();
  v8 = *(v7 + 16);
  v9 = sub_100096BC4();
  v10(v9);
  v11 = *a2;
  sub_100089B88();
}

uint64_t sub_10008B400(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationPath();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  return sub_10008B1A0(v6);
}

uint64_t sub_10008B4D4()
{
  if ((sub_10008B570() & 1) == 0)
  {
    v0 = sub_10008A9A0();
    dispatch thunk of SearchResultsViewModel.reset()();
  }

  v1 = sub_10008A620();
  v3 = v2;
  v4 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v3, 1, v4))
  {
    SupportFlowSession.hasPerformedSearch.setter();
  }

  return (v1)(&v6, 0);
}

uint64_t sub_10008B584()
{
  sub_100096CA0();
  sub_10009670C();
  sub_10009531C(v2, v3);
  sub_10009681C();

  return *(v1 + *v0);
}

uint64_t sub_10008B5FC(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_10008B570();
  return sub_100096CE8(v1);
}

uint64_t sub_10008B648()
{
  sub_10008CA44();
  sub_100096D18();
  if (!(!v3 & v2) && (v1 & 1) == 0)
  {
    return 1;
  }

  sub_1000955BC(v0, v1);
  return 0;
}

uint64_t sub_10008B690()
{
  sub_100096CA0();
  sub_10009670C();
  sub_10009531C(v2, v3);
  sub_10009681C();

  v4 = (v1 + *v0);
  v5 = *v4;
  v6 = v4[1];

  return sub_10000AFAC();
}

uint64_t sub_10008B718(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008B67C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_10008B758(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = sub_100096B28();
  return a5(v9);
}

uint64_t sub_10008B79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + *a4);
  v5 = v4[1];
  *v4 = a2;
  v4[1] = a3;
}

void sub_10008B7E0()
{
  v1 = v0;
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = sub_10008A620();
  v13 = v12;
  v14 = type metadata accessor for SupportFlowSession();
  if (!sub_10000E5F0(v13, 1, v14))
  {
    sub_10008BCE0();
    SupportFlowSession.currentFlowId.setter();
  }

  (v11)(v46, 0);
  v15 = sub_10008A620();
  v17 = v16;
  if (sub_10000E5F0(v16, 1, v14))
  {
    (v15)(v46, 0);
    return;
  }

  v18 = sub_10008C4CC();
  if (!v18)
  {
LABEL_25:
    SupportFlowSession.featuredTopic.setter();
    (v15)(v46, 0);
    return;
  }

  v19 = v18;
  v36 = v17;
  v37 = v15;
  v43 = v1;
  v20 = [v18 collections];

  sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = sub_100114850(v21);
  v23 = 0;
  v44 = v21 & 0xFFFFFFFFFFFFFF8;
  v45 = v21 & 0xC000000000000001;
  v39 = (v3 + 8);
  v40 = (v3 + 16);
  v38 = v22;
  v41 = v21;
  while (1)
  {
    if (v22 == v23)
    {
LABEL_23:

      goto LABEL_24;
    }

    if (v45)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v44 + 16))
      {
        goto LABEL_27;
      }

      v24 = *(v21 + 8 * v23 + 32);
    }

    v25 = v24;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v26 = [v24 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_10008BCE0();
    if (sub_10000E5F0(v10, 1, v2))
    {
      sub_10000ABCC(v10, &unk_10018A300, &unk_1001241E0);

      goto LABEL_19;
    }

    v30 = v42;
    (*v40)(v42, v10, v2);
    sub_10000ABCC(v10, &unk_10018A300, &unk_1001241E0);
    v31 = SupportFlowIdentifier.rawValue.getter();
    v33 = v32;
    (*v39)(v30, v2);
    if (v27 == v31 && v29 == v33)
    {

LABEL_24:
      v15 = v37;
      goto LABEL_25;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v22 = v38;
    v21 = v41;
    if (v35)
    {
      goto LABEL_23;
    }

LABEL_19:
    ++v23;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10008BC60(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v10 = *a2;
  sub_1000969C8();
  swift_beginAccess();
  sub_100095EE8(a1, v5 + v10, a3, a4);
  v11 = swift_endAccess();
  a5(v11);
  v12 = sub_100096B50();
  return sub_10000ABCC(v12, v13, v14);
}

uint64_t sub_10008BD04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = sub_100003768(a5, a6);
  sub_10000ED84(v12);
  v14 = *(v13 + 64);
  sub_10000ED78();
  __chkstk_darwin(v15);
  sub_1000969F4();
  v16 = sub_100025A88();
  sub_10000AB80(v16, v17, a5, a6);
  v18 = *a2;
  return a7(v7);
}

uint64_t sub_10008BD9C(uint64_t a1)
{
  v3 = sub_100096D94();
  v5 = sub_100003768(v3, v4);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_100017BAC();
  sub_100052F98();
  swift_beginAccess();
  sub_100096BE8();
  sub_10000AB80(v9, v10, v11, v12);
  v13 = sub_100096908();
  v15 = sub_100090234(v13, v14);
  v16 = sub_100096D48();
  sub_10000ABCC(v16, v17, &unk_1001241E0);
  if (v15)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v18);
    sub_100096754();
    sub_100093748(v19, sub_100095BB4, v20, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  }

  else
  {
    v21 = sub_100077FE8();
    sub_10000AB80(v21, v22, v23, v24);
    sub_10008BC30(v1);
  }

  return sub_10000ABCC(a1, &unk_10018A300, &unk_1001241E0);
}

uint64_t sub_10008BF18(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - v5;
  sub_10000AB80(a2, &v8 - v5, &unk_10018A300, &unk_1001241E0);
  return sub_10008BC30(v6);
}

uint64_t sub_10008BFCC()
{
  swift_getKeyPath();
  sub_10009670C();
  v3 = sub_10009531C(v1, v2);
  sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_100096E80();

  v11 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem);
}

void sub_10008C05C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_10008C088(v4);
}

void sub_10008C088(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem;
  v4 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem);
  v5 = sub_100096908();
  if (sub_100090534(v5, v6))
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v7);
    sub_100096754();
    sub_100093748(v8, sub_100095B38, v9, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    sub_100096B10();
  }

  else
  {
    *(v1 + v3) = a1;
  }
}

uint64_t sub_10008C190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem) = a2;
}

uint64_t sub_10008C1D4()
{
  swift_getKeyPath();
  sub_10009670C();
  v3 = sub_10009531C(v1, v2);
  sub_100096938(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  sub_100096E80();

  v11 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
  v12 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId + 8);

  return sub_10000AFAC();
}

void sub_10008C270(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_10008C2B0();
}

void sub_10008C2B0()
{
  sub_100096B04();
  v3 = (v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
  if (sub_100080F60(*(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId), *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId + 8), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v0;
    sub_100093748(v5, sub_100095AEC, v6, &OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar, &qword_1001886D0, type metadata accessor for FlowViewDataProvider);

    sub_100096B10();
  }

  else
  {
    *v3 = v2;
    v3[1] = v0;
  }
}

uint64_t sub_10008C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId);
  v4 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId + 8);
  *v3 = a2;
  v3[1] = a3;
}

void sub_10008C438(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_10008C468();
}

void sub_10008C490(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__mainSection);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__mainSection) = a2;
  v3 = a2;
}

void *sub_10008C4E0()
{
  sub_100096CA0();
  sub_10009670C();
  sub_10009531C(v2, v3);
  sub_10009681C();

  v4 = *(v1 + *v0);
  v5 = v4;
  return v4;
}

void sub_10008C560(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_10008C590();
}

void sub_10008C5B8()
{
  sub_100096D74();
  v2 = v1;
  v4 = v3;
  v6 = *v5;
  v7 = *(v0 + *v5);
  v8 = sub_100096BB8();
  v12 = sub_10009090C(v8, v9, v10, v11);

  if (v12)
  {
    swift_getKeyPath();
    sub_1000967E8();
    __chkstk_darwin(v13);
    sub_100096754();
    sub_10009673C();
    sub_100093748(v14, v2, v15, v16, v17, v18);

    sub_100053050();
  }

  else
  {
    v19 = *(v0 + v6);
    *(v0 + v6) = v4;
    sub_100053050();
  }
}

void sub_10008C6C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__suggestedSection);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__suggestedSection) = a2;
  v3 = a2;
}

void sub_10008C710(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_100089FD4();
}

uint64_t sub_10008C73C()
{
  v0 = sub_10008A9A0();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of SearchResultsViewModel.searchResultCollectionResolver.setter();

  v1 = sub_10008A9A0();

  dispatch thunk of SearchResultsViewModel.searchResultSelected.setter();

  v2 = sub_10008A9A0();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of SearchResultsViewModel.supportArticleURLHandler.setter();

  v3 = sub_10008A9A0();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of SearchResultsViewModel.searchResultsSeeAllHandler.setter();
}

void sub_10008C8D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_10008A010(v4);
}

uint64_t sub_10008C8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap);
  *(a1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap) = a2;

  return sub_10008C73C();
}

uint64_t sub_10008C95C()
{
  sub_100096CA0();
  sub_10009670C();
  sub_10009531C(v2, v3);
  sub_10009681C();

  v4 = *(v1 + *v0);
}

void sub_10008C9D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_10008A130();
}

uint64_t sub_10008CA04(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  *(a1 + *a3) = a2;
}

uint64_t sub_10008CA80()
{
  sub_100096CA0();
  sub_10009670C();
  sub_10009531C(v2, v3);
  sub_10009681C();

  v4 = (v1 + *v0);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = sub_10000AFAC();
  sub_1000955E0(v7, v8);
  return sub_10000AFAC();
}

uint64_t sub_10008CB0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a1 + 8);
  sub_1000955E0(*a1, v8);
  return a5(v6, v8);
}

uint64_t sub_10008CB5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4)
{
  v4 = a1 + *a4;
  v5 = *v4;
  *v4 = a2;
  v6 = *(v4 + 8);
  *(v4 + 8) = a3;
  sub_1000955E0(a2, a3);
  return sub_1000955BC(v5, v6);
}

uint64_t sub_10008CBDC()
{
  sub_100096DA0();
  v4 = v3;
  v5 = v1;
  v7 = v6;
  swift_getKeyPath();
  sub_10009670C();
  v10 = sub_10009531C(v8, v9);
  sub_100096938(v10, v11, v12, v13, v14, v15, v16, v17, v20, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *v4;
  sub_100052F98();
  swift_beginAccess();
  return sub_10000AB80(v5 + v18, v7, v2, v0);
}

uint64_t sub_10008CCA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  sub_1000969C8();
  swift_beginAccess();
  sub_100095EE8(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

void sub_10008CD18()
{
  sub_100017C00();
  v3 = v0;
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_100096A04();
  v8 = type metadata accessor for EntryPoint();
  v9 = sub_100008780(v8);
  v47 = v10;
  v48 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10000C30C();
  v15 = v14 - v13;
  v16 = sub_100003768(&qword_10018E490, &qword_100129F70);
  sub_10000ED84(v16);
  v18 = *(v17 + 64);
  sub_10000ED78();
  __chkstk_darwin(v19);
  sub_100017BAC();
  v20 = type metadata accessor for Logger();
  v21 = sub_100008780(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_10000C30C();
  sub_100096A30();
  static Logger.supportFlowApp.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v46 = v20;
    v28 = sub_10002B114();
    v29 = sub_100018FBC();
    *v28 = 136315138;
    v30 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint;
    sub_100052F98();
    swift_beginAccess();
    sub_10000AB80(v3 + v30, v1, &qword_10018E490, &qword_100129F70);
    if (sub_10000E5F0(v1, 1, v48))
    {
      sub_10000ABCC(v1, &qword_10018E490, &qword_100129F70);
      v31 = 0x6E776F6E6B6E75;
    }

    else
    {
      v32 = *(v47 + 16);
      v33 = sub_100096DAC();
      v34(v33);
      sub_10000ABCC(v1, &qword_10018E490, &qword_100129F70);
      v31 = EntryPoint.rawValue.getter();
      (*(v47 + 8))(v15, v48);
    }

    v35 = sub_100096BC4();
    sub_10009CACC(v35, v36, v37);
    sub_100096D24();

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Initializing Flow List with entry point: %s", v28, 0xCu);
    sub_1000086BC(v29);
    sub_100008744();
    sub_100008744();

    (*(v23 + 8))(v2, v46);
  }

  else
  {

    (*(v23 + 8))(v2, v20);
  }

  type metadata accessor for TaskPriority();
  sub_100053004();
  sub_100003CE8(v38, v39, v40, v41);
  type metadata accessor for MainActor();
  sub_10006F37C();

  v42 = static MainActor.shared.getter();
  sub_1000969E8();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = &protocol witness table for MainActor;
  v43[4] = v3;
  sub_100096B60();
  sub_100085200();
  v44 = *(v3 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask);
  *(v3 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask) = v45;

  sub_100017C18();
}

uint64_t sub_10008D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for DefaultFlowOverride() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for SupportFlowIdentifier();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_10008D21C;

  return sub_10008E4CC();
}

uint64_t sub_10008D21C()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008D33C()
{
  sub_10004F4F8();
  v1 = v0[8];

  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    v3 = v0[3];
    v2 = v0[4];

    sub_1000FB088(v3);
    sub_100096960(v3);
    if (v4)
    {
      v5 = v0[3];

      sub_100096670(v5, type metadata accessor for DefaultFlowOverride);
    }

    else
    {
      v6 = v0[5];
      v7 = v0[2];
      (*(v6 + 32))(v0[6], v0[3], v0[4]);
      sub_10008D4A8();

      v8 = *(v6 + 8);
      v9 = sub_100096A5C();
      v10(v9);
    }
  }

  v11 = v0[6];
  v12 = v0[2];
  v13 = v0[3];
  v14 = *(v12 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask);
  *(v12 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask) = 0;

  sub_10000875C();

  return v15();
}

uint64_t sub_10008D4A8()
{
  swift_getKeyPath();
  sub_10009531C(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  type metadata accessor for SupportFlowIdentifier();
  sub_10009531C(&qword_10018E498, &type metadata accessor for SupportFlowIdentifier);
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  sub_10008B070();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void sub_10008D638()
{
  swift_getKeyPath();
  sub_10009670C();
  sub_10009531C(v0, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  sub_1000969C8();
  swift_beginAccess();
  sub_100096B28();
  NavigationPath.append<A>(_:)();
  swift_endAccess();
  sub_10008B070();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_100096B28();
  sub_1000900A8();
}

id sub_10008D788(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_100096B04();
  sub_10008C948();
  v2 = sub_100096908();
  v3 = sub_100083BC4(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 fullContent];

  return v4;
}

uint64_t sub_10008D804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008BFCC();
  if (v4)
  {
    sub_10008C1D4();
    if (v5)
    {

      v6 = sub_10008C1D4();
      if (!v7)
      {
LABEL_9:

        return 0;
      }

      if (v6 == a1 && v7 == a2)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    sub_100096B28();
    sub_10008C2B0();
  }

  return v4;
}

uint64_t sub_10008D8BC()
{
  sub_100025A94();
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  sub_100052F6C(v2);
  v1[7] = v3;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_100003768(&qword_10018E480, &qword_100129F40);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  v1[10] = sub_100052FA4();
  v9 = type metadata accessor for SupportFlowSession();
  v1[11] = v9;
  sub_100052F6C(v9);
  v1[12] = v10;
  v12 = *(v11 + 64);
  v1[13] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[14] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[15] = v13;
  v1[16] = v14;
  v15 = sub_100096AEC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10008DA14()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession;
  sub_100052F98();
  swift_beginAccess();
  sub_10000AB80(v3 + v4, v2, &qword_10018E480, &qword_100129F40);
  if (sub_10000E5F0(v2, 1, v1) == 1)
  {
    v5 = v0[9];
    v6 = v0[14];
    v7 = v0[10];

    sub_10000ABCC(v7, &qword_10018E480, &qword_100129F40);
    static Logger.supportFlowApp.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Cannot update session: currentSession is nil", v10, 2u);
      sub_100008744();
    }

    v13 = v0[13];
    v14 = v0[9];
    v15 = v0[8];
    (*(v0[7] + 8))(v14, v0[6]);

    sub_10000875C();
    sub_100096DCC();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v11 = type metadata accessor for JSONEncoder();
  sub_100096E68(v11);
  JSONEncoder.init()();
  sub_10009531C(&qword_10018E488, &type metadata accessor for SupportFlowSession);
  sub_100077FE8();
  v0[17] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[18] = v12;
  v18 = v0[5];

  v0[19] = *(v18 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);

  SupportFlowBiomeManager.sessionId.getter();
  v0[20] = v19;
  v20 = async function pointer to SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)[1];
  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  sub_100062F48(v21);
  sub_100096DCC();

  return SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)(v22, v23, v24, v25);
}

uint64_t sub_10008DDE0()
{
  sub_100025A94();
  sub_10004622C();
  v3 = v2;
  sub_100052FD4();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_10000870C();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {
    v9 = v3[15];
    v10 = v3[16];
    v11 = sub_10008DF88;
  }

  else
  {
    v13 = v3[19];
    v12 = v3[20];

    v9 = v3[15];
    v10 = v3[16];
    v11 = sub_10008DEEC;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10008DEEC()
{
  sub_10003DCD8();
  v1 = v0[14];
  sub_100008408(v0[17], v0[18]);

  v2 = sub_100096BA0();
  v3(v2);

  sub_10000875C();

  return v4();
}

uint64_t sub_10008DF88()
{
  sub_10004F4F8();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  sub_100008408(v4, v3);
  v6 = v0[22];
  v7 = v0[8];
  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    sub_10002B114();
    v10 = sub_100096944();
    *v4 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_100096A88(v11);
    sub_100096B70(&_mh_execute_header, v8, v9, "Failed to encode currentSession with JSON encoding: %@");
    sub_10000ABCC(v10, &qword_100189390, &qword_1001241D0);
    sub_1000968EC();
    sub_1000968D0();
  }

  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];

  v15 = *(v13 + 8);
  v16 = sub_100096A5C();
  v17(v16);
  v18 = sub_100096BA0();
  v19(v18);

  sub_10000875C();

  return v20();
}

void sub_10008E114()
{
  sub_100096D74();
  v3 = v2;
  v4 = sub_100025A88();
  v6 = sub_100003768(v4, v5);
  sub_10000ED84(v6);
  v8 = *(v7 + 64);
  sub_10000ED78();
  __chkstk_darwin(v9);
  sub_1000967F8();
  v10 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v10);
  v12 = *(v11 + 64);
  sub_10000ED78();
  __chkstk_darwin(v13);
  sub_100096A04();
  v14 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v14);
  v16 = *(v15 + 64);
  sub_10000ED78();
  __chkstk_darwin(v17);
  sub_100017BAC();
  sub_10008CBB8();
  sub_1000912CC(v1);
  sub_100096C50();
  v18 = type metadata accessor for SupportSolutions(0);
  sub_10000ED90(v1);
  if (v25)
  {
    sub_10000ABCC(v1, &qword_10018DA28, &unk_100129768);
    type metadata accessor for URL();
    v19 = sub_1000967B8();
    sub_100003CE8(v19, v20, v21, v22);
  }

  else
  {
    sub_10000AB80(v1 + *(v18 + 28), v0, &qword_100188EE0, &unk_100122AE0);
    sub_100096724();
    sub_100096670(v1, v23);
    v24 = type metadata accessor for URL();
    sub_10000ED90(v0);
    if (!v25)
    {
      sub_100012448(v24);
      v29 = *(v28 + 32);
      v30 = sub_100077FE8();
      v31(v30);
      goto LABEL_10;
    }
  }

  if (qword_1001880F8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for URL();
  sub_10000C2D4(v26, qword_1001A5680);
  sub_100012448(v26);
  (*(v27 + 16))(v3);
  sub_10000ED90(v0);
  if (!v25)
  {
    sub_10000ABCC(v0, &qword_100188EE0, &unk_100122AE0);
  }

LABEL_10:
  sub_100053050();
}

void sub_10008E36C()
{
  sub_100096D74();
  v1 = sub_100025A88();
  v3 = sub_100003768(v1, v2);
  sub_10000ED84(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000967F8();
  v7 = sub_100003768(&qword_10018DA28, &unk_100129768);
  sub_10000ED84(v7);
  v9 = *(v8 + 64);
  sub_10000ED78();
  __chkstk_darwin(v10);
  sub_100096A04();
  sub_10008CBB8();
  sub_1000912CC(v0);
  sub_100096C50();
  v11 = type metadata accessor for SupportSolutions(0);
  sub_10000ED90(v0);
  if (v12)
  {
    sub_10000ABCC(v0, &qword_10018DA28, &unk_100129768);
  }

  else
  {
    v13 = *(v0 + *(v11 + 24));
    sub_100096724();
    sub_100096670(v0, v14);
  }

  sub_10008E114();
  type metadata accessor for SupportActionInfoType();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ActionInfoType(0);
  swift_storeEnumTagMultiPayload();
  sub_100053050();
}

uint64_t sub_10008E4CC()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100052F6C(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_100052FA4();
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[8] = v6;
  v1[9] = v7;
  v8 = sub_100096AEC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10008E5A4()
{
  sub_10004F4F8();
  v1 = v0[5];
  static Logger.supportFlowApp.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchDataForFlowList", v4, 2u);
    sub_100008744();
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];

  v9 = *(v8 + 8);
  v10 = sub_100077FE8();
  v11(v10);
  v0[10] = static MainActor.shared.getter();
  v12 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_10008E70C;
  v14 = v0[2];

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10008E70C()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[11];
  v3 = v0[10];
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  sub_100096D54();
  v7 = *(v6 + 72);
  v8 = v0[8];

  return _swift_task_switch(sub_10008E83C, v8, v7);
}

uint64_t sub_10008E83C()
{
  sub_100025A94();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_10000875C();

  return v3();
}

uint64_t sub_10008E8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(sub_100003768(&qword_1001888B0, &qword_1001228F0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008E970, v6, v5);
}

uint64_t sub_10008E970()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = type metadata accessor for TaskPriority();
  sub_100053004();
  sub_100003CE8(v6, v7, v8, v5);
  sub_1000969E8();
  v9 = swift_allocObject();
  sub_100096C18(v9);
  sub_10008F344(v2, &unk_100129EF0, v9);
  sub_100096C6C();
  sub_100053004();
  sub_100003CE8(v10, v11, v12, v5);
  sub_1000969E8();
  v13 = swift_allocObject();
  sub_100096C18(v13);
  sub_10008F344(v2, &unk_100129F00, v13);
  sub_100096C6C();
  sub_100053004();
  sub_100003CE8(v14, v15, v16, v5);
  sub_1000969E8();
  v17 = swift_allocObject();
  sub_100096C18(v17);
  sub_10008F344(v2, &unk_100129F10, v17);
  sub_100096C6C();

  sub_10000875C();

  return v18();
}

uint64_t sub_10008EAF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100046160;

  return sub_10008EB80();
}

uint64_t sub_10008EB80()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return _swift_task_switch(sub_10008EBC8, 0, 0);
}

uint64_t sub_10008EBC8()
{
  sub_100025A94();
  *(v0 + 168) = type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008EC4C()
{
  sub_100025A94();
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  sub_10008A274(0, 0xFEu);
  sub_10004F504();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008ECBC()
{
  sub_100025A94();
  v1 = v0[21];
  v0[23] = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_tipsContentManager;
  v0[24] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008ED40()
{
  sub_100025A94();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];

  v0[25] = *(v3 + v2);
  sub_10004F504();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008EDAC()
{
  sub_10003DCD8();
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10008EEC4;
  v2 = swift_continuation_init();
  v0[17] = sub_100003768(&qword_10018E468, &qword_100129F38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100091E98;
  v0[13] = &unk_10017C118;
  v0[14] = v2;
  [v1 supportFlowContentWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10008EEC4()
{
  sub_100025A94();
  sub_10004622C();
  v1 = *v0;
  *(v2 + 208) = *(v2 + 48);
  sub_10004F504();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008EFC8()
{
  sub_100025A94();
  v1 = v0[21];
  v0[27] = v0[18];
  v0[28] = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008F048()
{
  sub_10003DCD8();
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[19];
  v3 = v0[20];

  v5 = sub_100096BC4();
  sub_100091F28(v5, v6);
  sub_10004F504();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008F0F0()
{
  sub_100025A94();

  sub_10000875C();

  return v1();
}

uint64_t sub_10008F148()
{
  sub_10003DCD8();
  v1 = v0[26];
  swift_willThrow();
  v0[10] = v1;
  sub_100003768(&qword_100189398, &unk_100122910);
  sub_100025778(0, &qword_1001893A0, NSError_ptr);
  sub_10000DF20();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v0[21];
    v0[29] = v0[18];
    v0[30] = static MainActor.shared.getter();
    sub_10006F37C();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100062F98();
    v4 = sub_100062F00();

    return _swift_task_switch(v4, v5, v6);
  }

  return result;
}

uint64_t sub_10008F240()
{
  sub_10003DCD8();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[19];

  v4 = sub_10000AFAC();
  sub_100092244(v4, v5);
  sub_10004F504();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008F2E4()
{
  sub_100025A94();

  v1 = *(v0 + 80);

  sub_10000875C();

  return v2();
}

uint64_t sub_10008F344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_10000AB80(a1, v22 - v10, &qword_1001888B0, &qword_1001228F0);
  v12 = type metadata accessor for TaskPriority();
  if (sub_10000E5F0(v11, 1, v12) == 1)
  {
    sub_10000ABCC(v11, &qword_1001888B0, &qword_1001228F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a3 + 16))
  {
    v13 = *(a3 + 24);
    v14 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_10008F538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100046160;

  return sub_10008F5C8();
}

uint64_t sub_10008F5E8()
{
  sub_100025A94();
  *(v0 + 24) = type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v1 = sub_100062F00();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10008F66C()
{
  sub_100025A94();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  sub_10008A294(0, 0xFEu);
  sub_10004F504();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008F6DC()
{
  sub_100025A94();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_serviceStatusCoordinator);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  sub_100062F48(v2);

  return sub_100078A88();
}

uint64_t sub_10008F770()
{
  sub_100025A94();
  sub_10004622C();
  v3 = *(v2 + 40);
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_10004F504();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008F870()
{
  sub_100025A94();
  v1 = *(v0 + 24);
  *(v0 + 56) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008F8E8()
{
  sub_100025A94();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  sub_10008A294(0, 0);
  sub_10000875C();

  return v3();
}

uint64_t sub_10008F950()
{
  sub_100025A94();
  v1 = *(v0 + 24);
  *(v0 + 64) = static MainActor.shared.getter();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v2 = sub_100062F00();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10008F9C8()
{
  sub_10003DCD8();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];

  v4 = sub_10000AFAC();
  sub_10009241C(v4, v5);
  sub_10004F504();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008FA70()
{
  sub_100025A94();
  v1 = *(v0 + 48);

  sub_10000875C();

  return v2();
}

uint64_t sub_10008FAC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100046160;

  return sub_10008FB58();
}

uint64_t sub_10008FB58()
{
  sub_100025A94();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  sub_100052F6C(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = sub_100052FA4();
  type metadata accessor for MainActor();
  v1[6] = sub_10006F3C8();
  sub_10006F37C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100096AF8();
  v1[7] = v6;
  v1[8] = v7;
  v8 = sub_100096AEC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10008FC24()
{
  sub_100025A94();
  v1 = *(v0[2] + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_welcomeContentProvider);
  if (sub_100093460())
  {
    v2 = v0[6];

    v3 = v0[5];

    sub_10000875C();

    return v4();
  }

  else
  {
    v6 = v0[2];
    sub_10008A354(0, 0xFEu);
    v7 = *(v6 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    sub_100062F48(v8);

    return sub_10004FF18();
  }
}

uint64_t sub_10008FD18()
{
  sub_10003DCD8();
  sub_100082B64();
  sub_100052FD4();
  *v4 = v3;
  v5 = *(v1 + 72);
  *v4 = *v2;
  *(v3 + 80) = v0;

  sub_100052FF8();
  v7 = *(v6 + 64);
  v8 = *(v1 + 56);
  if (v0)
  {
    v9 = sub_10008FEB0;
  }

  else
  {
    v9 = sub_10008FE40;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10008FE40()
{
  sub_100025A94();
  v1 = v0[6];
  v2 = v0[2];

  sub_10008A354(0, 0);
  v3 = v0[5];

  sub_10000875C();

  return v4();
}

uint64_t sub_10008FEB0()
{
  sub_10004F4F8();
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100096CB8();
  if (sub_100096E98())
  {
    v5 = v0[10];
    sub_10002B114();
    v6 = sub_100096944();
    sub_100096C88(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_100096A88(v7);
    sub_100096980(&_mh_execute_header, v8, v9, "Articles fetch failed due to error: %@");
    sub_10000ABCC(v6, &qword_100189390, &qword_1001241D0);
    sub_1000968EC();
    sub_1000968D0();
  }

  v10 = v0[10];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[2];
  v14 = v0[3];

  v15 = *(v12 + 8);
  v16 = sub_100096A5C();
  v17(v16);
  swift_errorRetain();
  sub_10008A354(v10, 1u);

  v18 = v0[5];

  sub_10000875C();

  return v19();
}

id sub_10008FFE8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for ContentMessageViewModel();
  v2 = a1;
  v3 = static ContentMessageViewModel.type(for:)();
  if (v3 > 3 || v3 == 2)
  {
    v7 = objc_allocWithZone(sub_100096D24());
    sub_10004F504();
    v5 = ContentMessageViewModel.init(contentMessageType:additionalContext:)();
  }

  else
  {
    if (qword_100188230 != -1)
    {
      swift_once();
    }

    v5 = qword_1001A57A8;
  }

  v6 = v5;

  return v6;
}

void sub_1000900A8()
{
  sub_100017C00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  sub_10000C30C();
  sub_100096914();
  (*(v2 + 16))(v0);
  sub_100003768(&unk_100189718, &unk_100129EC0);
  if (swift_dynamicCast())
  {
    sub_10003C91C(&v18, v15);
    v5 = sub_10008A620();
    v7 = v6;
    v8 = type metadata accessor for SupportFlowSession();
    if (!sub_10000E5F0(v7, 1, v8))
    {
      v9 = v16;
      v10 = v17;
      sub_100025734(v15, v16);
      (*(v10 + 24))(v9, v10);
      SupportFlowSession.currentStepId.setter();
    }

    (v5)(&v14, 0);
    sub_1000086BC(v15);
  }

  v11 = *(v2 + 8);
  v12 = sub_100096908();
  v13(v12);
  sub_100017C18();
}

uint64_t sub_100090234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_100003768(&qword_100188FA0, &qword_10012A190);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_10000AB80(a1, &v23 - v16, &unk_10018A300, &unk_1001241E0);
  sub_10000AB80(a2, &v17[v18], &unk_10018A300, &unk_1001241E0);
  if (sub_10000E5F0(v17, 1, v4) != 1)
  {
    sub_10000AB80(v17, v12, &unk_10018A300, &unk_1001241E0);
    if (sub_10000E5F0(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10009531C(&qword_100188FA8, &type metadata accessor for SupportFlowIdentifier);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_10000ABCC(v17, &unk_10018A300, &unk_1001241E0);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_10000E5F0(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10000ABCC(v17, &qword_100188FA0, &qword_10012A190);
    v19 = 1;
    return v19 & 1;
  }

  sub_10000ABCC(v17, &unk_10018A300, &unk_1001241E0);
  v19 = 0;
  return v19 & 1;
}

BOOL sub_100090534(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v4 == *(a2 + 16) && v5 == *(a2 + 24))
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v3 & 1) == 0;
}

uint64_t sub_100090590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_100003768(&qword_10018E4B0, &qword_10012A210);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_10000AB80(a1, &v23 - v16, &qword_100188EE0, &unk_100122AE0);
  sub_10000AB80(a2, &v17[v18], &qword_100188EE0, &unk_100122AE0);
  if (sub_10000E5F0(v17, 1, v4) != 1)
  {
    sub_10000AB80(v17, v12, &qword_100188EE0, &unk_100122AE0);
    if (sub_10000E5F0(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_10009531C(&qword_10018E4B8, &type metadata accessor for URL);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_10000ABCC(v17, &qword_100188EE0, &unk_100122AE0);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_10000E5F0(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_10000ABCC(v17, &qword_10018E4B0, &qword_10012A210);
    v19 = 1;
    return v19 & 1;
  }

  sub_10000ABCC(v17, &qword_100188EE0, &unk_100122AE0);
  v19 = 0;
  return v19 & 1;
}

BOOL sub_100090890(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for ContentMessageViewModel();
    v5 = a1;
    v6 = a2;
    v2 = static NSObject.== infix(_:_:)();
  }

  return (v2 & 1) == 0;
}

BOOL sub_10009090C(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_100025778(0, a3, a4);
    v7 = a1;
    v8 = a2;
    sub_100096908();
    v4 = static NSObject.== infix(_:_:)();
  }

  return (v4 & 1) == 0;
}

uint64_t sub_10009098C()
{
  v1 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_biomeManager;
  v2 = type metadata accessor for SupportFlowBiomeManager();
  sub_10000AF7C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_deviceEventCoordinator;
  v5 = type metadata accessor for DeviceEventCoordinator();
  sub_10000AF7C(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_serviceStatusCoordinator);

  v8 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);

  v9 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_welcomeContentProvider);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_currentSession, &qword_10018E480, &qword_100129F40);
  v10 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_entryPoint, &qword_10018E490, &qword_100129F70);

  sub_100095F7C(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate);
  v11 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__language + 8);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__selectedURL, &qword_100188EE0, &unk_100122AE0);
  v12 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__navigationPath;
  v13 = type metadata accessor for NavigationPath();
  sub_10000AF7C(v13);
  (*(v14 + 8))(v0 + v12);
  v15 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__searchText + 8);

  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__currentFlowId, &unk_10018A300, &unk_1001241E0);
  v16 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageItem);

  v17 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceOutageDisplayedStepId + 8);

  v18 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__sections);

  v19 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowMap);

  v20 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__stepMap);

  sub_100096C34(OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__flowContentLoadingState);
  sub_100096C34(OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__serviceStatusLoadingState);
  sub_100096C34(OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__articlesLoadingState);
  sub_10000ABCC(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider__solutionsLoadingState, &qword_10018DA20, &qword_100129760);
  v21 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_flowListInitializationTask);

  v22 = OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider___observationRegistrar;
  v23 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v23);
  (*(v24 + 8))(v0 + v22);
  return v0;
}

uint64_t sub_100090C8C()
{
  sub_10009098C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100090CF0(void *a1)
{
  if (!a1 || (v1 = [a1 tocAssets]) == 0 || (result = sub_10009515C(v1, &selRef_symbolId), !v3))
  {

    return 0;
  }

  return result;
}

uint64_t sub_100090D40(void *a1)
{
  if (a1 && (v1 = [a1 tocAssets]) != 0)
  {
    v2 = sub_10009515C(v1, &selRef_symbolSize);
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = v2 == 0x656772616CLL && v3 == 0xE500000000000000;
      if (v6 || (sub_100096DE8() & 1) != 0)
      {
        v7 = &enum case for Image.Scale.large(_:);
LABEL_10:

        goto LABEL_12;
      }

      v7 = &enum case for Image.Scale.small(_:);
      if (v4 == 0x6C6C616D73 && v5 == 0xE500000000000000)
      {
        goto LABEL_10;
      }

      v16 = sub_100096DE8();

      if ((v16 & 1) == 0)
      {
        v7 = &enum case for Image.Scale.medium(_:);
      }
    }

    else
    {
      v7 = &enum case for Image.Scale.medium(_:);
    }
  }

  else
  {
    v7 = &enum case for Image.Scale.medium(_:);
  }

LABEL_12:
  v8 = *v7;
  v9 = type metadata accessor for Image.Scale();
  sub_10000AF7C(v9);
  v11 = *(v10 + 104);
  v12 = sub_10000AFAC();

  return v13(v12);
}

uint64_t sub_100090E74(void *a1)
{
  if (!a1 || (result = sub_10005CD84(a1, &selRef_title), !v2))
  {

    return 0;
  }

  return result;
}

uint64_t sub_100090EB8(void *a1, SEL *a2)
{
  if (!a1 || (result = sub_10009515C([a1 tileContent], a2), !v3))
  {

    return 0;
  }

  return result;
}

void sub_100090F0C()
{
  sub_100096D74();
  v1 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v1);
  v3 = *(v2 + 64);
  sub_10000ED78();
  __chkstk_darwin(v4);
  sub_100096A30();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000C30C();
  sub_100096914();
  sub_10008BCE0();
  if (sub_10000E5F0(v0, 1, v5) == 1)
  {
    sub_10000ABCC(v0, &unk_10018A300, &unk_1001241E0);
  }

  else
  {
    v11 = *(v8 + 32);
    v12 = sub_100096A5C();
    v13(v12);
    SupportFlowIdentifier.rawValue.getter();
    sub_10008C8BC();
    v14 = sub_100025A88();
    v15 = sub_100083BC4(v14);

    if (v15)
    {
      v16 = v15;
      sub_100090EB8(v15, &selRef_title);

      v17 = *(v8 + 8);
    }

    else
    {
      v20 = *(v8 + 8);
    }

    v18 = sub_100096908();
    v19(v18);
  }

  sub_100053050();
}

uint64_t sub_1000910DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_1000968C0();
  v9 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100096D94();
  SupportFlowIdentifier.init(rawValue:)();
  type metadata accessor for SupportFlowIdentifier();
  v10 = sub_100096D24();
  sub_100096960(v10);
  if (v11)
  {
    sub_10000ABCC(v2, &unk_10018A300, &unk_1001241E0);
    v16 = 1;
  }

  else
  {
    sub_100012448(v9);
    v13 = *(v12 + 32);
    v14 = sub_10000AFAC();
    v15(v14);
    v16 = 0;
  }

  return sub_100003CE8(a2, v16, 1, v9);
}

void sub_1000911FC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 trustedPhoneNumbersForAccount:v3];

  if (v5)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6[2])
    {
      v8 = v6[4];
      v7 = v6[5];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    *a2 = v8;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t sub_1000912CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100096D94();
  v5 = sub_100003768(v3, v4);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  sub_10000ED78();
  __chkstk_darwin(v8);
  sub_1000968C0();
  sub_100096BC4();
  sub_100096BE8();
  sub_10000AB80(v9, v10, v11, v12);
  sub_100003768(&qword_10018E458, &qword_100129E90);
  v13 = sub_100096D24();
  if (sub_10000E5F0(v13, 2, v1))
  {
    v14 = &unk_10018DA20;
    v15 = &unk_100129760;
  }

  else
  {
    sub_100052F8C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100093EC8(v1, a1);
      goto LABEL_6;
    }

    v14 = &qword_10018E458;
    v15 = &qword_100129E90;
  }

  sub_10000ABCC(v1, v14, v15);
LABEL_6:
  type metadata accessor for SupportSolutions(0);
  v16 = sub_10000AFAC();
  return sub_100003CE8(v16, v17, 1, v18);
}

uint64_t sub_1000913E4@<X0>(uint64_t a1@<X8>)
{
  v117 = type metadata accessor for URLQueryItem();
  v114 = *(v117 - 8);
  v2 = *(v114 + 64);
  v3 = __chkstk_darwin(v117);
  v109 = v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v104 = v97 - v6;
  v7 = __chkstk_darwin(v5);
  v113 = v97 - v8;
  v9 = __chkstk_darwin(v7);
  v107 = v97 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v97 - v12;
  __chkstk_darwin(v11);
  v108 = v97 - v14;
  v15 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v97 - v17;
  v112 = type metadata accessor for URLComponents();
  v110 = *(v112 - 8);
  v19 = *(v110 + 64);
  __chkstk_darwin(v112);
  v111 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v97 - v23;
  v25 = type metadata accessor for SupportFlowIdentifier();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v106 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = v97 - v30;
  sub_10008BCE0();
  if (sub_10000E5F0(v24, 1, v25) == 1)
  {
    v32 = &unk_10018A300;
    v33 = &unk_1001241E0;
    v34 = v24;
LABEL_3:
    sub_10000ABCC(v34, v32, v33);
    goto LABEL_20;
  }

  v35 = *(v26 + 32);
  v103 = v25;
  v35(v31, v24, v25);
  v105 = v31;
  v36 = SupportFlowIdentifier.rawValue.getter();
  sub_10008C8BC();
  v37 = sub_100083BC4(v36);

  if (!v37 || (v38 = sub_10009515C(v37, &selRef_supportID), !v39))
  {
LABEL_19:
    (*(v26 + 8))(v105, v103);
    goto LABEL_20;
  }

  v40 = v38;
  v41 = v39;
  v115 = 0;
  v116 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v115 = 0xD000000000000016;
  v116 = 0x8000000100137B30;
  v42._countAndFlagsBits = v40;
  v42._object = v41;
  String.append(_:)(v42);

  URLComponents.init(string:)();

  v43 = v112;
  if (sub_10000E5F0(v18, 1, v112) == 1)
  {
    (*(v26 + 8))(v105, v103);
    v32 = &qword_100188EE8;
    v33 = &unk_10012A330;
    v34 = v18;
    goto LABEL_3;
  }

  v44 = v110;
  v45 = v111;
  (*(v110 + 32))(v111, v18, v43);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v44 + 8))(v45, v43);
    goto LABEL_19;
  }

  v47 = result;
  v99 = a1;
  v100 = v26;
  v48 = 0;
  v49 = *(result + 16);
  v101 = v114 + 16;
  v102 = (v114 + 8);
  while (1)
  {
    if (v49 == v48)
    {
LABEL_38:

      (*(v110 + 8))(v111, v112);
      (*(v100 + 8))(v105, v103);
      goto LABEL_20;
    }

    if (v48 >= *(v47 + 16))
    {
      break;
    }

    v50 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v51 = *(v114 + 72);
    v52 = *(v114 + 16);
    v52(v13, v47 + v50 + v51 * v48, v117);
    if (URLQueryItem.name.getter() == 7627107 && v53 == 0xE300000000000000)
    {

LABEL_24:

      v57 = v114 + 32;
      v58 = v108;
      v59 = v117;
      v98 = *(v114 + 32);
      v98(v108, v13, v117);
      v60 = URLQueryItem.value.getter();
      v62 = v61;
      v114 = v57;
      v108 = *(v57 - 24);
      (v108)(v58, v59);
      v63 = v100;
      v64 = v111;
      if (v62)
      {
        result = URLComponents.queryItems.getter();
        if (result)
        {
          v65 = result;
          v97[1] = v60;
          v97[2] = v62;
          v66 = 0;
          v67 = *(result + 16);
          v68 = result + v50;
          while (1)
          {
            if (v67 == v66)
            {

              goto LABEL_38;
            }

            if (v66 >= *(v65 + 16))
            {
              goto LABEL_63;
            }

            v52(v113, v68, v117);
            if (URLQueryItem.name.getter() == 7174515 && v69 == 0xE300000000000000)
            {
              break;
            }

            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v71)
            {
              goto LABEL_41;
            }

            result = (v108)(v113, v117);
            v68 += v51;
            ++v66;
          }

LABEL_41:

          v72 = v107;
          v73 = v117;
          v98(v107, v113, v117);
          v74 = URLQueryItem.value.getter();
          v76 = v75;
          (v108)(v72, v73);
          v78 = v110;
          v77 = v111;
          v79 = v112;
          v80 = v105;
          v113 = v76;
          if (v76)
          {
            v107 = v74;
            result = URLComponents.queryItems.getter();
            if (result)
            {
              v81 = result;
              v82 = 0;
              v83 = *(result + 16);
              v84 = result + v50;
              while (1)
              {
                if (v83 == v82)
                {

                  v114 = 0;
                  goto LABEL_57;
                }

                if (v82 >= *(v81 + 16))
                {
                  goto LABEL_64;
                }

                v52(v109, v84, v117);
                if (URLQueryItem.name.getter() == 7303792 && v85 == 0xE300000000000000)
                {
                  break;
                }

                v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v87)
                {
                  goto LABEL_56;
                }

                result = (v108)(v109, v117);
                v84 += v51;
                ++v82;
              }

LABEL_56:

              v89 = v104;
              v90 = v117;
              v98(v104, v109, v117);
              v114 = URLQueryItem.value.getter();
              (v108)(v89, v90);
LABEL_57:
              v88 = v103;
              v78 = v110;
            }

            else
            {
              v114 = 0;
              v88 = v103;
            }

            v91 = v100;
            v92 = v106;
            (*(v100 + 104))(v106, enum case for SupportFlowIdentifier.battery(_:), v88);
            v93 = v105;
            v94 = sub_1000E4C44();
            v95 = *(v91 + 8);
            v95(v92, v88);
            if (v94)
            {
              v96 = 4;
            }

            else
            {
              v96 = 1;
            }

            BatteryDiagnosticsReport.ServiceLevel.rawValue.getter(v96, 1);
            SupportSymptomInfo.init(categoryId:symptomId:productId:batteryServiceLevel:)();
            (*(v78 + 8))(v111, v112);
            return (v95)(v93, v88);
          }

          (*(v78 + 8))(v77, v79);
          (*(v100 + 8))(v80, v103);
LABEL_20:
          sub_10009614C();
          swift_allocError();
          *v56 = 0;
          return swift_willThrow();
        }
      }

      (*(v110 + 8))(v64, v112);
      (*(v63 + 8))(v105, v103);
      goto LABEL_20;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v55)
    {
      goto LABEL_24;
    }

    result = (*v102)(v13, v117);
    ++v48;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t *sub_100091E98(uint64_t a1, void *a2, void *a3)
{
  result = sub_100025734((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1000CAC1C(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1000CAC18(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100091F28(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_10005CD84(a2, &selRef_language);
  if (!v7)
  {
    sub_10008AAA4();
  }

  sub_100089A3C();
  v8 = sub_10008C6FC();
  v9 = sub_100114850(v8);

  if (v9)
  {
    v10 = [a2 mainCollectionSection];
  }

  sub_10008C468();
  v11 = sub_1000951C4(a2, &selRef_featuredCollections, &qword_10018E470, TPSCollection_ptr);
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(TPSCollectionSection);
    sub_100094A54(0x6574736567677553, 0xE900000000000064, v12);
    sub_10008C590();
    v14 = sub_10008C4CC();
    if (v14)
    {
      v15 = v14;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v16 = String.init(localized:table:bundle:locale:comment:)();
      sub_1000952B8(v16, v17, v15);
    }
  }

  else
  {
    sub_10008C590();
  }

  sub_1000951C4(a2, &selRef_collectionSections, &qword_10018B770, TPSCollectionSection_ptr);
  sub_100089FD4();
  v18 = sub_100095238();
  if (!v18)
  {
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    v18 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_10008A010(v18);
  if (!sub_100095238())
  {
    sub_100025778(0, &qword_10018E478, TPSTip_ptr);
    Dictionary.init(dictionaryLiteral:)();
  }

  sub_10008A130();
  sub_10008A474(0);
  return sub_10008A274(0, 0);
}

uint64_t sub_100092244(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10008FFE8(a2);
  sub_10008A474(v9);
  swift_errorRetain();
  sub_10008A274(a2, 1u);
  static Logger.supportFlowApp.getter();
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18[1] = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v10;
    *v15 = a2;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Flow content fetch failed due to error: %@", v14, 0xCu);
    sub_10000ABCC(v15, &qword_100189390, &qword_1001241D0);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10009241C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_errorRetain();
  sub_10008A294(a2, 1u);
  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Service status fetch failed due to error: %@", v10, 0xCu);
    sub_10000ABCC(v11, &qword_100189390, &qword_1001241D0);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_1000925F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v4);
  v6 = *(v5 + 64);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_100017BAC();
  v8 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v8);
  v10 = *(v9 + 64);
  sub_10000ED78();
  __chkstk_darwin(v11);
  sub_1000968C0();
  v12 = type metadata accessor for SupportFlowIdentifier();
  sub_10000AF7C(v12);
  (*(v13 + 16))(v1, a1, v12);
  sub_100096B34();
  sub_100003CE8(v14, v15, v16, v12);
  sub_10008BD9C(v1);
  v17 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_supportContentCoordinator);
  sub_100050C10();
  *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1000927B0(a1);
  sub_10008CA6C();
  sub_100096D18();
  if (!v21 & v20)
  {
    sub_1000955BC(v18, v19);
  }

  else if (v19)
  {
    sub_1000955BC(v18, v19);
    type metadata accessor for TaskPriority();
    v22 = sub_1000967B8();
    sub_100003CE8(v22, v23, v24, v25);
    type metadata accessor for MainActor();
    sub_10006F37C();

    v26 = static MainActor.shared.getter();
    sub_1000969E8();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = &protocol witness table for MainActor;
    v27[4] = v2;
    sub_100096B60();
    sub_100085200();
  }
}

uint64_t sub_1000927B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_serviceStatusCoordinator);
  v9 = sub_10007A1C0(a1);
  sub_10008C088(v9);
  sub_10008C2B0();
  v10 = *(v2 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_welcomeContentProvider);
  result = sub_100093460();
  if ((result & 1) == 0)
  {
    v12 = type metadata accessor for TaskPriority();
    sub_100003CE8(v7, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v2;
    sub_100085200();
  }

  return result;
}

uint64_t sub_1000928F0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10009299C;

  return sub_10008FB58();
}

uint64_t sub_10009299C()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100092ABC()
{
  v1 = v0;
  v2 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_100017BAC();
  type metadata accessor for TaskPriority();
  v6 = sub_1000967B8();
  sub_100003CE8(v6, v7, v8, v9);
  type metadata accessor for MainActor();
  sub_10006F37C();

  v10 = static MainActor.shared.getter();
  sub_1000969E8();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v1;
  sub_100096B60();
  sub_100085200();
}

uint64_t sub_100092B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100092C2C, v6, v5);
}

uint64_t sub_100092C2C()
{
  sub_100025A94();
  v1 = v0[4];
  v2 = static MainActor.shared.getter();
  v0[8] = v2;
  v3 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  swift_task_alloc();
  sub_10004F4B0();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_100092CFC;
  v6 = v0[2];
  v7 = v0[3];

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v6, &type metadata for ()[8], v2, &protocol witness table for MainActor, &unk_10012A420, v7, &type metadata for ()[8]);
}

uint64_t sub_100092CFC()
{
  sub_10003DCD8();
  sub_100096CD0();
  v2 = v0[9];
  v3 = v0[8];
  v4 = *v1;
  sub_10000870C();
  *v5 = v4;

  sub_100096D54();
  v7 = *(v6 + 56);
  v8 = v0[6];

  return _swift_task_switch(sub_100092E2C, v8, v7);
}

uint64_t sub_100092E2C()
{
  sub_100025A94();
  v1 = *(v0 + 40);

  sub_10000875C();

  return v2();
}

uint64_t sub_100092E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(sub_100003768(&unk_10018A300, &unk_1001241E0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = *(*(sub_100003768(&qword_1001888B0, &qword_1001228F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100092F8C, v7, v6);
}

uint64_t sub_100092F8C()
{
  sub_10004F4F8();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = type metadata accessor for TaskPriority();
  sub_100053004();
  sub_100003CE8(v7, v8, v9, v6);
  sub_1000969E8();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;

  sub_10008F344(v2, &unk_10012A430, v10);
  sub_10000ABCC(v2, &qword_1001888B0, &qword_1001228F0);
  sub_10008BCE0();
  v11 = type metadata accessor for SupportFlowIdentifier();
  LODWORD(v5) = sub_10000E5F0(v3, 1, v11);
  sub_10000ABCC(v3, &unk_10018A300, &unk_1001241E0);
  if (v5 != 1)
  {
    v12 = v0[5];
    v13 = v0[2];
    v14 = v0[3];
    sub_100053004();
    sub_100003CE8(v15, v16, v17, v6);
    sub_1000969E8();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v14;

    sub_10008F344(v12, &unk_10012A440, v18);
    sub_10000ABCC(v12, &qword_1001888B0, &qword_1001228F0);
  }

  v20 = v0[4];
  v19 = v0[5];

  sub_10000875C();

  return v21();
}

uint64_t sub_100093140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100045AB0;

  return sub_100087D1C();
}

uint64_t sub_1000931D0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10009327C;

  return sub_100087D1C();
}

uint64_t sub_10009327C()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

void sub_10009339C()
{
  sub_100096D74();
  sub_100096B04();
  v0 = sub_100025A88();
  v2 = sub_100003768(v0, v1);
  sub_10000ED84(v2);
  v4 = *(v3 + 64);
  sub_10000ED78();
  __chkstk_darwin(v5);
  sub_1000967F8();
  sub_10008BCE0();
  SupportFlowBiomeManager.sessionId.getter();
  static URL.deepLink(_:stepId:sessionId:referrer:)();

  sub_100096C50();
  sub_100053050();
}

uint64_t sub_100093460()
{
  swift_getKeyPath();
  v1 = sub_10009531C(&qword_10018E460, type metadata accessor for FlowViewDataProvider.FirstLaunchWelcomeProvider);
  sub_100096938(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_100096E80();

  return *(v0 + 16);
}

uint64_t sub_1000934F4(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    swift_getKeyPath();
    sub_100096B40();
    __chkstk_darwin(v3);
    sub_100096768();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_100093748(v5, sub_100093F78, v6, &OBJC_IVAR____TtCC11SupportFlow20FlowViewDataProvider26FirstLaunchWelcomeProvider___observationRegistrar, &qword_10018E460, type metadata accessor for FlowViewDataProvider.FirstLaunchWelcomeProvider);
  }

  return result;
}

void sub_1000935C4()
{
  sub_100096D74();
  v1 = type metadata accessor for Logger();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000C30C();
  ObservationRegistrar.init()();
  sub_1000961EC();
  *(v0 + 16) = WelcomeContent.shouldShow.getter() & 1;
  static Logger.supportFlowApp.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = sub_100093460() & 1;

    _os_log_impl(&_mh_execute_header, v7, v8, "Should Show Welcome: %{BOOL}d", v9, 8u);
    sub_100008744();
  }

  else
  {
  }

  v10 = *(v4 + 8);
  v11 = sub_100096B28();
  v12(v11);
  sub_100053050();
}

uint64_t sub_100093748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v6 = *a4;
  sub_10009531C(a5, a6);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000937D8()
{
  v1 = OBJC_IVAR____TtCC11SupportFlow20FlowViewDataProvider26FirstLaunchWelcomeProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_10009386C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_welcomeContentProvider);
  sub_1000934F4(0);
  sub_100089838(1);
  sub_1000961EC();
  WelcomeContent.markAsViewed()();

  return sub_100092ABC();
}

uint64_t sub_1000938D4()
{
  v1 = [v0 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_100052F8C();
}

uint64_t sub_100093928@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = TPSCollection.id.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100093958@<X0>(uint64_t *a1@<X8>)
{
  result = URL.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1000939A8()
{
  v0 = type metadata accessor for SupportFlowBiomeManager();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DeviceEventCoordinator();
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_100093D94(319, &qword_10018DC28, &type metadata accessor for SupportFlowSession, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_100093D94(319, &qword_10018DC30, &type metadata accessor for EntryPoint, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_100093D94(319, &unk_100189188, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            v10 = type metadata accessor for NavigationPath();
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_100093D94(319, &qword_100188F60, &type metadata accessor for SupportFlowIdentifier, &type metadata accessor for Optional);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_100093D94(319, &unk_10018DC38, type metadata accessor for SupportSolutions, type metadata accessor for LoadingState);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  v16 = type metadata accessor for ObservationRegistrar();
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_100093D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100093E20()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100093EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportSolutions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100093F2C(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_100093460();
  return sub_100096CE8(v1);
}

uint64_t sub_100093F88(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_10008C8BC();

  v2 = sub_100083BC4(a1);

  return v2;
}

uint64_t sub_10009401C(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018E4A8, &qword_10012A098);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for SearchResult.Item.Value();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  sub_100003CE8(v5, 0, 1, v6);
  sub_100094114(v5);
  return sub_10000ABCC(v5, &qword_10018E4A8, &qword_10012A098);
}

uint64_t sub_100094114(uint64_t a1)
{
  v2 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v60 = &v57 - v4;
  v5 = type metadata accessor for SupportFlowIdentifier();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v62 = &v57 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v57 - v18;
  __chkstk_darwin(v17);
  v63 = &v57 - v20;
  v21 = sub_100003768(&qword_10018E4A8, &qword_10012A098);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v57 - v23;
  v25 = type metadata accessor for SearchResult.Item.Value();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = (&v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v32 = &v57 - v31;
  sub_10000AB80(a1, v24, &qword_10018E4A8, &qword_10012A098);
  if (sub_10000E5F0(v24, 1, v25) == 1)
  {
    v33 = &qword_10018E4A8;
    v34 = &qword_10012A098;
    v35 = v24;
    return sub_10000ABCC(v35, v33, v34);
  }

  (*(v26 + 32))(v32, v24, v25);
  (*(v26 + 16))(v30, v32, v25);
  v37 = (*(v26 + 88))(v30, v25);
  if (v37 == enum case for SearchResult.Item.Value.topic(_:))
  {
    (*(v26 + 96))(v30, v25);
    v38 = *v30;
    v39 = [*v30 supportSiteURL];
    if (v39)
    {
      v40 = v39;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v51 = type metadata accessor for URL();
    sub_100003CE8(v16, v41, 1, v51);
    sub_10000AB34(v16, v19, &qword_100188EE0, &unk_100122AE0);
    if (sub_10000E5F0(v19, 1, v51) == 1)
    {
      sub_10000ABCC(v19, &qword_100188EE0, &unk_100122AE0);
      v52 = 1;
      v53 = v63;
    }

    else
    {
      v53 = v63;
      URL.appendingSupportArticleQueryParam()();
      (*(*(v51 - 8) + 8))(v19, v51);
      v52 = 0;
    }

    sub_100003CE8(v53, v52, 1, v51);
    sub_10008AEE0();
  }

  else if (v37 == enum case for SearchResult.Item.Value.supportArticle(_:))
  {
    (*(v26 + 96))(v30, v25);
    v42 = *v30;
    SupportArticle.supportSiteURLString.getter();
    if (!v43)
    {
      (*(v26 + 8))(v32, v25);
    }

    v44 = v61;
    URL.init(string:)();

    v45 = type metadata accessor for URL();
    if (sub_10000E5F0(v44, 1, v45) == 1)
    {
      sub_10000ABCC(v44, &qword_100188EE0, &unk_100122AE0);
      v46 = 1;
      v47 = v62;
    }

    else
    {
      v47 = v62;
      URL.appendingSupportArticleQueryParam()();
      (*(*(v45 - 8) + 8))(v44, v45);
      v46 = 0;
    }

    sub_100003CE8(v47, v46, 1, v45);
    sub_10008AEE0();
  }

  else
  {
    if (v37 != enum case for SearchResult.Item.Value.supportFlow(_:))
    {
      v54 = *(v26 + 8);
      v54(v32, v25);
      return (v54)(v30, v25);
    }

    (*(v26 + 96))(v30, v25);
    v48 = *v30;
    type metadata accessor for FlowViewDataProvider(0);
    v49 = v60;
    sub_1000910DC(v48, v60);
    v50 = v59;
    if (sub_10000E5F0(v49, 1, v59) == 1)
    {
      (*(v26 + 8))(v32, v25);

      v33 = &unk_10018A300;
      v34 = &unk_1001241E0;
      v35 = v49;
      return sub_10000ABCC(v35, v33, v34);
    }

    v56 = v57;
    v55 = v58;
    (*(v58 + 32))(v57, v49, v50);
    sub_10008D4A8();

    (*(v55 + 8))(v56, v50);
  }

  return (*(v26 + 8))(v32, v25);
}

uint64_t sub_100094840()
{
  v0 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    URL.appendingSupportArticleQueryParam()();
    v5 = type metadata accessor for URL();
    sub_100003CE8(v3, 0, 1, v5);
    sub_10008AEE0();
  }

  return result;
}

void sub_10009491C(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018E4A0, &qword_10012A090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_10008A9A0();
    v7 = type metadata accessor for SearchResult.Item.Category();
    (*(*(v7 - 8) + 16))(v5, a1, v7);
    sub_100003CE8(v5, 0, 1, v7);
    dispatch thunk of SearchResultsViewModel.seeAllResultsCategory.setter();

    v8 = sub_10008A9A0();
    dispatch thunk of SearchResultsViewModel.showAllResults.setter();
  }
}

id sub_100094A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  if (a3)
  {
    sub_100025778(0, &qword_10018E470, TPSCollection_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithIdentifier:v5 collections:v6.super.isa];

  return v7;
}

uint64_t sub_100094AF4()
{
  sub_10003DCD8();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_100096790(v4);
  *v5 = v6;
  v5[1] = sub_1000966FC;

  return v8(v1);
}

uint64_t sub_100094BE0(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100094CC8;

  return v5();
}

uint64_t sub_100094CC8()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  sub_10000875C();

  return v5();
}

uint64_t sub_100094DAC()
{
  sub_10003DCD8();
  sub_100096B04();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  sub_10000DF20();

  return sub_10008E8A0(v3, v4, v5);
}

uint64_t sub_100094E48()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008EAF0();
}

uint64_t sub_100094ED4()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008F538();
}

uint64_t sub_100094F60()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008FAC8();
}

uint64_t sub_100094FEC()
{
  v1 = *(v0 + 24);

  sub_100096BD0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100095020()
{
  sub_10003DCD8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v4[1] = sub_100045AB0;
  v6 = sub_10000AFAC();

  return v7(v6);
}

unint64_t sub_1000950F0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_100095114(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 openApplicationWithBundleID:v4];

  return v5;
}

uint64_t sub_10009515C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100052F8C();
}

uint64_t sub_1000951C4(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_100025778(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_100095238()
{
  sub_100096DA0();
  v4 = [v3 *v2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_100025778(0, v1, v0);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1000952B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setTitle:v4];
}

uint64_t sub_10009531C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009538C()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000967CC(v1);

  return sub_10008D0E4(v3, v4, v5, v6);
}

uint64_t sub_100095418()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_10009553C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008CA6C();
  *v1 = result;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_1000955BC(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1000955D4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000955D4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000955E0(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1000955F8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000955F8(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100095604(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008CA58();
  *v1 = result;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_100095684(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008CA44();
  *v1 = result;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_100095704(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000957F8;

  return v6(v2 + 32);
}

uint64_t sub_1000957F8()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1;
  sub_100052FD4();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_10000870C();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_10000875C();

  return v9();
}

uint64_t sub_1000958F0(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008C948();
  *v1 = result;
  return result;
}

uint64_t sub_100095940(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008C8BC();
  *v1 = result;
  return result;
}

uint64_t sub_100095988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000959E0(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008C6FC();
  *v1 = result;
  return result;
}

void *sub_100095A30(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008C4CC();
  *v1 = result;
  return result;
}

void *sub_100095A78(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008C424();
  *v1 = result;
  return result;
}

uint64_t sub_100095AC0(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008C1D4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_100095B0C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008BFCC();
  *v1 = result;
  return result;
}

uint64_t sub_100095BD0(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008B67C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_100095C4C(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_10008B570();
  return sub_100096CE8(v1);
}

void *sub_100095D78(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008ADF0();
  *v1 = result;
  return result;
}

uint64_t sub_100095DC0(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008AB00();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_100095E3C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008A9A0();
  *v1 = result;
  return result;
}

uint64_t sub_100095E84(uint64_t *a1)
{
  sub_10006F388(a1);
  v1 = sub_10008A98C();
  return sub_100096CE8(v1);
}

uint64_t sub_100095EE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C(v5);
  v7 = *(v6 + 24);
  v8 = sub_10000AFAC();
  v9(v8);
  return v4;
}

void *sub_100095F34(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10008A430();
  *v1 = result;
  return result;
}

uint64_t sub_100095FA4()
{
  sub_10003DCD8();
  sub_100096D0C();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000569D8(v1);

  return v4(v3);
}

uint64_t sub_100096034()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  sub_1000967CC(v1);

  return sub_1000928F0();
}

uint64_t sub_1000960C0()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  sub_1000967CC(v1);

  return sub_1000931D0();
}

unint64_t sub_10009614C()
{
  result = qword_10018E4C8;
  if (!qword_10018E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E4C8);
  }

  return result;
}

uint64_t sub_1000961A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C(v5);
  v7 = *(v6 + 40);
  v8 = sub_10000AFAC();
  v9(v8);
  return v4;
}

unint64_t sub_1000961EC()
{
  result = qword_10018E4D0;
  if (!qword_10018E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E4D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowViewDataProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x10009630CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100096348()
{
  result = qword_10018E4D8;
  if (!qword_10018E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E4D8);
  }

  return result;
}

uint64_t sub_10009639C()
{
  sub_10003DCD8();
  sub_1000969D8();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000967CC(v1);

  return sub_100092B90(v3, v4, v5, v6);
}

uint64_t sub_100096428()
{
  sub_10003DCD8();
  sub_100096B04();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v1[1] = sub_100046160;
  sub_10000DF20();

  return sub_100092E84(v3, v4, v5);
}

uint64_t sub_1000964C0()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_10008FAC8();
}

uint64_t sub_10009654C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1000969E8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100096588()
{
  sub_10003DCD8();
  sub_100096B88();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100096778(v1);

  return sub_100093140();
}

uint64_t sub_100096614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_10000AF7C(v4);
  v6 = *(v5 + 16);
  v7 = sub_10000AFAC();
  v8(v7);
  return a2;
}

uint64_t sub_100096670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000AF7C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10009681C()
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10009683C()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[3];
  v9 = v0[4];
}

uint64_t sub_100096860(uint64_t a1)
{
  *(a1 + 8) = sub_100088960;
  v2 = *(v1 + 80);
  return *(v1 + 48);
}

uint64_t sub_100096890(uint64_t a1)
{
  *(a1 + 8) = sub_1000872A8;
  result = *(v1 + 192);
  v3 = *(v1 + 200);
  return result;
}

uint64_t sub_1000968D0()
{
}

uint64_t sub_1000968EC()
{
}

uint64_t sub_100096944()
{

  return swift_slowAlloc();
}

void sub_100096980(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_1000969A0()
{

  return sub_100096670(v0, type metadata accessor for FlowStepContentOption);
}

void sub_1000969D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_100096A3C()
{
  v1 = v0[11];
  v2 = *(v0[12] + 16);
  return v0[13];
}

void sub_100096A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[12] = a11;
  v12[13] = v14;
  v12[14] = v15;
  v12[15] = a9;
  v12[16] = a10;
  v12[17] = v16;
  v12[18] = v17;
  v12[19] = v18;
  v12[20] = v13;
  v12[21] = v11;
}

uint64_t sub_100096A88(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_100096AAC()
{

  return swift_storeEnumTagMultiPayload();
}

void sub_100096ACC()
{
  v3 = v0[24];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[2];
  v8 = v0[3];
}

void sub_100096B70(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_100096B88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_100096BA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v0[12] + 8);
  return v0[13];
}

uint64_t sub_100096BF4(uint64_t a1, ...)
{
  va_start(va, a1);
  v5 = v2[18];
  v6 = v2[15];
  v7 = v2[16];

  return sub_10009CACC(v3, v1, va);
}

uint64_t sub_100096C18(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t sub_100096C34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1000955BC(v4, v5);
}

uint64_t sub_100096C50()
{

  return sub_10000ABCC(v2, v0, v1);
}

uint64_t sub_100096C6C()
{

  return sub_10000ABCC(v0, v1, v2);
}

uint64_t sub_100096C88(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

uint64_t sub_100096CA0()
{

  return swift_getKeyPath();
}

uint64_t sub_100096CB8()
{
}

uint64_t sub_100096CDC(unsigned __int8 *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

double sub_100096D60()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t sub_100096DB8()
{
  v1 = v0[19];
  result = v0[10];
  v3 = v0[8];
  v4 = *(v0[9] + 8);
  return result;
}

uint64_t sub_100096DE8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100096E08()
{
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = v0[7];

  return sub_100093EC8(v2, v5);
}

uint64_t sub_100096E28(uint64_t a1, uint64_t a2)
{

  return SupportFlowBiomeManager.eventPublisher(for:type:interaction:session:)(a1, a2, 1, 0, 0);
}

uint64_t sub_100096E48()
{
  v1[24] = v0;
  v3 = v1[10];
  v4 = v1[2];

  return sub_1000913E4(v3);
}

uint64_t sub_100096E68(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_100096E80()
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

BOOL sub_100096E98()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100096EB0()
{
  v2 = *(v0 + 136);

  return static Logger.supportFlowApp.getter();
}

uint64_t sub_100096EC8()
{
  sub_100003CE8(v0, 0, 2, v1);

  return sub_10008A374(v0);
}

uint64_t sub_100096F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_10018E4E8, &unk_10012A470);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_10000E5F0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100096FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_10018E4E8, &unk_10012A470);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_100003CE8(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PurchaseHistoryView()
{
  result = qword_10018E548;
  if (!qword_10018E548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000970F0()
{
  sub_1000971A4();
  if (v0 <= 0x3F)
  {
    sub_100044C7C();
    if (v1 <= 0x3F)
    {
      sub_1000971FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000971A4()
{
  if (!qword_10018E558)
  {
    type metadata accessor for PurchasesFlowViewModel();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10018E558);
    }
  }
}

void sub_1000971FC()
{
  if (!qword_10018E560)
  {
    sub_100004D48(&qword_100188EE0, &unk_100122AE0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10018E560);
    }
  }
}

uint64_t sub_10009727C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1000973BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v4 = sub_100052F6C(v3);
  v44 = v5;
  v43 = *(v6 + 64);
  v7 = __chkstk_darwin(v4);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v39 - v9;
  v10 = type metadata accessor for PurchaseHistoryView();
  v11 = (v10 - 8);
  v40 = *(v10 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = sub_100003768(&qword_10018E5A0, &qword_10012A4F0);
  v14 = sub_10000AF7C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = (v1 + v11[9]);
  v20 = *v19;
  v21 = v19[1];

  v22 = sub_1000977A4();
  v23 = *(v2 + v11[10]);
  *(v18 + 5) = &type metadata for PurchasesStepProvider;
  v24 = sub_1000258DC();
  v18[16] = v23;
  *v18 = v20;
  *(v18 + 1) = v21;
  *(v18 + 6) = v24;
  *(v18 + 7) = 0;
  *(v18 + 8) = 0;
  *(v18 + 9) = v22;
  *(v18 + 10) = 0;
  *(v18 + 11) = 0;
  sub_100098744(v2, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  swift_allocObject();
  sub_100098F08();
  sub_100098BD8(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, v27);
  v28 = &v18[*(v13 + 36)];
  v29 = &v28[*(type metadata accessor for _TaskModifier() + 20)];
  static TaskPriority.userInitiated.getter();
  *v28 = &unk_10012A500;
  *(v28 + 1) = v22;
  v30 = *(v2 + 24);
  v46 = *(v2 + 16);
  v47 = v30;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  v31 = v11[8];
  sub_100003768(&qword_10018E4E8, &unk_10012A470);
  v32 = v41;
  State.wrappedValue.getter();
  v33 = *(sub_10009727C() + qword_1001A5808);

  v34 = v42;
  sub_100082604(v32, v42);
  v35 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v36 = (v43 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  sub_100082604(v34, v37 + v35);
  *(v37 + v36) = v33;
  sub_100003768(&qword_10018E5A8, &unk_10012A510);
  sub_100098A1C();
  sub_100098AD8();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10000ABCC(v18, &qword_10018E5A0, &qword_10012A4F0);
}

uint64_t sub_1000977A4()
{
  v1 = type metadata accessor for PurchaseHistoryView();
  v2 = sub_100052F6C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v7 = type metadata accessor for ActionInfoType(0);
  v8 = sub_10000AF7C(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionInfo(0);
  *v12 = 2;
  swift_storeEnumTagMultiPayload();
  sub_100098744(v0, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_allocObject();
  sub_100098F08();
  sub_100098BD8(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, v15);
  return sub_1000ED69C(v12, 1, sub_100098DF4, v0);
}

uint64_t sub_100097910(uint64_t a1)
{
  v1[19] = a1;
  v2 = type metadata accessor for URL();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for PurchaseHistoryView();
  v1[23] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v7 = *(*(sub_100003768(&qword_100188EE0, &unk_100122AE0) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v9;
  v1[30] = v8;

  return _swift_task_switch(sub_100097A84, v9, v8);
}

uint64_t sub_100097A84()
{
  v1 = v0[19];
  sub_10009727C();
  sub_1000C98F0(AMSBagKeyPurchaseHistoryURL);

  v2 = *(sub_10009727C() + qword_1001A5808);

  sub_10009727C();
  v3 = sub_1000C984C();

  v4 = [v2 URLForKey:v3];

  v5 = [v4 valuePromise];
  v0[31] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100097C64;
  v6 = swift_continuation_init();
  v0[17] = sub_100003768(qword_10018E5D0, &qword_10012A558);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100091E98;
  v0[13] = &unk_10017C3D8;
  v0[14] = v6;
  [v5 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100097C64()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_100098078;
  }

  else
  {
    v6 = sub_100097D94;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100097D94()
{
  v38 = v0;
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];

  v9 = v0[18];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100003CE8(v4, 0, 1, v7);
  v10 = *(v6 + 24);
  sub_10001BDA0(v4, v5);
  sub_100003768(&qword_10018E4E8, &unk_10012A470);
  State.wrappedValue.setter();
  sub_10000ABCC(v4, &qword_100188EE0, &unk_100122AE0);

  if (qword_100188280 != -1)
  {
    sub_100098EE8();
  }

  v11 = v0[24];
  v12 = v0[19];
  v13 = type metadata accessor for Logger();
  sub_10000C2D4(v13, qword_1001A57F0);
  sub_100098744(v12, v11);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_100098F5C();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = *(v1 + 24);
    sub_100003768(&qword_10018E4E8, &unk_10012A470);
    State.wrappedValue.getter();
    v19 = sub_10000E5F0(v6, 1, v8);
    v20 = v0[25];
    if (v19)
    {
      sub_10000ABCC(v0[25], &qword_100188EE0, &unk_100122AE0);
      v21 = 0xE300000000000000;
      v6 = 7104878;
    }

    else
    {
      v23 = sub_100098F24();
      v24(v23);
      sub_10000ABCC(v20, &qword_100188EE0, &unk_100122AE0);
      v21 = v8;
      URL.absoluteString.getter();
      v25 = sub_100098F44();
      v26(v25);
    }

    sub_100098C50(v0[24]);
    v27 = sub_10009CACC(v6, v21, &v37);

    *(v16 + 4) = v27;
    sub_100098F80(&_mh_execute_header, v28, v29, "Recieved URL: %s");
    sub_1000086BC(v17);
    sub_1000968EC();
  }

  else
  {
    v22 = v0[24];

    sub_100098C50(v22);
  }

  v31 = v0[26];
  v30 = v0[27];
  v33 = v0[24];
  v32 = v0[25];
  v34 = v0[22];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100098078()
{
  v39 = v0;
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[28];

  swift_willThrow();

  p_base_prots = &Defaults.base_prots;
  if (qword_100188280 != -1)
  {
    sub_100098EE8();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C2D4(v7, qword_1001A57F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[32];
  if (v10)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to get purchaseHistoryURL", v12, 2u);
    sub_1000968EC();
  }

  if (qword_100188280 != -1)
  {
    sub_100098EE8();
  }

  v13 = v0[24];
  v14 = v0[19];
  sub_10000C2D4(v7, qword_1001A57F0);
  sub_100098744(v14, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_100098F5C();
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    v19 = *(v2 + 24);
    sub_100003768(&qword_10018E4E8, &unk_10012A470);
    State.wrappedValue.getter();
    v20 = sub_10000E5F0(&Defaults.base_prots, 1, v1);
    v21 = v0[25];
    if (v20)
    {
      sub_10000ABCC(v0[25], &qword_100188EE0, &unk_100122AE0);
      v22 = 0xE300000000000000;
      p_base_prots = 7104878;
    }

    else
    {
      v24 = sub_100098F24();
      v25(v24);
      sub_10000ABCC(v21, &qword_100188EE0, &unk_100122AE0);
      v22 = v1;
      URL.absoluteString.getter();
      v26 = sub_100098F44();
      v27(v26);
    }

    sub_100098C50(v0[24]);
    v28 = sub_10009CACC(p_base_prots, v22, &v38);

    *(v17 + 4) = v28;
    sub_100098F80(&_mh_execute_header, v29, v30, "Recieved URL: %s");
    sub_1000086BC(v18);
    sub_1000968EC();
  }

  else
  {
    v23 = v0[24];

    sub_100098C50(v23);
  }

  v32 = v0[26];
  v31 = v0[27];
  v34 = v0[24];
  v33 = v0[25];
  v35 = v0[22];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100098380@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36[0] = a3;
  v5 = type metadata accessor for AMSWebView();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v36 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v36 - v20;
  __chkstk_darwin(v19);
  v23 = v36 - v22;
  sub_10001BDA0(a1, v12);
  if (sub_10000E5F0(v12, 1, v13) == 1)
  {
    sub_10000ABCC(v12, &qword_100188EE0, &unk_100122AE0);
    v24 = 1;
    v25 = v36[0];
  }

  else
  {
    (*(v14 + 32))(v23, v12, v13);
    v26 = *(v14 + 16);
    v26(v21, v23, v13);
    *v8 = swift_getKeyPath();
    sub_100003768(&qword_10018B310, &qword_10012A550);
    swift_storeEnumTagMultiPayload();
    v26(v18, v21, v13);
    v27 = type metadata accessor for AMSWebViewModel();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1000CB4D8(a2, v18);
    v31 = (v8 + *(v5 + 20));
    v36[1] = v30;
    State.init(wrappedValue:)();
    v32 = *(v14 + 8);
    v32(v21, v13);
    v32(v23, v13);
    v33 = v36[3];
    *v31 = v36[2];
    v31[1] = v33;
    v34 = v36[0];
    sub_100098BD8(v8, v36[0], type metadata accessor for AMSWebView);
    v24 = 0;
    v25 = v34;
  }

  return sub_100003CE8(v25, v24, 1, v5);
}

uint64_t sub_1000986A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);

  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_100098744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseHistoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000987AC()
{
  v2 = *(type metadata accessor for PurchaseHistoryView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D870;

  return sub_100097910(v0 + v3);
}

uint64_t sub_100098878()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_100052F6C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URL();
  if (!sub_10000E5F0(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10009897C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_100052F6C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100098380(v1 + v8, v9, a1);
}

unint64_t sub_100098A1C()
{
  result = qword_10018E5B0;
  if (!qword_10018E5B0)
  {
    sub_100004D48(&qword_10018E5A0, &qword_10012A4F0);
    sub_100004CE4();
    sub_100098B8C(&qword_10018E5B8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E5B0);
  }

  return result;
}

unint64_t sub_100098AD8()
{
  result = qword_10018E5C0;
  if (!qword_10018E5C0)
  {
    sub_100004D48(&qword_10018E5A8, &unk_10012A510);
    sub_100098B8C(&qword_10018E5C8, type metadata accessor for AMSWebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E5C0);
  }

  return result;
}

uint64_t sub_100098B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000AF7C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100098C50(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseHistoryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100098CAC()
{
  v1 = type metadata accessor for PurchaseHistoryView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 24);

  v7 = v0 + v3 + *(v1 + 24);
  v8 = type metadata accessor for URL();
  if (!sub_10000E5F0(v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  v9 = *(v7 + *(sub_100003768(&qword_10018E4E8, &unk_10012A470) + 28));

  v10 = *(v0 + v3 + *(v1 + 28) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100098DF4()
{
  v1 = *(type metadata accessor for PurchaseHistoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000986A8(v2);
}

uint64_t sub_100098E54()
{
  sub_100004D48(&qword_10018E5A0, &qword_10012A4F0);
  sub_100004D48(&qword_10018E5A8, &unk_10012A510);
  sub_100098A1C();
  sub_100098AD8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100098EE8()
{

  return swift_once();
}

uint64_t sub_100098F24()
{
  v1 = v0[20];
  v2 = *(v0[21] + 16);
  return v0[22];
}

uint64_t sub_100098F5C()
{
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[20];

  return swift_slowAlloc();
}

void sub_100098F80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100098FA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100098FDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009901C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000990D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v75 = sub_100003768(&qword_10018A530, &qword_100124440);
  v4 = sub_10000AF7C(v75);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100012454();
  v74 = v7 - v8;
  __chkstk_darwin(v9);
  v11 = &v71 - v10;
  v12 = sub_100003768(&qword_10018E658, &qword_10012A688);
  v13 = sub_10000AF7C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100012454();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = *(a1 + 24);
  v77 = *(a1 + 16);
  v76 = v22;
  v23 = type metadata accessor for FlowStepStackView();
  v24 = sub_100008780(v23);
  v78 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100012454();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v71 - v32;
  v79 = v12;
  v34 = type metadata accessor for _ConditionalContent();
  v35 = sub_100008780(v34);
  v80 = v36;
  v81 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  v40 = &v71 - v39;
  v41 = v2[10];
  if (v41)
  {
    v42 = v2[11];
    v43 = v2[1];
    v75 = *v2;
    v44 = v2[8];
    v74 = v2[7];
    v45 = v2[9];
    sub_10000EC9C((v2 + 2), v91, &qword_100189310, &qword_1001221A0);
    sub_100006568(v41);
    sub_100006568(v41);

    sub_100035B04(v75, v43, v74, v44, v45, v91, v41, v42, v30);
    sub_100006A88();
    WitnessTable = swift_getWitnessTable();
    v47 = sub_100096DAC();
    sub_1000C6A00(v47, v48, WitnessTable);
    v49 = *(v78 + 1);
    v50 = sub_100096DAC();
    v49(v50);
    sub_1000C6A00(v33, v23, WitnessTable);
    sub_1000997A4();
    sub_100096DAC();
    sub_1000C2A90();
    sub_1000068F8(v41);
    v51 = sub_100096DAC();
    v49(v51);
    (v49)(v33, v23);
    v52 = v40;
  }

  else
  {
    v77 = v21;
    v78 = &v71 - v39;
    v53 = v2[1];
    v73 = *v2;
    v54 = v2[8];
    v72 = v2[7];
    v55 = v2[9];
    sub_10000EC9C((v2 + 2), v91, &qword_100189310, &qword_1001221A0);
    sub_10000EC9C(v91, v89, &qword_100189310, &qword_1001221A0);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();

    v76 = v55;

    *v18 = Environment.init<A>(_:)();
    *(v18 + 8) = v56 & 1;
    v57 = v79;
    v52 = *(v79 + 56);
    v58 = type metadata accessor for HandoffBundle();
    sub_100003CE8(v11, 1, 1, v58);
    sub_10000EC9C(v11, v74, &qword_10018A530, &qword_100124440);
    State.init(wrappedValue:)();
    sub_10000ABCC(v11, &qword_10018A530, &qword_100124440);
    v59 = v18 + *(v57 + 60);
    v85 = 0;
    v86 = 0;
    sub_100003768(&qword_10018A518, &qword_100124920);
    State.init(wrappedValue:)();
    v60 = v88;
    *v59 = v87;
    *(v59 + 16) = v60;
    v61 = (v18 + *(v57 + 64));
    v85 = 0;
    State.init(wrappedValue:)();
    v62 = *(&v87 + 1);
    *v61 = v87;
    v61[1] = v62;
    *(v18 + 16) = v73;
    *(v18 + 24) = v53;
    if (v54)
    {
      sub_1000998A4();
      v63 = v72;
    }

    else
    {
      v54 = sub_1000FF880(_swiftEmptyArrayStorage);
      v63 = 0;
      sub_1000998A4();
    }

    sub_10000ABCC(v91, &qword_100189310, &qword_1001221A0);
    *(v18 + 32) = v63;
    *(v18 + 40) = v54;
    *(v18 + 48) = v76;
    v64 = v89[1];
    *(v18 + 56) = v89[0];
    *(v18 + 72) = v64;
    v65 = v90;
    *(v18 + 96) = 0;
    *(v18 + 104) = 0;
    *(v18 + 88) = v65;
    sub_100099734(v18, &qword_100124440);
    sub_100006A88();
    swift_getWitnessTable();
    sub_1000997A4();
    sub_1000C2B40();
    sub_10000ABCC(&qword_100124440, &qword_10018E658, &qword_10012A688);
  }

  sub_100006A88();
  v66 = swift_getWitnessTable();
  v67 = sub_1000997A4();
  v83 = v66;
  v84 = v67;
  sub_10009988C();
  v68 = v81;
  v69 = swift_getWitnessTable();
  sub_1000C6A00(v52, v68, v69);
  return (*(v80 + 8))(v52, v68);
}

uint64_t sub_100099734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018E658, &qword_10012A688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000997A4()
{
  result = qword_10018E660;
  if (!qword_10018E660)
  {
    sub_100004D48(&qword_10018E658, &qword_10012A688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E660);
  }

  return result;
}

uint64_t sub_100099808(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FlowStepStackView();
  sub_100004D48(&qword_10018E658, &qword_10012A688);
  type metadata accessor for _ConditionalContent();
  sub_100006A88();
  swift_getWitnessTable();
  sub_1000997A4();
  sub_10009988C();
  return swift_getWitnessTable();
}

uint64_t sub_1000998C4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = type metadata accessor for Logger();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.supportFlowApp.getter();
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  if (v9 & 1) != 0 || (v31 = *a1, (v8))
  {
    v31 = *(a1 + 16);
  }

  sub_10004B340(a1, &v33);
  sub_10004B340(a1, &v33);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v12 = 136315394;
    if (v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = v7;
    }

    v32 = v13;
    v33 = v15;
    v34 = (v9 | v8) & 1;
    sub_100003768(&qword_10018E670, &unk_10012A838);
    v16 = String.init<A>(describing:)();
    v18 = sub_10009CACC(v16, v17, &v32);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    sub_10004B378(a1);
    *(v12 + 14) = *(a1 + 16);
    sub_10004B378(a1);
    _os_log_impl(&_mh_execute_header, v10, v11, "Battery Config Max Capacity: %s. Raw Max Battery Capacity: %ld", v12, 0x16u);
    sub_1000086BC(v14);
    sub_100008744();
    sub_100008744();
  }

  else
  {
    sub_10004B378(a1);
    sub_10004B378(a1);
  }

  sub_10004B340(a1, &v33);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 134218754;
    *(v21 + 4) = *(a1 + 10) - 1;
    *(v21 + 12) = 2048;
    *(v21 + 14) = *(a1 + 11) - 1;
    sub_10004B378(a1);
    *(v21 + 22) = 2048;
    *(v21 + 24) = 2;
    *(v21 + 32) = 2080;
    v32 = v31;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = sub_10009CACC(v23, v24, &v33);

    *(v21 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Service warning: %ld, performanceMitigation: %ld, override performance mitigation: %ld, maxCapacity: %s", v21, 0x2Au);
    sub_1000086BC(v22);
    sub_100008744();
    sub_100008744();
  }

  else
  {
    sub_10004B378(a1);
  }

  (*(v3 + 8))(v6, v30);
  if (*(a1 + 10) == 6)
  {
    v26 = 0;
  }

  else
  {
    if ((v31 & ~(v31 >> 63)) >= 100)
    {
      v27 = 100;
    }

    else
    {
      v27 = v31 & ~(v31 >> 63);
    }

    v26 = sub_100099E00(a1, v27, v29);
  }

  sub_10004B378(a1);
  return v26;
}

uint64_t BatteryDiagnosticsReport.ServiceLevel.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_10012A848[result];
  }

  return result;
}

uint64_t BatteryDiagnosticsReport.serviceLevel.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t BatteryDiagnosticsReport.maxCapacity.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t BatteryDiagnosticsReport.isGenuine.getter(unint64_t a1, char a2, uint64_t a3, unsigned __int16 a4)
{
  v4 = (a4 > 0xFFu) | a4 ^ 1;
  if (a1 < 8)
  {
    v4 = 1;
  }

  if (a2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_100099E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 10);
  result = 4;
  switch(v3)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
    case 7:
      return result;
    case 5:
      if (a2 >= a3)
      {
        result = 3;
      }

      else
      {
        result = 4;
      }

      break;
    case 6:
    case 8:
    case 9:
      result = 8;
      break;
    case 10:
      result = 5;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 7;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL static BatteryDiagnosticsReport.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, __int16 a4, unint64_t a5, char a6, uint64_t a7, __int16 a8)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 1)
        {
          goto LABEL_8;
        }

        break;
      case 2:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 2)
        {
          goto LABEL_8;
        }

        break;
      case 3:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 3)
        {
          goto LABEL_8;
        }

        break;
      case 4:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 4)
        {
          goto LABEL_8;
        }

        break;
      case 5:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 5)
        {
          goto LABEL_8;
        }

        break;
      case 6:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 6)
        {
          goto LABEL_8;
        }

        break;
      case 7:
        result = 0;
        if ((a6 & 1) != 0 && a5 == 7)
        {
          goto LABEL_8;
        }

        break;
      case 8:
        result = 0;
        if ((a6 & 1) != 0 && a5 > 7)
        {
          goto LABEL_8;
        }

        break;
      default:
        result = 0;
        if ((a6 & 1) != 0 && !a5)
        {
          goto LABEL_8;
        }

        break;
    }
  }

  else
  {
    result = 0;
    if ((a6 & 1) == 0 && a1 == a5)
    {
LABEL_8:
      if (a4)
      {
        if ((a8 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((a8 & 1) != 0 || a3 != a7)
        {
          return result;
        }
      }

      return (a8 ^ a4) < 0x100u;
    }
  }

  return result;
}

uint64_t BatteryDiagnosticsReport.ServiceLevel.init(rawValue:)(uint64_t a1)
{
  result = sub_10004A990(a1);
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      result = 8;
      break;
    case 10:
      result = 5;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 7;
      break;
    case 13:
      if (a1 == -99)
      {
        result = 8;
      }

      else
      {
        result = a1;
      }

      break;
    default:
      return result;
  }

  return result;
}

BOOL static BatteryDiagnosticsReport.ServiceLevel.__derived_enum_equals(_:_:)(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        break;
      case 8:
        if ((a4 & 1) == 0 || a3 <= 7)
        {
          return 0;
        }

        break;
      default:
        if ((a4 & 1) == 0 || a3)
        {
          return 0;
        }

        break;
    }

    return 1;
  }

  else
  {
    return (a4 & 1) == 0 && a1 == a3;
  }
}

unint64_t sub_10009A230()
{
  result = qword_10018E668;
  if (!qword_10018E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E668);
  }

  return result;
}

uint64_t sub_10009A284(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 26))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 25);
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A2C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 4;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BatteryDiagnosticsReport.ServiceLevel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10009A344(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009A360(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for BatteryDiagnosticsReport.PerformanceMitigation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A458);
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

uint64_t sub_10009A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactType();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10009A560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactType();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HandoffBundle()
{
  result = qword_10018E6D0;
  if (!qword_10018E6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009A654()
{
  type metadata accessor for ContactType();
  if (v0 <= 0x3F)
  {
    sub_10009A7EC(319, &qword_10018E6E0, &type metadata for HandoffBundle.AppleAccountInfo, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10009A7EC(319, &qword_10018E6E8, &type metadata for HandoffBundle.UserAction, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10009A7EC(319, &qword_10018E6F0, &type metadata for HandoffBundle.Article, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_10009A7EC(319, &qword_10018E6F8, &type metadata for HandoffBundle.Setting, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_10009A7EC(319, &unk_10018E700, &type metadata for HandoffBundle.UserSelection, &type metadata accessor for Array);
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

void sub_10009A7EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10009A860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009A904(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009A944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009A9A8()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10009A9FC(char a1)
{
  result = 0x6B636F4C6F747561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x676972426F747561;
      break;
    case 3:
      result = 0x7461745369666977;
      break;
    case 4:
      result = 0x6E6E6F4369666977;
      break;
    case 5:
      result = 0x656E6E6F436E7076;
      break;
    case 6:
      result = 0x75746174536E7076;
      break;
    case 7:
      result = 0x616C696176417573;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x616470556F747561;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6567617373654D69;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0x6F6363416C69616DLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandoffBundle.Interaction(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009AD50);
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

unint64_t sub_10009AD8C()
{
  result = qword_10018E750;
  if (!qword_10018E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E750);
  }

  return result;
}

uint64_t sub_10009AE14(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v11[1];
  }

  return a1;
}

uint64_t sub_10009AF54@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v9 = type metadata accessor for ActionInfoType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - v16;
  __chkstk_darwin(v15);
  v19 = &v29 - v18;

  sub_10009AE14(a1, a2 & 1);
  sub_10008E36C();

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v20 = *(v10 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100121620;
  sub_10003F5BC(v19, v22 + v21);
  sub_10000B4E0(v33, v32);
  sub_10000B4E0(v32, v31);
  v30 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v22 + v21, v17);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v17, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1000ED69C(v14, 1, sub_10005A438, v23);
  sub_10003F620(v17);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v24 = v30[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v25 = v30;
  sub_10000B4E0(v31, a5 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v26 = Environment.init<A>(_:)();
  LOBYTE(v22) = v27;
  sub_10001035C(v31);
  sub_10001035C(v32);
  sub_10001035C(v33);
  result = sub_10003F620(v19);
  *a5 = v26;
  *(a5 + 8) = v22 & 1;
  *(a5 + 16) = v29;
  *(a5 + 24) = a4;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = v25;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  return result;
}

uint64_t sub_10009B258()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009B298()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001A57D0 = result;
  *algn_1001A57D8 = v5;
  return result;
}

uint64_t sub_10009B3B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();

  return sub_10000E5F0(a1, a2, v4);
}

uint64_t sub_10009B410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();

  return sub_100003CE8(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FlowAsset()
{
  result = qword_10018E7B0;
  if (!qword_10018E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009B4A8()
{
  type metadata accessor for ImageResource();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_10009B550(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001767B8, v2);

  return v3 != 0;
}

BOOL sub_10009B5C0@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009B550(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10009B5F4@<X0>(void *a1@<X8>)
{
  result = sub_10009B598();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PurchasesOptionOverride(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10009B6F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009B770()
{
  result = qword_10018E7F0;
  if (!qword_10018E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E7F0);
  }

  return result;
}

unint64_t sub_10009B7C4()
{
  result = qword_10018E7F8;
  if (!qword_10018E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E7F8);
  }

  return result;
}

uint64_t sub_10009B880(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018E808, &qword_10012AC08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009B8FC()
{
  result = qword_10018E850;
  if (!qword_10018E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E850);
  }

  return result;
}

unint64_t sub_10009B950()
{
  result = qword_10018E858;
  if (!qword_10018E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E858);
  }

  return result;
}

uint64_t sub_10009B9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009BA10()
{
  result = qword_10018E860;
  if (!qword_10018E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E860);
  }

  return result;
}

unint64_t sub_10009BA64()
{
  result = qword_10018E868;
  if (!qword_10018E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E868);
  }

  return result;
}

unint64_t sub_10009BABC()
{
  result = qword_10018E870;
  if (!qword_10018E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E870);
  }

  return result;
}

uint64_t static WiFiDiagnosticsDataProvider.turnOnWiFi()()
{
  sub_100025A94();

  return _swift_task_switch(sub_10009BBC4, 0, 0);
}

uint64_t sub_10009BBC4()
{
  v23 = v0;
  v1 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  v0[23] = v1;
  [v1 activate];
  v0[10] = 0;
  v2 = (v0 + 10);
  v3 = [v1 setPower:1 error:v0 + 10];
  v4 = v0[10];
  if (v3 && (*v2 = 0, v5 = v4, v6 = [v1 setUserAutoJoinDisabled:0 error:v0 + 10], v4 = *v2, v6))
  {
    v7 = v4;
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001881E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C2D4(v9, qword_1001A5760);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v15 = v0[18];
      v14 = v0[19];
      v16 = v0[20];
      v17 = Error.localizedDescription.getter();
      v19 = sub_10009CACC(v17, v18, &v22);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting Wi-Fi power: %s", v12, 0xCu);
      sub_1000086BC(v13);
    }

    else
    {
    }
  }

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10009BF0C;
  v20 = swift_continuation_init();
  v0[17] = sub_100003768(&qword_10018E878, &qword_10012ADF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009C540;
  v0[13] = &unk_10017CB70;
  v0[14] = v20;
  [v1 performAutoJoinWithParameters:0 reply:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009BF0C()
{
  sub_100025A94();
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10009C014, 0, 0);
}

uint64_t sub_10009C014()
{
  sub_100025A94();

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009C0C8()
{
  sub_100025A94();
  v1 = v0[14];
  sub_10009C13C(v0 + 2);
  memcpy(v1, v0 + 2, 0x5BuLL);
  v2 = v0[1];

  return v2();
}

void *sub_10009C13C@<X0>(void *a1@<X8>)
{
  v1 = [objc_allocWithZone(CWFInterface) initWithServiceType:1];
  [v1 activate];
  v2 = [v1 powerOn];
  v3 = [v1 userAutoJoinDisabled];
  v4 = [v1 RSSI];
  v68 = 0;
  v5 = [v1 noise];
  v66 = 0;
  [v1 txRate];
  v7 = v6;
  v64 = 0;
  [v1 rxRate];
  v9 = v8;
  v62 = 0;
  v10 = sub_10009D284(v1);
  v34 = v11;
  v35 = v10;
  v12 = [v1 currentScanResult];
  if (v12)
  {
    v13 = v12;
    if ([v12 isOpen])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v13 isOWE];
    }

    v37 = v14;
    v18 = [v13 isPersonalHotspot];
    v19 = [v1 knownNetworkProfileMatchingScanResult:v13];
    if (v19)
    {
      v20 = v19;
      if ([v19 lowDataMode] == 1)
      {

        v17 = 1;
LABEL_14:
        v15 = v37;
        v16 = v18;
        goto LABEL_15;
      }

      if (v18)
      {
        v21 = [v20 lowDataMode];

        v17 = v21 == 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v17 = 0;
    goto LABEL_14;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_15:
  v38 = v15;
  v32 = v17;
  v33 = v16;
  v71[0] = v2;
  v71[1] = v3;
  v71[2] = 0;
  v72 = v69;
  v73 = v70;
  v74 = v4;
  v30 = v3;
  v22 = v68;
  v75 = v68;
  *v76 = *v67;
  *&v76[3] = *&v67[3];
  v77 = v5;
  v29 = v4;
  v23 = v66;
  v78 = v66;
  v79 = v7;
  v31 = v5;
  v24 = v2;
  v25 = v64;
  v80 = v64;
  v81 = v9;
  v26 = v62;
  v82 = v62;
  v83 = v35;
  v84 = v34;
  v85 = v15;
  v86 = v16;
  v87 = v17;
  sub_10006292C(v71, v41);
  v27 = sub_10009C7CC(v71);

  LOBYTE(__src[0]) = v24;
  BYTE1(__src[0]) = v30;
  BYTE2(__src[0]) = v27;
  *(__src + 3) = v69;
  HIBYTE(__src[0]) = v70;
  __src[1] = v29;
  LOBYTE(__src[2]) = v22;
  *(&__src[2] + 1) = *v67;
  HIDWORD(__src[2]) = *&v67[3];
  __src[3] = v31;
  LOBYTE(__src[4]) = v23;
  HIDWORD(__src[4]) = *&v65[3];
  *(&__src[4] + 1) = *v65;
  __src[5] = v7;
  LOBYTE(__src[6]) = v25;
  HIDWORD(__src[6]) = *&v63[3];
  *(&__src[6] + 1) = *v63;
  __src[7] = v9;
  LOBYTE(__src[8]) = v26;
  *(&__src[8] + 1) = *v61;
  HIDWORD(__src[8]) = *&v61[3];
  __src[9] = v35;
  __src[10] = v34;
  LOBYTE(__src[11]) = v38;
  BYTE1(__src[11]) = v33;
  BYTE2(__src[11]) = v32;
  v41[0] = v24;
  v41[1] = v30;
  v41[2] = v27;
  v42 = v69;
  v43 = v70;
  v44 = v29;
  v45 = v22;
  *v46 = *v67;
  *&v46[3] = *&v67[3];
  v47 = v31;
  v48 = v23;
  *v49 = *v65;
  *&v49[3] = *&v65[3];
  v50 = v7;
  v51 = v25;
  *&v52[3] = *&v63[3];
  *v52 = *v63;
  v53 = v9;
  v54 = v26;
  *&v55[3] = *&v61[3];
  *v55 = *v61;
  v56 = v35;
  v57 = v34;
  v58 = v38;
  v59 = v33;
  v60 = v32;
  sub_10006292C(__src, v39);
  sub_10009D2E8(v41);
  return memcpy(a1, __src, 0x5BuLL);
}

uint64_t sub_10009C540(uint64_t a1, void *a2)
{
  v3 = *sub_100025734((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10009C5A4(v3, v4);
}

uint64_t WiFiDiagnosticsData.rssi.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t WiFiDiagnosticsData.rssi.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.noise.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t WiFiDiagnosticsData.noise.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.txRate.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t WiFiDiagnosticsData.txRate.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.rxRate.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t WiFiDiagnosticsData.rxRate.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t WiFiDiagnosticsData.networkName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t WiFiDiagnosticsData.networkName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_10009C7CC(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2 || (v2 & 1) != 0)
  {
    v3 = *(a1 + 10);
    if (!v3)
    {
      return 2;
    }

    v4 = *(a1 + 9);
    sub_10009D2E8(a1);
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if (*(a1 + 1) <= -70)
      {
        v6 = 3;
      }

      else
      {
        v6 = 4;
      }

      if (a1[16])
      {
        return 0;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_10009D2E8(a1);
    return 1;
  }
}

uint64_t sub_10009C860(char a1)
{
  result = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      result = 0x64656C6261736944;
      break;
    case 2:
      result = 0x656E6E6F63736944;
      break;
    case 3:
      result = 0x6E67695320776F4CLL;
      break;
    case 4:
      result = 0x6C616D726F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v6 = 0;
    if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      return v6 & 1;
    }
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      goto LABEL_47;
    }

LABEL_11:
    if (a1[2] == a2[2])
    {
      v6 = a2[16];
      if (a1[16])
      {
        if (!a2[16])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 1) != *(a2 + 1))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v6 = a2[32];
      if (a1[32])
      {
        if (!a2[32])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 3) != *(a2 + 3))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v6 = a2[48];
      if (a1[48])
      {
        if (!a2[48])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 5) != *(a2 + 5))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v6 = a2[64];
      if (a1[64])
      {
        if (!a2[64])
        {
          return v6 & 1;
        }
      }

      else
      {
        if (*(a1 + 7) != *(a2 + 7))
        {
          v6 = 1;
        }

        if (v6)
        {
          goto LABEL_47;
        }
      }

      v9 = *(a1 + 10);
      v10 = *(a2 + 10);
      if (v9)
      {
        if (!v10)
        {
          goto LABEL_47;
        }

        v11 = *(a1 + 9) == *(a2 + 9) && v9 == v10;
        if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        if (((a1[88] ^ a2[88]) & 1) == 0 && ((a1[89] ^ a2[89]) & 1) == 0)
        {
          v6 = a1[90] ^ a2[90] ^ 1;
          return v6 & 1;
        }

        goto LABEL_47;
      }

      if (!v10)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    v6 = 0;
    return v6 & 1;
  }

  v6 = 0;
  if (v8 != 2 && ((v8 ^ v7) & 1) == 0)
  {
    goto LABEL_11;
  }

  return v6 & 1;
}

uint64_t sub_10009CACC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10009CB90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10001E894(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000086BC(v11);
  return v7;
}

unint64_t sub_10009CB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10009CC90(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10009CC90(uint64_t a1, unint64_t a2)
{
  v4 = sub_10009CCDC(a1, a2);
  sub_10009CDF4(&off_100174D98);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10009CCDC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10009CED8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10009CDF4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10009CF48(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10009CED8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003768(&qword_10018E888, &qword_10012AF38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10009CF48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003768(&qword_10018E888, &qword_10012AF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10009D054(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 91))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009D0A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WiFiDiagnosticsData.ServiceLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009D1F4);
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

unint64_t sub_10009D230()
{
  result = qword_10018E880;
  if (!qword_10018E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E880);
  }

  return result;
}

uint64_t sub_10009D284(void *a1)
{
  v1 = [a1 networkName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for ForgotPasswordStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009D3E4);
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

uint64_t sub_10009D438(char a1)
{
  result = 0x6944206F72746E49;
  switch(a1)
  {
    case 1:
      result = 0x6150207465736552;
      break;
    case 2:
      result = 0x657453207478654ELL;
      break;
    case 3:
      result = 0x41206B636F6C6E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009D4F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176818, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009D53C(char a1)
{
  result = 0x676F6C616964;
  switch(a1)
  {
    case 1:
      result = 0x7361507465736572;
      break;
    case 2:
      result = 0x706574537478656ELL;
      break;
    case 3:
      result = 0x63416B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10009D60C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009D4F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009D63C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009D53C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10009D6AC()
{
  result = qword_10018E890;
  if (!qword_10018E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E890);
  }

  return result;
}

unint64_t sub_10009D700()
{
  result = qword_10018E898;
  if (!qword_10018E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E898);
  }

  return result;
}

uint64_t sub_10009D7BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018E8A8, &qword_10012AFD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009D874()
{
  result = qword_10018E8F0;
  if (!qword_10018E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E8F0);
  }

  return result;
}

unint64_t sub_10009D8C8()
{
  result = qword_10018E8F8;
  if (!qword_10018E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E8F8);
  }

  return result;
}

unint64_t sub_10009D920()
{
  result = qword_10018E900;
  if (!qword_10018E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E900);
  }

  return result;
}

void sub_10009D978(char a1)
{
  switch(a1)
  {
    case 2:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

unint64_t sub_10009DA0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176200, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_10009DA58(char a1)
{
  switch(a1)
  {
    case 2:
      sub_10009E06C();
      break;
    default:
      return;
  }
}

unint64_t sub_10009DB0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009DA0C(*a1);
  *a2 = result;
  return result;
}

void sub_10009DB3C(void *a1@<X8>)
{
  sub_10009DA58(*v1);
  *a1 = v3;
  a1[1] = v4;
}

_BYTE *storeEnumTagSinglePayload for SoftwareUpdateOptionsOverride(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009DC34);
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

unint64_t sub_10009DCCC()
{
  result = qword_10018E908;
  if (!qword_10018E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E908);
  }

  return result;
}

unint64_t sub_10009DD20()
{
  result = qword_10018E910;
  if (!qword_10018E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E910);
  }

  return result;
}

uint64_t sub_10009DDDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018E920, &qword_10012B160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009DE58()
{
  result = qword_10018E968;
  if (!qword_10018E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E968);
  }

  return result;
}

unint64_t sub_10009DEAC()
{
  result = qword_10018E970;
  if (!qword_10018E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E970);
  }

  return result;
}

uint64_t sub_10009DF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10009DF6C()
{
  result = qword_10018E978;
  if (!qword_10018E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E978);
  }

  return result;
}

unint64_t sub_10009DFC0()
{
  result = qword_10018E980;
  if (!qword_10018E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E980);
  }

  return result;
}

unint64_t sub_10009E018()
{
  result = qword_10018E988;
  if (!qword_10018E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E988);
  }

  return result;
}

uint64_t sub_10009E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_100188388;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1001A5990;
  v7 = *algn_1001A5998;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v7;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

uint64_t sub_10009E15C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  sub_10005D6CC();
  return swift_getWitnessTable();
}

uint64_t sub_10009E1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_10018E990, &qword_10012B3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(sub_100003768(&qword_10018E998, &qword_10012B3A8) + 36);
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  static Color.clear.getter();
  v6 = AnyView.init<A>(_:)();
  result = sub_100003768(&qword_10018E9A0, &unk_10012B3B0);
  *(a2 + *(result + 36)) = v6;
  return result;
}

unint64_t sub_10009E2D0()
{
  result = qword_10018E9A8;
  if (!qword_10018E9A8)
  {
    sub_100004D48(&qword_10018E9A0, &unk_10012B3B0);
    sub_10009E388();
    sub_10000AAEC(&qword_10018ABE0, &qword_10018ABE8, &qword_1001252B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9A8);
  }

  return result;
}

unint64_t sub_10009E388()
{
  result = qword_10018E9B0;
  if (!qword_10018E9B0)
  {
    sub_100004D48(&qword_10018E998, &qword_10012B3A8);
    sub_10000AAEC(&qword_10018E9B8, &qword_10018E990, &qword_10012B3A0);
    sub_10000AAEC(&qword_100188910, &qword_100188918, &unk_100127450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018E9B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirPodsStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x10009E538);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}