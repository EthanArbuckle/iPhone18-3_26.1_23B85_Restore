uint64_t sub_100035D04(void *a1, void *a2, void *a3, char a4, void *a5, void (*a6)(), uint64_t a7)
{
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  v16 = a5;
  v17 = v7;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = sub_1000043C4();
  sub_10000B960(v21);
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v25 = v20;
  v26 = v16;
  v27 = sub_1000043C4();
  sub_10000B960(v27);
  v28 = [v22 presentedViewController];
  if (v28)
  {
    v29 = v28;
    v42 = v26;
    v30 = v25;
    v31 = v24;
    v32 = v23;
    objc_opt_self();
    sub_100041EEC();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      [v33 prepareToDismiss];
    }

    v47 = sub_100041B38;
    v48 = v15;
    sub_100013320();
    v44 = 1107296256;
    sub_1000137D0();
    v45 = v34;
    v46 = &unk_1000F1978;
    v35 = _Block_copy(aBlock);

    [v22 dismissViewControllerAnimated:0 completion:v35];
    _Block_release(v35);

    v23 = v32;
    v24 = v31;
    v25 = v30;
    v26 = v42;
  }

  else
  {
    v36 = *&v22[OBJC_IVAR___WFMainViewController_runCoordinator];
    if (a6)
    {
      v47 = a6;
      v48 = a7;
      sub_100013320();
      v44 = 1107296256;
      v45 = sub_1000360D0;
      v46 = &unk_1000F1950;
      v41 = v37;
      v38 = _Block_copy(aBlock);

      v36 = v41;
    }

    else
    {
      v38 = 0;
    }

    [v36 runWorkflowReference:v23 fromSource:v24 withInput:v25 requestOutput:a4 & 1 runViewSource:v26 completionHandler:{v38, v41}];
    _Block_release(v38);
  }

  v39 = sub_1000043C4();
  return sub_10000B970(v39);
}

void sub_100035FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + OBJC_IVAR___WFMainViewController_runCoordinator);
  if (a7)
  {
    v15[4] = a7;
    v15[5] = a8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1000360D0;
    v15[3] = &unk_1000F19A0;
    v14 = _Block_copy(v15);
  }

  else
  {
    v14 = 0;
  }

  [v13 runWorkflowReference:a2 fromSource:a3 withInput:a4 requestOutput:a5 & 1 runViewSource:a6 completionHandler:v14];
  _Block_release(v14);
}

void sub_1000360D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_100036164(void *a1)
{
  v3 = sub_10002E87C(&qword_100100008);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100041D8C();
  type metadata accessor for TaskPriority();
  sub_100004730();
  sub_1000042A8(v5, v6, v7, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = a1;
  v11 = static MainActor.shared.getter();
  sub_100041ED4();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v10;
  sub_100084AEC();
}

uint64_t sub_100036260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for Logger();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[23] = v7;
  v5[24] = v8;

  return _swift_task_switch(sub_1000363A0, v7, v8);
}

uint64_t sub_1000363A0()
{
  sub_100004304();
  v1 = async function pointer to dispatch thunk of AutoShortcutsAppsDataSource.getLNAction(for:);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_100036480;
  v3 = *(v0 + 128);

  return ((&async function pointer to dispatch thunk of AutoShortcutsAppsDataSource.getLNAction(for:) + v1))(v3);
}

uint64_t sub_100036480()
{
  sub_100004304();
  v2 = *v1;
  sub_100041EC8();
  *v4 = v3;
  v5 = *v1;
  sub_100041EC8();
  *v6 = v5;
  *(v8 + 208) = v7;
  *(v8 + 216) = v0;

  v9 = *(v2 + 192);
  v10 = *(v2 + 184);
  if (v0)
  {
    v11 = sub_1000374F0;
  }

  else
  {
    v11 = sub_1000365E4;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_1000365E4()
{
  v142 = v0;
  v1 = v0[16];

  v2 = [v1 fullyQualifiedIdentifier];
  v3 = [objc_allocWithZone(LNMetadataProvider) initWithOptions:2];
  sub_10002E87C(&qword_1001000E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C0DB0;
  *(v4 + 32) = v2;
  sub_100002FC4(0, &qword_1001000E8);
  v5 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v0[14] = 0;
  v7 = [v3 actionsWithFullyQualifiedIdentifiers:isa error:v0 + 14];

  v8 = v0[14];
  if (!v7)
  {
    v57 = (v0 + 12);
    v58 = v0[26];
    v59 = v8;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v0[11] = v60;
    swift_errorRetain();
    sub_10002E87C(&qword_1000FFF88);
    sub_100002FC4(0, &qword_1000FFF90);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_27:

      static WFLog.subscript.getter();
      swift_errorRetain();
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();

      v89 = os_log_type_enabled(v87, v88);
      v91 = v0[18];
      v90 = v0[19];
      v92 = v0[17];
      if (v89)
      {
        v140 = v0[19];
        v93 = sub_100041F58();
        v141 = swift_slowAlloc();
        *v93 = 136446210;
        swift_getErrorValue();
        v94 = Error.localizedDescription.getter();
        sub_10000DA48(v94, v95, &v141);
        sub_10000AB30();

        *(v93 + 4) = v0 + 13;
        _os_log_impl(&_mh_execute_header, v87, v88, "Unable to run App Shortcut: %{public}s", v93, 0xCu);
        sub_100041F70();
        sub_1000046C4();
        sub_1000046C4();

        (*(v91 + 8))(v140, v92);
      }

      else
      {

        (*(v91 + 8))(v90, v92);
      }

      v96 = [objc_allocWithZone(WFAlert) init];
      sub_100004B18();
      v97 = String._bridgeToObjectiveC()();
      v98 = String._bridgeToObjectiveC()();
      v99 = sub_100019BF0();
      v100 = sub_100005D9C(v99);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = sub_100019BF0();
      sub_100006018(v101, v102, v96, v103);
      v104 = [objc_opt_self() okButtonWithHandler:0];
      v105 = [v96 buttons];
      sub_100041E3C(v105, &qword_1001000C8);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100041E0C();
      sub_100007964();
      if (v106)
      {
        sub_1000039DC();
      }

      sub_10000E8C4();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v107 = Array._bridgeToObjectiveC()().super.isa;

      v108 = sub_10000637C();
      [v108 v109];

      [WFUserInterfaceFromViewController() presentAlert:v96];
      swift_unknownObjectRelease();

LABEL_33:

      goto LABEL_36;
    }

    v61 = *v57;
    v62 = [*v57 domain];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
    {
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v68 & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    if ([v61 code] == 9007)
    {

      static WFLog.subscript.getter();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        *sub_100041DB4() = 0;
        sub_100004B24(&_mh_execute_header, v71, v72, "Unable to run Auto Shortcut due to user has not approved the application Privacy Disclosure)");
        sub_1000046C4();
      }

      v73 = v0[16];

      v74 = sub_100011DAC();
      v75(v74);
      v76 = [objc_allocWithZone(WFAlert) init];
      v77 = String._bridgeToObjectiveC()();
      v78 = String._bridgeToObjectiveC()();
      v79 = sub_100011DAC();
      v80 = sub_100005D9C(v79);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100041EA4();

      v81 = sub_100011DAC();
      sub_100006018(v81, v82, v76, v83);
      v84 = sub_1000415D4([v73 underlyingAutoShortcut]);
      if (v85)
      {
        v86 = v85;
        v139 = v84;
      }

      else
      {
        v139 = WFExecutableAppShortcut.name.getter();
        v86 = v115;
      }

      sub_100041F38();
      static AppNameCache.shared.getter();
      v116 = [v80 underlyingAutoShortcut];
      v117 = [v116 bundleIdentifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      dispatch thunk of AppNameCache.name(forBundleIdentifier:)();
      v121 = v120;

      if (v121)
      {
        sub_100004B18();
        v122 = String._bridgeToObjectiveC()();
        String._bridgeToObjectiveC()();
        v123 = sub_10000AB30();
        v124 = sub_100005D9C(v123);

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100006388();

        sub_10002E87C(&qword_1001000D0);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_1000C0D80;
        *(v125 + 56) = &type metadata for String;
        v126 = sub_100041A78();
        sub_100041EF8(v126, v139);
      }

      else
      {
        v127 = String._bridgeToObjectiveC()();
        String._bridgeToObjectiveC()();
        v128 = sub_1000056F0();
        v129 = sub_100005D9C(v128);

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100006388();

        sub_10002E87C(&qword_1001000D0);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1000C0C20;
        *(v130 + 56) = &type metadata for String;
        *(v130 + 64) = sub_100041A78();
        *(v130 + 32) = v139;
        *(v130 + 40) = v86;
      }

      static String.localizedStringWithFormat(_:_:)();
      sub_100041EA4();

      v131 = sub_100011DAC();
      sub_100006018(v131, v132, v76, v133);
      v134 = [objc_opt_self() okButtonWithHandler:0];
      v135 = [v76 buttons];
      sub_100041E3C(v135, &qword_1001000C8);
      sub_100007DBC();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100041E0C();
      sub_100007964();
      if (v106)
      {
        sub_1000039DC();
      }

      sub_10000E8C4();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_100012B10();
      Array._bridgeToObjectiveC()();
      sub_1000056F0();

      v136 = sub_100003E90();
      [v136 v137];

      [WFUserInterfaceFromViewController() presentAlert:v76];
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  sub_10002E87C(&qword_1001000F0);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v8;

  v11 = [v5 bundleIdentifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = sub_1000AA37C(v12, v14, v9);

  if (v15 && (v16 = [v5 actionIdentifier], v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v19 = v18, v16, sub_1000AA3CC(v17, v19, v15), sub_10000A594(), , , v16))
  {
    v20 = v0[26];
    v21 = v0[15];
    v22 = v0[16];
    sub_100041ED4();
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;
    v23[5] = v16;
    v24 = v21;
    v25 = v22;
    v26 = v20;
    v27 = v16;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = [v28 presentedViewController];
    if (v32)
    {
      v33 = v32;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        [v34 prepareToDismiss];
      }

      v35 = v0[26];
      v36 = v0[15];
      v138 = v0[16];
      v0[6] = sub_100041B18;
      v0[7] = v23;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003190;
      v0[5] = &unk_1000F1900;
      v37 = _Block_copy(v0 + 2);

      [v36 dismissViewControllerAnimated:0 completion:v37];
      _Block_release(v37);
    }

    else
    {
      v110 = v0[26];
      v112 = v0[15];
      v111 = v0[16];
      [*&v112[OBJC_IVAR___WFMainViewController_runCoordinator] runAppShortcut:v111 withLNAction:v110 andMetadata:v31];
    }
  }

  else
  {
    static WFLog.subscript.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_100041DB4();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to run App Shortcut: no LNAction returned", v40, 2u);
      sub_1000046C4();
    }

    v41 = v0[21];
    v42 = v0[17];
    v43 = v0[18];

    (*(v43 + 8))(v41, v42);
    v44 = [objc_allocWithZone(WFAlert) init];
    v45 = String._bridgeToObjectiveC()();
    v46 = String._bridgeToObjectiveC()();
    v47 = sub_100012B10();
    v48 = sub_100005D9C(v47);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = sub_100012B10();
    sub_100006018(v49, v50, v44, v51);
    v52 = [objc_opt_self() okButtonWithHandler:0];
    v53 = [v44 buttons];
    sub_100041E3C(v53, &qword_1001000C8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100041E0C();
    v54 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v54 >> 1)
    {
      sub_100005E38(v54);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v55 = v0[26];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_100041F0C();
    v56 = Array._bridgeToObjectiveC()().super.isa;

    [v44 setButtons:v56];

    [WFUserInterfaceFromViewController() presentAlert:v44];
    swift_unknownObjectRelease();
  }

LABEL_36:

  sub_100003BDC();

  return v113();
}

uint64_t sub_1000374F0()
{
  v74 = v0;

  v0[11] = v0[27];
  v2 = v0 + 11;
  swift_errorRetain();
  sub_10002E87C(&qword_1000FFF88);
  sub_100002FC4(0, &qword_1000FFF90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    static WFLog.subscript.getter();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[18];
    v32 = v0[19];
    v34 = v0[17];
    if (v31)
    {
      sub_100041F58();
      v73 = sub_100041DCC();
      *v1 = 136446210;
      swift_getErrorValue();
      v35 = Error.localizedDescription.getter();
      sub_10000DA48(v35, v36, &v73);
      sub_1000056F0();

      *(v1 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to run App Shortcut: %{public}s", v1, 0xCu);
      sub_100041F70();
      sub_1000046C4();
      sub_1000046C4();

      (*(v33 + 8))(v32, v34);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v37 = [objc_allocWithZone(WFAlert) init];
    v38 = String._bridgeToObjectiveC()();
    String._bridgeToObjectiveC()();
    v39 = sub_1000056F0();
    v40 = sub_100005D9C(v39);

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    sub_100006018(v41, v43, v37, &selRef_setTitle_);
    v44 = [objc_opt_self() okButtonWithHandler:0];
    v45 = [v37 buttons];
    sub_100041E3C(v45, &qword_1001000C8);
    sub_100007DBC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100041E0C();
    sub_100007964();
    if (v46)
    {
      sub_1000039DC();
    }

    sub_10000E8C4();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_100012B10();
    Array._bridgeToObjectiveC()();
    sub_1000056F0();

    [v37 setButtons:v44];

    [WFUserInterfaceFromViewController() presentAlert:v37];
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v3 = v0[12];
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    sub_100041EE0();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v3 code] != 9007)
  {
LABEL_14:

    goto LABEL_15;
  }

  static WFLog.subscript.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    *sub_100041DB4() = 0;
    sub_100004B24(&_mh_execute_header, v13, v14, "Unable to run Auto Shortcut due to user has not approved the application Privacy Disclosure)");
    sub_1000046C4();
  }

  v15 = v0[16];

  v16 = sub_100011DAC();
  v17(v16);
  v18 = [objc_allocWithZone(WFAlert) init];
  sub_100004B18();
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = sub_100011DAC();
  v22 = sub_100005D9C(v21);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100041EA4();

  v23 = sub_100011DAC();
  sub_100006018(v23, v24, v18, v25);
  v26 = sub_1000415D4([v15 underlyingAutoShortcut]);
  if (v27)
  {
    v28 = v27;
    v72 = v26;
  }

  else
  {
    v72 = WFExecutableAppShortcut.name.getter();
    v28 = v49;
  }

  sub_100041F38();
  static AppNameCache.shared.getter();
  v50 = [v22 underlyingAutoShortcut];
  v51 = [v50 bundleIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  dispatch thunk of AppNameCache.name(forBundleIdentifier:)();
  v55 = v54;

  if (v55)
  {
    sub_100004B18();
    v56 = String._bridgeToObjectiveC()();
    String._bridgeToObjectiveC()();
    v57 = sub_10000AB30();
    v58 = sub_100005D9C(v57);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006388();

    sub_10002E87C(&qword_1001000D0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1000C0D80;
    *(v59 + 56) = &type metadata for String;
    v60 = sub_100041A78();
    sub_100041EF8(v60, v72);
  }

  else
  {
    v61 = String._bridgeToObjectiveC()();
    String._bridgeToObjectiveC()();
    v62 = sub_1000056F0();
    v63 = sub_100005D9C(v62);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006388();

    sub_10002E87C(&qword_1001000D0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000C0C20;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 64) = sub_100041A78();
    *(v64 + 32) = v72;
    *(v64 + 40) = v28;
  }

  static String.localizedStringWithFormat(_:_:)();
  sub_100041EA4();

  v65 = sub_100011DAC();
  sub_100006018(v65, v66, v18, v67);
  v68 = [objc_opt_self() okButtonWithHandler:0];
  v69 = [v18 buttons];
  sub_100041E3C(v69, &qword_1001000C8);
  sub_100007DBC();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100041E0C();
  sub_100007964();
  if (v46)
  {
    sub_1000039DC();
  }

  sub_10000E8C4();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100012B10();
  Array._bridgeToObjectiveC()();
  sub_1000056F0();

  v70 = sub_100003E90();
  [v70 v71];

  [WFUserInterfaceFromViewController() presentAlert:v18];
  swift_unknownObjectRelease();
LABEL_21:

  sub_100003BDC();

  return v47();
}

void sub_100037DEC()
{
  sub_1000043AC();
  v2 = type metadata accessor for LibraryConfiguration();
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_1000039BC();
  v38 = v5 - v4;
  sub_1000042F8();
  v6 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003EF4();
  __chkstk_darwin(v10);
  v12 = (&v36 - v11);
  v13 = sub_10002E87C(&qword_100100028);
  v14 = sub_100002EE0(v13);
  __chkstk_darwin(v14);
  sub_100003EF4();
  sub_100041D7C();
  __chkstk_darwin(v15);
  v17 = (&v36 - v16);
  v18 = OBJC_IVAR___WFMainViewController_currentDestination;
  sub_100005BC0();
  swift_beginAccess();
  sub_10000823C(v0 + v18, v17, &qword_100100028);
  sub_10000F7EC(v17, 1, v6);
  if (!v19)
  {
    v20 = (*(v8 + 88))(v17, v6);
    if (v20 != enum case for RootNavigationDestination.folder(_:))
    {
      (*(v8 + 8))(v17, v6);
      goto LABEL_14;
    }

    v21 = v20;
    (*(v8 + 96))(v17, v6);
    v22 = *(v0 + OBJC_IVAR___WFMainViewController_database);
    v37 = *v17;
    v23 = [v37 identifier];
    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = String._bridgeToObjectiveC()();
    }

    v24 = [v22 collectionWithIdentifier:v23];

    if (v24)
    {
      *v12 = v24;
      (*(v8 + 104))(v12, v21, v6);
      v25 = *(v8 + 16);
      (v25)(v1, v12, v6);
      sub_1000060AC();
      sub_1000042A8(v26, v27, v28, v6);
      v29 = v24;
      sub_10000D588(v1);
      sub_10003437C();
      if (v30)
      {
        v31 = v30;
        v32 = sub_100005178();
        v25(v32);
        v33 = v38;
        LibraryConfiguration.init(destination:)();
        sub_10009A91C(v33);

        (*(v8 + 8))(v12, v6);
        goto LABEL_14;
      }

      v34 = sub_1000043C4();
      v35(v34);
    }

    goto LABEL_14;
  }

  sub_1000069B0(v17, &qword_100100028);
LABEL_14:
  sub_100002EEC();
}

id sub_100038150(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v108 = a3;
  v7 = type metadata accessor for OpenWorkflowOptions();
  sub_100004458();
  v102 = v8;
  __chkstk_darwin(v9);
  v100 = v10;
  v101 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000042F8();
  type metadata accessor for ShortcutsFeatureFlags();
  sub_100004458();
  v104 = v12;
  v105 = v11;
  __chkstk_darwin(v11);
  sub_1000039BC();
  v103 = v14 - v13;
  sub_1000042F8();
  type metadata accessor for QuarantinedShortcutView();
  sub_100004458();
  v109 = v16;
  v110 = v15;
  __chkstk_darwin(v15);
  sub_100003EF4();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v98 - v21;
  v23 = type metadata accessor for Logger();
  sub_100004458();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100007B08();
  v27 = *&v3[OBJC_IVAR___WFMainViewController_runCoordinator];
  v28 = [v27 runningWorkflow];
  if (v28)
  {
    v106 = v19;
    v107 = a2;

    static WFLog.subscript.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = sub_100041DB4();
      v99 = v7;
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "A new workflow cannot be presented while a workflow is still running. Terminating this current Workflow.", v31, 2u);
      v4 = v3;
      v7 = v99;
      sub_1000046C4();
    }

    (*(v25 + 8))(v3, v23);
    [v27 stop];
    v19 = v106;
    a2 = v107;
  }

  if ([a1 remoteQuarantineStatus] == 1)
  {
    v32 = a1;
    QuarantinedShortcutView.init(workflow:)();
    v34 = v109;
    v33 = v110;
    (*(v109 + 16))(v19, v22, v110);
    v35 = objc_allocWithZone(sub_10002E87C(&qword_1001000B8));
    sub_100007DC8();
    v36 = UIHostingController.init(rootView:)();
    sub_100004730();
    sub_100007078();
    sub_1000392A8(v37, v38, v39, v40, v41);

    (*(v34 + 8))(v22, v33);
    return 0;
  }

  if (!a2)
  {
LABEL_15:
    v63 = [objc_allocWithZone(WFComposeViewController) initWithWorkflow:a1];
    [v63 setDelegate:v4];
    [v63 setIsEditingNewWorkflow:OpenWorkflowOptions.isNewWorkflow.getter() & 1];
    v64 = sub_100041EB0();
    v65(v64);
    v66 = ShortcutsFeatureFlags.isFeatureEnabled.getter();
    v67 = sub_100019BF0();
    v68(v67);
    if (v66)
    {
      v69 = a1;
      v70 = [objc_allocWithZone(UIZoomTransitionOptions) init];
      sub_100005CCC();
      v112 = 1107296256;
      v113 = sub_100038A70;
      v114 = &unk_1000F17E8;
      v71 = _Block_copy(aBlock);
      [v70 setInteractiveDismissShouldBegin:v71];
      _Block_release(v71);
      v72 = [objc_opt_self() effectWithBlurRadius:8.0];
      [v70 setDimmingVisualEffect:v72];

      result = [v4 view];
      if (!result)
      {
        __break(1u);
        goto LABEL_24;
      }

      v73 = result;
      v74 = [objc_opt_self() systemBackgroundColor];
      sub_100041E24(v74, "setBackgroundColor:");

      if ([v63 isEditingNewWorkflow])
      {
        v75 = objc_opt_self();
        sub_100005CCC();
        v112 = 1107296256;
        v113 = sub_100038B50;
        v114 = &unk_1000F1838;
        _Block_copy(aBlock);
        v76 = v63;
        v77 = v70;
        v78 = sub_10000637C();
        v80 = [v78 v79];
        v81 = sub_10000A5E0();
        _Block_release(v81);
      }

      else
      {
        sub_100002FC4(0, &qword_1001000A8);
        sub_1000060B8();
        v82 = swift_allocObject();
        *(v82 + 16) = a2;
        *(v82 + 24) = v69;
        v83 = a2;
        v84 = v63;
        v85 = v7;
        v86 = v70;
        v87 = v69;
        v75 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

        v7 = v85;
      }

      [v63 setPreferredTransition:v75];

      a1 = v69;
    }

    v89 = v101;
    v88 = v102;
    (*(v102 + 16))(v101, v108, v7);
    v90 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v91 = (v100 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    (*(v88 + 32))(v92 + v90, v89, v7);
    *(v92 + v91) = v63;
    *(v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v93 = a1;
    v62 = v63;
    sub_1000060AC();
    sub_1000392A8(v94, v95, v96, v97, v92);

    return v62;
  }

  v42 = *&v4[OBJC_IVAR___WFMainViewController_database];
  v43 = a2;
  v44 = [v42 conflictForWorkflowReference:v43];
  if (v44)
  {
    v45 = v44;
    v46 = objc_allocWithZone(type metadata accessor for WorkflowConflictViewController());
    v47 = v45;
    v48 = WorkflowConflictViewController.init(conflict:)();
    [v48 setModalPresentationStyle:2];
    sub_10000448C();
    sub_100004594(v49, v50);
    swift_unknownObjectRetain();
    dispatch thunk of WorkflowConflictViewController.delegate.setter();
    sub_100004730();
    sub_100007078();
    sub_1000392A8(v51, v52, v53, v54, v55);

    return 0;
  }

  v56 = objc_opt_self();
  v57 = [v56 existingSceneSessionForEditingWorkflowReference:v43];
  if (!v57)
  {

    goto LABEL_15;
  }

  result = [v4 view];
  if (result)
  {
    v59 = result;
    v60 = [result window];

    v61 = [v60 windowScene];
    [v56 activateSceneForWorkflowReference:v43 sender:v61];

    return 0;
  }

LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_100038A20(void *a1)
{
  [a1 velocity];
  v3 = fabs(v2);
  [a1 velocity];
  return v3 >= fabs(v4);
}

uint64_t sub_100038A70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_100038AC8(void *a1)
{
  v1 = [a1 sourceViewController];
  type metadata accessor for MainViewController(0);
  if (swift_dynamicCastClass() && (sub_10003437C(), v2))
  {
    v3 = v2;
    sub_100014F10();
    v5 = v4;

    v1 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100038B50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_100038BB8(void *a1, void *a2, void *a3)
{
  v6 = sub_10002E87C(&qword_100100010);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 zoomedViewController];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_9;
  }

  v14 = [a1 sourceViewController];
  type metadata accessor for MainViewController(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_7;
  }

  sub_10003437C();
  if (!v15)
  {

LABEL_9:
    return 0;
  }

  v16 = v15;
  if (!a2)
  {
    v20 = [a3 reference];
    if (v20)
    {
      v17 = v20;
      v26 = v10;
      goto LABEL_14;
    }

LABEL_7:
    return 0;
  }

  v26 = v10;
  v17 = a2;
LABEL_14:
  v27 = v17;
  v21 = a2;
  sub_10000E8F4();
  v22 = [v17 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000AB28C();

  if (sub_10000AB80(v8, 1, v9) != 1)
  {
    v23 = v26;
    (*(v26 + 32))(v12, v8, v9);
    v24 = sub_10000E968();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v24 cellForItemAtIndexPath:isa];

    (*(v23 + 8))(v12, v9);
    return v18;
  }

  sub_1000069B0(v8, &qword_100100010);
  return 0;
}

void (*sub_100038EE0(uint64_t a1, void *a2, void *a3))(void)
{
  v5 = sub_10002E87C(&qword_100100018);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for OpenWorkflowOptions.ActionError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OpenWorkflowOptions.scrolledToActionIndex.getter();
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    v15 = [a3 actions];
    sub_100002FC4(0, &qword_1001000C0);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100066898(v14, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v16 + 8 * v14 + 32);
    }

    v18 = v17;

    [a2 scrollToAction:v18];
  }

  OpenWorkflowOptions.actionError.getter();
  if (sub_10000AB80(v7, 1, v8) == 1)
  {
    sub_1000069B0(v7, &qword_100100018);
  }

  else
  {
    v31 = a2;
    (*(v9 + 32))(v11, v7, v8);
    v19 = [a3 actions];
    sub_100002FC4(0, &qword_1001000C0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_10000D55C(v20);

    if (OpenWorkflowOptions.ActionError.actionIndex.getter() >= v21)
    {
      (*(v9 + 8))(v11, v8);
      a2 = v31;
    }

    else
    {
      OpenWorkflowOptions.ActionError.message.getter();
      v22 = String._bridgeToObjectiveC()();

      v23 = [a3 actions];
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = OpenWorkflowOptions.ActionError.actionIndex.getter();
      sub_100066898(v25, (v24 & 0xC000000000000001) == 0, v24);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v24 + 8 * v25 + 32);
      }

      v27 = v26;
      a2 = v31;

      [a2 showActionError:v22 for:v27];

      (*(v9 + 8))(v11, v8);
    }
  }

  if (OpenWorkflowOptions.showIconPicker.getter())
  {
    [a2 presentIconPicker];
  }

  result = OpenWorkflowOptions.onOpen.getter();
  if (result)
  {
    v29 = result;
    result();
    return sub_10000B970(v29);
  }

  return result;
}

void sub_1000392A8(void *a1, char a2, char a3, void (*a4)(), uint64_t a5)
{
  v6 = v5;
  v12 = [v6 presentedViewController];
  if (v12)
  {
    if (a2)
    {
      while (1)
      {
        v34 = v12;
        v13 = [v12 presentedViewController];
        if (!v13)
        {
          break;
        }

        v14 = v13;

        v12 = v14;
      }

      if (a4)
      {
        v39 = a4;
        v40 = a5;
        sub_100013320();
        v36 = 1107296256;
        sub_1000137D0();
        v37 = v30;
        v38 = &unk_1000F1770;
        a4 = _Block_copy(aBlock);
      }

      [v34 presentViewController:a1 animated:a3 & 1 completion:a4];
      _Block_release(a4);
LABEL_15:

      return;
    }

    v34 = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = v6;
    *(v16 + 24) = a1;
    v17 = a3 & 1;
    *(v16 + 32) = a3 & 1;
    *(v16 + 40) = a4;
    *(v16 + 48) = a5;
    v18 = sub_100006324();
    sub_10000B960(v18);
    v19 = v6;
    v20 = a1;
    v21 = sub_100006324();
    sub_10000B960(v21);
    v22 = v19;
    v23 = v20;
    v24 = [v22 presentedViewController];
    if (v24)
    {
      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        [v26 prepareToDismiss];
      }

      v39 = sub_100041904;
      v40 = v16;
      sub_100013320();
      v36 = 1107296256;
      sub_1000137D0();
      v37 = v27;
      v38 = &unk_1000F1748;
      v28 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:0 completion:v28];
      _Block_release(v28);

      v29 = sub_100006324();
      sub_10000B970(v29);
      goto LABEL_15;
    }

    v31 = sub_100006144();
    sub_1000395BC(v31, v32, v17, a4, a5);

    v33 = sub_100006324();
    sub_10000B970(v33);
  }

  else
  {
    if (a4)
    {
      v39 = a4;
      v40 = a5;
      sub_100013320();
      v36 = 1107296256;
      sub_1000137D0();
      v37 = v15;
      v38 = &unk_1000F16F8;
      a4 = _Block_copy(aBlock);
    }

    [v6 presentViewController:a1 animated:a3 & 1 completion:a4];
    _Block_release(a4);
  }
}

void sub_1000395BC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9[4] = a4;
    v9[5] = a5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100003190;
    v9[3] = &unk_1000F1798;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [a1 presentViewController:a2 animated:a3 & 1 completion:v8];
  _Block_release(v8);
}

void sub_100039698(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = a4;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = [a1 presentedViewController];
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      [v17 prepareToDismiss];
    }

    v19[4] = sub_10004176C;
    v19[5] = v10;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100003190;
    v19[3] = &unk_1000F16A8;
    v18 = _Block_copy(v19);

    [a1 dismissViewControllerAnimated:0 completion:v18];
    _Block_release(v18);
  }

  else
  {
    type metadata accessor for MainViewController(0);
    sub_100004594(&qword_100100000, type metadata accessor for MainViewController);
    RootView.scroll(toWorkflow:animated:)();
    [*&v12[OBJC_IVAR___WFMainViewController_runCoordinator] resumeWorkflowReference:v13 fromSource:v11 withState:v14];
  }
}

void sub_1000398B4()
{
  sub_1000043AC();
  v42 = v0;
  sub_10000E8D4();
  v4 = type metadata accessor for NameIconComposeViewController.Mode();
  v5 = sub_100002EE0(v4);
  __chkstk_darwin(v5);
  sub_1000039BC();
  sub_100041D64();
  v6 = type metadata accessor for WFCollectionConfigurationViewController.EditMode();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003EF4();
  sub_100007D58();
  __chkstk_darwin(v10);
  sub_1000043D0();
  v11 = type metadata accessor for ShortcutsFeatureFlags();
  sub_100004458();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000039BC();
  sub_100007B08();
  v15 = sub_100041EB0();
  v16(v15);
  v17 = ShortcutsFeatureFlags.isFeatureEnabled.getter();
  (*(v13 + 8))(v0, v11);
  if (v17)
  {
    if (v1)
    {
      *v2 = v1;
      v18 = &enum case for WFCollectionConfigurationViewController.EditMode.update(_:);
    }

    else
    {
      v18 = &enum case for WFCollectionConfigurationViewController.EditMode.create(_:);
    }

    (*(v8 + 104))(v2, *v18, v6);
    (*(v8 + 16))(v3, v2, v6);
    v19 = *&v0[OBJC_IVAR___WFMainViewController_database];
    v20 = objc_allocWithZone(type metadata accessor for WFCollectionConfigurationViewController());
    v21 = v1;
    v22 = v19;
    WFCollectionConfigurationViewController.init(mode:updatingWithDatabase:)();
    sub_100003A0C();
    objc_allocWithZone(type metadata accessor for WFPreviewNavigationController());
    v23 = v20;
    v24 = WFPreviewNavigationController.init(rootViewController:isInSheetView:)();
    [v42 presentViewController:v24 animated:1 completion:0];

    v25 = sub_100005178();
    v26(v25);
  }

  else
  {
    if (v1)
    {
      [v1 glyphCharacter];
    }

    else
    {
      [objc_opt_self() defaultGlyphCharacter];
    }

    v27 = v1;
    NameIconComposeViewController.Mode.init(_:)();
    v28 = objc_allocWithZone(type metadata accessor for NameIconComposeViewController());
    sub_100041EE0();
    v29 = NameIconComposeViewController.init(_:glyphCharacter:)();
    sub_10000448C();
    sub_100004594(v30, v31);
    swift_unknownObjectRetain();
    dispatch thunk of NameIconComposeViewController.delegate.setter();
    if (v1)
    {
      v32 = v29;
      v33 = [v27 name];
    }

    else
    {
      v34 = objc_opt_self();
      v35 = v29;
      v33 = [v34 defaultName];
    }

    v36 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = sub_100011918();
    sub_10000AAB4(v37, v38, v29);
    v39 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v29];

    [v39 setModalPresentationStyle:2];
    v40 = sub_10000637C();
    [v40 v41];
  }

  sub_100002EEC();
}

void sub_100039C88()
{
  sub_1000043AC();
  type metadata accessor for AggregatedEntry();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_1000039BC();
  sub_100019C2C();
  type metadata accessor for ShortcutsFeatureFlags();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  sub_100007B08();
  v2 = sub_100041EB0();
  v3(v2);
  v4 = ShortcutsFeatureFlags.isFeatureEnabled.getter();
  v5 = sub_100012B10();
  v6(v5);
  v7 = sub_100006144();
  v8(v7);
  if (v4)
  {
    v9 = objc_allocWithZone(type metadata accessor for WFAddToHomeScreenViewController());
    sub_10000A594();
    v10 = WFAddToHomeScreenViewController.init(aggregatedEntry:activity:)();
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for AddToHomeScreenViewController());
    sub_10000A594();
    v10 = AddToHomeScreenViewController.init(aggregatedEntry:activity:)();
  }

  v12 = v10;
  v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
  v14 = sub_10000637C();
  [v14 v15];

  sub_100002EEC();
}

void *sub_100039ED0()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for MainViewController(0);
  v1 = objc_msgSendSuper2(&v12, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100002FC4(0, &unk_1001026A0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v13 = v3;
  v4 = [v0 presentedViewController];
  if (v4)
  {
  }

  else
  {
    v5 = sub_100007194();
    v6 = *&v5[OBJC_IVAR___WFSidebarViewController_database];

    v7 = [v6 sortedVisibleFolders];
    v8 = [v7 count];

    if (v8 >= 1)
    {
      sub_100002FC4(0, &unk_1001026A0);
      for (i = 2; i != 9; ++i)
      {
        sub_100011918();
        dispatch thunk of CustomStringConvertible.description.getter();
        UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
        {
          sub_100005E38(v10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        sub_100007DBC();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      return v13;
    }
  }

  return v3;
}

uint64_t sub_10003A190()
{
  sub_10000E8D4();
  v2 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  sub_1000043E0();
  (*(v4 + 104))(v1, *v0, v2);
  type metadata accessor for MainViewController(0);
  sub_10000448C();
  sub_100004594(v6, v7);
  sub_100005CF0();
  RootView.navigate(to:)();
  v8 = sub_1000043C4();
  return v9(v8);
}

void sub_10003A2D8()
{
  sub_1000043AC();
  v1 = type metadata accessor for RootNavigationContext.TransitionType();
  v2 = sub_100002EE0(v1);
  __chkstk_darwin(v2);
  sub_1000039BC();
  sub_100041D64();
  v3 = sub_10002E87C(&qword_1000FFFC0);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_100006134();
  v5 = sub_1000042EC();
  v6 = sub_10002E87C(v5);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_10001C780();
  v8 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000039BC();
  sub_100007D94();
  (*(v10 + 104))(v0, enum case for RootNavigationDestination.automations(_:), v8);
  type metadata accessor for RootPPTTestCase();
  sub_100004730();
  sub_1000042A8(v12, v13, v14, v15);
  static RootNavigationContext.TransitionType.default.getter();
  sub_100004730();
  RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
  type metadata accessor for RootNavigationContext();
  sub_1000060AC();
  sub_1000042A8(v16, v17, v18, v19);
  type metadata accessor for MainViewController(0);
  sub_10000448C();
  sub_100004594(v20, v21);
  sub_100005BC0();
  RootView.navigate(to:with:completion:)();
  v22 = sub_10000F430();
  sub_1000069B0(v22, v23);
  (*(v10 + 8))(v0, v8);
  sub_100002EEC();
}

uint64_t sub_10003A544()
{
  type metadata accessor for RootNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  sub_100019C2C();
  v2 = enum case for GalleryNavigationDestination.home(_:);
  v3 = type metadata accessor for GalleryNavigationDestination();
  sub_100003EC8();
  (*(v4 + 104))(v0, v2, v3);
  sub_1000060AC();
  sub_1000042A8(v5, v6, v7, v3);
  v8 = sub_1000179CC();
  v9(v8);
  sub_100041F8C();
  sub_10000448C();
  sub_100004594(v10, v11);
  sub_100006144();
  RootView.navigate(to:)();
  v12 = sub_100003BD0();
  return v13(v12);
}

void sub_10003A744()
{
  sub_1000043AC();
  v4 = v3;
  v5 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v5);
  sub_100005B90();
  __chkstk_darwin(v6);
  sub_10001C780();
  type metadata accessor for RootNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_1000043E0();
  v8 = type metadata accessor for RootNavigationContext.TransitionType();
  v9 = sub_100002EE0(v8);
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100007D94();
  v10 = sub_10002E87C(&qword_1000FFFC0);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_100006134();
  type metadata accessor for RootNavigationContext();
  sub_100004458();
  v63 = v13;
  v64 = v12;
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_100041D64();
  v14 = sub_100041644(v4);
  if (!v15)
  {
    goto LABEL_79;
  }

  v16 = v15;
  v17 = HIBYTE(v15) & 0xF;
  v18 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      v22 = sub_100040B54(v14, v16, 10);
      v38 = v61;
LABEL_71:

      if (v38)
      {
LABEL_79:
        sub_100002EEC();
        return;
      }

      v62 = v1;
      v39 = sub_100007194();
      v40 = *&v39[OBJC_IVAR___WFSidebarViewController_database];

      v16 = [v40 sortedVisibleFolders];
      if (!v22 || [v16 count] < v22)
      {

        goto LABEL_79;
      }

      type metadata accessor for RootPPTTestCase();
      sub_100004730();
      sub_1000042A8(v41, v42, v43, v44);
      static RootNavigationContext.TransitionType.default.getter();
      RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
      v45 = [v16 descriptors];
      sub_100002FC4(0, &qword_100100098);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!__OFSUB__(v22, 1))
      {
        sub_100066898(v22 - 1, (v46 & 0xC000000000000001) == 0, v46);
        if ((v46 & 0xC000000000000001) == 0)
        {
          v47 = *(v46 + 8 * (v22 - 1) + 32);
LABEL_78:
          v48 = v47;

          *v0 = v48;
          v49 = sub_100006A18();
          v50(v49);
          v51 = sub_100011DAC();
          v52(v51);
          sub_1000060AC();
          sub_1000042A8(v53, v54, v55, v64);
          type metadata accessor for MainViewController(0);
          sub_10000448C();
          sub_100004594(v56, v57);
          sub_100011918();
          sub_100005BC0();
          RootView.navigate(to:with:completion:)();

          sub_1000069B0(v62, &qword_100100020);
          v58 = sub_100005CF0();
          v59(v58);
          (*(v63 + 8))(v2, v64);
          goto LABEL_79;
        }

LABEL_90:
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_78;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      if (v14 == 43)
      {
        if (v17)
        {
          if (v17 != 1)
          {
            sub_1000082A8();
            while (1)
            {
              sub_10000F198();
              if (!v24 & v23)
              {
                break;
              }

              sub_100005BAC();
              if (!v24)
              {
                break;
              }

              v22 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              sub_10000CBE4();
              if (v24)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v14 != 45)
      {
        if (v17)
        {
          while (1)
          {
            sub_10000F198();
            if (!v24 & v23)
            {
              break;
            }

            sub_100005BAC();
            if (!v24)
            {
              break;
            }

            v22 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            sub_10000CBE4();
            if (v24)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v17)
      {
        if (v17 != 1)
        {
          sub_1000082A8();
          while (1)
          {
            sub_10000F198();
            if (!v24 & v23)
            {
              break;
            }

            sub_100005BAC();
            if (!v24)
            {
              break;
            }

            v22 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            sub_10000CBE4();
            if (v24)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v20 = _StringObject.sharedUTF8.getter();
      }

      v21 = *v20;
      if (v21 == 43)
      {
        if (v18 >= 1)
        {
          if (v18 != 1)
          {
            v22 = 0;
            if (v20)
            {
              while (1)
              {
                sub_10000F198();
                if (!v24 & v23)
                {
                  goto LABEL_69;
                }

                sub_100005BAC();
                if (!v24)
                {
                  goto LABEL_69;
                }

                v22 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  goto LABEL_69;
                }

                sub_10000CBE4();
                if (v24)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }

        goto LABEL_87;
      }

      if (v21 != 45)
      {
        if (v18)
        {
          v22 = 0;
          if (v20)
          {
            while (1)
            {
              v34 = *v20 - 48;
              if (v34 > 9)
              {
                goto LABEL_69;
              }

              v35 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_69;
              }

              v22 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_69;
              }

              ++v20;
              if (!--v18)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_69:
        v22 = 0;
        v27 = 1;
        goto LABEL_70;
      }

      if (v18 >= 1)
      {
        if (v18 != 1)
        {
          v22 = 0;
          if (v20)
          {
            while (1)
            {
              sub_10000F198();
              if (!v24 & v23)
              {
                goto LABEL_69;
              }

              sub_100005BAC();
              if (!v24)
              {
                goto LABEL_69;
              }

              v22 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_69;
              }

              sub_10000CBE4();
              if (v24)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_60:
          v27 = 0;
LABEL_70:
          v38 = v27;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  sub_100002EEC();
}

void sub_10003ADEC()
{
  sub_1000079FC();
  type metadata accessor for RootNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  sub_100019C2C();
  v2 = sub_100007194();
  v3 = *&v2[OBJC_IVAR___WFSidebarViewController_database];

  v4 = [v3 sortedVisibleFolders];
  v5 = [v4 descriptors];

  sub_100002FC4(0, &qword_100100098);
  sub_100041DA8();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000354BC(v6, sub_100066898);

  if (v7)
  {
    *v0 = v7;
    v8 = sub_1000179CC();
    v9(v8);
    type metadata accessor for MainViewController(0);
    sub_10000448C();
    sub_100004594(v10, v11);
    v12 = v7;
    sub_100011E00();
    RootView.navigate(to:)();

    v13 = sub_100003BD0();
    v14(v13);
  }

  sub_1000046DC();
}

void sub_10003B000()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_100100028);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  v47 = &v45 - v3;
  sub_1000042F8();
  v49 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003EF4();
  sub_1000082D4();
  __chkstk_darwin(v7);
  v46 = &v45 - v8;
  v48 = v0;
  v9 = sub_100007194();
  v10 = *&v9[OBJC_IVAR___WFSidebarViewController_sections];

  v11 = 0;
  v12 = *(v10 + 16);
  v13 = (v10 + 40);
  v14 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v12 == v11)
    {

      v23 = OBJC_IVAR___WFMainViewController_currentDestination;
      v24 = v48;
      sub_100005BC0();
      swift_beginAccess();
      v25 = v24 + v23;
      v26 = v47;
      sub_10000823C(v25, v47, &qword_100100028);
      v27 = sub_100041D70();
      v28 = v49;
      sub_10000F7EC(v27, v29, v49);
      if (v30)
      {

        sub_1000069B0(v26, &qword_100100028);
      }

      else
      {
        v31 = v46;
        v32 = sub_1000043C4();
        v33(v32);
        v34 = sub_10003B36C(v31, v14);
        if (v35)
        {
          goto LABEL_23;
        }

        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_30;
        }

        if (v36 >= v14[2])
        {
LABEL_23:
          v43 = sub_100005CF0();
          v44(v43);
        }

        else
        {
          if (v36 < 0)
          {
            goto LABEL_31;
          }

          v37 = sub_100002F10();
          v38(v37);

          type metadata accessor for MainViewController(0);
          sub_10000448C();
          sub_100004594(v39, v40);
          sub_100041EE0();
          RootView.navigate(to:)();
          v41 = *(v5 + 8);
          v41(v13, v28);
          v42 = sub_100005CF0();
          (v41)(v42);
        }
      }

      sub_100002EEC();
      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v15 = *v13;
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of SidebarSection.destinations.getter();
    sub_10000AB30();
    swift_unknownObjectRelease();
    v16 = *(v15 + 16);
    v17 = v14[2];
    if (__OFADD__(v17, v16))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v17 + v16 > v14[3] >> 1)
    {
      sub_100041F18();
      v14 = v18;
    }

    if (*(v15 + 16))
    {
      sub_1000070A0();
      if (v19 != v20)
      {
        goto LABEL_28;
      }

      sub_10000473C();

      if (v16)
      {
        v21 = v14[2];
        v20 = __OFADD__(v21, v16);
        v22 = v21 + v16;
        if (v20)
        {
          goto LABEL_29;
        }

        v14[2] = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_27;
      }
    }

    v13 += 2;
    ++v11;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_10003B36C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for RootNavigationDestination();
    sub_100004594(&qword_100100090, &type metadata accessor for RootNavigationDestination);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_10003B4D0()
{
  sub_1000043AC();
  v1 = sub_10002E87C(&qword_100100028);
  sub_100002EE0(v1);
  sub_100005B90();
  __chkstk_darwin(v2);
  v46 = &v44 - v3;
  sub_1000042F8();
  v48 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003EF4();
  sub_1000082D4();
  __chkstk_darwin(v7);
  v45 = &v44 - v8;
  v47 = v0;
  v9 = sub_100007194();
  v10 = *&v9[OBJC_IVAR___WFSidebarViewController_sections];

  v11 = 0;
  v12 = *(v10 + 16);
  v13 = (v10 + 40);
  v14 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v12 == v11)
    {

      v23 = OBJC_IVAR___WFMainViewController_currentDestination;
      v24 = v47;
      sub_100005BC0();
      swift_beginAccess();
      v25 = v24 + v23;
      v26 = v46;
      sub_10000823C(v25, v46, &qword_100100028);
      v27 = sub_100041D70();
      v28 = v48;
      sub_10000F7EC(v27, v29, v48);
      if (v30)
      {

        sub_1000069B0(v26, &qword_100100028);
      }

      else
      {
        v31 = v45;
        v32 = sub_1000043C4();
        v33(v32);
        v34 = sub_10003B36C(v31, v14);
        if ((v35 & 1) != 0 || v34 < 1)
        {
          v42 = sub_100005CF0();
          v43(v42);
        }

        else
        {
          if (v34 > v14[2])
          {
            goto LABEL_29;
          }

          v36 = sub_100002F10();
          v37(v36);

          type metadata accessor for MainViewController(0);
          sub_10000448C();
          sub_100004594(v38, v39);
          sub_100041EE0();
          RootView.navigate(to:)();
          v40 = *(v5 + 8);
          v40(v13, v28);
          v41 = sub_100005CF0();
          (v40)(v41);
        }
      }

      sub_100002EEC();
      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v15 = *v13;
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of SidebarSection.destinations.getter();
    sub_10000AB30();
    swift_unknownObjectRelease();
    v16 = *(v15 + 16);
    v17 = v14[2];
    if (__OFADD__(v17, v16))
    {
      goto LABEL_25;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v17 + v16 > v14[3] >> 1)
    {
      sub_100041F18();
      v14 = v18;
    }

    if (*(v15 + 16))
    {
      sub_1000070A0();
      if (v19 != v20)
      {
        goto LABEL_27;
      }

      sub_10000473C();

      if (v16)
      {
        v21 = v14[2];
        v20 = __OFADD__(v21, v16);
        v22 = v21 + v16;
        if (v20)
        {
          goto LABEL_28;
        }

        v14[2] = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_26;
      }
    }

    v13 += 2;
    ++v11;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_10003B87C()
{
  sub_10003437C();
  if (v0)
  {
    v1 = v0;
    sub_10009E0A4();
  }
}

void sub_10003B9CC(void (*a1)(void))
{
  sub_10003437C();
  if (v2)
  {
    v3 = v2;
    a1();
  }
}

id sub_10003BA78()
{
  v1 = *(v0 + OBJC_IVAR___WFMainViewController_splitView);
  v2 = [v1 displayMode];
  v3 = &selRef_showColumn_;
  if (v2 != 1)
  {
    v3 = &selRef_hideColumn_;
  }

  v4 = *v3;

  return [v1 v4];
}

void sub_10003BB2C()
{
  sub_1000079FC();
  v3 = v2;
  v5 = v4;
  if (static Selector.== infix(_:_:)())
  {
    sub_10003437C();
    if (v6)
    {
    }
  }

  else if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    sub_10003437C();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 presentedViewController];

      if (v9)
      {
      }
    }
  }

  else
  {
    sub_10000823C(v3, v16, &unk_100100140);
    v10 = v17;
    if (v17)
    {
      v11 = sub_100041C04(v16, v17);
      v12 = *(v10 - 8);
      __chkstk_darwin(v11);
      sub_1000039BC();
      sub_10000A7F8();
      (*(v12 + 16))(v1);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v1, v10);
      sub_10000DF90(v16);
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for MainViewController(0);
    v15.receiver = v0;
    v15.super_class = v14;
    objc_msgSendSuper2(&v15, "canPerformAction:withSender:", v5, v13);
    swift_unknownObjectRelease();
  }

  sub_1000046DC();
}

id sub_10003BEB0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void (*sub_10003C034(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10003C098;
}

void sub_10003C098(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10000D678();
  }
}

uint64_t sub_10003C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();

  return RootView.deleteCollections(_:alertCustomizationBlock:completion:)(a1, a2, a3, a4, a5, a6, WitnessTable);
}

uint64_t sub_10003C1A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RootView.createWorkflow(for:)(a1, a2, WitnessTable);
}

uint64_t sub_10003C20C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RootView.navigateToFolder(_:)(a1, a2, WitnessTable);
}

uint64_t sub_10003C26C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RootView.navigateToAutoShortcutApp(_:)(a1, a2, WitnessTable);
}

uint64_t sub_10003C2CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RootView.renameObject(_:)(a1, a2, WitnessTable);
}

uint64_t sub_10003C32C()
{
  swift_getWitnessTable();

  return RootView.navigate(to:)();
}

void sub_10003C3D4()
{
  sub_1000043AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v65 = v8;
  type metadata accessor for Logger();
  sub_100004458();
  v63 = v10;
  v64 = v9;
  __chkstk_darwin(v9);
  sub_100003EF4();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_1000043D0();
  v15 = type metadata accessor for NameIconComposeViewController.Mode();
  sub_100004458();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000039BC();
  v21 = (v20 - v19);
  (*(v17 + 16))(v20 - v19, v7, v15);
  v22 = sub_100041D9C();
  v24 = v23(v22);
  if (v24 == enum case for NameIconComposeViewController.Mode.create(_:))
  {
    v25 = sub_100041D9C();
    v26(v25);
    v27 = *(v0 + OBJC_IVAR___WFMainViewController_database);
    if (v5)
    {
      sub_100007DBC();
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    v67[0] = 0;
    v34 = [v27 createFolderWithName:v28 icon:objc_msgSend(v3 error:{"glyphCharacter"), v67}];

    if (v34)
    {
      v35 = v67[0];

      [v65 dismissViewControllerAnimated:1 completion:0];
      v36 = [objc_allocWithZone(WFCreateFolderEvent) init];
      sub_100006018(0x4272616265646953, 0xED00006E6F747475, v36, &selRef_setFolderSource_);
      [v36 setIcon:{objc_msgSend(v3, "glyphCharacter")}];
      [v36 track];

LABEL_20:
      sub_100002EEC();
      return;
    }

    v37 = v67[0];
    sub_100007DC8();
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v67[0] = v38;
    sub_10002E87C(&qword_1000FFF88);
    sub_100002FC4(0, &qword_1000FFF90);
    sub_100006658();
    static WFLog.subscript.getter();
    v39 = v66;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_100041F58();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      sub_10001A054(&_mh_execute_header, v45, v46, "An error occurred while creating a folder from the sidebar: %{public}@");
      sub_1000069B0(v43, &qword_1000FFFA0);
      sub_1000046C4();
      sub_1000046C4();
    }

    (*(v63 + 8))(v1, v64);
    WFUserInterfaceFromViewController();
    sub_100002FC4(0, &qword_1000FFF98);
    v47 = v39;
    v48 = sub_1000356CC();
    sub_100041E24(v48, "presentAlert:");

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (v24 == enum case for NameIconComposeViewController.Mode.update(_:))
  {
    v29 = sub_100041D9C();
    v30(v29);
    v31 = *v21;
    v32 = *(v0 + OBJC_IVAR___WFMainViewController_database);
    if (v5)
    {
      sub_100007DBC();
      v33 = String._bridgeToObjectiveC()();
    }

    else
    {
      v33 = 0;
    }

    v67[0] = 0;
    v49 = [v32 updateFolder:v31 newName:v33 newIcon:objc_msgSend(v3 error:{"glyphCharacter"), v67}];

    if (v49)
    {
      v50 = v67[0];

      [v65 dismissViewControllerAnimated:1 completion:0];
      goto LABEL_20;
    }

    v51 = v67[0];
    sub_100007DC8();
    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v67[0] = v52;
    sub_10002E87C(&qword_1000FFF88);
    sub_100002FC4(0, &qword_1000FFF90);
    sub_100006658();
    static WFLog.subscript.getter();
    v53 = v66;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = sub_100041F58();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = v53;
      sub_10001A054(&_mh_execute_header, v59, v60, "An error occurred while updating a folder from the sidebar: %{public}@");
      sub_1000069B0(v57, &qword_1000FFFA0);
      sub_1000046C4();
      sub_1000046C4();
    }

    (*(v63 + 8))(v13, v64);
    WFUserInterfaceFromViewController();
    sub_100002FC4(0, &qword_1000FFF98);
    v61 = v53;
    v62 = sub_1000356CC();
    sub_100041E24(v62, "presentAlert:");

    swift_unknownObjectRelease();
LABEL_19:

    goto LABEL_20;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10003CA90()
{
  sub_1000043AC();
  v3 = v2;
  v5 = v4;
  v6 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_100019C2C();
  v8 = type metadata accessor for RootNavigationContext.TransitionType();
  v9 = sub_100002EE0(v8);
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100041D64();
  v10 = sub_10002E87C(&qword_1000FFFC0);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_100006134();
  v12 = type metadata accessor for RootNavigationContext();
  sub_100004458();
  __chkstk_darwin(v13);
  sub_1000039BC();
  sub_10000A7F8();
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v5;
    v17 = v3;
    v18 = [v15 topViewController];
    if (v18)
    {
      v19 = v18;
      v39 = v17;
      v38 = v0;
      v20 = [v16 selectedViewController];
      if (v20 && (v21 = v20, sub_100002FC4(0, &qword_1000FFFA8), v22 = v17, sub_100041D9C(), v23 = static NSObject.== infix(_:_:)(), v22, v21, (v23 & 1) != 0))
      {
        v24 = swift_dynamicCastObjCProtocolConditional();
        if (v24)
        {
          [v24 scrollForNavigationTap];
        }

        else
        {
        }
      }

      else
      {
        type metadata accessor for RootPPTTestCase();
        sub_100004730();
        sub_1000042A8(v25, v26, v27, v28);
        static RootNavigationContext.TransitionType.default.getter();
        sub_100004730();
        RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
        v29 = *(v38 + OBJC_IVAR___WFMainViewController_content);
        v30 = sub_100011E00();
        v31(v30);
        sub_1000060AC();
        sub_1000042A8(v32, v33, v34, v12);
        v35 = v29;
        sub_10000BAF8();

        sub_1000069B0(v1, &qword_100100020);
        v36 = sub_100005178();
        v37(v36);
      }
    }

    else
    {
    }
  }

  sub_100002EEC();
}

void sub_10003CE20()
{
  sub_1000043AC();
  v5 = v4;
  v6 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100019C2C();
  v10 = sub_10002E87C(&qword_100100020);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_1000043E0();
  v12 = sub_10002E87C(&qword_100100028);
  sub_100002EE0(v12);
  sub_100005B90();
  __chkstk_darwin(v13);
  sub_100041D64();
  v14 = [v5 tabBarItem];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 tag];

    if (v16 == 2)
    {
      v30 = enum case for GalleryNavigationDestination.home(_:);
      v31 = type metadata accessor for GalleryNavigationDestination();
      sub_100003EC8();
      (*(v32 + 104))(v1, v30, v31);
      sub_1000060AC();
      sub_1000042A8(v33, v34, v35, v31);
    }

    else if (v16 != 1)
    {
      if (v16)
      {
LABEL_16:
        sub_100002EEC();
        return;
      }

      objc_opt_self();
      sub_100041DA8();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = v5;
        v20 = [v18 topViewController];
        if (v20)
        {
          v21 = v20;
          type metadata accessor for LibraryViewController();
          if (swift_dynamicCastClass())
          {
            if (*(v0 + OBJC_IVAR___WFMainViewController_display))
            {
              v22 = &enum case for RootNavigationDestination.shortcuts(_:);
            }

            else
            {
              v22 = &enum case for RootNavigationDestination.allShortcuts(_:);
            }

            (*(v8 + 104))(v3, *v22, v6);
            sub_1000060AC();
            sub_1000042A8(v23, v24, v25, v6);
            sub_10000D588(v3);
            type metadata accessor for RootNavigationContext();
            sub_100004730();
            sub_1000042A8(v26, v27, v28, v29);
            sub_100007078();
            sub_10000B314();

            sub_1000069B0(v2, &qword_100100020);
            goto LABEL_16;
          }
        }

        v42 = sub_1000179CC();
        v43(v42);
        sub_100041F8C();
        sub_10000448C();
        sub_100004594(v44, v45);
        sub_100006144();
        RootView.navigate(to:)();

        goto LABEL_15;
      }
    }

    v36 = sub_1000179CC();
    v37(v36);
    sub_100041F8C();
    sub_10000448C();
    sub_100004594(v38, v39);
    sub_100006144();
    RootView.navigate(to:)();
LABEL_15:
    v40 = sub_100003BD0();
    v41(v40);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_10003D230()
{
  sub_1000079FC();
  v2 = sub_10002E87C(&qword_100100010);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  sub_10001C6D0();
  v4 = type metadata accessor for IndexPath();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_1000043E0();
  sub_10003437C();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  sub_10000E8F4();
  sub_1000AB7D8();

  sub_10000F7EC(v1, 1, v4);
  if (v10)
  {

    sub_1000069B0(v1, &qword_100100010);
LABEL_8:
    WFUserInterfaceFromViewController();
    goto LABEL_9;
  }

  (*(v6 + 32))(v0, v1, v4);
  v11 = sub_10000E968();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [v11 cellForItemAtIndexPath:isa];

  if (!v13)
  {
    v16 = sub_100005CF0();
    v17(v16);

    goto LABEL_8;
  }

  sub_100006324();
  WFUserInterfaceFromView();

  v14 = sub_100005CF0();
  v15(v14);
LABEL_9:
  sub_1000046DC();
}

void sub_10003D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000043AC();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  type metadata accessor for OpenWorkflowOptions();
  sub_100004458();
  __chkstk_darwin(v25);
  sub_1000039BC();
  sub_10000A7F8();
  v26 = sub_10002E87C(&qword_100100018);
  v27 = sub_100002EE0(v26);
  __chkstk_darwin(v27);
  sub_100003EF4();
  sub_100007D58();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  if (v24)
  {

    OpenWorkflowOptions.ActionError.init(actionIndex:message:)();
    v31 = type metadata accessor for OpenWorkflowOptions.ActionError();
    v32 = 0;
  }

  else
  {
    v31 = type metadata accessor for OpenWorkflowOptions.ActionError();
    v32 = 1;
  }

  sub_1000042A8(v30, v32, 1, v31);
  sub_10000823C(v30, v20, &qword_100100018);
  OpenWorkflowOptions.init(scrolledToActionIndex:actionError:isNewWorkflow:showIconPicker:isEmbeddedInAutomation:triggerInputType:onOpen:)();
  v33 = sub_100011E00();
  sub_1000355A8(v33, v34);
  swift_unknownObjectRelease();
  v35 = sub_10000F430();
  v36(v35);
  sub_1000069B0(v30, &qword_100100018);
  sub_100002EEC();
}

void sub_10003D7C8()
{
  v0 = String._bridgeToObjectiveC()();
  WFPostAccessibilityAnnouncement();
}

void sub_10003D880(void *a1, void *a2)
{
  sub_1000060B8();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v2;
  v14 = sub_1000416A8;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  sub_1000137D0();
  v12 = v6;
  v13 = &unk_1000F1608;
  v7 = _Block_copy(&v10);
  v8 = a2;
  v9 = v2;

  [a1 dismissViewControllerAnimated:1 completion:{v7, v10, v11}];
  _Block_release(v7);
}

uint64_t sub_10003D95C(void *a1)
{
  result = [a1 isDeleted];
  if ((result & 1) == 0)
  {
    type metadata accessor for MainViewController(0);
    sub_100004594(&qword_1000FFF58, type metadata accessor for MainViewController);
    WorkflowOpener.openWorkflow(_:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003DA00()
{
  sub_1000043AC();
  v2 = v1;
  v3 = sub_10002E87C(&qword_100100010);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_10001C780();
  v5 = type metadata accessor for IndexPath();
  sub_100004458();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100019C2C();
  sub_10003437C();
  if (v7)
  {
    v8 = v7;
    sub_10000E8F4();
    v9 = [v2 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000AB28C();

    sub_10000F7EC(v0, 1, v5);
    if (v10)
    {

      sub_1000069B0(v0, &qword_100100010);
    }

    else
    {
      v11 = sub_100011E00();
      v12(v11);
      v13 = sub_10000E968();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v13 cellForItemAtIndexPath:isa];

      v15 = sub_100003BD0();
      v16(v15);
    }
  }

  sub_100002EEC();
}

void sub_10003DC40()
{
  sub_10003437C();
  if (v0)
  {
    v1 = v0;
    sub_100014F10();
  }
}

uint64_t sub_10003DD14()
{
  type metadata accessor for MainViewController(0);
  sub_10000448C();
  sub_100004594(v0, v1);
  sub_1000042EC();
  WorkflowOpener.openWorkflow(_:)();
  return swift_unknownObjectRelease();
}

void sub_10003DE00(double a1, uint64_t a2, id a3, char a4)
{
  v9 = type metadata accessor for Logger();
  sub_100004458();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000039BC();
  sub_10000A7F8();
  static WFLog.subscript.getter();
  v13 = v4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v23 = a4;
    swift_slowAlloc();
    v24 = sub_100041DCC();
    *v9 = 134349570;
    *(v9 + 4) = a1;
    *(v9 + 12) = 1026;
    *(v9 + 14) = a3 & 1;
    *(v9 + 18) = 2080;
    sub_10003437C();
    if (v16)
    {
      v17 = v16;
      a3 = [v16 description];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xEB00000000217972;
      v18 = 0x617262696C206F4ELL;
    }

    sub_10000DA48(v18, v20, &v24);
    sub_10000A5E0();

    *(v9 + 20) = a3;
    _os_log_impl(&_mh_execute_header, v14, v15, "Running state did change with progress: %{public}f waiting: %{BOOL,public}d visibleLibrary: %s", v9, 0x1Cu);
    sub_100041F70();
    sub_1000046C4();
    sub_1000046C4();

    (*(v11 + 8))(v5, v9);
    a4 = v23;
  }

  else
  {

    (*(v11 + 8))(v5, v9);
  }

  sub_10003437C();
  if (v21)
  {
    v22 = v21;
    sub_10006BD74(a4 & 1);
  }
}

void sub_10003E0F0()
{
  sub_1000043AC();
  v3 = v2;
  v4 = sub_10002E87C(&qword_100100008);
  sub_100002EE0(v4);
  sub_100005B90();
  __chkstk_darwin(v5);
  sub_100019C2C();
  v6 = type metadata accessor for Logger();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_100041D64();
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();
    v11 = [v10 wf_isUserCancelledError];
  }

  else
  {
    v11 = 0;
  }

  static WFLog.subscript.getter();
  v12 = v0;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    swift_slowAlloc();
    sub_100041DCC();
    *v6 = 67109378;
    *(v6 + 4) = v11;
    *(v6 + 8) = 2080;
    sub_10003437C();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 description];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v18 = 0x617262696C206F4ELL;
    }

    v19 = sub_100006324();
    sub_10000DA48(v19, v20, v21);
    sub_100007DC8();

    *(v6 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "Did finish running workflow cancelled: %{BOOL}d visibleLibrary: %s", v6, 0x12u);
    sub_100041F70();
    sub_1000046C4();
    sub_1000046C4();

    (*(v8 + 8))(v1, v6);
  }

  else
  {

    (*(v8 + 8))(v1, v6);
  }

  sub_10003437C();
  if (v22)
  {
    v23 = v22;
    sub_100013B1C();
  }

  if (!v3)
  {
    sub_10003437C();
    if (v24)
    {

      type metadata accessor for TaskPriority();
      sub_100004730();
      sub_1000042A8(v25, v26, v27, v28);
      type metadata accessor for MainActor();
      v29 = v12;
      v30 = static MainActor.shared.getter();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = &protocol witness table for MainActor;
      v31[4] = v29;
      sub_100084AEC();
    }
  }

  sub_100002EEC();
}

uint64_t sub_10003E414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10003E4AC, v6, v5);
}

uint64_t sub_10003E4AC()
{
  sub_100004304();
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for AppStorePromptController();
    v3 = [v2 window];

    *(v0 + 48) = [v3 windowScene];
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_10003E5C8;
    v1 = sub_1000042EC();
  }

  else
  {
    __break(1u);
  }

  return static AppStorePromptController.presentReviewPromptIfNeeded(in:database:)(v1);
}

uint64_t sub_10003E5C8()
{
  sub_100004304();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  sub_100041EC8();
  *v4 = v3;

  v5 = *(v1 + 40);
  v6 = *(v1 + 32);

  return _swift_task_switch(sub_10003E700, v6, v5);
}

uint64_t sub_10003E700()
{

  sub_100003BDC();

  return v0();
}

void sub_10003E7E4()
{
  sub_1000043AC();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Logger();
  sub_100004458();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003EF4();
  sub_100007D58();
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = [v6 workflow];
  if (v14)
  {
    v15 = v14;
    v16 = *&v2[OBJC_IVAR___WFMainViewController_runCoordinator];
    v17 = [v16 runningWorkflow];
    if (v17)
    {

      static WFLog.subscript.getter();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = sub_100041DB4();
        v29 = v7;
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Received incoming workflow to run, but a workflow is already running. Stopping that one.", v20, 2u);
        v7 = v29;
        sub_1000046C4();
      }

      (*(v9 + 8))(v13, v7);
      [v16 stop];
    }

    v21 = v4;
    v22 = v6;
    v23 = v2;
    v24 = v15;
    sub_100039698(v23, v23, v24, v4, v22);
  }

  else
  {
    static WFLog.subscript.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_100041DB4();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Received incoming workflow to run, with no reference", v27, 2u);
      sub_1000046C4();
    }

    (*(v9 + 8))(v1, v7);
  }

  sub_100002EEC();
}

id sub_10003EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainViewController(0);
  sub_100004594(&qword_100100000, type metadata accessor for MainViewController);
  RootView.scroll(toWorkflow:animated:)();
  v8 = *(a1 + OBJC_IVAR___WFMainViewController_runCoordinator);

  return [v8 resumeWorkflowReference:a2 fromSource:a3 withState:a4];
}

void sub_10003EB90()
{
  sub_1000079FC();
  sub_10000E8D4();
  v2 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  sub_10000A7F8();
  (*(v4 + 104))(v1, enum case for RootNavigationDestination.automations(_:), v2);
  type metadata accessor for MainViewController(0);
  sub_10000448C();
  sub_100004594(v6, v7);
  sub_100011DAC();
  RootView.navigate(to:)();
  v8 = sub_100005178();
  v9(v8);
  v10 = *(v0 + OBJC_IVAR___WFMainViewController_content);
  if (v10)
  {
    objc_opt_self();
    sub_1000095CC();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      sub_100003BD0();
      v14 = String._bridgeToObjectiveC()();
      [v12 flashAutomationForTriggerID:v14];
    }
  }

  sub_1000046DC();
}

uint64_t sub_10003ED60()
{
  sub_1000079FC();
  v1 = v0;
  v3 = v2;
  sub_1000060B8();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  type metadata accessor for MainViewController(0);
  sub_10000448C();
  sub_100004594(v5, v6);

  RootView.importShortcutFile(with:openAfterImport:completion:)();
  sub_1000046DC();
}

void sub_10003EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_10003EF50(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GalleryHostingViewController.GalleryHostingController();
  objc_msgSendSuper2(&v6, "setContentScrollView:forEdge:", a1, 15);
  v3 = [v1 navigationController];
  v4 = [v3 topViewController];

  [v4 setContentScrollView:a1 forEdge:15];
  if (a1)
  {
    v5 = [objc_opt_self() systemBackgroundColor];
    [a1 setBackgroundColor:v5];
  }
}

void sub_10003F078(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10003EF50(a3);
}

uint64_t sub_10003F120(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_1000FFEC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v8 - v5, a1, v3);
  v6 = UIHostingController.init(rootView:)();
  (*(v4 + 8))(a1, v3);
  return v6;
}

void *sub_10003F288(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_1000FFEC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_10003F3C0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GalleryHostingViewController.GalleryHostingController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10003F498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GalleryHostingViewController.GalleryHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003F514(uint64_t a1, int a2)
{
  v5 = sub_10002E87C(&qword_1000FFFC8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  v11 = type metadata accessor for GalleryNavigationDestination();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  (*(v12 + 104))(&v54 - v16, enum case for GalleryNavigationDestination.home(_:), v11);
  v18 = static GalleryNavigationDestination.== infix(_:_:)();
  v61 = v12;
  v62 = v11;
  v59 = *(v12 + 8);
  v60 = v12 + 8;
  v59(v17, v11);
  v19 = [v2 navigationController];
  v20 = v19;
  if (v18)
  {

    return;
  }

  v55 = a2;
  v56 = a2;
  v58 = v15;
  if (!v19)
  {
    goto LABEL_9;
  }

  v21 = [v19 topViewController];

  if (!v21)
  {
    goto LABEL_9;
  }

  type metadata accessor for GalleryHostingViewController(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

LABEL_9:
    v26 = v62;
    sub_1000042A8(v10, 1, 1, v62);
    sub_1000069B0(v10, &qword_1000FFFC8);
    goto LABEL_10;
  }

  v24 = v61;
  v23 = v62;
  (*(v61 + 16))(v10, v22 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_destination, v62);

  sub_1000042A8(v10, 0, 1, v23);
  sub_10000CB78(v10, v8, &qword_1000FFFC8);
  v25 = v24;
  v26 = v23;
  v27 = (*(v25 + 88))(v8, v23);
  if (v27 == enum case for GalleryNavigationDestination.loadingPage(_:))
  {
    v59(v8, v23);
LABEL_22:
    v52 = [v2 navigationController];
    if (v52)
    {
      v53 = v52;
    }

    v55 = 0;
    goto LABEL_10;
  }

  if (v27 == enum case for GalleryNavigationDestination.loadingCollection(_:))
  {
    (*(v61 + 96))(v8, v23);

    v47 = a1;
    v48 = v2;
    v49 = *(sub_10002E87C(&qword_1000FFFD0) + 48);
    v50 = type metadata accessor for GalleryCollectionDescriptor();
    v51 = &v8[v49];
    v2 = v48;
    a1 = v47;
    (*(*(v50 - 8) + 8))(v51, v50);
    goto LABEL_22;
  }

  v59(v8, v23);
LABEL_10:
  v57 = v2;
  type metadata accessor for GalleryHostingViewController(0);
  v28 = v61;
  v29 = *(v61 + 16);
  v29(v17, a1, v26);
  v30 = &v2[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_rootNavigator];
  Strong = swift_unknownObjectWeakLoadStrong();
  v32 = *(v30 + 1);
  v33 = *&v2[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_userInterface];
  swift_getObjectType();
  swift_unknownObjectRetain();
  v34 = Strong;
  v35 = v62;
  v36 = sub_100006688(v17, v34, v32, v33);
  v37 = v58;
  v29(v58, a1, v35);
  v38 = v37;
  if ((*(v28 + 88))(v37, v35) == enum case for GalleryNavigationDestination.shortcut(_:))
  {
    (*(v28 + 96))(v37, v35);
    v39 = v57;
    v40 = [v57 presentedViewController];
    v41 = v56;
    if (v40)
    {
      v42 = v40;
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        [v43 dismissViewControllerAnimated:v41 & 1 completion:0];
      }
    }

    [v39 presentViewController:v36 animated:v41 & 1 completion:0];

    v44 = type metadata accessor for GalleryShortcutDescriptor();
    (*(*(v44 - 8) + 8))(v38, v44);
  }

  else
  {
    v45 = [v57 navigationController];
    if (v45)
    {
      v46 = v45;
      [v45 pushViewController:v36 animated:v55 & 1];
    }

    v59(v38, v35);
  }
}

uint64_t sub_10003FB40(uint64_t a1)
{
  v3 = sub_10002E87C(&qword_1000FFFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  if (*(v1 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hasAppeared))
  {

    return sub_100040334();
  }

  else
  {
    v7 = type metadata accessor for RootPPTTestCase();
    (*(*(v7 - 8) + 16))(v5, a1, v7);
    sub_1000042A8(v5, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingTest;
    swift_beginAccess();
    sub_1000416B0(v5, v1 + v8);
    return swift_endAccess();
  }
}

void *sub_10003FC78()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController);
  v2 = v1;
  return v1;
}

void sub_10003FCA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController);
  *(v1 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController) = a1;
}

void sub_10003FCBC()
{
  *(v0 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController) = 0;
  *(v0 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_rootNavigator + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hasAppeared) = 0;
  v1 = OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingTest;
  v2 = type metadata accessor for RootPPTTestCase();
  sub_1000042A8(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingPresentation;
  *v3 = 0;
  *(v3 + 8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10003FDBC()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for GalleryHostingViewController(0);
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hostingController];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  [result setAutoresizingMask:18];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [v14 addSubview:result];

    return [v1 didMoveToParentViewController:v0];
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_10003FF9C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GalleryHostingViewController(0);
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController];
  if (v3)
  {
    v4 = v3;
    sub_100016A64();
  }
}

void sub_100040058(char a1)
{
  v3 = sub_10002E87C(&qword_1000FFFC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  v9 = type metadata accessor for RootPPTTestCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for GalleryHostingViewController(0);
  v19.receiver = v1;
  v19.super_class = v13;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1);
  v14 = OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingTest;
  swift_beginAccess();
  sub_10000823C(&v1[v14], v8, &qword_1000FFFC0);
  if (sub_10000AB80(v8, 1, v9) == 1)
  {
    sub_1000069B0(v8, &qword_1000FFFC0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_100040334();
    (*(v10 + 8))(v12, v9);
    sub_1000042A8(v6, 1, 1, v9);
    swift_beginAccess();
    sub_1000416B0(v6, &v1[v14]);
    swift_endAccess();
  }

  v1[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hasAppeared] = 1;
  v15 = &v1[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingPresentation];
  v16 = *&v1[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingPresentation];
  if (v16)
  {
    [v1 presentViewController:v16 animated:v15[8] & 1 completion:0];
    v17 = *v15;
    *v15 = 0;
    v15[8] = 0;
  }
}

uint64_t sub_100040334()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hostingController);
  sub_100002FC4(0, &qword_1000FFFA8);
  v2 = v1;
  sub_10002E87C(&qword_1000FFFB0);
  if (swift_dynamicCast())
  {
    sub_100041C04(&v4, *(&v5 + 1));
    RootPPTTestCase.name.getter();
    RootPPTTestCase.parameters.getter();
    dispatch thunk of PPTTestHost.runTest(_:options:)();

    return sub_10000DF90(&v4);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    return sub_1000069B0(&v4, &qword_1000FFFB8);
  }
}

void sub_10004045C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GalleryHostingViewController(0);
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController];
  if (v3)
  {
    v4 = v3;
    sub_100016A64();
  }
}

uint64_t sub_100040530(void *a1)
{
  if (!a1)
  {
    dispatch thunk of GallerySearchManager.isActive.setter();
LABEL_8:

    return dispatch thunk of GallerySearchManager.searchTerm.setter();
  }

  sub_1000A1240(a1);
  if (v2)
  {
    String.ifNotEmpty.getter();
    v4 = v3;

    if (v4)
    {
    }
  }

  dispatch thunk of GallerySearchManager.isActive.setter();
  sub_1000A1240(a1);
  if (!v5)
  {
    goto LABEL_8;
  }

  return dispatch thunk of GallerySearchManager.searchTerm.setter();
}

uint64_t getEnumTagSinglePayload for MainViewController.Display(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MainViewController.Display(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1000408E0()
{
  result = qword_1000FFF50;
  if (!qword_1000FFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFF50);
  }

  return result;
}

id sub_100040940(void *a1, void *a2)
{
  v3 = v2;
  v10 = 0;
  v6 = [v3 initWithCreationOptions:a1 database:a2 error:&v10];
  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_100040A14()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10008D124(0, v1[2] + 1, 1, v1);
    *v0 = v3;
  }
}

char *sub_100040A60(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002E87C(&qword_1000FFF80);
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

unsigned __int8 *sub_100040B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000410DC(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000410DC(uint64_t a1, unint64_t a2)
{
  v2 = sub_100041148(sub_100041144, 0, a1, a2);
  v6 = sub_10004117C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100041148(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return String.subscript.getter(15, v5 | (v4 << 16));
}

uint64_t sub_10004117C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10000DB0C(v9, 0), v12 = sub_1000412DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
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

unint64_t sub_1000412DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10008DB4C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10008DB4C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000414EC(void *a1)
{
  v2 = [a1 viewControllers];

  if (!v2)
  {
    return 0;
  }

  sub_100002FC4(0, &qword_1000FFFA8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100041564(void *a1)
{
  v1 = [a1 viewControllers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100002FC4(0, &qword_1000FFFA8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000415D4(void *a1)
{
  v2 = [a1 localizedShortTitle];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100041644(void *a1)
{
  v1 = [a1 input];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000416B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_1000FFFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041728(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    a1 = 0;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(a1, v4);
}

uint64_t sub_100041778()
{
  sub_100004304();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_100017410(v3);

  return sub_10003E414(v4, v5, v6, v2);
}

uint64_t sub_100041818()
{
  v1 = *v0;
  sub_100041EC8();
  *v2 = v1;

  sub_100003BDC();

  return v3();
}

void (*sub_100041914())(void)
{
  v1 = type metadata accessor for OpenWorkflowOptions();
  sub_10000A804(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100038EE0(v0 + v6, v8, v9);
}

uint64_t sub_1000419C8()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100017410(v4);

  return sub_100036260(v5, v6, v7, v3, v2);
}

unint64_t sub_100041A78()
{
  result = qword_1001000D8;
  if (!qword_1001000D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001000D8);
  }

  return result;
}

uint64_t sub_100041ACC()
{
  sub_100041ED4();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_100041B50()
{
  v1 = sub_10002E87C(&qword_100100020);
  sub_10000A804(v1);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  v9 = *(v8 + *(v3 + 64));

  sub_10000CC18(v4, v5, v6, v7, v8, v9);
}

void *sub_100041C04(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100041C50()
{
  result = qword_100100180;
  if (!qword_100100180)
  {
    sub_100041CB4(&qword_100100178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100180);
  }

  return result;
}

uint64_t sub_100041CB4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100041DB4()
{

  return swift_slowAlloc();
}

uint64_t sub_100041DCC()
{

  return swift_slowAlloc();
}

NSString sub_100041DE8()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100041E0C()
{

  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
}

id sub_100041E24(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100041E3C(uint64_t a1, unint64_t *a2)
{

  return sub_100002FC4(0, a2);
}

uint64_t sub_100041E54()
{
  sub_10000B960(*(v0 - 144));

  return swift_retain_n();
}

uint64_t sub_100041EF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5[4] = a2;
  v5[5] = v2;
  v5[12] = v6;
  v5[13] = result;
  v5[8] = result;
  v5[9] = v3;
  v5[10] = v4;
  return result;
}

void sub_100041F18()
{

  sub_10000B180();
}

uint64_t sub_100041F38()
{

  return type metadata accessor for AppNameCache(0);
}

uint64_t sub_100041F58()
{

  return swift_slowAlloc();
}

uint64_t sub_100041FA8()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 idiom];

  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100005D9C(v1);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100042144(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10004220C()
{
  v0 = objc_opt_self();
  v1 = [v0 createDatabaseForTesting];
  [v0 setDefaultDatabase:v1];
  WFDatabase.performTransaction<A>(reason:_:)();
}

void sub_1000422E8(void *a1)
{
  v23 = 0;
  v1 = sub_100047CE4(0x6F68532074736554, 0xEE00737475637472, 0xE959u, &v23, a1);
  v2 = v23;
  if (v1)
  {
    v3 = 15;
    for (i = &word_1000F0D68; ; i += 12)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;
      v8 = objc_allocWithZone(WFWorkflowRecord);

      v9 = [v8 init];
      sub_10006386C(v6, v5, v9);
      v10 = [objc_opt_self() randomPaletteColor];
      v11 = objc_allocWithZone(WFWorkflowIcon);
      v12 = sub_1000AF278(v10, v7, 0, 0xF000000000000000);
      [v9 setIcon:v12];

      v13 = [objc_allocWithZone(WFWorkflowCreationOptions) initWithRecord:v9];
      v14 = [v1 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      sub_100047D60(v15, v17, v13);
      v23 = 0;
      v18 = [a1 createWorkflowWithOptions:v13 error:&v23];
      v19 = v23;
      if (!v18)
      {
        break;
      }

      if (!--v3)
      {

        return;
      }
    }

    v21 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v20 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100042574(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainScene];
  if (v4 && (v5 = v4, v6 = [v4 delegate], v5, v6))
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7 && [v7 rootViewController])
    {
      type metadata accessor for MainViewController(0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = sub_100042684(a1, a2, v8);
      }

      else
      {
        v9 = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100042684(uint64_t a1, void *a2, unint64_t a3)
{
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x80000001000C7C20;
  if (String.hasPrefix(_:)(v6))
  {

    return sub_10004284C(a1, a2);
  }

  else
  {
    v8._object = 0xEF72657761724473;
    v8._countAndFlagsBits = 0x74756374726F6873;
    if (String.hasPrefix(_:)(v8) || (v9._object = 0xEF726F7469644573, v9._countAndFlagsBits = 0x74756374726F6873, String.hasPrefix(_:)(v9)))
    {

      return sub_100042E50(a1, a2, a3);
    }

    else
    {
      v10._object = 0x80000001000C7C40;
      v10._countAndFlagsBits = 0xD000000000000010;
      if (String.hasPrefix(_:)(v10))
      {

        return sub_100045C30(a1, a2, a3);
      }

      else
      {
        return 0;
      }
    }
  }
}

BOOL sub_10004284C(uint64_t a1, void *a2)
{
  v31 = a2;
  v30 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchTime();
  v5 = *(v38 - 8);
  v6 = __chkstk_darwin(v38);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for RootNavigationDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultDatabase];
  v39 = v15;
  v40 = v2;
  WFDatabase.performTransaction<A>(reason:_:)();
  (*(v12 + 104))(v14, enum case for RootNavigationDestination.allShortcuts(_:), v11);
  type metadata accessor for MainViewController(0);
  sub_1000467F8(&qword_100100000, type metadata accessor for MainViewController);
  RootView.navigate(to:)();
  (*(v12 + 8))(v14, v11);
  sub_10003437C();
  v17 = v16;
  if (v16)
  {
    sub_100002FC4(0, &qword_1001001B8);
    v28 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v27 = v10;
    + infix(_:_:)();
    v29 = *(v5 + 8);
    v29(v8, v38);
    v18 = swift_allocObject();
    v19 = v31;
    v18[2] = v30;
    v18[3] = v19;
    v18[4] = v17;
    aBlock[4] = sub_1000467EC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003190;
    aBlock[3] = &unk_1000F1B30;
    v20 = _Block_copy(aBlock);

    v31 = v17;
    v21 = v33;
    static DispatchQoS.unspecified.getter();
    v41 = &_swiftEmptyArrayStorage;
    sub_1000467F8(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002E87C(&qword_1001001C0);
    v22 = v32;
    sub_100009624(&qword_100102620, &qword_1001001C0);
    v23 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v27;
    v25 = v28;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

    _Block_release(v20);
    (*(v37 + 8))(v23, v22);
    (*(v34 + 8))(v21, v36);
    v29(v24, v38);
  }

  else
  {
  }

  return v17 != 0;
}

uint64_t sub_100042E50(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v197 = a3;
  v205 = a2;
  v203 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_AXSAccessibilityEnabled() || _AXSApplicationAccessibilityEnabled())
  {
    static WFLog.subscript.getter();
    v12 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v3))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
    }

    (*(v5 + 8))(v7, v4);
  }

  v14 = 0xD000000000000010;
  v15 = v203;
  v16 = v205;
  v17 = v203 == 0xD000000000000021 && 0x80000001000C7CD0 == v205;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v33 = v15 == 0xD00000000000002CLL && 0x80000001000C7D00 == v16;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v209 = &_swiftEmptyArrayStorage;
      sub_10002E87C(&unk_100102430);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD00000000000001BLL;
      v3 = inited + 32;
      *(inited + 16) = xmmword_1000C0D70;
      *(inited + 40) = 0x80000001000C7E70;
      *(inited + 48) = 0xD00000000000001BLL;
      *(inited + 56) = 0x80000001000C7E30;
      *(inited + 64) = 0xD000000000000018;
      *(inited + 72) = 0x80000001000C7E10;
      *(inited + 80) = 0xD00000000000001FLL;
      v191[1] = inited;
      *(inited + 88) = 0x80000001000C7E90;
      v35 = [objc_allocWithZone(WFBundledActionProvider) init];
      v36 = [v35 createAllAvailableActionsIncludingMissingActions:0];

      if (v36)
      {
        sub_100002FC4(0, &qword_1001000C0);
        sub_100047DC4();
        v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else if (sub_10000D55C(&_swiftEmptyArrayStorage))
      {
        v37 = sub_100046D50(&_swiftEmptyArrayStorage);
      }

      else
      {
        v37 = &_swiftEmptySetSingleton;
      }

      v210 = sub_100046CA0(v37);
      v45 = 0;
      sub_100046F14(&v210);

      v46 = v210;
      v79 = sub_10000D55C(v210);
      if (!v79)
      {
LABEL_152:

        swift_setDeallocating();
        sub_100069AC8();
        v120 = v209;
        v121 = objc_allocWithZone(WFWorkflow);
        v122 = sub_100046B10(1953719636, 0xE400000000000000, 0, 0, 0, 0, v120);
        v40 = [v122 record];

        goto LABEL_153;
      }

      v80 = v79;
      if (v79 >= 1)
      {
        v14 = 0;
        v81 = 0;
        v207 = (v46 & 0xC000000000000001);
        v198 = v46 + 32;
        v199 = 0;
        v194 = v46;
        v195 = v79;
        v191[0] = v3;
        while (1)
        {
          if (v207)
          {
            v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v82 = *(v198 + 8 * v81);
          }

          v83 = v82;
          v84 = [v82 app];
          if (v84 && (v85 = v84, v86 = [v84 isInstalled], v85, !v86) || !objc_msgSend(v83, "visibleForUse:", 0))
          {

            goto LABEL_148;
          }

          v87 = v83;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45 >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v88 = v209;
          v206 = v87;
          v89 = [v87 createAccompanyingActions];
          if (v89)
          {
            break;
          }

LABEL_139:
          if (v14 == 5 * (v14 / 5))
          {
            if (v199 % 4 < 0)
            {
              goto LABEL_218;
            }

            v112 = objc_opt_self();

            v113 = [v112 sharedRegistry];
            v114 = String._bridgeToObjectiveC()();

            v115 = [v113 createActionWithIdentifier:v114 serializedParameters:0];

            v45 = v115;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v116 = [v45 createAccompanyingActions];
            if (v116)
            {
              v117 = v116;
              sub_100002FC4(0, &qword_1001000C0);
              v118 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              sub_100042144(v118, sub_10000D55C, sub_10006BD40, sub_10006B830);
            }

            v110 = __OFADD__(v199++, 1);
            if (v110)
            {
              goto LABEL_219;
            }
          }

          else
          {
          }

          v110 = __OFADD__(v14++, 1);
          if (v110)
          {
            goto LABEL_215;
          }

LABEL_148:
          if (++v81 == v80)
          {
            goto LABEL_152;
          }
        }

        v90 = v89;
        v202 = v14;
        v45 = sub_100002FC4(0, &qword_1001000C0);
        v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = v91 >> 62;
        if (v91 >> 62)
        {
          v93 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v93 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v88;
        v94 = v88 >> 62;
        *&v204 = v91;
        if (v94)
        {
          v119 = v93;
          v95 = _CocoaArrayWrapper.endIndex.getter();
          v93 = v119;
        }

        else
        {
          v95 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v96 = v95 + v93;
        if (__OFADD__(v95, v93))
        {
          goto LABEL_216;
        }

        v201 = v93;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v94)
          {
            v97 = v14 & 0xFFFFFFFFFFFFFF8;
            if (v96 <= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_123;
            }

            goto LABEL_122;
          }
        }

        else if (!v94)
        {
LABEL_122:
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v97 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_123:
          v98 = *(v97 + 16);
          v99 = (*(v97 + 24) >> 1) - v98;
          v100 = v97 + 8 * v98;
          v200 = v14;
          v196 = v97;
          if (v92)
          {
            v46 = v204;
            v102 = _CocoaArrayWrapper.endIndex.getter();
            if (v102)
            {
              v45 = v102;
              v103 = _CocoaArrayWrapper.endIndex.getter();
              if (v99 < v103)
              {
                goto LABEL_225;
              }

              if (v45 < 1)
              {
                goto LABEL_226;
              }

              v192 = v103;
              v193 = v81;
              v104 = v100 + 32;
              sub_100009624(&qword_100100208, &qword_100100200);
              v105 = 0;
              v46 = v204;
              do
              {
                sub_10002E87C(&qword_100100200);
                v106 = sub_10006B9E0(&v210, v105, v46);
                v108 = *v107;
                (v106)(&v210, 0);
                *(v104 + 8 * v105++) = v108;
              }

              while (v45 != v105);
              v16 = v205;
              v3 = v191[0];
              v101 = v192;
              v81 = v193;
              goto LABEL_133;
            }
          }

          else
          {
            v46 = v204;
            v101 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v101)
            {
              if (v99 < v101)
              {
                goto LABEL_224;
              }

              swift_arrayInitWithCopy();
LABEL_133:

              v14 = v202;
              v80 = v195;
              if (v101 < v201)
              {
                goto LABEL_217;
              }

              if (v101 > 0)
              {
                v109 = *(v196 + 16);
                v110 = __OFADD__(v109, v101);
                v111 = v109 + v101;
                if (v110)
                {
                  goto LABEL_223;
                }

                *(v196 + 16) = v111;
              }

LABEL_138:
              v209 = v200;
              v46 = v194;
              goto LABEL_139;
            }
          }

          v14 = v202;
          v80 = v195;
          if (v201 > 0)
          {
            goto LABEL_217;
          }

          goto LABEL_138;
        }

        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_122;
      }

LABEL_227:
      __break(1u);
LABEL_228:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    else
    {
      v43 = v15 == 0xD000000000000029 && 0x80000001000C7D30 == v16;
      v44 = v15;
      v45 = "abcdef0123456789";
      if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v130 = v44 == 0xD000000000000033 && 0x80000001000C7D60 == v16;
        if (!v130 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v78 = [objc_allocWithZone(WFWorkflowRecord) init];
          goto LABEL_154;
        }

        v209 = &_swiftEmptyArrayStorage;
        v46 = "e_bigDictionaryList";
        v210 = &_swiftEmptyArrayStorage;
        sub_100062CF8(0, 100000, 0);
        v131 = 0;
        v14 = v210;
        v16 = "e_bigDictionaryList" & 0x2F00000000000000;
        do
        {
          if (v16 == 0x2000000000000000)
          {
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
LABEL_225:
            __break(1u);
LABEL_226:
            __break(1u);
            goto LABEL_227;
          }

          v132 = String.count.getter();
          if (v132 < 0)
          {
            goto LABEL_221;
          }

          v133 = v132;
          if (!v132)
          {
            goto LABEL_222;
          }

          v208 = 0;
          swift_stdlib_random();
          if (v133 > v208 * v133)
          {
            v134 = -v133 % v133;
            while (v134 > v208 * v133)
            {
              v208 = 0;
              swift_stdlib_random();
            }
          }

          String.index(_:offsetBy:)();
          v45 = String.subscript.getter();
          v136 = v135;
          v210 = v14;
          v3 = *(v14 + 16);
          v137 = *(v14 + 24);
          if (v3 >= v137 >> 1)
          {
            sub_100062CF8(v137 > 1, v3 + 1, 1);
            v14 = v210;
          }

          ++v131;
          *(v14 + 16) = v3 + 1;
          v138 = v14 + 16 * v3;
          *(v138 + 32) = v45;
          *(v138 + 40) = v136;
        }

        while (v131 != 100000);
        v210 = v14;
        sub_10002E87C(&qword_1001001D0);
        sub_100009624(&qword_1001001D8, &qword_1001001D0);
        v139 = String.init<A>(_:)();
        v202 = v140;
        *&v204 = objc_opt_self();
        v141 = [v204 sharedRegistry];
        v142 = String._bridgeToObjectiveC()();
        v143 = [v141 createActionWithIdentifier:v142 serializedParameters:0];

        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v201 = v143;
        [v143 copyForDuplicating];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        sub_10002E87C(&unk_100102430);
        v144 = swift_initStackObject();
        *(v144 + 16) = xmmword_1000C1330;
        *(v144 + 32) = 6647375;
        *(v144 + 40) = 0xE300000000000000;
        *(v144 + 48) = 7305044;
        *(v144 + 56) = 0xE300000000000000;
        *(v144 + 64) = 0x6565726854;
        *(v144 + 72) = 0xE500000000000000;
        *(v144 + 80) = 1920298822;
        *(v144 + 88) = 0xE400000000000000;
        *(v144 + 96) = 1702259014;
        *(v144 + 104) = 0xE400000000000000;
        *(v144 + 112) = 7891283;
        *(v144 + 120) = 0xE300000000000000;
        *(v144 + 128) = 0x6E65766553;
        *(v144 + 136) = 0xE500000000000000;
        *(v144 + 144) = 0x7468676945;
        *(v144 + 152) = 0xE500000000000000;
        sub_100002FC4(0, &qword_1001001E0);
        v210 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        sub_100062C94(0, 1, v144);
        sub_100062C94(7uLL, 1, v144);
        v207 = v144;
        v145 = objc_allocWithZone(WFPropertyListParameterValue);

        v146 = String._bridgeToObjectiveC()();

        [v145 initWithChooseFromMenuString:v146];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v147 = objc_allocWithZone(WFPropertyListParameterValue);
        v148 = String._bridgeToObjectiveC()();
        [v147 initWithChooseFromMenuString:v148];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v149 = objc_allocWithZone(WFPropertyListParameterValue);
        v150 = String._bridgeToObjectiveC()();
        [v149 initWithChooseFromMenuString:v150];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v151 = objc_allocWithZone(WFPropertyListParameterValue);
        v152 = String._bridgeToObjectiveC()();
        [v151 initWithChooseFromMenuString:v152];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v153 = objc_allocWithZone(WFPropertyListParameterValue);
        v154 = String._bridgeToObjectiveC()();
        [v153 initWithChooseFromMenuString:v154];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v155 = objc_allocWithZone(WFPropertyListParameterValue);
        v156 = String._bridgeToObjectiveC()();
        [v155 initWithChooseFromMenuString:v156];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v157 = objc_allocWithZone(WFPropertyListParameterValue);
        v158 = String._bridgeToObjectiveC()();
        [v157 initWithChooseFromMenuString:v158];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v159 = objc_allocWithZone(WFPropertyListParameterValue);
        v160 = String._bridgeToObjectiveC()();
        [v159 initWithChooseFromMenuString:v160];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v161 = sub_1000468B4();
        v162 = [v204 sharedRegistry];
        v163 = String._bridgeToObjectiveC()();
        v164 = [v162 createActionWithIdentifier:v163 serializedParameters:0];

        objc_opt_self();
        v165 = swift_dynamicCastObjCClassUnconditional();
        v166 = WFChooseFromMenuListItemsKey;
        v199 = v164;
        v200 = v161;
        [v165 setParameterState:v161 forKey:v166];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v206 = v165;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v167 = v202;

        v168 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v168[2] = 10;
        v168[4] = v139;
        v168[5] = v167;
        v168[6] = v139;
        v168[7] = v167;
        v168[8] = v139;
        v168[9] = v167;
        v168[10] = v139;
        v168[11] = v167;
        v168[12] = v139;
        v168[13] = v167;
        v168[14] = v139;
        v168[15] = v167;
        v168[16] = v139;
        v168[17] = v167;
        v168[18] = v139;
        v168[19] = v167;
        v168[20] = v139;
        v168[21] = v167;
        v168[22] = v139;
        v168[23] = v167;
        swift_bridgeObjectRetain_n();
        v210 = &_swiftEmptyArrayStorage;
        swift_bridgeObjectRetain_n();
        specialized ContiguousArray.reserveCapacity(_:)();
        for (i = 0; i != 160; i += 16)
        {
          v170 = objc_allocWithZone(WFPropertyListParameterValue);

          v171 = String._bridgeToObjectiveC()();

          [v170 initWithString:v171];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v172 = [v204 sharedRegistry];
        v173 = String._bridgeToObjectiveC()();
        sub_10002E87C(&qword_1001001E8);
        v174 = swift_initStackObject();
        *(v174 + 16) = xmmword_1000C0C20;
        v210 = 0x736D6574494657;
        v211 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        sub_100002FC4(0, &qword_1001001F0);

        v175 = sub_1000468B4();
        v70 = [v175 serializedRepresentation];

        if (v70)
        {

          *(v174 + 96) = swift_getObjectType();
          *(v174 + 72) = v70;
          Dictionary.init(dictionaryLiteral:)();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v177 = [v172 createActionWithIdentifier:v173 serializedParameters:isa];

          sub_100002FC4(0, &qword_1001001F8);
          for (j = 0; j != 128; j += 16)
          {

            v179 = [v206 createAccompanyingActionWithMode:1];
            objc_opt_self();
            v180 = swift_dynamicCastObjCClassUnconditional();
            v181 = sub_10004693C();
            [v180 setItemTitle:v181];

            v182 = v180;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            [v177 copyForDuplicating];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          swift_setDeallocating();
          sub_100069AC8();
          v183 = [v206 createAccompanyingActionWithMode:2];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v184 = 14;
          v185 = v201;
          do
          {
            [v185 copyForDuplicating];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            --v184;
          }

          while (v184);
          v186 = v209;
          v187 = objc_allocWithZone(WFWorkflow);
          v188 = sub_100046B10(1953719636, 0xE400000000000000, 0, 0, 0, 0, v186);
          v189 = [v188 record];

          v78 = v189;
          goto LABEL_154;
        }

LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      v209 = &_swiftEmptyArrayStorage;
      v210 = &_swiftEmptyArrayStorage;
      sub_100062CF8(0, 100000, 0);
      v16 = 0;
      v46 = v210;
      v3 = "e_bigDictionaryList" & 0x2F00000000000000;
      do
      {
        if (v3 == 0x2000000000000000)
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

        v47 = String.count.getter();
        if (v47 < 0)
        {
          goto LABEL_213;
        }

        v48 = v47;
        if (!v47)
        {
          goto LABEL_214;
        }

        v208 = 0;
        swift_stdlib_random();
        if (v48 > v208 * v48)
        {
          v49 = -v48 % v48;
          while (v49 > v208 * v48)
          {
            v208 = 0;
            swift_stdlib_random();
          }
        }

        String.index(_:offsetBy:)();
        v45 = String.subscript.getter();
        v51 = v50;
        v210 = v46;
        v14 = *(v46 + 16);
        v52 = *(v46 + 24);
        if (v14 >= v52 >> 1)
        {
          sub_100062CF8(v52 > 1, v14 + 1, 1);
          v46 = v210;
        }

        ++v16;
        *(v46 + 16) = v14 + 1;
        v53 = v46 + 16 * v14;
        *(v53 + 32) = v45;
        *(v53 + 40) = v51;
      }

      while (v16 != 100000);
      v210 = v46;
      sub_10002E87C(&qword_1001001D0);
      sub_100009624(&qword_1001001D8, &qword_1001001D0);
      v16 = String.init<A>(_:)();
      v46 = v54;
      v3 = objc_opt_self();
      v55 = [v3 sharedRegistry];
      v56 = String._bridgeToObjectiveC()();
      v45 = [v55 createActionWithIdentifier:v56 serializedParameters:0];

      v14 = &WFMainViewController__prots;
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_228;
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 *(v14 + 1480)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v207 = v3;
    v57 = [v3 sharedRegistry];
    v58 = String._bridgeToObjectiveC()();
    v206 = sub_10002E87C(&qword_1001001E8);
    v59 = swift_initStackObject();
    v204 = xmmword_1000C0C20;
    *(v59 + 16) = xmmword_1000C0C20;
    v210 = 0xD000000000000010;
    v211 = 0x80000001000C7E50;
    AnyHashable.init<A>(_:)();
    *(v59 + 96) = &type metadata for String;
    *(v59 + 72) = v16;
    *(v59 + 80) = v46;

    Dictionary.init(dictionaryLiteral:)();
    v60 = Dictionary._bridgeToObjectiveC()().super.isa;

    v61 = [v57 createActionWithIdentifier:v58 serializedParameters:v60];

    [v61 copyForDuplicating];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 copyForDuplicating];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 copyForDuplicating];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 copyForDuplicating];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v202 = v61;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    [v45 copyForDuplicating];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v62 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v62[2] = 10;
    v62[4] = v16;
    v62[5] = v46;
    v62[6] = v16;
    v62[7] = v46;
    v62[8] = v16;
    v62[9] = v46;
    v62[10] = v16;
    v62[11] = v46;
    v62[12] = v16;
    v62[13] = v46;
    v62[14] = v16;
    v62[15] = v46;
    v62[16] = v16;
    v62[17] = v46;
    v62[18] = v16;
    v62[19] = v46;
    v62[20] = v16;
    v62[21] = v46;
    v62[22] = v16;
    v62[23] = v46;
    swift_bridgeObjectRetain_n();
    v210 = &_swiftEmptyArrayStorage;
    swift_bridgeObjectRetain_n();
    specialized ContiguousArray.reserveCapacity(_:)();
    for (k = 0; k != 160; k += 16)
    {
      v64 = objc_allocWithZone(WFPropertyListParameterValue);

      v65 = String._bridgeToObjectiveC()();

      [v64 initWithString:v65];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v66 = [v207 sharedRegistry];
    v67 = String._bridgeToObjectiveC()();
    v68 = swift_initStackObject();
    *(v68 + 16) = v204;
    v210 = 0x736D6574494657;
    v211 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    sub_100002FC4(0, &qword_1001001F0);

    v69 = sub_1000468B4();
    v70 = [v69 serializedRepresentation];

    if (v70)
    {

      *(v68 + 96) = swift_getObjectType();
      *(v68 + 72) = v70;
      Dictionary.init(dictionaryLiteral:)();
      v71 = Dictionary._bridgeToObjectiveC()().super.isa;

      v72 = [v66 createActionWithIdentifier:v67 serializedParameters:v71];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v73 = v202;
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v73 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      [v45 copyForDuplicating];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v74 = v209;
      v75 = objc_allocWithZone(WFWorkflow);
      v76 = sub_100046B10(1953719636, 0xE400000000000000, 0, 0, 0, 0, v74);
      v77 = [v76 record];

      v78 = v77;
LABEL_154:
      v123 = v78;
      v124 = [objc_opt_self() defaultDatabase];
      v125 = [objc_allocWithZone(WFWorkflowCreationOptions) initWithRecord:v123];

      v210 = 0;
      v126 = [v124 createWorkflowWithOptions:v125 error:&v210];
      v70 = v210;
      if (v126)
      {
        v127 = v126;
        v210 = v197;
        type metadata accessor for MainViewController(0);
        sub_1000467F8(&qword_1000FFF58, type metadata accessor for MainViewController);
        v128 = v70;
        if (WorkflowOpener.openWorkflow(_:)())
        {
          swift_getObjectType();
          dispatch thunk of EditorView.performScrollingTest(named:)();
          swift_unknownObjectRelease();

          return 1;
        }

        return 0;
      }

LABEL_231:
      v190 = v70;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unexpectedError();
      __break(1u);

      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_230;
  }

  sub_100002FC4(0, &qword_100100218);
  result = sub_100046840();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v19 URLForResource:v20 withExtension:v21 subdirectory:v22];

  if (!v23)
  {
    goto LABEL_23;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = objc_opt_self();
  URL._bridgeToObjectiveC()(v25);
  v27 = v26;
  v28 = [v24 fileWithURL:v26 options:0];

  if (!v28)
  {
    (*(v9 + 8))(v11, v8);
LABEL_23:

    return 0;
  }

  objc_allocWithZone(WFWorkflowFileDescriptor);
  v29 = v28;
  v30 = sub_1000469DC(v29);
  v31 = objc_allocWithZone(WFWorkflowFile);
  v32 = sub_100046A48(v30);
  v38 = v32;
  if (!v32)
  {
    (*(v9 + 8))(v11, v8);

    goto LABEL_23;
  }

  v210 = 0;
  v39 = [v32 recordRepresentationWithError:&v210];
  if (v39)
  {
    v40 = v39;
    v41 = *(v9 + 8);
    v42 = v210;
    v41(v11, v8);

LABEL_153:
    v78 = v40;
    goto LABEL_154;
  }

  v129 = v210;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  (*(v9 + 8))(v11, v8);
  return 0;
}

uint64_t sub_100045C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a3;
  v3 = sub_10002E87C(&qword_100100020);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v22[0] = type metadata accessor for RootNavigationDestination();
  v6 = *(v22[0] - 8);
  __chkstk_darwin(v22[0]);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RootNavigationContext.TransitionType();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002E87C(&qword_1000FFFC0);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  v13 = type metadata accessor for RootNavigationContext();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  Dictionary.init(dictionaryLiteral:)();
  RootPPTTestCase.init(name:parameters:)();
  v17 = type metadata accessor for RootPPTTestCase();
  sub_1000042A8(v12, 0, 1, v17);
  static RootNavigationContext.TransitionType.default.getter();
  RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
  v18 = enum case for GalleryNavigationDestination.home(_:);
  v19 = type metadata accessor for GalleryNavigationDestination();
  (*(*(v19 - 8) + 104))(v8, v18, v19);
  sub_1000042A8(v8, 0, 1, v19);
  v20 = v22[0];
  (*(v6 + 104))(v8, enum case for RootNavigationDestination.gallery(_:), v22[0]);
  (*(v14 + 16))(v5, v16, v13);
  sub_1000042A8(v5, 0, 1, v13);
  type metadata accessor for MainViewController(0);
  sub_1000467F8(&qword_100100000, type metadata accessor for MainViewController);
  RootView.navigate(to:with:completion:)();
  sub_10004802C(v5);
  (*(v6 + 8))(v8, v20);
  (*(v14 + 8))(v16, v13);
  return 1;
}

id sub_100046038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTDispatcher();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100046090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTDispatcher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000460EC(void *a1)
{
  v26 = 0;
  v2 = sub_100047CE4(0xD000000000000018, 0x80000001000C7CB0, 0xE9AEu, &v26, a1);
  v3 = v26;
  v25 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = &word_1000F0D68;
    while (2)
    {
      v24 = v4;
      v6 = 15;
      do
      {
        v8 = *(v5 - 2);
        v7 = *(v5 - 1);
        v9 = *v5;
        v10 = objc_allocWithZone(WFWorkflowRecord);

        v11 = [v10 init];
        sub_10006386C(v8, v7, v11);
        v12 = [objc_opt_self() randomPaletteColor];
        v13 = objc_allocWithZone(WFWorkflowIcon);
        v14 = sub_1000AF278(v12, v9, 0, 0xF000000000000000);
        [v11 setIcon:v14];

        v15 = [objc_allocWithZone(WFWorkflowCreationOptions) initWithRecord:v11];
        v16 = [v25 identifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        sub_100047D60(v17, v19, v15);
        v26 = 0;
        v20 = [a1 createWorkflowWithOptions:v15 nameCollisionBehavior:0 error:&v26];
        v21 = v26;
        if (!v20)
        {
          v22 = v21;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v5 += 12;
        --v6;
      }

      while (v6);
      v4 = v24 + 1;
      v5 = &word_1000F0D68;
      if (v24 != 10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100046398(void **a1, uint64_t a2, void *a3)
{
  v26 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  aBlock = a1;
  v34 = a2;
  v39 = 0x5F7473696C5FLL;
  v40 = 0xE600000000000000;
  sub_1000200D8();
  StringProtocol.contains<A>(_:)();
  sub_10000E8F4();
  dispatch thunk of LibraryDataSource.layoutMode.setter();

  sub_100002FC4(0, &qword_1001001B8);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v12 + 8);
  v27(v15, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v19[2] = a3;
  v19[3] = v20;
  v19[4] = a2;
  v37 = sub_1000469B0;
  v38 = v19;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100003190;
  v36 = &unk_1000F1B80;
  v21 = _Block_copy(&aBlock);
  v22 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1000467F8(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002E87C(&qword_1001001C0);
  sub_100009624(&qword_100102620, &qword_1001001C0);
  v23 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v32 + 8))(v7, v23);
  (*(v30 + 8))(v10, v31);
  return (v27)(v17, v28);
}

uint64_t sub_1000467F8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100046840()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithPath:v1];

  return v2;
}

id sub_1000468B4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100002FC4(0, &qword_100100228);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithValues:isa];

  return v2;
}

id sub_10004693C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithString:v1];

  return v2;
}

id sub_1000469DC(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithFile:a1 name:v3];

  return v4;
}

id sub_100046A48(void *a1)
{
  v2 = v1;
  v8 = 0;
  v4 = [v2 initWithDescriptor:a1 error:&v8];
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_100046B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
LABEL_3:
      v12 = String._bridgeToObjectiveC()();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v14.super.isa = 0;
      goto LABEL_10;
    }
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = String._bridgeToObjectiveC()();

  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_100002FC4(0, &qword_1001000C0);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_10:
  v15 = [v7 initWithName:v11 description:v12 associatedAppBundleIdentifier:v13 actions:v14.super.isa];

  return v15;
}

uint64_t sub_100046C34(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_100002FC4(0, &qword_1001000C0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100046CA0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100090460(v2, 0);

    v1 = sub_100047E2C(&v5, (v3 + 32), v2, v1);
    sub_100048024();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

Swift::Int sub_100046D50(uint64_t a1)
{
  v1 = a1;
  if (sub_10000D55C(a1))
  {
    sub_10002E87C(&qword_100100220);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_10000D55C(v1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_100066898(v3, v19 == 0, v1);
      result = v19 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_100002FC4(0, &qword_1001000C0);
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_100046F14(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10006BD0C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100046F90(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_100046F90(uint64_t *a1)
{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_100046C34(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1000471E8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_100047070(0, v3, 1, a1);
  }
}

uint64_t sub_100047070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 localizedName];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = [v9 localizedName];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000471E8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = &_swiftEmptyArrayStorage;
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v127 = v6;
      v107 = *(v6 + 2);
      v6 += 16;
      for (i = v107; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v108 = &v127[16 * i];
        v109 = *v108;
        v110 = &v6[16 * i];
        v111 = *(v110 + 1);
        sub_1000479AC((*a3 + 8 * *v108), (*a3 + 8 * *v110), (*a3 + 8 * v111), v7);
        if (v123)
        {
          break;
        }

        if (v111 < v109)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v108 = v109;
        *(v108 + 1) = v111;
        v112 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v123 = 0;
        i = *v6 - 1;
        sub_10006B0F4(v110 + 16, v112, v110);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_10006B000(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v118 = v4;
      v124 = v6;
      v9 = *a3;
      v115 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 localizedName];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = [v12 localizedName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v120 = 0;
      }

      else
      {
        v120 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v21 = (v9 + 8 * v115 + 16);
      v22 = 8 * v115 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v118)
        {
          break;
        }

        v128 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v131 = v25;
        v27 = [v25 localizedName];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = [v26 localizedName];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = v28 == v32 && v30 == v34;
        v7 = v35 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v21;
        v22 = (v6 + 8);
        v8 = v128;
      }

      while (((v120 ^ v7) & 1) == 0);
      if (v120)
      {
        v36 = v115;
        if (v8 < v115)
        {
          goto LABEL_138;
        }

        if (v115 >= v8)
        {
          v6 = v124;
          v7 = v115;
          goto LABEL_29;
        }

        v37 = 8 * v115;
        do
        {
          if (v36 != v23)
          {
            v38 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v39 = *(v38 + v37);
            *(v38 + v37) = *&v6[v38];
            *&v6[v38] = v39;
          }

          v36 = (v36 + 1);
          v6 -= 8;
          v37 += 8;
        }

        while (v36 < v23--);
      }

      v6 = v124;
      v7 = v115;
    }

LABEL_29:
    v41 = a3[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10008D048(0, *(v6 + 2) + 1, 1, v6);
      v6 = v104;
    }

    v62 = v6;
    v63 = *(v6 + 2);
    v126 = v62;
    v64 = *(v62 + 3);
    v65 = v63 + 1;
    if (v63 >= v64 >> 1)
    {
      sub_10008D048(v64 > 1, v63 + 1, 1, v126);
      v126 = v105;
    }

    *(v126 + 2) = v65;
    v66 = v126 + 32;
    v67 = &v126[16 * v63 + 32];
    *v67 = v7;
    v67[1] = v8;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v130 = v8;
    if (v63)
    {
      v6 = v126;
      while (1)
      {
        v69 = v65 - 1;
        v70 = &v66[16 * v65 - 16];
        v71 = &v6[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v72 = *(v6 + 4);
          v73 = *(v6 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_72:
          if (v75)
          {
            goto LABEL_123;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_126;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_131;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v65 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v65 < 2)
        {
          goto LABEL_125;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_87:
        if (v90)
        {
          goto LABEL_128;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_130;
        }

        if (v97 < v89)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v69 - 1 >= v65)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v66[16 * v69 - 16];
        v7 = *v6;
        v101 = &v66[16 * v69];
        v102 = *(v101 + 1);
        sub_1000479AC((*a3 + 8 * *v6), (*a3 + 8 * *v101), (*a3 + 8 * v102), v68);
        if (v123)
        {
          goto LABEL_116;
        }

        if (v102 < v7)
        {
          goto LABEL_118;
        }

        v103 = *(v126 + 2);
        if (v69 > v103)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v102;
        if (v69 >= v103)
        {
          goto LABEL_120;
        }

        v123 = 0;
        v65 = v103 - 1;
        sub_10006B0F4(v101 + 16, v103 - 1 - v69, &v66[16 * v69]);
        v6 = v126;
        *(v126 + 2) = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_103;
        }
      }

      v76 = &v66[16 * v65];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_121;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_122;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_124;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_127;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v100)
        {
          v69 = v65 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v126;
LABEL_103:
    v4 = a3[1];
    v5 = v130;
    if (v130 >= v4)
    {
      goto LABEL_106;
    }
  }

  v42 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v42)
  {
    goto LABEL_51;
  }

  v125 = v6;
  v132 = *a3;
  v43 = *a3 + 8 * v8 - 8;
  v116 = v7;
  v117 = v42;
  v44 = v7 - v8;
LABEL_38:
  v129 = v8;
  v45 = *(v132 + 8 * v8);
  v119 = v44;
  v121 = v43;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = [v48 localizedName];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = [v49 localizedName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_49:
      v8 = v129 + 1;
      v43 = v121 + 8;
      v44 = v119 - 1;
      if ((v129 + 1) == v117)
      {
        v8 = v117;
        v6 = v125;
        v7 = v116;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v59 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v132)
    {
      break;
    }

    v60 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v60;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1000479AC(id *a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_10009044C(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v51 = v10;
    v53 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v55 = v7;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = [v13 localizedName];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 localizedName];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        v25 = v55;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v25 = v55;
        if (v24)
        {
          v26 = v6;
          v27 = v55 == v6++;
          goto LABEL_15;
        }
      }

      v26 = v4;
      v27 = v25 == v4++;
LABEL_15:
      v10 = v51;
      v5 = v53;
      if (!v27)
      {
        *v25 = *v26;
      }

      v7 = v25 + 1;
    }
  }

  sub_10009044C(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v56 = v7;
LABEL_19:
  v28 = v6 - 1;
  v29 = v5 - 1;
  for (i = v6; v10 > v4 && v6 > v7; v6 = i)
  {
    v52 = v10;
    v54 = v29;
    v31 = v10 - 1;
    v32 = v28;
    v33 = *v28;
    v34 = *(v10 - 1);
    v35 = v33;
    v36 = [v34 localizedName];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [v35 localizedName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v7 = v56;
    v10 = v52;
    v28 = v32;
    if (v45)
    {
      v5 = v54;
      v4 = v49;
      v6 = v28;
      if (v54 + 1 != i)
      {
        *v54 = *v28;
        v6 = v28;
      }

      goto LABEL_19;
    }

    v4 = v49;
    if (v52 != v54 + 1)
    {
      *v54 = *v31;
    }

    v29 = v54 - 1;
    v10 = v31;
  }

LABEL_38:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

id sub_100047CE4(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = [a5 createFolderWithName:v8 icon:a3 error:a4];

  return v9;
}

void sub_100047D60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setFolderIdentifier:v4];
}

unint64_t sub_100047DC4()
{
  result = qword_100100210;
  if (!qword_100100210)
  {
    sub_100002FC4(255, &qword_1001000C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100210);
  }

  return result;
}

void *sub_100047E2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100002FC4(0, &qword_1001000C0);
    sub_100047DC4();
    result = Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_25;
        }

        sub_100002FC4(0, &qword_1001000C0);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004802C(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_100100020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000480B0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100048218(void *a1)
{
  v1 = [a1 rootViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DebugMenuViewController();
    sub_10004AF80(v2);
  }
}

id sub_100048290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000482E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10004838C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for Toolbar();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_100048434(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Toolbar();
  objc_msgSendSuper2(&v3, "setBackgroundColor:", a1);
  sub_100048484();
}

void sub_100048484()
{
  v1 = [v0 backgroundColor];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() wf_imageWithColor:v1];
  }

  else
  {
    v3 = 0;
  }

  [v0 setShadowImage:v3 forToolbarPosition:0];
  [v0 setBackgroundImage:v3 forToolbarPosition:0 barMetrics:0];
  v4 = [v0 backgroundColor];
  [v0 setBarTintColor:v4];
}

id sub_10004857C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Toolbar();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100048610(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  v15.receiver = v6;
  v15.super_class = type metadata accessor for Toolbar();
  v13 = objc_msgSendSuper2(&v15, "initInView:withFrame:withItemList:", a1, v12.super.isa, a3, a4, a5, a6);

  if (v13)
  {
  }

  return v13;
}

id sub_100048774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Toolbar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000487AC()
{
  v1 = OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar;
  type metadata accessor for Toolbar();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_backgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100048868()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FloatingToolbarViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100048960(void *a1)
{
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    if ([a1 object])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v26 = v31;
    v27 = v32;
    if (*(&v32 + 1))
    {
      sub_100002FC4(0, &qword_1001002D0);
      if (swift_dynamicCast())
      {
        v5 = v30;
        v6 = [v4 view];
        if (v6)
        {
          v7 = v6;
          [v30 keyboardFrameInView:v6];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v16 = [v30 isVisible];
          v17 = 0.0;
          if (v16)
          {
            v33.origin.x = v9;
            v33.origin.y = v11;
            v33.size.width = v13;
            v33.size.height = v15;
            v17 = 0.0 - CGRectGetHeight(v33);
          }

          [*&v1[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_bottomConstraint] setConstant:v17];
          [*&v1[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar] setNeedsLayout];
          [v30 animationDuration];
          v19 = v18;
          v20 = [v30 animationCurve] << 16;
          v21 = objc_opt_self();
          v22 = swift_allocObject();
          *(v22 + 16) = v1;
          v28 = sub_100048E38;
          v29 = v22;
          *&v26 = _NSConcreteStackBlock;
          *(&v26 + 1) = 1107296256;
          *&v27 = sub_100003190;
          *(&v27 + 1) = &unk_1000F1C70;
          v23 = _Block_copy(&v26);
          v24 = v1;

          v28 = static NavigationDestinationEntity.defaultQuery.setter;
          v29 = 0;
          *&v26 = _NSConcreteStackBlock;
          *(&v26 + 1) = 1107296256;
          *&v27 = sub_100022DA8;
          *(&v27 + 1) = &unk_1000F1C98;
          v25 = _Block_copy(&v26);
          [v21 animateWithDuration:v20 delay:v23 options:v25 animations:v19 completion:0.0];
          _Block_release(v25);
          _Block_release(v23);
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

    else
    {

      sub_100048DD0(&v26);
    }
  }
}

void sub_100048C80(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 superview];

    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100048DD0(uint64_t a1)
{
  v2 = sub_10002E87C(&unk_100100140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100048E50(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TipType();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v12 = v11 - v10;
  (*(v8 + 16))(v11 - v10, a1, v6);
  v13 = (*(v8 + 88))(v12, v6);
  if (v13 == enum case for TipType.useSiriToRunShortcut(_:))
  {
    *(a3 + 24) = type metadata accessor for TipController.UseSiriToRunShortcutTip();
    sub_10001733C();
    *(a3 + 32) = sub_10004AB38(v14, v15);
    sub_10002A304(a3);
    sub_100021518(a2);
  }

  else if (v13 == enum case for TipType.none(_:))
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_100049004()
{
  sub_1000043AC();
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v1 = __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v1);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001000C8110;
  v2._countAndFlagsBits = 0xD000000000000037;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x53207965489C80E2;
  v3._object = 0xAD0000202C697269;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  type metadata accessor for TipController.UseSiriToRunShortcutTip();
  sub_10002E87C(&qword_1001002E8);
  Tips.Parameter.wrappedValue.getter();
  if (v27)
  {
    v4 = v28;
    v5 = v29;
  }

  else
  {
    v5 = 0xEE00656C74695420;
    v4 = 0x74756374726F6853;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v6);

  v7._countAndFlagsBits = 10322146;
  v7._object = 0xA300000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  v8 = LocalizedStringKey.init(stringInterpolation:)();
  v12 = sub_100013820(v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  static HierarchicalShapeStyle.primary.getter();
  v17 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  sub_10002072C(v12, v14, v16 & 1);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  sub_10002072C(v17, v19, v21 & 1);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v23 = LocalizedStringKey.init(stringInterpolation:)();
  sub_100013820(v23, v24, v25, v26);
  sub_100002EEC();
}

uint64_t sub_100049288@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002E87C(&qword_100100448);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_10002E87C(&qword_100100450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_100009624(&qword_100100458, &qword_100100450);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_10002E87C(&qword_100100460);
  a1[4] = sub_10004AB80();
  sub_10002A304(a1);
  sub_100009624(&qword_100100480, &qword_100100448);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1000494EC()
{
  sub_1000043AC();
  v0 = sub_10002E87C(&qword_1001003D8);
  sub_100004458();
  v2 = v1;
  sub_100005B90();
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = sub_10002E87C(&qword_1001003E0);
  sub_100004458();
  v8 = v7;
  sub_100005B90();
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_10002E87C(&qword_1001003E8);
  v12 = type metadata accessor for Tips.MaxDisplayCount();
  *(swift_allocObject() + 16) = xmmword_1000C0C20;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();

  v14 = v12;
  v15 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v14 = v6;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v2 + 8))(v5, v0);
  (*(v8 + 8))(v11, v6);
  sub_100002EEC();
}

void sub_10004976C()
{
  sub_1000043AC();
  v55 = v0;
  v51 = v1;
  v3 = v2;
  v49 = v4;
  v57 = v5;
  v47 = type metadata accessor for Tips.InvalidationReason();
  sub_100004458();
  v46 = v6;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v45 = v9 - v8;
  type metadata accessor for Logger();
  sub_100004458();
  v52 = v11;
  v53 = v10;
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v50 = &v44 - v13;
  v48 = v14;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100049D08();
    sub_10000F708();
    sub_10004AB38(v15, v16);
    Set.Iterator.init(_cocoa:)();
    v3 = v61;
    v17 = v62;
    v18 = v63;
    v19 = v64;
    v20 = v65;
  }

  else
  {
    v17 = v3 + 56;
    v18 = ~(-1 << *(v3 + 32));
    sub_100003A18();
    v20 = v21 & v22;

    v19 = 0;
  }

  v54 = v18;
  v23 = (v18 + 64) >> 6;
  v24 = &WFMainViewController__prots;
  v56 = v3;
  while (v3 < 0)
  {
    v28 = __CocoaSet.Iterator.next()();
    if (!v28 || (v58 = v28, sub_100049D08(), swift_dynamicCast(), (v27 = v59) == 0))
    {
LABEL_20:
      sub_10001C890();
      type metadata accessor for TipController.UseSiriToRunShortcutTip();
      sub_10002E87C(&qword_1001002E8);
      Tips.Parameter.wrappedValue.getter();
      if (v60)
      {
        sub_1000284B4(v59, v60);
        if (sub_100049D4C(v49))
        {
          static WFLog.subscript.getter();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&_mh_execute_header, v32, v33, "Object referenced in the tip was modified. The delegate decided to stop showing the tip.", v34, 2u);
          }

          (*(v52 + 8))(v50, v53);
          sub_100007978();
        }

        if (sub_100049D4C(v51))
        {
          v35 = v48;
          static WFLog.subscript.getter();
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v36, v37, "Object referenced in the tip was removed. Nullifying personal content.", v38, 2u);
          }

          (*(v52 + 8))(v35, v53);
          sub_100007978();
        }
      }

      goto LABEL_29;
    }

LABEL_14:
    if ([v27 v24[241].count] == 5)
    {
      v29 = v24;
      v30 = [v27 identifier];
      if (!v30)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = String._bridgeToObjectiveC()();
      }

      v31 = [v57 workflowSiriRunEventWithIdentifier:v30];

      v24 = v29;
      v3 = v56;
      if (v31)
      {

        sub_10001C890();
        v39 = v46;
        v40 = v45;
        v41 = v47;
        (*(v46 + 104))(v45, enum case for Tips.InvalidationReason.actionPerformed(_:), v47);
        type metadata accessor for TipController.UseSiriToRunShortcutTip();
        sub_10001733C();
        sub_10004AB38(v42, v43);
        Tip.invalidate(reason:)();
        (*(v39 + 8))(v40, v41);
LABEL_29:
        sub_100002EEC();
        return;
      }
    }

    else
    {
    }
  }

  v25 = v19;
  v26 = v20;
  if (v20)
  {
LABEL_10:
    v20 = (v26 - 1) & v26;
    v27 = *(*(v3 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v27)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v19 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v19 >= v23)
    {
      goto LABEL_20;
    }

    v26 = *(v17 + 8 * v19);
    ++v25;
    if (v26)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_100049D08()
{
  result = qword_1001002D8;
  if (!qword_1001002D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001002D8);
  }

  return result;
}

uint64_t sub_100049D4C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100049D08();
    sub_10000F708();
    sub_10004AB38(v2, v3);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
  }

  else
  {
    v5 = a1 + 56;
    v6 = ~(-1 << *(a1 + 32));
    sub_100003A18();
    v8 = v9 & v10;

    v7 = 0;
  }

  v23 = v6;
  v11 = (v6 + 64) >> 6;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100049D08(), swift_dynamicCast(), v15 = v25, v14 = v8, !v25))
    {
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }

LABEL_14:
    v24 = v14;
    v16 = [v15 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    type metadata accessor for TipController.UseSiriToRunShortcutTip();
    sub_10002E87C(&qword_1001002E8);
    Tips.Parameter.wrappedValue.getter();
    if (v26)
    {

      sub_1000284B4(v25, v26);
      if (v17 == v25 && v26 == v19)
      {

        v22 = 1;
        goto LABEL_23;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = (v6 + 64) >> 6;
      v8 = v24;
      if (v21)
      {
        v22 = 1;
LABEL_23:
        sub_100048024();
        return v22;
      }
    }

    else
    {

      v11 = (v6 + 64) >> 6;
      v8 = v24;
    }
  }

  v12 = v7;
  v13 = v8;
  if (v8)
  {
LABEL_10:
    v14 = (v13 - 1) & v13;
    v15 = *(*(v1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v5 + 8 * v7);
    ++v12;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A058(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10004A110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004A1E4(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10004A210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004A110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004A258@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004A1D0();
  *a1 = result;
  return result;
}

uint64_t sub_10004A280(uint64_t a1)
{
  v2 = sub_10004ACBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A2BC(uint64_t a1)
{
  v2 = sub_10004ACBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10004A398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10002E87C(&qword_100100498);
  sub_100004458();
  v9 = v8;
  sub_100005B90();
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  sub_100041C04(a1, a1[3]);
  sub_10004ACBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_10004A500(void *a1)
{
  sub_10002E87C(&qword_100100488);
  sub_100004458();
  sub_100005B90();
  __chkstk_darwin(v3);
  v4 = a1[4];
  sub_100041C04(a1, a1[3]);
  sub_10004ACBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v4 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = sub_10000B0E4();
    v7(v6);
  }

  sub_10000DF90(a1);
  return v4;
}

uint64_t sub_10004A6BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10004A500(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10004A78C@<X0>(uint64_t *a1@<X8>)
{
  sub_10004AB38(&qword_1001002F0, type metadata accessor for TipController.UseSiriToRunShortcutTip);
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10004A7FC()
{
  result = qword_100100310;
  if (!qword_100100310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100310);
  }

  return result;
}

unint64_t sub_10004A850()
{
  result = qword_100100320;
  if (!qword_100100320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100320);
  }

  return result;
}

uint64_t sub_10004A8B4(uint64_t result, int a2, int a3)
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

void sub_10004A91C()
{
  sub_10004A9A0();
  if (v0 <= 0x3F)
  {
    sub_10004AA00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004A9A0()
{
  if (!qword_100100398)
  {
    v0 = type metadata accessor for Tips.Parameter();
    if (!v1)
    {
      atomic_store(v0, &qword_100100398);
    }
  }
}

void sub_10004AA00()
{
  if (!qword_1001003A0)
  {
    sub_100041CB4(&qword_100100300);
    sub_100027864(&qword_100100308, sub_10004A7FC);
    sub_100027864(&qword_100100318, sub_10004A850);
    v0 = type metadata accessor for Tips.Parameter();
    if (!v1)
    {
      atomic_store(v0, &qword_1001003A0);
    }
  }
}

uint64_t sub_10004AB38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004AB80()
{
  result = qword_100100468;
  if (!qword_100100468)
  {
    sub_100041CB4(&qword_100100460);
    sub_100009624(&qword_100100470, &qword_100100450);
    sub_10004AC38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100468);
  }

  return result;
}

unint64_t sub_10004AC38()
{
  result = qword_100100478;
  if (!qword_100100478)
  {
    sub_100041CB4(&qword_100100448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100478);
  }

  return result;
}

unint64_t sub_10004ACBC()
{
  result = qword_100100490;
  if (!qword_100100490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100490);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TipController.UseSiriToRunShortcutTip.PersonalContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10004ADF0()
{
  result = qword_1001004A0;
  if (!qword_1001004A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004A0);
  }

  return result;
}

unint64_t sub_10004AE48()
{
  result = qword_1001004A8;
  if (!qword_1001004A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004A8);
  }

  return result;
}

unint64_t sub_10004AEA0()
{
  result = qword_1001004B0;
  if (!qword_1001004B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001004B0);
  }

  return result;
}