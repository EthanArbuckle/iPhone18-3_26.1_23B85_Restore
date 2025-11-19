id sub_100002054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t type metadata accessor for AppDelegate()
{
  result = qword_100029E68;
  if (!qword_100029E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000021DC()
{
  result = type metadata accessor for Logger();
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

__n128 sub_10000226C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000227C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000229C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100002300(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_100002360@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_10000237C(void *a1)
{
  v2 = [a1 role];
  v3 = UISceneSessionRoleEndpointPicker;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_15:
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Returning Endpoint picker", v24, 2u);
    }

    goto LABEL_17;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = [a1 role];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_20:
    v22 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v22, v30, "Returning People Picker", v31, 2u);
    }

    goto LABEL_17;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_20;
  }

  v17 = [a1 role];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

    goto LABEL_24;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
LABEL_24:
    v22 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v22, v33, "Returning Endpoint Confirmation", v34, 2u);
    }

LABEL_17:

    v25 = [a1 role];
    v26 = objc_allocWithZone(UISceneConfiguration);
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 initWithName:v27 sessionRole:v25];

LABEL_18:
    return v28;
  }

  v35 = [a1 role];
  v36 = static UISceneSessionRole.activitySystemAperture.getter();
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

LABEL_31:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Returning Jindo Configuration", v44, 2u);
    }

    v45 = [a1 role];
    v46 = &SBUIIsSystemApertureEnabled_ptr;
    v47 = objc_allocWithZone(UISceneConfiguration);
    v48 = String._bridgeToObjectiveC()();
    v49 = &AppDelegate;
    v50 = [v47 initWithName:v48 sessionRole:v45];

    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v86 = v56;
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2080;
      if ([v51 delegateClass])
      {
        swift_getObjCClassMetadata();
      }

      sub_100002E80(&qword_100029E90, qword_100018070);
      v57 = String.init<A>(describing:)();
      v59 = sub_1000145B4(v57, v58, &v86);

      *(v54 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "config: %@ class: %s", v54, 0x16u);
      sub_100002EC8(v55);

      sub_100002F30(v56);

      v46 = &SBUIIsSystemApertureEnabled_ptr;
      v49 = &AppDelegate;
    }

    else
    {
    }

    v25 = [a1 role];
    v60 = objc_allocWithZone(v46[327]);
    v61 = String._bridgeToObjectiveC()();
    v28 = [v60 v49[496].count];

    goto LABEL_18;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_31;
  }

  v62 = [a1 role];
  v63 = static UISceneSessionRole.activityBanner.getter();
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
  {

    goto LABEL_43;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {
LABEL_43:
    v22 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v22, v69, "Returning Banner Configuration", v70, 2u);
    }

    goto LABEL_17;
  }

  v71 = [a1 role];
  v72 = static UISceneSessionRole.activityListItem.getter();
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;
  if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
  {

    goto LABEL_50;
  }

  v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v77)
  {
LABEL_50:
    v22 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v22, v78, "Returning Lockscreen Configuration", v79, 2u);
    }

    goto LABEL_17;
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "NO matching UISceneSession Role, returning endpoint picker as the default", v82, 2u);
  }

  v83 = objc_allocWithZone(UISceneConfiguration);
  v84 = String._bridgeToObjectiveC()();
  v85 = [v83 initWithName:v84 sessionRole:v3];

  return v85;
}

uint64_t sub_100002E80(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002EC8(uint64_t a1)
{
  v2 = sub_100002E80(&qword_100029E98, &qword_100018C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F30(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_100003388()
{
  v1 = *(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName);
  v2 = *(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName + 8);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v2)
  {

    goto LABEL_9;
  }

  if (v1 != v3 || v2 != v4)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_9:
    if (*(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID + 8))
    {
      v7 = *(v0 + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID);

      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    v13 = [objc_opt_self() _applicationIconImageForBundleIdentifier:v8 format:5];
    goto LABEL_16;
  }

LABEL_12:
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() _systemImageNamed:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = objc_opt_self();
  v8 = v10;
  v12 = [v11 blueColor];
  v13 = [v8 imageWithTintColor:v12];

LABEL_16:
  return v13;
}

void sub_100003548()
{
  v117 = type metadata accessor for Font.TextStyle();
  v1 = *(v117 - 1);
  v2 = *(v1 + 64);
  __chkstk_darwin(v117);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConfirmationDialogView(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  v120.receiver = v0;
  v120.super_class = v10;
  objc_msgSendSuper2(&v120, "viewDidLoad");
  v11 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
  v12 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID + 8];
  v13 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName + 8];
  v115 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
  *&v116 = v11;
  v14 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName + 8];
  v114 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
  v112 = v12;
  v113 = v14;
  v109 = v0;
  v16 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
  v15 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 8];
  v17 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 16];
  v111 = *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 24];
  v110 = v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 32];
  *&v119 = 0x402C000000000000;
  (*(v1 + 104))(v4, enum case for Font.TextStyle.subheadline(_:), v117);

  v18 = v112;

  v19 = v111;
  LOBYTE(v14) = v110;
  sub_100004E88(v16, v15, v17, v111, v110);
  sub_100004F04();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v20 = &v9[v6[7]];
  AccessibilityFocusState.init<>()();
  v21 = &v9[v6[8]];
  v22 = v115;
  *v21 = v116;
  *(v21 + 1) = v18;
  v23 = &v9[v6[9]];
  *v23 = v22;
  *(v23 + 1) = v13;
  v24 = &v9[v6[10]];
  v25 = v113;
  *v24 = v114;
  *(v24 + 1) = v25;
  v26 = &v9[v6[11]];
  *v26 = v16;
  *(v26 + 1) = v15;
  *(v26 + 2) = v17;
  *(v26 + 3) = v19;
  v26[32] = v14;
  v9[v6[12]] = 1;
  v27 = v6[13];
  *&v9[v27] = [objc_allocWithZone(CNContactStore) init];
  v28 = v6[14];
  v118 = 0;
  sub_100002E80(&qword_10002A280, "b<");
  State.init(wrappedValue:)();
  *&v9[v28] = v119;
  v29 = v6[15];
  v118 = 0;
  State.init(wrappedValue:)();
  *&v9[v29] = v119;
  v30 = [objc_opt_self() sharedApplication];
  [v30 userInterfaceLayoutDirection];

  v31 = v6[16];
  v32 = objc_allocWithZone(type metadata accessor for SFUIContactIconProvider());
  *&v9[v31] = SFUIContactIconProvider.init(diameter:layoutDirection:)();
  v33 = &v9[v6[17]];
  v34 = type metadata accessor for ConfirmationDialogLockObserver(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v118 = sub_10000A8C8();
  State.init(wrappedValue:)();
  v37 = *(&v119 + 1);
  *v33 = v119;
  *(v33 + 1) = v37;
  v38 = v6[18];
  v118 = 0;
  sub_100002E80(&qword_10002A288, &qword_100018500);
  State.init(wrappedValue:)();
  *&v9[v38] = v119;
  v39 = objc_allocWithZone(sub_100002E80(&unk_10002A290, "h<"));
  v40 = UIHostingController.init(rootView:)();
  v41 = [v40 view];
  if (!v41)
  {
    __break(1u);
    goto LABEL_16;
  }

  v42 = v41;
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

  v43 = v109;
  v44 = [v109 view];
  if (!v44)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = v44;
  v46 = [v40 view];
  if (!v46)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v47 = v46;
  [v45 addSubview:v46];

  v48 = [v40 view];
  v49 = *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView];
  *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView] = v48;

  sub_100002E80(&unk_10002A4B0, &qword_100018138);
  v50 = swift_allocObject();
  v116 = xmmword_100018090;
  *(v50 + 16) = xmmword_100018090;
  v117 = v40;
  v51 = [v40 view];
  if (!v51)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v52 = v51;
  v53 = [v51 leadingAnchor];

  v54 = [v43 view];
  if (!v54)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v55 = v54;
  v56 = [v54 leadingAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  *(v50 + 32) = v57;
  v58 = [v117 view];
  if (!v58)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v59 = v58;
  v60 = [v58 trailingAnchor];

  v61 = [v43 view];
  if (!v61)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v62 = v61;
  v63 = [v61 trailingAnchor];

  v64 = [v60 constraintEqualToAnchor:v63];
  *(v50 + 40) = v64;
  v65 = [v117 view];
  if (!v65)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v66 = v65;
  v67 = [v65 topAnchor];

  v68 = [v43 view];
  if (!v68)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v69 = v68;
  v70 = [v68 topAnchor];

  v71 = [v67 constraintEqualToAnchor:v70];
  *(v50 + 48) = v71;
  v72 = v117;
  v73 = [v117 view];

  if (!v73)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v74 = [v73 bottomAnchor];

  v75 = [v43 view];
  if (!v75)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v76 = v75;
  v77 = [v75 bottomAnchor];

  v78 = [v74 constraintEqualToAnchor:v77];
  *(v50 + 56) = v78;
  v79 = *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints];
  *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints] = v50;

  v80 = sub_100003388();
  v81 = [objc_allocWithZone(type metadata accessor for ConfirmationDialogSystemApertureViewController.ConfirmationDialogCompactSystemApertureView()) initWithImage:v80];

  v82 = v81;
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  v83 = [v43 view];
  if (!v83)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v84 = v83;
  [v83 addSubview:v82];

  v85 = *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView];
  *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView] = v82;
  v86 = v82;

  v87 = [v43 view];
  if (v87)
  {
    v88 = v87;
    v89 = [v87 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v90 = swift_allocObject();
    *(v90 + 16) = v116;
    v91 = [v86 centerXAnchor];
    v92 = [v89 centerXAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];

    *(v90 + 32) = v93;
    v94 = [v86 centerYAnchor];
    v95 = [v89 centerYAnchor];
    v96 = [v94 constraintEqualToAnchor:v95];

    *(v90 + 40) = v96;
    v97 = [v86 widthAnchor];
    v98 = [v97 constraintEqualToConstant:24.0];

    *(v90 + 48) = v98;
    v99 = [v86 heightAnchor];
    v100 = [v99 constraintEqualToConstant:24.0];

    *(v90 + 56) = v100;
    v101 = *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints];
    *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints] = v90;

    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1000180A0;
    v103 = [v86 widthAnchor];
    v104 = [v103 constraintEqualToConstant:24.0];

    *(v102 + 32) = v104;
    v105 = [v86 heightAnchor];

    v106 = [v105 constraintEqualToConstant:24.0];
    *(v102 + 40) = v106;

    v107 = *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints];
    *&v43[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints] = v102;

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_100003FEC(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_100004E1C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000043D8;
  v9[3] = &unk_1000252D8;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_100004100()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode;
    v3 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode);
    if ((v3 - 2) >= 2)
    {
      if (v3 != 4)
      {
        goto LABEL_21;
      }

      v16 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView);
      if (v16)
      {
        [v16 setHidden:1];
      }

      v17 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView];
      if (v17)
      {
        [v17 setHidden:0];
      }

      v15 = objc_opt_self();
      v18 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints];
      sub_100004E3C();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 deactivateConstraints:isa];

      v20 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints];

      v21 = Array._bridgeToObjectiveC()().super.isa;

      [v15 deactivateConstraints:v21];

      v10 = &selRef_activateConstraints_;
    }

    else
    {
      v4 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView);
      if (v4)
      {
        [v4 setHidden:0];
      }

      v5 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView];
      if (v5)
      {
        [v5 setHidden:1];
      }

      v6 = *&v1[v2];
      v7 = objc_opt_self();
      v8 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints];
      sub_100004E3C();

      v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v10 = &selRef_deactivateConstraints_;
      if (v6 == 2)
      {
        v11 = &selRef_activateConstraints_;
      }

      else
      {
        v11 = &selRef_deactivateConstraints_;
      }

      if (v6 == 2)
      {
        v12 = &selRef_deactivateConstraints_;
      }

      else
      {
        v12 = &selRef_activateConstraints_;
      }

      [v7 *v11];

      v13 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints];

      v14 = Array._bridgeToObjectiveC()().super.isa;

      [v7 *v12];

      v15 = objc_opt_self();
    }

    v22 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints];

    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v15 *v10];

LABEL_21:
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000043D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1000044B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_maximumLayoutMode] = 4;
  v10 = &v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredHeightForBottomSafeArea;
  *&v3[v11] = sub_10000498C();
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView] = 0;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView] = 0;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints] = &_swiftEmptyArrayStorage;
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v12, a3);

  return v13;
}

id sub_100004694(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = -1;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_maximumLayoutMode] = 4;
  v7 = &v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_associatedAppBundleIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_preferredHeightForBottomSafeArea;
  *&v1[v8] = sub_10000498C();
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconView] = 0;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customView] = 0;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconLeadingConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_miniIconMinimalConstraints] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_customViewConstraints] = &_swiftEmptyArrayStorage;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ConfirmationDialogSystemApertureViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_100004824(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10000498C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 196.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_6;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
LABEL_14:

    return 196.0;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_6;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

    return 181.0;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    return 181.0;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return 186.0;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    return 186.0;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    return 176.0;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {

      return 176.0;
    }

    else
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
      {
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {
          return 156.0;
        }
      }

      return 166.0;
    }
  }
}

uint64_t sub_100004DE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100004E3C()
{
  result = qword_10002A270;
  if (!qword_10002A270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002A270);
  }

  return result;
}

uint64_t sub_100004E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100004E9C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100004E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

unint64_t sub_100004F04()
{
  result = qword_10002A790;
  if (!qword_10002A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A790);
  }

  return result;
}

uint64_t sub_100004F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100004F6C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100004F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 2)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_100004FDC()
{
  v0 = type metadata accessor for Logger();
  sub_10000895C(v0, qword_10002ACF0);
  sub_100008924(v0, qword_10002ACF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100005068@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000050B0(uint64_t a1)
{
  v2 = sub_10000796C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000050EC(uint64_t a1)
{
  v2 = sub_10000796C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100005150(void *a1)
{
  v2 = sub_100002E80(&qword_10002A478, &qword_100018480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100007928(a1, a1[3]);
  sub_10000796C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000052DC(void *a1)
{
  v3 = v1;
  v5 = sub_100002E80(&qword_10002A4A0, &unk_100018490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_100007928(a1, a1[3]);
  sub_1000087C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 4);
    v20 = *(v3 + 3);
    v21 = v17;
    v22 = *(v3 + 80);
    v19[15] = 3;
    sub_1000088D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000054F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000556C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000055B0()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x614E656369766564;
  if (*v0 != 2)
  {
    v2 = 0x4B74736575716572;
  }

  if (*v0)
  {
    v1 = 0x4E65636976726573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100005640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100008260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100005674(uint64_t a1)
{
  v2 = sub_1000087C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000056B0(uint64_t a1)
{
  v2 = sub_1000087C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000056EC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000083D4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100007F60(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1000079C0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1000080E8();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_100007DB0(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_100005950(void *a1)
{
  v2 = v1;
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    v4 = a1;
    dispatch thunk of ActivityScene.subscript.getter();

    if (v49)
    {
      v5 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activityIdentifierToBundleID;
      swift_beginAccess();
      v6 = *(v1 + v5);
      if (*(v6 + 16))
      {
        v7 = *(v2 + v5);

        v8 = sub_1000079C0(v48, v49);
        if (v9)
        {
          v44 = *(*(v6 + 56) + 16 * v8);

          if (!UIApp)
          {
LABEL_39:
            __break(1u);
            return;
          }

          v42 = v48;
          v43 = v4;
          v10 = [UIApp connectedScenes];
          sub_10000A084(0, &unk_10002A4C0, UIScene_ptr);
          sub_10000A0CC(&unk_10002A8D0, &unk_10002A4C0, UIScene_ptr);
          v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v11 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v11 = v48;
            v12 = v49;
            v13 = v50;
            v14 = v51;
            v15 = v52;
          }

          else
          {
            v16 = -1 << *(v11 + 32);
            v12 = v11 + 56;
            v13 = ~v16;
            v17 = -v16;
            if (v17 < 64)
            {
              v18 = ~(-1 << v17);
            }

            else
            {
              v18 = -1;
            }

            v15 = v18 & *(v11 + 56);

            v14 = 0;
          }

          v19 = (v13 + 64) >> 6;
          if (v11 < 0)
          {
            goto LABEL_21;
          }

LABEL_15:
          v20 = v14;
          v21 = v15;
          v22 = v14;
          if (!v15)
          {
            while (1)
            {
              v22 = v20 + 1;
              if (__OFADD__(v20, 1))
              {
                break;
              }

              if (v22 >= v19)
              {
                goto LABEL_30;
              }

              v21 = *(v12 + 8 * v22);
              ++v20;
              if (v21)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
            goto LABEL_39;
          }

LABEL_19:
          v23 = (v21 - 1) & v21;
          v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
          if (v24)
          {
            while (1)
            {
              v26 = v11;
              v27 = [v24 _sceneIdentifier];
              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              _StringGuts.grow(_:)(37);

              v46 = 0xD000000000000023;
              v47 = 0x80000001000196A0;
              String.append(_:)(v44);
              if (v28 == 0xD000000000000023 && v30 == v47)
              {
                break;
              }

              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v32)
              {
                goto LABEL_32;
              }

              v14 = v22;
              v15 = v23;
              v11 = v26;
              if ((v26 & 0x8000000000000000) == 0)
              {
                goto LABEL_15;
              }

LABEL_21:
              v25 = __CocoaSet.Iterator.next()();
              if (v25)
              {
                v45 = v25;
                swift_dynamicCast();
                v24 = v46;
                v22 = v14;
                v23 = v15;
                if (v46)
                {
                  continue;
                }
              }

              goto LABEL_30;
            }

LABEL_32:

            sub_10000A07C();

            v33 = v24;
            v35 = Logger.logObject.getter();
            v36 = static os_log_type_t.default.getter();
            v34 = v49;
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v35, v36, "ActivityScene disconnected while confirmation scene is still waiting for a response, sending decline", v37, 2u);
            }

            v38 = objc_allocWithZone(type metadata accessor for DDUIConfirmationAction());
            v46 = &_swiftEmptySetSingleton;
            v39 = DDUIConfirmationAction.init(result:)();
            sub_100014B5C(&v45, v39);

            v40 = [v33 _FBSScene];
            sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
            sub_10000A0CC(&qword_10002A4D8, &qword_10002A4D0, BSAction_ptr);
            isa = Set._bridgeToObjectiveC()().super.isa;

            [v40 sendActions:isa];

            v4 = v43;
          }

          else
          {
LABEL_30:

            sub_10000A07C();

            v33 = 0;
            v4 = v43;
            v34 = v49;
          }

          swift_beginAccess();
          sub_1000057B8(0, 0, v42, v34);
          swift_endAccess();

          goto LABEL_36;
        }
      }
    }

LABEL_36:
  }
}

id sub_100005F98()
{
  v1 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_log;
  if (qword_100029DD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100008924(v2, qword_10002ACF0);
  (*(*(v2 - 8) + 16))(&v0[v1], v3, v2);
  *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity] = 0;
  *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC] = 0;
  *&v0[OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_prominentAssertion] = 0;
  v4 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activityIdentifierToBundleID;
  *&v0[v4] = sub_1000089C0(&_swiftEmptyArrayStorage);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ConfirmationDialogSceneDelegate();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1000060D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationDialogSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfirmationDialogSceneDelegate()
{
  result = qword_10002A330;
  if (!qword_10002A330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006218()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10000631C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_100009EE0(a1);
  (*(*(*(v2 + qword_10002AD30) - 8) + 8))(a1);
  return v5;
}

void *sub_1000063E0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10002AD30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_100006518(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_10002AD30);
  v5 = *(v3 + qword_10002AD30 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000065F0()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_10002AD30);
  v3 = *(v1 + qword_10002AD30 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

double sub_1000066CC(void *a1)
{
  v1 = a1;
  sub_100006710();
  v3 = v2;

  return v3;
}

void sub_100006728(void *a1)
{
  v1 = a1;
  sub_100006788();
}

void sub_1000067A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for ConfirmationDialogView(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  sub_10000A11C(a1, &v37 - v12);
  objc_allocWithZone(sub_100002E80(&qword_10002A518, &qword_100018510));
  sub_10000A11C(v13, v11);
  v14 = UIHostingController.init(rootView:)();
  sub_10000A180(v13);
  sub_100002E80(&qword_10002A520, &qword_100018518);
  v15 = *(v5 + 72);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100018140;
  v18 = v14;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v39 = v17;
  sub_10000A1DC();
  sub_100002E80(&qword_10002A530, &qword_100018520);
  sub_10000A234();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  *&v2[qword_10002A3C0] = v18;
  v19 = v18;
  v20 = sub_100002E80(&qword_10002A510, &qword_100018508);
  v38.receiver = v2;
  v38.super_class = v20;
  v21 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  v22 = [v21 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  v23 = v22;
  v24 = qword_10002A3C0;
  v25 = [*&v21[qword_10002A3C0] view];
  if (!v25)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v26 = v25;
  [v23 addSubview:v25];

  [v21 addChildViewController:*&v21[v24]];
  v27 = [v21 view];
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v28 = v27;
  v29 = objc_opt_self();
  v30 = [v29 clearColor];
  [v28 setBackgroundColor:v30];

  v31 = v19;
  v32 = [v31 view];
  if (!v32)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v33 = v32;
  v34 = [v29 clearColor];
  [v33 setBackgroundColor:v34];

  v35 = [v21 view];
  if (!v35)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [v31 view];
  if (v36)
  {
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

    sub_10000A180(a1);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100006BD4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_100009FC8();
}

void sub_100006C50()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v35.receiver = v0;
  v35.super_class = type metadata accessor for LiveActivitiesHostingController();
  objc_msgSendSuper2(&v35, "viewWillLayoutSubviews");
  sub_100002E80(&unk_10002A4B0, &qword_100018138);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100018090;
  v4 = *(v0 + qword_10002A3C0);
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10];
  *(v3 + 32) = v11;
  v12 = [v4 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v3 + 40) = v18;
  v19 = [v4 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v3 + 48) = v25;
  v26 = [v4 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 bottomAnchor];

  v29 = [v0 view];
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 bottomAnchor];

    v33 = [v28 constraintEqualToAnchor:v32];
    *(v3 + 56) = v33;
    sub_10000A084(0, &qword_10002A270, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 activateConstraints:isa];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_100006FF0(void *a1)
{
  v1 = a1;
  sub_100006C50();
}

void sub_100007038(char a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveActivitiesHostingController();
  objc_msgSendSuper2(&v5, "viewIsAppearing:", a1 & 1);
  sub_100007170();
}

void sub_1000070BC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100007038(a3);
}

void sub_100007110(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_10000A024();
  swift_unknownObjectRelease();
}

void sub_100007170()
{
  [v0 preferredContentSize];
  if (v1 == 0.0 && v2 == 0.0)
  {
    if (qword_100029DD0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008924(v3, qword_10002ACF0);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "LiveActivitiesHostingController: skipping setMetrics because content size is 0", v5, 2u);
    }

LABEL_16:
    v17 = oslog;
LABEL_24:

    return;
  }

  v6 = v2;
  v7 = v1;
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {
    v11 = [v10 windowScene];
    if (v11)
    {
      oslog = v11;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        if (qword_100029DD0 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100008924(v12, qword_10002ACF0);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134218240;
          *(v15 + 4) = v7;
          *(v15 + 12) = 2048;
          *(v15 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v13, v14, "LiveActivitiesHostingController: setMetrics with size {%f, %f}", v15, 0x16u);
        }

        v16 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
        ActivitySceneMetrics.init(size:cornerRadius:)();
        dispatch thunk of ActivityScene.resolvedMetrics.setter();

        goto LABEL_16;
      }
    }

    if (qword_100029DD0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008924(v18, qword_10002ACF0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "LiveActivitiesHostingController used in a scene that's not an ActivityScene", v21, 2u);
    }

    v17 = v10;
    goto LABEL_24;
  }
}

void sub_1000074F4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x50);
  v5 = *((swift_isaMask & *a1) + 0x58);
  v6 = a4;

  sub_10000A028();
}

id sub_100007564()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LiveActivitiesHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100007608(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10000761C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100007640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10000769C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10000771C()
{
  result = qword_10002A448;
  if (!qword_10002A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A448);
  }

  return result;
}

unint64_t sub_100007774()
{
  result = qword_10002A450;
  if (!qword_10002A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A450);
  }

  return result;
}

unint64_t sub_1000077CC()
{
  result = qword_10002A458;
  if (!qword_10002A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A458);
  }

  return result;
}

unint64_t sub_100007824()
{
  result = qword_10002A460;
  if (!qword_10002A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A460);
  }

  return result;
}

unint64_t sub_10000787C()
{
  result = qword_10002A468;
  if (!qword_10002A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A468);
  }

  return result;
}

unint64_t sub_1000078D4()
{
  result = qword_10002A470;
  if (!qword_10002A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A470);
  }

  return result;
}

void *sub_100007928(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000796C()
{
  result = qword_10002A480;
  if (!qword_10002A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A480);
  }

  return result;
}

unint64_t sub_1000079C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100007A38(a1, a2, v6);
}

unint64_t sub_100007A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007AF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002E80(&qword_10002A4E0, &qword_1000184D0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100007DB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100007F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000079C0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100007AF0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1000079C0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000080E8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_1000080E8()
{
  v1 = v0;
  sub_100002E80(&qword_10002A4E0, &qword_1000184D0);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_100008260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4B74736575716572 && a2 == 0xEB00000000646E69)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000083D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002E80(&qword_10002A488, &qword_100018488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_100007928(a1, a1[3]);
  sub_1000087C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v34 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_4:
    sub_100002F30(a1);
    v44 = v16;
    v45 = v15;
    v46 = v14;
    v47 = v13;
    v48 = v12;
    v49 = v11;
    v50 = 0u;
    v51 = 0u;
    v52 = -1;
    return sub_100008814(&v44);
  }

  LOBYTE(v44) = 0;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v6;
  v33 = v18;
  v31 = a2;
  LOBYTE(v44) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v19;
  LOBYTE(v44) = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = 0;
  v12 = v20;
  v11 = v21;
  v54 = 3;
  sub_100008844();
  v22 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v22;
  if (v22)
  {
    (*(v32 + 8))(v9, v5);
    v15 = v33;
    goto LABEL_4;
  }

  (*(v32 + 8))(v9, v5);
  v23 = *(&v41 + 1);
  v32 = v41;
  v30 = *(&v42 + 1);
  v24 = v42;
  v53 = v43;
  *&v35 = v16;
  v25 = v33;
  *(&v35 + 1) = v33;
  *&v36 = v14;
  *(&v36 + 1) = v13;
  *&v37 = v12;
  *(&v37 + 1) = v11;
  v38 = v41;
  v39 = v42;
  v40 = v43;
  sub_100008898(&v35, &v44);
  sub_100002F30(a1);
  v44 = v16;
  v45 = v25;
  v46 = v14;
  v47 = v13;
  v48 = v12;
  v49 = v11;
  *&v50 = v32;
  *(&v50 + 1) = v23;
  *&v51 = v24;
  *(&v51 + 1) = v30;
  v52 = v53;
  result = sub_100008814(&v44);
  v26 = v38;
  v27 = v31;
  *(v31 + 32) = v37;
  *(v27 + 48) = v26;
  *(v27 + 64) = v39;
  *(v27 + 80) = v40;
  v28 = v36;
  *v27 = v35;
  *(v27 + 16) = v28;
  return result;
}

unint64_t sub_1000087C0()
{
  result = qword_10002A490;
  if (!qword_10002A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A490);
  }

  return result;
}

unint64_t sub_100008844()
{
  result = qword_10002A498;
  if (!qword_10002A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A498);
  }

  return result;
}

unint64_t sub_1000088D0()
{
  result = qword_10002A4A8;
  if (!qword_10002A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A4A8);
  }

  return result;
}

uint64_t sub_100008924(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000895C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000089C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002E80(&qword_10002A4E0, &qword_1000184D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000079C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100008AD4(void *a1)
{
  v2 = sub_100002E80(&qword_10002A4E8, &qword_1000184D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v161 - v4;
  v6 = sub_100002E80(&qword_10002A4F0, &qword_1000184E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v161 - v9;
  v11 = type metadata accessor for ActivityPresentationOptions();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  __chkstk_darwin(v11);
  v15 = v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v172 + 1) = type metadata accessor for Font.TextStyle();
  v171 = *(*(&v172 + 1) - 8);
  v16 = *(v171 + 64);
  __chkstk_darwin(*(&v172 + 1));
  *&v172 = v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for ConfirmationDialogView(0);
  v18 = *(*(v173 - 8) + 64);
  __chkstk_darwin(v173);
  v170 = (v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ActivityScene();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    sub_100002E80(&unk_10002A500, &unk_1000184F0);
    v22 = a1;
    v23 = static Activity.activities.getter();
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v24 >= 2)
    {
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "More than one live activity found requesting confirmation in DDUI. This is not supported", v27, 2u);
      }
    }

    v28 = static Activity.activities.getter();
    if (v28 >> 62)
    {
      v77 = v28;
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v77;
      v174 = v21;
      if (v78)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v174 = v21;
      if (v29)
      {
LABEL_10:
        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v30 = *(v28 + 32);
        }

        v31 = Activity.id.getter();
        v33 = v32;
        Activity.attributes.getter();
        v202 = v196;
        v203 = v197;
        v204 = v198;
        v205 = v199;
        v200 = v194;
        v201 = v195;
        v34 = v194;

        sub_100008814(&v200);
        swift_beginAccess();
        sub_1000057B8(v34, *(&v34 + 1), v31, v33);
        swift_endAccess();

        v21 = v174;
        goto LABEL_30;
      }
    }

    v30 = 0;
LABEL_30:
    v79 = v22;
    if ([v21 SBUI_isHostedBySystemAperture])
    {
      type metadata accessor for ConfirmationDialogSystemApertureViewController();
      v80 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v81 = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC;
      v82 = v175;
      v83 = *(v175 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC);
      *(v175 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_systemApertureVC) = v80;
      v84 = v80;

      if (v30)
      {

        Activity.attributes.getter();

        v202 = v196;
        v203 = v197;
        v204 = v198;
        v205 = v199;
        v200 = v194;
        v201 = v195;
        v85 = *(&v194 + 1);
        v86 = v194;

        sub_100008814(&v200);
      }

      else
      {
        v86 = 0;
        v85 = 0;
      }

      v88 = &v84[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID];
      v89 = *&v84[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_bundleID + 8];
      *v88 = v86;
      *(v88 + 1) = v85;

      v90 = *(v82 + v81);
      if (!v90)
      {
        goto LABEL_49;
      }

      if (v30)
      {

        v91 = v90;
        Activity.attributes.getter();

        v202 = v196;
        v203 = v197;
        v204 = v198;
        v205 = v199;
        v200 = v194;
        v201 = v195;
        v92 = *(&v195 + 1);
        v93 = v195;

        sub_100008814(&v200);
      }

      else
      {
        v133 = v90;
        v93 = 0;
        v92 = 0;
      }

      v134 = &v90[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName];
      v135 = *&v90[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_serviceName + 8];
      *v134 = v93;
      *(v134 + 1) = v92;

      v136 = *(v82 + v81);
      if (v136)
      {
        v169 = v79;
        if (v30)
        {

          v137 = v136;
          Activity.attributes.getter();

          v202 = v196;
          v203 = v197;
          v204 = v198;
          v205 = v199;
          v200 = v194;
          v201 = v195;
          v138 = *(&v196 + 1);
          v139 = v196;

          sub_100008814(&v200);
        }

        else
        {
          v142 = v136;
          v139 = 0;
          v138 = 0;
        }

        v143 = &v136[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName];
        v144 = *&v136[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_deviceName + 8];
        *v143 = v139;
        *(v143 + 1) = v138;

        v145 = *(v82 + v81);
        if (v145)
        {
          v146 = v82;
          if (v30)
          {

            v147 = v145;
            Activity.attributes.getter();

            v203 = v197;
            v204 = v198;
            v201 = v195;
            v202 = v196;
            v148 = v199;
            v205 = v199;
            v200 = v194;
            v150 = *(&v197 + 1);
            v149 = v197;
            v152 = *(&v198 + 1);
            v151 = v198;
            sub_100004E88(v197, *(&v197 + 1), v198, *(&v198 + 1), v199);
            sub_100008814(&v200);
          }

          else
          {
            v153 = v145;
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v148 = -1;
          }

          v154 = &v145[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
          v155 = *&v145[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind];
          v156 = *&v145[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 8];
          v157 = *&v145[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 16];
          v158 = *&v145[OBJC_IVAR____TtC23NetworkEndpointPickerUI46ConfirmationDialogSystemApertureViewController_kind + 24];
          *v154 = v149;
          *(v154 + 1) = v150;
          *(v154 + 2) = v151;
          *(v154 + 3) = v152;
          v159 = v154[32];
          v154[32] = v148;
          sub_100004F58(v155, v156, v157, v158, v159);

          v140 = *(v146 + v81);
        }

        else
        {
          v140 = 0;
        }

        v141 = v174;
        v79 = v169;
      }

      else
      {
LABEL_49:
        v140 = 0;
        v141 = v174;
      }

      v160 = v140;
      [v141 setSystemApertureElementViewControllerProvider:v160];
    }

    else
    {
      v169 = v79;
      if (v30)
      {

        Activity.attributes.getter();

        v185 = v203;
        v186 = v204;
        v187 = v205;
        v182 = v200;
        v183 = v201;
        v184 = v202;
        v167 = *(&v200 + 1);
        v168 = v200;

        sub_100008814(&v182);

        Activity.attributes.getter();

        v190 = v202;
        v191 = v203;
        v192 = v204;
        v193 = v205;
        v188 = v200;
        v189 = v201;
        *&v166 = *(&v201 + 1);
        *(&v166 + 1) = v201;

        sub_100008814(&v188);

        Activity.attributes.getter();

        v196 = v202;
        v197 = v203;
        v198 = v204;
        v199 = v205;
        v194 = v200;
        v195 = v201;
        *&v165 = *(&v202 + 1);
        *(&v165 + 1) = v202;

        sub_100008814(&v194);

        Activity.attributes.getter();

        v203 = v179;
        v204 = v180;
        v87 = v181;
        v205 = v181;
        v200 = v176;
        v201 = v177;
        v202 = v178;
        *(&v163 + 1) = *(&v179 + 1);
        v164 = v179;
        *(&v162 + 1) = *(&v180 + 1);
        *&v163 = v180;
        sub_100004E88(v179, *(&v179 + 1), v180, *(&v180 + 1), v181);
        sub_100008814(&v200);
      }

      else
      {
        v164 = 0;
        *(&v162 + 1) = 0;
        v163 = 0uLL;
        v165 = 0uLL;
        v166 = 0uLL;
        v167 = 0;
        v168 = 0;
        v87 = -1;
      }

      v94 = [v21 session];
      v95 = [v94 role];

      v96 = static UISceneSessionRole.activitySystemAperture.getter();
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;
      if (v97 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v99 == v100)
      {
        v101 = 1;
      }

      else
      {
        v101 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      *&v200 = 0x402C000000000000;
      (*(v171 + 104))(v172, enum case for Font.TextStyle.subheadline(_:), *(&v172 + 1));
      sub_100004F04();
      v102 = v170;
      ScaledMetric.init(wrappedValue:relativeTo:)();
      v103 = v173;
      v104 = v102 + *(v173 + 20);
      AccessibilityFocusState.init<>()();
      v105 = (v102 + v103[6]);
      v106 = v167;
      *v105 = v168;
      v105[1] = v106;
      v107 = (v102 + v103[7]);
      v108 = v166;
      *v107 = *(&v166 + 1);
      v107[1] = v108;
      v109 = (v102 + v103[8]);
      v110 = v165;
      *v109 = *(&v165 + 1);
      v109[1] = v110;
      v111 = v102 + v103[9];
      v112 = *(&v163 + 1);
      *v111 = v164;
      *(v111 + 8) = v112;
      v113 = *(&v162 + 1);
      *(v111 + 16) = v163;
      *(v111 + 24) = v113;
      *(v111 + 32) = v87;
      *(v102 + v103[10]) = v101 & 1;
      v114 = v103[11];
      *(v102 + v114) = [objc_allocWithZone(CNContactStore) init];
      v115 = v103[12];
      *&v194 = 0;
      sub_100002E80(&qword_10002A280, "b<");
      State.init(wrappedValue:)();
      *(v102 + v115) = v200;
      v116 = v103[13];
      *&v194 = 0;
      State.init(wrappedValue:)();
      *(v102 + v116) = v200;
      v117 = [objc_opt_self() sharedApplication];
      [v117 userInterfaceLayoutDirection];

      v118 = v103[14];
      v119 = objc_allocWithZone(type metadata accessor for SFUIContactIconProvider());
      *(v102 + v118) = SFUIContactIconProvider.init(diameter:layoutDirection:)();
      v120 = (v102 + v103[15]);
      v121 = type metadata accessor for ConfirmationDialogLockObserver(0);
      v122 = *(v121 + 48);
      v123 = *(v121 + 52);
      swift_allocObject();
      *&v194 = sub_10000A8C8();
      State.init(wrappedValue:)();
      v124 = *(&v200 + 1);
      *v120 = v200;
      v120[1] = v124;
      v125 = v103[16];
      *&v194 = 0;
      sub_100002E80(&qword_10002A288, &qword_100018500);
      State.init(wrappedValue:)();
      *(v102 + v125) = v200;
      v126 = objc_allocWithZone(sub_100002E80(&qword_10002A510, &qword_100018508));
      sub_1000067A0(v102);
      v128 = v127;
      v129 = objc_allocWithZone(type metadata accessor for SFSecureWindow());
      v130 = [v129 initWithWindowScene:v174];
      v131 = v169;

      [v130 setRootViewController:v128];
      [v130 makeKeyAndVisible];

      v132 = *(v175 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_window);
      *(v175 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_window) = v130;
    }

    return;
  }

  *(&v172 + 1) = v5;
  v173 = v15;
  v169 = v10;
  v170 = v12;
  v168 = v11;
  v171 = v7;
  v35 = [a1 _FBSScene];
  v174 = [v35 settings];

  type metadata accessor for DDUIConfirmationDialogSceneSettings();
  v36 = swift_dynamicCastClass();
  if (v36)
  {
    v37 = v36;
    v167 = v6;
    v161[1] = OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_log;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Got request to start confirmation activity", v40, 2u);
    }

    v41 = SBUIIsSystemApertureEnabled();
    sub_100002E80(&qword_10002A4F8, &qword_1000184E8);
    v42 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100018150;
    v47 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
    v48 = v46 + v45;
    if (!v41)
    {
      v47 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:);
    }

    v49 = *(v43 + 104);
    v49(v48, *v47, v42);
    v49(v48 + v44, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v42);
    ActivityPresentationOptions.init(destinations:)();
    v161[3] = "onfirmationDialog::";
    v50 = type metadata accessor for Date();
    (*(*(v50 - 8) + 56))(*(&v172 + 1), 1, 1, v50);
    sub_1000077CC();
    sub_100007824();
    sub_10000787C();
    v51 = ActivityContent.init(state:staleDate:relevanceScore:)();
    *&v172 = (*((swift_isaMask & *v37) + 0x50))(v51);
    *(&v172 + 1) = v52;

    v54 = (*((swift_isaMask & *v37) + 0x58))(v53);
    v56 = v55;

    v58 = (*((swift_isaMask & *v37) + 0x60))(v57);
    v60 = v59;

    (*((swift_isaMask & *v37) + 0x68))(&v182, v61);
    sub_100004F58(0, 0, 0, 0, 0xFFu);
    v62 = v182;
    v63 = v183;
    v64 = v184;
    v161[2] = sub_100002E80(&unk_10002A500, &unk_1000184F0);
    *&v166 = v54;
    *(&v166 + 1) = v56;
    *&v200 = v54;
    *(&v200 + 1) = v56;
    v201 = v172;
    *&v165 = v58;
    *(&v165 + 1) = v60;
    *&v202 = v58;
    *(&v202 + 1) = v60;
    v65 = v169;
    v162 = v62;
    v203 = v62;
    v163 = v63;
    v204 = v63;
    v205 = v64;
    v196 = v202;
    v197 = v62;
    v198 = v63;
    LODWORD(v164) = v64;
    v199 = v64;
    v194 = v200;
    v195 = v172;
    sub_100008898(&v200, &v188);
    v67 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
    v190 = v196;
    v191 = v197;
    v192 = v198;
    v193 = v199;
    v188 = v194;
    v189 = v195;
    sub_100008814(&v188);
    v68 = v175;
    v69 = *(v175 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity);
    *(v175 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity) = v67;

    v70 = v168;
    v71 = v170;
    if (*(v68 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_activity))
    {

      Activity.id.getter();
      v72 = objc_allocWithZone(SNAProminentPresentationAssertion);
      v73 = String._bridgeToObjectiveC()();
      v74 = String._bridgeToObjectiveC()();

      v75 = [v72 initWithExplanation:v73 sessionIdentifier:v74 invalidationHandler:0];

      (*(v171 + 8))(v169, v167);
      v71[1](v173, v70);
      v76 = *(v68 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_prominentAssertion);
      *(v68 + OBJC_IVAR____TtC23NetworkEndpointPickerUI31ConfirmationDialogSceneDelegate_prominentAssertion) = v75;
    }

    else
    {

      (*(v171 + 8))(v65, v167);
      v71[1](v173, v70);
    }

    v194 = v166;
    v195 = v172;
    v196 = v165;
    v197 = v162;
    v198 = v163;
    v199 = v164;
    sub_100008814(&v194);
  }

  else
  {
    v66 = v174;
  }
}

uint64_t sub_100009EE0(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_10002AD30) - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_10000A084(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000A0CC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A084(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A180(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationDialogView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000A1DC()
{
  result = qword_10002A528;
  if (!qword_10002A528)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A528);
  }

  return result;
}

unint64_t sub_10000A234()
{
  result = qword_10002A538;
  if (!qword_10002A538)
  {
    sub_10000A298(&qword_10002A530, &qword_100018520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A538);
  }

  return result;
}

uint64_t sub_10000A298(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ConfirmationDialogActivityAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationDialogActivityAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000A4A0()
{
  result = qword_10002A540;
  if (!qword_10002A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A540);
  }

  return result;
}

unint64_t sub_10000A4F8()
{
  result = qword_10002A548;
  if (!qword_10002A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A548);
  }

  return result;
}

unint64_t sub_10000A550()
{
  result = qword_10002A550;
  if (!qword_10002A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A550);
  }

  return result;
}

unint64_t sub_10000A5A8()
{
  result = qword_10002A558;
  if (!qword_10002A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A558);
  }

  return result;
}

unint64_t sub_10000A600()
{
  result = qword_10002A560;
  if (!qword_10002A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A560);
  }

  return result;
}

uint64_t sub_10000A670()
{
  swift_getKeyPath();
  sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10000A710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_10000A7B8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000A8C8()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  v10 = type metadata accessor for SFLockStateMonitor();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 24) = SFLockStateMonitor.init()();
  sub_10000AF04(&qword_10002A708, type metadata accessor for ConfirmationDialogLockObserver);

  dispatch thunk of SFLockStateMonitor.delegate.setter();

  v13 = *(v0 + 24);
  dispatch thunk of SFLockStateMonitor.lockState.getter();
  (*(v3 + 104))(v7, enum case for DeviceLockState.locked(_:), v2);
  v14 = static DeviceLockState.== infix(_:_:)() & 1;
  v15 = *(v3 + 8);
  v15(v7, v2);
  v15(v9, v2);
  if (v14 == *(v1 + 16))
  {
    *(v1 + 16) = v14;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v18[-2] = v1;
    LOBYTE(v18[-1]) = v14;
    v18[1] = v1;
    sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v1;
}

uint64_t sub_10000AB78()
{
  v1 = type metadata accessor for DeviceLockState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for DeviceLockState.locked(_:), v1);
  v6 = static DeviceLockState.== infix(_:_:)() & 1;
  result = (*(v2 + 8))(v5, v1);
  if (v6 == *(v0 + 16))
  {
    *(v0 + 16) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v9[-2] = v0;
    LOBYTE(v9[-1]) = v6;
    v9[1] = v0;
    sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000AD50()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC23NetworkEndpointPickerUIP33_2B1A1DDD1B950138D9D2F33C34369AAC30ConfirmationDialogLockObserver___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_10000AE1C()
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

uint64_t sub_10000AF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000AF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002E80(&qword_10002A718, &unk_1000187D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000B098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100002E80(&qword_10002A718, &unk_1000187D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000B1D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B210()
{
  sub_10000B3AC();
  if (v0 <= 0x3F)
  {
    sub_10000B408();
    if (v1 <= 0x3F)
    {
      sub_10000B460(319, &qword_10002A7A0);
      if (v2 <= 0x3F)
      {
        sub_10000B460(319, &qword_10002A7A8);
        if (v3 <= 0x3F)
        {
          sub_10000A084(319, &qword_10002A7B0, CNContactStore_ptr);
          if (v4 <= 0x3F)
          {
            sub_10000B504(319, &unk_10002A7B8, &qword_10002A280, "b<");
            if (v5 <= 0x3F)
            {
              type metadata accessor for SFUIContactIconProvider();
              if (v6 <= 0x3F)
              {
                sub_10000B4AC();
                if (v7 <= 0x3F)
                {
                  sub_10000B504(319, qword_10002A7D0, &qword_10002A288, &qword_100018500);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_10000B3AC()
{
  if (!qword_10002A788)
  {
    sub_100004F04();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_10002A788);
    }
  }
}

void sub_10000B408()
{
  if (!qword_10002A798)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10002A798);
    }
  }
}

void sub_10000B460(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10000B4AC()
{
  if (!qword_10002A7C8)
  {
    type metadata accessor for ConfirmationDialogLockObserver(255);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10002A7C8);
    }
  }
}

void sub_10000B504(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000A298(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000B574()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = (v0 + v1[9]);
  if (*(v2 + 32) != 1)
  {
    v14 = v1[8];
    goto LABEL_8;
  }

  v4 = *v2;
  v3 = *(v0 + v1[9] + 8);
  v5 = v1;
  v6 = *(v0 + v1[11]);
  v7 = String._bridgeToObjectiveC()();
  sub_100002E80(&unk_10002A4B0, &qword_100018138);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000186F0;
  *(v8 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_100002E80(&qword_10002A9E8, &qword_100018A38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v6 contactForIdentifier:v7 keysToFetch:isa];

  if (!v10)
  {
    v14 = v5[8];
LABEL_8:
    v15 = (v0 + v14);
    if (!v15[1])
    {
      return 0;
    }

    v13 = *v15;
    v16 = v15[1];

    return v13;
  }

  v11 = [v10 displayName];
  if (!v11)
  {
    v11 = [v10 givenName];
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v13;
}

id sub_10000B710()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = (v0 + *(v1 + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v4)
  {
    if (v3 == v5 && v4 == v6)
    {

LABEL_13:
      v12 = String._bridgeToObjectiveC()();
      v13 = String._bridgeToObjectiveC()();
      v14 = DDUILocalizedString();

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v15;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = (v0 + *(v1 + 24));
  if (!v9[1])
  {
    return 0;
  }

  v10 = *v9;
  sub_10000A084(0, &qword_10002A9F0, LSBundleRecord_ptr);

  result = sub_10000B8EC();
  if (result)
  {
    v16 = result;
    v17 = [result localizedName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v18;
  }

  return result;
}

id sub_10000B8EC()
{
  v0 = String._bridgeToObjectiveC()();

  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10000B9C4()
{
  v1 = (v0 + *(type metadata accessor for ConfirmationDialogView(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3)
  {
    if (v2 == v4 && v3 == v5)
    {

LABEL_11:
      v18 = String._bridgeToObjectiveC()();
      v19 = String._bridgeToObjectiveC()();
      v20 = DDUILocalizedString();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100002E80(&qword_10002A9D0, qword_100018A20);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100018140;
      v22 = sub_10000B574();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_1000119B0();
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      goto LABEL_12;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = DDUILocalizedString();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002E80(&qword_10002A9D0, qword_100018A20);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100018150;
  v12 = sub_10000B574();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_1000119B0();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v16 = sub_10000B710();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
LABEL_12:
  v25 = static String.localizedStringWithFormat(_:_:)();

  return v25;
}

uint64_t sub_10000BC3C()
{
  v1 = sub_100002E80(&qword_10002AA50, &qword_100018A88);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ConfirmationDialogView(0);
  v14 = *(v0 + v5[13]);
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.getter();
  if (v13)
  {
    v6 = Image.init(uiImage:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v0 + v5[9];
  if (*(v7 + 32) > 1u)
  {
    goto LABEL_9;
  }

  if (*(v7 + 32))
  {
    v14 = *(v0 + v5[12]);
    State.wrappedValue.getter();
    if (v13)
    {
      v11 = Image.init(uiImage:)();
      goto LABEL_14;
    }

LABEL_9:
    if (!v6)
    {
      return Image.init(systemName:)();
    }

    return v6;
  }

  sub_100004E9C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), 0);

  iosmacHardware.init(_:)();
  v8 = type metadata accessor for iosmacHardware();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1000114EC(v4, &qword_10002AA50, &qword_100018A88);
    if (!v6)
    {
      return Image.init(systemName:)();
    }

    return v6;
  }

  v11 = iosmacHardware.image.getter();
  (*(v9 + 8))(v4, v8);
LABEL_14:

  return v11;
}

void sub_10000BE68(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConfirmationDialogView(0);
  v9 = (v1 + *(v8 + 28));
  v10 = *v9;
  v11 = v9[1];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11)
  {
    if (v10 == v12 && v11 == v13)
    {

LABEL_12:
      Image.init(_internalSystemName:)();
      (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
      v19 = Image.resizable(capInsets:resizingMode:)();

      (*(v4 + 8))(v7, v3);
      v20 = static Color.blue.getter();
      KeyPath = swift_getKeyPath();
      v27 = v19;
      v28 = xmmword_100018700;
      v29 = KeyPath;
      v30 = v20;
      v31 = 0;
LABEL_16:
      sub_100002E80(&qword_10002AA70, &qword_100018AA8);
      sub_100002E80(&qword_10002AA78, &qword_100018AB0);
      sub_100011EE0();
      sub_100011F98();
      _ConditionalContent<>.init(storage:)();
      v24 = v33;
      v25 = v34;
      v26 = v35;
      *a1 = v32;
      *(a1 + 16) = v24;
      *(a1 + 32) = v25;
      *(a1 + 40) = v26;
      return;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v16 = (v1 + *(v8 + 24));
  if (v16[1])
  {
    v17 = *v16;
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v22 = [objc_opt_self() _applicationIconImageForBundleIdentifier:v18 format:10];

  if (v22)
  {
    Image.init(uiImage:)();
    (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);
    v23 = Image.resizable(capInsets:resizingMode:)();

    (*(v4 + 8))(v7, v3);
    v27 = v23;
    v28 = xmmword_100018700;
    v29 = 0;
    v30 = 0;
    v31 = 1;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_10000C1B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002E80(&qword_10002A9F8, &qword_100018A40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = static Alignment.center.getter();
  v27 = v9;
  v28 = v8;
  sub_10000BE68(v91);
  v10 = v92;
  v11 = v93;
  v12 = *(v1 + *(type metadata accessor for ConfirmationDialogView(0) + 40));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v95 = v11;
  *&v94[39] = v98;
  *&v94[23] = v97;
  *&v94[7] = v96;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = static Alignment.center.getter();
  v15 = v14;
  sub_10000C6A0(v2, v42);
  *&v43[0] = v13;
  *(&v43[0] + 1) = v15;
  v43[11] = v42[10];
  v43[12] = v42[11];
  v43[13] = v42[12];
  v43[14] = v42[13];
  v43[7] = v42[6];
  v43[8] = v42[7];
  v43[9] = v42[8];
  v43[10] = v42[9];
  v43[3] = v42[2];
  v43[4] = v42[3];
  v43[5] = v42[4];
  v43[6] = v42[5];
  v43[1] = v42[0];
  v43[2] = v42[1];
  v71 = v42[11];
  v72 = v42[12];
  v73 = v42[13];
  v67 = v42[7];
  v68 = v42[8];
  v70 = v42[10];
  v69 = v42[9];
  v63 = v42[3];
  v64 = v42[4];
  v66 = v42[6];
  v65 = v42[5];
  v59 = v43[0];
  v60 = v42[0];
  v62 = v42[2];
  v61 = v42[1];
  v55 = v42[10];
  v56 = v42[11];
  v57 = v42[12];
  v58 = v42[13];
  v51 = v42[6];
  v52 = v42[7];
  v53 = v42[8];
  v54 = v42[9];
  v47 = v42[2];
  v48 = v42[3];
  v49 = v42[4];
  v50 = v42[5];
  v44[0] = v13;
  v44[1] = v15;
  v45 = v42[0];
  v46 = v42[1];
  sub_100011484(v43, v77, &qword_10002AA00, &qword_100018A48);
  sub_1000114EC(v44, &qword_10002AA00, &qword_100018A48);
  v42[1] = v91[0];
  v42[2] = v91[1];
  *(&v42[3] + 9) = *v94;
  *(&v42[4] + 9) = *&v94[16];
  *(&v42[5] + 9) = *&v94[32];
  v42[7] = v74;
  v42[8] = v75;
  v42[21] = v70;
  v42[22] = v71;
  v42[23] = v72;
  v42[24] = v73;
  v42[17] = v66;
  v42[18] = v67;
  v42[19] = v68;
  v42[20] = v69;
  v42[13] = v62;
  v42[14] = v63;
  v42[15] = v64;
  v42[16] = v65;
  v42[9] = v76;
  v42[10] = v59;
  *&v42[0] = v28;
  *(&v42[0] + 1) = v27;
  *&v42[3] = v10;
  BYTE8(v42[3]) = v11;
  *(&v42[6] + 1) = *&v94[47];
  v42[11] = v60;
  v42[12] = v61;
  sub_100002E80(&qword_10002AA08, &qword_100018A50);
  sub_100011A04();
  View.accessibilityHidden(_:)();
  memcpy(v77, v42, sizeof(v77));
  sub_1000114EC(v77, &qword_10002AA08, &qword_100018A50);
  v16 = static Alignment.bottomTrailing.getter();
  v18 = v17;
  sub_10000CACC(v2, &v30);
  v86 = v38;
  v87 = v39;
  v88 = v40;
  v89 = v41;
  v82 = v34;
  v83 = v35;
  v84 = v36;
  v85 = v37;
  v78 = v30;
  v79 = v31;
  v80 = v32;
  v81 = v33;
  *&v90 = v16;
  *(&v90 + 1) = v18;
  sub_1000109C0(v7, a1, &qword_10002A9F8, &qword_100018A40);
  v19 = (a1 + *(sub_100002E80(&qword_10002A928, &qword_100018918) + 36));
  v20 = v89;
  v19[10] = v88;
  v19[11] = v20;
  v19[12] = v90;
  v21 = v85;
  v19[6] = v84;
  v19[7] = v21;
  v22 = v87;
  v19[8] = v86;
  v19[9] = v22;
  v23 = v81;
  v19[2] = v80;
  v19[3] = v23;
  v24 = v83;
  v19[4] = v82;
  v19[5] = v24;
  v25 = v79;
  *v19 = v78;
  v19[1] = v25;
  v42[8] = v38;
  v42[9] = v39;
  v42[10] = v40;
  v42[11] = v41;
  v42[4] = v34;
  v42[5] = v35;
  v42[6] = v36;
  v42[7] = v37;
  v42[0] = v30;
  v42[1] = v31;
  v42[2] = v32;
  v42[3] = v33;
  *&v42[12] = v16;
  *(&v42[12] + 1) = v18;
  sub_100011484(&v78, &v29, &qword_10002AA40, &qword_100018A68);
  return sub_1000114EC(v42, &qword_10002AA40, &qword_100018A68);
}

double sub_10000C6A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.bottomTrailing.getter();
  v6 = v5;
  sub_10000C82C(a1, &v15);
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v25 = v15;
  v26 = v16;
  v35[6] = v21;
  v35[7] = v22;
  v35[8] = v23;
  v35[9] = v24;
  v35[2] = v17;
  v35[3] = v18;
  v35[4] = v19;
  v35[5] = v20;
  v35[0] = v15;
  v35[1] = v16;
  sub_100011484(&v25, &v14, &qword_10002AA58, &qword_100018A90);
  sub_1000114EC(v35, &qword_10002AA58, &qword_100018A90);
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v45 = v34;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v36 = v25;
  v37 = v26;
  *(a1 + *(type metadata accessor for ConfirmationDialogView(0) + 40));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v43;
  *(a2 + 112) = v42;
  *(a2 + 128) = v7;
  v8 = v45;
  *(a2 + 144) = v44;
  *(a2 + 160) = v8;
  v9 = v39;
  *(a2 + 48) = v38;
  *(a2 + 64) = v9;
  v10 = v41;
  *(a2 + 80) = v40;
  *(a2 + 96) = v10;
  v11 = v37;
  *(a2 + 16) = v36;
  *(a2 + 32) = v11;
  v12 = v16;
  *(a2 + 176) = v15;
  *(a2 + 192) = v12;
  result = *&v17;
  *(a2 + 208) = v17;
  return result;
}

uint64_t sub_10000C82C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v6 = static Color.black.getter();
  v16 = static Edge.Set.all.getter();
  *(a1 + *(type metadata accessor for ConfirmationDialogView(0) + 40));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v40 + 7) = *&v40[7];
  *(&v40[2] + 7) = *&v40[9];
  *(&v40[4] + 7) = v41;
  v7 = static Color.black.getter();
  v8 = swift_getKeyPath();
  v9 = static Color.white.getter();
  v10 = static Edge.Set.all.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v39[7] = v42;
  *&v39[23] = v43;
  *&v39[39] = v44;
  *&v25 = KeyPath;
  *(&v25 + 1) = v4;
  *v26 = v6;
  v26[8] = v16;
  *&v26[9] = *v40;
  *&v26[25] = *&v40[2];
  *&v26[41] = *&v40[4];
  *&v26[56] = *(&v41 + 1);
  *&v27 = v8;
  v17 = *&v26[16];
  v18 = *&v26[32];
  *(&v27 + 1) = v7;
  *v28 = v9;
  v28[8] = v10;
  *&v28[56] = *(&v44 + 1);
  *&v28[41] = *&v39[32];
  v12 = *&v39[16];
  v11 = *&v39[32];
  *&v28[25] = *&v39[16];
  v13 = *v39;
  *&v28[9] = *v39;
  v19 = *&v26[48];
  v20 = v27;
  v23 = *&v28[32];
  v24 = *&v28[48];
  v21 = *v28;
  v22 = *&v28[16];
  v14 = *v26;
  *a2 = v25;
  a2[1] = v14;
  a2[4] = v19;
  a2[5] = v20;
  a2[2] = v17;
  a2[3] = v18;
  a2[8] = v23;
  a2[9] = v24;
  a2[6] = v21;
  a2[7] = v22;
  v29[0] = v8;
  v29[1] = v7;
  v29[2] = v9;
  v30 = v10;
  v31 = v13;
  v32 = v12;
  *v33 = v11;
  *&v33[15] = *&v39[47];
  sub_100011484(&v25, v34, &qword_10002AA60, &qword_100018A98);
  sub_100011484(&v27, v34, &qword_10002AA68, &qword_100018AA0);
  sub_1000114EC(v29, &qword_10002AA68, &qword_100018AA0);
  v34[0] = KeyPath;
  v34[1] = v4;
  v34[2] = v6;
  v35 = v16;
  v36 = *v40;
  v37 = *&v40[2];
  *v38 = *&v40[4];
  *&v38[15] = *(&v40[5] + 7);
  return sub_1000114EC(v34, &qword_10002AA60, &qword_100018A98);
}

double sub_10000CACC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BC3C();
  (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
  v31 = Image.resizable(capInsets:resizingMode:)();

  (*(v9 + 8))(v12, v8);
  LODWORD(v9) = *(a1 + *(v5 + 48));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = 1;
  *&v32[6] = v35;
  *&v32[22] = v36;
  *&v32[38] = v37;
  v13 = static Alignment.center.getter();
  v15 = v14;
  v16 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  LOBYTE(v9) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v34 = 0;
  sub_10000A11C(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = swift_allocObject();
  sub_10001065C(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v28 = *&v32[16];
  *(a2 + 18) = *v32;
  *a2 = v31;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v28;
  result = *&v32[32];
  *(a2 + 50) = *&v32[32];
  *(a2 + 64) = *&v32[46];
  *(a2 + 72) = 256;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = v16;
  *(a2 + 96) = v13;
  *(a2 + 104) = v15;
  *(a2 + 112) = v9;
  *(a2 + 120) = v19;
  *(a2 + 128) = v21;
  *(a2 + 136) = v23;
  *(a2 + 144) = v25;
  *(a2 + 152) = 0;
  *(a2 + 160) = sub_100011B74;
  *(a2 + 168) = v27;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_10000CDD4(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationDialogView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002E80(&unk_10002A8C0, &unk_100018898);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10000A11C(a1, v5);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10001065C(v5, v13 + v12);
  sub_10000D718(0, 0, v9, &unk_100018A78, v13);
}

uint64_t sub_10000CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_10000D024, v6, v5);
}

uint64_t sub_10000D024()
{
  v1 = v0[8];
  v2 = type metadata accessor for ConfirmationDialogView(0);
  v0[12] = v2;
  v3 = (v1 + *(v2 + 36));
  if (*(v3 + 32) == 1)
  {
    v4 = *(v1 + *(v2 + 56));
    v6 = *v3;
    v5 = v3[1];
    v7 = *(&async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:) + 1);
    v13 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:) + async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:));
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10000D188;

    return v13(v6, v5);
  }

  else
  {
    v10 = *(v1 + *(v2 + 56));
    v11 = *(&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + 1);
    v14 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack());
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_10000D3AC;

    return v14();
  }
}

uint64_t sub_10000D188(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_10000D584;
  }

  else
  {
    v4[14] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_10000D2B4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10000D2B4()
{
  v1 = *(v0 + 112);
  *(v0 + 32) = *(*(v0 + 64) + *(*(v0 + 96) + 48));
  *(v0 + 56) = v1;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v2 = *(*(v0 + 64) + *(*(v0 + 96) + 56));
  v3 = *(&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + 1);
  v6 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack());
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_10000D3AC;

  return v6();
}

uint64_t sub_10000D3AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {

    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_10000D678;
  }

  else
  {
    v4[16] = a1;
    v7 = v4[10];
    v8 = v4[11];
    v9 = sub_10000D4D8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10000D4D8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);

  *(v0 + 16) = *(*(v0 + 64) + *(*(v0 + 96) + 52));
  *(v0 + 48) = v1;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000D584()
{
  *(v0 + 32) = *(*(v0 + 64) + *(*(v0 + 96) + 48));
  *(v0 + 56) = 0;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v1 = *(*(v0 + 64) + *(*(v0 + 96) + 56));
  v2 = *(&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + 1);
  v5 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack() + async function pointer to dispatch thunk of SFUIContactIconProvider.contactIconFallBack());
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_10000D3AC;

  return v5();
}

uint64_t sub_10000D678()
{
  v1 = *(v0 + 72);

  *(v0 + 16) = *(*(v0 + 64) + *(*(v0 + 96) + 52));
  *(v0 + 48) = 0;
  sub_100002E80(&qword_10002AA48, &qword_100018A80);
  State.wrappedValue.setter();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000D718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002E80(&unk_10002A8C0, &unk_100018898);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100011484(a3, v27 - v11, &unk_10002A8C0, &unk_100018898);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000114EC(v12, &unk_10002A8C0, &unk_100018898);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000114EC(a3, &unk_10002A8C0, &unk_100018898);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000114EC(a3, &unk_10002A8C0, &unk_100018898);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000DA18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = type metadata accessor for ConfirmationDialogView(0);
  v4 = v3 - 8;
  v73 = *(v3 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin(v3);
  v74 = v6;
  v75 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100002E80(&qword_10002A838, &qword_100018848);
  v7 = *(*(v72 - 8) + 64);
  v8 = __chkstk_darwin(v72);
  v64 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62[0] = v62 - v10;
  v11 = type metadata accessor for DynamicTypeSize();
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  v13 = __chkstk_darwin(v11);
  v79 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v62 - v15;
  v71 = sub_100002E80(&qword_10002A840, &qword_100018850);
  v17 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v70 = v62 - v18;
  v19 = sub_100002E80(&qword_10002A848, &qword_100018858);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v62 - v21;
  v23 = sub_100002E80(&qword_10002A850, &qword_100018860);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = v62 - v25;
  v69 = sub_100002E80(&qword_10002A858, &qword_100018868);
  v67 = *(v69 - 8);
  v27 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = v62 - v28;
  v65 = sub_100002E80(&qword_10002A860, &qword_100018870);
  v29 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v68 = v62 - v30;
  *v22 = static HorizontalAlignment.leading.getter();
  *(v22 + 1) = 0x402E000000000000;
  v22[16] = 0;
  v31 = sub_100002E80(&qword_10002A868, &qword_100018878);
  sub_10000E20C(v2, &v22[*(v31 + 44)]);
  v32 = *(v4 + 48);
  v76 = v2;
  v33 = *(v2 + v32);
  if (*(v2 + v32))
  {
    v34 = 0x4038000000000000;
  }

  else
  {
    v34 = 0x4030000000000000;
  }

  if (*(v2 + v32))
  {
    v35 = 0x4039000000000000;
  }

  else
  {
    v35 = 0x4030000000000000;
  }

  if (*(v2 + v32))
  {
    v36 = 0x4036000000000000;
  }

  else
  {
    v36 = 0x4030000000000000;
  }

  v37 = static Edge.Set.all.getter();
  sub_1000109C0(v22, v26, &qword_10002A848, &qword_100018858);
  v62[1] = v23;
  v63 = v26;
  v38 = &v26[*(v23 + 36)];
  *v38 = v37;
  *(v38 + 1) = v34;
  *(v38 + 2) = v35;
  *(v38 + 3) = v36;
  *(v38 + 4) = v35;
  v39 = v16;
  v38[40] = 0;
  v40 = v78;
  v41 = *(v78 + 104);
  v41(v39, enum case for DynamicTypeSize.xSmall(_:), v11);
  if (v33)
  {
    v42 = v79;
    v41(v79, enum case for DynamicTypeSize.accessibility5(_:), v11);
    sub_10000AF04(&qword_10002A870, &type metadata accessor for DynamicTypeSize);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
LABEL_14:
      v44 = *(v40 + 32);
      v45 = v62[0];
      v44(v62[0], v39, v11);
      v46 = v64;
      v47 = v72;
      v44(v45 + *(v72 + 48), v42, v11);
      sub_100011484(v45, v46, &qword_10002A838, &qword_100018848);
      v48 = *(v47 + 48);
      v49 = v70;
      v44(v70, v46, v11);
      v50 = *(v40 + 8);
      v50(v46 + v48, v11);
      sub_1000109C0(v45, v46, &qword_10002A838, &qword_100018848);
      v44(v49 + *(v71 + 36), (v46 + *(v47 + 48)), v11);
      v50(v46, v11);
      sub_1000105A0();
      sub_10001230C(&qword_10002A888, &qword_10002A840, &qword_100018850);
      v51 = v66;
      v52 = v63;
      View.dynamicTypeSize<A>(_:)();
      sub_1000114EC(v49, &qword_10002A840, &qword_100018850);
      sub_1000114EC(v52, &qword_10002A850, &qword_100018860);
      v54 = v75;
      v53 = v76;
      sub_10000A11C(v76, v75);
      v55 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v56 = swift_allocObject();
      sub_10001065C(v54, v56 + v55);
      v57 = v68;
      (*(v67 + 32))(v68, v51, v69);
      v58 = (v57 + *(v65 + 36));
      *v58 = sub_1000106C0;
      v58[1] = v56;
      v58[2] = 0;
      v58[3] = 0;
      sub_10000A11C(v53, v54);
      v59 = swift_allocObject();
      sub_10001065C(v54, v59 + v55);
      v60 = v77;
      sub_1000109C0(v57, v77, &qword_10002A860, &qword_100018870);
      result = sub_100002E80(&qword_10002A890, &qword_100018880);
      v61 = (v60 + *(result + 36));
      *v61 = 0;
      v61[1] = 0;
      v61[2] = sub_100010934;
      v61[3] = v59;
      return result;
    }

    __break(1u);
  }

  v42 = v79;
  v41(v79, enum case for DynamicTypeSize.large(_:), v11);
  sub_10000AF04(&qword_10002A870, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_100002E80(&qword_10002A8F0, &qword_1000188E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  *v8 = static VerticalAlignment.top.getter();
  *(v8 + 1) = 0x4034000000000000;
  v8[16] = 0;
  v9 = sub_100002E80(&qword_10002A8F8, &qword_1000188E8);
  sub_10000E5CC(a1, &v8[*(v9 + 44)]);
  v10 = (a1 + *(type metadata accessor for ConfirmationDialogView(0) + 60));
  v12 = *v10;
  v11 = v10[1];
  *&v59 = v12;
  *(&v59 + 1) = v11;
  sub_100002E80(&qword_10002A900, &qword_1000188F0);
  State.wrappedValue.getter();
  v13 = v52;
  swift_getKeyPath();
  *&v59 = v13;
  sub_10000AF04(&qword_10002A700, type metadata accessor for ConfirmationDialogLockObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 16);

  v51 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if ((v14 & 1) == 0)
  {
    v51 = static VerticalAlignment.center.getter();
    v72 = 0;
    sub_10000F368(a1, &v67);
    v54 = v69;
    v55 = v70;
    v56 = v71;
    v52 = v67;
    v53 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v59 = v67;
    v60 = v68;
    sub_100011484(&v52, &v66, &qword_10002A908, &qword_1000188F8);
    sub_1000114EC(&v59, &qword_10002A908, &qword_1000188F8);
    v17 = *(&v52 + 1);
    v16 = v52;
    v19 = *(&v53 + 1);
    v18 = v53;
    v21 = *(&v54 + 1);
    v20 = v54;
    v23 = *(&v55 + 1);
    v22 = v55;
    v25 = *(&v56 + 1);
    v24 = v56;
    v15 = 0x4024000000000000;
    v26 = v72;
  }

  v42 = v17;
  v43 = v25;
  *&v49 = v23;
  *(&v49 + 1) = v24;
  v27 = v8;
  v28 = v50;
  v46 = v21;
  v47 = v8;
  v29 = v18;
  v44 = v26;
  v45 = v18;
  v30 = v20;
  v31 = v26;
  sub_100011484(v27, v50, &qword_10002A8F0, &qword_1000188E0);
  v32 = v28;
  v33 = v48;
  sub_100011484(v32, v48, &qword_10002A8F0, &qword_1000188E0);
  v34 = v33 + *(sub_100002E80(&qword_10002A910, &qword_100018900) + 48);
  *&v52 = v51;
  *(&v52 + 1) = v15;
  *&v53 = v31;
  *(&v53 + 1) = v16;
  v36 = v42;
  v35 = v43;
  *&v54 = v42;
  *(&v54 + 1) = v29;
  *&v55 = v19;
  *(&v55 + 1) = v30;
  *&v56 = v21;
  *(&v56 + 1) = v22;
  v57 = v49;
  v58 = v43;
  *(v34 + 96) = v43;
  v37 = v53;
  *v34 = v52;
  *(v34 + 16) = v37;
  v38 = v55;
  *(v34 + 32) = v54;
  *(v34 + 48) = v38;
  v39 = v57;
  *(v34 + 64) = v56;
  *(v34 + 80) = v39;
  sub_100011484(&v52, &v59, &qword_10002A918, &qword_100018908);
  sub_1000114EC(v47, &qword_10002A8F0, &qword_1000188E0);
  *&v59 = v51;
  *(&v59 + 1) = v15;
  *&v60 = v44;
  *(&v60 + 1) = v16;
  *&v61 = v36;
  *(&v61 + 1) = v45;
  *&v62 = v19;
  *(&v62 + 1) = v30;
  *&v63 = v46;
  *(&v63 + 1) = v22;
  v64 = v49;
  v65 = v35;
  sub_1000114EC(&v59, &qword_10002A918, &qword_100018908);
  return sub_1000114EC(v50, &qword_10002A8F0, &qword_1000188E0);
}

uint64_t sub_10000E5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v33 = a2;
  v2 = sub_100002E80(&qword_10002A920, &qword_100018910);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_100002E80(&qword_10002A928, &qword_100018918);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = sub_100002E80(&qword_10002A930, &qword_100018920);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  *v21 = static HorizontalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = &v21[*(sub_100002E80(&qword_10002A938, &qword_100018928) + 44)];
  sub_10000C1B4(v14);
  sub_100011484(v14, v12, &qword_10002A928, &qword_100018918);
  *v22 = 0;
  v22[8] = 1;
  v23 = sub_100002E80(&qword_10002A940, &qword_100018930);
  sub_100011484(v12, &v22[*(v23 + 48)], &qword_10002A928, &qword_100018918);
  v24 = &v22[*(v23 + 64)];
  *v24 = 0;
  v24[8] = 1;
  sub_1000114EC(v14, &qword_10002A928, &qword_100018918);
  sub_1000114EC(v12, &qword_10002A928, &qword_100018918);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v25 = sub_100002E80(&qword_10002A948, &qword_100018938);
  sub_10000E92C(v31, &v7[*(v25 + 44)]);
  sub_100011484(v21, v19, &qword_10002A930, &qword_100018920);
  v26 = v32;
  sub_100011484(v7, v32, &qword_10002A920, &qword_100018910);
  v27 = v33;
  sub_100011484(v19, v33, &qword_10002A930, &qword_100018920);
  v28 = sub_100002E80(&qword_10002A950, &qword_100018940);
  sub_100011484(v26, v27 + *(v28 + 48), &qword_10002A920, &qword_100018910);
  sub_1000114EC(v7, &qword_10002A920, &qword_100018910);
  sub_1000114EC(v21, &qword_10002A930, &qword_100018920);
  sub_1000114EC(v26, &qword_10002A920, &qword_100018910);
  return sub_1000114EC(v19, &qword_10002A930, &qword_100018920);
}

uint64_t sub_10000E92C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v114 = a1;
  v118 = a2;
  v2 = sub_100002E80(&qword_10002A958, &qword_100018948);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v111 = &v103 - v4;
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002E80(&qword_10002A960, &qword_100018950);
  v11 = *(v10 - 8);
  v113 = v10 - 8;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v112 = &v103 - v13;
  v14 = sub_100002E80(&qword_10002A968, &qword_100018958);
  v15 = *(v14 - 8);
  v116 = v14 - 8;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v115 = &v103 - v17;
  v121 = sub_100002E80(&qword_10002A970, &qword_100018960);
  v18 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v120 = &v103 - v19;
  v119 = sub_100002E80(&qword_10002A978, &qword_100018968);
  v117 = *(v119 - 8);
  v20 = *(v117 + 64);
  v21 = __chkstk_darwin(v119);
  v123 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = &v103 - v23;
  v145 = sub_10000B710();
  v146 = v24;
  v122 = sub_10001154C();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.headline.getter();
  v30 = v6[13];
  v106 = enum case for Font.Leading.tight(_:);
  v107 = v6 + 13;
  v105 = v30;
  v30(v9);
  Font.leading(_:)();

  v31 = v6[1];
  v108 = v9;
  v109 = v6 + 1;
  v110 = v5;
  v104 = v31;
  v31(v9, v5);
  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v9) = v35;

  sub_1000115A0(v25, v27, v29 & 1);

  static Color.primary.getter();
  v36 = Text.foregroundColor(_:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_1000115A0(v32, v34, v9 & 1);

  v43 = v112;
  v44 = &v112[*(v113 + 44)];
  v45 = *(sub_100002E80(&qword_10002A988, &qword_100018970) + 28);
  v46 = enum case for Text.TruncationMode.tail(_:);
  v47 = type metadata accessor for Text.TruncationMode();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  *v43 = v36;
  *(v43 + 8) = v38;
  *(v43 + 16) = v40 & 1;
  *(v43 + 24) = v42;
  *(v43 + 32) = 256;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v115;
  sub_1000109C0(v43, v115, &qword_10002A960, &qword_100018950);
  v49 = (v48 + *(v116 + 44));
  v50 = v174;
  v49[4] = v173;
  v49[5] = v50;
  v49[6] = v175;
  v51 = v170;
  *v49 = v169;
  v49[1] = v51;
  v52 = v172;
  v49[2] = v171;
  v49[3] = v52;
  LOBYTE(v42) = static Edge.Set.top.getter();
  v53 = type metadata accessor for ConfirmationDialogView(0);
  LODWORD(v38) = *(v114 + *(v53 + 40));
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v120;
  sub_1000109C0(v48, v120, &qword_10002A968, &qword_100018958);
  v63 = v62 + *(v121 + 36);
  *v63 = v42;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = *(v53 + 20);
  sub_100002E80(&qword_10002A718, &unk_1000187D0);
  AccessibilityFocusState.projectedValue.getter();
  sub_1000116A0();
  View.accessibilityFocused(_:)();

  sub_1000114EC(v62, &qword_10002A970, &qword_100018960);
  v145 = sub_10000B9C4();
  v146 = v65;
  v66 = Text.init<A>(_:)();
  v68 = v67;
  v70 = v69;
  LODWORD(v116) = v38;
  if (v38 == 1)
  {
    sub_100002E80(&qword_10002A710, &qword_1000187C8);
    ScaledMetric.wrappedValue.getter();
    v71 = type metadata accessor for Font.Design();
    v72 = v111;
    (*(*(v71 - 8) + 56))(v111, 1, 1, v71);
    static Font.system(size:weight:design:)();
    sub_1000114EC(v72, &qword_10002A958, &qword_100018948);
    v115 = 0;
  }

  else
  {
    static Font.subheadline.getter();
    v73 = v108;
    v74 = v110;
    v105(v108, v106, v110);
    Font.leading(_:)();

    v104(v73, v74);
    v115 = 3;
  }

  v114 = Text.font(_:)();
  v120 = v75;
  v121 = v76;
  v78 = v77;

  sub_1000115A0(v66, v68, v70 & 1);

  KeyPath = swift_getKeyPath();
  v113 = KeyPath;
  v122 = static Color.primary.getter();
  v112 = swift_getKeyPath();
  v78 &= 1u;
  v168 = v78;
  v80 = v116;
  v166 = v116;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v81 = v117;
  v82 = *(v117 + 16);
  v83 = v123;
  v84 = v119;
  v82(v123, v124, v119);
  v85 = v118;
  v82(v118, v83, v84);
  v86 = &v85[*(sub_100002E80(&qword_10002A9C0, &qword_100018A10) + 48)];
  v88 = v114;
  v87 = v115;
  *&v132 = v114;
  *(&v132 + 1) = v120;
  LOBYTE(v133) = v78;
  *(&v133 + 1) = *v167;
  DWORD1(v133) = *&v167[3];
  *(&v133 + 1) = v121;
  *&v134 = KeyPath;
  *(&v134 + 1) = v115;
  LOBYTE(v135) = v80;
  *(&v135 + 1) = *v165;
  DWORD1(v135) = *&v165[3];
  v89 = v112;
  *(&v135 + 1) = v112;
  *&v136 = v122;
  *(&v136 + 1) = 0x3FE0000000000000;
  v91 = v125;
  v90 = v126;
  v137 = v125;
  v138 = v126;
  v93 = v130;
  v92 = v131;
  v142 = v130;
  v143 = v131;
  v95 = v128;
  v94 = v129;
  v140 = v128;
  v141 = v129;
  v96 = v127;
  v139 = v127;
  v144 = 256;
  *(v86 + 96) = 256;
  *(v86 + 10) = v93;
  *(v86 + 11) = v92;
  *(v86 + 6) = v90;
  *(v86 + 7) = v96;
  *(v86 + 8) = v95;
  *(v86 + 9) = v94;
  v97 = v132;
  v98 = v133;
  v99 = v134;
  v100 = v135;
  *(v86 + 4) = v136;
  *(v86 + 5) = v91;
  *(v86 + 2) = v99;
  *(v86 + 3) = v100;
  *v86 = v97;
  *(v86 + 1) = v98;
  sub_100011484(&v132, &v145, &qword_10002A9C8, &qword_100018A18);
  v101 = *(v81 + 8);
  v101(v124, v84);
  v145 = v88;
  v146 = v120;
  v147 = v78;
  *v148 = *v167;
  *&v148[3] = *&v167[3];
  v149 = v121;
  v150 = v113;
  v151 = v87;
  v152 = v80;
  *v153 = *v165;
  *&v153[3] = *&v165[3];
  v154 = v89;
  v155 = v122;
  v156 = 0x3FE0000000000000;
  v157 = v125;
  v158 = v126;
  v162 = v130;
  v163 = v131;
  v160 = v128;
  v161 = v129;
  v159 = v127;
  v164 = 256;
  sub_1000114EC(&v145, &qword_10002A9C8, &qword_100018A18);
  return (v101)(v123, v84);
}

uint64_t sub_10000F368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a1 + *(v7 + 48));
  sub_10000A11C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_10001065C(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_10000A11C(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_10001065C(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = 1;
  *(a2 + 17) = v11;
  *(a2 + 24) = sub_100011410;
  *(a2 + 32) = v13;
  *(a2 + 40) = v10;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0;
  *(a2 + 57) = v11;
  *(a2 + 64) = sub_10001147C;
  *(a2 + 72) = v14;
  return swift_bridgeObjectRetain_n();
}

void sub_10000F4F0(int a1)
{
  v3 = sub_100002E80(&unk_10002A8C0, &unk_100018898);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v7 = v1 + *(type metadata accessor for ConfirmationDialogView(0) + 24);
  v54._object = *(v7 + 8);
  if (v54._object)
  {
    v47 = v6;
    if (!UIApp)
    {
      goto LABEL_44;
    }

    v50 = a1;
    v54._countAndFlagsBits = *v7;
    v8 = [UIApp connectedScenes];
    v9 = sub_10000A084(0, &unk_10002A4C0, UIScene_ptr);
    sub_10000A0CC(&unk_10002A8D0, &unk_10002A4C0, UIScene_ptr);
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v10;
    v51 = v9;
    if ((v10 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v11 = Set.Iterator.init(_cocoa:)();
      v10 = v57[1];
      v12 = v57[2];
      v13 = v57[3];
      v14 = v57[4];
      v15 = v57[5];
    }

    else
    {
      v16 = -1 << *(v10 + 32);
      v12 = (v10 + 56);
      v17 = ~v16;
      v18 = -v16;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v15 = (v19 & *(v10 + 56));

      v13 = v17;
      v14 = 0;
    }

    v48 = v13;
    v20 = (v13 + 64) >> 6;
    v53 = 0x80000001000196A0;
    if (v10 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v21 = v14;
    v22 = v15;
    v23 = v14;
    if (v15)
    {
LABEL_14:
      v24 = (v22 - 1) & v22;
      v25 = *(*(v10 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
      if (v25)
      {
        while (1)
        {
          v52 = v15;
          v27 = v10;
          v9 = v25;
          v28 = [v25 _sceneIdentifier];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v55 = 0;
          v56 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          v55 = 0xD000000000000023;
          v56 = v53;
          String.append(_:)(v54);
          if (v29 == v55 && v31 == v56)
          {
            break;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {
            goto LABEL_27;
          }

          v14 = v23;
          v15 = v24;
          v10 = v27;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          v26 = __CocoaSet.Iterator.next()();
          if (v26)
          {
            v57[0] = v26;
            swift_dynamicCast();
            v25 = v55;
            v23 = v14;
            v24 = v15;
            if (v55)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

LABEL_27:
        v34 = 0;
      }

      else
      {
LABEL_25:
        v9 = 0;
        v34 = 1;
      }

      sub_10000A07C();

      v35 = objc_allocWithZone(type metadata accessor for DDUIConfirmationAction());
      v36 = DDUIConfirmationAction.init(result:)();
      v55 = &_swiftEmptySetSingleton;
      v15 = v36;
      sub_100014B5C(v57, v15);

      if (v34)
      {
      }

      else
      {
        v37 = [v9 _FBSScene];
        sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
        sub_10000A0CC(&qword_10002A4D8, &qword_10002A4D0, BSAction_ptr);
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v37 sendActions:isa];
      }

      sub_100002E80(&unk_10002A500, &unk_1000184F0);
      v11 = static Activity.activities.getter();
      if (!(v11 >> 62))
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_33;
      }
    }

    else
    {
      while (1)
      {
        v23 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_25;
        }

        v22 = v12[v23];
        ++v21;
        if (v22)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v44 = v11;
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v44;
    if (!v45)
    {
      goto LABEL_39;
    }

LABEL_33:
    if ((v11 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_36;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = *(v11 + 32);

LABEL_36:

      v40 = type metadata accessor for TaskPriority();
      v41 = v47;
      (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
      type metadata accessor for MainActor();

      v42 = static MainActor.shared.getter();
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = &protocol witness table for MainActor;
      v43[4] = v39;
      sub_10000D718(0, 0, v41, &unk_1000188B0, v43);

LABEL_40:

      return;
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }
}

uint64_t sub_10000FAD0(uint64_t a1)
{
  v2 = type metadata accessor for ConfirmationDialogView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(__chkstk_darwin(v2) + 20);
  LOBYTE(v19) = 1;
  sub_100002E80(&qword_10002A718, &unk_1000187D0);
  AccessibilityFocusState.wrappedValue.setter();
  v6 = (a1 + *(v2 + 28));
  v7 = *v6;
  v8 = v6[1];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v8)
  {
  }

  if (v7 == v9 && v8 == v10)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_10:
    sub_10000A11C(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = swift_allocObject();
    sub_10001065C(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    v16 = objc_allocWithZone(type metadata accessor for AXGuestPassAcceptGestureAssertion());
    v17 = AXGuestPassAcceptGestureAssertion.init(gestureFiredHandler:)();
    v19 = *(a1 + *(v2 + 64));
    v18[1] = v17;
    sub_100002E80(&qword_10002A898, &qword_100018888);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10000FCC8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ConfirmationDialogView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_10000A084(0, &qword_10002A8A0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  sub_10000A11C(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_10001065C(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_100012604;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010048;
  aBlock[3] = &unk_100025668;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000AF04(&qword_10002A8A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002E80(&qword_10002A8B0, &qword_100018890);
  sub_10001230C(&qword_10002A8B8, &qword_10002A8B0, &qword_100018890);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v18);
}

uint64_t sub_100010048(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10001008C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ConfirmationDialogView(0) + 64));
  v2 = *v1;
  v3 = v1[1];
  sub_100002E80(&qword_10002A898, &qword_100018888);
  State.wrappedValue.getter();
  if (v5)
  {
    dispatch thunk of AXGuestPassAcceptGestureAssertion.invalidate()();
  }

  return State.wrappedValue.setter();
}

uint64_t sub_100010120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = *(*(sub_100002E80(&unk_10002A8E0, &unk_1000188D0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_10001024C, v10, v9);
}

uint64_t sub_10001024C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  dispatch thunk of Activity.content.getter();
  v4 = sub_100002E80(&qword_10002A4F0, &qword_1000184E0);
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  static ActivityUIDismissalPolicy.immediate.getter();
  v5 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
  v11 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_100010364;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  return v11(v8, v7);
}

uint64_t sub_100010364()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_1000114EC(v3, &unk_10002A8E0, &unk_1000188D0);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);

  return _swift_task_switch(sub_100010514, v8, v7);
}

uint64_t sub_100010514()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000105A0()
{
  result = qword_10002A878;
  if (!qword_10002A878)
  {
    sub_10000A298(&qword_10002A850, &qword_100018860);
    sub_10001230C(&qword_10002A880, &qword_10002A848, &qword_100018858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A878);
  }

  return result;
}

uint64_t sub_10001065C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationDialogView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000106D8()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  v8 = type metadata accessor for AccessibilityTechnologies();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(sub_100002E80(&qword_10002A718, &unk_1000187D0) + 40));

  v11 = *(v5 + v1[6] + 8);

  v12 = *(v5 + v1[7] + 8);

  v13 = *(v5 + v1[8] + 8);

  v14 = v5 + v1[9];
  v15 = *(v14 + 32);
  if (v15 != 255)
  {
    sub_100004F6C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), v15);
  }

  v16 = v5 + v1[12];
  v17 = *(v16 + 8);

  v18 = v5 + v1[13];

  v19 = *(v18 + 8);

  v20 = (v5 + v1[15]);
  v21 = *v20;

  v22 = v20[1];

  v23 = v5 + v1[16];

  v24 = *(v23 + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001094C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConfirmationDialogView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000109C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E80(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100010A40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010A58@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v29 = type metadata accessor for AirDropUIButtonStyle.Style();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v29);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AirDropUIButtonStyle();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100002E80(&qword_10002AAB0, &qword_100018B58);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27[-v13];
  v28 = *(v1 + 16);
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = DDUILocalizedString();

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v34 = v18;
  v35 = v20;
  v36 = *v1;
  v21 = *(v1 + 4);
  v22 = swift_allocObject();
  v23 = v1[1];
  *(v22 + 16) = *v1;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v1 + 4);
  sub_100011484(&v36, v33, &qword_10002AAB8, &unk_100018B60);
  sub_10001154C();

  Button<>.init<A>(_:action:)();
  if (*(v1 + 17))
  {
    if (v28)
    {
      v24 = &enum case for AirDropUIButtonStyle.Style.jindoDefault(_:);
    }

    else
    {
      v24 = &enum case for AirDropUIButtonStyle.Style.jindoAccept(_:);
    }

    (*(v2 + 104))(v5, *v24, v29);
  }

  else
  {
    (*(v2 + 104))(v5, enum case for AirDropUIButtonStyle.Style.nonJindo(_:), v29);
  }

  AirDropUIButtonStyle.init(style:)();
  sub_10001230C(&qword_10002AAC0, &qword_10002AAB0, &qword_100018B58);
  sub_10000AF04(&qword_10002AAC8, &type metadata accessor for AirDropUIButtonStyle);
  v25 = v31;
  View.buttonStyle<A>(_:)();
  (*(v30 + 8))(v9, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100010E90(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010F88;

  return v7(a1);
}

uint64_t sub_100010F88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100011080()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000110C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011174;

  return sub_100010120(a1, v4, v5, v6);
}

uint64_t sub_100011174()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100011268()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000112A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001260C;

  return sub_100010E90(a1, v5);
}

uint64_t sub_100011358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100011174;

  return sub_100010E90(a1, v5);
}

void sub_100011418(int a1)
{
  v3 = *(type metadata accessor for ConfirmationDialogView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_10000F4F0(a1);
}

uint64_t sub_100011484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002E80(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000114EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002E80(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10001154C()
{
  result = qword_10002A980;
  if (!qword_10002A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A980);
  }

  return result;
}

uint64_t sub_1000115A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000115D4(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1000116A0()
{
  result = qword_10002A990;
  if (!qword_10002A990)
  {
    sub_10000A298(&qword_10002A970, &qword_100018960);
    sub_10001172C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A990);
  }

  return result;
}

unint64_t sub_10001172C()
{
  result = qword_10002A998;
  if (!qword_10002A998)
  {
    sub_10000A298(&qword_10002A968, &qword_100018958);
    sub_1000117B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A998);
  }

  return result;
}

unint64_t sub_1000117B8()
{
  result = qword_10002A9A0;
  if (!qword_10002A9A0)
  {
    sub_10000A298(&qword_10002A960, &qword_100018950);
    sub_100011870();
    sub_10001230C(&qword_10002A9B8, &qword_10002A988, &qword_100018970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A9A0);
  }

  return result;
}

unint64_t sub_100011870()
{
  result = qword_10002A9A8;
  if (!qword_10002A9A8)
  {
    sub_10000A298(&qword_10002A9B0, &qword_1000189A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A9A8);
  }

  return result;
}

uint64_t sub_1000118F4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100011928(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100011958@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100011984(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_1000119B0()
{
  result = qword_10002A9D8;
  if (!qword_10002A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A9D8);
  }

  return result;
}

unint64_t sub_100011A04()
{
  result = qword_10002AA10;
  if (!qword_10002AA10)
  {
    sub_10000A298(&qword_10002AA08, &qword_100018A50);
    sub_100011ABC();
    sub_10001230C(&qword_10002AA38, &qword_10002AA00, &qword_100018A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA10);
  }

  return result;
}

unint64_t sub_100011ABC()
{
  result = qword_10002AA18;
  if (!qword_10002AA18)
  {
    sub_10000A298(&qword_10002AA20, &qword_100018A58);
    sub_10001230C(&qword_10002AA28, &qword_10002AA30, &qword_100018A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA18);
  }

  return result;
}

uint64_t sub_100011B8C()
{
  v1 = type metadata accessor for ConfirmationDialogView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = sub_100002E80(&qword_10002A710, &qword_1000187C8);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v0 + v3 + v1[5];
  v9 = type metadata accessor for AccessibilityTechnologies();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(sub_100002E80(&qword_10002A718, &unk_1000187D0) + 40));

  v12 = *(v6 + v1[6] + 8);

  v13 = *(v6 + v1[7] + 8);

  v14 = *(v6 + v1[8] + 8);

  v15 = v6 + v1[9];
  v16 = *(v15 + 32);
  if (v16 != 255)
  {
    sub_100004F6C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), v16);
  }

  v17 = v6 + v1[12];
  v18 = *(v17 + 8);

  v19 = v6 + v1[13];

  v20 = *(v19 + 8);

  v21 = (v6 + v1[15]);
  v22 = *v21;

  v23 = v21[1];

  v24 = v6 + v1[16];

  v25 = *(v24 + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100011DF0(uint64_t a1)
{
  v4 = *(type metadata accessor for ConfirmationDialogView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001260C;

  return sub_10000CF8C(a1, v6, v7, v1 + v5);
}

unint64_t sub_100011EE0()
{
  result = qword_10002AA80;
  if (!qword_10002AA80)
  {
    sub_10000A298(&qword_10002AA70, &qword_100018AA8);
    sub_100011F98();
    sub_10001230C(&qword_10002AA90, &qword_10002AA98, &qword_100018AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA80);
  }

  return result;
}

unint64_t sub_100011F98()
{
  result = qword_10002AA88;
  if (!qword_10002AA88)
  {
    sub_10000A298(&qword_10002AA78, &qword_100018AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AA88);
  }

  return result;
}

__n128 sub_10001201C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100012030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000120D4()
{
  result = qword_10002AAA0;
  if (!qword_10002AAA0)
  {
    sub_10000A298(&qword_10002A890, &qword_100018880);
    sub_100012160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AAA0);
  }

  return result;
}

unint64_t sub_100012160()
{
  result = qword_10002AAA8;
  if (!qword_10002AAA8)
  {
    sub_10000A298(&qword_10002A860, &qword_100018870);
    sub_10000A298(&qword_10002A850, &qword_100018860);
    sub_10000A298(&qword_10002A840, &qword_100018850);
    sub_1000105A0();
    sub_10001230C(&qword_10002A888, &qword_10002A840, &qword_100018850);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AAA8);
  }

  return result;
}

uint64_t sub_1000122A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000122E4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_10001230C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A298(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationResult(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationResult(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000124B0()
{
  sub_10000A298(&qword_10002AAB0, &qword_100018B58);
  type metadata accessor for AirDropUIButtonStyle();
  sub_10001230C(&qword_10002AAC0, &qword_10002AAB0, &qword_100018B58);
  sub_10000AF04(&qword_10002AAC8, &type metadata accessor for AirDropUIButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100012594()
{
  result = qword_10002AAD0;
  if (!qword_10002AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002AAD0);
  }

  return result;
}

uint64_t sub_100012630()
{
  v0 = type metadata accessor for Logger();
  sub_10000895C(v0, qword_10002AD40);
  sub_100008924(v0, qword_10002AD40);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100012708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_100002E80(&qword_10002AC00, &qword_100018C78);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for DDDeviceAdvertiserViewConfiguration();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v55 - v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating device advertiser host view controller", v17, 2u);
  }

  v18 = [a1 _FBSScene];
  v19 = [v18 hostAuditToken];
  if (v19)
  {
    v20 = v19;
    sub_10000A084(0, &qword_10002A9F0, LSBundleRecord_ptr);
    [v20 realToken];
    v32 = sub_100013A78(v64[0], v64[1], v64[2], v64[3]);
    v33 = [v32 bundleIdentifier];
    if (v33)
    {
      v34 = v33;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v35;

      v36 = a1;
      DDDeviceAdvertiserViewConfiguration.init(scene:)();
      v37 = v61;
      if ((*(v61 + 48))(v8, 1, v9) == 1)
      {

        sub_1000114EC(v8, &qword_10002AC00, &qword_100018C78);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Unable to create DDDeviceAdvertiserViewConfiguration", v40, 2u);
        }

        v41 = type metadata accessor for DDDeviceAdvertiserView();
        return (*(*(v41 - 8) + 56))(v63, 1, 1, v41);
      }

      else
      {
        v42 = v62;
        (*(v37 + 32))(v62, v8, v9);
        (*(v37 + 16))(v13, v42, v9);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v57 = v45;
          v58 = swift_slowAlloc();
          v64[0] = v58;
          *v45 = 136315138;
          v56 = DDDeviceAdvertiserViewConfiguration.serviceIdentifier.getter();
          v47 = v46;
          v48 = *(v37 + 8);
          v48(v13, v9);
          v49 = v48;
          v50 = sub_1000145B4(v56, v47, v64);

          v51 = v57;
          *(v57 + 1) = v50;
          _os_log_impl(&_mh_execute_header, v43, v44, "Got service Identifier: %s from hostStorage", v51, 0xCu);
          sub_100002F30(v58);
        }

        else
        {

          v49 = *(v37 + 8);
          v49(v13, v9);
        }

        v52 = v62;
        DDDeviceAdvertiserViewConfiguration.serviceIdentifier.getter();
        v53 = v63;
        DDDeviceAdvertiserView.init(bundleID:serviceIdentifier:)();

        v49(v52, v9);
        v54 = type metadata accessor for DDDeviceAdvertiserView();
        return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      }
    }

    [v3 devicePickerDidCancelWithReason:-2];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not get bundleID", v23, 2u);
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to get audit token", v26, 2u);
    }

    sub_10001576C(a1);
  }

  v27 = type metadata accessor for DDDeviceAdvertiserView();
  v28 = *(*(v27 - 8) + 56);
  v29 = v27;
  v30 = v63;

  return v28(v30, 1, 1, v29);
}

uint64_t sub_100012DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = type metadata accessor for DDDataReturnType();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v58 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropClient.Identifier();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  __chkstk_darwin(v8);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NWBrowser.Descriptor();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v61 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002E80(&unk_10002ABF0, &qword_100018C68);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v55 - v17;
  v19 = type metadata accessor for DDDeviceDiscoveryViewConfiguration();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  __chkstk_darwin(v19);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Creating device picker host view controller", v25, 2u);
  }

  v26 = [a1 _FBSScene];
  v27 = [v26 hostAuditToken];
  if (v27)
  {
    v28 = v27;
    sub_10000A084(0, &qword_10002A9F0, LSBundleRecord_ptr);
    [v28 realToken];
    v40 = sub_100013A78(v65, v66, v67, v68);
    v41 = [v40 bundleIdentifier];
    if (v41)
    {
      v42 = v41;
      v55[3] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55[4] = v43;

      v44 = a1;
      DDDeviceDiscoveryViewConfiguration.init(scene:)();
      v46 = v62;
      v45 = v63;
      if ((*(v62 + 48))(v18, 1, v63) == 1)
      {

        sub_1000114EC(v18, &unk_10002ABF0, &qword_100018C68);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Failed to create configuration", v49, 2u);
        }

        v50 = type metadata accessor for DDDeviceDiscoveryView();
        return (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
      }

      else
      {
        (*(v46 + 32))(v22, v18, v45);
        DDDeviceDiscoveryViewConfiguration.browseDescriptor.getter();
        v55[2] = DDDeviceDiscoveryViewConfiguration.browseParameters.getter();
        v51 = DDDeviceDiscoveryViewConfiguration.publicKey.getter();
        v55[0] = v52;
        v55[1] = v51;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for SFAirDropClient();
        (*(v56 + 104))(v11, enum case for SFAirDropClient.Identifier.DDUI(_:), v57);

        SFAirDropClient.__allocating_init(identifier:)();
        v53 = v64;
        DDDeviceDiscoveryView.init(airDropClient:bundleID:hostBundleID:previewImageLoader:browseDescriptor:browseParameters:publicKey:applicationServiceEndpointCallback:bonjourEndpointCallback:browserResultDataCallback:)();

        (*(v59 + 104))(v58, enum case for DDDataReturnType.browseResult(_:), v60);
        DDDeviceDiscoveryView.outputType.setter();

        (*(v46 + 8))(v22, v63);
        v54 = type metadata accessor for DDDeviceDiscoveryView();
        return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      }
    }

    [v3 devicePickerDidCancelWithReason:-2];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not get bundleID", v31, 2u);
    }
  }

  else
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to get audit token", v34, 2u);
    }

    sub_10001576C(a1);
  }

  v35 = type metadata accessor for DDDeviceDiscoveryView();
  v36 = *(*(v35 - 8) + 56);
  v37 = v35;
  v38 = v64;

  return v36(v38, 1, 1, v37);
}

void sub_1000135FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = *&Strong[OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window];
      if (v4)
      {
        swift_unknownObjectRetain();
        v5 = [v4 rootViewController];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 _hostedWindowScene];

          if (v7)
          {
            v8 = [objc_opt_self() actionForDevicePickerCreatedEndpoint:a1];
            [v7 sendAction:v8];
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Endpoint is nil", v11, 2u);
      }
    }
  }
}

void sub_100013788(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Attempting to succeed with bonjour endpoint", v6, 2u);
    }

    v7 = *&v3[OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window];
    if (v7)
    {
      v8 = [v7 rootViewController];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 _hostedWindowScene];

        if (v10)
        {
          v11 = [objc_opt_self() actionForDevicePickerCreatedBonjourEndpoint:a1];
          [v10 sendAction:v11];
        }
      }
    }
  }
}

void sub_1000138F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to succeed with browserResultData", v4, 2u);
    }

    v5 = *&v1[OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window];
    if (v5)
    {
      v6 = [v5 rootViewController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 _hostedWindowScene];

        if (v8)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          v10 = [objc_opt_self() actionForDevicePickerCreatedBrowserResultData:isa];

          [v8 sendAction:v10];
        }
      }
    }
  }
}

id sub_100013A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void sub_100013B80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
    if (v2)
    {
      v3 = [v2 rootViewController];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 _hostedWindowScene];

        if (v5)
        {
          v6 = [objc_allocWithZone(DDDeviceDiscoveryDismissAction) init];
          [v5 sendAction:v6];
        }
      }
    }
  }
}

void sub_100013CEC(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    *(v3 + 4) = v1;
    *v4 = v1;
    v5 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "scene did disconnect: %@", v3, 0xCu);
    sub_1000114EC(v4, &qword_100029E98, &qword_100018C60);
  }
}

id sub_100013F3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DevicePickerSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DevicePickerSceneDelegate()
{
  result = qword_10002AB70;
  if (!qword_10002AB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014044()
{
  result = type metadata accessor for Logger();
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

void sub_1000140DC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
  if (v3)
  {
    v4 = [v3 windowScene];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 _FBSScene];

      if (v6)
      {
        v9[1] = &_swiftEmptySetSingleton;
        v7 = [objc_opt_self() actionWithResult:a1];
        sub_100014B5C(v9, v7);

        sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
        sub_100014D94();
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v6 sendActions:isa];
      }
    }
  }
}

void sub_100014374(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
  if (v3)
  {
    v4 = [v3 windowScene];
    if (v4)
    {
      v5 = v4;
      v12 = [v4 _FBSScene];

      if (v12)
      {
        v6 = [v12 hostAuditToken];
        if (v6)
        {
          v7 = v6;
          v8 = String._bridgeToObjectiveC()();
          v9 = [v7 hasEntitlement:v8];

          if (v9)
          {
            v13[1] = &_swiftEmptySetSingleton;
            v10 = [objc_opt_self() actionWithDebugError:a1];
            sub_100014B5C(v13, v10);

            sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
            sub_100014D94();
            isa = Set._bridgeToObjectiveC()().super.isa;

            [v12 sendActions:isa];

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1000145B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014680(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000158C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F30(v11);
  return v7;
}

unint64_t sub_100014680(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001478C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_10001478C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000147D8(a1, a2);
  sub_100014908(&off_1000251C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000147D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000149F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000149F4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100014908(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100014A68(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000149F4(uint64_t a1, uint64_t a2)
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

  sub_100002E80(&qword_10002AC08, &qword_100018C80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002E80(&qword_10002AC08, &qword_100018C80);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_100014B5C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100014DFC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100014FEC(v21 + 1);
    }

    v19 = v8;
    sub_100015214(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100015298(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

unint64_t sub_100014D94()
{
  result = qword_10002A4D8;
  if (!qword_10002A4D8)
  {
    sub_10000A084(255, &qword_10002A4D0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002A4D8);
  }

  return result;
}

Swift::Int sub_100014DFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002E80(&unk_10002ABE0, &qword_100018C58);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100014FEC(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100014FEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002E80(&unk_10002ABE0, &qword_100018C58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100015214(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100015298(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100014FEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100015408();
      goto LABEL_12;
    }

    sub_100015558(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100015408()
{
  v1 = v0;
  sub_100002E80(&unk_10002ABE0, &qword_100018C58);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100015558(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002E80(&unk_10002ABE0, &qword_100018C58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_10001576C(void *a1)
{
  v5[1] = &_swiftEmptySetSingleton;
  v4 = [objc_opt_self() actionWithResult:-1];
  sub_100014B5C(v5, v4);

  v2 = [a1 _FBSScene];
  sub_10000A084(0, &qword_10002A4D0, BSAction_ptr);
  sub_100014D94();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v2 sendActions:isa];
}

uint64_t sub_100015878()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000158C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100015928(void *a1)
{
  v2 = v1;
  v4 = sub_100002E80(&qword_10002AC10, &qword_100018C88);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v63 - v9;
  v10 = sub_100002E80(&qword_10002AC18, &qword_100018C90);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = sub_100002E80(&qword_10002AC00, &qword_100018C78);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v63 - v19;
  v21 = sub_100002E80(&qword_10002AC20, &qword_100018C98);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v63 - v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating scene to connect to", v27, 2u);
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v30 = objc_allocWithZone(UIWindow);
    v31 = a1;
    v32 = [v30 initWithWindowScene:v29];
    v33 = *(v2 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window) = v32;
    v34 = v32;

    UIScene.hostStorage.getter();
    v35 = sub_100002E80(&qword_10002AC28, &qword_100018CA0);
    if ((*(*(v35 - 8) + 48))(v24, 1, v35) == 1)
    {

      sub_1000160F0(v24);
    }

    else
    {
      sub_1000160F0(v24);
      v36 = v31;
      DDDeviceAdvertiserViewConfiguration.init(scene:)();
      v37 = type metadata accessor for DDDeviceAdvertiserViewConfiguration();
      v38 = (*(*(v37 - 8) + 48))(v20, 1, v37);
      sub_1000114EC(v20, &qword_10002AC00, &qword_100018C78);
      if (v38 == 1)
      {
        v39 = v64;
        sub_100012DDC(v36, v64);
        sub_100011484(v39, v8, &qword_10002AC10, &qword_100018C88);
        v40 = objc_allocWithZone(sub_100002E80(&qword_10002AC30, &qword_100018CA8));
        v41 = UIHostingController.init(rootView:)();
        v42 = objc_allocWithZone(UINavigationController);
        v43 = v41;
        v44 = [v42 initWithRootViewController:v43];
        v45 = [v44 sheetPresentationController];
        if (v45)
        {
          v46 = v45;
          v47 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0];
          [v46 _setLargeBackground:v47];
        }

        sub_10000A084(0, &qword_10002AC38, UIBarButtonItem_ptr);
        sub_10000A084(0, &qword_10002AC40, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v65.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v65.is_nil = 0;
        isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v65, v67).super.super.isa;
        v49 = [v43 navigationItem];

        [v49 setRightBarButtonItem:isa];
        [v34 setRootViewController:v44];

        v50 = &qword_10002AC10;
        v51 = &qword_100018C88;
        v52 = v39;
      }

      else
      {
        sub_100012708(v36, v16);
        sub_100011484(v16, v14, &qword_10002AC18, &qword_100018C90);
        v53 = objc_allocWithZone(sub_100002E80(&qword_10002AC48, &unk_100018CB0));
        v54 = UIHostingController.init(rootView:)();
        v55 = objc_allocWithZone(UINavigationController);
        v56 = v54;
        v57 = [v55 initWithRootViewController:v56];
        v58 = [v57 sheetPresentationController];
        if (v58)
        {
          v59 = v58;
          v60 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0];
          [v59 _setLargeBackground:v60];
        }

        sub_10000A084(0, &qword_10002AC38, UIBarButtonItem_ptr);
        sub_10000A084(0, &qword_10002AC40, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v66.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v66.is_nil = 0;
        v61 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v66, v68).super.super.isa;
        v62 = [v56 navigationItem];

        [v62 setRightBarButtonItem:v61];
        [v34 setRootViewController:v57];

        v50 = &qword_10002AC18;
        v51 = &qword_100018C90;
        v52 = v16;
      }

      sub_1000114EC(v52, v50, v51);
      [v34 makeKeyAndVisible];
    }
  }
}

uint64_t sub_1000160F0(uint64_t a1)
{
  v2 = sub_100002E80(&qword_10002AC20, &qword_100018C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}