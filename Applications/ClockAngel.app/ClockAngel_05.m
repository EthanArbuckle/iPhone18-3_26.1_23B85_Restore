void sub_100092EAC()
{
  sub_100056DFC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10004A5CC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100092FFC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v117 = v2;
  v118 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v116 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v106 - v7;
  v8 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v109 = &v106 - v10;
  v108 = type metadata accessor for AlarmPresentation();
  v107 = *(v108 - 8);
  v11 = *(v107 + 64);
  __chkstk_darwin(v108);
  v106 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v112 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v110 = &v106 - v17;
  v18 = type metadata accessor for AlarmPresentationState.Mode();
  v114 = *(v18 - 8);
  v115 = v18;
  v19 = *(v114 + 64);
  __chkstk_darwin(v18);
  v113 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v106 - v23;
  v123 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v120 = *(v123 - 8);
  v25 = *(v120 + 64);
  __chkstk_darwin(v123);
  v119 = &v106 - v26;
  v27 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v106 - v29;
  v31 = type metadata accessor for AlarmPresentationState();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v124 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = objc_opt_self();
  v128 = 0;
  v129 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v36 = [v0 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v128 = v37;
  v129 = v39;
  v40._countAndFlagsBits = 0xD000000000000017;
  v40._object = 0x80000001000D9BB0;
  String.append(_:)(v40);
  v41 = String._bridgeToObjectiveC()();

  v42 = v35;
  [v35 logInfo:v41];

  v43 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v43)
  {
    (*(v32 + 56))(v30, 1, 1, v31);
LABEL_8:
    v53 = &unk_100115DA0;
    v54 = &unk_1000D3220;
    v55 = v30;
    return sub_10002D02C(v55, v53, v54);
  }

  v121 = v32;
  v122 = v31;
  v44 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v45 = qword_100113608;

  if (v45 != -1)
  {
    swift_once();
  }

  v126 = v44;
  v127 = v43;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v128);
  v47 = v121;
  v46 = v122;
  v48 = (*(v121 + 48))(v30, 1, v122);
  v49 = v124;
  if (v48 == 1)
  {
    goto LABEL_8;
  }

  (*(v47 + 32))(v124, v30, v46);
  v50 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v50, v24, &qword_100115E38, &qword_1000D3280);
  v51 = v120;
  v52 = v123;
  if ((*(v120 + 48))(v24, 1, v123) == 1)
  {
    (*(v47 + 8))(v49, v46);
    v53 = &qword_100115E38;
    v54 = &qword_1000D3280;
    v55 = v24;
    return sub_10002D02C(v55, v53, v54);
  }

  v57 = v119;
  (*(v51 + 32))(v119, v24, v52);
  v58 = v113;
  AlarmPresentationState.mode.getter();
  v59 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v114 + 8))(v58, v115);
  if ((v59 & 1) == 0)
  {
    (*(v51 + 8))(v57, v52);
    return (*(v121 + 8))(v49, v122);
  }

  v60 = v1;
  v61 = v110;
  AlarmAttributes.metadata.getter();
  v62 = type metadata accessor for MTAlarmCustomContent();
  v63 = *(v62 - 8);
  v114 = *(v63 + 48);
  if ((v114)(v61, 1, v62) == 1)
  {
    sub_10002D02C(v61, &unk_100118100, &qword_1000D1250);
  }

  else
  {
    MTAlarmCustomContent.type.getter();
    (*(v63 + 8))(v61, v62);
    v64 = AlarmType.rawValue.getter();
    if (v64 == AlarmType.rawValue.getter())
    {
      v65 = v106;
      AlarmAttributes.presentation.getter();
      v66 = v109;
      AlarmPresentation.countdown.getter();
      (*(v107 + 8))(v65, v108);
      v67 = type metadata accessor for AlarmPresentation.Countdown();
      v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
      sub_10002D02C(v66, &unk_100115DF0, &qword_1000D1260);
      if (v68 != 1)
      {
        v69 = 3;
        goto LABEL_17;
      }
    }
  }

  v69 = 0;
LABEL_17:
  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v70 = [v60 description];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74._countAndFlagsBits = v71;
  v74._object = v73;
  String.append(_:)(v74);

  v75._countAndFlagsBits = 0xD00000000000001ALL;
  v75._object = 0x80000001000DB870;
  String.append(_:)(v75);
  v76 = v111;
  AlarmPresentationState.alarmID.getter();
  v77 = UUID.uuidString.getter();
  v79 = v78;
  v80 = *(v118 + 8);
  v118 += 8;
  v115 = v80;
  v80(v76, v117);
  v81._countAndFlagsBits = v77;
  v81._object = v79;
  String.append(_:)(v81);

  v82._countAndFlagsBits = 0x6361206874697720;
  v82._object = 0xEE00203A6E6F6974;
  String.append(_:)(v82);
  LOBYTE(v125) = v69;
  _print_unlocked<A, B>(_:_:)();
  v83 = String._bridgeToObjectiveC()();

  [v42 logInfo:v83];

  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v84 = qword_10011F508;
  AlarmPresentationState.alarmID.getter();
  v113 = AlarmPresentationState.bundleID.getter();
  v86 = v85;
  v87 = v112;
  AlarmAttributes.metadata.getter();
  v88 = (v114)(v87, 1, v62);
  if (v88 == 1)
  {
    sub_10002D02C(v87, &unk_100118100, &qword_1000D1250);
    v114 = 0;
  }

  else
  {
    v114 = MTAlarmCustomContent.type.getter();
    (*(v63 + 8))(v87, v62);
  }

  v126 = 0;
  v127 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v125 = v84;
  type metadata accessor for AlarmAndTimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v89._object = 0x80000001000D7D50;
  v89._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v89);
  LOBYTE(v125) = v69;
  _print_unlocked<A, B>(_:_:)();
  v90._countAndFlagsBits = 0x616C6120726F6620;
  v90._object = 0xEF203A6469206D72;
  String.append(_:)(v90);
  sub_100025228(&qword_100118110, &type metadata accessor for UUID);
  v91 = v116;
  v92 = v117;
  v93._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v93);

  v94._object = 0x80000001000D7D70;
  v94._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v94);
  v95._countAndFlagsBits = 0x6572757472657041;
  v95._object = 0xE800000000000000;
  String.append(_:)(v95);
  v96 = String._bridgeToObjectiveC()();

  [v42 logInfo:v96];

  if (v86)
  {
    v97 = v88 == 1;
    v98 = v119;
    v100 = v121;
    v99 = v122;
    v91 = v116;
    v101 = v120;
    if (v69 > 1)
    {
      sub_10007D1D0(v116, v113, v86, v114, v97);
    }

    else
    {
      sub_10007D8CC(v116, v113, v86, v114, v97);
    }

    v105 = v117;
  }

  else
  {
    v126 = 0;
    v127 = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v102._countAndFlagsBits = 0xD000000000000047;
    v102._object = 0x80000001000D7D90;
    String.append(_:)(v102);
    v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v103);

    v104 = String._bridgeToObjectiveC()();

    [v42 logError:v104];

    v105 = v92;
    v98 = v119;
    v101 = v120;
    v100 = v121;
    v99 = v122;
  }

  v115(v91, v105);
  (*(v101 + 8))(v98, v123);
  return (*(v100 + 8))(v124, v99);
}

void sub_100093DFC(uint64_t a1)
{
  v2 = v1;
  v135 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v122 - v9;
  v136 = type metadata accessor for AlarmPresentationState.Mode();
  v134 = *(v136 - 8);
  v11 = *(v134 + 64);
  __chkstk_darwin(v136);
  v13 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost;
  v20 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost];
  if (v20)
  {
    v21 = [v20 parentViewController];
    if (v21)
    {

      return;
    }
  }

  v131 = v8;
  v22 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
  if (!v22)
  {
    return;
  }

  v127 = v18;
  v128 = v15;
  v129 = v14;
  v130 = v10;
  v125 = v4;
  v126 = v3;
  v23 = objc_opt_self();
  v138 = 0;
  v139 = 0xE000000000000000;

  _StringGuts.grow(_:)(62);
  v24 = [v2 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._object = 0x80000001000DB840;
  v29._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v29);
  v30 = [v2 view];
  v137[0] = v30;
  sub_1000032D4(&qword_100116228, &unk_1000D5BA0);
  _print_unlocked<A, B>(_:_:)();

  v31._countAndFlagsBits = 0x696C69617274202CLL;
  v31._object = 0xEC000000203A676ELL;
  String.append(_:)(v31);
  v137[0] = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
  v32 = v137[0];
  sub_1000032D4(&unk_100116230, &qword_1000D3970);
  _print_unlocked<A, B>(_:_:)();
  v33 = String._bridgeToObjectiveC()();

  [v23 logInfo:v33];

  v137[0] = v22;
  v34 = type metadata accessor for AlarmPresentationStateViewModel(0);

  State.init(wrappedValue:)();
  v141 = &off_100102C38;
  swift_unknownObjectWeakInit();
  v35 = objc_allocWithZone(sub_1000032D4(&qword_1001180E8, &qword_1000D5BB0));
  *&v35[*((swift_isaMask & *v35) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000965EC(&v138, v137);
  v36 = UIHostingController.init(rootView:)();
  sub_100096648(&v138);
  v37 = *&v2[v19];
  *&v2[v19] = v36;
  v38 = v36;

  v39 = v32;
  sub_10009669C(v38, v32, 0);

  v133 = v22;
  v124 = v32;
  v132 = v13;
  if (!v32)
  {
    goto LABEL_16;
  }

  v40 = [v2 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_35;
  }

  v41 = v40;
  [v40 addSubview:v39];

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = *&v2[v19];
  if (!v42)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v123 = v34;
  v43 = [v42 view];
  if (!v43)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v44 = v43;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000D24C0;
  v46 = [v44 leadingAnchor];
  v47 = [v39 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v45 + 32) = v48;
  v49 = [v44 trailingAnchor];
  v50 = [v39 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v45 + 40) = v51;
  v52 = [v44 topAnchor];
  v53 = [v39 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v45 + 48) = v54;
  v55 = [v44 bottomAnchor];
  v56 = [v39 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v45 + 56) = v57;
  v58 = [v39 topAnchor];
  v59 = [v2 view];
  if (!v59)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v60 = v59;
  v61 = [v59 topAnchor];

  v62 = [v58 constraintEqualToAnchor:v61];
  *(v45 + 64) = v62;
  v63 = [v39 leadingAnchor];
  v64 = [v2 view];
  if (!v64)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v65 = v64;
  v66 = [v64 SBUISA_systemApertureTrailingViewLayoutGuide];

  v67 = [v66 leadingAnchor];
  v68 = [v63 constraintEqualToAnchor:v67];

  *(v45 + 72) = v68;
  v69 = [v39 bottomAnchor];
  v70 = [v2 view];
  if (!v70)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v71 = v70;
  v72 = [v70 bottomAnchor];

  v73 = [v69 constraintEqualToAnchor:v72];
  *(v45 + 80) = v73;
  v74 = [v39 trailingAnchor];
  v75 = [v2 view];
  if (!v75)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v76 = v75;
  v77 = objc_opt_self();
  v78 = [v76 trailingAnchor];

  v79 = [v74 constraintEqualToAnchor:v78];
  *(v45 + 88) = v79;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v77 activateConstraints:isa];

  v13 = v132;
  v22 = v133;
LABEL_16:
  v81 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation];
  v137[0] = v22;

  State.init(wrappedValue:)();
  v82 = v138;
  v83 = v139;
  v84 = objc_allocWithZone(sub_1000032D4(&unk_1001180F0, &qword_1000D5BB8));
  v138 = v82;
  v139 = v83;
  v140 = v81;
  v141 = 3;
  *&v84[*((swift_isaMask & *v84) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v85 = UIHostingController.init(rootView:)();
  v86 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost;
  v87 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost];
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = v85;
  v88 = v85;

  v89 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
  v90 = v89;
  sub_10009669C(v88, v89, 0);

  if (!v89)
  {
    goto LABEL_21;
  }

  v91 = [v2 view];
  if (!v91)
  {
    goto LABEL_39;
  }

  v92 = v91;
  [v91 addSubview:v90];

  v93 = *&v2[v86];
  if (!v93)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v94 = [v93 view];
  if (!v94)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v95 = v94;
  v123 = objc_opt_self();
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1000D24B0;
  v97 = [v95 leadingAnchor];
  v98 = [v90 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v96 + 32) = v99;
  v100 = [v95 trailingAnchor];
  v101 = [v90 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v96 + 40) = v102;
  v103 = [v95 topAnchor];
  v104 = [v90 topAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v96 + 48) = v105;
  v106 = [v95 bottomAnchor];
  v107 = [v90 bottomAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  *(v96 + 56) = v108;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  v109 = Array._bridgeToObjectiveC()().super.isa;

  [v123 activateConstraints:v109];

  v13 = v132;
LABEL_21:
  AlarmPresentationState.mode.getter();
  v110 = v134;
  v111 = v136;
  if ((*(v134 + 88))(v13, v136) == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    (*(v110 + 96))(v13, v111);
    (*(v128 + 32))(v127, v13, v129);
    v112 = v130;
    AlarmPresentationState.Mode.Countdown.fireDate.getter();
    v113 = v131;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v114 = *(v125 + 8);
    v115 = v126;
    v114(v113, v126);
    v114(v112, v115);
    sub_10008BEF0();
    if (v124)
    {
      v116 = String._bridgeToObjectiveC()();
      [v39 setAccessibilityLabel:v116];
    }

    if (v89)
    {
      v117 = String._bridgeToObjectiveC()();

      [v90 setAccessibilityLabel:v117];
    }

    else
    {
    }

    v119 = v129;
    v118 = v130;
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v121 = v127;
    if (IsVoiceOverRunning || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
    {
      [objc_msgSend(v2 "systemApertureElementContext")];
      swift_unknownObjectRelease();
      AlarmPresentationState.Mode.Countdown.fireDate.getter();
      sub_100094DA0(v118);

      v114(v118, v126);
      (*(v128 + 8))(v121, v119);
    }

    else
    {
      (*(v128 + 8))(v121, v119);
    }
  }

  else
  {

    (*(v110 + 8))(v13, v111);
  }
}

void sub_100094DA0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer])
  {
    v7 = objc_opt_self();
    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    aBlock[4] = sub_100096578;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100082B6C;
    aBlock[3] = &unk_100102CE8;
    v10 = _Block_copy(aBlock);
    v11 = v1;

    v12 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
    _Block_release(v10);
    v13 = *&v1[v6];
    *&v1[v6] = v12;
  }
}

uint64_t sub_100094F94(uint64_t a1, char *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
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

void sub_1000950EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for AlarmPresentationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v51 - v19;
  sub_10002B00C(a1, &aBlock);
  sub_1000032D4(&unk_100119770, &unk_1000D3CE0);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v13, 0, 1, v14);
    v55 = v7;
    v56 = v20;
    v53 = *(v15 + 32);
    v53(v20, v13, v14);
    v52 = objc_opt_self();
    aBlock = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v23 = v2;
    v24 = [v2 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v4;
    v26 = v25;
    v28 = v27;

    aBlock = v26;
    v62 = v28;
    v29._object = 0x80000001000DB820;
    v29._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v29);
    v30 = v56;
    v31._countAndFlagsBits = AlarmPresentationState.id.getter();
    String.append(_:)(v31);

    v32 = String._bridgeToObjectiveC()();

    [v52 logInfo:v32];

    sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
    v33 = static OS_dispatch_queue.main.getter();
    (*(v15 + 16))(v18, v30, v14);
    v34 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v23;
    v53((v35 + v34), v18, v14);
    AssociatedConformanceWitness = sub_1000963D8;
    v66 = v35;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_10004B270;
    AssociatedTypeWitness = &unk_100102C70;
    v36 = _Block_copy(&aBlock);
    v37 = v23;

    v38 = v58;
    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100025228(&qword_100116260, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000032D4(&unk_100115D90, qword_1000D3C00);
    sub_100057240();
    v39 = v60;
    v40 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v57 + 8))(v39, v40);
    (*(v59 + 8))(v38, v55);
    (*(v15 + 8))(v56, v14);
  }

  else
  {
    v22(v13, 1, 1, v14);
    sub_10002D02C(v13, &unk_100115DA0, &unk_1000D3220);
    v41 = objc_opt_self();
    aBlock = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v67 = aBlock;
    v68 = v62;
    v42 = [v2 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    v47._countAndFlagsBits = 0xD00000000000002FLL;
    v47._object = 0x80000001000DB7F0;
    String.append(_:)(v47);
    v48 = a1[4];
    sub_100025B1C(a1, a1[3]);
    v49 = *(v48 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10005712C(&aBlock);
    dispatch thunk of Identifiable.id.getter();
    sub_1000032D4(&unk_1001180D0, &qword_1000D3990);
    _print_unlocked<A, B>(_:_:)();
    sub_100017D28(&aBlock);
    v50 = String._bridgeToObjectiveC()();

    [v41 logError:v50];
  }
}

void sub_100095828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlarmPresentationState();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel))
  {
    (*(v11 + 16))(v13, a2);

    sub_100095C28(v13);
  }

  AlarmPresentationState.mode.getter();
  v14 = AlarmPresentationState.Mode.isAlerting.getter();
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_10008FAEC(v14 & 1);
  AlarmPresentationState.mode.getter();
  v16 = AlarmPresentationState.Mode.isAlerting.getter();
  v15(v8, v4);
  if (v16)
  {
    sub_1000922D8();
    sub_100090B64();
  }

  else
  {
    sub_100093DFC(a2);
  }
}

uint64_t sub_100095A28()
{
  v1 = (*v0 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_100095A68()
{
  v1 = [v0 systemApertureElementContext];
  v4[4] = Frame.timestamp.getter;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10004B270;
  v4[3] = &unk_100102C98;
  v2 = _Block_copy(v4);
  [v1 setElementNeedsUpdateWithCoordinatedAnimations:v2];
  _Block_release(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_100095B30@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v4 = type metadata accessor for AlarmPresentationState();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100095C28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_100025228(&qword_1001180E0, &type metadata accessor for AlarmPresentationState);
  v15[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v15[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13 = v15[0];
    v15[-2] = v2;
    v15[-1] = v13;
    v15[1] = v2;
    sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v11)(v15[0], v4);
}

uint64_t sub_100095EC8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100095F64()
{
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode);
}

uint64_t sub_10009600C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100096118()
{
  v1 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  v2 = type metadata accessor for AlarmPresentationState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes;
  v4 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100096268()
{
  v0 = type metadata accessor for AlarmPresentationState();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10001C78C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ObservationRegistrar();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000963D8()
{
  v1 = *(type metadata accessor for AlarmPresentationState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100095828(v2, v3);
}

uint64_t sub_10009643C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000964AC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100096578(uint64_t a1)
{
  v3 = *(*(type metadata accessor for Date() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100094F94(a1, v4);
}

id sub_10009669C(void *a1, void *a2, char a3)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  v10 = [result layer];

  [v10 setAllowsHitTesting:a3 & 1];
  [v3 addChildViewController:a1];
  if (!a2)
  {
LABEL_6:
    [a1 didMoveToParentViewController:v3];
    return a1;
  }

  result = [a1 view];
  if (result)
  {
    v11 = result;
    [a2 addSubview:result];

    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1000967CC()
{
  result = qword_100118130;
  if (!qword_100118130)
  {
    sub_10002BB3C(255, &qword_100118128, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118130);
  }

  return result;
}

uint64_t sub_10009683C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000968C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10009694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_100096A04()
{
  result = qword_100117A70;
  if (!qword_100117A70)
  {
    sub_10001C820(&qword_100117A78, &qword_1000D5658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A70);
  }

  return result;
}

uint64_t sub_100096A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(type metadata accessor for TimersTimelineSchedule.TimePeriodEntries(0) + 20);
  sub_1000987DC(v2 + v11, v10);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_10004F91C(v10);
    return (*(v13 + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v13 + 32))(a1, v10, v12);
    v15 = *v2;
    Date.addingTimeInterval(_:)();
    v16 = *(v13 + 56);
    v16(v8, 0, 1, v12);
    sub_100088408(v8, v2 + v11);
    return (v16)(a1, 0, 1, v12);
  }
}

uint64_t sub_100096C60()
{
  v1 = sub_1000872AC(v0);
  sub_10009884C(v0, type metadata accessor for TimersTimelineSchedule.TimePeriodEntries);
  return v1;
}

uint64_t sub_100096CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a3;
  v72 = a1;
  v4 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Calendar.SearchDirection();
  v55 = *(v65 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v65);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.MatchingPolicy();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v64 = &v50 - v14;
  v67 = type metadata accessor for Calendar();
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v67);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateComponents();
  v68 = *(v19 - 8);
  v69 = v19;
  v20 = *(v68 + 64);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v52 = (v24 + 56);
  v51 = v25;
  v25(a3, 1, 1, v23);
  static Calendar.current.getter();
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v26 = type metadata accessor for Calendar.Component();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000D08B0;
  (*(v27 + 104))(v30 + v29, enum case for Calendar.Component.second(_:), v26);
  sub_10008B828(v30);
  swift_setDeallocating();
  (*(v27 + 8))(v30 + v29, v26);
  v31 = v71;
  swift_deallocClassInstance();
  v32 = v70;
  Calendar.dateComponents(_:from:)();

  v33 = *(v15 + 8);
  v34 = v67;
  v33(v18, v67);
  v35 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry(0);
  (*(v68 + 16))(v31 + v35[6], v22, v69);
  v36 = v35[5];
  v59 = v24;
  v60 = v23;
  (*(v24 + 16))(v31 + v36, v32, v23);
  v37 = v31 + v35[7];
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  v66 = v22;
  LOBYTE(v35) = Calendar.date(_:matchesComponents:)();
  v53 = v15 + 8;
  v33(v18, v34);
  if (v35)
  {
    v39 = v59;
    v38 = v60;
    (*(v59 + 8))(v70, v60);
    (*(v68 + 8))(v66, v69);
    v40 = v71;
    sub_10004F91C(v71);
    (*(v39 + 32))(v40, v72, v38);
    return v51(v40, 0, 1, v38);
  }

  else
  {
    static Calendar.current.getter();
    (*(v62 + 104))(v61, enum case for Calendar.MatchingPolicy.nextTime(_:), v63);
    v43 = v54;
    v42 = v55;
    (*(v55 + 104))(v54, enum case for Calendar.SearchDirection.backward(_:), v65);
    v45 = v56;
    v44 = v57;
    v46 = v58;
    (*(v57 + 104))(v56, enum case for Calendar.RepeatedTimePolicy.first(_:), v58);
    v47 = v72;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    v52 = v33;
    v48 = v60;
    v49 = *(v59 + 8);
    v49(v70, v60);
    v49(v47, v48);
    (*(v44 + 8))(v45, v46);
    (*(v42 + 8))(v43, v65);
    (*(v62 + 8))(v61, v63);
    v52(v18, v67);
    (*(v68 + 8))(v66, v69);
    return sub_100088408(v64, v71);
  }
}

uint64_t sub_1000973E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar.SearchDirection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v74 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v73 = *(v80 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v80);
  v79 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar.MatchingPolicy();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  __chkstk_darwin(v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v70 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v75 = &v59 - v23;
  v24 = __chkstk_darwin(v22);
  v76 = &v59 - v25;
  __chkstk_darwin(v24);
  v27 = &v59 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v68 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v59 - v33;
  v81 = v2;
  sub_1000987DC(v2, v27);
  v69 = *(v29 + 48);
  if (v69(v27, 1, v28) == 1)
  {
    sub_10004F91C(v27);
    return (*(v29 + 56))(a1, 1, 1, v28);
  }

  else
  {
    v65 = v5;
    v66 = v4;
    v67 = a1;
    v36 = *(v29 + 32);
    v36(v34, v27, v28);
    v37 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry(0);
    v38 = *(v37 + 28);
    sub_100098794(&qword_100117BE0, &type metadata accessor for Date);
    v63 = v38;
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v61 = v36;
      v62 = v29 + 32;
      v64 = v17;
      static Calendar.current.getter();
      v39 = *(v37 + 24);
      v40 = *(v77 + 104);
      v59 = v13;
      v40(v13, enum case for Calendar.MatchingPolicy.nextTime(_:), v78);
      v41 = v73;
      (*(v73 + 104))(v79, enum case for Calendar.RepeatedTimePolicy.first(_:), v80);
      v43 = v65;
      v42 = v66;
      v44 = v74;
      (*(v65 + 104))(v74, enum case for Calendar.SearchDirection.forward(_:), v66);
      v45 = v75;
      v60 = v34;
      v46 = v59;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*(v43 + 8))(v44, v42);
      (*(v41 + 8))(v79, v80);
      (*(v77 + 8))(v46, v78);
      (*(v71 + 8))(v64, v72);
      v47 = v70;
      sub_1000987DC(v45, v70);
      if (v69(v47, 1, v28) == 1)
      {
        sub_10004F91C(v45);
        sub_10004F91C(v47);
        v48 = v81;
        sub_10004F91C(v81);
        v49 = *(v29 + 56);
        v49(v48, 1, 1, v28);
        v50 = v67;
        v61(v67, v60, v28);
      }

      else
      {
        v54 = v68;
        v55 = v61;
        v61(v68, v47, v28);
        v56 = v63;
        if (static Date.> infix(_:_:)())
        {
          (*(v29 + 8))(v54, v28);
          sub_10004F91C(v45);
          v57 = v81;
          sub_10004F91C(v81);
          (*(v29 + 16))(v57, v57 + v56, v28);
          v49 = *(v29 + 56);
          v49(v57, 0, 1, v28);
        }

        else
        {
          v58 = v76;
          Date.addingTimeInterval(_:)();
          (*(v29 + 8))(v54, v28);
          sub_10004F91C(v45);
          v49 = *(v29 + 56);
          v49(v58, 0, 1, v28);
          sub_100088408(v58, v81);
        }

        v50 = v67;
        v55(v67, v60, v28);
      }

      return (v49)(v50, 0, 1, v28);
    }

    else
    {
      v51 = v76;
      Date.addingTimeInterval(_:)();
      v52 = *(v29 + 56);
      v52(v51, 0, 1, v28);
      sub_100088408(v51, v81);
      v53 = v67;
      v36(v67, v34, v28);
      return v52(v53, 0, 1, v28);
    }
  }
}

uint64_t sub_100097C24()
{
  v1 = sub_1000877B0(v0);
  sub_10009884C(v0, type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry);
  return v1;
}

void *sub_100097C74(uint64_t a1)
{
  v41 = a1;
  v1 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for TimersTimelineSchedule.TimePeriodEntries(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimelineScheduleMode();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, enum case for TimelineScheduleMode.normal(_:), v16);
  v21 = static TimelineScheduleMode.== infix(_:_:)();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v22 = *v42;
    (*(v5 + 16))(v11, v41, v4);
    v23 = *(v12 + 20);
    v24 = *(v5 + 56);
    v24(&v15[v23], 1, 1, v4);
    sub_10004F91C(&v15[v23]);
    (*(v5 + 32))(&v15[v23], v11, v4);
    v24(&v15[v23], 0, 1, v4);
    *v15 = v22;
    v25 = sub_1000032D4(&qword_1001181E8, &qword_1000D5C48);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    v28 = swift_allocObject();
    v29 = type metadata accessor for TimersTimelineSchedule.TimePeriodEntries;
    v30 = v28 + *(*v28 + class metadata base offset for _SequenceBox + 16);
    v31 = v15;
  }

  else
  {
    v32 = *(v5 + 16);
    v32(v11, v41, v4);
    v33 = type metadata accessor for TimersTimelineSchedule(0);
    v32(v9, v42 + *(v33 + 20), v4);
    v34 = v40;
    sub_100096CB0(v11, v9, v40);
    v35 = sub_1000032D4(&qword_1001181E0, &unk_1000D5C38);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v28 = swift_allocObject();
    v29 = type metadata accessor for TimersTimelineSchedule.ReducedFrequencyEntry;
    v30 = v28 + *(*v28 + class metadata base offset for _SequenceBox + 16);
    v31 = v34;
  }

  sub_10009810C(v31, v30, v29);
  return v28;
}

void *sub_1000980A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100097C74(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009810C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100098188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100098220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000982C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100098340()
{
  if (!qword_100117B00)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100117B00);
    }
  }
}

uint64_t sub_1000983AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DateComponents();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10009850C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DateComponents();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100098664()
{
  sub_100098340();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DateComponents();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100098794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000987DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009884C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1000988AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v86 = a3;
  v87 = a4;
  v89 = a1;
  v90 = a2;
  v14 = type metadata accessor for UIButton.Configuration.Size();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UIButton.Configuration();
  v92 = *(v24 - 8);
  v93 = v24;
  v25 = *(v92 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v81 - v29;
  v31 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel;
  *&v9[v31] = [objc_allocWithZone(UILabel) init];
  static UIButton.Configuration.tinted()();
  (*(v20 + 104))(v23, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v19);
  UIButton.Configuration.cornerStyle.setter();
  v32 = objc_opt_self();
  v33 = [v32 mtOrange];
  v34 = [v33 colorWithAlphaComponent:0.35];

  UIButton.Configuration.baseBackgroundColor.setter();
  v88 = v32;
  v35 = [v32 mtOrange];
  UIButton.Configuration.baseForegroundColor.setter();
  v36 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:19.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v15 + 104))(v18, enum case for UIButton.Configuration.Size.large(_:), v14);
  UIButton.Configuration.buttonSize.setter();
  v37 = [objc_allocWithZone(UIControl) init];
  v85 = sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  v38 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v37 addAction:v38 forControlEvents:64];

  v39 = objc_opt_self();
  v40 = v37;
  v41 = [v39 blackColor];
  v42 = [v41 colorWithAlphaComponent:0.001];

  [v40 setBackgroundColor:v42];
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v43 = *(v92 + 16);
  v91 = v30;
  v43(v28, v30, v93);
  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton] = UIButton.init(configuration:primaryAction:)();
  v44 = String._bridgeToObjectiveC()();
  v83 = objc_opt_self();
  v45 = [v83 systemImageNamed:v44];

  if (v45)
  {
    v46 = [v45 imageWithRenderingMode:2];
  }

  else
  {
    v46 = 0;
  }

  v47 = [objc_allocWithZone(UIImageView) initWithImage:v46];

  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView] = v47;
  v48 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton] = UIButton.init(configuration:primaryAction:)();
  *&v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl] = v40;
  v49 = &v9[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_entryId];
  v50 = v86;
  v51 = v87;
  *v49 = v86;
  *(v49 + 1) = v51;
  v52 = type metadata accessor for TimerAlertView();
  v94.receiver = v9;
  v94.super_class = v52;
  v84 = v40;

  v53 = objc_msgSendSuper2(&v94, "initWithFrame:", a5, a6, a7, a8);
  v54 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton;
  v55 = *&v53[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton];
  v56 = v53;
  v57 = v55;
  v58 = v88;
  v59 = [v88 mtOrange];
  v60 = [v59 colorWithAlphaComponent:0.35];

  [v57 setBackgroundColor:v60];
  v82 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView;
  v61 = *&v56[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView];
  v62 = [v58 mtOrange];
  [v61 setTintColor:v62];

  v63 = swift_allocObject();
  *(v63 + 16) = v50;
  *(v63 + 24) = v51;

  v81 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [*&v53[v54] addAction:v81 forControlEvents:64];
  v64 = swift_allocObject();
  *(v64 + 16) = v50;
  *(v64 + 24) = v51;
  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v66 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton;
  [*&v56[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton] addAction:v65 forControlEvents:64];
  v67 = *&v56[v66];
  v68 = String._bridgeToObjectiveC()();
  v69 = [v83 systemImageNamed:v68];

  [v67 setImage:v69 forState:0];
  v70 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel;
  v71 = *&v56[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel];
  v72 = objc_opt_self();
  v73 = v71;
  v74 = [v72 systemFontOfSize:28.0 weight:UIFontWeightMedium];
  [v73 setFont:v74];

  v75 = *&v56[v70];
  v76 = [v58 mtOrange];
  [v75 setTextColor:v76];

  v77 = *&v56[v70];
  v78 = String._bridgeToObjectiveC()();

  [v77 setText:v78];

  [*&v56[v70] setTextAlignment:2];
  [v56 addSubview:*&v53[v54]];
  [*&v53[v54] addSubview:*&v56[v82]];
  [v56 addSubview:*&v56[v66]];
  v79 = OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl;
  [v56 addSubview:*&v56[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl]];
  [*&v56[v79] addSubview:*&v56[v70]];

  (*(v92 + 8))(v91, v93);
  return v56;
}

uint64_t sub_100099264()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() mtURLForSection:4];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  }

  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_100057520(v3);
}

uint64_t sub_100099394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_100113628 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  return a4();
}

id sub_100099418()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for TimerAlertView();
  objc_msgSendSuper2(&v30, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButton];
  v2 = Frame.timestamp.getter(0.0, 0.0);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v1 setBounds:?];
  [v0 bounds];
  Height = CGRectGetHeight(v31);
  [v1 setCenter:{Frame.timestamp.getter(42.0, Height * 0.5)}];
  v10 = [v1 layer];
  [v10 setCornerRadius:25.0];

  v11 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_resetButtonSymbolImageView];
  v12 = [objc_opt_self() configurationWithPointSize:5 weight:27.5];
  [v11 setPreferredSymbolConfiguration:v12];

  [v1 bounds];
  Width = CGRectGetWidth(v32);
  [v11 intrinsicContentSize];
  v15 = (Width - v14) * 0.5;
  [v1 bounds];
  v16 = CGRectGetHeight(v33);
  [v11 intrinsicContentSize];
  v18 = (v16 - v17) * 0.5 + -1.4575;
  [v11 intrinsicContentSize];
  [v11 intrinsicContentSize];
  [v11 setFrame:{Frame.timestamp.getter(v15, v18)}];
  v19 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_closeButton];
  [v19 setBounds:{v2, v4, v6, v8}];
  [v1 center];
  v21 = v20 + 25.0 + 10.0 + 25.0;
  [v0 bounds];
  v22 = CGRectGetHeight(v34);
  [v19 setCenter:{Frame.timestamp.getter(v21, v22 * 0.5)}];
  v23 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_tapControl];
  [v19 frame];
  v24 = CGRectGetMaxX(v35) + 8.0;
  [v0 bounds];
  CGRectGetWidth(v36);
  [v19 frame];
  CGRectGetMaxX(v37);
  [v0 bounds];
  CGRectGetHeight(v38);
  [v23 setFrame:{Frame.timestamp.getter(v24, 0.0)}];
  v25 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_titleLabel];
  [v23 bounds];
  v26 = CGRectGetHeight(v39);
  [v25 intrinsicContentSize];
  v28 = (v26 - v27) * 0.5;
  [v23 bounds];
  CGRectGetWidth(v40);
  [v25 intrinsicContentSize];
  return [v25 setFrame:{Frame.timestamp.getter(0.0, v28)}];
}

void sub_1000997F4()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TimerAlertView();
  objc_msgSendSuper2(&v10, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {

    if (qword_1001135F8 != -1)
    {
      swift_once();
    }

    v7 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_entryId];
    v8 = *&v0[OBJC_IVAR____TtC10ClockAngel14TimerAlertView_entryId + 8];

    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.getEntry(for:)();
    sub_10004E3D4(v9);
    v2 = v7;
    if (v7)
    {
      if ([v7 isFiring] && (v3 = objc_msgSend(v0, "window")) != 0 && (v4 = v3, v5 = objc_msgSend(v3, "windowScene"), v4, v5))
      {
        type metadata accessor for ActivityScene();
        if (swift_dynamicCastClass())
        {
          v6 = v5;
          dispatch thunk of ActivityScene.idleTimerDisabled.setter();

          v2 = v6;
        }
      }

      else
      {
        v5 = v7;
      }
    }
  }
}

id sub_100099A78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimerAlertView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100099B60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099BFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000032D4(&qword_100118FC8, &qword_1000D7070);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    sub_100037A00();
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1000A98D8((v28 + 8), v26);
    sub_1000A98D8(v26, v28);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_1000A98D8(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100099EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100118C78, &qword_1000D6DD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v12 = sub_1000032D4(&qword_100118C80, &qword_1000D6DD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v17 = sub_1000032D4(&qword_100118C88, &qword_1000D6DE0);
  sub_10009A170(v2, &v11[*(v17 + 44)]);
  v18 = static Edge.Set.leading.getter();
  v19 = &v11[*(v8 + 36)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  static AccessibilityChildBehavior.contain.getter();
  v20 = sub_1000A7C2C();
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v7, v3);
  sub_10002D02C(v11, &qword_100118C78, &qword_1000D6DD0);
  v21 = [*v2 timerIDString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v23[2] = v8;
  v23[3] = v20;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10009A170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_1000032D4(&qword_100118CA8, &qword_1000D6DF0);
  v3 = *(v34 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v34);
  v35 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v33 = &v29[-v7];
  v8 = *a1;
  sub_10002B00C(a1 + 8, &v51);
  sub_10002B00C(a1 + 48, v52);
  v50 = v8;
  v9 = v8;
  LOBYTE(v8) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v52[40] = v8;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v57 = 0;
  v14 = static VerticalAlignment.center.getter();
  v47 = 0;
  v15 = *(a1 + 88);
  v31 = v14;
  v32 = v15;
  v16 = v9;
  sub_10002B128();
  v17 = v16;
  sub_10002B130();

  v46 = 0;
  v45 = 0;
  v30 = v47;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v48[55] = v61;
  *&v48[71] = v62;
  *&v48[87] = v63;
  *&v48[103] = v64;
  *&v48[7] = v58;
  *&v48[23] = v59;
  *&v48[39] = v60;
  v18 = static Edge.Set.trailing.getter();
  v49 = 1;
  static Color.black.getter();
  v19 = Color.opacity(_:)();

  v20 = static Edge.Set.all.getter();
  *(&v41[4] + 9) = *&v48[64];
  *(&v41[5] + 9) = *&v48[80];
  *(&v41[6] + 9) = *&v48[96];
  *(v41 + 9) = *v48;
  *(&v41[1] + 9) = *&v48[16];
  *(&v41[2] + 9) = *&v48[32];
  v37 = v31;
  LOBYTE(v38) = v30;
  *(&v38 + 1) = v32;
  LOBYTE(v39) = 0;
  *(&v39 + 1) = sub_1000A9C68;
  *&v40 = 0;
  BYTE8(v40) = 0;
  *&v41[0] = v17;
  BYTE8(v41[0]) = 1;
  *(&v41[7] + 1) = *&v48[111];
  *(&v41[3] + 9) = *&v48[48];
  LOBYTE(v42[0]) = v18;
  *(v42 + 8) = 0u;
  *(&v42[1] + 8) = 0u;
  WORD4(v42[2]) = 1;
  *&v42[3] = v19;
  BYTE8(v42[3]) = v20;
  sub_1000032D4(&qword_100118CB0, &qword_1000D6DF8);
  sub_1000A7CE4();
  v21 = v33;
  View.onTapGesture(count:perform:)();
  v43[12] = v42[0];
  v43[13] = v42[1];
  v44[0] = v42[2];
  *(v44 + 9) = *(&v42[2] + 9);
  v43[8] = v41[4];
  v43[9] = v41[5];
  v43[10] = v41[6];
  v43[11] = v41[7];
  v43[4] = v41[0];
  v43[5] = v41[1];
  v43[6] = v41[2];
  v43[7] = v41[3];
  v43[0] = v37;
  v43[1] = v38;
  v43[2] = v39;
  v43[3] = v40;
  sub_10002D02C(v43, &qword_100118CB0, &qword_1000D6DF8);
  sub_10002CFC4(&v50, &v37, &qword_100118D00, &qword_1000D6E20);
  v22 = v3[2];
  v23 = v34;
  v24 = v35;
  v22(v35, v21, v34);
  v25 = v36;
  sub_10002CFC4(&v37, v36, &qword_100118D00, &qword_1000D6E20);
  v26 = sub_1000032D4(&qword_100118D08, &qword_1000D6E28);
  v22((v25 + *(v26 + 48)), v24, v23);
  v27 = v3[1];
  v27(v21, v23);
  sub_10002D02C(&v50, &qword_100118D00, &qword_1000D6E20);
  v27(v24, v23);
  return sub_10002D02C(&v37, &qword_100118D00, &qword_1000D6E20);
}

uint64_t sub_10009A5EC()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() mtURLForSection:4];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  }

  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_10002D02C(v3, &unk_100119A20, &qword_1000D1DC0);
}

double sub_10009A730@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for AlarmKitCountdownLabelView(0) + 20);
  AlarmPresentationState.mode.getter();
  v10 = AlarmPresentationState.Mode.isAlerting.getter();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    v12 = AlarmPresentationState.bundleID.getter();
    if (!v13)
    {
      goto LABEL_8;
    }

    if (v12 == 0xD000000000000015 && v13 == 0x80000001000D7F20)
    {

      goto LABEL_19;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_8:
      v16 = AlarmPresentationState.localizedAppName.getter();
      if (v17)
      {
        *&v77 = v16;
        *(&v77 + 1) = v17;
        sub_100025FB4();

        v18 = Text.init<A>(_:)();
        v20 = v19;
        v22 = v21;
        if (qword_100113660 != -1)
        {
          swift_once();
        }

        v63 = Text.font(_:)();
        v24 = v23;
        v26 = v25;
        v28 = v27;
        sub_100025B0C(v18, v20, v22 & 1);

        KeyPath = swift_getKeyPath();
        v30 = swift_getKeyPath();
        LOBYTE(v77) = v26 & 1;
        LOBYTE(v64) = 0;
        v31 = v26 & 1;
        sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
        v32 = AlarmAttributes.tintColor.getter();
        v33 = swift_getKeyPath();

        v34 = v63;
        v35 = 0x3FEB333333333333;
        v36 = 1;
        goto LABEL_20;
      }
    }

LABEL_19:
    v34 = 0;
    v24 = 0;
    v28 = 0;
    KeyPath = 0;
    v36 = 0;
    v30 = 0;
    v35 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
LABEL_20:
    v76 = 0;
    v64 = v34;
    v65 = v24;
    v66 = v31;
    v67 = v28;
    v68 = KeyPath;
    v69 = v36;
    v70 = 0;
    v71 = v30;
    v72 = v35;
    v73 = v33;
    v74 = v32;
    v75 = 0;
    goto LABEL_21;
  }

  v37 = AlarmPresentationState.alarmLabel.getter();
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    AlarmPresentationState.mode.getter();
    v40 = sub_10000AAEC(v8);
    v39 = v41;
    v11(v8, v4);
    v37 = v40;
  }

  v63 = v2;
  *&v77 = v37;
  *(&v77 + 1) = v39;
  sub_100025FB4();

  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  if (qword_100113660 != -1)
  {
    swift_once();
  }

  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_100025B0C(v42, v44, v46 & 1);

  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v51 &= 1u;
  LOBYTE(v77) = v51;
  LOBYTE(v64) = 0;
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v56 = AlarmAttributes.tintColor.getter();
  v57 = swift_getKeyPath();

  v76 = 1;
  v64 = v47;
  v65 = v49;
  LOBYTE(v66) = v51;
  v67 = v53;
  v68 = v54;
  v69 = 1;
  LOBYTE(v70) = 0;
  v71 = v55;
  v72 = 0x3FEB333333333333;
  v73 = v57;
  v74 = v56;
  v75 = 1;
LABEL_21:
  sub_1000032D4(&qword_100118D10, &unk_1000D6E30);
  sub_1000032D4(&qword_100116BE0, &unk_1000D4890);
  sub_1000A7F98();
  sub_100065C8C();
  _ConditionalContent<>.init(storage:)();
  v58 = v80;
  v59 = v81[0];
  v60 = v78;
  a1[2] = v79;
  a1[3] = v58;
  a1[4] = v59;
  *(a1 + 73) = *(v81 + 9);
  result = *&v77;
  *a1 = v77;
  a1[1] = v60;
  return result;
}

uint64_t sub_10009AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v154 = sub_1000032D4(&qword_100118B40, &qword_1000D6CB0);
  v3 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v155 = (&v137 - v4);
  v173 = sub_1000032D4(&qword_100118B48, &unk_1000D6CB8);
  v5 = *(*(v173 - 8) + 64);
  __chkstk_darwin(v173);
  v156 = &v137 - v6;
  v7 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v141 = &v137 - v9;
  v152 = type metadata accessor for AlarmPresentationState();
  v143 = *(v152 - 8);
  v10 = *(v143 + 64);
  __chkstk_darwin(v152);
  v142 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v140 = *(v175 - 8);
  v12 = *(v140 + 64);
  __chkstk_darwin(v175);
  v157 = &v137 - v13;
  v153 = type metadata accessor for AlarmKitAlertLabelView(0);
  v14 = *(*(v153 - 8) + 64);
  v15 = __chkstk_darwin(v153);
  v139 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v144 = &v137 - v17;
  v150 = type metadata accessor for Date();
  v149 = *(v150 - 8);
  v18 = *(v149 + 64);
  v19 = __chkstk_darwin(v150);
  v148 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v146 = &v137 - v21;
  v168 = type metadata accessor for RunningCountdownView(0);
  v22 = *(*(v168 - 8) + 64);
  v23 = __chkstk_darwin(v168);
  v147 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v151 = &v137 - v25;
  v170 = sub_1000032D4(&qword_100118B50, &qword_1000D6CC8);
  v26 = *(*(v170 - 8) + 64);
  __chkstk_darwin(v170);
  v172 = &v137 - v27;
  v165 = sub_1000032D4(&qword_100118630, &qword_1000D6378);
  v28 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v166 = (&v137 - v29);
  v171 = sub_1000032D4(&qword_100118638, &qword_1000D6380);
  v30 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v167 = &v137 - v31;
  v32 = type metadata accessor for Locale();
  v163 = *(v32 - 8);
  v164 = v32;
  v33 = *(v163 + 64);
  __chkstk_darwin(v32);
  v162 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v161 = *(v145 - 8);
  v35 = *(v161 + 64);
  __chkstk_darwin(v145);
  v160 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AlarmPresentationState.Mode();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v138 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v137 - v43;
  __chkstk_darwin(v42);
  v46 = &v137 - v45;
  v47 = type metadata accessor for AlarmPresentationState.Mode.Paused();
  v158 = *(v47 - 8);
  v159 = v47;
  v48 = *(v158 + 64);
  __chkstk_darwin(v47);
  v50 = &v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for AlarmKitCountdownView(0);
  v51 = *(v169 + 24);
  v52 = a1;
  AlarmPresentationState.mode.getter();
  v53 = v37;
  v54 = *(v38 + 88);
  if (v54(v46, v37) == enum case for AlarmPresentationState.Mode.paused(_:))
  {
    (*(v38 + 96))(v46, v37);
    v56 = v158;
    v55 = v159;
    (*(v158 + 32))(v50, v46, v159);
    AlarmPresentationState.Mode.Paused.totalCountdownDuration.getter();
    v58 = v57;
    AlarmPresentationState.Mode.Paused.previouslyElapsedDuration.getter();
    v60 = sub_10002551C(v58 - v59);
    if (v60 > 1.0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 1.0;
    }

    v62 = v162;
    static Locale.autoupdatingCurrent.getter();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v64 = (*(v163 + 8))(v62, v164);
    *v64.i64 = v61;
    v65 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v64);

    if (v65)
    {
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0xE000000000000000;
    }

    v101 = v169;
    v102 = *(v52 + *(v169 + 28));
    if (sub_1000899F0(v102))
    {
      v103 = 48.0;
    }

    else
    {
      v103 = 47.0;
    }

    if (sub_1000899F0(v102))
    {
      if (qword_100113658 != -1)
      {
        swift_once();
      }

      v104 = &qword_10011F690;
    }

    else
    {
      if (qword_100113678 != -1)
      {
        swift_once();
      }

      v104 = &qword_10011F6B0;
    }

    v105 = *v104;
    v106 = v52 + *(v101 + 20);
    v107 = AlarmAttributes.tintColor.getter();
    v108 = v166;
    *v166 = v66;
    *(v108 + 1) = v68;
    v108[2] = v103;
    *(v108 + 3) = v105;
    *(v108 + 4) = v107;
    swift_storeEnumTagMultiPayload();
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView);

    v109 = v167;
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v109, v172, &qword_100118638, &qword_1000D6380);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C50();
    sub_1000A7314();
    _ConditionalContent<>.init(storage:)();

    sub_10002D02C(v109, &qword_100118638, &qword_1000D6380);
    return (*(v56 + 8))(v50, v55);
  }

  else
  {
    v69 = *(v38 + 8);
    v69(v46, v37);
    v70 = v52;
    v71 = v37;
    AlarmPresentationState.mode.getter();
    v72 = v70;
    if (v54(v44, v53) == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      (*(v38 + 96))(v44, v53);
      v73 = v44;
      v74 = v145;
      (*(v161 + 32))(v160, v73, v145);
      v75 = v146;
      AlarmPresentationState.Mode.Countdown.fireDate.getter();
      v76 = v149;
      v77 = v148;
      v78 = v150;
      (*(v149 + 16))(v148, v75, v150);
      v79 = v169;
      v80 = *(v72 + *(v169 + 28));
      if (sub_1000899F0(v80))
      {
        v81 = 48.0;
      }

      else
      {
        v81 = 47.0;
      }

      if (sub_1000899F0(v80))
      {
        if (qword_100113658 != -1)
        {
          swift_once();
        }

        v82 = &qword_10011F690;
      }

      else
      {
        if (qword_100113678 != -1)
        {
          swift_once();
        }

        v82 = &qword_10011F6B0;
      }

      v111 = *v82;
      v112 = v72 + *(v79 + 20);
      v113 = AlarmAttributes.tintColor.getter();
      v114 = sub_1000899F0(v80);
      (*(v76 + 8))(v75, v78);
      v115 = v147;
      (*(v76 + 32))(v147, v77, v78);
      v116 = v168;
      *(v115 + *(v168 + 20)) = 0;
      *(v115 + v116[6]) = v81;
      *(v115 + v116[7]) = v111;
      *(v115 + v116[8]) = v113;
      *(v115 + v116[9]) = (v114 & 1) == 0;
      *(v115 + v116[10]) = 0;
      v117 = v151;
      sub_1000A73D0(v115, v151, type metadata accessor for RunningCountdownView);
      sub_1000A7438(v117, v166, type metadata accessor for RunningCountdownView);
      swift_storeEnumTagMultiPayload();
      sub_1000A4D0C();
      sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView);
      v118 = v167;
      _ConditionalContent<>.init(storage:)();
      sub_10002CFC4(v118, v172, &qword_100118638, &qword_1000D6380);
      swift_storeEnumTagMultiPayload();
      sub_1000A4C50();
      sub_1000A7314();
      _ConditionalContent<>.init(storage:)();
      sub_10002D02C(v118, &qword_100118638, &qword_1000D6380);
      sub_1000A74A0(v117, type metadata accessor for RunningCountdownView);
      return (*(v161 + 8))(v160, v74);
    }

    else
    {
      v69(v44, v53);
      v83 = v169;
      v84 = *(v169 + 28);
      v85 = v70;
      v86 = *(v70 + v84);
      if (sub_1000899F0(*(v72 + v84)))
      {
        v87 = v140;
        (*(v140 + 16))(v157, v72 + *(v83 + 20), v175);
        v88 = v143;
        v89 = v142;
        (*(v143 + 16))(v142, v85 + v51, v152);
        v90 = AlarmPresentationState.alarmLabel.getter();
        if (!v91)
        {
          v92 = v138;
          AlarmPresentationState.mode.getter();
          v93 = sub_10000AAEC(v92);
          v95 = v94;
          v69(v92, v71);
          v91 = v95;
          v90 = v93;
        }

        v96 = v139;
        *(v139 + 1) = v90;
        *(v96 + 16) = v91;
        *v96 = 0;
        *(v96 + 32) = AlarmAttributes.tintColor.getter();
        v97 = v141;
        AlarmAttributes.metadata.getter();
        v98 = type metadata accessor for MTAlarmCustomContent();
        v99 = *(v98 - 8);
        if ((*(v99 + 48))(v97, 1, v98) == 1)
        {
          sub_10002D02C(v97, &unk_100118100, &qword_1000D1250);
          v100 = 1;
        }

        else
        {
          MTAlarmCustomContent.type.getter();
          (*(v99 + 8))(v97, v98);
          v126 = AlarmType.rawValue.getter();
          v100 = v126 != AlarmType.rawValue.getter();
        }

        *(v96 + 24) = v100;
        v127 = v153;
        (*(v87 + 32))(v96 + *(v153 + 32), v157, v175);
        (*(v88 + 32))(v96 + *(v127 + 36), v89, v152);
        v128 = v144;
        sub_1000A73D0(v96, v144, type metadata accessor for AlarmKitAlertLabelView);
        sub_1000A7438(v128, v155, type metadata accessor for AlarmKitAlertLabelView);
        swift_storeEnumTagMultiPayload();
        sub_1000A4894(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
        sub_1000A4D0C();
        v129 = v156;
        _ConditionalContent<>.init(storage:)();
        sub_10002CFC4(v129, v172, &qword_100118B48, &unk_1000D6CB8);
        swift_storeEnumTagMultiPayload();
        sub_1000A4C50();
        sub_1000A7314();
        _ConditionalContent<>.init(storage:)();
        sub_10002D02C(v129, &qword_100118B48, &unk_1000D6CB8);
        return sub_1000A74A0(v128, type metadata accessor for AlarmKitAlertLabelView);
      }

      else
      {
        v119 = v162;
        static Locale.autoupdatingCurrent.getter();
        v120 = Locale._bridgeToObjectiveC()().super.isa;
        v121 = (*(v163 + 8))(v119, v164);
        v121.i64[0] = 0;
        v122 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, v120, v121);

        if (v122)
        {
          v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v125 = v124;
        }

        else
        {
          v123 = 0;
          v125 = 0xE000000000000000;
        }

        if (sub_1000899F0(v86))
        {
          v130 = 48.0;
        }

        else
        {
          v130 = 47.0;
        }

        if (sub_1000899F0(v86))
        {
          if (qword_100113658 != -1)
          {
            swift_once();
          }

          v131 = &qword_10011F690;
        }

        else
        {
          if (qword_100113678 != -1)
          {
            swift_once();
          }

          v131 = &qword_10011F6B0;
        }

        v132 = *v131;
        v133 = v72 + *(v83 + 20);
        v134 = AlarmAttributes.tintColor.getter();
        v135 = v155;
        *v155 = v123;
        *(v135 + 1) = v125;
        v135[2] = v130;
        *(v135 + 3) = v132;
        *(v135 + 4) = v134;
        swift_storeEnumTagMultiPayload();
        sub_1000A4894(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
        sub_1000A4D0C();

        v136 = v156;
        _ConditionalContent<>.init(storage:)();
        sub_10002CFC4(v136, v172, &qword_100118B48, &unk_1000D6CB8);
        swift_storeEnumTagMultiPayload();
        sub_1000A4C50();
        sub_1000A7314();
        _ConditionalContent<>.init(storage:)();

        return sub_10002D02C(v136, &qword_100118B48, &unk_1000D6CB8);
      }
    }
  }
}

double sub_10009C088@<D0>(uint64_t a1@<X8>)
{
  sub_10009AC80(v1, a1);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
  v6 = StateObject.wrappedValue.getter();
  v7 = static ObservableObject.environmentStore.getter();
  v8 = (a1 + *(sub_1000032D4(&qword_100118B30, &qword_1000D6CA0) + 36));
  *v8 = v7;
  v8[1] = v6;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = (a1 + *(sub_1000032D4(&qword_100118B38, &qword_1000D6CA8) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_10009C1B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for UUID();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AccessibilityChildBehavior();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&qword_100118BD0, &qword_1000D6D40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_1000032D4(&qword_100118BD8, &qword_1000D6D48);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v20 = sub_1000032D4(&qword_100118BE0, &qword_1000D6D50);
  sub_10009C508(v2, &v14[*(v20 + 44)]);
  v21 = static Edge.Set.horizontal.getter();
  v22 = &v14[*(v11 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  static AccessibilityChildBehavior.contain.getter();
  v23 = sub_1000A77B4();
  View.accessibilityElement(children:)();
  (*(v7 + 8))(v10, v26);
  sub_10002D02C(v14, &qword_100118BD0, &qword_1000D6D40);
  v24 = v2 + *(type metadata accessor for CountdownPlatter(0) + 20);
  AlarmPresentationState.alarmID.getter();
  UUID.uuidString.getter();
  (*(v27 + 8))(v6, v28);
  v30 = v11;
  v31 = v23;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_10009C508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = type metadata accessor for CountdownPlatter(0);
  v4 = (v3 - 8);
  v84 = *(v3 - 8);
  v83 = *(v84 + 64);
  __chkstk_darwin(v3);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100118C00, &qword_1000D6D60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v71 - v11;
  v13 = sub_1000032D4(&qword_100118C08, &qword_1000D6D68);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v71 - v15;
  v17 = sub_1000032D4(&qword_100118C10, &qword_1000D6D70);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v72 = &v71 - v20;
  v21 = sub_1000032D4(&qword_100118C18, &qword_1000D6D78);
  v22 = *(v21 - 8);
  v75 = v21 - 8;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21 - 8);
  v73 = &v71 - v24;
  v76 = sub_1000032D4(&qword_100118C20, &qword_1000D6D80);
  v25 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v74 = &v71 - v26;
  v27 = sub_1000032D4(&qword_100118C28, &qword_1000D6D88);
  v80 = *(v27 - 8);
  v81 = v27;
  v28 = *(v80 + 64);
  v29 = __chkstk_darwin(v27);
  v79 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v77 = &v71 - v31;
  v32 = type metadata accessor for AlarmKitPlatterControls(0);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  v35 = __chkstk_darwin(v32);
  v78 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v71 - v37;
  v39 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v39 - 8) + 16))(v38, a1, v39);
  v40 = v4[7];
  v41 = *(v33 + 28);
  v42 = type metadata accessor for AlarmPresentationState();
  (*(*(v42 - 8) + 16))(&v38[v41], a1 + v40, v42);
  v43 = a1;
  v38[*(v33 + 32)] = *(a1 + v4[10]);
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v44 = &v16[*(sub_1000032D4(&qword_100118C30, &qword_1000D6D90) + 44)];
  v45 = *(v43 + v4[9]);
  *v12 = static VerticalAlignment.firstTextBaseline.getter();
  *(v12 + 1) = 0x4014000000000000;
  v12[16] = 0;
  v46 = sub_1000032D4(&qword_100118C38, &qword_1000D6D98);
  sub_10009CD38(v43, &v12[*(v46 + 44)]);
  sub_10002CFC4(v12, v10, &qword_100118C00, &qword_1000D6D60);
  *v44 = v45;
  v44[8] = 0;
  v47 = sub_1000032D4(&qword_100118C40, &unk_1000D6DA0);
  sub_10002CFC4(v10, &v44[*(v47 + 48)], &qword_100118C00, &qword_1000D6D60);
  sub_10002D02C(v12, &qword_100118C00, &qword_1000D6D60);
  sub_10002D02C(v10, &qword_100118C00, &qword_1000D6D60);
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v48 = v72;
  sub_10002C7C4(v16, v72, &qword_100118C08, &qword_1000D6D68);
  v49 = (v48 + *(v18 + 44));
  v50 = v91;
  v49[4] = v90;
  v49[5] = v50;
  v49[6] = v92;
  v51 = v87;
  *v49 = v86;
  v49[1] = v51;
  v52 = v89;
  v49[2] = v88;
  v49[3] = v52;
  v53 = v48;
  v54 = v73;
  sub_10002C7C4(v53, v73, &qword_100118C10, &qword_1000D6D70);
  *(v54 + *(v75 + 44)) = 0;
  static Color.black.getter();
  v55 = Color.opacity(_:)();

  LOBYTE(v45) = static Edge.Set.all.getter();
  v56 = v74;
  sub_10002C7C4(v54, v74, &qword_100118C18, &qword_1000D6D78);
  v57 = v56 + *(v76 + 36);
  *v57 = v55;
  *(v57 + 8) = v45;
  v58 = v82;
  sub_1000A7438(v43, v82, type metadata accessor for CountdownPlatter);
  v59 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v60 = swift_allocObject();
  sub_1000A73D0(v58, v60 + v59, type metadata accessor for CountdownPlatter);
  sub_1000A7A04();
  v61 = v77;
  View.onTapGesture(count:perform:)();

  sub_10002D02C(v56, &qword_100118C20, &qword_1000D6D80);
  v62 = v78;
  sub_1000A7438(v38, v78, type metadata accessor for AlarmKitPlatterControls);
  v63 = v79;
  v64 = v80;
  v65 = *(v80 + 16);
  v66 = v81;
  v65(v79, v61, v81);
  v67 = v85;
  sub_1000A7438(v62, v85, type metadata accessor for AlarmKitPlatterControls);
  v68 = sub_1000032D4(&qword_100118C68, &unk_1000D6DB8);
  v65((v67 + *(v68 + 48)), v63, v66);
  v69 = *(v64 + 8);
  v69(v61, v66);
  sub_1000A74A0(v38, type metadata accessor for AlarmKitPlatterControls);
  v69(v63, v66);
  return sub_1000A74A0(v62, type metadata accessor for AlarmKitPlatterControls);
}

uint64_t sub_10009CD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for AlarmKitCountdownView(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v32 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v10 = type metadata accessor for AlarmKitCountdownLabelView(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v31 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v29 - v15;
  v17 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v18 = *(v17 - 8);
  v29[0] = *(v18 + 16);
  v29[1] = v18 + 16;
  (v29[0])(v16, a1, v17);
  v30 = type metadata accessor for CountdownPlatter(0);
  v19 = *(v30 + 20);
  v20 = *(v11 + 28);
  v21 = type metadata accessor for AlarmPresentationState();
  v22 = *(*(v21 - 8) + 16);
  v22(&v16[v20], a1 + v19, v21);
  (v29[0])(&v9[v4[7]], a1, v17);
  v22(&v9[v4[8]], a1 + v19, v21);
  v23 = *(a1 + *(v30 + 32));
  *v9 = sub_1000A9C68;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v9[v4[9]] = v23;
  v24 = v31;
  sub_1000A7438(v16, v31, type metadata accessor for AlarmKitCountdownLabelView);
  v25 = v32;
  sub_1000A7438(v9, v32, type metadata accessor for AlarmKitCountdownView);
  v26 = v33;
  sub_1000A7438(v24, v33, type metadata accessor for AlarmKitCountdownLabelView);
  v27 = sub_1000032D4(&qword_100118C70, &qword_1000D6DC8);
  sub_1000A7438(v25, v26 + *(v27 + 48), type metadata accessor for AlarmKitCountdownView);
  sub_1000A74A0(v9, type metadata accessor for AlarmKitCountdownView);
  sub_1000A74A0(v16, type metadata accessor for AlarmKitCountdownLabelView);
  sub_1000A74A0(v25, type metadata accessor for AlarmKitCountdownView);
  return sub_1000A74A0(v24, type metadata accessor for AlarmKitCountdownLabelView);
}

uint64_t sub_10009D04C()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  AlarmAttributes.metadata.getter();
  v8 = type metadata accessor for MTAlarmCustomContent();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = &unk_100118100;
    v11 = &qword_1000D1250;
    v12 = v7;
  }

  else
  {
    v13 = MTAlarmCustomContent.type.getter();
    if (v13 == 1)
    {
      v15 = 4;
    }

    else
    {
      if (v13)
      {
        return (*(v9 + 8))(v7, v8);
      }

      v14 = MTAlarmCustomContent.isSleepAlarm.getter();
      if (v14 == 2 || (v14 & 1) == 0)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    (*(v9 + 8))(v7, v8);
    v17 = [objc_opt_self() mtURLForSection:v15];
    if (v17)
    {
      v18 = v17;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v3, v19, 1, v20);
    type metadata accessor for MTSUtilities();
    dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
    v10 = &unk_100119A20;
    v11 = &qword_1000D1DC0;
    v12 = v3;
  }

  return sub_10002D02C(v12, v10, v11);
}

uint64_t sub_10009D2F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10009D364()
{
  v1 = OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate__resizeDelegate;
  v2 = sub_1000032D4(&qword_100118670, &qword_1000D63E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10009D448()
{
  sub_10009D4EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10009D4EC()
{
  if (!qword_1001183C0)
  {
    sub_10001C820(&qword_100114130, &qword_1000D1418);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1001183C0);
    }
  }
}

__n128 sub_10009D57C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009D590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10009D5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10009D62C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009D640(uint64_t a1, int a2)
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

uint64_t sub_10009D688(uint64_t result, int a2, int a3)
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

uint64_t sub_10009D6E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10009D728(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10009D78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009D860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10009D93C()
{
  sub_1000A8738(319, &qword_100114E80, &type metadata accessor for StateObject);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10009DA00()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_10009DB48@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100117870, &qword_1000D5390);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TimelineCountdownView(0);
  sub_10002CFC4(v1 + *(v12 + 20), v11, &qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Locale();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10009DD50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnvironmentDelegate(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009DD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v64 = sub_1000032D4(&qword_100118FB0, &unk_1000D7050);
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v7 = &v48 - v6;
  v57 = type metadata accessor for _ContentTransitionModifier();
  v8 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentTransition();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000032D4(&qword_100118FA0, &unk_1000D7030);
  v14 = *(*(v62 - 8) + 64);
  v15 = __chkstk_darwin(v62);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v48 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  v66 = a1;
  TimelineView.Context.date.getter();
  sub_10009E344();
  v25 = v24;
  v27 = v26;
  v28 = *(v20 + 8);
  v63 = v19;
  v59 = v20 + 8;
  v28(v23, v19);
  v29 = (a2 + *(type metadata accessor for TimelineCountdownView(0) + 36));
  v30 = *v29;
  if (*v29)
  {
    v60 = v28;
    if (*(v30 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize))
    {
      v52 = v25;
      v67 = v25;
      v68 = v27;
      sub_100025FB4();

      v31 = Text.init<A>(_:)();
      v49 = v32;
      v50 = v31;
      v34 = v33;
      v51 = v35;
      v36 = v54;
      static ContentTransition.numericText(countsDown:)();
      v37 = static Animation.easeInOut(duration:)();
      v53 = a2;
      v38 = v37;
      v39 = static ContentTransition.Options.animatesDifferentContent.getter();
      (*(v55 + 32))(v10, v36, v56);
      v40 = v57;
      *&v10[*(v57 + 20)] = v38;
      *&v10[*(v40 + 24)] = v39;
      sub_1000A7438(v10, &v17[*(v62 + 36)], &type metadata accessor for _ContentTransitionModifier);
      v41 = v49;
      *v17 = v50;
      *(v17 + 1) = v41;
      v17[16] = v34 & 1;
      *(v17 + 3) = v51;
      *(v17 + 16) = 256;
      sub_1000A74A0(v10, &type metadata accessor for _ContentTransitionModifier);
      v42 = v58;
      sub_10002C7C4(v17, v58, &qword_100118FA0, &unk_1000D7030);
      sub_10002CFC4(v42, v7, &qword_100118FA0, &unk_1000D7030);
      swift_storeEnumTagMultiPayload();
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_1000A984C();
      sub_100086F90();
      v25 = v52;
      _ConditionalContent<>.init(storage:)();
      sub_10002D02C(v42, &qword_100118FA0, &unk_1000D7030);
    }

    else
    {
      v67 = v25;
      v68 = v27;
      sub_100025FB4();

      *v7 = Text.init<A>(_:)();
      *(v7 + 1) = v43;
      v7[16] = v44 & 1;
      *(v7 + 3) = v45;
      *(v7 + 16) = 256;
      swift_storeEnumTagMultiPayload();
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_1000A984C();
      sub_100086F90();
      _ConditionalContent<>.init(storage:)();
    }

    sub_10009E4D8(v25, v27);

    TimelineView.Context.date.getter();
    sub_10009E7FC(v23);
    return v60(v23, v63);
  }

  else
  {
    v47 = v29[1];
    type metadata accessor for EnvironmentDelegate(0);
    sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10009E344()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimelineCountdownView(0);
  v7 = *(v6 + 24);
  sub_10009DB48(v5);
  v8 = sub_10009DA00();
  v9 = *(v0 + *(v6 + 28));
  Date.timeIntervalSince(_:)();
  v11 = v10;
  v12.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  v13.i64[0] = v11;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = 1;
  v18 = 0;
  v19 = 0;
  v20 = v9;
  isa = v12.super.isa;
  if (v8)
  {
    v22 = sub_100002848(0, 0, 1, 1, 0, 0, v9, v12.super.isa, v13);

    if (v22)
    {
LABEL_5:
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 8))(v5, v1);
      return;
    }

    __break(1u);
  }

  v22 = sub_1000022A8(v14, v15, v16, v17, v18, v19, v20, isa, v13);

  if (v22)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_10009E4D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TimelineCountdownView(0);
  v6 = (v2 + *(v5 + 36));
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v7 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue + 8);
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = *(v7 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue) & 0xFFFFFFFFFFFFLL;
    }

    if (v9 && *(v7 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) == 1)
    {
      v10 = v5;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v25)
      {
        ObjectType = swift_getObjectType();
        v12 = [objc_opt_self() systemFontOfSize:*(v2 + *(v10 + 32))];
        sub_1000032D4(&qword_100118FB8, &qword_1000D7060);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000D08B0;
        *(inited + 32) = NSFontAttributeName;
        *(inited + 40) = v12;
        v14 = NSFontAttributeName;
        v15 = v12;
        v16 = sub_10006B074(inited);
        swift_setDeallocating();
        sub_10002D02C(inited + 32, &qword_100118FC0, &qword_1000D7068);
        v17 = String._bridgeToObjectiveC()();
        sub_100099BFC(v16);

        type metadata accessor for Key(0);
        sub_1000A4894(&qword_100113900, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v17 sizeWithAttributes:isa];
        v20 = v19;

        (*(v26 + 8))(ObjectType, v26, v20);
        swift_unknownObjectRelease();
      }
    }

    v21 = (v7 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
    v22 = *(v7 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue + 8);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    v24 = v6[1];
    type metadata accessor for EnvironmentDelegate(0);
    sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009E7FC(uint64_t a1)
{
  v63 = a1;
  v62 = type metadata accessor for Calendar.Component();
  v65 = *(v62 - 8);
  v2 = *(v65 + 64);
  __chkstk_darwin(v62);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v64 = type metadata accessor for Date();
  v11 = *(v64 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v64);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for TimelineCountdownView(0);
  v19 = (v1 + *(v18 + 36));
  v20 = *v19;
  if (!*v19)
  {
    goto LABEL_17;
  }

  v21 = v18;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v58 = v20;

  result = v66;
  if (!v66)
  {
    return result;
  }

  v53 = v15;
  v60 = v17;
  swift_unknownObjectRelease();
  sub_10009E344();
  v52 = v23;
  v59 = v24;
  v25 = *(v21 + 40);
  v26 = v65;
  v27 = *(v65 + 104);
  v57 = enum case for Calendar.Component.second(_:);
  v28 = v62;
  v56 = v27;
  v27(v4);
  v29 = *(v1 + *(v21 + 44));
  v54 = v25;
  v55 = v1;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v30 = *(v26 + 8);
  v65 = v26 + 8;
  v30(v4, v28);
  v31 = v11[6];
  v32 = v64;
  if (v31(v10, 1, v64) == 1)
  {

    return sub_10002D02C(v10, &qword_100115E40, &unk_1000D1280);
  }

  v51 = v11;
  v50 = v11[4];
  v50(v60, v10, v32);
  v56(v4, v57, v28);
  if (__OFSUB__(0, v29))
  {
    __break(1u);
LABEL_17:
    v49 = v19[1];
    type metadata accessor for EnvironmentDelegate(0);
    sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v33 = v31;
  v34 = v61;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v35 = v64;
  v30(v4, v28);
  if (v33(v34, 1, v35) == 1)
  {
    (v51[1])(v60, v35);

    return sub_10002D02C(v34, &qword_100115E40, &unk_1000D1280);
  }

  v36 = v53;
  v50(v53, v34, v35);
  v37 = v60;
  sub_10009E344();
  sub_10009E344();
  v38 = v58;

  v39 = String.count.getter();
  v40 = String.count.getter();

  if (v39 != v40)
  {

    v44 = v51;
LABEL_13:
    v47 = v44[1];

    v48 = v64;
    v47(v36, v64);
    v47(v37, v48);
    *(v38 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 1;
  }

  v41 = String.count.getter();

  v42 = String.count.getter();

  v43 = v41 == v42;
  v44 = v51;
  if (!v43)
  {
    goto LABEL_13;
  }

  v45 = v51[1];

  v46 = v64;
  v45(v36, v64);
  v45(v37, v46);
  *(v38 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
}

uint64_t sub_10009EE04(uint64_t a1)
{
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimersTimelineSchedule(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  v14 = *(v2 + 32);
  v15 = *(v11 + 20);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 16))(&v13[v15], v1 + v14, v16);
  *v13 = 0x3FA999999999999ALL;
  sub_1000A7438(v1, v5, type metadata accessor for TimelineCountdownView);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  sub_1000A73D0(v5, v18 + v17, type metadata accessor for TimelineCountdownView);
  sub_1000A7438(v13, v10, type metadata accessor for TimersTimelineSchedule);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000A9700;
  *(v19 + 24) = v18;
  sub_1000032D4(&qword_100118F80, &qword_1000D7028);
  sub_1000A4894(&qword_100118F88, type metadata accessor for TimersTimelineSchedule);
  sub_1000A97C0();
  TimelineView<>.init(_:content:)();
  return sub_1000A74A0(v13, type metadata accessor for TimersTimelineSchedule);
}

uint64_t sub_10009F0CC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v42 = sub_1000032D4(&qword_100118A90, &qword_1000D6BB8);
  v2 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v4 = &v38 - v3;
  v5 = type metadata accessor for ContentTransition();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000032D4(&qword_100118A98, &qword_1000D6BC0);
  v9 = *(*(v41 - 8) + 64);
  v10 = __chkstk_darwin(v41);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = sub_1000032D4(&qword_100118AA0, &qword_1000D6BC8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v19 = sub_1000032D4(&qword_100118AA8, &qword_1000D6BD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v38 - v24;
  v26 = type metadata accessor for RunningCountdownView(0);
  if (*(v1 + *(v26 + 36)) == 1)
  {
    sub_10009F508(0, v14);
    static ContentTransition.numericText(countsDown:)();
    v27 = static Animation.easeInOut(duration:)();
    v28 = static ContentTransition.Options.animatesDifferentContent.getter();
    v29 = &v18[*(v15 + 36)];
    (*(v39 + 32))(v29, v8, v40);
    v30 = type metadata accessor for _ContentTransitionModifier();
    *&v29[*(v30 + 20)] = v27;
    *&v29[*(v30 + 24)] = v28;
    sub_10002C7C4(v14, v18, &qword_100118A98, &qword_1000D6BC0);
    KeyPath = swift_getKeyPath();
    v32 = &v23[*(v19 + 36)];
    v33 = v32 + *(sub_1000032D4(&qword_100118B28, &qword_1000D6C00) + 28);
    static ContentTransition.Style.sessionWidget.getter();
    *v32 = KeyPath;
    sub_10002C7C4(v18, v23, &qword_100118AA0, &qword_1000D6BC8);
    v34 = &qword_100118AA8;
    v35 = &qword_1000D6BD0;
    sub_10002C7C4(v23, v25, &qword_100118AA8, &qword_1000D6BD0);
    sub_10002CFC4(v25, v4, &qword_100118AA8, &qword_1000D6BD0);
    swift_storeEnumTagMultiPayload();
    sub_1000A6C5C();
    sub_1000A6DA0();
    _ConditionalContent<>.init(storage:)();
    v36 = v25;
  }

  else
  {
    sub_10009F508(*(v1 + *(v26 + 20)), v12);
    v34 = &qword_100118A98;
    v35 = &qword_1000D6BC0;
    sub_10002CFC4(v12, v4, &qword_100118A98, &qword_1000D6BC0);
    swift_storeEnumTagMultiPayload();
    sub_1000A6C5C();
    sub_1000A6DA0();
    _ConditionalContent<>.init(storage:)();
    v36 = v12;
  }

  return sub_10002D02C(v36, v34, v35);
}

uint64_t sub_10009F508@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v43 = a2;
  v3 = type metadata accessor for Font._StylisticAlternative();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100118AE0, &qword_1000D6BE0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v42 = sub_1000032D4(&qword_100118AD0, &qword_1000D6BD8);
  v13 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v15 = &v40 - v14;
  v16 = type metadata accessor for TimelineCountdownView(0);
  v17 = v16[6];
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 16))(&v12[v17], v2, v18);
  v40 = type metadata accessor for RunningCountdownView(0);
  v19 = *(v2 + *(v40 + 24));
  KeyPath = swift_getKeyPath();
  *&v12[v16[5]] = swift_getKeyPath();
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
  v21 = EnvironmentObject.init()();
  *v12 = KeyPath;
  v12[8] = 0;
  v22 = v41;
  v12[v16[7]] = v41;
  *&v12[v16[8]] = v19;
  v23 = &v12[v16[9]];
  *v23 = v21;
  v23[1] = v24;
  v25 = &v12[v16[10]];
  static Calendar.current.getter();
  *&v12[v16[11]] = 1;
  sub_10009F98C();
  Font.monospacedDigit()();

  (*(v4 + 104))(v7, enum case for Font._StylisticAlternative.three(_:), v3);
  v26 = Font._stylisticAlternative(_:)();

  (*(v4 + 8))(v7, v3);
  v27 = swift_getKeyPath();
  v28 = &v12[*(sub_1000032D4(&qword_100118B10, &qword_1000D6BF8) + 36)];
  *v28 = v27;
  v28[1] = v26;
  v29 = *(v2 + *(v40 + 32));
  v30 = swift_getKeyPath();
  v31 = &v12[*(sub_1000032D4(&qword_100118B00, &qword_1000D6BF0) + 36)];
  *v31 = v30;
  v31[1] = v29;
  v32 = swift_getKeyPath();
  v33 = &v12[*(sub_1000032D4(&qword_100118AF0, &qword_1000D6BE8) + 36)];
  *v33 = v32;
  v33[8] = 1;
  v34 = swift_getKeyPath();
  v35 = &v12[*(v9 + 44)];
  *v35 = v34;
  *(v35 + 1) = 1;
  v35[16] = 0;
  if (v22)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.4;
  }

  v37 = swift_getKeyPath();
  sub_10002C7C4(v12, v15, &qword_100118AE0, &qword_1000D6BE0);
  v38 = &v15[*(v42 + 36)];
  *v38 = v37;
  *(v38 + 1) = v36;
  sub_1000A6E5C();

  View.accessibilityIdentifier(_:)();
  return sub_10002D02C(v15, &qword_100118AD0, &qword_1000D6BD8);
}

uint64_t sub_10009F98C()
{
  v1 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for RunningCountdownView(0);
  v6 = v5;
  if (*(v0 + v5[10]) == 1)
  {
    v7 = *(v0 + v5[7]);
    static Font.Weight.semibold.getter();
    static Font.Weight.== infix(_:_:)();
    v13 = String._bridgeToObjectiveC()();
    CTFontCreateWithNameAndOptions(v13, *(v0 + v6[6]), 0, 0x20000uLL);

    return Font.init(_:)();
  }

  else
  {
    v8 = *(v0 + v5[6]);
    v9 = *(v0 + v5[7]);
    v10 = type metadata accessor for Font.Design();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = static Font.system(size:weight:design:)();
    sub_10002D02C(v4, &qword_100113E08, &qword_1000D10F0);
    return v11;
  }
}

uint64_t sub_10009FB48@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for Font._StylisticAlternative();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = v1[1];
  *&v42[0] = *v1;
  *(&v42[0] + 1) = v11;
  sub_100025FB4();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v17 = v1[2];
  v18 = v1[3];
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v10, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  (*(v3 + 104))(v6, enum case for Font._StylisticAlternative.three(_:), v2);
  Font._stylisticAlternative(_:)();

  (*(v3 + 8))(v6, v2);
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v6) = v23;

  sub_100025B0C(v12, v14, v16 & 1);

  v24 = v1[4];
  v25 = Text.foregroundColor(_:)();
  v27 = v26;
  LOBYTE(v12) = v28;
  v30 = v29;
  sub_100025B0C(v20, v22, v6 & 1);

  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  LOBYTE(v42[0]) = v12 & 1;
  LOBYTE(v36) = 0;
  v33 = swift_getKeyPath();
  *&v36 = v25;
  *(&v36 + 1) = v27;
  LOBYTE(v37) = v12 & 1;
  *(&v37 + 1) = v30;
  *&v38 = KeyPath;
  BYTE8(v38) = 1;
  *&v39 = v32;
  *(&v39 + 1) = 1;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = v33;
  v41 = 0x3FD999999999999ALL;
  sub_1000032D4(&qword_100118A60, &qword_1000D6B98);
  sub_1000A6A34();
  View.accessibilityIdentifier(_:)();
  v42[2] = v38;
  v42[3] = v39;
  v42[4] = v40;
  v43 = v41;
  v42[0] = v36;
  v42[1] = v37;
  return sub_10002D02C(v42, &qword_100118A60, &qword_1000D6B98);
}

double sub_10009FF44@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 displayTitle];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v16 = v4;
  *(&v16 + 1) = v6;
  sub_100025FB4();
  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (qword_100113698 != -1)
  {
    swift_once();
  }

  v14 = qword_10011F6D0;

  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  *(a2 + 120) = v21;
  *(a2 + 136) = v22;
  result = *&v16;
  *(a2 + 40) = v16;
  *(a2 + 56) = v17;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 72) = v18;
  return result;
}

uint64_t sub_1000A00A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v29[6] = v30;
  *&v29[22] = v31;
  *&v29[38] = v32;
  v6 = v5 * 0.5;
  v7 = (a2 + *(sub_1000032D4(&qword_100118A18, &qword_1000D6A80) + 36));
  v8 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = v6;
  v7[1] = v6;
  *(v7 + *(sub_1000032D4(&qword_100118A38, &qword_1000D6A98) + 36)) = 256;
  *a2 = v4;
  *(a2 + 8) = 256;
  v11 = *&v29[16];
  *(a2 + 10) = *v29;
  *(a2 + 26) = v11;
  *(a2 + 42) = *&v29[32];
  *(a2 + 56) = *&v29[46];

  v12 = static Alignment.center.getter();
  v14 = v13;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);

  v17 = Image.init(systemName:)();
  v18 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v20 = *(a1 + 48);
  v21 = swift_getKeyPath();
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  *&v33 = v17;
  *(&v33 + 1) = KeyPath;
  *&v34 = v18;
  *(&v34 + 1) = v21;
  *&v35 = v20;
  *(&v35 + 1) = v22;
  *&v36 = v23;
  *(&v36 + 1) = v12;
  v37 = v14;
  v24 = a2 + *(sub_1000032D4(&qword_100118A00, &qword_1000D6A78) + 36);
  v25 = v36;
  *(v24 + 32) = v35;
  *(v24 + 48) = v25;
  *(v24 + 64) = v37;
  v26 = v34;
  *v24 = v33;
  *(v24 + 16) = v26;
  v38[0] = v17;
  v38[1] = KeyPath;
  v38[2] = v18;
  v38[3] = v21;
  v38[4] = v20;
  v38[5] = v22;
  v38[6] = v23;
  v38[7] = v12;
  v38[8] = v14;

  sub_10002CFC4(&v33, &v28, &qword_100118A48, &qword_1000D6AA0);
  return sub_10002D02C(v38, &qword_100118A48, &qword_1000D6AA0);
}

uint64_t sub_1000A02FC()
{
  v1 = sub_1000032D4(&qword_1001189F8, &qword_1000D6A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9[-v4];
  v6 = *(v0 + 64);
  v12[3] = *(v0 + 48);
  v13 = v6;
  v7 = *(v0 + 32);
  v12[1] = *(v0 + 16);
  v12[2] = v7;
  v14 = *(v0 + 80);
  v12[0] = *v0;
  v10 = v12;

  sub_1000032D4(&qword_100118A00, &qword_1000D6A78);
  sub_1000A6740();
  Button.init(action:label:)();
  v11 = v13;
  sub_10002DAD8(&qword_100118A50, &qword_1001189F8, &qword_1000D6A70);
  sub_1000A6968();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1000A04C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MediumActionButton(0) + 24);
  v5 = type metadata accessor for Material();
  (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
  *(a2 + *(sub_1000032D4(&qword_100119000, &qword_1000D7090) + 56)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a2 + *(sub_1000032D4(&qword_100118FF0, &qword_1000D7088) + 36));
  *v6 = v13;
  v6[1] = v14;
  v6[2] = v15;
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = (a2 + *(sub_1000032D4(&qword_100118FD8, &qword_1000D7080) + 36));
  sub_1000A0608(a1, v10);
  result = sub_1000032D4(&qword_100119010, &qword_1000D7098);
  v12 = (v10 + *(result + 36));
  *v12 = v7;
  v12[1] = v9;
  return result;
}

uint64_t sub_1000A0608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];

  v6 = Image.init(systemName:)();
  if (qword_1001136F0 != -1)
  {
    swift_once();
  }

  v7 = qword_10011F728;
  KeyPath = swift_getKeyPath();
  v9 = a1[2];
  v10 = swift_getKeyPath();
  v11 = *(sub_1000032D4(&qword_100119020, &qword_1000D70A0) + 36);
  v12 = type metadata accessor for MediumActionButton(0);
  v13 = (a1 + *(v12 + 28));
  v21 = v13[2];
  v22 = v13[3];
  v23 = v13[4];
  v19 = *v13;
  v20 = v13[1];

  View._colorMatrix(_:)();
  *a2 = v6;
  a2[1] = KeyPath;
  a2[2] = v7;
  a2[3] = v10;
  a2[4] = v9;
  v14 = *(v12 + 32);
  v15 = *(sub_1000032D4(&qword_100119028, &qword_1000D70A8) + 36);
  v16 = type metadata accessor for BlendMode();
  v17 = *(*(v16 - 8) + 16);

  return v17(a2 + v15, a1 + v14, v16);
}

uint64_t sub_1000A07AC(uint64_t a1)
{
  v3 = sub_1000032D4(&qword_100118FD0, &qword_1000D7078);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = (v1 + *(a1 + 40));
  v9 = *v8;
  v10 = v8[1];
  v13 = v1;

  sub_1000032D4(&qword_100118FD8, &qword_1000D7080);
  sub_1000A98F0();
  Button.init(action:label:)();
  v14 = *(v1 + *(a1 + 36));
  sub_10002DAD8(&qword_100119018, &qword_100118FD0, &qword_1000D7078);
  sub_1000A6968();
  View.buttonStyle<A>(_:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1000A095C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v62 = type metadata accessor for Capsule();
  v2 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Glass();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v6 = __chkstk_darwin(v4);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v50 - v8;
  v54 = type metadata accessor for BorderedProminentButtonStyle();
  v55 = *(v54 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v54);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000032D4(&qword_100118B60, &qword_1000D6CD0);
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v51);
  v14 = &v50 - v13;
  v15 = sub_1000032D4(&qword_100118B68, &qword_1000D6CD8);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v50 - v18;
  v64 = sub_1000032D4(&qword_100118B70, &qword_1000D6CE0);
  v20 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v22 = &v50 - v21;
  v53 = sub_1000032D4(&qword_100118B78, &qword_1000D6CE8);
  v56 = *(v53 - 8);
  v23 = *(v56 + 64);
  __chkstk_darwin(v53);
  v65 = &v50 - v24;
  v25 = type metadata accessor for LargeActionButton(0);
  v26 = (v1 + v25[8]);
  v27 = *v26;
  v28 = v26[1];
  v66 = v1;

  sub_1000032D4(&qword_100118B80, &unk_1000D6CF0);
  sub_1000A7508();
  Button.init(action:label:)();
  *(v1 + v25[7]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v11 + 32))(v19, v14, v51);
  v29 = &v19[*(v16 + 44)];
  v30 = v72;
  *v29 = v71;
  *(v29 + 1) = v30;
  *(v29 + 2) = v73;
  v31 = *(v1 + v25[6]);
  KeyPath = swift_getKeyPath();
  v67 = v31;

  v33 = AnyShapeStyle.init<A>(_:)();
  sub_10002C7C4(v19, v22, &qword_100118B68, &qword_1000D6CD8);
  v34 = &v22[*(v64 + 36)];
  *v34 = KeyPath;
  v34[1] = v33;
  v35 = v52;
  BorderedProminentButtonStyle.init()();
  v36 = sub_1000A7644();
  v37 = sub_1000A4894(&qword_100118BC8, &type metadata accessor for BorderedProminentButtonStyle);
  v38 = v54;
  View.buttonStyle<A>(_:)();
  v39 = v38;
  (*(v55 + 8))(v35, v38);
  sub_10002D02C(v22, &qword_100118B70, &qword_1000D6CE0);
  v40 = v58;
  static Glass.regular.getter();
  v41 = v57;
  Glass.flexible(_:)();
  v42 = v60;
  v43 = *(v59 + 8);
  v43(v40, v60);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = v61;
  (*(*(v45 - 8) + 104))(v61, v44, v45);
  v67 = v64;
  v68 = v39;
  v69 = v36;
  v70 = v37;
  swift_getOpaqueTypeConformance2();
  sub_1000A4894(&qword_100115720, &type metadata accessor for Capsule);
  v47 = v53;
  v48 = v65;
  View.glassEffect<A>(_:in:)();
  sub_1000A74A0(v46, &type metadata accessor for Capsule);
  v43(v41, v42);
  return (*(v56 + 8))(v48, v47);
}

uint64_t sub_1000A1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(a2, v9, v10);
  v11 = static Color.clear.getter();
  v12 = sub_1000032D4(&qword_100115760, &qword_1000D2CA0);
  *(a2 + *(v12 + 52)) = v11;
  v13 = *(v12 + 56);
  v45 = a2;
  *(a2 + v13) = 256;
  v14 = static Alignment.center.getter();
  v42 = v15;
  v43 = v14;
  (*(v5 + 16))(v8, a1, v4);
  v16 = Text.init(_:)();
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for LargeActionButton(0);
  v22 = *(v21 + 28);
  v44 = a1;
  if (*(a1 + v22) == 1)
  {
    if (qword_1001136A0 != -1)
    {
      swift_once();
    }

    v23 = &qword_10011F6D8;
  }

  else
  {
    if (qword_1001136C8 != -1)
    {
      swift_once();
    }

    v23 = &qword_10011F700;
  }

  v24 = *v23;

  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  sub_100025B0C(v16, v18, v20 & 1);

  v46 = *(v44 + *(v21 + 20));

  v30 = Text.foregroundStyle<A>(_:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_100025B0C(v25, v27, v29 & 1);

  result = sub_1000032D4(&qword_100118B80, &unk_1000D6CF0);
  v38 = v45 + *(result + 36);
  *v38 = v30;
  *(v38 + 8) = v32;
  *(v38 + 16) = v34 & 1;
  v39 = v42;
  v40 = v43;
  *(v38 + 24) = v36;
  *(v38 + 32) = v40;
  *(v38 + 40) = v39;
  return result;
}

uint64_t sub_1000A1350@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v40 = sub_1000032D4(&qword_100118F30, &qword_1000D7000);
  v2 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v41 = &v37[-v3];
  v42 = type metadata accessor for ButtonStyleConfiguration.Label();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v42);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v37[-v9];
  v11 = sub_1000032D4(&qword_100118F38, &qword_1000D7008);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v37[-v13];
  v15 = sub_1000032D4(&qword_100118F40, &qword_1000D7010);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v37[-v17];
  v39 = sub_1000032D4(&qword_100118F48, &qword_1000D7018);
  v19 = *(*(v39 - 8) + 64);
  v20 = __chkstk_darwin(v39);
  v22 = &v37[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v37[-v23];
  if (v38)
  {
    ButtonStyleConfiguration.label.getter();
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v25 = 0.65;
    }

    else
    {
      v25 = 1.0;
    }

    (*(v4 + 32))(v14, v10, v42);
    *&v14[*(v11 + 36)] = v25;
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v26 = 0.9;
    }

    else
    {
      v26 = 1.0;
    }

    static UnitPoint.center.getter();
    v28 = v27;
    v30 = v29;
    sub_10002C7C4(v14, v18, &qword_100118F38, &qword_1000D7008);
    v31 = &v18[*(v15 + 36)];
    *v31 = v26;
    v31[1] = v26;
    *(v31 + 2) = v28;
    *(v31 + 3) = v30;
    ButtonStyleConfiguration.isPressed.getter();
    ButtonStyleConfiguration.isPressed.getter();
    v32 = static Animation.spring(response:dampingFraction:blendDuration:)();
    v33 = ButtonStyleConfiguration.isPressed.getter();
    sub_10002C7C4(v18, v22, &qword_100118F40, &qword_1000D7010);
    v34 = &v22[*(v39 + 36)];
    *v34 = v32;
    v34[8] = v33 & 1;
    sub_10002C7C4(v22, v24, &qword_100118F48, &qword_1000D7018);
    sub_10002CFC4(v24, v41, &qword_100118F48, &qword_1000D7018);
    swift_storeEnumTagMultiPayload();
    sub_1000A9350();
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label);
    _ConditionalContent<>.init(storage:)();
    return sub_10002D02C(v24, &qword_100118F48, &qword_1000D7018);
  }

  else
  {
    ButtonStyleConfiguration.label.getter();
    v36 = v42;
    (*(v4 + 16))(v41, v8, v42);
    swift_storeEnumTagMultiPayload();
    sub_1000A9350();
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v8, v36);
  }
}

uint64_t sub_1000A1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;

  v8 = Image.init(_internalSystemName:)();
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

  v11 = static Font.system(size:weight:design:)();
  sub_10002D02C(v7, &qword_100113E08, &qword_1000D10F0);
  v12 = swift_getKeyPath();
  v14[1] = v8;
  v14[2] = KeyPath;
  v14[3] = a3;
  v14[4] = v12;
  v14[5] = v11;
  sub_1000032D4(&qword_100118D28, &qword_1000D6E58);
  sub_1000A801C();
  View.accessibilityHidden(_:)();
}

uint64_t sub_1000A1A04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = a1 + *(sub_1000032D4(&qword_100118D20, &qword_1000D6E50) + 44);
  return sub_1000A1848(v3, v4, v6);
}

uint64_t sub_1000A1A78()
{
  v0 = type metadata accessor for EnvironmentDelegate(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_1000032D4(&qword_100114130, &qword_1000D1418);
  Published.init(initialValue:)();
  v4 = (v3 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return v3;
}

uint64_t sub_1000A1B68()
{
  v1 = sub_1000032D4(&qword_100113FD8, &qword_1000D63D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TimerRunningCompressedTrailingView(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 16))(v4, v0 + v6, v7);
  if (qword_100113668 != -1)
  {
    swift_once();
  }

  v8 = qword_10011F6A0;
  v9 = *(v0 + *(v5 + 24));
  v10 = type metadata accessor for RunningCountdownView(0);
  v4[v10[5]] = 1;
  *&v4[v10[6]] = 0x402F000000000000;
  *&v4[v10[7]] = v8;
  *&v4[v10[8]] = v9;
  v4[v10[9]] = 0;
  v4[v10[10]] = 0;
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 16);
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);

  v14 = StateObject.wrappedValue.getter();
  v15 = static ObservableObject.environmentStore.getter();
  v16 = &v4[*(v1 + 36)];
  *v16 = v15;
  v16[1] = v14;
  sub_1000A4F08();
  View.accessibilityHidden(_:)();
  return sub_10002D02C(v4, &qword_100113FD8, &qword_1000D63D0);
}

uint64_t sub_1000A1DB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10008C790(*(v0 + 8), *v0);
  if (qword_100113668 != -1)
  {
    swift_once();
  }

  sub_1000A4D0C();

  View.accessibilityHidden(_:)();
}

uint64_t sub_1000A1EB0()
{
  v1 = sub_1000032D4(&qword_100118570, &qword_1000D62D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - v3;
  v5 = sub_1000032D4(&qword_100118578, &qword_1000D62D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_1000032D4(&qword_100118580, &qword_1000D62E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = [*v0 isFiring];
  v14 = static VerticalAlignment.center.getter();
  if (v13)
  {
    *v12 = v14;
    *(v12 + 1) = 0;
    v12[16] = 0;
    v15 = sub_1000032D4(&qword_1001185A0, &qword_1000D62F0);
    sub_1000A2C94(&v12[*(v15 + 44)]);
    sub_10002CFC4(v12, v8, &qword_100118580, &qword_1000D62E0);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100118590, &qword_100118580, &qword_1000D62E0);
    sub_10002DAD8(&qword_100118598, &qword_100118570, &qword_1000D62D0);
    _ConditionalContent<>.init(storage:)();
    v16 = v12;
    v17 = &qword_100118580;
    v18 = &qword_1000D62E0;
  }

  else
  {
    *v4 = v14;
    *(v4 + 1) = 0;
    v4[16] = 0;
    v19 = sub_1000032D4(&qword_100118588, &qword_1000D62E8);
    sub_1000A21C8(v0, &v4[*(v19 + 44)]);
    sub_10002CFC4(v4, v8, &qword_100118570, &qword_1000D62D0);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100118590, &qword_100118580, &qword_1000D62E0);
    sub_10002DAD8(&qword_100118598, &qword_100118570, &qword_1000D62D0);
    _ConditionalContent<>.init(storage:)();
    v16 = v4;
    v17 = &qword_100118570;
    v18 = &qword_1000D62D0;
  }

  return sub_10002D02C(v16, v17, v18);
}

uint64_t sub_1000A21C8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_1000032D4(&qword_1001185A8, &qword_1000D62F8);
  v3 = *(*(v33 - 8) + 64);
  v4 = __chkstk_darwin(v33);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v32 = sub_1000032D4(&qword_1001185D0, &qword_1000D6330);
  v8 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v10 = &v32 - v9;
  v11 = sub_1000032D4(&qword_1001185B0, &qword_1000D6300);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = sub_1000032D4(&qword_1001185D8, &qword_1000D6338);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  if ([*a1 state] == 2)
  {
    sub_1000A256C(v14);
  }

  else
  {
    sub_1000A28E8(v14);
  }

  sub_10002CFC4(v14, v10, &qword_1001185B0, &qword_1000D6300);
  swift_storeEnumTagMultiPayload();
  sub_1000A4720();
  _ConditionalContent<>.init(storage:)();
  sub_10002D02C(v14, &qword_1001185B0, &qword_1000D6300);
  sub_1000A32E8(&unk_100103078, sub_1000A490C, 0x6C65636E6143, 0xE600000000000000, v7);
  v22 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v23 = &v7[*(v33 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_10002CFC4(v21, v19, &qword_1001185D8, &qword_1000D6338);
  v28 = v34;
  sub_10002CFC4(v7, v34, &qword_1001185A8, &qword_1000D62F8);
  v29 = v35;
  sub_10002CFC4(v19, v35, &qword_1001185D8, &qword_1000D6338);
  v30 = sub_1000032D4(&qword_1001185F8, &qword_1000D6340);
  sub_10002CFC4(v28, v29 + *(v30 + 48), &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v7, &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v21, &qword_1001185D8, &qword_1000D6338);
  sub_10002D02C(v28, &qword_1001185A8, &qword_1000D62F8);
  return sub_10002D02C(v19, &qword_1001185D8, &qword_1000D6338);
}

uint64_t sub_1000A256C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  static Font.Weight.medium.getter();
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_10002D02C(v7, &qword_100113E08, &qword_1000D10F0);
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v16 = (*(v15 + 8))(v14, v15);
  v18 = *(v1 + 72);
  v17 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v19 = (*(v17 + 32))(v18, v17);
  sub_1000A4684(v2, &v33);
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 48) = v35;
  *(v20 + 64) = v21;
  *(v20 + 80) = v37;
  *(v20 + 96) = v38;
  v22 = v34;
  *(v20 + 16) = v33;
  *(v20 + 32) = v22;
  *&v26 = 0x4049000000000000;
  *(&v26 + 1) = v13;
  *&v27 = 0x6C69662E79616C70;
  *(&v27 + 1) = 0xE90000000000006CLL;
  v28 = CGSizeZero;
  *&v29 = v16;
  *(&v29 + 1) = v19;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = *v32;
  DWORD1(v30) = *&v32[3];
  *(&v30 + 1) = sub_1000A48DC;
  v31 = v20;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025C54();
  View.accessibilityLabel(_:)();

  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v33 = v26;
  v34 = v27;
  sub_100025D8C(&v33);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v11, &qword_100114018, &qword_1000D12B0);
  v23 = (a1 + *(sub_1000032D4(&qword_1001185B0, &qword_1000D6300) + 36));
  v24 = &v23[*(sub_1000032D4(&qword_1001185C8, &unk_1000D6320) + 40)];
  result = static ContentShapeKinds.accessibility.getter();
  *v23 = 0;
  return result;
}

uint64_t sub_1000A28E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  static Font.Weight.medium.getter();
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_10002D02C(v7, &qword_100113E08, &qword_1000D10F0);
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v16 = (*(v15 + 8))(v14, v15);
  v18 = *(v1 + 72);
  v17 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v19 = (*(v17 + 32))(v18, v17);
  sub_1000A4684(v2, &v33);
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 48) = v35;
  *(v20 + 64) = v21;
  *(v20 + 80) = v37;
  *(v20 + 96) = v38;
  v22 = v34;
  *(v20 + 16) = v33;
  *(v20 + 32) = v22;
  *&v26 = 0x4049000000000000;
  *(&v26 + 1) = v13;
  *&v27 = 0x69662E6573756170;
  *(&v27 + 1) = 0xEA00000000006C6CLL;
  v28 = CGSizeZero;
  *&v29 = v16;
  *(&v29 + 1) = v19;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = *v32;
  DWORD1(v30) = *&v32[3];
  *(&v30 + 1) = sub_1000A493C;
  v31 = v20;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025C54();
  View.accessibilityLabel(_:)();

  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v33 = v26;
  v34 = v27;
  sub_100025D8C(&v33);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v11, &qword_100114018, &qword_1000D12B0);
  v23 = (a1 + *(sub_1000032D4(&qword_1001185B0, &qword_1000D6300) + 36));
  v24 = &v23[*(sub_1000032D4(&qword_1001185C8, &unk_1000D6320) + 40)];
  result = static ContentShapeKinds.accessibility.getter();
  *v23 = 0;
  return result;
}

uint64_t sub_1000A2C94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000032D4(&qword_1001185A8, &qword_1000D62F8);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_1000032D4(&qword_1001185B0, &qword_1000D6300);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_1000A2EE4(&v25 - v15);
  sub_1000A32E8(&unk_100103000, sub_1000A46C0, 0x7373696D736944, 0xE700000000000000, v9);
  v17 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v18 = &v9[*(v3 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_10002CFC4(v16, v14, &qword_1001185B0, &qword_1000D6300);
  sub_10002CFC4(v9, v7, &qword_1001185A8, &qword_1000D62F8);
  sub_10002CFC4(v14, a1, &qword_1001185B0, &qword_1000D6300);
  v23 = sub_1000032D4(&qword_1001185B8, &qword_1000D6308);
  sub_10002CFC4(v7, a1 + *(v23 + 48), &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v9, &qword_1001185A8, &qword_1000D62F8);
  sub_10002D02C(v16, &qword_1001185B0, &qword_1000D6300);
  sub_10002D02C(v7, &qword_1001185A8, &qword_1000D62F8);
  return sub_10002D02C(v14, &qword_1001185B0, &qword_1000D6300);
}

uint64_t sub_1000A2EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_1000032D4(&qword_100114018, &qword_1000D12B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  static Font.Weight.semibold.getter();
  v11 = enum case for Font.Design.rounded(_:);
  v12 = type metadata accessor for Font.Design();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v14 = static Font.system(size:weight:design:)();
  sub_10002D02C(v6, &qword_100113E08, &qword_1000D10F0);
  v15 = *(v1 + 72);
  v16 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v17 = (*(v16 + 8))(v15, v16);
  v18 = *(v1 + 72);
  v19 = *(v1 + 80);
  sub_100025B1C((v2 + 48), *(v2 + 72));
  v20 = (*(v19 + 32))(v18, v19);
  sub_1000A4684(v2, &v37);
  v21 = swift_allocObject();
  v22 = v40;
  *(v21 + 48) = v39;
  *(v21 + 64) = v22;
  *(v21 + 80) = v41;
  *(v21 + 96) = v42;
  v23 = v38;
  *(v21 + 16) = v37;
  *(v21 + 32) = v23;
  *&v30 = 0x4049000000000000;
  *(&v30 + 1) = v14;
  *&v31 = 0x6C632E776F727261;
  *(&v31 + 1) = 0xEF657369776B636FLL;
  v32 = xmmword_1000D5DE0;
  *&v33 = v17;
  *(&v33 + 1) = v20;
  LOBYTE(v34) = 1;
  *(&v34 + 1) = *v36;
  DWORD1(v34) = *&v36[3];
  *(&v34 + 1) = sub_1000A46F0;
  v35 = v21;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025C54();
  View.accessibilityLabel(_:)();

  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v37 = v30;
  v38 = v31;
  sub_100025D8C(&v37);
  v24 = v29;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v10, &qword_100114018, &qword_1000D12B0);
  v25 = (v24 + *(sub_1000032D4(&qword_1001185B0, &qword_1000D6300) + 36));
  v26 = &v25[*(sub_1000032D4(&qword_1001185C8, &unk_1000D6320) + 40)];
  result = static ContentShapeKinds.accessibility.getter();
  *v25 = 0;
  return result;
}

uint64_t sub_1000A32E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  v6 = v5;
  v44 = a5;
  v7 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = sub_1000032D4(&qword_100113FF0, &qword_1000D1298);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_1000032D4(&qword_100114010, &qword_1000D6310);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  static Font.Weight.medium.getter();
  v19 = enum case for Font.Design.rounded(_:);
  v20 = type metadata accessor for Font.Design();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v10, v19, v20);
  (*(v21 + 56))(v10, 0, 1, v20);
  v22 = static Font.system(size:weight:design:)();
  sub_10002D02C(v10, &qword_100113E08, &qword_1000D10F0);
  v23 = v6[9];
  v24 = v6[10];
  sub_100025B1C(v6 + 6, v23);
  v25 = (*(v24 + 56))(v23, v24);
  v26 = v6[9];
  v27 = v6[10];
  sub_100025B1C(v6 + 6, v26);
  v28 = (*(v27 + 80))(v26, v27);
  sub_1000A4684(v6, v45);
  v29 = swift_allocObject();
  v30 = v45[3];
  *(v29 + 48) = v45[2];
  *(v29 + 64) = v30;
  *(v29 + 80) = v45[4];
  *(v29 + 96) = v46;
  v31 = v45[1];
  *(v29 + 16) = v45[0];
  *(v29 + 32) = v31;
  height = CGSizeZero.height;
  v33 = *(v11 + 36);
  v34 = enum case for BlendMode.plusLighter(_:);
  v35 = type metadata accessor for BlendMode();
  (*(*(v35 - 8) + 104))(&v14[v33], v34, v35);
  *v14 = 0x4049000000000000;
  *(v14 + 1) = v22;
  *(v14 + 2) = 0x6B72616D78;
  *(v14 + 3) = 0xE500000000000000;
  *(v14 + 4) = *&CGSizeZero.width;
  *(v14 + 5) = height;
  *(v14 + 6) = v25;
  *(v14 + 7) = v28;
  v14[64] = 1;
  *(v14 + 65) = v45[0];
  *(v14 + 17) = *(v45 + 3);
  *(v14 + 9) = v41;
  *(v14 + 10) = v29;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025BC8();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v14, &qword_100113FF0, &qword_1000D1298);
  v36 = v44;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_10002D02C(v18, &qword_100114010, &qword_1000D6310);
  v37 = (v36 + *(sub_1000032D4(&qword_1001185C0, &qword_1000D6318) + 36));
  v38 = &v37[*(sub_1000032D4(&qword_1001185C8, &unk_1000D6320) + 40)];
  result = static ContentShapeKinds.accessibility.getter();
  *v37 = 0;
  return result;
}

uint64_t sub_1000A3720(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_100025B1C((a1 + 8), *(a1 + 32));
  v5 = [*a1 timerIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *v4;
  a2(v6, v8);
}

uint64_t sub_1000A37BC()
{
  v0 = type metadata accessor for EnvironmentDelegate(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1000032D4(&qword_100114130, &qword_1000D1418);
  Published.init(initialValue:)();
  v4 = (v3 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
  return v3;
}

uint64_t sub_1000A384C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000032D4(&qword_100118618, &qword_1000D6360);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  if (*(a1 + 32))
  {
    v11 = [*(a1 + 24) displayTitle];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v26[0] = v12;
    v26[1] = v14;
    sub_100025FB4();
    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (qword_100113660 != -1)
    {
      swift_once();
    }

    v22 = qword_10011F698;
    v23 = v19 & 1;
    swift_retain_n();
    sub_100025AFC(v15, v17, v19 & 1);
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v23 = 0;
    v21 = 0;
    v22 = 0;
  }

  sub_1000A3AB0(a1, v10);
  sub_10002CFC4(v10, v8, &qword_100118618, &qword_1000D6360);
  *a2 = v15;
  a2[1] = v17;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v22;
  v24 = sub_1000032D4(&qword_100118620, &qword_1000D6368);
  sub_10002CFC4(v8, a2 + *(v24 + 48), &qword_100118618, &qword_1000D6360);
  sub_1000A496C(v15, v17, v23, v21);
  sub_1000A49BC(v15, v17, v23, v21);
  sub_10002D02C(v10, &qword_100118618, &qword_1000D6360);
  sub_10002D02C(v8, &qword_100118618, &qword_1000D6360);
  return sub_1000A49BC(v15, v17, v23, v21);
}

void sub_1000A3AB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for Locale();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for RunningCountdownView(0);
  v11 = *(*(v63 - 8) + 64);
  v12 = __chkstk_darwin(v63);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v57 - v15;
  v65 = sub_1000032D4(&qword_100118628, &qword_1000D6370);
  v16 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v18 = (&v57 - v17);
  v62 = sub_1000032D4(&qword_100118630, &qword_1000D6378);
  v19 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v21 = (&v57 - v20);
  v64 = sub_1000032D4(&qword_100118638, &qword_1000D6380);
  v22 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v24 = &v57 - v23;
  v25 = *(a1 + 24);
  if ([v25 state] == 2)
  {
    sub_10004F3B0();
    v27 = v26;
    v29 = v28;
    if (*(a1 + 32))
    {
      if (qword_100113658 != -1)
      {
        swift_once();
      }

      v30 = &qword_10011F690;
      v31 = 0x4048000000000000;
    }

    else
    {
      if (qword_100113678 != -1)
      {
        swift_once();
      }

      v30 = &qword_10011F6B0;
      v31 = 0x4047800000000000;
    }

    v35 = v31;
    v36 = *v30;
    v37 = [objc_opt_self() mtOrange];
    v38 = Color.init(uiColor:)();
    *v21 = v27;
    v21[1] = v29;
    v21[2] = v35;
    v21[3] = v36;
    v21[4] = v38;
    swift_storeEnumTagMultiPayload();
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView);

    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v24, v18, &qword_100118638, &qword_1000D6380);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C50();
    _ConditionalContent<>.init(storage:)();

    sub_10002D02C(v24, &qword_100118638, &qword_1000D6380);
  }

  else if ([v25 state] == 3)
  {
    sub_10004F058(v10);
    v32 = *(a1 + 32);
    if (v32)
    {
      if (qword_100113658 != -1)
      {
        swift_once();
      }

      v33 = &qword_10011F690;
      v34 = 0x4048000000000000;
    }

    else
    {
      if (qword_100113678 != -1)
      {
        swift_once();
      }

      v33 = &qword_10011F6B0;
      v34 = 0x4047800000000000;
    }

    v47 = v34;
    v48 = *v33;
    v49 = [objc_opt_self() mtOrange];
    v50 = Color.init(uiColor:)();
    (*(v59 + 32))(v14, v10, v60);
    v51 = v63;
    v14[*(v63 + 20)] = 0;
    *&v14[v51[6]] = v47;
    *&v14[v51[7]] = v48;
    *&v14[v51[8]] = v50;
    v14[v51[9]] = (v32 & 1) == 0;
    v14[v51[10]] = 0;
    v52 = v61;
    sub_1000A73D0(v14, v61, type metadata accessor for RunningCountdownView);
    sub_1000A7438(v52, v21, type metadata accessor for RunningCountdownView);
    swift_storeEnumTagMultiPayload();
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView);
    _ConditionalContent<>.init(storage:)();
    sub_10002CFC4(v24, v18, &qword_100118638, &qword_1000D6380);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C50();
    _ConditionalContent<>.init(storage:)();
    sub_10002D02C(v24, &qword_100118638, &qword_1000D6380);
    sub_1000A74A0(v52, type metadata accessor for RunningCountdownView);
  }

  else
  {
    static Locale.autoupdatingCurrent.getter();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v40 = (*(v58 + 8))(v6, v3);
    v40.i64[0] = 0;
    v41 = sub_1000022A8(0, 0, 1, 1, 0, 0, 0, isa, v40);

    if (v41)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      if (*(a1 + 32))
      {
        if (qword_100113658 != -1)
        {
          swift_once();
        }

        v45 = &qword_10011F690;
        v46 = 0x4048000000000000;
      }

      else
      {
        if (qword_100113678 != -1)
        {
          swift_once();
        }

        v45 = &qword_10011F6B0;
        v46 = 0x4047800000000000;
      }

      v53 = v46;
      v54 = *v45;
      v55 = [objc_opt_self() mtOrange];
      v56 = Color.init(uiColor:)();
      *v18 = v42;
      v18[1] = v44;
      v18[2] = v53;
      v18[3] = v54;
      v18[4] = v56;
      swift_storeEnumTagMultiPayload();
      sub_1000A4C50();
      sub_1000A4D0C();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000A4328@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v3;
  v14 = *(v1 + 32);
  *a1 = static VerticalAlignment.firstTextBaseline.getter();
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1000032D4(&qword_100118600, &qword_1000D6348);
  sub_1000A384C(v13, (a1 + *(v4 + 44)));
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = (a1 + *(sub_1000032D4(&qword_100118608, &qword_1000D6350) + 36));
  *v5 = v10;
  v5[1] = v11;
  v5[2] = v12;
  type metadata accessor for EnvironmentDelegate(0);
  sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
  v6 = StateObject.wrappedValue.getter();
  v7 = static ObservableObject.environmentStore.getter();
  result = sub_1000032D4(&qword_100118610, &qword_1000D6358);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = v6;
  return result;
}

uint64_t sub_1000A4490@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = objc_opt_self();
  sub_100025AFC(v3, v4, v5);

  v9 = [v8 mtOrange];
  result = Color.init(uiColor:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = result;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1000A459C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v7 = v1[3];
  v6 = v1[4];
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1[6];
  v16 = *(v1 + 56);
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = v1[5];
  v20 = swift_getKeyPath();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v18;
  *(a1 + 64) = 0x3FEB333333333333;
  *(a1 + 72) = v20;
  *(a1 + 80) = v19;
}

unint64_t sub_1000A4720()
{
  result = qword_1001185E0;
  if (!qword_1001185E0)
  {
    sub_10001C820(&qword_1001185B0, &qword_1000D6300);
    sub_1000A47D8();
    sub_10002DAD8(&qword_1001185F0, &qword_1001185C8, &unk_1000D6320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001185E0);
  }

  return result;
}

unint64_t sub_1000A47D8()
{
  result = qword_1001185E8;
  if (!qword_1001185E8)
  {
    sub_10001C820(&qword_100114018, &qword_1000D12B0);
    sub_100025C54();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001185E8);
  }

  return result;
}

uint64_t sub_1000A4894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A496C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025AFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A49BC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025B0C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A4A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

double sub_1000A4B4C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1000A4BCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return static Published.subscript.setter();
}

unint64_t sub_1000A4C50()
{
  result = qword_100118640;
  if (!qword_100118640)
  {
    sub_10001C820(&qword_100118638, &qword_1000D6380);
    sub_1000A4D0C();
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118640);
  }

  return result;
}

unint64_t sub_1000A4D0C()
{
  result = qword_100118648;
  if (!qword_100118648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118648);
  }

  return result;
}

uint64_t sub_1000A4D60(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = sub_1000032D4(&qword_100118FA8, &qword_1000D7048);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A4EA8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000A4F08()
{
  result = qword_100118658;
  if (!qword_100118658)
  {
    sub_10001C820(&qword_100113FD8, &qword_1000D63D0);
    sub_1000A4894(&qword_100118650, type metadata accessor for RunningCountdownView);
    sub_10002DAD8(&qword_100118660, &qword_100118668, &qword_1000D63D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118658);
  }

  return result;
}

uint64_t sub_1000A5014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A5144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmPresentationState();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000A527C()
{
  sub_10001C78C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v1 <= 0x3F)
    {
      sub_1000A5330();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000A5330()
{
  result = qword_100113DC0;
  if (!qword_100113DC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100113DC0);
  }

  return result;
}

__n128 sub_1000A5394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000A53B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A53F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000A5480(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000A54C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000A5534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AlarmPresentationState();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A5644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AlarmPresentationState();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A5780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A58BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000A5A08()
{
  sub_1000A8738(319, &qword_100114E80, &type metadata accessor for StateObject);
  if (v0 <= 0x3F)
  {
    sub_10001C78C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AlarmPresentationState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000A5AC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000A5AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1000A5B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A5C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A5D38()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A5DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A5EBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000A5F94()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    sub_100024508();
    if (v1 <= 0x3F)
    {
      sub_1000A868C(319, &qword_100113A70, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000A6060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000A60A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A6110()
{
  result = qword_100118988;
  if (!qword_100118988)
  {
    sub_10001C820(&qword_100118990, &qword_1000D66F8);
    sub_1000A619C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118988);
  }

  return result;
}

unint64_t sub_1000A619C()
{
  result = qword_100118998;
  if (!qword_100118998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118998);
  }

  return result;
}

unint64_t sub_1000A61F4()
{
  result = qword_1001189A0;
  if (!qword_1001189A0)
  {
    sub_10001C820(&qword_1001189A8, &qword_1000D6700);
    sub_10002DAD8(&qword_100118590, &qword_100118580, &qword_1000D62E0);
    sub_10002DAD8(&qword_100118598, &qword_100118570, &qword_1000D62D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189A0);
  }

  return result;
}

unint64_t sub_1000A62D8()
{
  result = qword_1001189B0;
  if (!qword_1001189B0)
  {
    sub_10001C820(&qword_100118610, &qword_1000D6358);
    sub_1000A6390();
    sub_10002DAD8(&qword_100118660, &qword_100118668, &qword_1000D63D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189B0);
  }

  return result;
}

unint64_t sub_1000A6390()
{
  result = qword_1001189B8;
  if (!qword_1001189B8)
  {
    sub_10001C820(&qword_100118608, &qword_1000D6350);
    sub_10002DAD8(&qword_1001189C0, &qword_1001189C8, &qword_1000D6708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189B8);
  }

  return result;
}

unint64_t sub_1000A644C()
{
  result = qword_1001189D0;
  if (!qword_1001189D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D0);
  }

  return result;
}

unint64_t sub_1000A64A4()
{
  result = qword_1001189D8;
  if (!qword_1001189D8)
  {
    sub_10001C820(&qword_1001189E0, &qword_1000D6710);
    sub_1000A4D0C();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189D8);
  }

  return result;
}

unint64_t sub_1000A6564()
{
  result = qword_1001189E8;
  if (!qword_1001189E8)
  {
    sub_10001C820(&qword_1001189F0, &qword_1000D6718);
    sub_1000A4F08();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001189E8);
  }

  return result;
}

unint64_t sub_1000A6740()
{
  result = qword_100118A08;
  if (!qword_100118A08)
  {
    sub_10001C820(&qword_100118A00, &qword_1000D6A78);
    sub_1000A67F8();
    sub_10002DAD8(&qword_100118A40, &qword_100118A48, &qword_1000D6AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A08);
  }

  return result;
}

unint64_t sub_1000A67F8()
{
  result = qword_100118A10;
  if (!qword_100118A10)
  {
    sub_10001C820(&qword_100118A18, &qword_1000D6A80);
    sub_1000A68B0();
    sub_10002DAD8(&qword_100118A30, &qword_100118A38, &qword_1000D6A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A10);
  }

  return result;
}

unint64_t sub_1000A68B0()
{
  result = qword_100118A20;
  if (!qword_100118A20)
  {
    sub_10001C820(&qword_100118A28, &qword_1000D6A88);
    sub_10002DAD8(&qword_100115718, &qword_100115710, &qword_1000D6A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A20);
  }

  return result;
}

unint64_t sub_1000A6968()
{
  result = qword_100118A58;
  if (!qword_100118A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A58);
  }

  return result;
}

uint64_t sub_1000A69CC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000A6A34()
{
  result = qword_100118A68;
  if (!qword_100118A68)
  {
    sub_10001C820(&qword_100118A60, &qword_1000D6B98);
    sub_1000A6AEC();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A68);
  }

  return result;
}

unint64_t sub_1000A6AEC()
{
  result = qword_100118A70;
  if (!qword_100118A70)
  {
    sub_10001C820(&qword_100118A78, &qword_1000D6BA0);
    sub_1000A6BA4();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A70);
  }

  return result;
}

unint64_t sub_1000A6BA4()
{
  result = qword_100118A80;
  if (!qword_100118A80)
  {
    sub_10001C820(&qword_100118A88, &unk_1000D6BA8);
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118A80);
  }

  return result;
}

unint64_t sub_1000A6C5C()
{
  result = qword_100118AB0;
  if (!qword_100118AB0)
  {
    sub_10001C820(&qword_100118AA8, &qword_1000D6BD0);
    sub_1000A6D14();
    sub_10002DAD8(&qword_100118B20, &qword_100118B28, &qword_1000D6C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AB0);
  }

  return result;
}

unint64_t sub_1000A6D14()
{
  result = qword_100118AB8;
  if (!qword_100118AB8)
  {
    sub_10001C820(&qword_100118AA0, &qword_1000D6BC8);
    sub_1000A6DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AB8);
  }

  return result;
}

unint64_t sub_1000A6DA0()
{
  result = qword_100118AC0;
  if (!qword_100118AC0)
  {
    sub_10001C820(&qword_100118A98, &qword_1000D6BC0);
    sub_1000A6E5C();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AC0);
  }

  return result;
}

unint64_t sub_1000A6E5C()
{
  result = qword_100118AC8;
  if (!qword_100118AC8)
  {
    sub_10001C820(&qword_100118AD0, &qword_1000D6BD8);
    sub_1000A6F14();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AC8);
  }

  return result;
}

unint64_t sub_1000A6F14()
{
  result = qword_100118AD8;
  if (!qword_100118AD8)
  {
    sub_10001C820(&qword_100118AE0, &qword_1000D6BE0);
    sub_1000A6FCC();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AD8);
  }

  return result;
}

unint64_t sub_1000A6FCC()
{
  result = qword_100118AE8;
  if (!qword_100118AE8)
  {
    sub_10001C820(&qword_100118AF0, &qword_1000D6BE8);
    sub_1000A7084();
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AE8);
  }

  return result;
}

unint64_t sub_1000A7084()
{
  result = qword_100118AF8;
  if (!qword_100118AF8)
  {
    sub_10001C820(&qword_100118B00, &qword_1000D6BF0);
    sub_1000A713C();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118AF8);
  }

  return result;
}

unint64_t sub_1000A713C()
{
  result = qword_100118B08;
  if (!qword_100118B08)
  {
    sub_10001C820(&qword_100118B10, &qword_1000D6BF8);
    sub_1000A4894(&qword_100118B18, type metadata accessor for TimelineCountdownView);
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118B08);
  }

  return result;
}

unint64_t sub_1000A7314()
{
  result = qword_100118B58;
  if (!qword_100118B58)
  {
    sub_10001C820(&qword_100118B48, &unk_1000D6CB8);
    sub_1000A4894(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
    sub_1000A4D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118B58);
  }

  return result;
}

uint64_t sub_1000A73D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A7438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A74A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000A7508()
{
  result = qword_100118B88;
  if (!qword_100118B88)
  {
    sub_10001C820(&qword_100118B80, &unk_1000D6CF0);
    sub_10002DAD8(&qword_1001158D0, &qword_100115760, &qword_1000D2CA0);
    sub_10002DAD8(&qword_100118B90, &qword_100118B98, &qword_1000D6D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118B88);
  }

  return result;
}

uint64_t sub_1000A75EC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A7618(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

unint64_t sub_1000A7644()
{
  result = qword_100118BA0;
  if (!qword_100118BA0)
  {
    sub_10001C820(&qword_100118B70, &qword_1000D6CE0);
    sub_1000A76FC();
    sub_10002DAD8(&qword_100118BB8, &qword_100118BC0, &qword_1000D6D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BA0);
  }

  return result;
}

unint64_t sub_1000A76FC()
{
  result = qword_100118BA8;
  if (!qword_100118BA8)
  {
    sub_10001C820(&qword_100118B68, &qword_1000D6CD8);
    sub_10002DAD8(&qword_100118BB0, &qword_100118B60, &qword_1000D6CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BA8);
  }

  return result;
}

unint64_t sub_1000A77B4()
{
  result = qword_100118BE8;
  if (!qword_100118BE8)
  {
    sub_10001C820(&qword_100118BD0, &qword_1000D6D40);
    sub_10002DAD8(&qword_100118BF0, &qword_100118BF8, &qword_1000D6D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118BE8);
  }

  return result;
}

uint64_t sub_1000A786C()
{
  v1 = (type metadata accessor for CountdownPlatter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for AlarmPresentationState();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  sub_100017D28((v0 + v3 + v1[8]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000A79A4()
{
  v0 = *(*(type metadata accessor for CountdownPlatter(0) - 8) + 80);

  return sub_10009D04C();
}

unint64_t sub_1000A7A04()
{
  result = qword_100118C48;
  if (!qword_100118C48)
  {
    sub_10001C820(&qword_100118C20, &qword_1000D6D80);
    sub_1000A7ABC();
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C48);
  }

  return result;
}

unint64_t sub_1000A7ABC()
{
  result = qword_100118C50;
  if (!qword_100118C50)
  {
    sub_10001C820(&qword_100118C18, &qword_1000D6D78);
    sub_1000A7B74();
    sub_10002DAD8(&qword_1001149F8, &qword_100114A00, &unk_1000D1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C50);
  }

  return result;
}

unint64_t sub_1000A7B74()
{
  result = qword_100118C58;
  if (!qword_100118C58)
  {
    sub_10001C820(&qword_100118C10, &qword_1000D6D70);
    sub_10002DAD8(&qword_100118C60, &qword_100118C08, &qword_1000D6D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C58);
  }

  return result;
}

unint64_t sub_1000A7C2C()
{
  result = qword_100118C90;
  if (!qword_100118C90)
  {
    sub_10001C820(&qword_100118C78, &qword_1000D6DD0);
    sub_10002DAD8(&qword_100118C98, &qword_100118CA0, &qword_1000D6DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C90);
  }

  return result;
}

unint64_t sub_1000A7CE4()
{
  result = qword_100118CB8;
  if (!qword_100118CB8)
  {
    sub_10001C820(&qword_100118CB0, &qword_1000D6DF8);
    sub_1000A7D9C();
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CB8);
  }

  return result;
}

unint64_t sub_1000A7D9C()
{
  result = qword_100118CC0;
  if (!qword_100118CC0)
  {
    sub_10001C820(&qword_100118CC8, &qword_1000D6E00);
    sub_1000A7E54();
    sub_10002DAD8(&qword_1001149F8, &qword_100114A00, &unk_1000D1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CC0);
  }

  return result;
}

unint64_t sub_1000A7E54()
{
  result = qword_100118CD0;
  if (!qword_100118CD0)
  {
    sub_10001C820(&qword_100118CD8, &qword_1000D6E08);
    sub_1000A7EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CD0);
  }

  return result;
}

unint64_t sub_1000A7EE0()
{
  result = qword_100118CE0;
  if (!qword_100118CE0)
  {
    sub_10001C820(&qword_100118CE8, &qword_1000D6E10);
    sub_10002DAD8(&qword_100118CF0, &qword_100118CF8, &qword_1000D6E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118CE0);
  }

  return result;
}

unint64_t sub_1000A7F98()
{
  result = qword_100118D18;
  if (!qword_100118D18)
  {
    sub_10001C820(&qword_100118D10, &unk_1000D6E30);
    sub_100065C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D18);
  }

  return result;
}

unint64_t sub_1000A801C()
{
  result = qword_100118D30;
  if (!qword_100118D30)
  {
    sub_10001C820(&qword_100118D28, &qword_1000D6E58);
    sub_1000A80D4();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D30);
  }

  return result;
}

unint64_t sub_1000A80D4()
{
  result = qword_100118D38;
  if (!qword_100118D38)
  {
    sub_10001C820(&qword_100118D40, &qword_1000D6E60);
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118D38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionButtonHighlightEffectStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000A8250(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[9]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Calendar();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000A83EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v14 = type metadata accessor for Calendar();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[10];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_1000A8568()
{
  sub_1000A868C(319, &qword_100114488, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000A86E0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1000A8738(319, &unk_100118DB0, &type metadata accessor for EnvironmentObject);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Calendar();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000A868C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000A86E0()
{
  if (!qword_100117930)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100117930);
    }
  }
}

void sub_1000A8738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for EnvironmentDelegate(255);
    v7 = sub_1000A4894(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000A87E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Material();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BlendMode();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A8920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Material();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BlendMode();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_1000A8A64()
{
  result = type metadata accessor for Material();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BlendMode();
    if (v2 <= 0x3F)
    {
      result = sub_100024508();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1000A8B48()
{
  result = qword_100118EA0;
  if (!qword_100118EA0)
  {
    sub_10001C820(&qword_100118EA8, &qword_1000D6EE8);
    sub_1000A6A34();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EA0);
  }

  return result;
}

unint64_t sub_1000A8C08()
{
  result = qword_100118EB0;
  if (!qword_100118EB0)
  {
    sub_10001C820(&qword_100118EB8, &qword_1000D6EF0);
    sub_1000A6C5C();
    sub_1000A6DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EB0);
  }

  return result;
}

unint64_t sub_1000A8C98()
{
  result = qword_100118EC0;
  if (!qword_100118EC0)
  {
    sub_10001C820(&qword_100118B38, &qword_1000D6CA8);
    sub_1000A8D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EC0);
  }

  return result;
}

unint64_t sub_1000A8D24()
{
  result = qword_100118EC8;
  if (!qword_100118EC8)
  {
    sub_10001C820(&qword_100118B30, &qword_1000D6CA0);
    sub_1000A8DDC();
    sub_10002DAD8(&qword_100118660, &qword_100118668, &qword_1000D63D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EC8);
  }

  return result;
}

unint64_t sub_1000A8DDC()
{
  result = qword_100118ED0;
  if (!qword_100118ED0)
  {
    sub_10001C820(&qword_100118ED8, &qword_1000D6EF8);
    sub_1000A8E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118ED0);
  }

  return result;
}

unint64_t sub_1000A8E60()
{
  result = qword_100118EE0;
  if (!qword_100118EE0)
  {
    sub_10001C820(&qword_100118EE8, &qword_1000D6F00);
    sub_1000A4C50();
    sub_1000A7314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EE0);
  }

  return result;
}

uint64_t sub_1000A8EEC()
{
  sub_10001C820(&qword_100118B78, &qword_1000D6CE8);
  type metadata accessor for Capsule();
  sub_10001C820(&qword_100118B70, &qword_1000D6CE0);
  type metadata accessor for BorderedProminentButtonStyle();
  sub_1000A7644();
  sub_1000A4894(&qword_100118BC8, &type metadata accessor for BorderedProminentButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_1000A4894(&qword_100115720, &type metadata accessor for Capsule);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000A9030()
{
  result = qword_100118EF0;
  if (!qword_100118EF0)
  {
    sub_10001C820(&qword_100118EF8, &qword_1000D6F08);
    sub_10001C820(&qword_100118BD0, &qword_1000D6D40);
    sub_1000A77B4();
    swift_getOpaqueTypeConformance2();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118EF0);
  }

  return result;
}

unint64_t sub_1000A912C()
{
  result = qword_100118F00;
  if (!qword_100118F00)
  {
    sub_10001C820(&qword_100118F08, &qword_1000D6F10);
    sub_10001C820(&qword_100118C78, &qword_1000D6DD0);
    sub_1000A7C2C();
    swift_getOpaqueTypeConformance2();
    sub_1000A4894(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F00);
  }

  return result;
}

unint64_t sub_1000A9228()
{
  result = qword_100118F10;
  if (!qword_100118F10)
  {
    sub_10001C820(&qword_100118F18, &qword_1000D6F18);
    sub_1000A7F98();
    sub_100065C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F10);
  }

  return result;
}

unint64_t sub_1000A9350()
{
  result = qword_100118F50;
  if (!qword_100118F50)
  {
    sub_10001C820(&qword_100118F48, &qword_1000D7018);
    sub_1000A9408();
    sub_10002DAD8(&qword_100118F70, &qword_100118F78, &qword_1000D7020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F50);
  }

  return result;
}

unint64_t sub_1000A9408()
{
  result = qword_100118F58;
  if (!qword_100118F58)
  {
    sub_10001C820(&qword_100118F40, &qword_1000D7010);
    sub_1000A9494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F58);
  }

  return result;
}

unint64_t sub_1000A9494()
{
  result = qword_100118F60;
  if (!qword_100118F60)
  {
    sub_10001C820(&qword_100118F38, &qword_1000D7008);
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F60);
  }

  return result;
}

uint64_t sub_1000A9550()
{
  v1 = type metadata accessor for TimelineCountdownView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1000295C4(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Locale();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[6];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v5 + v1[9]);

  v12 = v1[10];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000A9700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimelineCountdownView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10009DD90(a1, v6, a2);
}

uint64_t sub_1000A9780()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000A97C0()
{
  result = qword_100118F90;
  if (!qword_100118F90)
  {
    sub_10001C820(&qword_100118F80, &qword_1000D7028);
    sub_1000A984C();
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F90);
  }

  return result;
}

unint64_t sub_1000A984C()
{
  result = qword_100118F98;
  if (!qword_100118F98)
  {
    sub_10001C820(&qword_100118FA0, &unk_1000D7030);
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F98);
  }

  return result;
}

_OWORD *sub_1000A98D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000A98F0()
{
  result = qword_100118FE0;
  if (!qword_100118FE0)
  {
    sub_10001C820(&qword_100118FD8, &qword_1000D7080);
    sub_1000A99A8();
    sub_10002DAD8(&qword_100119008, &qword_100119010, &qword_1000D7098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FE0);
  }

  return result;
}

unint64_t sub_1000A99A8()
{
  result = qword_100118FE8;
  if (!qword_100118FE8)
  {
    sub_10001C820(&qword_100118FF0, &qword_1000D7088);
    sub_10002DAD8(&qword_100118FF8, &qword_100119000, &qword_1000D7090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FE8);
  }

  return result;
}

unint64_t sub_1000A9A64()
{
  result = qword_100119030;
  if (!qword_100119030)
  {
    sub_10001C820(&qword_100119038, &qword_1000D70B0);
    sub_1000A9350();
    sub_1000A4894(&qword_100118F68, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119030);
  }

  return result;
}

unint64_t sub_1000A9B24()
{
  result = qword_100119040;
  if (!qword_100119040)
  {
    sub_10001C820(&qword_100119048, &qword_1000D70B8);
    sub_1000A97C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119040);
  }

  return result;
}

uint64_t sub_1000A9BC4(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_10001C820(a2, a3);
  sub_10002DAD8(a4, a2, a3);
  sub_1000A6968();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000A9C90()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIControl) init];
  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v2 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_1000AA4F8, 0}];

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v4;
  v6 = v2;
  [v5 addSubview:v6];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView;
  v8 = *&v1[OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView];
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];
  v10 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel];
  v76[6] = &type metadata for LockscreenConfig;
  v76[7] = &off_100101E80;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ObservableStopwatchModel();
  sub_10006548C();

  v12 = v10;
  v76[0] = ObservedObject.init(wrappedValue:)();
  v76[1] = v13;
  v76[2] = v10;
  v76[8] = KeyPath;
  v77 = 0;
  v14 = objc_allocWithZone(sub_1000032D4(&unk_100119090, &unk_1000D7140));
  *&v14[*((swift_isaMask & *v14) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000AA938(v76, v75);
  v15 = UIHostingController.init(rootView:)();
  sub_1000AA994(v76);
  v16 = v15;
  v17 = [v16 view];
  if (!v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [v16 view];
  if (!v19)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = v19;
  v21 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor:v21];

  v22 = [v16 view];
  if (!v22)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v23 = v22;
  [v22 setUserInteractionEnabled:0];

  [v1 addChildViewController:v16];
  v24 = [v16 view];

  if (!v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v6 addSubview:v24];

  [v16 didMoveToParentViewController:v1];
  v25 = *&v1[v7];
  *&v1[v7] = v16;

  v8 = *&v1[v7];
  if (v8)
  {
LABEL_8:
    v26 = [v8 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 leadingAnchor];

      sub_100031224();
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000D70C0;
      v30 = *&v1[v7];
      if (v30)
      {
        v31 = [v30 view];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 leadingAnchor];

          v34 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
          v35 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
          if (v35)
          {
            v36 = [v35 trailingAnchor];
            v37 = [v33 constraintEqualToAnchor:v36 constant:25.0];

            *(v29 + 32) = v37;
            v38 = *&v1[v7];
            if (v38)
            {
              v39 = [v38 view];
              if (v39)
              {
                v40 = v39;
                v41 = [v39 trailingAnchor];

                v42 = [v1 view];
                if (v42)
                {
                  v43 = v42;
                  v44 = [v42 trailingAnchor];

                  v45 = [v41 constraintEqualToAnchor:v44];
                  *(v29 + 40) = v45;
                  v46 = *&v1[v7];
                  if (v46)
                  {
                    v47 = [v46 view];
                    if (v47)
                    {
                      v48 = v47;
                      v49 = [v47 centerYAnchor];

                      v50 = [v1 view];
                      if (v50)
                      {
                        v51 = v50;
                        v52 = [v50 centerYAnchor];

                        v53 = [v49 constraintEqualToAnchor:v52];
                        *(v29 + 48) = v53;
                        v54 = [v6 leadingAnchor];

                        v55 = *&v1[v34];
                        if (v55)
                        {
                          v56 = [v55 trailingAnchor];
                          v57 = [v54 constraintEqualToAnchor:v56 constant:10.0];

                          *(v29 + 56) = v57;
                          v58 = [v6 trailingAnchor];

                          v59 = [v1 view];
                          if (v59)
                          {
                            v60 = v59;
                            v61 = [v59 trailingAnchor];

                            v62 = [v58 constraintEqualToAnchor:v61];
                            *(v29 + 64) = v62;
                            v63 = [v6 topAnchor];

                            v64 = [v1 view];
                            if (v64)
                            {
                              v65 = v64;
                              v66 = [v64 topAnchor];

                              v67 = [v63 constraintEqualToAnchor:v66];
                              *(v29 + 72) = v67;
                              v68 = [v6 bottomAnchor];

                              v69 = [v1 view];
                              if (v69)
                              {
                                v70 = v69;
                                v71 = objc_opt_self();
                                v72 = [v70 bottomAnchor];

                                v73 = [v68 constraintEqualToAnchor:v72];
                                *(v29 + 80) = v73;
                                sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                                isa = Array._bridgeToObjectiveC()().super.isa;

                                [v71 activateConstraints:isa];

                                return;
                              }

                              goto LABEL_37;
                            }

LABEL_36:
                            __break(1u);
LABEL_37:
                            __break(1u);
                            goto LABEL_38;
                          }

LABEL_35:
                          __break(1u);
                          goto LABEL_36;
                        }

LABEL_34:
                        __break(1u);
                        goto LABEL_35;
                      }

LABEL_33:
                      __break(1u);
                      goto LABEL_34;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1000AA4F8()
{
  v0 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() mtURLForSection:3];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  }

  type metadata accessor for MTSUtilities();
  dispatch thunk of static MTSUtilities.launchClockAppIfPossible(_:)();
  return sub_100057520(v3);
}

id sub_1000AA820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StopwatchLockscreenController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AA888@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AA8B8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueAlarm();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000AAB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpaqueAlarm();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for LinearTimerTimelineCountdown()
{
  result = qword_100119108;
  if (!qword_100119108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AACC4()
{
  type metadata accessor for OpaqueAlarm();
  if (v0 <= 0x3F)
  {
    sub_100027F54(319, &qword_100113DC0);
    if (v1 <= 0x3F)
    {
      sub_100027F54(319, &unk_100119118);
      if (v2 <= 0x3F)
      {
        sub_1000AAE00();
        if (v3 <= 0x3F)
        {
          sub_1000AAE58(319, &unk_100113A78);
          if (v4 <= 0x3F)
          {
            sub_1000AAE58(319, &qword_100113A70);
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

void sub_1000AAE00()
{
  if (!qword_100113A60)
  {
    type metadata accessor for Font.Context();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100113A60);
    }
  }
}

void sub_1000AAE58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000AAEC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LinearTimerTimelineCountdown();
  sub_10002CFC4(v1 + *(v12 + 28), v11, &qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Font.Context();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1000AB0C8()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for AlarmPresentationState.Mode();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlarmPresentationState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OpaqueAlarm();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = (&v33 - v20);
  sub_1000B42E0(v0, &v33 - v20, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B4390(v21, type metadata accessor for OpaqueAlarm);
      goto LABEL_8;
    }

    v27 = *v21;
    v28 = [*v21 state];

    if (v28 != 3)
    {
LABEL_8:
      sub_1000B42E0(v1, v19, type metadata accessor for OpaqueAlarm);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29)
      {
        if (v29 == 1)
        {
          sub_1000B4390(v19, type metadata accessor for OpaqueAlarm);
        }

        else
        {
          v32 = *v19;
          [*v19 remainingTime];
        }
      }

      else
      {
        v30 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
        (*(v11 + 32))(v14, v19, v10);
        AlarmPresentationState.mode.getter();
        AlarmPresentationState.Mode.remainingTime.getter();
        (*(v35 + 8))(v9, v36);
        (*(v11 + 8))(v14, v10);
        v31 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
        (*(*(v31 - 8) + 8))(v19 + v30, v31);
      }

      return;
    }
  }

  else
  {
    v34 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v11 + 32))(v14, v21, v10);
    AlarmPresentationState.mode.getter();
    v23 = AlarmPresentationState.Mode.isCountingDown.getter();
    (*(v35 + 8))(v9, v36);
    (*(v11 + 8))(v14, v10);
    v24 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v24 - 8) + 8))(v21 + v34, v24);
    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_100089408(v5);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v5, 1, v25) == 1)
  {
    sub_10002D02C(v5, &qword_100115E40, &unk_1000D1280);
    sub_1000AB604();
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    (*(v26 + 8))(v5, v25);
  }
}

double sub_1000AB604()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B42E0(v0, v14, type metadata accessor for OpaqueAlarm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000B4390(v14, type metadata accessor for OpaqueAlarm);
      return 0.0;
    }

    else
    {
      v20 = *v14;
      [*v14 remainingTime];
      v16 = v21;
    }
  }

  else
  {
    v17 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v7 + 32))(v10, v14, v6);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.remainingTime.getter();
    v16 = v18;
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v19 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v19 - 8) + 8))(v14 + v17, v19);
  }

  return v16;
}

uint64_t sub_1000AB8CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000032D4(&qword_100119180, &qword_1000D7200);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (&v52 - v5);
  v7 = sub_1000032D4(&qword_100119188, &qword_1000D7208);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v11 = sub_1000032D4(&qword_100119190, &qword_1000D7210);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v52 - v13);
  GeometryProxy.size.getter();
  v16 = v15;
  if (sub_100088B60())
  {
    *v14 = static Alignment.center.getter();
    v14[1] = v17;
    v18 = v14 + *(sub_1000032D4(&qword_1001191E0, &qword_1000D7240) + 44);
    *v18 = static HorizontalAlignment.center.getter();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v19 = sub_1000032D4(&qword_1001191E8, &qword_1000D7248);
    sub_1000ABCD0(a2, &v18[*(v19 + 44)]);
    v20 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v18[*(sub_1000032D4(&qword_1001191F0, &qword_1000D7250) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    v30 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = &v18[*(sub_1000032D4(&qword_1001191F8, &qword_1000D7258) + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = static Color.black.getter();
    v41 = static Edge.Set.all.getter();
    v42 = v14 + *(sub_1000032D4(&qword_1001191B0, &qword_1000D7220) + 36);
    *v42 = v40;
    v42[8] = v41;
    *(v14 + *(v11 + 36)) = static Edge.Set.vertical.getter();
    sub_10002CFC4(v14, v10, &qword_100119190, &qword_1000D7210);
    swift_storeEnumTagMultiPayload();
    sub_1000B33D4();
    sub_1000B3544();
    _ConditionalContent<>.init(storage:)();
    v43 = v14;
    v44 = &qword_100119190;
    v45 = &qword_1000D7210;
  }

  else
  {
    GeometryProxy.safeAreaInsets.getter();
    if (v46 == 0.0)
    {
      v47 = 38.0;
    }

    else
    {
      GeometryProxy.safeAreaInsets.getter();
      v47 = v48;
    }

    *v6 = static Alignment.bottom.getter();
    v6[1] = v49;
    v50 = sub_1000032D4(&qword_100119198, &qword_1000D7218);
    sub_1000AEE70(a2, v6 + *(v50 + 44), v16, v47);
    *(v6 + *(v3 + 36)) = static Edge.Set.all.getter();
    sub_10002CFC4(v6, v10, &qword_100119180, &qword_1000D7200);
    swift_storeEnumTagMultiPayload();
    sub_1000B33D4();
    sub_1000B3544();
    _ConditionalContent<>.init(storage:)();
    v43 = v6;
    v44 = &qword_100119180;
    v45 = &qword_1000D7200;
  }

  return sub_10002D02C(v43, v44, v45);
}

uint64_t sub_1000ABCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000032D4(&qword_100119200, &qword_1000D7260);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_1000032D4(&qword_100119208, &qword_1000D7268);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  *v17 = static VerticalAlignment.top.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_1000032D4(&qword_100119210, &qword_1000D7270);
  sub_1000ABF50(a1, &v17[*(v18 + 44)]);
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_1000032D4(&qword_100119218, &qword_1000D7278);
  sub_1000ADC20(a1, &v10[*(v19 + 44)]);
  sub_10002CFC4(v17, v15, &qword_100119208, &qword_1000D7268);
  sub_10002CFC4(v10, v8, &qword_100119200, &qword_1000D7260);
  sub_10002CFC4(v15, a2, &qword_100119208, &qword_1000D7268);
  v20 = sub_1000032D4(&qword_100119220, &unk_1000D7280);
  v21 = a2 + *(v20 + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_10002CFC4(v8, a2 + *(v20 + 64), &qword_100119200, &qword_1000D7260);
  sub_10002D02C(v10, &qword_100119200, &qword_1000D7260);
  sub_10002D02C(v17, &qword_100119208, &qword_1000D7268);
  sub_10002D02C(v8, &qword_100119200, &qword_1000D7260);
  return sub_10002D02C(v15, &qword_100119208, &qword_1000D7268);
}

uint64_t sub_1000ABF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v220 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v218 = *(v3 - 8);
  v219 = v3;
  v4 = *(v218 + 64);
  __chkstk_darwin(v3);
  v217 = &v169[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v202 = type metadata accessor for DynamicTypeSize();
  v197 = *(v202 - 8);
  v6 = *(v197 + 64);
  __chkstk_darwin(v202);
  v191 = &v169[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Font._StylisticAlternative();
  v185 = *(v8 - 8);
  v186 = v8;
  v9 = *(v185 + 64);
  __chkstk_darwin(v8);
  v184 = &v169[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v199 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v194 = *(v199 - 8);
  v11 = *(v194 + 64);
  __chkstk_darwin(v199);
  v190 = &v169[-v12];
  v189 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  v13 = *(*(v189 - 8) + 64);
  __chkstk_darwin(v189);
  v195 = &v169[-v14];
  v193 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  v15 = *(*(v193 - 8) + 64);
  __chkstk_darwin(v193);
  v210 = &v169[-v16];
  v204 = sub_1000032D4(&qword_100119230, &qword_1000D72A8);
  v17 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v212 = &v169[-v18];
  v208 = sub_1000032D4(&qword_100119238, &qword_1000D72B0);
  v19 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v211 = &v169[-v20];
  v207 = sub_1000032D4(&qword_100119240, &qword_1000D72B8);
  v21 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v207);
  v209 = &v169[-v22];
  v23 = type metadata accessor for Date();
  v187 = *(v23 - 8);
  v188 = v23;
  v24 = *(v187 + 64);
  __chkstk_darwin(v23);
  v224 = &v169[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v192 = sub_1000032D4(&qword_100119248, &qword_1000D72C0);
  v26 = *(*(v192 - 8) + 64);
  __chkstk_darwin(v192);
  v200 = &v169[-v27];
  v196 = sub_1000032D4(&qword_100119250, &qword_1000D72C8);
  v28 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v206 = &v169[-v29];
  v203 = sub_1000032D4(&qword_100119258, &qword_1000D72D0);
  v30 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v203);
  v201 = &v169[-v31];
  v198 = sub_1000032D4(&qword_100119260, &qword_1000D72D8);
  v32 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v214 = &v169[-v33];
  v213 = sub_1000032D4(&qword_100119268, &qword_1000D72E0);
  v34 = *(*(v213 - 8) + 64);
  v35 = __chkstk_darwin(v213);
  v216 = &v169[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = __chkstk_darwin(v35);
  v205 = &v169[-v38];
  __chkstk_darwin(v37);
  v215 = &v169[-v39];
  v223 = type metadata accessor for LinearTimerTimelineCountdown();
  v179 = *(v223 - 8);
  v40 = *(v179 + 64);
  __chkstk_darwin(v223);
  v221 = v41;
  v225 = &v169[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for Font.Context();
  v171 = *(v42 - 8);
  v172 = v42;
  v43 = *(v171 + 64);
  __chkstk_darwin(v42);
  v170 = &v169[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v181 = sub_1000032D4(&qword_100119270, &qword_1000D72E8);
  v45 = *(v181 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v181);
  v48 = &v169[-v47];
  v173 = sub_1000032D4(&qword_100119278, &qword_1000D72F0);
  v49 = *(*(v173 - 8) + 64);
  __chkstk_darwin(v173);
  v51 = &v169[-v50];
  v180 = sub_1000032D4(&qword_100119280, &qword_1000D72F8);
  v52 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180);
  v54 = &v169[-v53];
  v174 = sub_1000032D4(&qword_100119288, &qword_1000D7300);
  v55 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v57 = &v169[-v56];
  v182 = sub_1000032D4(&qword_100119290, &qword_1000D7308);
  v58 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v178 = &v169[-v59];
  v177 = sub_1000032D4(&qword_100119298, &qword_1000D7310);
  v60 = *(*(v177 - 8) + 64);
  __chkstk_darwin(v177);
  v175 = &v169[-v61];
  v176 = sub_1000032D4(&qword_1001192A0, &qword_1000D7318);
  v62 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v64 = &v169[-v63];
  v65 = sub_1000032D4(&qword_1001192A8, &qword_1000D7320);
  v66 = *(*(v65 - 8) + 64);
  v67 = __chkstk_darwin(v65 - 8);
  v183 = &v169[-((v68 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v67);
  v222 = &v169[-v69];
  [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.764705882 blue:0.0431372549 alpha:1.0];
  Color.init(uiColor:)();
  v70 = a1;
  sub_1000AD59C();

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v45 + 32))(v51, v48, v181);
  v71 = &v51[*(v173 + 36)];
  v72 = v234;
  v71[4] = v233;
  v71[5] = v72;
  v71[6] = v235;
  v73 = v230;
  *v71 = v229;
  v71[1] = v73;
  v74 = v232;
  v71[2] = v231;
  v71[3] = v74;
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10002C7C4(v51, v54, &qword_100119278, &qword_1000D72F0);
  v75 = &v54[*(v180 + 36)];
  v76 = v237;
  *v75 = v236;
  v75[1] = v76;
  v75[2] = v238;
  v77 = v223;
  v78 = v70;
  v79 = (v70 + *(v223 + 40));
  v80 = *v79;
  v81 = *(v79 + 1);
  LODWORD(v181) = v80;
  LOBYTE(v239) = v80;
  v180 = v81;
  *(&v239 + 1) = v81;
  v82 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v227)
  {
    if (qword_1001136B8 != -1)
    {
      swift_once();
    }

    v83 = v170;
    sub_1000AAEC0(v170);
    v84 = Font.platformFont(in:)();
    (*(v171 + 8))(v83, v172);
    CapHeight = CTFontGetCapHeight(v84);
  }

  else
  {
    CapHeight = 50.0;
  }

  sub_10002C7C4(v54, v57, &qword_100119280, &qword_1000D72F8);
  v86 = &v57[*(v174 + 36)];
  *v86 = 0.0;
  v86[1] = CapHeight;
  v87 = v78 + *(v77 + 60);
  v88 = *v87;
  v89 = *(v87 + 8);
  LOBYTE(v239) = v88;
  *(&v239 + 1) = v89;
  State.wrappedValue.getter();
  if (v227)
  {
    v90 = 1.0;
  }

  else
  {
    v90 = 0.0;
  }

  v91 = v178;
  sub_10002C7C4(v57, v178, &qword_100119288, &qword_1000D7300);
  *&v91[*(v182 + 36)] = v90;
  v92 = v225;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v182 = v82;
  v93 = qword_10011F788;
  v94 = v175;
  sub_10002C7C4(v91, v175, &qword_100119290, &qword_1000D7308);
  *&v94[*(v177 + 36)] = v93;
  sub_1000B42E0(v78, v92, type metadata accessor for LinearTimerTimelineCountdown);
  v95 = *(v179 + 80);
  v96 = (v95 + 16) & ~v95;
  v177 = v96 + v221;
  v178 = v95;
  v97 = swift_allocObject();
  v179 = v96;
  sub_1000B3678(v92, v97 + v96, type metadata accessor for LinearTimerTimelineCountdown);
  sub_10002C7C4(v94, v64, &qword_100119298, &qword_1000D7310);
  v98 = &v64[*(v176 + 36)];
  *v98 = sub_1000B380C;
  v98[1] = v97;
  v98[2] = 0;
  v98[3] = 0;
  v221 = v93;

  LocalizedStringKey.init(stringLiteral:)();
  sub_1000B3824();
  View.accessibilityLabel(_:)();

  sub_10002D02C(v64, &qword_1001192A0, &qword_1000D7318);
  v99 = v224;
  static Date.now.getter();
  if (qword_1001136C0 != -1)
  {
    swift_once();
  }

  v175 = static Color.white.getter();
  sub_1000B20F0(v78, v99);
  *&v239 = v100;
  *(&v239 + 1) = v101;
  sub_100025FB4();
  v102 = Text.init<A>(_:)();
  v104 = v103;
  v106 = v105;
  Font.monospacedDigit()();
  v108 = v184;
  v107 = v185;
  v109 = v186;
  (*(v185 + 104))(v184, enum case for Font._StylisticAlternative.three(_:), v186);
  Font._stylisticAlternative(_:)();
  v176 = v78;

  (*(v107 + 8))(v108, v109);
  v110 = Text.font(_:)();
  v112 = v111;
  LOBYTE(v109) = v113;
  v115 = v114;

  sub_100025B0C(v102, v104, v106 & 1);

  *&v239 = v110;
  *(&v239 + 1) = v112;
  LOBYTE(v109) = v109 & 1;
  LOBYTE(v240) = v109;
  *(&v240 + 1) = v115;
  v116 = v197;
  v117 = v191;
  v118 = v202;
  (*(v197 + 104))(v191, enum case for DynamicTypeSize.large(_:), v202);
  v119 = v190;
  View.dynamicTypeSize(_:)();
  (*(v116 + 8))(v117, v118);
  sub_100025B0C(v110, v112, v109);

  static Alignment.bottomTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v120 = v195;
  (*(v194 + 32))(v195, v119, v199);
  v121 = &v120[*(v189 + 36)];
  v122 = v244;
  v121[4] = v243;
  v121[5] = v122;
  v121[6] = v245;
  v123 = v240;
  *v121 = v239;
  v121[1] = v123;
  v124 = v242;
  v121[2] = v241;
  v121[3] = v124;
  KeyPath = swift_getKeyPath();
  v126 = v120;
  v127 = v210;
  sub_10002C7C4(v126, v210, &qword_100114AF0, &qword_1000D1E58);
  v128 = &v127[*(v193 + 36)];
  v129 = v175;
  *v128 = KeyPath;
  v128[1] = v129;
  (*(v218 + 104))(v217, enum case for Color.RGBColorSpace.sRGBLinear(_:), v219);
  v130 = 0.0;
  v131 = Color.init(_:white:opacity:)();
  (*(v187 + 8))(v224, v188);
  v132 = v127;
  v133 = v212;
  sub_10002C7C4(v132, v212, &qword_100114AF8, &qword_1000D1E60);
  v134 = &v133[*(v204 + 36)];
  *v134 = v131;
  v134[1] = 0x3FF0000000000000;
  v134[2] = 0;
  v134[3] = 0;
  v135 = swift_getKeyPath();
  v136 = v133;
  v137 = v211;
  sub_10002C7C4(v136, v211, &qword_100119230, &qword_1000D72A8);
  v138 = &v137[*(v208 + 36)];
  *v138 = v135;
  *(v138 + 1) = 1;
  v138[16] = 0;
  v139 = swift_getKeyPath();
  v140 = v137;
  v141 = v209;
  sub_10002C7C4(v140, v209, &qword_100119238, &qword_1000D72B0);
  v142 = &v141[*(v207 + 36)];
  *v142 = v139;
  v142[8] = 1;
  v143 = swift_getKeyPath();
  v144 = v141;
  v145 = v200;
  sub_10002C7C4(v144, v200, &qword_100119240, &qword_1000D72B8);
  v146 = &v145[*(v192 + 36)];
  *v146 = v143;
  v146[1] = 0x3FE6666666666666;
  v227 = v181;
  v228 = v180;
  State.wrappedValue.getter();
  if (v226)
  {
    v147 = 0.0;
  }

  else
  {
    v147 = 50.0;
  }

  v148 = v145;
  v149 = v206;
  sub_10002C7C4(v148, v206, &qword_100119248, &qword_1000D72C0);
  v150 = &v149[*(v196 + 36)];
  *v150 = 0.0;
  v150[1] = v147;
  v151 = v176;
  v152 = v176 + *(v223 + 56);
  v153 = *v152;
  v154 = *(v152 + 8);
  v227 = v153;
  v228 = v154;
  State.wrappedValue.getter();
  if (v226)
  {
    v130 = 1.0;
  }

  v155 = v201;
  sub_10002C7C4(v149, v201, &qword_100119250, &qword_1000D72C8);
  *&v155[*(v203 + 36)] = v130;
  v156 = v214;
  sub_10002C7C4(v155, v214, &qword_100119258, &qword_1000D72D0);
  *&v156[*(v198 + 36)] = v221;
  v157 = v225;
  sub_1000B42E0(v151, v225, type metadata accessor for LinearTimerTimelineCountdown);
  v158 = swift_allocObject();
  sub_1000B3678(v157, v158 + v179, type metadata accessor for LinearTimerTimelineCountdown);
  v159 = v205;
  sub_10002C7C4(v156, v205, &qword_100119260, &qword_1000D72D8);
  v160 = &v159[*(v213 + 36)];
  *v160 = sub_1000B3E6C;
  v160[1] = v158;
  v160[2] = 0;
  v160[3] = 0;
  v161 = v215;
  sub_10002C7C4(v159, v215, &qword_100119268, &qword_1000D72E0);
  v162 = v222;
  v163 = v183;
  sub_10002CFC4(v222, v183, &qword_1001192A8, &qword_1000D7320);
  v164 = v216;
  sub_10002CFC4(v161, v216, &qword_100119268, &qword_1000D72E0);
  v165 = v220;
  sub_10002CFC4(v163, v220, &qword_1001192A8, &qword_1000D7320);
  v166 = sub_1000032D4(&qword_100119320, &unk_1000D7420);
  v167 = v165 + *(v166 + 48);
  *v167 = 0;
  *(v167 + 8) = 1;
  sub_10002CFC4(v164, v165 + *(v166 + 64), &qword_100119268, &qword_1000D72E0);

  sub_10002D02C(v161, &qword_100119268, &qword_1000D72E0);
  sub_10002D02C(v162, &qword_1001192A8, &qword_1000D7320);
  sub_10002D02C(v164, &qword_100119268, &qword_1000D72E0);
  return sub_10002D02C(v163, &qword_1001192A8, &qword_1000D7320);
}

uint64_t sub_1000AD59C()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B2488(&v18);
  v5 = v18;
  v6 = v19;
  v7 = *(&v19 + 1);
  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v8 = qword_10011F6F0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v18) = v6;
  v10 = swift_getKeyPath();
  v17 = 0;
  v13 = v5;
  LOBYTE(v14) = v6;
  *(&v14 + 1) = v7;
  LOWORD(v15) = 256;
  *(&v15 + 1) = KeyPath;
  *v16 = v8;
  *&v16[8] = v10;
  *&v16[16] = 2;
  v16[24] = 0;
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.large(_:), v0);

  sub_1000032D4(&qword_1001192E0, &qword_1000D7328);
  sub_1000B3BD4();
  View.dynamicTypeSize(_:)();
  (*(v1 + 8))(v4, v0);
  v21[0] = *v16;
  *(v21 + 9) = *&v16[9];
  v19 = v14;
  v20 = v15;
  v18 = v13;
  return sub_10002D02C(&v18, &qword_1001192E0, &qword_1000D7328);
}

uint64_t sub_1000AD7C8()
{
  if (qword_100113718 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F750);
  withAnimation<A>(_:_:)();
  if (qword_100113720 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F758);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_1000AD8FC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AD978(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 60));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AD9F4()
{
  if (qword_100113708 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F740);
  withAnimation<A>(_:_:)();
  if (qword_100113710 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F748);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_1000ADB28(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000ADBA4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 56));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000ADC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v158 = type metadata accessor for SlideTransition();
  v157 = *(v158 - 8);
  v3 = *(v157 + 64);
  v4 = __chkstk_darwin(v158);
  v156 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v155 = &v143 - v6;
  v7 = type metadata accessor for LinearTimerTimelineCountdown();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v176 = v11;
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LargeActionButton(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v159 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v143 - v18;
  v20 = sub_1000032D4(&qword_1001150C0, &qword_1000D22C8);
  v21 = *(v20 - 8);
  v171 = v20 - 8;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20 - 8);
  v162 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v150 = &v143 - v25;
  v26 = sub_1000032D4(&qword_1001150C8, &qword_1000D22D0);
  v27 = *(v26 - 8);
  v173 = v26 - 8;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26 - 8);
  v161 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v151 = &v143 - v31;
  v32 = sub_1000032D4(&qword_1001150D0, &qword_1000D22D8);
  v33 = *(v32 - 8);
  v172 = v32 - 8;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32 - 8);
  v160 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v153 = &v143 - v37;
  v174 = sub_1000032D4(&qword_1001150D8, &qword_1000D22E0);
  v38 = *(*(v174 - 8) + 64);
  v39 = __chkstk_darwin(v174);
  v164 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v154 = &v143 - v41;
  v175 = sub_1000032D4(&qword_1001150E0, &qword_1000D22E8);
  v42 = *(*(v175 - 8) + 64);
  v43 = __chkstk_darwin(v175);
  v167 = &v143 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v166 = &v143 - v46;
  v47 = __chkstk_darwin(v45);
  v163 = &v143 - v48;
  v49 = __chkstk_darwin(v47);
  v165 = &v143 - v50;
  v51 = __chkstk_darwin(v49);
  v152 = &v143 - v52;
  __chkstk_darwin(v51);
  v170 = &v143 - v53;
  LocalizedStringResource.init(stringLiteral:)();
  v54 = static Color.white.getter();
  v55 = 1.0;
  [objc_allocWithZone(UIColor) initWithRed:0.17254902 green:0.17254902 blue:0.17254902 alpha:1.0];
  v56 = Color.init(uiColor:)();
  v146 = type metadata accessor for LinearTimerTimelineCountdown;
  v169 = v12;
  sub_1000B42E0(a1, v12, type metadata accessor for LinearTimerTimelineCountdown);
  v145 = *(v9 + 80);
  v57 = (v145 + 16) & ~v145;
  v58 = swift_allocObject();
  v144 = type metadata accessor for LinearTimerTimelineCountdown;
  sub_1000B3678(v12, v58 + v57, type metadata accessor for LinearTimerTimelineCountdown);
  *&v19[v14[7]] = v54;
  *&v19[v14[8]] = v56;
  v19[v14[9]] = 0;
  v59 = &v19[v14[10]];
  *v59 = sub_1000B35FC;
  v59[1] = v58;
  v60 = &v19[v14[11]];
  v177 = 0;
  State.init(wrappedValue:)();
  v61 = v179;
  *v60 = v178;
  *(v60 + 1) = v61;
  v148 = v8;
  v62 = a1 + *(v8 + 56);
  v63 = a1;
  v64 = *v62;
  v65 = *(v62 + 8);
  v178 = *v62;
  v179 = v65;
  v66 = sub_1000032D4(&qword_100114140, &qword_1000D7290);
  State.wrappedValue.getter();
  if (v177)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = 150.0;
  }

  v149 = type metadata accessor for LargeActionButton;
  v68 = v19;
  v69 = v150;
  sub_1000B3678(v68, v150, type metadata accessor for LargeActionButton);
  v70 = v69 + *(v171 + 44);
  *v70 = 0;
  *(v70 + 8) = v67;
  v71 = v63 + *(v8 + 76);
  v72 = *v71;
  v73 = *(v71 + 8);
  v178 = v72;
  v179 = v73;
  v147 = v66;
  State.wrappedValue.getter();
  if (v177)
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.0;
  }

  v75 = v69;
  v76 = v151;
  sub_10002C7C4(v75, v151, &qword_1001150C0, &qword_1000D22C8);
  *(v76 + *(v173 + 44)) = v74;
  v178 = v64;
  v179 = v65;
  State.wrappedValue.getter();
  if (v177)
  {
    v77 = 1.0;
  }

  else
  {
    v77 = 0.8;
  }

  static UnitPoint.center.getter();
  v79 = v78;
  v81 = v80;
  v82 = v169;
  v83 = v153;
  sub_10002C7C4(v76, v153, &qword_1001150C8, &qword_1000D22D0);
  v84 = v83 + *(v172 + 44);
  *v84 = v77;
  *(v84 + 8) = v77;
  *(v84 + 16) = v79;
  *(v84 + 24) = v81;
  v85 = v155;
  SlideTransition.init()();
  v86 = v157;
  v87 = v158;
  (*(v157 + 16))(v156, v85, v158);
  sub_1000B4348(&qword_1001142F0, &type metadata accessor for SlideTransition);
  v88 = v87;
  v89 = AnyTransition.init<A>(_:)();
  (*(v86 + 8))(v85, v88);
  v90 = v154;
  sub_10002C7C4(v83, v154, &qword_1001150D0, &qword_1000D22D8);
  *(v90 + *(v174 + 36)) = v89;
  v91 = v146;
  sub_1000B42E0(v63, v82, v146);
  v143 = v57;
  v92 = swift_allocObject();
  v93 = v92 + v57;
  v94 = v144;
  sub_1000B3678(v82, v93, v144);
  v95 = v90;
  v96 = v152;
  sub_10002C7C4(v95, v152, &qword_1001150D8, &qword_1000D22E0);
  v97 = (v96 + *(v175 + 36));
  *v97 = sub_1000B36E0;
  v97[1] = v92;
  v97[2] = 0;
  v97[3] = 0;
  sub_10002C7C4(v96, v170, &qword_1001150E0, &qword_1000D22E8);
  v98 = v159;
  LocalizedStringResource.init(stringLiteral:)();
  v99 = static Color.black.getter();
  [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.764705882 blue:0.0431372549 alpha:1.0];
  v100 = Color.init(uiColor:)();
  v101 = v63;
  sub_1000B42E0(v63, v82, v91);
  v102 = v143;
  v103 = swift_allocObject();
  sub_1000B3678(v82, v103 + v102, v94);
  *&v98[v14[7]] = v99;
  *&v98[v14[8]] = v100;
  v98[v14[9]] = 0;
  v104 = &v98[v14[10]];
  *v104 = sub_1000B376C;
  v104[1] = v103;
  v105 = v101;
  v106 = &v98[v14[11]];
  v177 = 0;
  State.init(wrappedValue:)();
  v107 = v179;
  *v106 = v178;
  *(v106 + 1) = v107;
  v108 = v148;
  v109 = v105 + *(v148 + 60);
  v110 = *v109;
  v111 = *(v109 + 8);
  v178 = *v109;
  v179 = v111;
  State.wrappedValue.getter();
  if (v177)
  {
    v112 = 0.0;
  }

  else
  {
    v112 = 150.0;
  }

  v113 = v98;
  v114 = v162;
  sub_1000B3678(v113, v162, v149);
  v115 = v114 + *(v171 + 44);
  *v115 = 0;
  *(v115 + 8) = v112;
  v116 = v105 + *(v108 + 80);
  v117 = *v116;
  v118 = *(v116 + 8);
  v178 = v117;
  v179 = v118;
  State.wrappedValue.getter();
  if (v177)
  {
    v119 = 1.0;
  }

  else
  {
    v119 = 0.0;
  }

  v120 = v114;
  v121 = v161;
  sub_10002C7C4(v120, v161, &qword_1001150C0, &qword_1000D22C8);
  *(v121 + *(v173 + 44)) = v119;
  v178 = v110;
  v179 = v111;
  State.wrappedValue.getter();
  v122 = v160;
  if (!v177)
  {
    v55 = 0.8;
  }

  static UnitPoint.center.getter();
  v124 = v123;
  v126 = v125;
  sub_10002C7C4(v121, v122, &qword_1001150C8, &qword_1000D22D0);
  v127 = v122 + *(v172 + 44);
  *v127 = v55;
  *(v127 + 8) = v55;
  *(v127 + 16) = v124;
  *(v127 + 24) = v126;
  if (qword_100113748 != -1)
  {
    swift_once();
  }

  v128 = qword_10011F788;
  v129 = v164;
  sub_10002C7C4(v122, v164, &qword_1001150D0, &qword_1000D22D8);
  *(v129 + *(v174 + 36)) = v128;
  v130 = v105;
  v131 = v169;
  sub_1000B42E0(v130, v169, type metadata accessor for LinearTimerTimelineCountdown);
  v132 = swift_allocObject();
  sub_1000B3678(v131, v132 + v102, type metadata accessor for LinearTimerTimelineCountdown);
  v133 = v163;
  sub_10002C7C4(v129, v163, &qword_1001150D8, &qword_1000D22E0);
  v134 = (v133 + *(v175 + 36));
  *v134 = sub_1000B3784;
  v134[1] = v132;
  v134[2] = 0;
  v134[3] = 0;
  v135 = v165;
  sub_10002C7C4(v133, v165, &qword_1001150E0, &qword_1000D22E8);
  v136 = v170;
  v137 = v166;
  sub_10002CFC4(v170, v166, &qword_1001150E0, &qword_1000D22E8);
  v138 = v167;
  sub_10002CFC4(v135, v167, &qword_1001150E0, &qword_1000D22E8);
  v139 = v168;
  sub_10002CFC4(v137, v168, &qword_1001150E0, &qword_1000D22E8);
  v140 = sub_1000032D4(&qword_100119228, &unk_1000D7298);
  v141 = v139 + *(v140 + 48);
  *v141 = 0x4038000000000000;
  *(v141 + 8) = 0;
  sub_10002CFC4(v138, v139 + *(v140 + 64), &qword_1001150E0, &qword_1000D22E8);

  sub_10002D02C(v135, &qword_1001150E0, &qword_1000D22E8);
  sub_10002D02C(v136, &qword_1001150E0, &qword_1000D22E8);
  sub_10002D02C(v138, &qword_1001150E0, &qword_1000D22E8);
  return sub_10002D02C(v137, &qword_1001150E0, &qword_1000D22E8);
}

uint64_t sub_1000AEA18()
{
  if (qword_100113728 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F760);
  withAnimation<A>(_:_:)();
  if (qword_100113730 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F768);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_1000AEB4C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 48));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AEBC8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 68));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AEC44()
{
  if (qword_100113738 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F770);
  withAnimation<A>(_:_:)();
  if (qword_100113740 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F778);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_1000AED78(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 52));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AEDF4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LinearTimerTimelineCountdown() + 72));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000AEE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>)
{
  v508 = a1;
  v462 = a2;
  v6 = sub_1000032D4(&qword_100119328, &qword_1000D7460);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v453 = (&v402 - v8);
  v452 = sub_1000032D4(&qword_100119330, &qword_1000D7468);
  v9 = *(*(v452 - 8) + 64);
  __chkstk_darwin(v452);
  v454 = &v402 - v10;
  v456 = sub_1000032D4(&qword_100119338, &qword_1000D7470);
  v11 = *(*(v456 - 8) + 64);
  __chkstk_darwin(v456);
  v457 = (&v402 - v12);
  v13 = sub_1000032D4(&qword_100119340, &qword_1000D7478);
  v460 = *(v13 - 8);
  v461 = v13;
  v14 = *(v460 + 64);
  v15 = __chkstk_darwin(v13);
  v459 = &v402 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v458 = &v402 - v17;
  v444 = type metadata accessor for LinearTimerTimelineCountdown();
  v446 = *(v444 - 8);
  v18 = *(v446 + 64);
  __chkstk_darwin(v444);
  v447 = v19;
  v448 = &v402 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = sub_1000032D4(&qword_100119348, &qword_1000D7480);
  v20 = *(*(v445 - 8) + 64);
  __chkstk_darwin(v445);
  v449 = &v402 - v21;
  v451 = sub_1000032D4(&qword_100119350, &qword_1000D7488);
  v22 = *(*(v451 - 8) + 64);
  v23 = __chkstk_darwin(v451);
  v455 = &v402 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v450 = &v402 - v26;
  __chkstk_darwin(v25);
  v497 = &v402 - v27;
  v495 = type metadata accessor for Color.RGBColorSpace();
  v504 = *(v495 - 8);
  v28 = *(v504 + 64);
  __chkstk_darwin(v495);
  v494 = &v402 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = type metadata accessor for DynamicTypeSize();
  v510 = *(v507 - 8);
  v30 = *(v510 + 64);
  __chkstk_darwin(v507);
  v506 = &v402 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = type metadata accessor for Font._StylisticAlternative();
  v500 = *(v477 - 8);
  v32 = *(v500 + 64);
  __chkstk_darwin(v477);
  v475 = &v402 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_1000032D4(&qword_100114340, &qword_1000D15C0);
  v502 = *(v489 - 8);
  v34 = *(v502 + 64);
  v35 = __chkstk_darwin(v489);
  v438 = &v402 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v420 = &v402 - v37;
  v483 = sub_1000032D4(&qword_100114AF0, &qword_1000D1E58);
  v38 = *(*(v483 - 8) + 64);
  v39 = __chkstk_darwin(v483);
  v440 = &v402 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v422 = &v402 - v41;
  v485 = sub_1000032D4(&qword_100114AF8, &qword_1000D1E60);
  v42 = *(*(v485 - 8) + 64);
  v43 = __chkstk_darwin(v485);
  v442 = &v402 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  *&v425 = &v402 - v45;
  v487 = sub_1000032D4(&qword_100119230, &qword_1000D72A8);
  v46 = *(*(v487 - 8) + 64);
  v47 = __chkstk_darwin(v487);
  v441 = &v402 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v424 = &v402 - v49;
  v486 = sub_1000032D4(&qword_100119238, &qword_1000D72B0);
  v50 = *(*(v486 - 8) + 64);
  v51 = __chkstk_darwin(v486);
  v437 = &v402 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v423 = &v402 - v53;
  v484 = sub_1000032D4(&qword_100119240, &qword_1000D72B8);
  v54 = *(*(v484 - 8) + 64);
  v55 = __chkstk_darwin(v484);
  v435 = &v402 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v418 = &v402 - v57;
  v481 = sub_1000032D4(&qword_100119248, &qword_1000D72C0);
  v58 = *(*(v481 - 8) + 64);
  v59 = __chkstk_darwin(v481);
  v436 = &v402 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v419 = &v402 - v61;
  v482 = sub_1000032D4(&qword_100119358, &qword_1000D7490);
  v62 = *(*(v482 - 8) + 64);
  v63 = __chkstk_darwin(v482);
  v434 = &v402 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v417 = &v402 - v65;
  v480 = sub_1000032D4(&qword_100119360, &qword_1000D7498);
  v66 = *(*(v480 - 8) + 64);
  v67 = __chkstk_darwin(v480);
  v433 = &v402 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __chkstk_darwin(v67);
  v439 = &v402 - v70;
  v71 = __chkstk_darwin(v69);
  v488 = &v402 - v72;
  v73 = __chkstk_darwin(v71);
  v413 = &v402 - v74;
  __chkstk_darwin(v73);
  v421 = &v402 - v75;
  v468 = sub_1000032D4(&qword_100119270, &qword_1000D72E8);
  v499 = *(v468 - 8);
  v76 = *(v499 + 64);
  v77 = __chkstk_darwin(v468);
  v429 = &v402 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v80 = &v402 - v79;
  v466 = sub_1000032D4(&qword_100119278, &qword_1000D72F0);
  v81 = *(*(v466 - 8) + 64);
  v82 = __chkstk_darwin(v466);
  v430 = &v402 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v85 = &v402 - v84;
  v467 = sub_1000032D4(&qword_100119368, &qword_1000D74A0);
  v86 = *(*(v467 - 8) + 64);
  v87 = __chkstk_darwin(v467);
  v428 = &v402 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v87);
  v473 = &v402 - v90;
  v91 = __chkstk_darwin(v89);
  v474 = &v402 - v92;
  v93 = __chkstk_darwin(v91);
  v95 = &v402 - v94;
  __chkstk_darwin(v93);
  v463 = &v402 - v96;
  v97 = sub_1000032D4(&qword_100119370, &qword_1000D74A8);
  v98 = *(*(v97 - 8) + 64);
  v99 = __chkstk_darwin(v97 - 8);
  v501 = (&v402 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v99);
  v498 = (&v402 - v101);
  v476 = sub_1000032D4(&qword_100119378, &qword_1000D74B0);
  v102 = *(*(v476 - 8) + 64);
  v103 = __chkstk_darwin(v476);
  v431 = &v402 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __chkstk_darwin(v103);
  v432 = &v402 - v106;
  v107 = __chkstk_darwin(v105);
  v479 = &v402 - v108;
  v109 = __chkstk_darwin(v107);
  v412 = &v402 - v110;
  __chkstk_darwin(v109);
  v416 = &v402 - v111;
  v478 = sub_1000032D4(&qword_100119380, &qword_1000D74B8);
  v112 = *(*(v478 - 8) + 64);
  v113 = __chkstk_darwin(v478);
  v492 = (&v402 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = __chkstk_darwin(v113);
  v490 = &v402 - v116;
  __chkstk_darwin(v115);
  v118 = &v402 - v117;
  v493 = type metadata accessor for Date();
  v503 = *(v493 - 8);
  v119 = *(v503 + 64);
  v120 = __chkstk_darwin(v493);
  v122 = &v402 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v120);
  v124 = &v402 - v123;
  v125 = sub_1000032D4(&qword_100119388, &qword_1000D74C0);
  v126 = *(*(v125 - 8) + 64);
  v127 = __chkstk_darwin(v125 - 8);
  v496 = &v402 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __chkstk_darwin(v127);
  v443 = &v402 - v130;
  v131 = __chkstk_darwin(v129);
  v426 = &v402 - v132;
  __chkstk_darwin(v131);
  v505 = &v402 - v133;
  v465 = v124;
  static Date.now.getter();
  [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.764705882 blue:0.0431372549 alpha:1.0];
  v134 = Color.init(uiColor:)();
  [objc_allocWithZone(UIColor) initWithRed:0.831372549 green:0.431372549 blue:0.0 alpha:1.0];
  v135 = Color.init(uiColor:)();
  v464 = static Color.black.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v550[0] = v134;
  v136 = qword_100113750;
  v414 = v134;

  if (v136 != -1)
  {
    swift_once();
  }

  v491 = v122;
  v509 = qword_10011F790;
  *v118 = qword_10011F790;
  *(v118 + 1) = 0;
  v427 = v118;
  v118[16] = 1;
  v137 = v508;
  sub_1000AB0C8();
  v139 = v138;
  v140 = static HorizontalAlignment.trailing.getter();
  v141 = v498;
  *v498 = v140;
  v141[1] = 0xC034000000000000;
  *(v141 + 16) = 0;
  v406 = v135;
  sub_1000AD59C();
  static Alignment.trailing.getter();
  v415 = a3 * 0.5 - a4;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v142 = *(v499 + 32);
  v499 += 32;
  v411 = v142;
  v142(v85, v80, v468);
  v143 = &v85[*(v466 + 36)];
  v144 = v557;
  *(v143 + 4) = v556;
  *(v143 + 5) = v144;
  *(v143 + 6) = v558;
  v145 = v553;
  *v143 = v552;
  *(v143 + 1) = v145;
  v146 = v555;
  *(v143 + 2) = v554;
  *(v143 + 3) = v146;
  KeyPath = swift_getKeyPath();
  sub_10002C7C4(v85, v95, &qword_100119278, &qword_1000D72F0);
  v148 = &v95[*(v467 + 36)];
  *v148 = KeyPath;
  v148[8] = 2;
  sub_10002C7C4(v95, v463, &qword_100119368, &qword_1000D74A0);
  v402 = sub_1000B3F50(v139);

  sub_1000B20F0(v137, v465);
  *&v542 = v149;
  *(&v542 + 1) = v150;
  v410 = sub_100025FB4();
  v151 = Text.init<A>(_:)();
  v153 = v152;
  v155 = v154;
  Font.monospacedDigit()();
  v156 = v500;
  v157 = *(v500 + 104);
  v158 = v475;
  v408 = enum case for Font._StylisticAlternative.three(_:);
  v159 = v477;
  v409 = v500 + 104;
  v407 = v157;
  v157(v475);
  Font._stylisticAlternative(_:)();

  v160 = *(v156 + 8);
  v500 = v156 + 8;
  v405 = v160;
  v160(v158, v159);
  v161 = Text.font(_:)();
  v163 = v162;
  LOBYTE(v158) = v164;
  v166 = v165;

  sub_100025B0C(v151, v153, v155 & 1);

  *&v542 = v161;
  *(&v542 + 1) = v163;
  LOBYTE(KeyPath) = v158 & 1;
  LOBYTE(v543) = v158 & 1;
  *(&v543 + 1) = v166;
  v167 = v510;
  v168 = *(v510 + 104);
  v169 = v506;
  v471 = enum case for DynamicTypeSize.large(_:);
  v170 = v507;
  v472 = v510 + 104;
  v470 = v168;
  v168(v506);
  v171 = v420;
  View.dynamicTypeSize(_:)();
  v172 = *(v167 + 8);
  v510 = v167 + 8;
  v469 = v172;
  v172(v169, v170);
  sub_100025B0C(v161, v163, KeyPath);

  static Alignment.bottomTrailing.getter();
  v404 = sub_1000032D4(&qword_100119390, &qword_1000D74F8);
  v173 = v498 + *(v404 + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v174 = *(v502 + 32);
  v175 = v422;
  v502 += 32;
  v420 = v174;
  (v174)(v422, v171, v489);
  v176 = &v175[*(v483 + 36)];
  v177 = v562;
  v178 = v564;
  *(v176 + 4) = v563;
  *(v176 + 5) = v178;
  *(v176 + 6) = v565;
  v179 = v560;
  *v176 = v559;
  *(v176 + 1) = v179;
  *(v176 + 2) = v561;
  *(v176 + 3) = v177;
  v180 = swift_getKeyPath();
  v181 = v175;
  v182 = v425;
  sub_10002C7C4(v181, *&v425, &qword_100114AF0, &qword_1000D1E58);
  v183 = (*&v182 + *(v485 + 36));
  v184 = v464;
  *v183 = v180;
  v183[1] = v184;
  v185 = *(v504 + 104);
  LODWORD(v422) = enum case for Color.RGBColorSpace.sRGBLinear(_:);
  v504 += 104;
  v403 = v185;
  v185(v494);

  v186 = Color.init(_:white:opacity:)();

  v187 = *&v182;
  v188 = v424;
  sub_10002C7C4(v187, v424, &qword_100114AF8, &qword_1000D1E60);
  v189 = (v188 + *(v487 + 36));
  *v189 = v186;
  v189[1] = 0x3FF0000000000000;
  v189[2] = 0;
  v189[3] = 0;
  v190 = swift_getKeyPath();
  v191 = v188;
  v192 = v423;
  sub_10002C7C4(v191, v423, &qword_100119230, &qword_1000D72A8);
  v193 = v192 + *(v486 + 36);
  *v193 = v190;
  *(v193 + 8) = 1;
  *(v193 + 16) = 0;
  v194 = swift_getKeyPath();
  v195 = v192;
  v196 = v418;
  sub_10002C7C4(v195, v418, &qword_100119238, &qword_1000D72B0);
  v197 = v196 + *(v484 + 36);
  *v197 = v194;
  *(v197 + 8) = 1;
  v198 = swift_getKeyPath();
  v199 = v196;
  v200 = v419;
  sub_10002C7C4(v199, v419, &qword_100119240, &qword_1000D72B8);
  v201 = (v200 + *(v481 + 36));
  *v201 = v198;
  v201[1] = 0x3FE6666666666666;
  static Alignment.center.getter();
  v425 = a3 * 0.5;
  _FrameLayout.init(width:height:alignment:)();
  v202 = v417;
  sub_10002C7C4(v200, v417, &qword_100119248, &qword_1000D72C0);
  v203 = (v202 + *(v482 + 36));
  v204 = v567;
  *v203 = v566;
  v203[1] = v204;
  v203[2] = v568;
  v205 = v202;
  v206 = v413;
  sub_10002C7C4(v205, v413, &qword_100119358, &qword_1000D7490);
  v207 = (v206 + *(v480 + 36));
  *v207 = v509;
  v207[1] = sub_1000B20C8;
  v207[2] = 0;
  v208 = v421;
  sub_10002C7C4(v206, v421, &qword_100119360, &qword_1000D7498);
  v209 = v463;
  v210 = v474;
  sub_10002CFC4(v463, v474, &qword_100119368, &qword_1000D74A0);
  v211 = v488;
  sub_10002CFC4(v208, v488, &qword_100119360, &qword_1000D7498);
  sub_10002CFC4(v210, v173, &qword_100119368, &qword_1000D74A0);
  v424 = sub_1000032D4(&qword_100119398, &qword_1000D7500);
  sub_10002CFC4(v211, v173 + *(v424 + 48), &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v208, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v209, &qword_100119368, &qword_1000D74A0);
  sub_10002D02C(v211, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v210, &qword_100119368, &qword_1000D74A0);
  LOBYTE(v209) = static Edge.Set.bottom.getter();
  v212 = v509;
  v213 = v498;
  v463 = sub_1000032D4(&qword_1001193A0, &qword_1000D7508);
  v214 = v427;
  v215 = &v427[*(v463 + 44)];
  EdgeInsets.init(_all:)();
  v217 = v216;
  v219 = v218;
  v221 = v220;
  v223 = v222;
  v224 = v412;
  sub_10002C7C4(v213, v412, &qword_100119370, &qword_1000D74A8);
  v225 = v224 + *(v476 + 36);
  *v225 = v209;
  *(v225 + 8) = v217;
  *(v225 + 16) = v219;
  *(v225 + 24) = v221;
  *(v225 + 32) = v223;
  *(v225 + 40) = 0;
  v226 = v416;
  sub_10002C7C4(v224, v416, &qword_100119378, &qword_1000D74B0);
  v227 = v479;
  sub_10002CFC4(v226, v479, &qword_100119378, &qword_1000D74B0);
  *v215 = 0;
  v215[8] = 1;
  v423 = sub_1000032D4(&qword_1001193A8, &qword_1000D7510);
  sub_10002CFC4(v227, &v215[*(v423 + 48)], &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v226, &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v227, &qword_100119378, &qword_1000D74B0);
  LOBYTE(v209) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v228 = v214 + *(v478 + 36);
  *v228 = v209;
  *(v228 + 8) = v229;
  *(v228 + 16) = v230;
  *(v228 + 24) = v231;
  *(v228 + 32) = v232;
  *(v228 + 40) = 0;
  v536 = v550[4];
  v537 = v550[5];
  v538 = v550[6];
  v539 = v551;
  v532 = v550[0];
  v533 = v550[1];
  v534 = v550[2];
  v535 = v550[3];
  v233 = v490;
  sub_10002CFC4(v214, v490, &qword_100119380, &qword_1000D74B8);
  v234 = v536;
  v235 = v537;
  v540[4] = v536;
  v540[5] = v537;
  v236 = v538;
  v540[6] = v538;
  v541 = v539;
  v237 = v532;
  v238 = v533;
  v540[0] = v532;
  v540[1] = v533;
  v239 = v534;
  v240 = v535;
  v540[2] = v534;
  v540[3] = v535;
  v241 = v426;
  *(v426 + 14) = v539;
  v241[5] = v235;
  v241[6] = v236;
  v241[3] = v240;
  v241[4] = v234;
  v241[1] = v238;
  v241[2] = v239;
  *v241 = v237;
  v421 = sub_1000032D4(&qword_1001193B0, &qword_1000D7518);
  sub_10002CFC4(v233, v241 + *(v421 + 48), &qword_100119380, &qword_1000D74B8);
  sub_10002CFC4(v550, &v542, &qword_1001193B8, &qword_1000D7520);
  sub_10002CFC4(v540, &v542, &qword_1001193B8, &qword_1000D7520);

  sub_10002D02C(v550, &qword_1001193B8, &qword_1000D7520);
  sub_10002D02C(v214, &qword_100119380, &qword_1000D74B8);
  sub_10002D02C(v233, &qword_100119380, &qword_1000D74B8);
  v546 = v536;
  v547 = v537;
  v548 = v538;
  v549 = v539;
  v542 = v532;
  v543 = v533;
  v544 = v534;
  v545 = v535;
  sub_10002D02C(&v542, &qword_1001193B8, &qword_1000D7520);
  v242 = *(v503 + 8);
  v243 = v465;
  v503 += 8;
  v465 = v242;
  v242(v243, v493);
  sub_10002C7C4(v241, v505, &qword_100119388, &qword_1000D74C0);
  v244 = v491;
  static Date.now.getter();
  v245 = static Color.black.getter();
  v246 = static Color.secondary.getter();
  v498 = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v530[0] = v245;
  v247 = v492;
  *v492 = v212;
  v247[1] = 0;
  *(v247 + 16) = 1;
  v464 = v245;

  v248 = v508;
  sub_1000AB0C8();
  v250 = v249;
  v251 = static HorizontalAlignment.trailing.getter();
  v252 = v501;
  *v501 = v251;
  v252[1] = 0xC034000000000000;
  *(v252 + 16) = 0;
  v253 = v429;
  v427 = v246;
  sub_1000AD59C();
  static Alignment.trailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v254 = v430;
  v411(v430, v253, v468);
  v255 = &v254[*(v466 + 36)];
  v256 = v572;
  v257 = v574;
  *(v255 + 4) = v573;
  *(v255 + 5) = v257;
  *(v255 + 6) = v575;
  v258 = v570;
  *v255 = v569;
  *(v255 + 1) = v258;
  *(v255 + 2) = v571;
  *(v255 + 3) = v256;
  v259 = swift_getKeyPath();
  v260 = v254;
  v261 = v428;
  sub_10002C7C4(v260, v428, &qword_100119278, &qword_1000D72F0);
  v262 = v261 + *(v467 + 36);
  *v262 = v259;
  *(v262 + 8) = 2;
  sub_10002C7C4(v261, v473, &qword_100119368, &qword_1000D74A0);
  v499 = sub_1000B3F50(v250);

  sub_1000B20F0(v248, v244);
  *&v522 = v263;
  *(&v522 + 1) = v264;
  v265 = Text.init<A>(_:)();
  v267 = v266;
  LOBYTE(v261) = v268;
  Font.monospacedDigit()();
  v269 = v475;
  v270 = v477;
  v407(v475, v408, v477);
  Font._stylisticAlternative(_:)();

  v405(v269, v270);
  v271 = Text.font(_:)();
  v273 = v272;
  LOBYTE(v253) = v274;
  v276 = v275;

  sub_100025B0C(v265, v267, v261 & 1);

  *&v522 = v271;
  *(&v522 + 1) = v273;
  LOBYTE(v261) = v253 & 1;
  LOBYTE(v523) = v253 & 1;
  *(&v523 + 1) = v276;
  v277 = v506;
  v278 = v507;
  v470(v506, v471, v507);
  v279 = v438;
  View.dynamicTypeSize(_:)();
  v469(v277, v278);
  sub_100025B0C(v271, v273, v261);

  static Alignment.bottomTrailing.getter();
  v280 = v501 + *(v404 + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v281 = v440;
  (v420)(v440, v279, v489);
  v282 = &v281[*(v483 + 36)];
  v283 = v579;
  v284 = v581;
  *(v282 + 4) = v580;
  *(v282 + 5) = v284;
  *(v282 + 6) = v582;
  v285 = v577;
  *v282 = v576;
  *(v282 + 1) = v285;
  *(v282 + 2) = v578;
  *(v282 + 3) = v283;
  v286 = swift_getKeyPath();
  v287 = v281;
  v288 = v442;
  sub_10002C7C4(v287, v442, &qword_100114AF0, &qword_1000D1E58);
  v289 = (v288 + *(v485 + 36));
  v290 = v498;
  *v289 = v286;
  v289[1] = v290;
  v403(v494, v422, v495);

  v291 = Color.init(_:white:opacity:)();

  v292 = v288;
  v293 = v441;
  sub_10002C7C4(v292, v441, &qword_100114AF8, &qword_1000D1E60);
  v294 = (v293 + *(v487 + 36));
  *v294 = v291;
  v294[1] = 0x3FF0000000000000;
  v294[2] = 0;
  v294[3] = 0;
  v295 = swift_getKeyPath();
  v296 = v293;
  v297 = v437;
  sub_10002C7C4(v296, v437, &qword_100119230, &qword_1000D72A8);
  v298 = v297 + *(v486 + 36);
  *v298 = v295;
  *(v298 + 8) = 1;
  *(v298 + 16) = 0;
  v299 = swift_getKeyPath();
  v300 = v297;
  v301 = v435;
  sub_10002C7C4(v300, v435, &qword_100119238, &qword_1000D72B0);
  v302 = v301 + *(v484 + 36);
  *v302 = v299;
  *(v302 + 8) = 1;
  v303 = swift_getKeyPath();
  v304 = v301;
  v305 = v436;
  sub_10002C7C4(v304, v436, &qword_100119240, &qword_1000D72B8);
  v306 = (v305 + *(v481 + 36));
  *v306 = v303;
  v306[1] = 0x3FE6666666666666;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v307 = v434;
  sub_10002C7C4(v305, v434, &qword_100119248, &qword_1000D72C0);
  v308 = (v307 + *(v482 + 36));
  v309 = v584;
  *v308 = v583;
  v308[1] = v309;
  v308[2] = v585;
  v310 = v433;
  sub_10002C7C4(v307, v433, &qword_100119358, &qword_1000D7490);
  v311 = (v310 + *(v480 + 36));
  *v311 = v509;
  v311[1] = sub_1000B20C8;
  v311[2] = 0;
  v312 = v439;
  sub_10002C7C4(v310, v439, &qword_100119360, &qword_1000D7498);
  v313 = v473;
  v314 = v474;
  sub_10002CFC4(v473, v474, &qword_100119368, &qword_1000D74A0);
  v315 = v488;
  sub_10002CFC4(v312, v488, &qword_100119360, &qword_1000D7498);
  sub_10002CFC4(v314, v280, &qword_100119368, &qword_1000D74A0);
  sub_10002CFC4(v315, v280 + *(v424 + 48), &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v312, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v313, &qword_100119368, &qword_1000D74A0);
  sub_10002D02C(v315, &qword_100119360, &qword_1000D7498);
  sub_10002D02C(v314, &qword_100119368, &qword_1000D74A0);
  LOBYTE(v280) = static Edge.Set.bottom.getter();
  v316 = v501;
  v317 = v492;
  v318 = v492 + *(v463 + 44);
  EdgeInsets.init(_all:)();
  v320 = v319;
  v322 = v321;
  v324 = v323;
  v326 = v325;
  v327 = v431;
  sub_10002C7C4(v316, v431, &qword_100119370, &qword_1000D74A8);
  v328 = v327 + *(v476 + 36);
  *v328 = v280;
  *(v328 + 8) = v320;
  *(v328 + 16) = v322;
  *(v328 + 24) = v324;
  *(v328 + 32) = v326;
  *(v328 + 40) = 0;
  v329 = v327;
  v330 = v432;
  sub_10002C7C4(v329, v432, &qword_100119378, &qword_1000D74B0);
  v331 = v479;
  sub_10002CFC4(v330, v479, &qword_100119378, &qword_1000D74B0);
  *v318 = 0;
  v318[8] = 1;
  sub_10002CFC4(v331, &v318[*(v423 + 48)], &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v330, &qword_100119378, &qword_1000D74B0);
  sub_10002D02C(v331, &qword_100119378, &qword_1000D74B0);
  LOBYTE(v280) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v332 = v317 + *(v478 + 36);
  *v332 = v280;
  *(v332 + 8) = v333;
  *(v332 + 16) = v334;
  *(v332 + 24) = v335;
  *(v332 + 32) = v336;
  *(v332 + 40) = 0;
  v516 = v530[4];
  v517 = v530[5];
  v518 = v530[6];
  v519 = v531;
  v512 = v530[0];
  v513 = v530[1];
  v514 = v530[2];
  v515 = v530[3];
  v337 = v490;
  sub_10002CFC4(v317, v490, &qword_100119380, &qword_1000D74B8);
  v338 = v516;
  v339 = v517;
  v520[4] = v516;
  v520[5] = v517;
  v340 = v518;
  v520[6] = v518;
  v521 = v519;
  v341 = v512;
  v342 = v513;
  v520[0] = v512;
  v520[1] = v513;
  v343 = v514;
  v344 = v515;
  v520[2] = v514;
  v520[3] = v515;
  v345 = v443;
  *(v443 + 14) = v519;
  v345[5] = v339;
  v345[6] = v340;
  v345[3] = v344;
  v345[4] = v338;
  v345[1] = v342;
  v345[2] = v343;
  *v345 = v341;
  sub_10002CFC4(v337, v345 + *(v421 + 48), &qword_100119380, &qword_1000D74B8);
  sub_10002CFC4(v530, &v522, &qword_1001193B8, &qword_1000D7520);
  sub_10002CFC4(v520, &v522, &qword_1001193B8, &qword_1000D7520);

  sub_10002D02C(v530, &qword_1001193B8, &qword_1000D7520);
  sub_10002D02C(v317, &qword_100119380, &qword_1000D74B8);
  sub_10002D02C(v337, &qword_100119380, &qword_1000D74B8);
  v526 = v516;
  v527 = v517;
  v528 = v518;
  v529 = v519;
  v522 = v512;
  v523 = v513;
  v524 = v514;
  v525 = v515;
  sub_10002D02C(&v522, &qword_1001193B8, &qword_1000D7520);
  v465(v491, v493);
  v346 = v508;
  v347 = (v508 + *(v444 + 32));
  v348 = *v347;
  v349 = v347[1];
  *&v586 = v348;
  *(&v586 + 1) = v349;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  v350 = v511 * a3;
  v351 = v449;
  sub_10002C7C4(v345, v449, &qword_100119388, &qword_1000D74C0);
  v352 = v351 + *(v445 + 36);
  *v352 = v350;
  *(v352 + 8) = 0;
  *(v352 + 16) = 256;
  v353 = v448;
  sub_1000B42E0(v346, v448, type metadata accessor for LinearTimerTimelineCountdown);
  v354 = (*(v446 + 80) + 16) & ~*(v446 + 80);
  v355 = swift_allocObject();
  sub_1000B3678(v353, v355 + v354, type metadata accessor for LinearTimerTimelineCountdown);
  if (qword_100113618 != -1)
  {
    swift_once();
  }

  *&v586 = qword_10011F4F0;
  type metadata accessor for DisplayLink();
  sub_1000B4348(&qword_1001193C0, type metadata accessor for DisplayLink);
  v356 = Publisher.eraseToAnyPublisher()();
  v357 = v450;
  sub_10002C7C4(v351, v450, &qword_100119348, &qword_1000D7480);
  v358 = swift_allocObject();
  *(v358 + 16) = sub_1000B40A8;
  *(v358 + 24) = v355;
  v359 = v451;
  *(v357 + *(v451 + 52)) = v356;
  v360 = (v357 + *(v359 + 56));
  *v360 = sub_1000B4158;
  v360[1] = v358;
  v361 = v497;
  sub_10002C7C4(v357, v497, &qword_100119350, &qword_1000D7488);
  v362 = v457;
  v363 = v509;
  *v457 = v509;
  *(v362 + 8) = 0;
  *(v362 + 16) = 1;
  v364 = static VerticalAlignment.center.getter();
  v365 = v453;
  *v453 = v364;
  v365[1] = 0x4034000000000000;
  *(v365 + 16) = 0;
  v366 = sub_1000032D4(&qword_1001193C8, &qword_1000D7528);
  sub_1000B2760(v346, v365 + *(v366 + 44));
  static Alignment.bottomLeading.getter();
  v367 = v362 + *(sub_1000032D4(&qword_1001193D0, &qword_1000D7530) + 44);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v368 = v365;
  v369 = v454;
  sub_10002C7C4(v368, v454, &qword_100119328, &qword_1000D7460);
  v370 = (v369 + *(v452 + 36));
  v371 = v589;
  v372 = v591;
  v370[4] = v590;
  v370[5] = v372;
  v370[6] = v592;
  v373 = v587;
  *v370 = v586;
  v370[1] = v373;
  v370[2] = v588;
  v370[3] = v371;
  sub_10002C7C4(v369, v367, &qword_100119330, &qword_1000D7468);
  v374 = (v367 + *(sub_1000032D4(&qword_1001193D8, &qword_1000D7538) + 36));
  *v374 = v363;
  v374[1] = sub_1000B2024;
  v374[2] = 0;
  LOBYTE(v367) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v376 = v375;
  v378 = v377;
  v380 = v379;
  v382 = v381;
  v383 = v362 + *(sub_1000032D4(&qword_1001193E0, &qword_1000D7540) + 36);
  *v383 = v367;
  *(v383 + 8) = v376;
  *(v383 + 16) = v378;
  *(v383 + 24) = v380;
  *(v383 + 32) = v382;
  *(v383 + 40) = 0;
  LOBYTE(v367) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v384 = v362 + *(v456 + 36);
  *v384 = v367;
  *(v384 + 8) = v385;
  *(v384 + 16) = v386;
  *(v384 + 24) = v387;
  *(v384 + 32) = v388;
  *(v384 + 40) = 0;
  v389 = v506;
  v390 = v507;
  v470(v506, v471, v507);
  sub_1000B4184();
  v391 = v458;
  View.dynamicTypeSize(_:)();
  v469(v389, v390);
  sub_10002D02C(v362, &qword_100119338, &qword_1000D7470);
  v392 = v496;
  sub_10002CFC4(v505, v496, &qword_100119388, &qword_1000D74C0);
  v393 = v455;
  sub_10002CFC4(v361, v455, &qword_100119350, &qword_1000D7488);
  v395 = v459;
  v394 = v460;
  v396 = *(v460 + 16);
  v397 = v461;
  v396(v459, v391, v461);
  v398 = v462;
  sub_10002CFC4(v392, v462, &qword_100119388, &qword_1000D74C0);
  v399 = sub_1000032D4(&qword_100119408, &qword_1000D7550);
  sub_10002CFC4(v393, v398 + *(v399 + 48), &qword_100119350, &qword_1000D7488);
  v396((v398 + *(v399 + 64)), v395, v397);
  v400 = *(v394 + 8);
  v400(v391, v397);
  sub_10002D02C(v497, &qword_100119350, &qword_1000D7488);
  sub_10002D02C(v505, &qword_100119388, &qword_1000D74C0);
  v400(v395, v397);
  sub_10002D02C(v393, &qword_100119350, &qword_1000D7488);
  return sub_10002D02C(v496, &qword_100119388, &qword_1000D74C0);
}