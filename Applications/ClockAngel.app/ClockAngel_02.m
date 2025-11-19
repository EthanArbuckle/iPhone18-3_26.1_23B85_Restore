void *sub_1000403E4()
{
  v1 = v0;
  v2 = sub_10004573C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 _backlightLuminance];

  v41 = 0;
  v42[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v6 = [v1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x80000001000D8C00;
  v11._countAndFlagsBits = 0xD000000000000039;
  String.append(_:)(v11);
  if (v5 == 1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = objc_opt_self();
  v15._countAndFlagsBits = v12;
  v15._object = v13;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v14 logInfo:v16];

  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator];
  v36 = type metadata accessor for TimerCoordinator();
  v37 = &off_100102388;
  *&v35 = v17;
  if (v5 == 1)
  {
    v18 = objc_opt_self();

    v19 = [v18 mtOrange];
    Color.init(uiColor:)();
    v20 = Color.opacity(_:)();

    v21 = [v18 mtOrange];
    Color.init(uiColor:)();
    v22 = Color.opacity(_:)();

    static Color.white.getter();
    v23 = Color.opacity(_:)();

    static Color.white.getter();
    v24 = Color.opacity(_:)();

    v39 = &type metadata for LowLuminanceSessionUiConfig;
    v40 = &off_100103578;
  }

  else
  {
    type metadata accessor for CGColor(0);

    _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
    v20 = Color.init(_:)();
    v26 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v22 = Color.opacity(_:)();

    v23 = static Color.white.getter();
    v27 = [objc_opt_self() systemExtraLightGrayColor];
    Color.init(uiColor:)();
    v24 = Color.opacity(_:)();

    v39 = &type metadata for TimerLockScreenSessionUiConfig;
    v40 = &off_100103508;
  }

  v28 = swift_allocObject();
  v28[2] = v20;
  v28[3] = v22;
  v28[4] = v23;
  v28[5] = v24;
  *&v38 = v28;
  v43[5] = 0x4028000000000000;
  v41 = v3;
  sub_10004E5BC(&v35, v42);
  sub_10004E5BC(&v38, v43);
  v29 = objc_allocWithZone(sub_1000032D4(&qword_100115DC8, &qword_1000D3238));
  *&v29[*((swift_isaMask & *v29) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E764(&v41, &v35);
  v30 = v3;
  v25 = UIHostingController.init(rootView:)();
  sub_10004E7C0(&v41);
  *(v25 + *((swift_isaMask & *v25) + qword_10011F398 + 16) + 8) = &off_100100FD8;
  swift_unknownObjectWeakAssign();
  v31 = v25;
  result = [v31 view];
  if (result)
  {
    v33 = result;
    v34 = [objc_opt_self() clearColor];
    [v33 setBackgroundColor:v34];

    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004090C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10004D5F0(a1);
  (*(*(*(v2 + qword_10011F398) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10004098C()
{
  if (([objc_opt_self() mtSBUIIsSystemApertureEnabled] & 1) == 0)
  {
    v14[3] = &type metadata for ClockFeatureFlags;
    v14[4] = sub_10004DECC();
    LOBYTE(v14[0]) = 1;
    v0 = isFeatureEnabled(_:)();
    sub_100017D28(v14);
    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_10004573C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(SecureViewController) init];
    v4 = [v2 displayTitle];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [v2 timerIDString];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = objc_allocWithZone(type metadata accessor for TimerAlertView());
    v13 = sub_1000988AC(v5, v7, v9, v11, 0.0, 0.0, 0.0, 0.0);
    [v3 setView:v13];

    return v3;
  }

  return result;
}

uint64_t sub_100040B04()
{
  v1 = v0;
  v2 = type metadata accessor for AlarmAlertPlatter(0);
  v3 = *(*(v2 - 1) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28[-1] - v7;
  v9 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v28[-1] - v11);
  v13 = type metadata accessor for OpaqueAlarm();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() mtSBUIIsSystemApertureEnabled] & 1) != 0 || (v28[3] = &type metadata for ClockFeatureFlags, v28[4] = sub_10004DECC(), LOBYTE(v28[0]) = 1, v18 = isFeatureEnabled(_:)(), sub_100017D28(v28), (v18))
  {
    sub_100045D6C(v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10002D02C(v12, &qword_100114D70, &unk_1000D20E0);
    }

    else
    {
      sub_10004DF2C(v12, v17);
      if (sub_100088B60())
      {
        sub_10004E69C(v17, v8, type metadata accessor for OpaqueAlarm);
        v19 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene);
        v20 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination);
        KeyPath = swift_getKeyPath();
        *&v8[v2[5]] = v19;
        v8[v2[6]] = v20;
        v22 = &v8[v2[7]];
        *v22 = KeyPath;
        v22[8] = 0;
        v23 = objc_allocWithZone(sub_1000032D4(&qword_100115E78, &unk_1000D3370));
        *&v23[*((swift_isaMask & *v23) + qword_10011F398 + 16) + 8] = 0;
        swift_unknownObjectWeakInit();
        sub_10004E69C(v8, v6, type metadata accessor for AlarmAlertPlatter);
        v24 = v19;
        v25 = UIHostingController.init(rootView:)();
        sub_10004E704(v8, type metadata accessor for AlarmAlertPlatter);
        sub_10004E704(v17, type metadata accessor for OpaqueAlarm);
        return v25;
      }

      sub_10004E704(v17, type metadata accessor for OpaqueAlarm);
    }
  }

  return 0;
}

uint64_t sub_100040EA8()
{
  v1 = v0;
  v2 = type metadata accessor for LinearTimerTimelineCountdown();
  v3 = *(*(v2 - 1) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v70 - v7;
  v9 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v70 - v11);
  v13 = type metadata accessor for OpaqueAlarm();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] <= 2u)
  {
    if (v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] == 1)
    {

      goto LABEL_6;
    }
  }

  else
  {
    v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_8:
    v19 = objc_opt_self();
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v20 = [v0 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v72 = v21;
    v73 = v23;
    v24._object = 0x80000001000D8AE0;
    v24._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v24);
    v25 = String._bridgeToObjectiveC()();

    [v19 logInfo:v25];

    return 0;
  }

LABEL_6:
  sub_100045D6C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002D02C(v12, &qword_100114D70, &unk_1000D20E0);
    goto LABEL_8;
  }

  sub_10004DF2C(v12, v17);
  v27 = objc_opt_self();
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v28 = [v0 description];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 0xD000000000000038;
  v33._object = 0x80000001000D8C40;
  String.append(_:)(v33);
  v34 = String._bridgeToObjectiveC()();

  [v27 logInfo:v34];

  v70 = type metadata accessor for OpaqueAlarm;
  sub_10004E69C(v17, v8, type metadata accessor for OpaqueAlarm);
  v35 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator];
  v36 = &v8[v2[6]];
  *(v36 + 3) = type metadata accessor for TimerCoordinator();
  *(v36 + 4) = &off_100102388;
  *v36 = v35;
  *&v8[v2[7]] = swift_getKeyPath();
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  swift_storeEnumTagMultiPayload();
  v37 = &v8[v2[5]];
  v38 = objc_opt_self();

  v39 = [v38 mtOrange];
  v40 = Color.init(uiColor:)();
  v41 = [v38 mtOrange];
  Color.init(uiColor:)();
  v42 = Color.opacity(_:)();

  v43 = static Color.white.getter();
  static Color.white.getter();
  v44 = Color.opacity(_:)();

  *(v37 + 3) = &type metadata for StandardSessionUiConfig;
  *(v37 + 4) = &off_1001035E8;
  v45 = swift_allocObject();
  *v37 = v45;
  v45[2] = v40;
  v45[3] = v42;
  v45[4] = v43;
  v45[5] = v44;
  v46 = &v8[v2[8]];
  v71 = 0;
  State.init(wrappedValue:)();
  v47 = v73;
  *v46 = v72;
  *(v46 + 1) = v47;
  v48 = &v8[v2[9]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v49 = v73;
  *v48 = v72;
  *(v48 + 1) = v49;
  v50 = &v8[v2[10]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v51 = v73;
  *v50 = v72;
  *(v50 + 1) = v51;
  v52 = &v8[v2[11]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v53 = v73;
  *v52 = v72;
  *(v52 + 1) = v53;
  v54 = &v8[v2[12]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v55 = v73;
  *v54 = v72;
  *(v54 + 1) = v55;
  v56 = &v8[v2[13]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v57 = v73;
  *v56 = v72;
  *(v56 + 1) = v57;
  v58 = &v8[v2[14]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v59 = v73;
  *v58 = v72;
  *(v58 + 1) = v59;
  v60 = &v8[v2[15]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v61 = v73;
  *v60 = v72;
  *(v60 + 1) = v61;
  v62 = &v8[v2[16]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v63 = v73;
  *v62 = v72;
  *(v62 + 1) = v63;
  v64 = &v8[v2[17]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v65 = v73;
  *v64 = v72;
  *(v64 + 1) = v65;
  v66 = &v8[v2[18]];
  LOBYTE(v71) = 0;
  State.init(wrappedValue:)();
  v67 = v73;
  *v66 = v72;
  *(v66 + 1) = v67;
  v68 = objc_allocWithZone(sub_1000032D4(&qword_100115E70, &qword_1000D3338));
  *&v68[*((swift_isaMask & *v68) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v8, v6, type metadata accessor for LinearTimerTimelineCountdown);
  v69 = UIHostingController.init(rootView:)();
  sub_10004E704(v17, v70);
  sub_10004E704(v8, type metadata accessor for LinearTimerTimelineCountdown);
  return v69;
}

void *sub_100041708()
{
  v1 = v0;
  v88 = type metadata accessor for CountdownPlatter(0);
  v2 = *(*(v88 - 8) + 64);
  v3 = __chkstk_darwin(v88);
  v90 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = &v78 - v5;
  v6 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v78 - v8;
  v10 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v92 = &v78 - v15;
  v16 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v78 - v18;
  v20 = type metadata accessor for AlarmPresentationState();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v91 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v78 - v25;
  sub_100045ADC(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v27 = &unk_100115DA0;
    v28 = &unk_1000D3220;
    v29 = v19;
LABEL_5:
    sub_10002D02C(v29, v27, v28);
    v31 = objc_opt_self();
    *&v93 = 0;
    *(&v93 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v32 = [v1 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *&v93 = v33;
    *(&v93 + 1) = v35;
    v36._object = 0x80000001000D8A20;
    v36._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v36);
    v37 = String._bridgeToObjectiveC()();

    [v31 logInfo:v37];

    return 0;
  }

  v85 = *(v21 + 32);
  v86 = v21 + 32;
  v85(v26, v19, v20);
  v30 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v30, v9, &qword_100115E38, &qword_1000D3280);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v21 + 8))(v26, v20);
    v27 = &qword_100115E38;
    v28 = &qword_1000D3280;
    v29 = v9;
    goto LABEL_5;
  }

  v81 = *(v11 + 32);
  v82 = v11 + 32;
  v81(v92, v9, v10);
  v39 = [objc_opt_self() currentTraitCollection];
  v40 = [v39 _backlightLuminance];
  v80 = v40;

  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v41 = [v1 description];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v10;
  v45 = v44;

  v46._countAndFlagsBits = v42;
  v46._object = v45;
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0xD000000000000039;
  v47._object = 0x80000001000D8C00;
  String.append(_:)(v47);
  if (v40 == 1)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v40 == 1)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  v50 = objc_opt_self();
  v51._countAndFlagsBits = v48;
  v51._object = v49;
  String.append(_:)(v51);

  v52 = String._bridgeToObjectiveC()();

  [v50 logInfo:v52];

  v83 = v11;
  v84 = v43;
  v53 = *(v11 + 16);
  v54 = v87;
  v53(v87, v92, v43);
  (*(v21 + 16))(v91, v26, v20);
  v78 = v26;
  if (v80 == 1)
  {
    v55 = objc_opt_self();
    v56 = [v55 mtOrange];
    Color.init(uiColor:)();
    v58 = Color.opacity(_:)();

    v57 = [v55 mtOrange];
    Color.init(uiColor:)();
    v80 = Color.opacity(_:)();

    static Color.white.getter();
    v79 = Color.opacity(_:)();

    static Color.white.getter();
    v61 = Color.opacity(_:)();
    v62 = &off_100103578;
    v63 = &type metadata for LowLuminanceSessionUiConfig;
  }

  else
  {
    type metadata accessor for CGColor(0);
    _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
    v58 = Color.init(_:)();
    v59 = [objc_opt_self() mtOrange];
    Color.init(uiColor:)();
    v80 = Color.opacity(_:)();

    v79 = static Color.white.getter();
    v60 = [objc_opt_self() systemExtraLightGrayColor];
    Color.init(uiColor:)();
    v61 = Color.opacity(_:)();
    v62 = &off_100103508;
    v63 = &type metadata for TimerLockScreenSessionUiConfig;
  }

  v94 = v63;
  v95 = v62;
  v64 = swift_allocObject();
  v65 = v80;
  v66 = v81;
  v64[2] = v58;
  v64[3] = v65;
  v64[4] = v79;
  v64[5] = v61;
  *&v93 = v64;
  v67 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination);
  v68 = v89;
  v69 = v84;
  v66(v89, v54, v84);
  v70 = v88;
  v85((v68 + *(v88 + 20)), v91, v20);
  sub_10004E5BC(&v93, v68 + v70[6]);
  *(v68 + v70[7]) = 0x4028000000000000;
  *(v68 + v70[8]) = v67;
  v71 = objc_allocWithZone(sub_1000032D4(&qword_100115E68, &qword_1000D3330));
  *&v71[*((swift_isaMask & *v71) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v68, v90, type metadata accessor for CountdownPlatter);
  v72 = UIHostingController.init(rootView:)();
  sub_10004E704(v68, type metadata accessor for CountdownPlatter);
  *(v72 + *((swift_isaMask & *v72) + qword_10011F398 + 16) + 8) = &off_100100FD8;
  swift_unknownObjectWeakAssign();
  v73 = v72;
  v74 = v72;
  result = [v74 view];
  v75 = v83;
  if (result)
  {
    v76 = result;
    v77 = [objc_opt_self() clearColor];
    [v76 setBackgroundColor:v77];

    (*(v75 + 8))(v92, v69);
    (*(v21 + 8))(v78, v20);
    return v73;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042110()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for MTAlarmCustomContent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v15, v5, &qword_100115E38, &qword_1000D3280);
  v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16))
  {
    sub_10002D02C(v5, &qword_100115E38, &qword_1000D3280);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_10002D02C(v9, &unk_100118100, &qword_1000D1250);
    return 0;
  }

  AlarmAttributes.metadata.getter();
  sub_10002D02C(v5, &qword_100115E38, &qword_1000D3280);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v14, v9, v10);
  v18 = MTAlarmCustomContent.type.getter();
  (*(v11 + 8))(v14, v10);
  v19 = objc_opt_self();
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v20 = [v1 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0xD000000000000034;
  v25._object = 0x80000001000D8B90;
  String.append(_:)(v25);
  v26 = String._bridgeToObjectiveC()();

  [v19 logInfo:v26];

  if (v18 == 1)
  {
    return sub_100040E7C();
  }

  if (v18)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v27 = [v1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0x776F6E6B6E55203ALL;
    v32._object = 0xEF2065707974206ELL;
    String.append(_:)(v32);
    v35 = v18;
    _print_unlocked<A, B>(_:_:)();
    v33._object = 0x80000001000D8BD0;
    v33._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v33);
    v34 = String._bridgeToObjectiveC()();

    [v19 logError:v34];

    return 0;
  }

  return sub_100045214();
}

uint64_t sub_1000425B0()
{
  v1 = v0;
  v74 = type metadata accessor for AlarmAlertFullScreenAmbient(0);
  v2 = *(*(v74 - 8) + 64);
  v3 = __chkstk_darwin(v74);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = &v69 - v6;
  v7 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v69 - v9;
  v11 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v11);
  v14 = &v69 - v13;
  v15 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v69 - v17;
  v19 = type metadata accessor for AlarmPresentationState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v22) = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  v75 = v5;
  if (v22 == 1)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {

      return sub_10004498C();
    }
  }

  sub_100045ADC(v18);
  v25 = v20;
  v26 = *(v20 + 48);
  v27 = v19;
  if (v26(v18, 1, v19) == 1)
  {
    v28 = &unk_100115DA0;
    v29 = &unk_1000D3220;
    v30 = v18;
LABEL_11:
    sub_10002D02C(v30, v28, v29);
    v35 = objc_opt_self();
    v78 = 0;
    v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    v36 = [v1 description];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40._countAndFlagsBits = v37;
    v40._object = v39;
    String.append(_:)(v40);

    v41._object = 0x80000001000D8B40;
    v41._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v41);
    v42 = String._bridgeToObjectiveC()();

    [v35 logInfo:v42];

    return 0;
  }

  v32 = v23;
  (*(v25 + 32))(v23, v18, v27);
  v33 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v33], v10, &qword_100115E38, &qword_1000D3280);
  v34 = v76;
  if ((*(v76 + 48))(v10, 1, v11) == 1)
  {
    (*(v25 + 8))(v23, v27);
    v28 = &qword_100115E38;
    v29 = &qword_1000D3280;
    v30 = v10;
    goto LABEL_11;
  }

  (*(v34 + 32))(v14, v10, v11);
  v43 = v73;
  (*(v25 + 16))(v73, v32, v27);
  v71 = v32;
  v72 = v14;
  v44 = v74;
  (*(v34 + 16))(v43 + *(v74 + 20), v14, v11);
  v70 = v11;
  v45 = v34;
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v46 = qword_10011F508;
  v47 = (v43 + v44[6]);
  v47[3] = type metadata accessor for AlarmAndTimerCoordinator();
  v47[4] = &off_100102378;
  *v47 = v46;
  *(v43 + v44[7]) = swift_getKeyPath();
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  swift_storeEnumTagMultiPayload();
  v48 = type metadata accessor for WeatherDataProvider();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  v69 = sub_10006ECE4();
  v51 = v44[8];
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v52 = AnyTransition.combined(with:)();

  *(v43 + v51) = v52;
  v53 = v43 + v44[9];
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v54 = v79;
  *v53 = v78;
  *(v53 + 8) = v54;
  v55 = v43 + v44[10];
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v56 = v79;
  *v55 = v78;
  *(v55 + 8) = v56;
  v57 = v43 + v44[11];
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v58 = v79;
  *v57 = v78;
  *(v57 + 8) = v58;
  v59 = v43 + v44[12];
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v60 = v79;
  *v59 = v78;
  *(v59 + 8) = v60;
  v61 = v43 + v44[13];
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v62 = v79;
  *v61 = v78;
  *(v61 + 8) = v62;
  v63 = v43 + v44[14];
  LOBYTE(v77) = 0;
  State.init(wrappedValue:)();
  v64 = v79;
  *v63 = v78;
  *(v63 + 8) = v64;
  v65 = (v43 + v44[15]);
  v77 = v69;
  State.init(wrappedValue:)();
  v66 = v79;
  *v65 = v78;
  v65[1] = v66;
  v67 = objc_allocWithZone(sub_1000032D4(&qword_100115E60, &qword_1000D3328));
  *&v67[*((swift_isaMask & *v67) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v43, v75, type metadata accessor for AlarmAlertFullScreenAmbient);
  v68 = UIHostingController.init(rootView:)();
  sub_10004E704(v43, type metadata accessor for AlarmAlertFullScreenAmbient);
  (*(v45 + 8))(v72, v70);
  (*(v25 + 8))(v71, v27);
  return v68;
}

uint64_t sub_100042EA8()
{
  v53 = type metadata accessor for AlarmAlertCoverSheet(0);
  v1 = *(*(v53 - 8) + 64);
  v2 = __chkstk_darwin(v53);
  v54 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v5 = &v50[-v4];
  v6 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v50[-v8];
  v10 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v55 = &v50[-v13];
  v14 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v50[-v16];
  v18 = type metadata accessor for AlarmPresentationState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100045ADC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v23 = &unk_100115DA0;
    v24 = &unk_1000D3220;
    v25 = v17;
LABEL_5:
    sub_10002D02C(v25, v23, v24);
    v27 = objc_opt_self();
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v28 = [v0 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v57 = v29;
    v58 = v31;
    v32._object = 0x80000001000D8A20;
    v32._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v32);
    v33 = String._bridgeToObjectiveC()();

    [v27 logInfo:v33];

    return 0;
  }

  (*(v19 + 32))(v22, v17, v18);
  v26 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v0 + v26, v9, &qword_100115E38, &qword_1000D3280);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v19 + 8))(v22, v18);
    v23 = &qword_100115E38;
    v24 = &qword_1000D3280;
    v25 = v9;
    goto LABEL_5;
  }

  v35 = v55;
  (*(v11 + 32))(v55, v9, v10);
  (*(v19 + 16))(v5, v22, v18);
  v36 = v53;
  (*(v11 + 16))(&v5[*(v53 + 20)], v35, v10);
  v52 = v22;
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v37 = qword_10011F508;
  v38 = v36;
  v39 = &v5[v36[6]];
  v39[3] = type metadata accessor for AlarmAndTimerCoordinator();
  v39[4] = &off_100102378;
  *v39 = v37;
  *&v5[v38[7]] = swift_getKeyPath();
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  swift_storeEnumTagMultiPayload();
  *&v5[v38[8]] = swift_getKeyPath();
  sub_1000032D4(&qword_100113780, &qword_1000D08D0);
  swift_storeEnumTagMultiPayload();

  v51 = static AccessibilitySettings.prefersActionSliderAlternative.getter();
  v40 = v38[9];
  static AnyTransition.move(edge:)();
  static AnyTransition.scale.getter();
  v41 = AnyTransition.combined(with:)();

  *&v5[v40] = v41;
  v42 = &v5[v38[10]];
  LOBYTE(v56) = 0;
  State.init(wrappedValue:)();
  v43 = v58;
  *v42 = v57;
  *(v42 + 1) = v43;
  v44 = &v5[v38[11]];
  v56 = 0;
  State.init(wrappedValue:)();
  v45 = v58;
  *v44 = v57;
  v44[1] = v45;
  v46 = &v5[v38[12]];
  LOBYTE(v56) = v51 & 1;
  State.init(wrappedValue:)();
  v47 = v58;
  *v46 = v57;
  *(v46 + 1) = v47;
  v48 = objc_allocWithZone(sub_1000032D4(&qword_100115E58, &qword_1000D3320));
  *&v48[*((swift_isaMask & *v48) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v5, v54, type metadata accessor for AlarmAlertCoverSheet);
  v49 = UIHostingController.init(rootView:)();
  sub_10004E704(v5, type metadata accessor for AlarmAlertCoverSheet);
  (*(v11 + 8))(v55, v10);
  (*(v19 + 8))(v52, v18);
  return v49;
}

char *sub_1000435A4()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v49 = &v49 - v12;
  v13 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v49 - v15);
  v17 = type metadata accessor for OpaqueAlarm();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045D6C(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10002D02C(v16, &qword_100114D70, &unk_1000D20E0);
    v22 = objc_opt_self();
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v23 = [v0 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v50 = v24;
    v51 = v26;
    v27._object = 0x80000001000D8AE0;
    v27._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    [v22 logError:v28];

    return 0;
  }

  else
  {
    sub_10004DF2C(v16, v21);
    v30 = objc_opt_self();
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v31 = [v0 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0xD000000000000039;
    v36._object = 0x80000001000D8B00;
    String.append(_:)(v36);
    v37 = String._bridgeToObjectiveC()();

    [v30 logInfo:v37];

    v38 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
    swift_beginAccess();
    sub_10002CFC4(v1 + v38, v8, &qword_100115E38, &qword_1000D3280);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10002D02C(v8, &qword_100115E38, &qword_1000D3280);
      v39 = sub_100088DE4();
      v41 = v40;
      v42 = objc_allocWithZone(type metadata accessor for TimerCompressedController());
      v43 = sub_10005C638(v39, v41);
    }

    else
    {
      v44 = v49;
      (*(v10 + 32))(v49, v8, v9);
      v45 = sub_100088DE4();
      v47 = v46;
      (*(v10 + 16))(v6, v44, v9);
      (*(v10 + 56))(v6, 0, 1, v9);
      v48 = objc_allocWithZone(type metadata accessor for TimerCompressedController());
      v43 = sub_10005C290(v45, v47, v6);
      (*(v10 + 8))(v44, v9);
    }

    sub_10004E704(v21, type metadata accessor for OpaqueAlarm);
    return v43;
  }
}

void *sub_100043AF4()
{
  v1 = v0;
  v2 = sub_10004539C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 _backlightLuminance];

  v43 = 0;
  v44[0] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v6 = [v1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._object = 0x80000001000D8AA0;
  v11._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v11);
  if (v5 == 1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v5 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = objc_opt_self();
  v15._countAndFlagsBits = v12;
  v15._object = v13;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v14 logInfo:v16];

  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator];
  v38 = type metadata accessor for AlarmCoordinator();
  v39 = &off_1001023C0;
  v18 = objc_opt_self();

  v19 = [v18 mtOrange];
  v20 = Color.init(uiColor:)();
  if (v5 == 1)
  {
    v21 = Color.opacity(_:)();

    v22 = [v18 mtOrange];
    Color.init(uiColor:)();
    v23 = Color.opacity(_:)();

    static Color.white.getter();
    v24 = Color.opacity(_:)();

    v25 = &off_100103578;
    v26 = &type metadata for LowLuminanceSessionUiConfig;
    v20 = v21;
  }

  else
  {
    v28 = [v18 mtOrange];
    Color.init(uiColor:)();
    v23 = Color.opacity(_:)();

    v25 = &off_1001035E8;
    v26 = &type metadata for StandardSessionUiConfig;
    v24 = static Color.white.getter();
  }

  static Color.white.getter();
  v29 = Color.opacity(_:)();

  v41 = v26;
  v42 = v25;
  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = v23;
  v30[4] = v24;
  v30[5] = v29;
  *&v40 = v30;
  v43 = v3;
  sub_10004E5BC(&v37, v44);
  sub_10004E5BC(&v40, &v45);
  v31 = objc_allocWithZone(sub_1000032D4(&qword_100115DC0, &qword_1000D3230));
  *&v31[*((swift_isaMask & *v31) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E5D4(&v43, &v37);
  v32 = v3;
  v27 = UIHostingController.init(rootView:)();
  sub_10004E630(&v43);
  *(v27 + *((swift_isaMask & *v27) + qword_10011F398 + 16) + 8) = &off_100100FD8;
  swift_unknownObjectWeakAssign();
  v33 = v27;
  result = [v33 view];
  if (result)
  {
    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_100043F98()
{
  v1 = v0;
  v77 = type metadata accessor for FullAmbientAlarmView(0);
  v2 = *(*(v77 - 8) + 64);
  v3 = __chkstk_darwin(v77);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v78 = &v75 - v6;
  v7 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v75 - v9;
  v11 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  __chkstk_darwin(v11);
  v14 = &v75 - v13;
  v15 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v75 - v17);
  v19 = type metadata accessor for OpaqueAlarm();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v79 = v5;
  v80 = &v75 - v25;
  if (v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] <= 2u)
  {
    if (v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] == 1)
    {

      goto LABEL_6;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
LABEL_8:
    v27 = objc_opt_self();
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v28 = [v1 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v81 = v29;
    v82 = v31;
    v32._countAndFlagsBits = 0xD00000000000001ALL;
    v32._object = 0x80000001000D8A20;
    String.append(_:)(v32);
    v33 = String._bridgeToObjectiveC()();

    [v27 logInfo:v33];

    return 0;
  }

LABEL_6:
  sub_100045D6C(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10002D02C(v18, &qword_100114D70, &unk_1000D20E0);
    goto LABEL_8;
  }

  v35 = v80;
  sub_10004DF2C(v18, v80);
  sub_10004E69C(v35, v24, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = *v24;
      v38 = [*v24 isSleepAlarm];
    }

    else
    {
      sub_10004E704(v24, type metadata accessor for OpaqueAlarm);
      v38 = 0;
    }
  }

  else
  {
    v39 = sub_1000032D4(&unk_100115E00, &qword_1000D1D10);
    v40 = v76;
    (*(v76 + 32))(v14, v24 + *(v39 + 48), v11);
    AlarmAttributes.metadata.getter();
    v41 = type metadata accessor for MTAlarmCustomContent();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v10, 1, v41) == 1)
    {
      (*(v40 + 8))(v14, v11);
      sub_10002D02C(v10, &unk_100118100, &qword_1000D1250);
      v38 = 0;
    }

    else
    {
      v38 = MTAlarmCustomContent.isSleepAlarm.getter();
      (*(v40 + 8))(v14, v11);
      (*(v42 + 8))(v10, v41);
    }

    v43 = type metadata accessor for AlarmPresentationState();
    (*(*(v43 - 8) + 8))(v24, v43);
  }

  v45 = v77;
  v44 = v78;
  v46 = objc_opt_self();
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v47 = [v1 description];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v81 = v48;
  v82 = v50;
  v51._countAndFlagsBits = 0xD00000000000001ELL;
  v51._object = 0x80000001000D8A40;
  String.append(_:)(v51);
  v52 = String._bridgeToObjectiveC()();

  [v46 logInfo:v52];

  if (sub_100088B60() & 1) != 0 && (v38)
  {
    if (qword_100113610 != -1)
    {
      swift_once();
    }

    v53 = sub_10005926C();
    if (v53)
    {
      v54 = v53;
      v55 = [v53 isAuthorizedForWidgetUpdates];

      if (v55)
      {
        v56 = objc_opt_self();
        v57 = String._bridgeToObjectiveC()();
        v58 = String._bridgeToObjectiveC()();
        v59 = [v56 newAssertionForBundleIdentifier:v57 withReason:v58];

        v60 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion];
        *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion] = v59;
      }
    }
  }

  v61 = v80;
  sub_10004E69C(v80, v44, type metadata accessor for OpaqueAlarm);
  v62 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator];
  v63 = (v44 + *(v45 + 20));
  v63[3] = type metadata accessor for AlarmCoordinator();
  v63[4] = &off_1001023C0;
  *v63 = v62;
  v64 = objc_opt_self();

  v65 = [v64 mtOrange];
  v66 = Color.init(uiColor:)();
  v67 = [v64 mtOrange];
  Color.init(uiColor:)();
  v68 = Color.opacity(_:)();

  v69 = static Color.white.getter();
  static Color.white.getter();
  v70 = Color.opacity(_:)();

  v71 = (v44 + *(v45 + 24));
  v71[3] = &type metadata for StandardSessionUiConfig;
  v71[4] = &off_1001035E8;
  v72 = swift_allocObject();
  *v71 = v72;
  v72[2] = v66;
  v72[3] = v68;
  v72[4] = v69;
  v72[5] = v70;
  v73 = objc_allocWithZone(sub_1000032D4(&qword_100115E50, &qword_1000D32A8));
  *&v73[*((swift_isaMask & *v73) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10004E69C(v44, v79, type metadata accessor for FullAmbientAlarmView);
  v74 = UIHostingController.init(rootView:)();
  sub_10004E704(v44, type metadata accessor for FullAmbientAlarmView);
  sub_10004E704(v61, type metadata accessor for OpaqueAlarm);
  return v74;
}

uint64_t sub_10004498C()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v63 = &v62 - v4;
  v5 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v62 - v10;
  v12 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v62 - v14;
  v16 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v62 - v18);
  v20 = type metadata accessor for OpaqueAlarm();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v23) = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  v64 = v9;
  if (v23)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
LABEL_6:
      v26 = objc_opt_self();
      v65 = 0;
      v66 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v27 = [v1 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD000000000000034;
      v32._object = 0x80000001000D8970;
      String.append(_:)(v32);
      v33 = String._bridgeToObjectiveC()();

      [v26 logInfo:v33];

      return 0;
    }
  }

  else
  {
  }

  sub_100045D6C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10002D02C(v19, &qword_100114D70, &unk_1000D20E0);
    goto LABEL_6;
  }

  sub_10004DF2C(v19, v24);
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v35 = [v1 description];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0xD000000000000043;
  v40._object = 0x80000001000D89B0;
  String.append(_:)(v40);
  v41 = sub_100088B60();
  if (v41)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = objc_opt_self();
  v45._countAndFlagsBits = v42;
  v45._object = v43;
  String.append(_:)(v45);

  v46._object = 0x80000001000D8A00;
  v46._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v46);
  sub_100089408(v15);
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48 = String._bridgeToObjectiveC()();

  [v44 logInfo:v48];

  v49 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v49], v11, &qword_100115E38, &qword_1000D3280);
  v50 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v51 = *(*(v50 - 8) + 48);
  if (v51(v11, 1, v50))
  {
    goto LABEL_16;
  }

  v52 = v63;
  AlarmAttributes.metadata.getter();
  v53 = type metadata accessor for MTAlarmCustomContent();
  if ((*(*(v53 - 8) + 48))(v52, 1, v53))
  {
    sub_10002D02C(v52, &unk_100118100, &qword_1000D1250);
LABEL_16:
    sub_10002D02C(v11, &qword_100115E38, &qword_1000D3280);
    goto LABEL_17;
  }

  MTAlarmCustomContent.type.getter();
  sub_10002D02C(v52, &unk_100118100, &qword_1000D1250);
  sub_10002D02C(v11, &qword_100115E38, &qword_1000D3280);
  v61 = AlarmType.rawValue.getter();
  if (v61 == AlarmType.rawValue.getter())
  {
    v54 = 0xE500000000000000;
    v55 = 0x72656D6974;
    goto LABEL_18;
  }

LABEL_17:
  v54 = 0xEA00000000006C6CLL;
  v55 = 0x69662E6D72616C61;
LABEL_18:
  v56 = v64;
  sub_10002CFC4(&v1[v49], v64, &qword_100115E38, &qword_1000D3280);
  if (v51(v56, 1, v50))
  {
    sub_10002D02C(v56, &qword_100115E38, &qword_1000D3280);
    v57 = [objc_opt_self() mtOrange];
    v58 = Color.init(uiColor:)();
  }

  else
  {
    v58 = AlarmAttributes.tintColor.getter();
    sub_10002D02C(v56, &qword_100115E38, &qword_1000D3280);
  }

  v59 = objc_allocWithZone(sub_1000032D4(&qword_100115E48, &qword_1000D32A0));
  v65 = v55;
  v66 = v54;
  v67 = 0x4038000000000000;
  v68 = v58;
  *&v59[*((swift_isaMask & *v59) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v60 = UIHostingController.init(rootView:)();
  sub_10004E704(v24, type metadata accessor for OpaqueAlarm);
  return v60;
}

uint64_t sub_100045240(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (*(v2 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination))
  {
    if (*(v2 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination) == 1)
    {

      return a1();
    }

    else
    {
      v4 = objc_opt_self();
      _StringGuts.grow(_:)(53);
      v5 = [v2 description];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      String.append(_:)(v9);

      v10._object = 0x80000001000D8930;
      v10._countAndFlagsBits = 0xD000000000000033;
      String.append(_:)(v10);
      v11 = String._bridgeToObjectiveC()();

      [v4 logInfo:v11];

      return 0;
    }
  }

  else
  {

    return a2();
  }
}

uint64_t sub_10004539C()
{
  v1 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v29 - v3;
  v5 = sub_1000032D4(&qword_100115E20, &qword_1000D3270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v29 - v7;
  v9 = type metadata accessor for AlarmActivityAttributes();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
  swift_beginAccess();
  sub_10002CFC4(v0 + v14, v8, &qword_100115E20, &qword_1000D3270);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002D02C(v8, &qword_100115E20, &qword_1000D3270);
  }

  else
  {
    v15 = v0;
    (*(v10 + 32))(v13, v8, v9);
    if (qword_100113600 != -1)
    {
      swift_once();
    }

    v16 = AlarmActivityAttributes.context.getter();
    v17 = AlarmContext.alarmId.getter();
    v19 = v18;

    v29[1] = v17;
    v29[2] = v19;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v30);
    if (v31)
    {
      v20 = v31;
      (*(v10 + 8))(v13, v9);
      return v20;
    }

    v22 = *(v15 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator);

    v23 = AlarmActivityAttributes.context.getter();
    v24 = AlarmContext.alarmId.getter();
    v26 = v25;

    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v22;
    v28[5] = v24;
    v28[6] = v26;

    sub_100075B64(0, 0, v4, &unk_1000D3290, v28);

    (*(v10 + 8))(v13, v9);
  }

  return 0;
}

uint64_t sub_10004573C()
{
  v1 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v29 - v3;
  v5 = sub_1000032D4(&qword_100115E28, &qword_1000D3278);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v29 - v7;
  v9 = type metadata accessor for TimerActivityAttributes();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
  swift_beginAccess();
  sub_10002CFC4(v0 + v14, v8, &qword_100115E28, &qword_1000D3278);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002D02C(v8, &qword_100115E28, &qword_1000D3278);
  }

  else
  {
    v15 = v0;
    (*(v10 + 32))(v13, v8, v9);
    if (qword_1001135F8 != -1)
    {
      swift_once();
    }

    v16 = TimerActivityAttributes.context.getter();
    v17 = dispatch thunk of TimerContext.timerId.getter();
    v19 = v18;

    v29[1] = v17;
    v29[2] = v19;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v30);
    if (v31)
    {
      v20 = v31;
      (*(v10 + 8))(v13, v9);
      return v20;
    }

    v22 = *(v15 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator);

    v23 = TimerActivityAttributes.context.getter();
    v24 = dispatch thunk of TimerContext.timerId.getter();
    v26 = v25;

    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v22;
    v28[5] = v24;
    v28[6] = v26;

    sub_100075B64(0, 0, v4, &unk_1000D3288, v28);

    (*(v10 + 8))(v13, v9);
  }

  return 0;
}

uint64_t sub_100045ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v19 - v10;
  v12 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  swift_beginAccess();
  sub_10002CFC4(v1 + v12, v11, &unk_100115DA0, &unk_1000D3220);
  v13 = type metadata accessor for AlarmPresentationState();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13))
  {
    sub_10002D02C(v11, &unk_100115DA0, &unk_1000D3220);
    return (*(v14 + 56))(a1, 1, 1, v13);
  }

  else
  {
    AlarmPresentationState.alarmID.getter();
    sub_10002D02C(v11, &unk_100115DA0, &unk_1000D3220);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    if (qword_100113608 != -1)
    {
      swift_once();
    }

    v19[0] = v16;
    v19[1] = v18;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    return sub_10004E3D4(v20);
  }
}

uint64_t sub_100045D6C@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for AlarmPresentationState();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v18, v12, &qword_100115E38, &qword_1000D3280);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v19 = &qword_100115E38;
    v20 = &qword_1000D3280;
    v21 = v12;
  }

  else
  {
    v22 = *(v14 + 32);
    v22(v17, v12, v13);
    sub_100045ADC(v5);
    v23 = v36;
    if ((*(v36 + 48))(v5, 1, v6) != 1)
    {
      v29 = *(v23 + 32);
      v30 = v35;
      v29(v35, v5, v6);
      v31 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
      v32 = v37;
      v29(v37, v30, v6);
      v22(v32 + v31, v17, v13);
      v26 = type metadata accessor for OpaqueAlarm();
      swift_storeEnumTagMultiPayload();
      v27 = *(*(v26 - 8) + 56);
      v28 = v32;
      return v27(v28, 0, 1, v26);
    }

    (*(v14 + 8))(v17, v13);
    v19 = &unk_100115DA0;
    v20 = &unk_1000D3220;
    v21 = v5;
  }

  sub_10002D02C(v21, v19, v20);
  v24 = sub_10004539C();
  if (v24 || (v24 = sub_10004573C()) != 0)
  {
    v25 = v37;
    *v37 = v24;
    v26 = type metadata accessor for OpaqueAlarm();
    swift_storeEnumTagMultiPayload();
    v27 = *(*(v26 - 8) + 56);
    v28 = v25;
    return v27(v28, 0, 1, v26);
  }

  v34 = type metadata accessor for OpaqueAlarm();
  return (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
}

uint64_t sub_1000461B4()
{
  v1[14] = v0;
  v2 = *(*(sub_1000032D4(&qword_100115E28, &qword_1000D3278) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v3 = *(*(sub_1000032D4(&qword_100115E20, &qword_1000D3270) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v4 = *(*(sub_1000032D4(&unk_100118100, &qword_1000D1250) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[18] = v5;
  v6 = *(v5 - 8);
  v1[19] = v6;
  v7 = *(v6 + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = *(*(sub_1000032D4(&unk_100115DA0, &unk_1000D3220) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = type metadata accessor for AlarmPresentationState();
  v1[22] = v9;
  v10 = *(v9 - 8);
  v1[23] = v10;
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();
  v12 = *(*(sub_1000032D4(&qword_100115E38, &qword_1000D3280) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v1[26] = v13;
  v14 = *(v13 - 8);
  v1[27] = v14;
  v15 = *(v14 + 64) + 15;
  v1[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[29] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[30] = v17;
  v1[31] = v16;

  return _swift_task_switch(sub_100046484, v17, v16);
}

uint64_t sub_100046484()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  v5 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  swift_beginAccess();
  sub_10002CFC4(v4 + v5, v3, &qword_100115E38, &qword_1000D3280);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[25];
    v7 = &qword_100115E38;
    v8 = &qword_1000D3280;
    goto LABEL_5;
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[21];
  v12 = v0[14];
  (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  swift_beginAccess();
  sub_10002CFC4(v12 + v13, v11, &unk_100115DA0, &unk_1000D3220);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v14 = v0[21];
    (*(v0[27] + 8))(v0[28], v0[26]);
    v7 = &unk_100115DA0;
    v8 = &unk_1000D3220;
    v6 = v14;
LABEL_5:
    sub_10002D02C(v6, v7, v8);
    v15 = v0[16];
    v16 = v0[14];
    v17 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
    swift_beginAccess();
    sub_10002CFC4(v16 + v17, v15, &qword_100115E20, &qword_1000D3270);
    v18 = type metadata accessor for AlarmActivityAttributes();
    v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
    v20 = v0[16];
    if (v19)
    {
      v22 = v0[14];
      v21 = v0[15];
      sub_10002D02C(v0[16], &qword_100115E20, &qword_1000D3270);
      v23 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
      swift_beginAccess();
      sub_10002CFC4(v22 + v23, v21, &qword_100115E28, &qword_1000D3278);
      v24 = type metadata accessor for TimerActivityAttributes();
      if ((*(*(v24 - 8) + 48))(v21, 1, v24))
      {
        v25 = v0[29];
        v26 = v0[15];

        sub_10002D02C(v26, &qword_100115E28, &qword_1000D3278);
        v27 = v0[28];
        v28 = v0[24];
        v29 = v0[25];
        v31 = v0[20];
        v30 = v0[21];
        v33 = v0[16];
        v32 = v0[17];
        v34 = v0[15];

        v35 = v0[1];

        return v35(0);
      }

      else
      {
        v54 = v0[14];
        v53 = v0[15];
        v55 = TimerActivityAttributes.context.getter();
        sub_10002D02C(v53, &qword_100115E28, &qword_1000D3278);
        v56 = dispatch thunk of TimerContext.timerId.getter();
        v58 = v57;

        v0[38] = v58;
        v0[39] = *(v54 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator);

        v59 = swift_task_alloc();
        v0[40] = v59;
        *v59 = v0;
        v59[1] = sub_100047030;

        return sub_1000786AC(v56, v58);
      }
    }

    else
    {
      v37 = v0[14];
      v38 = AlarmActivityAttributes.context.getter();
      sub_10002D02C(v20, &qword_100115E20, &qword_1000D3270);
      v39 = AlarmContext.alarmId.getter();
      v41 = v40;

      v0[34] = v41;
      v0[35] = *(v37 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator);

      v42 = swift_task_alloc();
      v0[36] = v42;
      *v42 = v0;
      v42[1] = sub_100046DD8;

      return sub_1000765F0(v39, v41);
    }
  }

  (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v43 = v0[28];
  v44 = v0[26];
  v45 = v0[24];
  v46 = v0[20];
  v47 = v0[17];
  AlarmPresentationState.alarmID.getter();
  AlarmAttributes.metadata.getter();
  v48 = type metadata accessor for MTAlarmCustomContent();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v47, 1, v48);
  v51 = v0[17];
  if (v50 == 1)
  {
    sub_10002D02C(v0[17], &unk_100118100, &qword_1000D1250);
    v52 = 0;
  }

  else
  {
    v52 = MTAlarmCustomContent.type.getter();
    (*(v49 + 8))(v51, v48);
  }

  v60 = v0[24];
  v61 = AlarmPresentationState.bundleID.getter();
  v63 = v62;
  v0[32] = v62;
  v64 = swift_task_alloc();
  v0[33] = v64;
  *v64 = v0;
  v64[1] = sub_100046B24;
  v65 = v0[20];

  return sub_10007C7B0(v65, v52, v50 == 1, v61, v63);
}

uint64_t sub_100046B24(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 336) = a1;

  (*(v6 + 8))(v5, v7);
  v8 = *(v2 + 248);
  v9 = *(v2 + 240);

  return _swift_task_switch(sub_100046CCC, v9, v8);
}

uint64_t sub_100046CCC()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 336);
  v9 = *(v0 + 224);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v16 = *(v0 + 120);

  v17 = *(v0 + 8);

  return v17(v8);
}

uint64_t sub_100046DD8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 296) = a1;

  v6 = *(v2 + 248);
  v7 = *(v2 + 240);

  return _swift_task_switch(sub_100046F40, v7, v6);
}

uint64_t sub_100046F40()
{
  v1 = v0[37];
  v2 = v0[29];

  if (v1)
  {
    v3 = v0[37];
    v1 = [v3 isFiring];
  }

  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_100047030(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 328) = a1;

  v6 = *(v2 + 248);
  v7 = *(v2 + 240);

  return _swift_task_switch(sub_100047198, v7, v6);
}

uint64_t sub_100047198()
{
  v1 = v0[41];
  v2 = v0[29];

  if (v1)
  {
    v3 = v0[41];
    v1 = [v3 isFiring];
  }

  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];

  v12 = v0[1];

  return v12(v1);
}

void sub_100047288(void *a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(41);
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._object = 0x80000001000D9160;
  v7._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:{v8, v4, v6}];

  sub_100047388();
}

void sub_100047388()
{
  v1 = v0;
  v34 = sub_10003F3D8();
  if (!v34)
  {
    v15 = objc_opt_self();
    _StringGuts.grow(_:)(67);
    v16 = [v0 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 0xD000000000000022;
    v21._object = 0x80000001000D8860;
    String.append(_:)(v21);
    _print_unlocked<A, B>(_:_:)();
    v22._object = 0x80000001000D8890;
    v22._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    [v15 logInfo:v23];

    return;
  }

  v2 = objc_opt_self();
  _StringGuts.grow(_:)(52);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000032;
  v8._object = 0x80000001000D88B0;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  [v2 logInfo:v9];

  v10 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window;
  v11 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  if (v11)
  {
    goto LABEL_3;
  }

  v24 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
  if (!v24)
  {
    _StringGuts.grow(_:)(54);
    v27 = [v1 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0xD000000000000034;
    v32._object = 0x80000001000D88F0;
    String.append(_:)(v32);
    v33 = String._bridgeToObjectiveC()();

    [v2 logError:v33];

    v14 = v33;
    goto LABEL_6;
  }

  v25 = [objc_allocWithZone(SecureWindow) initWithWindowScene:v24];
  v26 = *&v1[v10];
  *&v1[v10] = v25;

  v11 = *&v1[v10];
  if (v11)
  {
LABEL_3:
    [v11 setRootViewController:v34];
    v12 = *&v1[v10];
    if (v12)
    {
      v13 = v12;
      [v13 makeKeyAndVisible];
    }
  }

  v14 = v34;
LABEL_6:
}

id sub_100047764()
{
  v1 = v0;
  v74 = type metadata accessor for UUID();
  v73 = *(v74 - 8);
  v2 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v79 = &v71 - v6;
  v82 = type metadata accessor for AlarmPresentationState();
  v80 = *(v82 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v82);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100115E20, &qword_1000D3270);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = &v71 - v11;
  v12 = type metadata accessor for AlarmActivityAttributes();
  v77 = *(v12 - 8);
  v78 = v12;
  v13 = *(v77 + 64);
  __chkstk_darwin(v12);
  v76 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000032D4(&qword_100115E28, &qword_1000D3278);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v71 - v17;
  v19 = type metadata accessor for TimerActivityAttributes();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_opt_self();
  v85 = 0;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v25 = [v0 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v85 = v26;
  v86 = v28;
  v29._object = 0x80000001000D8810;
  v29._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v29);
  v30 = String._bridgeToObjectiveC()();

  v71 = v24;
  [v24 logInfo:v30];

  v31 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider] = 0;

  v32 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider] = 0;

  v33 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider] = 0;

  v34 = *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider];
  *&v0[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider] = 0;

  v35 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v35], v18, &qword_100115E28, &qword_1000D3278);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10002D02C(v18, &qword_100115E28, &qword_1000D3278);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    if (qword_1001135F8 != -1)
    {
      swift_once();
    }

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate);
    v36 = TimerActivityAttributes.context.getter();
    v37 = dispatch thunk of TimerContext.timerId.getter();
    v39 = v38;

    v87 = v37;
    v88 = v39;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(&v85);
    (*(v20 + 8))(v23, v19);
  }

  v40 = v75;
  v41 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
  swift_beginAccess();
  sub_10002CFC4(&v1[v41], v40, &qword_100115E20, &qword_1000D3270);
  v42 = v77;
  v43 = v78;
  v44 = (*(v77 + 48))(v40, 1, v78);
  v46 = v81;
  v45 = v82;
  v47 = v80;
  v48 = v76;
  if (v44 == 1)
  {
    sub_10002D02C(v40, &qword_100115E20, &qword_1000D3270);
  }

  else
  {
    (*(v42 + 32))(v76, v40, v43);
    v49 = v42;
    if (qword_100113600 != -1)
    {
      swift_once();
    }

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate);
    v50 = AlarmActivityAttributes.context.getter();
    v51 = v48;
    v52 = AlarmContext.alarmId.getter();
    v54 = v53;

    v83 = v52;
    v84 = v54;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(&v85);
    (*(v49 + 8))(v51, v43);
    v46 = v81;
    v45 = v82;
  }

  v55 = v79;
  sub_100045ADC(v79);
  if ((*(v47 + 48))(v55, 1, v45) == 1)
  {
    sub_10002D02C(v55, &unk_100115DA0, &unk_1000D3220);
  }

  else
  {
    (*(v47 + 32))(v46, v55, v45);
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    v56 = [v1 description];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v85 = v57;
    v86 = v59;
    v60._countAndFlagsBits = 0xD00000000000002FLL;
    v60._object = 0x80000001000D8830;
    String.append(_:)(v60);
    v61 = String._bridgeToObjectiveC()();

    [v71 logInfo:v61];

    if (qword_100113608 != -1)
    {
      swift_once();
    }

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate);
    v62 = v72;
    AlarmPresentationState.alarmID.getter();
    v63 = UUID.uuidString.getter();
    v65 = v64;
    (*(v73 + 8))(v62, v74);
    v83 = v63;
    v84 = v65;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(&v85);
    (*(v47 + 8))(v46, v45);
  }

  v66 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
  if (v66)
  {
    v67 = [v66 _FBSScene];
    [v67 removeObserver:v1];
  }

  v68 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window;
  result = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  if (result)
  {
    v70 = [result rootViewController];
    [v70 removeFromParentViewController];

    result = *&v1[v68];
    if (result)
    {
      return [result setRootViewController:0];
    }
  }

  return result;
}

uint64_t sub_100048160(char a1)
{
  v3 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v24 - v9);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_100045D6C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10002D02C(v10, &qword_100114D70, &unk_1000D20E0);
  }

  sub_10004DF2C(v10, v17);
  static TaskPriority.userInitiated.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  sub_10004E69C(v17, v15, type metadata accessor for OpaqueAlarm);
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = v20 + v13;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v1;
  sub_10004DF2C(v15, v22 + v20);
  *(v22 + v21) = a1 & 1;
  v23 = v1;
  sub_100039A94(0, 0, v6, &unk_1000D3258, v22);

  sub_10002D02C(v6, &unk_100115E10, &qword_1000D27F0);
  return sub_10004E704(v17, type metadata accessor for OpaqueAlarm);
}

uint64_t sub_100048430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 48) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1000484C8;

  return sub_1000461B4();
}

uint64_t sub_1000484C8(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 49) = a1;

  return _swift_task_switch(sub_1000485C8, 0, 0);
}

uint64_t sub_1000485C8()
{
  if (*(v0 + 49) == 1)
  {
    type metadata accessor for MainActor();
    *(v0 + 40) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100048698, v2, v1);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100048698()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_100048714(v3, v2);
  v5 = *(v0 + 8);

  return v5();
}

void sub_100048714(uint64_t a1, int a2)
{
  v114 = a1;
  LODWORD(v110) = a2;
  v113 = type metadata accessor for UUID();
  v108 = *(v113 - 8);
  v2 = *(v108 + 64);
  __chkstk_darwin(v113);
  v109 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v107 = &v98 - v6;
  v7 = type metadata accessor for AlarmPresentation();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v98 - v17;
  __chkstk_darwin(v16);
  v20 = &v98 - v19;
  v21 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v112 = *(v21 - 8);
  v22 = *(v112 + 64);
  __chkstk_darwin(v21);
  v24 = &v98 - v23;
  v25 = type metadata accessor for AlarmPresentationState();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  __chkstk_darwin(v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OpaqueAlarm();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004E69C(v114, v32, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v99 = v10;
    v100 = v18;
    v103 = v15;
    v43 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v44 = *(v111 + 32);
    v114 = v28;
    v102 = v25;
    v44(v28, v32, v25);
    (*(v112 + 32))(v24, v32 + v43, v21);
    AlarmAttributes.metadata.getter();
    v45 = type metadata accessor for MTAlarmCustomContent();
    v46 = *(v45 - 8);
    v104 = *(v46 + 48);
    v47 = v104(v20, 1, v45);
    v48 = v24;
    v101 = v46;
    if (v47 == 1)
    {
      sub_10002D02C(v20, &unk_100118100, &qword_1000D1250);
    }

    else
    {
      v60 = MTAlarmCustomContent.isSleepAlarm.getter();
      (*(v46 + 8))(v20, v45);
      if (v60 != 2 && (v60 & 1) != 0)
      {
        v61 = *(v115 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion);
        if (v61)
        {
          [v61 invalidate];
        }
      }
    }

    if ((v110 & 1) == 0)
    {
      goto LABEL_29;
    }

    v62 = AlarmPresentationState.bundleID.getter();
    if (!v63)
    {
      goto LABEL_29;
    }

    if (v62 == 0xD000000000000015 && v63 == 0x80000001000D7F20)
    {
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v64 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v65 = v100;
    AlarmAttributes.metadata.getter();
    if (v104(v65, 1, v45) == 1)
    {
      sub_10002D02C(v65, &unk_100118100, &qword_1000D1250);
    }

    else
    {
      MTAlarmCustomContent.type.getter();
      (*(v101 + 8))(v65, v45);
      v66 = AlarmType.rawValue.getter();
      if (v66 == AlarmType.rawValue.getter())
      {
        v67 = v99;
        AlarmAttributes.presentation.getter();
        v68 = v107;
        AlarmPresentation.countdown.getter();
        (*(v105 + 8))(v67, v106);
        v69 = type metadata accessor for AlarmPresentation.Countdown();
        LODWORD(v67) = (*(*(v69 - 8) + 48))(v68, 1, v69);
        sub_10002D02C(v68, &unk_100115DF0, &qword_1000D1260);
        if (v67 != 1)
        {
          v97 = 3;
          goto LABEL_30;
        }
      }
    }

LABEL_29:
    v97 = 0;
LABEL_30:
    v110 = v48;
    if (qword_100113630 != -1)
    {
      swift_once();
    }

    v70 = qword_10011F508;
    AlarmPresentationState.alarmID.getter();
    v106 = AlarmPresentationState.bundleID.getter();
    v107 = v21;
    v72 = v71;
    v73 = v103;
    AlarmAttributes.metadata.getter();
    v74 = v104(v73, 1, v45);
    if (v74 == 1)
    {
      sub_10002D02C(v73, &unk_100118100, &qword_1000D1250);
      v105 = 0;
    }

    else
    {
      v105 = MTAlarmCustomContent.type.getter();
      (*(v101 + 8))(v73, v45);
    }

    v75 = *(v115 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination);
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v115 = v70;
    v116 = v70;
    type metadata accessor for AlarmAndTimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v76._object = 0x80000001000D7D50;
    v76._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v76);
    LOBYTE(v116) = v97;
    _print_unlocked<A, B>(_:_:)();
    v77._countAndFlagsBits = 0x616C6120726F6620;
    v77._object = 0xEF203A6469206D72;
    String.append(_:)(v77);
    sub_10004CB7C(&qword_100118110, &type metadata accessor for UUID);
    v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v78);

    v79._object = 0x80000001000D7D70;
    v79._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v79);
    if (v75 <= 2)
    {
      if (v75)
      {
        v80 = v111;
        if (v75 == 1)
        {
          v81 = 0xEB000000006C6C75;
          v82 = 0x46746E6569626D41;
        }

        else
        {
          v81 = 0xE800000000000000;
          v82 = 0x6572757472657041;
        }
      }

      else
      {
        v80 = v111;
        v81 = 0xEE00746361706D6FLL;
        v82 = 0x43746E6569626D41;
      }

      goto LABEL_49;
    }

    if (v75 > 4)
    {
      v80 = v111;
      if (v75 != 5)
      {
        v81 = 0xEB00000000646574;
        v82 = 0x726F707075736E55;
        goto LABEL_49;
      }

      v83 = 1801678668;
    }

    else
    {
      v80 = v111;
      if (v75 == 3)
      {
        v81 = 0xE600000000000000;
        v82 = 0x72656E6E6142;
LABEL_49:
        v84 = objc_opt_self();
        v85._countAndFlagsBits = v82;
        v85._object = v81;
        String.append(_:)(v85);

        v86 = String._bridgeToObjectiveC()();

        [v84 logInfo:v86];

        if (v72)
        {
          v87 = v74 == 1;
          v88 = v113;
          v89 = v109;
          v91 = v107;
          v90 = v108;
          if (v97 > 1)
          {
            sub_10007D1D0(v109, v106, v72, v105, v87);
          }

          else
          {
            sub_10007D8CC(v109, v106, v72, v105, v87);
          }
        }

        else
        {
          v117 = 0;
          v118 = 0xE000000000000000;
          _StringGuts.grow(_:)(73);
          v92._countAndFlagsBits = 0xD000000000000047;
          v92._object = 0x80000001000D7D90;
          String.append(_:)(v92);
          v89 = v109;
          v88 = v113;
          v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v93);

          v94 = String._bridgeToObjectiveC()();

          [v84 logError:v94];

          v91 = v107;
          v90 = v108;
        }

        v95 = v112;
        v96 = v102;
        (*(v90 + 8))(v89, v88);
        (*(v95 + 8))(v110, v91);
        (*(v80 + 8))(v114, v96);
        return;
      }

      v83 = 1819047238;
    }

    v82 = v83 | 0x6572635300000000;
    v81 = 0xEA00000000006E65;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = *v32;
    v35 = [*v32 isSleepAlarm];
    v36 = v115;
    if (v35)
    {
      v37 = *(v115 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion);
      if (v37)
      {
        [v37 invalidate];
      }
    }

    if ((v110 & 1) != 0 && [v34 allowsSnooze])
    {
      v38 = *(v36 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator);

      v39 = [v34 alarmIDString];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      sub_10007730C(v40, v42);
    }

    else
    {
      v55 = *(v36 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator);

      v56 = [v34 alarmIDString];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      sub_100076AA0(v57, v59);
    }
  }

  else
  {
    v49 = *v32;
    v50 = *(v115 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator);

    v51 = [v49 timerIDString];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    sub_100079E30(v52, v54);
  }
}

void sub_100049400(void *a1)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(24);
  v4 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5._object = 0x80000001000D87D0;
  v5._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v3 logInfo:v6];

  type metadata accessor for ActivityScene();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    [objc_msgSend(v8 "systemApertureElementContext")];

    swift_unknownObjectRelease();
  }

  else
  {
    _StringGuts.grow(_:)(27);
    v10 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x80000001000D87F0;
    String.append(_:)(v11);
    v12 = [a1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17 = String._bridgeToObjectiveC()();

    [v3 logError:v17];
  }
}

void sub_100049794(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v5 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._object = 0x80000001000D8750;
  v6._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 logInfo:v7];

  v8 = [a1 session];
  v9 = [v8 role];

  v10 = static UISceneSessionRole.activityBanner.getter();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_8:
      _StringGuts.grow(_:)(83);
      v18 = [v2 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000026;
      v23._object = 0x80000001000D8770;
      String.append(_:)(v23);
      v24 = [a1 session];
      v25 = [v24 role];

      type metadata accessor for Role(0);
      _print_unlocked<A, B>(_:_:)();

      v26._countAndFlagsBits = 0xD000000000000027;
      v26._object = 0x80000001000D87A0;
      String.append(_:)(v26);
      v27 = [a1 _FBSScene];
      v28 = [v27 settings];

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        [v29 deactivationReasons];
      }

      sub_1000032D4(&qword_100115DE8, &unk_1000D3240);
      v30._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v30);

      v31 = String._bridgeToObjectiveC()();

      [v4 logInfo:v31];

      return;
    }
  }

  v16 = [a1 _FBSScene];
  v32 = [v16 settings];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17 || ([v17 deactivationReasons] & 0x40) == 0)
  {

    goto LABEL_8;
  }

  sub_100048160(1);
}

id sub_100049C58()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v11 = v4;
  v12 = v6;
  v7._countAndFlagsBits = 0x74696E696564203ALL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  v10.receiver = v1;
  v10.super_class = type metadata accessor for SessionSceneDelegate();
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t type metadata accessor for SessionSceneDelegate()
{
  result = qword_100115C50;
  if (!qword_100115C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100049FF4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_observerId];
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  *v7 = v8;
  v7[1] = v10;
  v11 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerAttributes;
  v12 = type metadata accessor for TimerActivityAttributes();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmAttributes;
  v14 = type metadata accessor for AlarmActivityAttributes();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes] = 0;
  v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] = 6;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene] = 0;
  v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = 7;
  v15 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  v18 = type metadata accessor for AlarmPresentationState();
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = sub_10008C3BC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_cancellableSet] = v19;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerApertureElementProvider] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmApertureElementProvider] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchApertureElementProvider] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_inUseAssertion] = 0;
  v20 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator;
  if (qword_100113620 != -1)
  {
    swift_once();
  }

  *&v1[v20] = qword_10011F4F8;
  v21 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator;
  v22 = qword_100113628;

  if (v22 != -1)
  {
    swift_once();
  }

  *&v1[v21] = qword_10011F500;
  v23 = &v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_dataStoerObserverId];
  *v23 = 0xD000000000000014;
  v23[1] = 0x80000001000D2FE0;
  v24 = type metadata accessor for SessionSceneDelegate();
  v26.receiver = v1;
  v26.super_class = v24;

  return objc_msgSendSuper2(&v26, "init");
}

void sub_10004A3D8()
{
  sub_10004A630(319, &qword_100115C60, &type metadata accessor for TimerActivityAttributes);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10004A630(319, &qword_100115C68, &type metadata accessor for AlarmActivityAttributes);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10004A5CC();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10004A630(319, &qword_100115C80, &type metadata accessor for AlarmPresentationState);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10004A5CC()
{
  if (!qword_100115C70)
  {
    sub_10001C820(&qword_1001139D0, &unk_1000D08C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100115C70);
    }
  }
}

void sub_10004A630(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004A684(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10004DF20(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10004DF20(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10004D278(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_10004DF20(v3, v5, v2 != 0);
  return v13;
}

BOOL sub_10004A7A0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  Hasher.init(_seed:)();
  v4 = ActivitySceneHardwareButtonPressType.rawValue.getter();
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    v10 = ActivitySceneHardwareButtonPressType.rawValue.getter();
    v11 = v10 == ActivitySceneHardwareButtonPressType.rawValue.getter();
    result = v11;
    if (v11)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10004A9E0(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  aBlock = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v12 = [v1 description];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._object = 0x80000001000D85B0;
  v17._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v17);
  *&v33[0] = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  sub_1000032D4(&qword_100115D78, &unk_1000D3210);
  _print_unlocked<A, B>(_:_:)();
  v18 = String._bridgeToObjectiveC()();

  [v11 logInfo:v18];

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  sub_10002B00C(v24, v33);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  sub_10004E5BC(v33, v20 + 24);
  v31 = sub_10004CB58;
  v32 = v20;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_10004B270;
  v30 = &unk_100101010;
  v21 = _Block_copy(&aBlock);
  v22 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10004CB7C(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v25);
}

void sub_10004ADF4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for AlarmPresentationState();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window])
  {
    v37 = v5;
    v38 = v15;
    v18 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
    v19 = a1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType];
    sub_10002B00C(a2, v40);
    sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
    sub_10002BB3C(0, &qword_100115DB0, MTAlarm_ptr);
    if (swift_dynamicCast())
    {
      v20 = v39;
      v21 = [v39 isFiring];

      v22 = v21 == 0;
      v23 = 2;
      goto LABEL_4;
    }

    sub_10002B00C(a2, v40);
    sub_10002BB3C(0, &qword_100115DB8, MTTimer_ptr);
    if (swift_dynamicCast())
    {
      v24 = v39;
      v19 = [v39 isFiring];
    }

    else
    {
      sub_10002B00C(a2, v40);
      v25 = swift_dynamicCast();
      v26 = v38;
      v27 = *(v38 + 56);
      if (v25)
      {
        v27(v12, 0, 1, v13);
        (*(v26 + 32))(v17, v12, v13);
        AlarmPresentationState.mode.getter();
        v28 = AlarmPresentationState.Mode.isAlerting.getter();
        (*(v37 + 8))(v8, v4);
        (*(v26 + 8))(v17, v13);
        v22 = (v28 & 1) == 0;
        v23 = 5;
LABEL_4:
        if (v22)
        {
          v19 = v23 + 1;
        }

        else
        {
          v19 = v23;
        }

        goto LABEL_12;
      }

      v27(v12, 1, 1, v13);
      sub_10002D02C(v12, &unk_100115DA0, &unk_1000D3220);
    }

LABEL_12:
    a1[v18] = v19;
    v29 = objc_opt_self();
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v30 = [a1 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._object = 0x80000001000D85E0;
    v35._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v35);
    LOBYTE(v39) = v19;
    _print_unlocked<A, B>(_:_:)();
    v36 = String._bridgeToObjectiveC()();

    [v29 logInfo:v36];

    sub_100047388();
  }
}

uint64_t sub_10004B270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10004B2B8()
{
  v1 = (*v0 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_observerId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10004B300()
{
  v1 = v0 + *((swift_isaMask & *v0) + qword_10011F398 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 1);
  return result;
}

void sub_10004B370(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = [v2 traitCollection];
  v6 = [v5 _backlightLuminance];

  if (v6 == 1 && (!a1 || [a1 _backlightLuminance] != 1))
  {
    v17 = objc_opt_self();
    _StringGuts.grow(_:)(42);
    v18 = *(v4 + qword_10011F398);
    v19 = *(v4 + qword_10011F398 + 8);
    type metadata accessor for SecureHostingController();
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v20._object = 0x80000001000D8640;
    v20._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    [v17 logInfo:v21];

    v22 = *((swift_isaMask & *v2) + qword_10011F398 + 16);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v16 = 1;
    goto LABEL_13;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 _backlightLuminance];

  if (v8 != 1 && a1 != 0 && [a1 _backlightLuminance] == 1)
  {
    v10 = objc_opt_self();
    _StringGuts.grow(_:)(44);
    v11 = *(v4 + qword_10011F398);
    v12 = *(v4 + qword_10011F398 + 8);
    type metadata accessor for SecureHostingController();
    swift_getWitnessTable();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x80000001000D8610;
    String.append(_:)(v13);
    v14 = String._bridgeToObjectiveC()();

    [v10 logInfo:v14];

    v15 = *((swift_isaMask & *v2) + qword_10011F398 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = 0;
LABEL_13:
      sub_10004BD70(v16);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10004B6C8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10004B370(a3);
}

void sub_10004B734()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_10011F398);
  v3 = *(v1 + qword_10011F398 + 8);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SecureHostingController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];
  }

  else
  {
    __break(1u);
  }
}

void sub_10004B81C(void *a1)
{
  v1 = a1;
  sub_10004B734();
}

void *sub_10004B8A8(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10011F398);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v14 - v7;
  *(v2 + *(v9 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, a2, v4);
  v10 = UIHostingController.init(coder:rootView:)();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_10004B9FC(void *a1)
{
  v3 = swift_isaMask & *v1;
  *(v1 + *(v3 + qword_10011F398 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = *(v3 + qword_10011F398);
  v5 = *(v3 + qword_10011F398 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10004BB40()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_10011F398);
  v3 = *(v1 + qword_10011F398 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t getEnumTagSinglePayload for SessionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10004BD70(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window;
  v5 = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_window];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = [v5 rootViewController];
  if (v6)
  {
    v68 = v6;
    sub_1000032D4(&qword_100115DC8, &qword_1000D3238);
    if (swift_dynamicCastClass())
    {
      _StringGuts.grow(_:)(51);
      v7 = [v2 description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12._object = 0x80000001000D86D0;
      v12._countAndFlagsBits = 0xD00000000000002FLL;
      String.append(_:)(v12);
      if (a1)
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (a1)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      v15 = objc_opt_self();
      v16._countAndFlagsBits = v13;
      v16._object = v14;
      String.append(_:)(v16);

      v17 = String._bridgeToObjectiveC()();

      [v15 logInfo:v17];

      v18 = sub_10004573C();
      if (v18)
      {
        v19 = v18;
        v20 = objc_opt_self();
        v21 = [v20 mtOrange];
        v22 = Color.init(uiColor:)();
        if (a1)
        {
          v23 = Color.opacity(_:)();

          v24 = [v20 mtOrange];
          Color.init(uiColor:)();
          v25 = Color.opacity(_:)();

          static Color.white.getter();
          v26 = Color.opacity(_:)();

          v27 = &off_100103578;
          v28 = &type metadata for LowLuminanceSessionUiConfig;
          v22 = v23;
        }

        else
        {
          v52 = [v20 mtOrange];
          Color.init(uiColor:)();
          v25 = Color.opacity(_:)();

          v27 = &off_1001035E8;
          v28 = &type metadata for StandardSessionUiConfig;
          v26 = static Color.white.getter();
        }

        static Color.white.getter();
        v53 = Color.opacity(_:)();

        v71 = v28;
        v72 = v27;
        v54 = swift_allocObject();
        v54[2] = v22;
        v54[3] = v25;
        v54[4] = v26;
        v54[5] = v53;
        v70[0] = v54;
        v55 = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_timerCoordinator];
        type metadata accessor for TimerCoordinator();
        sub_10002B00C(v70, v69);
        v69[5] = 0x4028000000000000;
LABEL_41:
        v66 = v68;
        v67 = v19;

        dispatch thunk of UIHostingController.rootView.setter();

        sub_100017D28(v70);
        return;
      }

      goto LABEL_36;
    }
  }

  v29 = *&v2[v4];
  if (!v29 || (v30 = [v29 rootViewController]) == 0)
  {
LABEL_29:
    _StringGuts.grow(_:)(49);
    v56 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v57._countAndFlagsBits = 0xD00000000000002DLL;
    v57._object = 0x80000001000D8670;
    String.append(_:)(v57);
    if (a1)
    {
      v58 = 1702195828;
    }

    else
    {
      v58 = 0x65736C6166;
    }

    if (a1)
    {
      v59 = 0xE400000000000000;
    }

    else
    {
      v59 = 0xE500000000000000;
    }

    v60 = objc_opt_self();
    v61._countAndFlagsBits = v58;
    v61._object = v59;
    String.append(_:)(v61);

    v68 = String._bridgeToObjectiveC()();

    [v60 logInfo:v68];
    goto LABEL_36;
  }

  v68 = v30;
  sub_1000032D4(&qword_100115DC0, &qword_1000D3230);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_29;
  }

  _StringGuts.grow(_:)(51);
  v31 = [v2 description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._object = 0x80000001000D86A0;
  v36._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v36);
  if (a1)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (a1)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  v39 = objc_opt_self();
  v40._countAndFlagsBits = v37;
  v40._object = v38;
  String.append(_:)(v40);

  v41 = String._bridgeToObjectiveC()();

  [v39 logInfo:v41];

  v42 = sub_10004539C();
  if (v42)
  {
    v19 = v42;
    v43 = objc_opt_self();
    v44 = [v43 mtOrange];
    v45 = Color.init(uiColor:)();
    if (a1)
    {
      v46 = Color.opacity(_:)();

      v47 = [v43 mtOrange];
      Color.init(uiColor:)();
      v48 = Color.opacity(_:)();

      static Color.white.getter();
      v49 = Color.opacity(_:)();

      v50 = &off_100103578;
      v51 = &type metadata for LowLuminanceSessionUiConfig;
      v45 = v46;
    }

    else
    {
      v62 = [v43 mtOrange];
      Color.init(uiColor:)();
      v48 = Color.opacity(_:)();

      v50 = &off_1001035E8;
      v51 = &type metadata for StandardSessionUiConfig;
      v49 = static Color.white.getter();
    }

    static Color.white.getter();
    v63 = Color.opacity(_:)();

    v71 = v51;
    v72 = v50;
    v64 = swift_allocObject();
    v64[2] = v45;
    v64[3] = v48;
    v64[4] = v49;
    v64[5] = v63;
    v70[0] = v64;
    v65 = *&v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator];
    type metadata accessor for AlarmCoordinator();
    sub_10002B00C(v70, v69);
    goto LABEL_41;
  }

LABEL_36:
}

uint64_t sub_10004C51C()
{
  String.hash(into:)();
}

Swift::Int sub_10004C678()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10004C7BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004C924@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004DE14(*a1);
  *a2 = result;
  return result;
}

void sub_10004C954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E776F64746ELL;
  v4 = 0x756F4372656D6954;
  v5 = 0xE90000000000006ELL;
  v6 = 0x776F64746E756F43;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0x63746177706F7453;
  v8 = 0xE900000000000068;
  if (v2 != 4)
  {
    v7 = 0x7472656C41;
    v8 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x656C416D72616C41;
  v10 = 0xEA00000000007472;
  if (v2 != 2)
  {
    v9 = 0x6F6E536D72616C41;
    v10 = 0xEB00000000657A6FLL;
  }

  if (*v1)
  {
    v4 = 0x656C4172656D6954;
    v3 = 0xEA00000000007472;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10004CA7C()
{
  result = qword_100115D68;
  if (!qword_100115D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115D68);
  }

  return result;
}

uint64_t sub_10004CB18()
{
  sub_100017D28((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004CB64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004CB7C(unint64_t *a1, void (*a2)(uint64_t))
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

const char *sub_10004CBC4()
{
  if (*v0)
  {
    return "Clock";
  }

  else
  {
    return "MobileTimerFlags";
  }
}

const char *sub_10004CBF4()
{
  if (*v0)
  {
    return "live_activity_banners";
  }

  else
  {
    return "LiveActivityAlerting";
  }
}

uint64_t sub_10004CC20@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v30 = v29 - v3;
  v4 = sub_1000032D4(&qword_100113FB8, &qword_1000D1258);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v29[3] = v29 - v6;
  v7 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v29[2] = v29 - v9;
  v10 = type metadata accessor for AlarmPresentation.Alert();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for AlarmPresentation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v29 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v29 - v22;
  __chkstk_darwin(v21);
  v29[1] = v29 - v24;
  sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.alert.getter();
  v25 = *(v13 + 8);
  v25(v23, v12);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.countdown.getter();
  v25(v20, v12);
  AlarmAttributes.presentation.getter();
  AlarmPresentation.paused.getter();
  v25(v17, v12);
  AlarmPresentation.init(alert:countdown:paused:)();
  v26 = v30;
  MTAlarmCustomContent.init(type:isSleepAlarm:)();
  v27 = type metadata accessor for MTAlarmCustomContent();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  AlarmAttributes.tintColor.getter();
  sub_10004CB7C(&qword_100115F10, &type metadata accessor for MTAlarmCustomContent);
  return AlarmAttributes.init(presentation:metadata:tintColor:)();
}

uint64_t sub_10004D008@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10004D050(uint64_t a1)
{
  v2 = sub_10004EEE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D08C(uint64_t a1)
{
  v2 = sub_10004EEE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004D0F0(void *a1)
{
  v2 = sub_1000032D4(&qword_100115FA0, &qword_1000D35D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100025B1C(a1, a1[3]);
  sub_10004EEE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_10004D278(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10004D49C(uint64_t a1, void *a2)
{
  v5 = objc_opt_self();
  _StringGuts.grow(_:)(43);
  v6 = [v2 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._object = 0x80000001000D9200;
  v10._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v10);
  v11 = [a2 role];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v5 logInfo:v16];

  return sub_100039DE8(a1, a2);
}

uint64_t sub_10004D5F0(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_10011F398);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v10 - v6;
  *(v1 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v7, a1, v3);
  return UIHostingController.init(rootView:)();
}

id sub_10004D708()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(39);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x80000001000D91D0;
  v8._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v8);
  v9 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  v12 = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  _print_unlocked<A, B>(_:_:)();
  v10 = String._bridgeToObjectiveC()();

  [v2 logInfo:v10];

  if (sub_100089E54(v1[v9]))
  {
    sub_100048160(0);
  }

  return sub_100047764();
}

void sub_10004D854()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v2 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._object = 0x80000001000D91B0;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 logInfo:v4];
}

void sub_10004D94C()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(28);
  v2 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._object = 0x80000001000D9190;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 logInfo:v4];
}

uint64_t sub_10004DA44(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(65);
  v5 = [v1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x80000001000D8700;
  String.append(_:)(v10);
  sub_10002BB3C(0, &qword_100115DD0, BSAction_ptr);
  sub_10004DE88(&qword_100115DD8, &qword_100115DD0, BSAction_ptr);
  v11._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v11);

  v12._object = 0x80000001000D8730;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  v23 = v2[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  _print_unlocked<A, B>(_:_:)();
  v14 = String._bridgeToObjectiveC()();

  [v4 logInfo:v14];

  v22[3] = &type metadata for ClockFeatureFlags;
  v22[4] = sub_10004DECC();
  LOBYTE(v22[0]) = 0;
  LOBYTE(v5) = isFeatureEnabled(_:)();
  sub_100017D28(v22);
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v2[v13] <= 2u || v2[v13] > 4u || v2[v13] == 3)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16) == 1)
    {
      goto LABEL_14;
    }

LABEL_21:

    return a1;
  }

  if (__CocoaSet.count.getter() != 1)
  {
    goto LABEL_21;
  }

LABEL_14:
  v16 = sub_10008C650(&off_1000FF6D0);
  v17 = sub_10004A684(a1);
  if (!v17)
  {

    goto LABEL_21;
  }

  v18 = v17;
  type metadata accessor for ActivityHardwareButtonPressAction();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_20;
  }

  v19 = dispatch thunk of ActivityHardwareButtonPressAction.type.getter();
  v20 = sub_10004A7A0(v19, v16);

  if (!v20)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_100048160(1);

  return 0;
}

unint64_t sub_10004DE14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000FF710, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004DE88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002BB3C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DECC()
{
  result = qword_100115DE0;
  if (!qword_100115DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DE0);
  }

  return result;
}

uint64_t sub_10004DF20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10004DF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueAlarm();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DF90()
{
  v1 = *(type metadata accessor for OpaqueAlarm() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for AlarmPresentationState();
    (*(*(v8 - 8) + 8))(v0 + v3, v8);
    v9 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v10 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10004E10C(uint64_t a1)
{
  v4 = *(type metadata accessor for OpaqueAlarm() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10004F014;

  return sub_100048430(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10004E22C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E264(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10004F014;

  return sub_10007DBAC(a1, v5);
}

uint64_t sub_10004E31C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100031D4C;

  return sub_10007DBAC(a1, v5);
}

uint64_t sub_10004E428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100078384(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004E4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_1000762C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004E5BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10004E69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004E814()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E854()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E88C()
{
  v1 = type metadata accessor for ActivityDescriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10004E9E8(void *a1)
{
  v3 = *(type metadata accessor for ActivityDescriptor() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1000032D4(&qword_100115E88, &unk_1000D3380) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_10003EAF0(a1, v7, (v1 + v4), v8);
}

uint64_t sub_10004EACC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10004EB44()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10004EB88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004EB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D4C;

  return sub_1000762C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004EC60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000032D4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004ECC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10004ED34()
{
  result = qword_100115F78;
  if (!qword_100115F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F78);
  }

  return result;
}

unint64_t sub_10004ED8C()
{
  result = qword_100115F80;
  if (!qword_100115F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F80);
  }

  return result;
}

unint64_t sub_10004EDE4()
{
  result = qword_100115F88;
  if (!qword_100115F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F88);
  }

  return result;
}

unint64_t sub_10004EE3C()
{
  result = qword_100115F90;
  if (!qword_100115F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F90);
  }

  return result;
}

unint64_t sub_10004EE94()
{
  result = qword_100115F98;
  if (!qword_100115F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115F98);
  }

  return result;
}

unint64_t sub_10004EEE8()
{
  result = qword_100115FA8;
  if (!qword_100115FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115FA8);
  }

  return result;
}

unint64_t sub_10004EF50()
{
  result = qword_100115FB0;
  if (!qword_100115FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115FB0);
  }

  return result;
}

unint64_t sub_10004EFA8()
{
  result = qword_100115FB8;
  if (!qword_100115FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115FB8);
  }

  return result;
}

uint64_t sub_10004F058@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = [v2 fireDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v5 + 32);
    v15(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
    return (v15)(a1, v12, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
    [v2 remainingTime];
    Date.init()();
    Date.init(timeInterval:since:)();
    result = (*(v5 + 48))(v12, 1, v4);
    if (result != 1)
    {
      return sub_10004F91C(v12);
    }
  }

  return result;
}

double sub_10004F268()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 duration];
  v6 = 0.0;
  if (v7 > 0.0)
  {
    if ([v0 state] == 2)
    {
      [v0 remainingTime];
      v9 = v8;
    }

    else
    {
      sub_10004F058(v5);
      Date.timeIntervalSinceNow.getter();
      v9 = v10;
      (*(v2 + 8))(v5, v1);
    }

    [v0 duration];
    v6 = v9 / v11;
  }

  return 1.0 - v6;
}

void sub_10004F3B0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 remainingTime];
  v7 = sub_10002551C(v6);
  v8 = [v0 state];
  v9 = 0.0;
  if (v8 == 2)
  {
    v9 = 1.0;
  }

  if (v7 <= v9)
  {
    v7 = v9;
  }

  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v11 = (*(v2 + 8))(v5, v1);
  *v11.i64 = v7;
  v12 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v11);

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004F55C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4)
{
  v5 = a2(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = DataStore.init(identifier:)();
  *a4 = result;
  return result;
}

uint64_t sub_10004F5C0()
{
  DataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10004F5FC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10004F6F0(SEL *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = [*v2 *a1];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

unint64_t sub_10004F748()
{
  result = qword_100116030;
  if (!qword_100116030)
  {
    type metadata accessor for AlarmPresentationState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116030);
  }

  return result;
}

uint64_t sub_10004F870()
{
  v0 = type metadata accessor for AlarmPresentationStateDataStore(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = DataStore.init(identifier:)();
  qword_10011F3B8 = result;
  return result;
}

uint64_t sub_10004F8C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return DataStore.init(identifier:)();
}

uint64_t sub_10004F91C(uint64_t a1)
{
  v2 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10004FF70()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AlarmApertureElementController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  if (*&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8])
  {
    v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
    v3 = qword_100113600;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_1000571F8(&unk_100116250, type metadata accessor for AlarmApertureElementController);
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.registerObserver(_:for:)();
    sub_10004E3D4(v11);
  }

  v4 = objc_opt_self();
  v5 = [v1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v11[0] = v6;
  v11[1] = v8;
  v9._countAndFlagsBits = 0x6469447765697620;
  v9._object = 0xEC00000064616F4CLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  sub_100051880();
}

char *sub_100050170(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v42 = a3;
  v7 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v41[-v9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_maximumLayoutMode] = 4;
  v21 = 1;
  v22 = [objc_opt_self() mtURLForSection:1];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v10, v21, 1, v24);
  sub_1000573D0(v10, &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_launchURL]);
  v25 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_associatedAppBundleIdentifier];
  *v25 = 0xD000000000000015;
  v25[1] = 0x80000001000D7F20;
  v26 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_timerObserverIdentifier];
  *v26 = 0xD00000000000001ELL;
  v26[1] = 0x80000001000D3860;
  v27 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v28 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_allocWithZone(ObjCClassFromMetadata);
  v31 = v27;
  *&v4[v28] = [v30 init];
  v32 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView;
  *&v4[v32] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v33 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView;
  *&v4[v33] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v34 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_keyColor;
  *&v4[v34] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelLeadingPadding] = 0x3FF8000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_labelBottomPadding] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expandedControlsHeight] = 0x4048000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmSize] = 0x4047800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmLeadingPadding] = 0x4031800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmBottomPadding] = 0x4033800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = 0;
  v35 = type metadata accessor for AlarmApertureElementController();
  v43.receiver = v4;
  v43.super_class = v35;
  v36 = objc_msgSendSuper2(&v43, "init");
  v37 = &v36[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  v38 = *&v36[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];
  *v37 = a1;
  *(v37 + 1) = a2;
  v39 = v36;

  if (v42)
  {
    *&v39[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 2;
  }

  return v39;
}

id sub_100050654(void *a1)
{
  v2 = v1;
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId];
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  *v13 = v14;
  v13[1] = v16;
  v17 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v17 = 0;
  v17[1] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 9;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_maximumLayoutMode] = 4;
  v18 = 1;
  v19 = [objc_opt_self() mtURLForSection:1];
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(v7, v18, 1, v21);
  sub_1000573D0(v7, &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_launchURL]);
  v22 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_associatedAppBundleIdentifier];
  *v22 = 0xD000000000000015;
  v22[1] = 0x80000001000D7F20;
  v23 = &v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_timerObserverIdentifier];
  *v23 = 0xD00000000000001ELL;
  v23[1] = 0x80000001000D3860;
  v24 = SBUISystemApertureElementIdentifierTimer;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v25 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_allocWithZone(ObjCClassFromMetadata);
  v28 = v24;
  *&v2[v25] = [v27 init];
  v29 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView;
  *&v2[v29] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v30 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView;
  *&v2[v30] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v31 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_keyColor;
  *&v2[v31] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelLeadingPadding] = 0x3FF8000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_buttonSize] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_labelBottomPadding] = 0x402A000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expandedControlsHeight] = 0x4048000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmSize] = 0x4047800000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmLeadingPadding] = 0x4031800000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmBottomPadding] = 0x4033800000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = 0;
  v32 = type metadata accessor for AlarmApertureElementController();
  v35.receiver = v2;
  v35.super_class = v32;
  v33 = objc_msgSendSuper2(&v35, "initWithCoder:", a1);

  if (v33)
  {
  }

  return v33;
}

id sub_100050B40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v39[1] = a1;
  v7 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v39 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  *v20 = 0;
  v20[1] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_maximumLayoutMode] = 4;
  v21 = 1;
  v22 = [objc_opt_self() mtURLForSection:1];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v10, v21, 1, v24);
  sub_1000573D0(v10, &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_launchURL]);
  v25 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_associatedAppBundleIdentifier];
  *v25 = 0xD000000000000015;
  v25[1] = 0x80000001000D7F20;
  v26 = &v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_timerObserverIdentifier];
  *v26 = 0xD00000000000001ELL;
  v26[1] = 0x80000001000D3860;
  v27 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v28 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_allocWithZone(ObjCClassFromMetadata);
  v31 = v27;
  *&v4[v28] = [v30 init];
  v32 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView;
  *&v4[v32] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v33 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView;
  *&v4[v33] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v34 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_keyColor;
  *&v4[v34] = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.622 blue:0.044 alpha:1.0];
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelLeadingPadding] = 0x3FF8000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_buttonSize] = 0x4049000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_labelBottomPadding] = 0x402A000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expandedControlsHeight] = 0x4048000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_expectedApertureHeight] = 0x4055000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmSize] = 0x4047800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmLeadingPadding] = 0x4031800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_animatingAlarmBottomPadding] = 0x4033800000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = 0;
  if (a2)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  v36 = type metadata accessor for AlarmApertureElementController();
  v40.receiver = v4;
  v40.super_class = v36;
  v37 = objc_msgSendSuper2(&v40, "initWithNibName:bundle:", v35, a3);

  return v37;
}

id sub_100051088()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v14[0] = v4;
  v14[1] = v6;
  v7._countAndFlagsBits = 0x74696E69656420;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:v8];

  if (*&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8])
  {
    v9 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
    v10 = qword_100113600;
    v11 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];

    if (v10 != -1)
    {
      swift_once();
    }

    sub_1000571F8(&unk_100116250, type metadata accessor for AlarmApertureElementController);
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();
    sub_10004E3D4(v14);
  }

  v12 = type metadata accessor for AlarmApertureElementController();
  v15.receiver = v1;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "dealloc");
}

uint64_t type metadata accessor for AlarmApertureElementController()
{
  result = qword_1001161A8;
  if (!qword_1001161A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051418(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for AlarmApertureElementController();
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(17);
  v5 = [v2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = 0x6C69577765697620;
  v9._object = 0xEF7261657070416CLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:{v10, v6, v8}];

  v11 = sub_100055180();
  if (v11)
  {
    v12 = v11;
    sub_10005159C(v11);
  }
}

void sub_10005159C(void *a1)
{
  v2 = v1;
  v4 = [a1 isFiring];
  v5 = 9;
  if (v4)
  {
    v5 = 2;
  }

  v6 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors];
  *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_presentationBehaviors] = v5;
  if (v6 != v5)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
  }

  if ([a1 isFiring])
  {
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    [v7 logInfo:v8];

    sub_100053614();
    sub_10005392C();
    sub_100051FB4(a1);
  }

  else if ([a1 isSnoozed])
  {
    sub_1000533DC();
    sub_100055EAC(a1);
  }

  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    if (v11)
    {
      v12 = [v11 windowScene];

      if (v12)
      {
        type metadata accessor for ActivityScene();
        if (swift_dynamicCastClass())
        {
          v13 = v12;
          dispatch thunk of ActivityScene.idleTimerDisabled.setter();
        }
      }
    }

    v14 = objc_opt_self();
    _StringGuts.grow(_:)(34);
    v15 = [v2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v16._countAndFlagsBits = 0xD00000000000001ELL;
    v16._object = 0x80000001000D9DF0;
    String.append(_:)(v16);
    v17 = [a1 alarmIDString];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22 = String._bridgeToObjectiveC()();

    [v14 logInfo:v22];
  }

  else
  {
    __break(1u);
  }
}

void sub_100051880()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v57 - v8;
  __chkstk_darwin(v7);
  v12 = &v57 - v11;
  v13 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
  if (v13)
  {
    v58 = v10;
    type metadata accessor for AlarmApertureElementController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    [v13 setAccessibilityLabel:v18];

    v19 = v13;
    v20 = [v1 view];
    if (v20)
    {
      v21 = v20;
      [v20 addSubview:v19];

      v22 = objc_allocWithZone(sub_1000032D4(&unk_100116240, &unk_1000D3980));
      v61[0] = 0x402F000000000000;
      *&v22[*((swift_isaMask & *v22) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      v23 = UIHostingController.init(rootView:)();
      v24 = [v23 view];
      if (v24)
      {
        v25 = v24;
        [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

        [v1 addChildViewController:v23];
        [v23 didMoveToParentViewController:v1];
        v26 = [v23 view];
        if (v26)
        {
          v27 = v26;
          [v19 addSubview:v26];

          v28 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];
          if (v28)
          {
            v29 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
            v30 = qword_100113600;
            v31 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];

            if (v30 != -1)
            {
              swift_once();
            }

            v59 = v29;
            v60 = v28;
            AnyHashable.init<A>(_:)();
            dispatch thunk of DataStore.getEntry(for:)();
            sub_10004E3D4(v61);
            v32 = v62;
            if (v62)
            {
              v33 = [v62 snoozeFireDate];
              if (v33)
              {
                v34 = v33;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v35 = v58;
                (*(v58 + 32))(v12, v9, v2);
                Date.init()();
                Date.timeIntervalSince(_:)();
                v36 = *(v35 + 8);
                v36(v6, v2);
                sub_10008BEF0();
                v37 = String._bridgeToObjectiveC()();

                [v19 setAccessibilityLabel:v37];

                v36(v12, v2);
              }

              else
              {
              }
            }
          }

          v38 = v19;
          v39 = [v1 view];
          if (v39)
          {
            v40 = v39;
            [v39 addSubview:v38];

            v41 = [v23 view];
            if (v41)
            {
              v42 = objc_opt_self();
              sub_1000032D4(&qword_100115480, &qword_1000D2510);
              v43 = swift_allocObject();
              *(v43 + 16) = xmmword_1000D24B0;
              v44 = [v41 leadingAnchor];
              v45 = [v38 leadingAnchor];
              v46 = [v44 constraintEqualToAnchor:v45];

              *(v43 + 32) = v46;
              v47 = [v41 trailingAnchor];
              v48 = [v38 trailingAnchor];
              v49 = [v47 constraintEqualToAnchor:v48];

              *(v43 + 40) = v49;
              v50 = [v41 topAnchor];
              v51 = [v38 topAnchor];
              v52 = [v50 constraintEqualToAnchor:v51];

              *(v43 + 48) = v52;
              v53 = [v41 bottomAnchor];
              v54 = [v38 bottomAnchor];
              v55 = [v53 constraintEqualToAnchor:v54];

              *(v43 + 56) = v55;
              sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v42 activateConstraints:isa];

              return;
            }

LABEL_22:
            __break(1u);
            return;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_100051FB4(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(45);

  v61 = 0xD00000000000002BLL;
  v62 = 0x80000001000D9C20;
  v5 = [a1 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  if (*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView])
  {
    return;
  }

  sub_100052810();
  v11 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost])
  {
    goto LABEL_8;
  }

  v12 = objc_allocWithZone(sub_1000032D4(&qword_1001162A8, &qword_1000D39B0));
  v61 = a1;
  *&v12[*((swift_isaMask & *v12) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = a1;
  v14 = UIHostingController.init(rootView:)();
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = v15;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [v14 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [v17 layer];

  [v19 setAllowsHitTesting:0];
  [v2 addChildViewController:v14];
  v20 = [v2 view];
  if (!v20)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = v20;
  v22 = [v14 view];

  if (!v22)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 addSubview:v22];

  [v14 didMoveToParentViewController:v2];
  v23 = *&v2[v11];
  *&v2[v11] = v14;

LABEL_8:
  v24 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost;
  if (!*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost])
  {
    if (qword_100113620 != -1)
    {
      swift_once();
    }

    v25 = qword_10011F4F8;
    v63 = type metadata accessor for AlarmCoordinator();
    v64 = &off_1001023C0;
    v62 = v25;
    v26 = objc_opt_self();

    v27 = [v26 mtOrange];
    v28 = Color.init(uiColor:)();
    v29 = [v26 mtOrange];
    Color.init(uiColor:)();
    v30 = Color.opacity(_:)();

    v31 = static Color.white.getter();
    static Color.white.getter();
    v32 = Color.opacity(_:)();

    v66 = &type metadata for StandardSessionUiConfig;
    v67 = &off_1001035E8;
    v33 = swift_allocObject();
    v33[2] = v28;
    v33[3] = v30;
    v33[4] = v31;
    v33[5] = v32;
    v65 = v33;
    v61 = a1;
    v34 = objc_allocWithZone(sub_1000032D4(&unk_1001162B0, qword_1000D39B8));
    *&v34[*((swift_isaMask & *v34) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_100025CA8(&v61, &v60);
    v35 = a1;
    v36 = UIHostingController.init(rootView:)();
    sub_100029BB4(&v61);
    v37 = v36;
    v38 = [v37 view];
    if (v38)
    {
      v39 = v38;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

      v40 = [v37 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 layer];

        [v42 setAllowsHitTesting:1];
        [v2 addChildViewController:v37];
        v43 = [v2 view];
        if (v43)
        {
          v44 = v43;
          v45 = [v37 view];

          if (v45)
          {
            [v44 addSubview:v45];

            [v37 didMoveToParentViewController:v2];
            v46 = *&v2[v24];
            *&v2[v24] = v37;

            goto LABEL_16;
          }

LABEL_32:
          __break(1u);
          return;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_16:
  v47 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints;
  v48 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints];
  if (v48 >> 62)
  {
    if (v48 < 0)
    {
      v59 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints];
    }

    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49)
  {
    v50 = objc_opt_self();
    v51 = *&v2[v47];
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 deactivateConstraints:isa];

    v53 = *&v2[v47];
    *&v2[v47] = &_swiftEmptyArrayStorage;
  }

  v54 = sub_100052D80();
  v55 = *&v2[v47];
  *&v2[v47] = v54;

  v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 1;
  v56 = objc_opt_self();
  v57 = *&v2[v47];
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints:v58];
}

void sub_1000526A4()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost;
  v5 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 view];
    if (!v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = v7;
    [v7 removeFromSuperview];

    [v6 didMoveToParentViewController:0];
    [v0 removeChildViewController:v6];

    v9 = *&v0[v4];
    *&v0[v4] = 0;
  }

  v10 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost;
  v11 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v12 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 removeFromSuperview];

  [v12 didMoveToParentViewController:0];
  [v0 removeChildViewController:v12];

  v15 = *&v0[v10];
  *&v0[v10] = 0;
}

void sub_100052810()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView];
  *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView] = v2;
  v5 = v2;

  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  v7 = *&v1[v3];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!*&v1[v3])
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 addSubview:?];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = objc_allocWithZone(BSUICAPackageView);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithPackageName:v13 inBundle:v11];

  v15 = objc_opt_self();
  if (!v14)
  {
    _StringGuts.grow(_:)(54);
    v35 = [v1 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 0xD000000000000034;
    v40._object = 0x80000001000D9D90;
    String.append(_:)(v40);
    isa = String._bridgeToObjectiveC()();

    [v15 logInfo:isa];
    goto LABEL_10;
  }

  _StringGuts.grow(_:)(30);
  v16 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x80000001000D9DD0;
  String.append(_:)(v17);
  v18 = String._bridgeToObjectiveC()();

  [v15 logInfo:v18];

  v19 = *&v1[v3];
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v14;
  [v19 addSubview:v20];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v20 setUserInteractionEnabled:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000D24B0;
  v22 = [v20 widthAnchor];
  v23 = [v22 constraintEqualToConstant:47.0];

  *(v21 + 32) = v23;
  v24 = [v20 heightAnchor];

  v25 = [v24 constraintEqualToConstant:47.0];
  *(v21 + 40) = v25;
  v26 = [v20 centerXAnchor];

  v27 = *&v1[v3];
  if (!v27)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = [v27 centerXAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v21 + 48) = v29;
  v30 = [v20 centerYAnchor];

  v31 = *&v1[v3];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v32 = objc_opt_self();
  v33 = [v31 centerYAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];

  *(v21 + 56) = v34;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];

LABEL_10:
}

id sub_100052D80()
{
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v0;
  result = [result view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = [result view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = result;
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v6) = 1144750080;
  [v5 setContentHuggingPriority:0 forAxis:v6];
  v7 = [v5 trailingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  v9 = [result trailingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:-16.0];
  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];
  v12 = [v3 trailingAnchor];
  v13 = [v5 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  LODWORD(v15) = 1148846080;
  [v14 setPriority:v15];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000D3860;
  v17 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView;
  result = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAnimationView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = v10;
  v18 = [result leadingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = result;
  v20 = [result leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:17.5];
  *(v16 + 32) = v21;
  result = *&v2[v17];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = [result trailingAnchor];
  v23 = [v3 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v16 + 40) = v24;
  result = *&v2[v17];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = [result topAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = result;
  v27 = [result topAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:17.0];
  *(v16 + 48) = v28;
  result = *&v2[v17];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [result bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = result;
  v31 = [result bottomAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-19.5];
  *(v16 + 56) = v32;
  result = *&v2[v17];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = [result widthAnchor];
  result = *&v2[v17];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = [result heightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v16 + 64) = v35;
  *(v16 + 72) = v14;
  v47 = v14;
  v36 = [v5 bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = result;
  v38 = [result bottomAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:-17.0];
  *(v16 + 80) = v39;
  v40 = [v3 leadingAnchor];
  result = *&v2[v17];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = [result trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:1.5];

  *(v16 + 88) = v42;
  v43 = [v3 bottomAnchor];
  result = [v2 view];
  if (result)
  {
    v44 = result;
    v45 = [result bottomAnchor];

    v46 = [v43 constraintEqualToAnchor:v45 constant:-19.0];
    *(v16 + 96) = v46;
    *(v16 + 104) = v48;

    return v16;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1000533DC()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  [v1 logInfo:v2];

  v3 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost;
  v4 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertLeadingHost);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 superview];

  if (v7)
  {

    v8 = *(v0 + v3);
    if (!v8)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v8 view];
    if (!v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = v9;
    [v9 removeFromSuperview];
  }

  v11 = *(v0 + v3);
  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v11 removeFromParentViewController];
  v12 = *(v0 + v3);
  *(v0 + v3) = 0;

  v13 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost;
  v14 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmAlertTrailingHost);
  if (!v14)
  {
LABEL_16:
    v23 = String._bridgeToObjectiveC()();
    [v1 logInfo:v23];
    v22 = v23;
    goto LABEL_17;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [v15 superview];

  if (v17)
  {

    v18 = *(v0 + v13);
    if (!v18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v19 = [v18 view];
    if (!v19)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 removeFromSuperview];
  }

  v21 = *(v0 + v13);
  if (!v21)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v21 removeFromParentViewController];
  v22 = *(v0 + v13);
  *(v0 + v13) = 0;
LABEL_17:
}

void sub_100053614()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost];
  if (!v2)
  {
    return;
  }

  v3 = objc_opt_self();
  v4 = v2;
  _StringGuts.grow(_:)(40);
  v5 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = 0xD000000000000026;
  v6._object = 0x80000001000D9CB0;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v3 logDebug:v7];

  v24 = v4;
  v8 = [v24 view];
  if (!v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = [v8 superview];

  v11 = v24;
  if (v10)
  {

    v11 = [v24 view];
    if (!v11)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v11 removeFromSuperview];
  }

  _StringGuts.grow(_:)(39);
  v12 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v13._object = 0x80000001000D9CE0;
  v13._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  [v3 logDebug:v14];

  v15 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost;
  v16 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = [v16 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 superview];

  if (v19)
  {

    v20 = *&v1[v15];
    if (!v20)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = [v20 view];
    if (!v21)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v22 = v21;
    [v21 removeFromSuperview];
  }

  v23 = *&v1[v15];
  if (!v23)
  {
    goto LABEL_20;
  }

  [v23 removeFromParentViewController];
  [v24 removeFromParentViewController];
}

void sub_10005392C()
{
  v1 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  v5 = [v3 superview];

  if (v5)
  {

    v6 = *(v0 + v1);
    if (!v6)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = [v6 view];
    if (!v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

  v9 = *(v0 + v1);
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v9 removeFromParentViewController];
  v10 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing;
  v11 = *(v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing);
  if (v11)
  {
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 superview];

      if (v14)
      {

        v15 = *(v0 + v10);
        if (!v15)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v16 = [v15 view];
        if (!v16)
        {
LABEL_28:
          __break(1u);
          return;
        }

        v17 = v16;
        [v16 removeFromSuperview];
      }

      v18 = *(v0 + v10);
      if (v18)
      {

        [v18 removeFromParentViewController];
        return;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  [v19 logInfo:v20];
}

void sub_100053B50(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(45);

  v61 = 0xD00000000000002BLL;
  v62 = 0x80000001000D9C20;
  v5 = [a1 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:v10];

  v11 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading])
  {
    goto LABEL_9;
  }

  if (qword_100113620 != -1)
  {
    swift_once();
  }

  v12 = qword_10011F4F8;
  v65 = type metadata accessor for AlarmCoordinator();
  v66 = &off_1001023C0;
  v62 = v12;
  v13 = objc_opt_self();

  v14 = [v13 mtOrange];
  v15 = Color.init(uiColor:)();
  v16 = [v13 mtOrange];
  Color.init(uiColor:)();
  v17 = Color.opacity(_:)();

  v18 = static Color.white.getter();
  static Color.white.getter();
  v19 = Color.opacity(_:)();

  v68 = &type metadata for StandardSessionUiConfig;
  v69 = &off_1001035E8;
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v17;
  v20[4] = v18;
  v20[5] = v19;
  v67 = v20;
  v61 = a1;
  v21 = objc_allocWithZone(sub_1000032D4(&qword_100116290, &qword_1000D39A0));
  *&v21[*((swift_isaMask & *v21) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100025B60(&v61, &v60);
  v22 = a1;
  v23 = UIHostingController.init(rootView:)();
  sub_10005733C(&v61);
  v24 = v23;
  v25 = [v24 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [v24 view];
  if (!v27)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 layer];

  [v29 setAllowsHitTesting:1];
  [v2 addChildViewController:v24];
  v30 = [v2 view];
  if (!v30)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = v30;
  v32 = [v24 view];

  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v31 addSubview:v32];

  [v24 didMoveToParentViewController:v2];
  v33 = *&v2[v11];
  *&v2[v11] = v24;

LABEL_9:
  v34 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing;
  if (!*&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing])
  {
    v35 = objc_allocWithZone(sub_1000032D4(&qword_100116298, &qword_1000D39A8));
    v61 = a1;
    v62 = sub_10002DB3C;
    v63 = 0;
    v64 = 0;
    *&v35[*((swift_isaMask & *v35) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v36 = a1;
    v37 = UIHostingController.init(rootView:)();
    v38 = [v37 view];
    if (v38)
    {
      v39 = v38;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

      v40 = [v37 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 layer];

        [v42 setAllowsHitTesting:0];
        [v2 addChildViewController:v37];
        v43 = [v2 view];
        if (v43)
        {
          v44 = v43;
          v45 = [v37 view];

          if (v45)
          {
            [v44 addSubview:v45];

            [v37 didMoveToParentViewController:v2];
            v46 = *&v2[v34];
            *&v2[v34] = v37;

            goto LABEL_15;
          }

LABEL_30:
          __break(1u);
          return;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_15:
  v47 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints;
  v48 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints];
  if (v48 >> 62)
  {
    if (v48 < 0)
    {
      v59 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeConstraints];
    }

    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49)
  {
    v50 = objc_opt_self();
    v51 = *&v2[v47];
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 deactivateConstraints:isa];

    v53 = *&v2[v47];
    *&v2[v47] = &_swiftEmptyArrayStorage;
  }

  v54 = sub_10005423C();
  v55 = *&v2[v47];
  *&v2[v47] = v54;

  v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_preventsInteractiveDismissal] = 0;
  v56 = objc_opt_self();
  v57 = *&v2[v47];
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints:v58];
}

id sub_10005423C()
{
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostLeading];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0;
  result = [result view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  result = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_alarmSnoozeExpandedHostTrailing];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [result view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D24B0;
  v6 = [v3 leadingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [v3 bottomAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  v12 = [result bottomAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-17.0];
  *(v5 + 40) = v13;
  v14 = [v4 trailingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  v16 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v5 + 48) = v18;
  v19 = [v4 bottomAnchor];
  result = [v2 view];
  if (result)
  {
    v20 = result;
    v21 = [result bottomAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:-13.0];
    *(v5 + 56) = v22;

    return v5;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_100054540(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_activeLayoutMode];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_42;
      }

      v12 = objc_opt_self();
      _StringGuts.grow(_:)(32);
      v13 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14._countAndFlagsBits = 0xD00000000000001ELL;
      v14._object = 0x80000001000D9EE0;
      String.append(_:)(v14);
      v15 = String._bridgeToObjectiveC()();

      [v12 logInfo:v15];

      sub_1000526A4();
    }

    else
    {
      v30 = objc_opt_self();
      _StringGuts.grow(_:)(31);
      v31 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v32._object = 0x80000001000D9F60;
      v32._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v32);
      v33 = String._bridgeToObjectiveC()();

      [v30 logInfo:v33];
    }

    v34 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
    if (v34)
    {
      [v34 setHidden:1];
    }

    v35 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
    if (v35)
    {
      [v35 setHidden:1];
    }

    v22 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
    if (!v22)
    {
      return;
    }

LABEL_38:

    [v22 setHidden:1];
    return;
  }

  if (v3 == 2)
  {
    v16 = objc_opt_self();
    _StringGuts.grow(_:)(31);
    v17 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v18._object = 0x80000001000D9F40;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v16 logInfo:v19];

    sub_1000526A4();
    v20 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
    if (v20)
    {
      [v20 setHidden:0];
    }

    v21 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
    if (v21)
    {
      [v21 setHidden:1];
    }

    v22 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
    if (!v22)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v3 == 3)
  {
    v23 = objc_opt_self();
    _StringGuts.grow(_:)(31);
    v24 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v25._object = 0x80000001000D9F20;
    v25._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v25);
    v26 = String._bridgeToObjectiveC()();

    [v23 logInfo:v26];

    sub_1000526A4();
    v27 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
    if (v27)
    {
      [v27 setHidden:0];
    }

    v28 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
    if (v28)
    {
      [v28 setHidden:0];
    }

    v29 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
    if (v29)
    {
      [v29 setHidden:1];
    }

    v39 = [objc_msgSend(a2 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (v39)
    {
      if ([v39 isUserInitiated])
      {
        sub_100054D90();
      }

      goto LABEL_44;
    }

    return;
  }

  if (v3 != 4)
  {
LABEL_42:
    v36 = objc_opt_self();
    _StringGuts.grow(_:)(35);
    v37 = [a2 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v38._countAndFlagsBits = 0xD000000000000021;
    v38._object = 0x80000001000D9EB0;
    String.append(_:)(v38);
    v39 = String._bridgeToObjectiveC()();

    [v36 logInfo:v39];
    goto LABEL_44;
  }

  v4 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
  if (v4)
  {
    [v4 setHidden:1];
  }

  v5 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
  if (v5)
  {
    [v5 setHidden:1];
  }

  v6 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_minimalView];
  if (v6)
  {
    [v6 setHidden:1];
  }

  v7 = objc_opt_self();
  _StringGuts.grow(_:)(30);
  v8 = [a2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001000D9F00;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v7 logInfo:v10];

  v11 = sub_100055180();
  if (v11)
  {
    v39 = v11;
    if ([v11 isFiring])
    {
      sub_100051FB4(v39);
    }

    else
    {
      sub_100053B50(v39);
    }

LABEL_44:
  }
}

void *sub_100054D90()
{
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(25);
  v2 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._object = 0x80000001000D9BB0;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 logInfo:v4];

  result = sub_100055180();
  if (result)
  {
    v30 = result;
    if ([result isFiring])
    {
      if ([v30 allowsSnooze])
      {
        _StringGuts.grow(_:)(34);
        v6 = [v0 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v7._countAndFlagsBits = 0xD00000000000001ELL;
        v7._object = 0x80000001000D9C00;
        String.append(_:)(v7);
        v8 = [v30 alarmIDString];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        v12._countAndFlagsBits = v9;
        v12._object = v11;
        String.append(_:)(v12);

        v13 = String._bridgeToObjectiveC()();

        [v1 logInfo:v13];

        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v14 = [v30 alarmIDString];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        sub_10007730C(v15, v17);
      }

      else
      {
        _StringGuts.grow(_:)(36);
        v18 = [v0 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19._countAndFlagsBits = 0xD000000000000020;
        v19._object = 0x80000001000D9BD0;
        String.append(_:)(v19);
        v20 = [v30 alarmIDString];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25 = String._bridgeToObjectiveC()();

        [v1 logInfo:v25];

        if (qword_100113620 != -1)
        {
          swift_once();
        }

        v26 = [v30 alarmIDString];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        sub_100076AA0(v27, v29);
      }
    }

    return _objc_release_x2();
  }

  return result;
}

void *sub_100055180()
{
  v1 = v0;
  v2 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = objc_opt_self();
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v7 = [v0 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v39 = v8;
  v40 = v10;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x80000001000D9B50;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v6 logInfo:v12];

  v13 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];
  if (!v13)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v26 = [v0 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v39 = v27;
    v40 = v29;
    v30._object = 0x80000001000D9B70;
    v30._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v30);
    v31 = String._bridgeToObjectiveC()();

    [v6 logInfo:v31];

    return 0;
  }

  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId];
  v15 = qword_100113600;
  v16 = *&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8];

  if (v15 != -1)
  {
    swift_once();
  }

  v37 = v14;
  v38 = v13;

  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v39);
  v17 = v37;
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v18 = [v1 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v39 = v19;
  v40 = v21;
  v22._countAndFlagsBits = 0xD00000000000001CLL;
  v22._object = 0x80000001000D9B90;
  String.append(_:)(v22);
  v37 = v17;
  v23 = v17;
  sub_1000032D4(&unk_100116280, &qword_1000D3998);
  v24._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v24);

  v25 = String._bridgeToObjectiveC()();

  [v6 logInfo:v25];

  if (!v17)
  {
    if (qword_100113620 != -1)
    {
      swift_once();
    }

    v32 = qword_10011F4F8;
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v32;
    v34[5] = v14;
    v34[6] = v13;

    sub_100075B64(0, 0, v5, &unk_1000D3290, v34);

    return 0;
  }

  return v17;
}

void sub_100055624(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  sub_10002BB3C(0, &qword_100115DB0, MTAlarm_ptr);
  if (swift_dynamicCast())
  {
    v37 = v5;

    v14 = objc_opt_self();
    aBlock = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    aBlock = 0xD000000000000013;
    v39 = 0x80000001000D9B10;
    v15 = [v2 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20 = String._bridgeToObjectiveC()();

    [v14 logInfo:v20];

    v21 = sub_100055180();
    if (v21)
    {
      v22 = v21;
      v23 = String._bridgeToObjectiveC()();
      [v14 logInfo:v23];

      sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
      v24 = static OS_dispatch_queue.main.getter();
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      *(v25 + 24) = v22;
      v42 = sub_1000571D0;
      v43 = v25;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_10004B270;
      v41 = &unk_1001013D8;
      v26 = _Block_copy(&aBlock);
      v27 = v2;
      v28 = v22;

      static DispatchQoS.unspecified.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_1000571F8(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000032D4(&unk_100115D90, qword_1000D3C00);
      sub_100057240();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v37 + 8))(v8, v4);
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v36 = String._bridgeToObjectiveC()();
      [v14 logInfo:v36];
    }
  }

  else
  {
    v29 = objc_opt_self();
    aBlock = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    aBlock = 0xD000000000000014;
    v39 = 0x80000001000D9AF0;
    v30 = [v2 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35 = String._bridgeToObjectiveC()();

    [v29 logInfo:v35];
  }
}

void sub_100055B60(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId + 8);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_sessionId);
    sub_10002B00C(a1, v20);

    sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
    sub_10002BB3C(0, &qword_100115DB0, MTAlarm_ptr);
    if (swift_dynamicCast())
    {
      v5 = [v19 alarmIDString];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (v3 == v6 && v2 == v8)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {

          return;
        }
      }

      v11 = objc_opt_self();
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v12._object = 0x80000001000D9AC0;
      v12._countAndFlagsBits = 0xD000000000000026;
      String.append(_:)(v12);
      v13 = a1;
      v14 = *(a1 + 24);
      v15 = *(a1 + 32);
      sub_100025B1C(v13, v14);
      v16 = *(v15 + 8);
      v20[3] = swift_getAssociatedTypeWitness();
      v20[4] = swift_getAssociatedConformanceWitness();
      sub_10005712C(v20);
      dispatch thunk of Identifiable.id.getter();
      sub_1000032D4(&unk_1001180D0, &qword_1000D3990);
      _print_unlocked<A, B>(_:_:)();
      sub_100017D28(v20);
      v17._countAndFlagsBits = 0x696E61656C63202CLL;
      v17._object = 0xED0000707520676ELL;
      String.append(_:)(v17);
      v18 = String._bridgeToObjectiveC()();

      [v11 logInfo:v18];

      if (qword_100113600 != -1)
      {
        swift_once();
      }

      sub_1000571F8(&unk_100116250, type metadata accessor for AlarmApertureElementController);
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.deregisterObserver(_:for:)();

      sub_10004E3D4(v20);
    }

    else
    {
    }
  }
}

void sub_100055EAC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v92 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v92 - v17;
  __chkstk_darwin(v16);
  v20 = &v92 - v19;
  v21 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost;
  v22 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeTrailingHost];
  if (!v22 || (v23 = [v22 parentViewController]) == 0)
  {
    v95 = v15;
    v24 = [a1 snoozeFireDate];
    if (v24)
    {
      v25 = v24;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v11 + 32))(v20, v18, v10);
      v93 = objc_opt_self();
      v100 = 0;
      v101 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v26 = [v2 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v10;
      v28 = v27;
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v32._countAndFlagsBits = 0xD00000000000002ELL;
      v32._object = 0x80000001000D9A50;
      String.append(_:)(v32);
      v33 = [v2 view];
      v99 = v33;
      sub_1000032D4(&qword_100116228, &unk_1000D5BA0);
      _print_unlocked<A, B>(_:_:)();

      v34._countAndFlagsBits = 0x696C69617274202CLL;
      v34._object = 0xEC000000203A676ELL;
      String.append(_:)(v34);
      v35 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
      v99 = v35;
      sub_1000032D4(&unk_100116230, &qword_1000D3970);
      _print_unlocked<A, B>(_:_:)();
      v36 = String._bridgeToObjectiveC()();

      [v93 logInfo:v36];

      v37 = *(v4 + 20);
      v94 = v11;
      v38 = *(v11 + 16);
      v96 = v20;
      v38(&v9[v37], v20, v97);
      v39 = [objc_opt_self() mtOrange];
      *&v9[*(v4 + 24)] = Color.init(uiColor:)();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *v9 = sub_10002555C;
      *(v9 + 1) = v40;
      v9[16] = 0;
      v41 = objc_allocWithZone(sub_1000032D4(&qword_100119800, &qword_1000D3978));
      *&v41[*((swift_isaMask & *v41) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      sub_10005706C(v9, v98);
      v42 = UIHostingController.init(rootView:)();
      sub_1000570D0(v9);
      v43 = *&v2[v21];
      *&v2[v21] = v42;
      v44 = v42;

      v45 = [v44 view];
      if (v45)
      {
        [v45 setTranslatesAutoresizingMaskIntoConstraints:0];

        if (*&v2[v21])
        {
          [v2 addChildViewController:?];
          v46 = *&v2[v21];
          v47 = v94;
          if (v46)
          {
            [v46 didMoveToParentViewController:v2];
            if (v35)
            {
              v48 = *&v2[v21];
              if (!v48)
              {
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

              v49 = [v48 view];
              if (!v49)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v50 = v49;
              [v35 addSubview:v49];

              v51 = v95;
              Date.init()();
              Date.timeIntervalSince(_:)();
              (*(v47 + 8))(v51, v97);
              sub_10008BEF0();
              v52 = String._bridgeToObjectiveC()();

              [v35 setAccessibilityLabel:v52];

              v53 = v35;
              v54 = [v2 view];
              if (!v54)
              {
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

              v55 = v54;
              [v54 addSubview:v53];
            }

            else
            {
              v100 = 0;
              v101 = 0xE000000000000000;
              _StringGuts.grow(_:)(25);
              v62 = [v2 description];
              v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v65 = v64;

              v100 = v63;
              v101 = v65;
              v66._countAndFlagsBits = 0xD000000000000017;
              v66._object = 0x80000001000D9A80;
              String.append(_:)(v66);
              v55 = String._bridgeToObjectiveC()();

              [v93 logInfo:v55];
            }

            v67 = v97;

            v68 = objc_allocWithZone(sub_1000032D4(&unk_100116240, &unk_1000D3980));
            v100 = 0x402F000000000000;
            *&v68[*((swift_isaMask & *v68) + qword_10011F398 + 16) + 8] = 0;
            swift_unknownObjectWeakInit();
            v69 = UIHostingController.init(rootView:)();
            v70 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost;
            v71 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost];
            *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_compressedSnoozeLeadingHost] = v69;
            v72 = v69;

            v73 = [v72 view];
            if (v73)
            {
              [v73 setTranslatesAutoresizingMaskIntoConstraints:0];

              v74 = v95;
              if (*&v2[v70])
              {
                [v2 addChildViewController:?];
                v75 = *&v2[v70];
                if (v75)
                {
                  [v75 didMoveToParentViewController:v2];
                  v76 = *&v2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_leadingView];
                  if (!v76)
                  {
                    v100 = 0;
                    v101 = 0xE000000000000000;
                    _StringGuts.grow(_:)(24);
                    v84 = [v2 description];
                    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v87 = v86;

                    v100 = v85;
                    v101 = v87;
                    v88._countAndFlagsBits = 0xD000000000000016;
                    v88._object = 0x80000001000D9AA0;
                    String.append(_:)(v88);
                    v83 = String._bridgeToObjectiveC()();

                    [v93 logInfo:v83];
LABEL_26:
                    v89 = v96;

                    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
                    v91 = v94;
                    if (IsVoiceOverRunning || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
                    {
                      [objc_msgSend(v2 "systemApertureElementContext")];
                      swift_unknownObjectRelease();
                      sub_100056968(v89);
                    }

                    (*(v91 + 8))(v89, v67);
                    return;
                  }

                  v77 = *&v2[v70];
                  if (v77)
                  {
                    v78 = [v77 view];
                    if (v78)
                    {
                      v79 = v78;
                      [v76 addSubview:v78];

                      Date.init()();
                      Date.timeIntervalSince(_:)();
                      (*(v47 + 8))(v74, v67);
                      sub_10008BEF0();
                      v80 = String._bridgeToObjectiveC()();

                      [v76 setAccessibilityLabel:v80];

                      v81 = v76;
                      v82 = [v2 view];
                      if (v82)
                      {
                        v83 = v82;
                        [v82 addSubview:v81];

                        goto LABEL_26;
                      }

LABEL_42:
                      __break(1u);
                      return;
                    }

LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }

LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

                goto LABEL_36;
              }

LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }

    v56 = objc_opt_self();
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v57 = [v2 description];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v100 = v58;
    v101 = v60;
    v61._object = 0x80000001000D9A30;
    v61._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v61);
    v98 = String._bridgeToObjectiveC()();

    [v56 logInfo:v98];
    v23 = v98;
  }
}

void sub_100056968(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_voiceOverTimer])
  {
    v7 = objc_opt_self();
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    aBlock[4] = sub_100056FA8;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100082B6C;
    aBlock[3] = &unk_100101360;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    v12 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
    _Block_release(v10);
    v13 = *&v1[v6];
    *&v1[v6] = v12;
  }
}

uint64_t sub_100056B5C(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a2[OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_trailingView];
  if (v8)
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    (*(v4 + 8))(v7, v3);
    sub_10008BEF0();
    v9 = String._bridgeToObjectiveC()();

    [v8 setAccessibilityLabel:v9];
  }

  [objc_msgSend(a2 "systemApertureElementContext")];
  return swift_unknownObjectRelease();
}

void sub_100056CE4()
{
  sub_100056DFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100056DFC()
{
  if (!qword_100119590)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100119590);
    }
  }
}

uint64_t sub_100056E5C()
{
  v1 = (*v0 + OBJC_IVAR____TtC10ClockAngel30AlarmApertureElementController_observerId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_100056EE4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100056FA8(uint64_t a1)
{
  v3 = *(*(type metadata accessor for Date() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100056B5C(a1, v4);
}

uint64_t sub_10005701C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057034()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005706C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000570D0(uint64_t a1)
{
  v2 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10005712C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100057190()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000571D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10005159C(v1);
}

uint64_t sub_1000571F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100057240()
{
  result = qword_100116270;
  if (!qword_100116270)
  {
    sub_10001C820(&unk_100115D90, qword_1000D3C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116270);
  }

  return result;
}

uint64_t sub_1000572A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000572EC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057390()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000573D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000574B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057520(uint64_t a1)
{
  v2 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100057598(uint64_t a1)
{
  v58 = sub_1000032D4(&qword_1001165B0, &unk_1000D3B70);
  v66 = *(v58 - 8);
  v3 = *(v66 + 64);
  __chkstk_darwin(v58);
  v57 = &v55 - v4;
  v71 = sub_1000032D4(&qword_1001165B8, &qword_1000D4B00);
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  __chkstk_darwin(v71);
  v70 = &v55 - v6;
  v7 = type metadata accessor for CurrentLocationResult(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v55 - v12;
  v13 = sub_1000032D4(&qword_1001165C0, &unk_1000D3B80);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v18 = sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v60 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v63 = &v55 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v55 - v25;
  __chkstk_darwin(v24);
  v28 = &v55 - v27;
  v29 = *(*v1 + 96);
  swift_beginAccess();
  v65 = a1;
  sub_10005C118(a1, v28, type metadata accessor for CurrentLocationResult);
  v64 = v8[7];
  (v64)(v28, 0, 1, v7);
  v30 = *(v14 + 56);
  v67 = v1;
  v68 = v29;
  sub_10002CFC4(v1 + v29, v17, &qword_1001165C8, &unk_1000D4DE0);
  sub_10002CFC4(v28, &v17[v30], &qword_1001165C8, &unk_1000D4DE0);
  v31 = v8[6];
  v32 = v31(v17, 1, v7);
  v61 = v8 + 6;
  if (v32 == 1)
  {
    sub_10002D02C(v28, &qword_1001165C8, &unk_1000D4DE0);
    if (v31(&v17[v30], 1, v7) == 1)
    {
      return sub_10002D02C(v17, &qword_1001165C8, &unk_1000D4DE0);
    }
  }

  else
  {
    sub_10002CFC4(v17, v26, &qword_1001165C8, &unk_1000D4DE0);
    if (v31(&v17[v30], 1, v7) != 1)
    {
      v52 = &v17[v30];
      v53 = v59;
      sub_10005C180(v52, v59, type metadata accessor for CurrentLocationResult);
      v54 = sub_10005BA9C(v26, v53);
      sub_10005BE04(v53, type metadata accessor for CurrentLocationResult);
      sub_10002D02C(v28, &qword_1001165C8, &unk_1000D4DE0);
      sub_10005BE04(v26, type metadata accessor for CurrentLocationResult);
      result = sub_10002D02C(v17, &qword_1001165C8, &unk_1000D4DE0);
      if (v54)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10002D02C(v28, &qword_1001165C8, &unk_1000D4DE0);
    sub_10005BE04(v26, type metadata accessor for CurrentLocationResult);
  }

  sub_10002D02C(v17, &qword_1001165C0, &unk_1000D3B80);
LABEL_7:
  v34 = v63;
  sub_10005C118(v65, v63, type metadata accessor for CurrentLocationResult);
  v65 = v7;
  (v64)(v34, 0, 1, v7);
  v64 = v31;
  v36 = v67;
  v35 = v68;
  swift_beginAccess();
  sub_10004EC60(v34, v36 + v35, &qword_1001165C8, &unk_1000D4DE0);
  swift_endAccess();
  v37 = *(*v36 + 112);
  swift_beginAccess();
  v38 = *(v36 + v37);
  v39 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 64);
  v43 = (v40 + 63) >> 6;
  v63 = v69 + 16;
  v55 = (v66 + 8);
  v62 = (v69 + 8);
  v66 = v38;
  result = swift_bridgeObjectRetain_n();
  v44 = 0;
  v45 = v70;
  v46 = v60;
  while (v42)
  {
LABEL_17:
    (*(v69 + 16))(v45, *(v66 + 56) + *(v69 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v71);
    sub_10002CFC4(v67 + v68, v46, &qword_1001165C8, &unk_1000D4DE0);
    if (v64(v46, 1, v65) == 1)
    {
      sub_10002D02C(v46, &qword_1001165C8, &unk_1000D4DE0);
    }

    else
    {
      v48 = v46;
      v49 = v56;
      sub_10005C180(v48, v56, type metadata accessor for CurrentLocationResult);
      sub_10005C118(v49, v59, type metadata accessor for CurrentLocationResult);
      v50 = v57;
      AsyncStream.Continuation.yield(_:)();
      v45 = v70;
      (*v55)(v50, v58);
      v51 = v49;
      v46 = v60;
      sub_10005BE04(v51, type metadata accessor for CurrentLocationResult);
    }

    v42 &= v42 - 1;
    result = (*v62)(v45, v71);
  }

  while (1)
  {
    v47 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v47 >= v43)
    {
    }

    v42 = *(v39 + 8 * v47);
    ++v44;
    if (v42)
    {
      v44 = v47;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100057DA0(uint64_t a1)
{
  v91 = a1;
  v82 = sub_1000032D4(&qword_1001165F8, &unk_1000D3BB0);
  v87 = *(v82 - 8);
  v2 = *(v87 + 64);
  __chkstk_darwin(v82);
  v81 = &v72 - v3;
  v86 = sub_1000032D4(&qword_100116600, &unk_1000D4E80);
  v92 = *(v86 - 8);
  v4 = *(v92 + 64);
  __chkstk_darwin(v86);
  v94 = &v72 - v5;
  v89 = sub_1000032D4(&qword_100116608, &qword_1000D3BC0);
  v76 = *(v89 - 1);
  v6 = *(v76 + 64);
  __chkstk_darwin(v89);
  v72 = &v72 - v7;
  v8 = sub_1000032D4(&qword_100116610, &qword_1000D3BC8);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v80 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v79 = &v72 - v14;
  __chkstk_darwin(v13);
  v73 = &v72 - v15;
  v74 = sub_1000032D4(&qword_100116618, &qword_1000D3BD0);
  v16 = *(*(v74 - 1) + 64);
  __chkstk_darwin(v74);
  v75 = &v72 - v17;
  v18 = sub_1000032D4(&qword_100116620, &qword_1000D3BD8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v72 - v21;
  v23 = sub_1000032D4(&qword_100116628, &qword_1000D3BE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v84 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v88 = &v72 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v72 - v30;
  __chkstk_darwin(v29);
  v33 = &v72 - v32;
  v34 = *(*v1 + 96);
  swift_beginAccess();
  sub_10002CFC4(v91, v33, &qword_100116610, &qword_1000D3BC8);
  v35 = v9[7];
  v78 = (v9 + 7);
  v77 = v35;
  v35(v33, 0, 1, v8);
  v36 = *(v19 + 56);
  v93 = v1;
  v83 = v34;
  sub_10002CFC4(v1 + v34, v22, &qword_100116628, &qword_1000D3BE0);
  sub_10002CFC4(v33, &v22[v36], &qword_100116628, &qword_1000D3BE0);
  v37 = v9[6];
  v38 = v37(v22, 1, v8);
  v85 = v9 + 6;
  v90 = v8;
  if (v38 == 1)
  {
    sub_10002D02C(v33, &qword_100116628, &qword_1000D3BE0);
    if (v37(&v22[v36], 1, v8) == 1)
    {
      return sub_10002D02C(v22, &qword_100116628, &qword_1000D3BE0);
    }

    goto LABEL_6;
  }

  sub_10002CFC4(v22, v31, &qword_100116628, &qword_1000D3BE0);
  if (v37(&v22[v36], 1, v8) == 1)
  {
    sub_10002D02C(v33, &qword_100116628, &qword_1000D3BE0);
    sub_10002D02C(v31, &qword_100116610, &qword_1000D3BC8);
LABEL_6:
    sub_10002D02C(v22, &qword_100116620, &qword_1000D3BD8);
    goto LABEL_7;
  }

  v62 = *(v74 + 12);
  v74 = v31;
  v63 = v75;
  sub_10002CFC4(v31, v75, &qword_100116610, &qword_1000D3BC8);
  sub_10002C7C4(&v22[v36], v63 + v62, &qword_100116610, &qword_1000D3BC8);
  v64 = v76;
  v65 = *(v76 + 48);
  v66 = v89;
  if (v65(v63, 1, v89) == 1)
  {
    sub_10002D02C(v33, &qword_100116628, &qword_1000D3BE0);
    if (v65(v63 + v62, 1, v66) == 1)
    {
      sub_10002D02C(v63, &qword_100116610, &qword_1000D3BC8);
      sub_10002D02C(v74, &qword_100116610, &qword_1000D3BC8);
      return sub_10002D02C(v22, &qword_100116628, &qword_1000D3BE0);
    }
  }

  else
  {
    v67 = v73;
    sub_10002CFC4(v63, v73, &qword_100116610, &qword_1000D3BC8);
    if (v65(v63 + v62, 1, v66) != 1)
    {
      v68 = v63 + v62;
      v69 = v72;
      (*(v64 + 32))(v72, v68, v66);
      sub_10002DAD8(&qword_100116630, &qword_100116608, &qword_1000D3BC0);
      v70 = dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = *(v64 + 8);
      v71(v69, v66);
      sub_10002D02C(v33, &qword_100116628, &qword_1000D3BE0);
      v71(v67, v66);
      sub_10002D02C(v63, &qword_100116610, &qword_1000D3BC8);
      sub_10002D02C(v74, &qword_100116610, &qword_1000D3BC8);
      result = sub_10002D02C(v22, &qword_100116628, &qword_1000D3BE0);
      v8 = v90;
      if (v70)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_10002D02C(v33, &qword_100116628, &qword_1000D3BE0);
    (*(v64 + 8))(v67, v66);
  }

  sub_10002D02C(v63, &qword_100116618, &qword_1000D3BD0);
  sub_10002D02C(v74, &qword_100116610, &qword_1000D3BC8);
  sub_10002D02C(v22, &qword_100116628, &qword_1000D3BE0);
  v8 = v90;
LABEL_7:
  v89 = v37;
  v40 = v88;
  sub_10002CFC4(v91, v88, &qword_100116610, &qword_1000D3BC8);
  v77(v40, 0, 1, v8);
  v41 = v93;
  v42 = v83;
  swift_beginAccess();
  v43 = &qword_100116628;
  sub_10004EC60(v40, v41 + v42, &qword_100116628, &qword_1000D3BE0);
  swift_endAccess();
  v44 = *(*v41 + 112);
  swift_beginAccess();
  v45 = *(v41 + v44);
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 64);
  v50 = (v47 + 63) >> 6;
  v88 = v92 + 16;
  v78 = (v87 + 8);
  v87 = v92 + 8;
  v91 = v45;
  result = swift_bridgeObjectRetain_n();
  v51 = 0;
  v52 = v86;
  v53 = v84;
  while (v49)
  {
LABEL_17:
    (*(v92 + 16))(v94, *(v91 + 56) + *(v92 + 72) * (__clz(__rbit64(v49)) | (v51 << 6)), v52);
    sub_10002CFC4(v93 + v42, v53, v43, &qword_1000D3BE0);
    if ((v89)(v53, 1, v90) == 1)
    {
      v54 = v53;
      v55 = v43;
      v56 = &qword_1000D3BE0;
    }

    else
    {
      v58 = v79;
      sub_10002C7C4(v53, v79, &qword_100116610, &qword_1000D3BC8);
      sub_10002CFC4(v58, v80, &qword_100116610, &qword_1000D3BC8);
      v59 = v43;
      v60 = v81;
      v53 = v84;
      AsyncStream.Continuation.yield(_:)();
      v52 = v86;
      v61 = v60;
      v43 = v59;
      (*v78)(v61, v82);
      v54 = v58;
      v42 = v83;
      v55 = &qword_100116610;
      v56 = &qword_1000D3BC8;
    }

    sub_10002D02C(v54, v55, v56);
    v49 &= v49 - 1;
    result = (*v87)(v94, v52);
  }

  while (1)
  {
    v57 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v57 >= v50)
    {
    }

    v49 = *(v46 + 8 * v57);
    ++v51;
    if (v49)
    {
      v51 = v57;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005890C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_10002BB3C(0, &qword_100116588, NSObject_ptr);
  v6 = *a1;
  v7 = *a2;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_10005B788(a1 + v8, a2 + v8);
}

id sub_10005899C()
{
  result = [objc_allocWithZone(type metadata accessor for LocationDataProvider(0)) init];
  qword_10011F4C0 = result;
  return result;
}

void sub_1000589D0(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_1000032D4(&qword_100116638, &qword_1000D3BE8);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin(v2);
  v44 = &v38 - v4;
  v5 = sub_1000032D4(&qword_100116640, &qword_1000D3BF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v48 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = &v38 - v10;
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = sub_1000032D4(&qword_1001165C8, &unk_1000D4DE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = *&v1[OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream];
  v21 = *(*v20 + 104);
  v22 = *(v20 + v21);
  swift_beginAccess();

  v23 = v1;
  os_unfair_lock_lock(v22 + 4);
  swift_endAccess();
  v24 = *(*v20 + 120);
  v25 = *(v20 + v24);
  if ((v25 & 1) == 0)
  {
    *(v20 + v24) = 1;
  }

  v26 = v21;
  v27 = *(v20 + v21);
  swift_beginAccess();
  os_unfair_lock_unlock(v27 + 4);
  swift_endAccess();
  v28 = type metadata accessor for CurrentLocationResult(0);
  v29 = *(*(v28 - 8) + 56);
  v29(v19, 1, 1, v28);
  if ((v25 & 1) == 0)
  {
    sub_100058F40(v17);
    v29(v17, 0, 1, v28);
    sub_10004EC60(v17, v19, &qword_1001165C8, &unk_1000D4DE0);
  }

  v47 = v23;
  v30 = sub_1000032D4(&qword_100116648, &qword_1000D3BF8);
  v42 = *(v30 - 8);
  v40 = *(v42 + 56);
  v41 = v42 + 56;
  v40(v12, 1, 1, v30);
  v31 = v26;
  v32 = *(v20 + v26);
  swift_beginAccess();
  os_unfair_lock_lock(v32 + 4);
  v33 = swift_endAccess();
  __chkstk_darwin(v33);
  *(&v38 - 2) = v20;
  *(&v38 - 1) = v19;
  v38 = v19;
  (*(v45 + 104))(v44, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v46);
  v34 = v43;
  AsyncStream.init(_:bufferingPolicy:_:)();
  sub_10002D02C(v12, &qword_100116640, &qword_1000D3BF0);
  v40(v34, 0, 1, v30);
  sub_10002C7C4(v34, v12, &qword_100116640, &qword_1000D3BF0);
  v35 = *(v20 + v31);
  swift_beginAccess();
  os_unfair_lock_unlock(v35 + 4);
  swift_endAccess();
  v36 = v48;
  v37 = v42;
  sub_10002CFC4(v12, v48, &qword_100116640, &qword_1000D3BF0);
  if ((*(v37 + 48))(v36, 1, v30) == 1)
  {

    __break(1u);
  }

  else
  {

    sub_10002D02C(v12, &qword_100116640, &qword_1000D3BF0);
    (*(v37 + 32))(v39, v36, v30);
    sub_10002D02C(v38, &qword_1001165C8, &unk_1000D4DE0);
  }
}

uint64_t sub_100058F40@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_10005C228;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004B270;
  aBlock[3] = &unk_100101558;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10005C248(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000032D4(&unk_100115D90, qword_1000D3C00);
  sub_10002DAD8(&qword_100116270, &unk_100115D90, qword_1000D3C00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v18);

  v14 = type metadata accessor for CurrentLocation(0);
  v15 = v19;
  (*(*(v14 - 8) + 56))(v19, 1, 1, v14);
  result = type metadata accessor for CurrentLocationResult(0);
  *(v15 + *(result + 20)) = 1;
  return result;
}

id sub_10005926C()
{
  v1 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1000592DC(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10005BE64(v4);
  }

  sub_10005BE74(v2);
  return v3;
}

id sub_1000592DC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  v3 = objc_allocWithZone(CLLocationManager);
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithEffectiveBundleIdentifier:v5 delegate:a1 onQueue:v4];

  if (v6)
  {
    swift_beginAccess();
    sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
    Measurement.value.getter();
    v8 = v7;
    swift_endAccess();
    [v6 setDistanceFilter:v8];
    [v6 setDesiredAccuracy:kCLLocationAccuracyKilometer];
  }

  else
  {
    v9 = objc_opt_self();
    _StringGuts.grow(_:)(66);
    v10._countAndFlagsBits = 0xD000000000000040;
    v10._object = 0x80000001000DA170;
    String.append(_:)(v10);
    v11._object = 0x80000001000D8A60;
    v11._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v11);
    v12 = String._bridgeToObjectiveC()();

    [v9 logInfo:v12];
  }

  return v6;
}

id sub_10005949C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v37[2] = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v37 - v13;
  v15 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating;
  sub_1000032D4(&qword_1001165D0, &qword_1000D3B90);
  v16 = swift_allocObject();
  v37[1] = type metadata accessor for CPUnfairLock();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  *&v1[v15] = v16;
  v18 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__location;
  v19 = type metadata accessor for CurrentLocation(0);
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = sub_1000032D4(&qword_1001165D8, &qword_1000D3B98);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v23[2] = v24;
  sub_10002C7C4(v14, v23 + *(*v23 + 96), &qword_100116398, &unk_1000D3A00);
  *&v1[v18] = v23;
  v25 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue;
  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  v41 = &_swiftEmptyArrayStorage;
  sub_10005C248(&qword_1001176E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000032D4(&unk_1001165E0, &qword_1000D3BA0);
  sub_10002DAD8(&qword_1001176F0, &unk_1001165E0, &qword_1000D3BA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream;
  v27 = sub_1000032D4(&qword_1001165F0, &qword_1000D3BA8);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = *(*v30 + 96);
  v32 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  v33 = *(*v30 + 104);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v30 + v33) = v34;
  *(v30 + *(*v30 + 112)) = &_swiftEmptyDictionarySingleton;
  *(v30 + *(*v30 + 120)) = 0;
  *&v1[v26] = v30;
  v35 = [objc_opt_self() meters];
  sub_10002BB3C(0, &qword_100116330, NSUnitLength_ptr);
  Measurement.init(value:unit:)();
  *&v1[OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager] = 1;
  v40.receiver = v1;
  v40.super_class = ObjectType;
  return objc_msgSendSuper2(&v40, "init");
}

id sub_100059A1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100059B44()
{
  sub_100059BFC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100059BFC()
{
  if (!qword_100116328)
  {
    sub_10002BB3C(255, &qword_100116330, NSUnitLength_ptr);
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &qword_100116328);
    }
  }
}

void sub_100059C64()
{
  if (sub_100059D20())
  {
    v0 = objc_opt_self();
    v1 = String._bridgeToObjectiveC()();
    [v0 logInfo:v1];

    v2 = sub_10005926C();
    [v2 startUpdatingLocation];
  }
}

uint64_t sub_100059D20()
{
  result = sub_10005926C();
  if (result)
  {
    v2 = result;
    v3 = [result _authorizationStatus];
    if (v3 <= 1)
    {
      if (!v3)
      {
        v8 = objc_opt_self();
        v9 = String._bridgeToObjectiveC()();
        [v8 logInfo:v9];

        v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager);
        if (v10)
        {
          v11 = v10;
          v12 = String._bridgeToObjectiveC()();
          [v8 logInfo:v12];
LABEL_16:

          [v11 requestWhenInUseAuthorizationWithPrompt];
          sub_10005BE64(v10);
          return 0;
        }

LABEL_10:

        return 0;
      }

      if (v3 != 1)
      {
LABEL_14:
        v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider____lazy_storage___locationManager);
        if (v10)
        {
          v13 = objc_opt_self();
          v11 = v10;
          v12 = String._bridgeToObjectiveC()();
          [v13 logInfo:v12];
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 4 || v3 == 3)
      {
        v6 = objc_opt_self();
        v7 = String._bridgeToObjectiveC()();
        [v6 logInfo:v7];

        return 1;
      }

      goto LABEL_14;
    }

    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    [v4 logInfo:v5];

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100059FA0(uint64_t a1)
{
  v57 = a1;
  v60 = type metadata accessor for CurrentLocationResult(0);
  v2 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for CurrentLocation(0);
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v59);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&unk_100116598, &unk_1000D3B58);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v54 - v9;
  v11 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v14);
  v54 = (&v54 - v18);
  __chkstk_darwin(v17);
  v58 = &v54 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v24 = v25;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v28 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating);
    v29 = *(v28 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v29 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v28 + 24) = 0;
    v30 = *(v28 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();

    v56 = v1;
    v31 = sub_10005926C();
    [v31 stopUpdatingLocation];

    sub_10002CFC4(v57, v10, &unk_100116598, &unk_1000D3B58);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10002D02C(v10, &unk_100116598, &unk_1000D3B58);
      v32 = objc_opt_self();
      v33 = String._bridgeToObjectiveC()();
      [v32 logInfo:v33];

      v34 = *(v56 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream);
      v35 = v61;
      (*(v4 + 56))(v61, 1, 1, v59);
      *(v35 + *(v60 + 20)) = 0;
      v36 = *(*v34 + 104);
      v37 = *(v34 + v36);
      swift_beginAccess();

      os_unfair_lock_lock(v37 + 4);
      swift_endAccess();
      sub_100057598(v35);
      v38 = *(v34 + v36);
      swift_beginAccess();
      os_unfair_lock_unlock(v38 + 4);
      swift_endAccess();
      sub_10005BE04(v35, type metadata accessor for CurrentLocationResult);
    }

    else
    {
      v39 = v10;
      v40 = v58;
      sub_10002C7C4(v39, v58, &qword_1001165A8, &qword_1000D3B68);
      v41 = v54;
      sub_10002CFC4(v40, v54, &qword_1001165A8, &qword_1000D3B68);
      v42 = *v41;
      v57 = *(v11 + 48);
      v43 = v59;
      v44 = *(v59 + 20);
      sub_10002CFC4(v40, v16, &qword_1001165A8, &qword_1000D3B68);

      v45 = *(v11 + 48);
      v46 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
      v47 = *(v46 - 8);
      v48 = v55;
      (*(v47 + 32))(&v55[v44], v16 + v45, v46);
      (*(v47 + 56))(&v48[v44], 0, 1, v46);
      *v48 = v42;
      (*(v47 + 8))(v41 + v57, v46);
      v49 = *(v56 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_stream);
      v50 = v61;
      sub_10005C118(v48, v61, type metadata accessor for CurrentLocation);
      (*(v4 + 56))(v50, 0, 1, v43);
      *(v50 + *(v60 + 20)) = 2;
      v51 = *(*v49 + 104);
      v52 = *(v49 + v51);
      swift_beginAccess();

      os_unfair_lock_lock(v52 + 4);
      swift_endAccess();
      sub_100057598(v50);
      v53 = *(v49 + v51);
      swift_beginAccess();
      os_unfair_lock_unlock(v53 + 4);
      swift_endAccess();
      sub_10005BE04(v50, type metadata accessor for CurrentLocationResult);
      sub_10005BE04(v48, type metadata accessor for CurrentLocation);
      sub_10002D02C(v58, &qword_1001165A8, &qword_1000D3B68);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10005A70C(void *a1, unint64_t a2)
{
  v5 = sub_1000032D4(&unk_100116598, &unk_1000D3B58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (v36 - v7);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *(v2 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating);
    v17 = *(v16 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v17 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v16 + 24) = 1;
    v18 = *(v16 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v18 + 4);
    swift_endAccess();

    if (!(a2 >> 62))
    {
      v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_15:
      v33 = objc_opt_self();
      v34 = String._bridgeToObjectiveC()();
      [v33 logInfo:v34];

      v35 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
      (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
      sub_100059FA0(v8);
LABEL_16:
      sub_10002D02C(v8, &unk_100116598, &unk_1000D3B58);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_4:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v23 = v22;
    if (([a1 _limitsPrecision] & 1) == 0)
    {
      [v23 horizontalAccuracy];
      if (v24 > 1500.0)
      {

        return;
      }
    }

    v25 = objc_opt_self();
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v37 = 0xD000000000000025;
    v38 = 0x80000001000DA220;
    v36[1] = v23;
    sub_10002BB3C(0, &unk_1001164A0, CLLocation_ptr);
    v26 = v23;
    v27._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v27);

    v28 = String._bridgeToObjectiveC()();

    [v25 logInfo:v28];

    v29 = sub_1000032D4(&qword_1001165A8, &qword_1000D3B68);
    v30 = *(v29 + 48);
    *v8 = v26;
    v31 = v26;
    [v31 horizontalAccuracy];
    v32 = [objc_opt_self() meters];
    sub_10002BB3C(0, &qword_100116330, NSUnitLength_ptr);
    Measurement.init(value:unit:)();
    (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
    sub_100059FA0(v8);

    goto LABEL_16;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a2 + 8 * v21 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_10005AD0C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider_locationQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = objc_opt_self();
    v12 = String._bridgeToObjectiveC()();
    [v11 logInfo:v12];

    result = sub_100059D20();
    if (result)
    {
      v13 = *(v1 + OBJC_IVAR____TtC10ClockAngel20LocationDataProvider__isLocationUpdating);
      v14 = *(v13 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v14 + 4);
      swift_endAccess();
      swift_beginAccess();
      LOBYTE(v14) = *(v13 + 24);
      v15 = *(v13 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v15 + 4);
      swift_endAccess();

      if ((v14 & 1) == 0)
      {
        return [a1 startUpdatingLocation];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005B060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000032D4(&qword_100116398, &unk_1000D3A00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

void sub_10005B144()
{
  sub_10005B1B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10005B1B8()
{
  if (!qword_100116408)
  {
    type metadata accessor for CurrentLocation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100116408);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmButtonAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10005B394(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LocationAccuracy(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005B474(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationAccuracy(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005B518()
{
  result = sub_10002BB3C(319, &unk_1001164A0, CLLocation_ptr);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationAccuracy(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_1001164D0, &qword_1000D3A48);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}