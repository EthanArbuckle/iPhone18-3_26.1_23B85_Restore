uint64_t sub_1002B8AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002B8B38()
{
  v1 = &v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardHeightScrollViewPadding];
  if (v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardHeightScrollViewPadding + 8])
  {
    goto LABEL_12;
  }

  v2 = [v0 scrollView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  [v2 contentSize];
  [v3 setContentSize:?];

  v4 = [v0 scrollView];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 contentSize];
  v7 = v6;

  v8 = [v0 scrollView];
  if (!v8)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;

  if (v7 - v11 < 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v7 - v11;
  }

  v13 = [v0 scrollView];
  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v13;
  [v13 contentOffset];
  v16 = v15;

  if (v12 >= v16)
  {
LABEL_12:
    *v1 = 0;
    v1[8] = 1;
    return;
  }

  v17 = [v0 scrollView];
  if (v17)
  {
    v18 = v17;
    [v17 setContentOffset:1 animated:{0.0, v12}];

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
}

void sub_1002B8CC4()
{
  v1 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField;
  v2 = [*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField) text];
  if (!v2)
  {
    if (*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength + 8) != 1)
    {
      goto LABEL_19;
    }

LABEL_6:
    v5 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView;
    v6 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView);
    v7 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView);
    if (v6)
    {
      if (v7)
      {
        sub_10000905C(0, &qword_1006BA410);
        v8 = v7;
        v9 = v6;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
LABEL_9:
          v11 = [*(v0 + v1) text];
          if (v11)
          {
            v12 = v11;
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v14;
          }

          else
          {
            v13 = 0;
            v15 = 0;
          }

          v22 = (v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode);
          *v22 = v13;
          v22[1] = v15;

          v23 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView);
          v24 = *(v0 + v5);
          *(v0 + v5) = v23;
          v25 = v23;

          sub_1002B5F28();
LABEL_18:
          v26 = *(v0 + v1);
          v27 = String._bridgeToObjectiveC()();
          [v26 setText:v27];

          goto LABEL_19;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_9;
    }

    v16 = [*(v0 + v1) text];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = (v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscode);
    *v21 = v18;
    v21[1] = v20;

    sub_1002B6604();
    goto LABEL_18;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String.count.getter();

  if ((*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength + 8) & 1) == 0 && v4 == *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength))
  {
    goto LABEL_6;
  }

LABEL_19:

  sub_1002B5308();
}

uint64_t sub_1002B8F08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {
    goto LABEL_5;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    sub_1002B5750();
    v7 = 1;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  sub_100035F3C();
  v8 = StringProtocol.trimmingCharacters(in:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v12 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_1002B5610();
      return 1;
    }
  }

  return v7;
}

uint64_t sub_1002B904C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v103 = type metadata accessor for FMSelectedSection();
  v6 = __chkstk_darwin(v103);
  v104 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = &v103 - v8;
  v9 = sub_10007EBC0(&qword_1006B2B78);
  __chkstk_darwin(v9 - 8);
  v119 = &v103 - v10;
  v11 = sub_10007EBC0(&qword_1006B2B80);
  v118 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v108 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v111 = &v103 - v15;
  __chkstk_darwin(v14);
  v120 = &v103 - v16;
  v17 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v17 - 8);
  v109 = &v103 - v18;
  v19 = sub_10007EBC0(&qword_1006B04D8);
  __chkstk_darwin(v19 - 8);
  v21 = &v103 - v20;
  v125 = type metadata accessor for FMFActionURLInfo();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v110 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v106 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v126 = &v103 - v28;
  v29 = __chkstk_darwin(v27);
  v107 = &v103 - v30;
  __chkstk_darwin(v29);
  v32 = &v103 - v31;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100005B14(v33, qword_1006D4630);
  v35 = *(v24 + 16);
  v115 = v24 + 16;
  v114 = v35;
  v35(v32, a1, v23);
  v123 = a2;
  sub_100007204(a2, &v129, &unk_1006B8740);

  v117 = v34;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v121 = v11;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v122 = v23;
    v40 = v39;
    v41 = swift_slowAlloc();
    v113 = v24;
    v128[0] = v41;
    *v40 = 136315906;
    v127[0] = *v3;
    sub_10007EBC0(&qword_1006BA520);
    v42 = String.init<A>(describing:)();
    v44 = v3;
    v45 = sub_100005B4C(v42, v43, v128);

    *(v40 + 4) = v45;
    v112 = a1;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_100005B4C(0xD00000000000001BLL, 0x800000010058D500, v128);
    *(v40 + 22) = 2080;
    v46 = URL.absoluteString.getter();
    v48 = v47;
    v116 = *(v113 + 8);
    v116(v32, v122);
    v49 = sub_100005B4C(v46, v48, v128);

    *(v40 + 24) = v49;
    *(v40 + 32) = 2080;
    sub_100007204(&v129, v127, &unk_1006B8740);
    sub_10007EBC0(&unk_1006B8740);
    v50 = String.init<A>(describing:)();
    v52 = v51;
    v3 = v44;
    v11 = v121;
    sub_100012DF0(&v129, &unk_1006B8740);
    v53 = sub_100005B4C(v50, v52, v128);
    a1 = v112;

    *(v40 + 34) = v53;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s: %s, url: [%s], additionalInfo - %s", v40, 0x2Au);
    swift_arrayDestroy();
    v24 = v113;

    v23 = v122;
  }

  else
  {

    sub_100012DF0(&v129, &unk_1006B8740);
    v116 = *(v24 + 8);
    v116(v32, v23);
  }

  sub_100007204(v123, &v129, &unk_1006B8740);
  v55 = v125;
  v54 = v126;
  v56 = v124;
  if (!v132)
  {
    sub_100012DF0(&v129, &unk_1006B8740);
    (*(v56 + 56))(v21, 1, 1, v55);
    goto LABEL_11;
  }

  v57 = swift_dynamicCast();
  (*(v56 + 56))(v21, v57 ^ 1u, 1, v55);
  if ((*(v56 + 48))(v21, 1, v55) == 1)
  {
LABEL_11:
    v59 = &qword_1006B04D8;
    goto LABEL_12;
  }

  v58 = v110;
  (*(v56 + 32))(v110);
  v21 = v109;
  FMFActionURLInfo.actionURL.getter();
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    (*(v56 + 8))(v58, v55);
    v59 = &unk_1006B0120;
LABEL_12:
    sub_100012DF0(v21, v59);
    goto LABEL_13;
  }

  v82 = v107;
  (*(v24 + 32))(v107, v21, v23);
  URL.absoluteString.getter();
  v83._countAndFlagsBits = 25958;
  v83._object = 0xE200000000000000;
  v84 = String.hasPrefix(_:)(v83);

  if (v84)
  {
    v85 = v110;
    v86 = FMFActionURLInfo.email.getter();
    if (v87)
    {
      sub_1002BBE38(v86, v87);

      v116(v107, v23);
      return (*(v56 + 8))(v85, v55);
    }

    v116(v107, v23);
    (*(v56 + 8))(v85, v55);
  }

  else
  {
    v116(v82, v23);
    (*(v56 + 8))(v110, v55);
  }

  v54 = v126;
LABEL_13:
  v60 = v119;
  static UTAlertCommand.commandFor(url:)(v119);
  if ((*(v118 + 48))(v60, 1, v11) == 1)
  {
    v61 = &qword_1006B2B78;
    goto LABEL_37;
  }

  v62 = v60;
  v63 = v120;
  sub_1002BD56C(v62, v120);
  v114(v54, a1, v23);
  v64 = v111;
  sub_100007204(v63, v111, &qword_1006B2B80);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v112 = a1;
    v67 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v129 = v124;
    *v67 = 136315906;
    v68 = *v3;
    v125 = v3;
    v127[0] = v68;
    sub_10007EBC0(&qword_1006BA520);
    v69 = String.init<A>(describing:)();
    v71 = sub_100005B4C(v69, v70, &v129);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_100005B4C(0xD00000000000001BLL, 0x800000010058D500, &v129);
    *(v67 + 22) = 2080;
    v72 = URL.absoluteString.getter();
    v74 = v73;
    v122 = v23;
    v116(v54, v23);
    v75 = sub_100005B4C(v72, v74, &v129);

    *(v67 + 24) = v75;
    *(v67 + 32) = 2080;
    v76 = v108;
    sub_100007204(v64, v108, &qword_1006B2B80);
    v77 = *v76;
    v78 = v64;
    if (v77 <= 2)
    {
      if (*v76)
      {
        if (v77 == 1)
        {
          v89 = 0x8000000100578F20;
          v79 = 0xD00000000000001ALL;
        }

        else
        {
          v89 = 0xE900000000000064;
          v79 = 0x6E756F5379616C70;
        }
      }

      else
      {
        v89 = 0x8000000100578F00;
        v79 = 0xD000000000000013;
      }

      goto LABEL_35;
    }

    if (*v76 > 4u)
    {
      if (v77 == 5)
      {
        v89 = 0x8000000100578F90;
        v79 = 0xD000000000000015;
        goto LABEL_35;
      }

      v80 = "followingPlaySound";
    }

    else
    {
      v79 = 0xD00000000000001BLL;
      if (v77 != 3)
      {
        v89 = 0x8000000100578F70;
LABEL_35:
        v81 = v121;
        v90 = *(v121 + 48);
        sub_100012DF0(v78, &qword_1006B2B80);
        v91 = type metadata accessor for UUID();
        (*(*(v91 - 8) + 8))(&v76[v90], v91);
        v92 = sub_100005B4C(v79, v89, &v129);

        *(v67 + 34) = v92;
        _os_log_impl(&_mh_execute_header, v65, v66, "%s: %s, url: [%s], command - %s", v67, 0x2Au);
        swift_arrayDestroy();

        v3 = v125;
        a1 = v112;
        v23 = v122;
        goto LABEL_36;
      }

      v80 = "followingLearnMore";
    }

    v89 = (v80 - 32) | 0x8000000000000000;
    v79 = 0xD000000000000012;
    goto LABEL_35;
  }

  sub_100012DF0(v64, &qword_1006B2B80);
  v116(v54, v23);
  v81 = v121;
LABEL_36:
  v60 = v120;
  sub_1002BC5AC(*v120, &v120[*(v81 + 48)]);
  v61 = &qword_1006B2B80;
LABEL_37:
  sub_100012DF0(v60, v61);
  v93 = sub_1002BA1E8(a1, &v129);
  if (v140 >= 2u)
  {
    if (v140 == 3)
    {
      if (!(v130 | v129 | v139 | v138 | v137 | v136 | v135 | v134 | v133 | v132 | v131))
      {
        return sub_1002BBA64();
      }

      v94 = v139 | v130 | v138 | v137 | v136 | v135 | v134 | v133 | v132 | v131;
      if (v129 == 1 && !v94)
      {
        (v114)(v106, a1, v23, v93);
        type metadata accessor for FMFGetURLInfoAction();
        swift_allocObject();
        v95 = FMFGetURLInfoAction.init(url:)();

        sub_1000FB600(v95, sub_1002BAFD8, 0);
      }

      if (v129 == 2 && !v94)
      {
        return sub_1002BBA84();
      }

      if (v129 == 4 && !v94)
      {
        v96 = *(v3[2] + 56);
        v97 = v105;
LABEL_56:
        swift_storeEnumTagMultiPayload();
        v98 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        v99 = v104;
        sub_100062074(v96 + v98, v104);
        swift_beginAccess();

        sub_100058530(v97, v96 + v98);
        swift_endAccess();
        sub_100058594(v99);

        sub_10005D4E4(v99);
        return sub_10005D4E4(v97);
      }

      if (v129 == 5 && !v94)
      {
        v96 = *(v3[2] + 56);
        v97 = v105;
        goto LABEL_56;
      }
    }

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Unhandled action", v102, 2u);
    }

    return sub_1002BD53C(&v129);
  }

  sub_1002BBE38(v129, v130);
  return sub_1002BD53C(&v129);
}

double sub_1002BA1E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = type metadata accessor for URL();
  v4 = *(v109 - 8);
  v5 = __chkstk_darwin(v109);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v105 - v8;
  v115 = URL.absoluteString.getter();
  v116 = v10;
  v113 = 3092282;
  v114 = 0xE300000000000000;
  sub_100035F3C();
  v11 = StringProtocol.components<A>(separatedBy:)();

  v12 = *(v11 + 16);
  if (v12 <= 1)
  {
    if (v12 != 1)
    {
      __break(1u);
      goto LABEL_57;
    }

    v13 = 40;
    v14 = 32;
  }

  else
  {
    v13 = 56;
    v14 = 48;
  }

  v15 = *(v11 + v14);
  v16 = *(v11 + v13);

  v115 = v15;
  v116 = v16;
  v113 = 47;
  v114 = 0xE100000000000000;
  v111 = 0;
  v112 = 0xE000000000000000;
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    if (qword_1006AEBE0 == -1)
    {
LABEL_11:
      v25 = type metadata accessor for Logger();
      sub_100005B14(v25, qword_1006D4630);
      v26 = v110;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v27, v28))
      {
LABEL_19:

        v22 = 0;
        v24 = 3;
LABEL_20:
        v23 = 3;
        goto LABEL_21;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v115 = v30;
      *v29 = 136315138;
      v113 = *v26;
      sub_10007EBC0(&qword_1006BA520);
      v31 = String.init<A>(describing:)();
      v33 = sub_100005B4C(v31, v32, &v115);

      *(v29 + 4) = v33;
      v34 = "%s: URL is empty. Nothing to do.";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v27, v28, v34, v29, 0xCu);
      sub_100006060(v30);

      goto LABEL_19;
    }

LABEL_57:
    swift_once();
    goto LABEL_11;
  }

  v21._countAndFlagsBits = 0x6D6574695F646461;
  v21._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v21))
  {

    v22 = 0;
    v23 = 3;
    v24 = 2;
    goto LABEL_21;
  }

  v35._countAndFlagsBits = 25958;
  v35._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v35))
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4630);
    v37 = v110;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_19;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v115 = v30;
    *v29 = 136315138;
    v113 = *v37;
    sub_10007EBC0(&qword_1006BA520);
    v38 = String.init<A>(describing:)();
    v40 = sub_100005B4C(v38, v39, &v115);

    *(v29 + 4) = v40;
    v34 = "%s: Got url for selecting fence (unimplemented)";
    goto LABEL_18;
  }

  v42._countAndFlagsBits = 25965;
  v42._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v42))
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100005B14(v43, qword_1006D4630);
    v44 = v110;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v115 = v48;
      *v47 = 136315138;
      v113 = *v44;
      sub_10007EBC0(&qword_1006BA520);
      v49 = String.init<A>(describing:)();
      v51 = sub_100005B4C(v49, v50, &v115);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s: Got url for showing 'me'", v47, 0xCu);
      sub_100006060(v48);
    }

    v22 = 0;
    v23 = 3;
    v24 = 4;
  }

  else
  {
    v52._countAndFlagsBits = 0x646E61707845656DLL;
    v52._object = 0xEA00000000006465;
    if (String.hasPrefix(_:)(v52))
    {

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100005B14(v53, qword_1006D4630);
      v54 = v110;

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v115 = v58;
        *v57 = 136315138;
        v113 = *v54;
        sub_10007EBC0(&qword_1006BA520);
        v59 = String.init<A>(describing:)();
        v61 = sub_100005B4C(v59, v60, &v115);

        *(v57 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v55, v56, "%s: Got url for showing 'meExpanded'", v57, 0xCu);
        sub_100006060(v58);
      }

      v22 = 0;
      v23 = 3;
      v24 = 5;
    }

    else
    {
      v62._countAndFlagsBits = 0x74736575716572;
      v62._object = 0xE700000000000000;
      if (String.hasPrefix(_:)(v62) || (v63._countAndFlagsBits = 29286, v63._object = 0xE200000000000000, String.hasPrefix(_:)(v63)) || (v64._countAndFlagsBits = 0x646E65697266, v64._object = 0xE600000000000000, String.hasPrefix(_:)(v64)) || (v65._countAndFlagsBits = 0x697269537266, v65._object = 0xE600000000000000, String.hasPrefix(_:)(v65)) || (v66._countAndFlagsBits = 28518, v66._object = 0xE200000000000000, String.hasPrefix(_:)(v66)) || (v67._countAndFlagsBits = 0x7265776F6C6C6F66, v67._object = 0xE800000000000000, String.hasPrefix(_:)(v67)))
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        sub_100005B14(v68, qword_1006D4630);
        v69 = v4;
        v70 = *(v4 + 16);
        v71 = v109;
        v70(v9, a1, v109);
        v72 = v110;

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v107 = v74;
          v76 = v75;
          v108 = swift_slowAlloc();
          v115 = v108;
          *v76 = 136315394;
          v113 = *v72;
          sub_10007EBC0(&qword_1006BA520);
          v77 = String.init<A>(describing:)();
          v106 = v73;
          v79 = sub_100005B4C(v77, v78, &v115);

          *(v76 + 4) = v79;
          *(v76 + 12) = 2080;
          v80 = URL.absoluteString.getter();
          v82 = v81;
          (*(v69 + 8))(v9, v71);
          v83 = sub_100005B4C(v80, v82, &v115);

          *(v76 + 14) = v83;
          v84 = v106;
          _os_log_impl(&_mh_execute_header, v106, v107, "%s: parsing url for friend - %s", v76, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v69 + 8))(v9, v71);
        }

        v115 = v15;
        v116 = v16;
        v85 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

        if (*(v85 + 16) < 2uLL)
        {

          v24 = 0;
          v22 = 0;
        }

        else
        {

          v86 = static String._fromSubstring(_:)();
          v88 = v87;

          sub_1002BB3BC(v86, v88);
          v24 = v89;
          v22 = v90;

          if (v22)
          {
            v23 = 1;
            goto LABEL_21;
          }

          v24 = 0;
        }

        goto LABEL_20;
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100005B14(v91, qword_1006D4630);
      v92 = a1;
      v93 = v109;
      (*(v4 + 16))(v7, v92, v109);
      v94 = v110;

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v97 = 136315394;
        v113 = *v94;
        sub_10007EBC0(&qword_1006BA520);
        v98 = String.init<A>(describing:)();
        v100 = sub_100005B4C(v98, v99, &v115);

        *(v97 + 4) = v100;
        *(v97 + 12) = 2080;
        v101 = URL.absoluteString.getter();
        v103 = v102;
        (*(v4 + 8))(v7, v93);
        v104 = sub_100005B4C(v101, v103, &v115);

        *(v97 + 14) = v104;
        _os_log_impl(&_mh_execute_header, v95, v96, "%s: Will call server for unhandled url - %s", v97, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v4 + 8))(v7, v93);
      }

      v22 = 0;
      v23 = 3;
      v24 = 1;
    }
  }

LABEL_21:
  *a2 = v24;
  *(a2 + 8) = v22;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = v23;
  return result;
}

void sub_1002BAFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFActionStatus();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  if (a2)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = a2;
      v32 = v14;
      *v13 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v15 = String.init<A>(describing:)();
      v17 = sub_100005B4C(v15, v16, &v32);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v30, v12, "Error getting info for URL. Error - %s", v13, 0xCu);
      sub_100006060(v14);
    }

    else
    {
      v28 = v30;
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = *(v5 + 16);
    v19(v10, a1, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      v19(v8, v10, v4);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      (*(v5 + 8))(v10, v4);
      v27 = sub_100005B4C(v24, v26, &v32);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Action succeeded with status - %s. URL handler will be called.", v22, 0xCu);
      sub_100006060(v23);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

void sub_1002BB3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0050);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &countAndFlagsBits - v9;
  __chkstk_darwin(v8);
  v12 = &countAndFlagsBits - v11;
  v67 = a1;
  v68 = a2;
  sub_100035F3C();
  v13 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v57 = *(v13 + 16);
  if (v57)
  {
    v61 = v7;
    v62 = v10;
    v14 = 0;
    v54 = v13 + 32;
    v15 = v13 + 56;
    v58 = v13;
    while (v14 < *(v13 + 16))
    {

      v16 = static String._fromSubstring(_:)();
      v18 = v17;

      sub_1000BD300(v16, v18, v12);

      v19 = type metadata accessor for FMFFriend();
      v20 = *(v19 - 8);
      v65 = *(v20 + 48);
      v66 = v19;
      v64 = v20 + 48;
      if (v65(v12, 1) != 1)
      {
        sub_100012DF0(v12, &qword_1006B0050);

        return;
      }

      ++v14;
      sub_100012DF0(v12, &qword_1006B0050);
      v15 += 32;
      v13 = v58;
      if (v57 == v14)
      {
        v21 = type metadata accessor for FMContactsUtilities();
        countAndFlagsBits = 0;
        v53 = v21;
        v22 = v58;
        object = 0;
        v24 = 0;
        while (1)
        {
          if (v24 >= *(v22 + 16))
          {
            goto LABEL_46;
          }

          v25 = static String._fromSubstring(_:)();
          v27 = v26;

          v28 = sub_1004769D8(v25, v27, 0, 0, 0, 0, 0);

          v59 = v28;
          v29 = [v28 phoneNumbers];
          v30 = sub_10007EBC0(&unk_1006BC970);
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = object;
          v55 = v24;
          v56 = v30;
          if (v31 >> 62)
          {
            v32 = _CocoaArrayWrapper.endIndex.getter();
            if (v32)
            {
LABEL_12:
              v33 = 0;
              v63 = v31 & 0xC000000000000001;
              while (1)
              {
                if (v63)
                {
                  v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_42;
                  }

                  v34 = *(v31 + 8 * v33 + 32);
                }

                v35 = v34;
                v36 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  break;
                }

                v37 = [v34 value];
                v38 = [v37 stringValue];

                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v41 = v40;

                v42 = v62;
                sub_1000BD300(v39, v41, v62);

                if ((v65)(v42, 1, v66) != 1)
                {

                  sub_100012DF0(v42, &qword_1006B0050);
                  countAndFlagsBits = v39;
                  goto LABEL_24;
                }

                sub_100012DF0(v42, &qword_1006B0050);
                ++v33;
                if (v36 == v32)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }
          }

          else
          {
            v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v32)
            {
              goto LABEL_12;
            }
          }

LABEL_23:

          v41 = v60;
LABEL_24:
          v43 = [v59 emailAddresses];
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = v41;
          if (v44 >> 62)
          {
            v45 = _CocoaArrayWrapper.endIndex.getter();
            if (v45)
            {
LABEL_26:
              v46 = 0;
              v63 = v44 & 0xC000000000000001;
              while (1)
              {
                if (v63)
                {
                  v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_44;
                  }

                  v47 = *(v44 + 8 * v46 + 32);
                }

                v48 = v47;
                v49 = v46 + 1;
                if (__OFADD__(v46, 1))
                {
                  break;
                }

                v50 = String.init(_:)([v47 value]);
                object = v50._object;

                v51 = v61;
                sub_1000BD300(v50._countAndFlagsBits, v50._object, v61);

                if ((v65)(v51, 1, v66) != 1)
                {

                  sub_100012DF0(v51, &qword_1006B0050);
                  countAndFlagsBits = v50._countAndFlagsBits;
                  goto LABEL_8;
                }

                sub_100012DF0(v51, &qword_1006B0050);
                ++v46;
                if (v49 == v45)
                {
                  goto LABEL_7;
                }
              }

LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }
          }

          else
          {
            v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v45)
            {
              goto LABEL_26;
            }
          }

LABEL_7:

          object = v60;
LABEL_8:
          v24 = v55 + 1;
          v22 = v58;
          if (v55 + 1 == v57)
          {
            goto LABEL_40;
          }
        }
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_40:
  }
}

uint64_t sub_1002BBAA4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E90();
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1002BBD04(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = *(*(a1 + 16) + 56);
  swift_storeEnumTagMultiPayload();
  v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v8 + v9, v5);
  swift_beginAccess();

  sub_100058530(v7, v8 + v9);
  swift_endAccess();
  sub_100058594(v5);

  sub_10005D4E4(v5);
  return sub_10005D4E4(v7);
}

uint64_t sub_1002BBE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v53 = a1;
  v4 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v52 = type metadata accessor for FMFFriend();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMSelectedSection();
  v10 = __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  v18 = *(*(v3 + 16) + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v18 + v19, v17);
  LODWORD(v18) = swift_getEnumCaseMultiPayload();
  sub_10005D4E4(v17);
  if (v18 == 2)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMURLHandler: ignoring currentSelection", v23, 2u);
    }
  }

  else
  {
    v24 = *(*(v3 + 16) + 56);
    swift_storeEnumTagMultiPayload();
    v25 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v24 + v25, v12);
    swift_beginAccess();

    sub_100058530(v15, v24 + v25);
    swift_endAccess();
    sub_100058594(v12);

    sub_10005D4E4(v12);
    sub_10005D4E4(v15);
  }

  v26 = v51;
  sub_1000BD300(v53, v51, v6);

  v27 = v52;
  if ((*(v7 + 48))(v6, 1, v52) == 1)
  {
    sub_100012DF0(v6, &qword_1006B0050);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100005B14(v28, qword_1006D4630);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v26;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100005B4C(v53, v31, v54);
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not find friend with id or handle - %s", v32, 0xCu);
      sub_100006060(v33);
    }

    v34 = *(*(v3 + 16) + 56);
    swift_storeEnumTagMultiPayload();
    v35 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v34 + v35, v12);
    swift_beginAccess();

    sub_100058530(v15, v34 + v35);
    swift_endAccess();
    sub_100058594(v12);

    sub_10005D4E4(v12);
    return sub_10005D4E4(v15);
  }

  else
  {
    (*(v7 + 32))(v50, v6, v27);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = v26;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v3;
      v43 = v42;
      v54[0] = v42;
      *v41 = 136315138;
      v44 = v40;
      v27 = v52;
      *(v41 + 4) = sub_100005B4C(v53, v44, v54);
      _os_log_impl(&_mh_execute_header, v38, v39, "Found friend with id or handle - %s", v41, 0xCu);
      sub_100006060(v43);
      v3 = v49;
    }

    v45 = *(*(v3 + 16) + 56);
    v46 = v50;
    (*(v7 + 16))(v15, v50, v27);
    swift_storeEnumTagMultiPayload();
    v47 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v45 + v47, v12);
    swift_beginAccess();

    sub_100058530(v15, v45 + v47);
    swift_endAccess();
    sub_100058594(v12);

    sub_10005D4E4(v12);
    sub_10005D4E4(v15);
    return (*(v7 + 8))(v46, v27);
  }
}

uint64_t sub_1002BC5AC(char a1, uint64_t a2)
{
  v3 = v2;
  v29 = type metadata accessor for UUID();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v29);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v28 = sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v27 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    v30 = a1;
    v13 = String.init<A>(describing:)();
    v15 = sub_100005B4C(v13, v14, &v31);
    v16 = a1;
    v17 = v15;
    v18 = v16;

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMediator: showUTAlert for command %s", v11, 0xCu);
    sub_100006060(v12);

    v3 = v27;
  }

  else
  {

    v18 = a1;
  }

  v19 = v29;
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v29);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  (*(v6 + 32))(v21 + v20, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  *(v21 + v20 + v7) = v18;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    _os_log_impl(&_mh_execute_header, v22, v23, "FMDeviceProvider: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v24, 8u);
  }

  FMIPManager.refreshUnknownBeacons(completion:)();
}

uint64_t sub_1002BC8E8(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100003E90();
  v20 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  (*(v12 + 32))(v15 + v14, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v15 + v14 + v13) = v21;
  aBlock[4] = sub_1002BD44C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633D38;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v7, v5);
  return (*(v22 + 8))(v10, v23);
}

void sub_1002BCC48(uint64_t a1, uint64_t a2, int a3)
{
  v48 = a3;
  v5 = type metadata accessor for UUID();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v8 - 8);
  v44 = &v43 - v9;
  v47 = type metadata accessor for FMSelectedSection();
  v10 = __chkstk_darwin(v47);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for FMIPUnknownItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  v19 = FMIPManager.unknownItems.getter();
  v50 = a2;
  v20 = sub_100104884(sub_10017014C, v49, v19);
  if (!*(v20 + 16))
  {
    v26 = v7;
    v27 = v45;
    v28 = v46;

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    (*(v27 + 16))(v26, a2, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51[0] = v33;
      *v32 = 136315138;
      v34 = UUID.uuidString.getter();
      v36 = v35;
      (*(v27 + 8))(v26, v28);
      v37 = sub_100005B4C(v34, v36, v51);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMMediator: Could not find unknown item with identifier - %s", v32, 0xCu);
      sub_100006060(v33);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    return;
  }

  v21 = *(v16 + 16);
  v21(v18, v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

  v22 = a1;
  v23 = *(*(a1 + 16) + 56);
  v21(v14, v18, v15);
  swift_storeEnumTagMultiPayload();
  v24 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v23 + v24, v12);
  swift_beginAccess();

  sub_100058530(v14, v23 + v24);
  swift_endAccess();
  sub_100058594(v12);

  sub_10005D4E4(v12);
  sub_10005D4E4(v14);
  if (v48 > 2u)
  {
    if (v48 > 4u)
    {
      if (v48 != 5)
      {
        v25 = "followingPlaySound";
LABEL_16:
        if (0x8000000100578FB0 == ((v25 - 32) | 0x8000000000000000))
        {

          (*(v16 + 8))(v18, v15);
          goto LABEL_18;
        }
      }
    }

    else if (v48 == 3)
    {
      v25 = "followingLearnMore";
      goto LABEL_16;
    }
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v16 + 8))(v18, v15);
  if (v38)
  {
LABEL_18:
    v39 = *(*(v22 + 16) + 56);
    v40 = type metadata accessor for FMSelectionPendingAction(0);
    v41 = v44;
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
    v42 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();

    sub_10008EC74(v41, v39 + v42);
    swift_endAccess();
  }
}

uint64_t sub_1002BD334()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002BD384()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1002BD464(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));

  return a1(v3, v4, v5);
}

uint64_t sub_1002BD56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B2B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BD5DC(uint64_t a1)
{
  if ((*(a1 + 88) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 88) & 3;
  }
}

__n128 sub_1002BD5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002BD61C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002BD664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002BD6C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 88) = a2;
  return result;
}

id sub_1002BD738()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMapOptionView: map settings button pressed", v11, 2u);
  }

  v12 = *&v0[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mediator];
  v13 = *(v12 + 56);
  v14 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v13 + v14, v7);
  swift_storeEnumTagMultiPayload();
  v15 = sub_10005F7D0(v7, v5);
  sub_10005D4E4(v5);
  sub_10005D4E4(v7);
  if (v15)
  {
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v1;
      v37[0] = v35;
      *v19 = 136315138;
      v38 = 0;
      v39 = 0xE000000000000000;
      v20 = *(v12 + 56);
      v21 = v15;
      v22 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      v23 = v20 + v22;
      v15 = v21;
      sub_100062074(v23, v7);
      _print_unlocked<A, B>(_:_:)();
      sub_10005D4E4(v7);
      v24 = sub_100005B4C(v38, v39, v37);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMMapOptionView: Going to previous selection: %s", v19, 0xCu);
      sub_100006060(v35);
      v1 = v36;
    }

    v25 = *(v12 + 56);
    v26 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100062074(v25 + v26, v7);
    v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v25 + v27, v5);
    swift_beginAccess();

    sub_100058530(v7, v25 + v27);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMMapOptionView: Showing map options", v30, 2u);
    }

    v31 = *(v12 + 56);
    swift_storeEnumTagMultiPayload();
    v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v31 + v32, v5);
    swift_beginAccess();

    sub_100058530(v7, v31 + v32);
  }

  swift_endAccess();
  sub_100058594(v5);

  sub_10005D4E4(v5);
  sub_10005D4E4(v7);
  return [*&v1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton] setSelected:(v15 & 1) == 0];
}

uint64_t sub_1002BDC9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = v11;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMMapOptionView: Update map selection", v15, 2u);
    v11 = v22;
  }

  *&v2[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapType] = a1;
  sub_10000905C(0, &qword_1006AEDC0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_1002BE33C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633FB8;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A0C0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

id sub_1002BE064(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapType];
  v3 = [a1 window];
  if (v3)
  {
    v4 = (v2 - 1) < 4;
    v5 = v3;
    [v3 setOverrideUserInterfaceStyle:2 * v4];
  }

  v6 = *&a1[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton];

  return [v6 setNeedsUpdateConfiguration];
}

id sub_1002BE198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMapOptionsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002BE2E0()
{
  result = qword_1006BA5F0;
  if (!qword_1006BA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BA5F0);
  }

  return result;
}

uint64_t sub_1002BE344()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002BE394(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B6D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002BE3FC()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_platterContainer;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatter;
  type metadata accessor for FMMapOptionsView.FMPlatterViewTransparent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v2) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatterSeparatorView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_secondPlatter;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_currentPerspectiveButtonState) = 2;
  v6 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton;
  *(v0 + v6) = [objc_allocWithZone(UIButton) init];
  v7 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspectiveButtonContainer;
  *(v0 + v7) = [objc_allocWithZone(UIStackView) init];
  v8 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective2dButton;
  *(v0 + v8) = [objc_allocWithZone(UIButton) init];
  v9 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective3dButton;
  *(v0 + v9) = [objc_allocWithZone(UIButton) init];
  v10 = (v0 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_selectionSubscription);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_locationSubscription);
  *v11 = 0;
  v11[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002BE590()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_currentPerspectiveButtonState);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 == 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMMapOptionView: perspective button pressed - shouldEnable3D: %{BOOL}d", v6, 8u);
  }

  return (*(v1 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_set3DPerspectiveEnabled))(v2 == 0);
}

void sub_1002BE6D8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v11._object = 0x8000000100579A00;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x800000010058D7A0;
  v3.value._object = 0x80000001005799E0;
  v11._countAndFlagsBits = 0xD000000000000018;
  v3.value._countAndFlagsBits = 0xD000000000000013;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v11);

  v6 = [v0 mainBundle];
  v12._object = 0x8000000100579A00;
  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = 0x800000010058D7C0;
  v8.value._object = 0x80000001005799E0;
  v12._countAndFlagsBits = 0xD000000000000018;
  v8.value._countAndFlagsBits = 0xD000000000000013;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v12);

  xmmword_1006D4450 = v5;
  xmmword_1006D4460 = v10;
}

uint64_t sub_1002BE810(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
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

id sub_1002BE8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_headerView;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for FMAddItemFlowHeaderView()) init];
  v11 = [objc_allocWithZone(UIImageView) init];
  objc_allocWithZone(type metadata accessor for FMAVPlayerView());
  v12 = v11;
  v13 = sub_1002E7064(v11, 0.25);
  *&v5[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_videoPlayerView] = v13;
  v14 = &v5[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_configuration];
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 2) = a3;
  *(v14 + 3) = a4;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for FMAccessoryDiscoveryListHeaderView();
  v15 = v13;
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002BEA5C();
  sub_1002BEDAC();

  return v16;
}

id sub_1002BEA5C()
{
  [v0 setLayoutMargins:{0.0, 0.0, 24.0, 0.0}];
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_videoPlayerView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_headerView];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v7];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v9];

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_1002BEBDC();
}

id sub_1002BEBDC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_headerView];
  v3 = *(v2 + OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_headerLabel);

  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  v5 = *(v2 + OBJC_IVAR____TtC6FindMy23FMAddItemFlowHeaderView_subheaderLabel);

  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  v7 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_videoPlayerView];
  v8 = [objc_opt_self() mainBundle];
  v9 = *(v7 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle);
  *(v7 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle) = v8;

  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceStyle];

  v12 = "PairingLoopDark-HAWKEYE";
  v13 = 0xD000000000000017;
  if (v11 == 1)
  {
    v13 = 0xD000000000000018;
  }

  else
  {
    v12 = "SCOVERY_CARD_SUBTITLE";
  }

  v14 = (v7 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName);
  *v14 = v13;
  v14[1] = v12 | 0x8000000000000000;

  sub_1002E76F0();
  sub_1002EA324();
  [v1 setNeedsLayout];

  return [v1 setNeedsUpdateConstraints];
}

void sub_1002BEDAC()
{
  v43 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100555120;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_videoPlayerView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5];
  *(v1 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v0 layoutMarginsGuide];
  v9 = [v8 trailingAnchor];

  v10 = [v7 constraintLessThanOrEqualToAnchor:v9];
  *(v1 + 40) = v10;
  v11 = [v2 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v1 + 48) = v13;
  v14 = [v2 topAnchor];
  v15 = [v0 layoutMarginsGuide];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v1 + 56) = v17;
  v18 = [v2 heightAnchor];
  v19 = [v2 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:0.75];

  *(v1 + 64) = v20;
  v21 = [v2 widthAnchor];
  v22 = [v21 constraintGreaterThanOrEqualToConstant:320.0];

  *(v1 + 72) = v22;
  v23 = [v2 heightAnchor];
  v24 = [v23 constraintLessThanOrEqualToConstant:240.0];

  *(v1 + 80) = v24;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1005521F0;
  v27 = *&v0[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_headerView];
  v28 = [v27 topAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  *(v26 + 32) = v30;
  v31 = [v27 leadingAnchor];
  v32 = [v0 layoutMarginsGuide];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v26 + 40) = v34;
  v35 = [v27 trailingAnchor];
  v36 = [v0 layoutMarginsGuide];
  v37 = [v36 trailingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(v26 + 48) = v38;
  v39 = [v27 bottomAnchor];
  v40 = [v0 layoutMarginsGuide];
  v41 = [v40 bottomAnchor];

  v42 = [v39 constraintEqualToAnchor:v41];
  *(v26 + 56) = v42;
  v44 = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:v44];
}

void sub_1002BF374(uint64_t a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for FMAccessoryDiscoveryListHeaderView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v4 = *&v1[OBJC_IVAR____TtC6FindMy34FMAccessoryDiscoveryListHeaderView_videoPlayerView];
  v5 = [v2 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = "PairingLoopDark-HAWKEYE";
  v8 = 0xD000000000000017;
  if (v6 == 1)
  {
    v8 = 0xD000000000000018;
  }

  else
  {
    v7 = "SCOVERY_CARD_SUBTITLE";
  }

  v9 = (v4 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName);
  *v9 = v8;
  v9[1] = v7 | 0x8000000000000000;

  sub_1002E76F0();
}

id sub_1002BF4EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDiscoveryListHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002BF5C0(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  v2 = [objc_opt_self() mainBundle];
  v3 = "ITEM_REPLACE_BATTERY_TITLE";
  v4 = "ITEM_DISABLE_LEARN_MORE_TITLE";
  if (v1 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = "";
    v5 = 0xD00000000000001DLL;
  }

  if (v1)
  {
    v3 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  v7.value._countAndFlagsBits = 0xD000000000000010;
  v12._countAndFlagsBits = 0xD000000000000015;
  v12._object = 0x8000000100582000;
  v8 = v3 | 0x8000000000000000;
  v7.value._object = 0x8000000100581FE0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, v7, v2, v9, v12)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002BF6B0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      _StringGuts.grow(_:)(37);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3 = [objc_opt_self() mainBundle];
      v4.value._countAndFlagsBits = 0xD000000000000010;
      v18._object = 0x8000000100582000;
      v4.value._object = 0x8000000100581FE0;
      v5._countAndFlagsBits = 0xD000000000000023;
      v5._object = 0x800000010058D9A0;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0xD000000000000015;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v18)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v9 = [objc_opt_self() mainBundle];
    v10 = 0xD000000000000010;
    v17 = 0x8000000100582000;
    v13 = 0xD00000000000001ALL;
    v11 = 0x800000010058DA80;
    v12 = 0x8000000100581FE0;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = 0xD000000000000010;
    v17 = 0x8000000100582000;
    v11 = 0x800000010058DAA0;
    v12 = 0x8000000100581FE0;
    v13 = 0xD000000000000015;
  }

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = 0xD000000000000015;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, *&v10, v9, v14, *(&v17 - 1))._countAndFlagsBits;

  return v16;
}

uint64_t sub_1002BF8F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      _StringGuts.grow(_:)(40);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3 = [objc_opt_self() mainBundle];
      v18._object = 0x8000000100582000;
      v4.value._object = 0x8000000100581FE0;
      v18._countAndFlagsBits = 0xD000000000000015;
      v5._countAndFlagsBits = 0xD000000000000026;
      v5._object = 0x800000010058D970;
      v4.value._countAndFlagsBits = 0xD000000000000010;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v18)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v9 = "LOW_BATTERY_TRACKING";
    v10 = [objc_opt_self() mainBundle];
    v17 = 0x8000000100582000;
    v11 = 0xD00000000000001DLL;
  }

  else
  {
    v9 = "ITEM_LEARN_MORE_VIEW_SUBTITLE";
    v10 = [objc_opt_self() mainBundle];
    v17 = 0x8000000100582000;
    v11 = 0xD000000000000018;
  }

  v12 = v9 | 0x8000000000000000;
  v13.value._object = 0x8000000100581FE0;
  v14 = 0xD000000000000015;
  v13.value._countAndFlagsBits = 0xD000000000000010;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, v13, v10, v15, *(&v17 - 1))._countAndFlagsBits;

  return v16;
}

uint64_t sub_1002BFB40(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if (a1)
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }

    else
    {
      v2 = String._bridgeToObjectiveC()();
      result = MGGetSInt32Answer();
      if ((result & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v3 = result;
        v4 = SBSIsSystemApertureAvailable();

        if (v4)
        {
          v5 = 10;
        }

        else
        {
          v5 = 8;
        }

        if (v3 == 2)
        {
          return v5;
        }

        else
        {
          return 9;
        }
      }
    }
  }

  else if (a1)
  {
    return 5;
  }

  else
  {
    return 4;
  }

  return result;
}

void sub_1002BFBF8(char a1)
{
  if ((a1 & 0xC0) == 0x40)
  {
    if (qword_1006AEC30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1006AEC30 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = [objc_opt_self() mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10.origin.x = v3;
  v10.origin.y = v5;
  v10.size.width = v7;
  v10.size.height = v9;
  CGRectGetHeight(v10);
}

id sub_1002BFD8C(char a1)
{
  v1 = a1 & 0xC0;
  v2 = objc_opt_self();
  if (v1 == 64)
  {
    v3 = [v2 preferredFontForTextStyle:UIFontTextStyleHeadline];

    return v3;
  }

  else
  {
    v5 = [v2 preferredFontForTextStyle:UIFontTextStyleTitle1];
    sub_10007EBC0(&qword_1006BA720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightBold;
    v7 = UIFontWeightTrait;
    v8 = sub_10002AB84(inited);
    swift_setDeallocating();
    sub_100012DF0(inited + 32, &qword_1006B47A0);
    v9 = sub_10002ACDC(v8);

    return v9;
  }
}

_BYTE *sub_1002BFEC8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_titleLabel;
  *&v2[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_subtitleLabel;
  *&v2[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollView;
  *&v2[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollContentView;
  *&v2[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionButton;
  *&v2[v11] = [objc_opt_self() buttonWithType:1];
  v12 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionBackground;
  *&v2[v12] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v2[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_doneButton] = 0;
  v13 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_footnoteLabel;
  *&v2[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_playerView;
  v15 = [objc_allocWithZone(UIView) init];
  v16 = objc_allocWithZone(type metadata accessor for FMAVPlayerView());
  *&v3[v14] = sub_1002E7064(v15, 0.25);
  *&v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_videoTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_bottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_index] = 1;
  v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating] = 0;
  v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_shouldAnimate] = 1;
  v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_configuration] = a2;
  *&v3[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_mediator] = a1;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();

  v17 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  LOBYTE(v15) = v17[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_configuration];
  v18 = v17;
  sub_1002BF5C0(v15);
  v19 = String._bridgeToObjectiveC()();

  [v18 setTitle:{v19, v21.receiver, v21.super_class}];

  sub_1002C0178();
  sub_1002C0FD8();

  return v18;
}

void sub_1002C0178()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"doneAction"];
  v3 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_doneButton;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_doneButton];
  *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_doneButton] = v2;

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 systemBackgroundColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  v10 = *&v1[v3];
  [v9 setRightBarButtonItem:v10];

  v11 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_titleLabel];
  [v11 setAdjustsFontForContentSizeCategory:1];
  v12 = v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_configuration];
  v13 = sub_1002BFD8C(v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_configuration]);
  [v11 setFont:v13];

  [v11 setNumberOfLines:0];
  v14 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_index;
  sub_1002BF6B0(*&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_index], v12);
  v15 = String._bridgeToObjectiveC()();

  [v11 setText:v15];

  v16 = [v7 labelColor];
  [v11 setTextColor:v16];

  [v11 setTextAlignment:1];
  v17 = [v7 systemBackgroundColor];
  [v11 setBackgroundColor:v17];

  v18 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_subtitleLabel];
  [v18 setAdjustsFontForContentSizeCategory:1];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontForTextStyle:UIFontTextStyleBody];
  [v18 setFont:v20];

  [v18 setNumberOfLines:0];
  v103 = v12;
  sub_1002BF8F8(*&v1[v14], v12);
  v21 = String._bridgeToObjectiveC()();

  [v18 setText:v21];

  v22 = [v7 labelColor];
  [v18 setTextColor:v22];

  v101 = v18;
  [v18 setTextAlignment:1];
  v23 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_footnoteLabel;
  v24 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_footnoteLabel];
  v102 = v7;
  v25 = [v7 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = *&v1[v23];
  v27 = [v19 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v26 setFont:v27];

  [*&v1[v23] setNumberOfLines:0];
  [*&v1[v23] setTextAlignment:1];
  v104 = v23;
  [*&v1[v23] setAdjustsFontForContentSizeCategory:1];
  v28 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionButton];
  v29 = [v28 titleLabel];
  if (v29)
  {
    v30 = v29;
    v31 = [v19 preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v30 setFont:v31];
  }

  v32 = objc_opt_self();
  v33 = [v32 mainBundle];
  v34.value._countAndFlagsBits = 0xD000000000000010;
  v108._object = 0x8000000100582000;
  v35._countAndFlagsBits = 0xD000000000000023;
  v35._object = 0x800000010058D9D0;
  v34.value._object = 0x8000000100581FE0;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v108._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v108);

  v37 = String._bridgeToObjectiveC()();

  [v28 setTitle:v37 forState:0];

  v98 = v28;
  [v28 addTarget:v1 action:"actionTriggered" forControlEvents:64];
  v38 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionBackground];
  v39 = [objc_opt_self() effectWithStyle:1100];
  v99 = v38;
  [v38 setEffect:v39];

  v40 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_playerView];
  v41 = v12;
  if (v12 < 0)
  {
    [v40 setContentMode:2];
    v105.receiver = v40;
    v105.super_class = type metadata accessor for FMAVPlayerView();
    v42 = objc_msgSendSuper2(&v105, "layer");
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
      goto LABEL_10;
    }

    v44 = &AVLayerVideoGravityResizeAspect;
  }

  else
  {
    [v40 setContentMode:1];
    v107.receiver = v40;
    v107.super_class = type metadata accessor for FMAVPlayerView();
    v42 = objc_msgSendSuper2(&v107, "layer");
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
      goto LABEL_10;
    }

    v44 = &AVLayerVideoGravityResizeAspectFill;
  }

  [v43 setVideoGravity:*v44];
LABEL_10:

  [v40 setAlpha:0.0];
  v45 = [v7 systemBackgroundColor];
  [v40 setBackgroundColor:v45];

  v46 = sub_1002BFB40(v12);
  v47 = FMB389VideoAsset.rawValue.getter(v46);
  v48 = &v40[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName];
  *v48 = v47;
  v48[1] = v49;

  sub_1002E76F0();
  if (v103 < 0)
  {
    v50 = [v32 mainBundle];
  }

  else
  {
    v50 = 0;
  }

  v100 = v32;
  v51 = *&v40[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle];
  *&v40[OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetBundle] = v50;

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100005B14(v52, qword_1006D4630);
  v53 = v1;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v106[0] = v57;
    *v56 = 136315138;
    if (v48[1])
    {
      v58 = *v48;
      v59 = v48[1];
    }

    else
    {
      v59 = 0xE600000000000000;
      v58 = 0x21454E4F4E21;
    }

    v60 = sub_100005B4C(v58, v59, v106);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "FMAirTagEducationalVideoViewController: assetName=%s", v56, 0xCu);
    sub_100006060(v57);

    v41 = v103;
  }

  else
  {
  }

  v61 = *&v53[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollContentView];
  [v61 addSubview:v40];
  v62 = *&v53[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollView];
  [v62 setDelegate:v53];
  [v61 addSubview:v101];
  [v61 addSubview:v11];
  [v62 addSubview:v61];
  v63 = [v53 view];
  if (!v63)
  {
    goto LABEL_35;
  }

  v64 = v63;
  [v63 addSubview:v62];

  if ((v41 & 0xFFFFFFC0) != 0x40)
  {
    v77 = [objc_allocWithZone(NSTextAttachment) init];
    sub_10007EBC0(&unk_1006BA700);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552220;
    *(inited + 32) = NSForegroundColorAttributeName;
    v79 = NSForegroundColorAttributeName;
    *(inited + 40) = [v102 systemRedColor];
    v80 = sub_1001532F8(inited);
    swift_setDeallocating();
    sub_100012DF0(inited + 32, &qword_1006B1AB0);
    v81 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2];
    v82 = String._bridgeToObjectiveC()();
    v83 = [objc_opt_self() systemImageNamed:v82 withConfiguration:v81];

    if (v83)
    {
      v84 = [v83 imageWithRenderingMode:2];
    }

    else
    {
      v84 = 0;
    }

    [v77 setImage:v84];

    v85 = [v100 mainBundle];
    v86.value._countAndFlagsBits = 0xD000000000000010;
    v110._object = 0x8000000100582000;
    v87._object = 0x800000010058DA00;
    v86.value._object = 0x8000000100581FE0;
    v87._countAndFlagsBits = 0xD000000000000015;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v110._countAndFlagsBits = 0xD000000000000015;
    v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v86, v85, v88, v110);

    v106[0] = 32;
    v106[1] = 0xE100000000000000;
    String.append(_:)(v89);

    v90 = objc_allocWithZone(NSAttributedString);
    v91 = String._bridgeToObjectiveC()();

    v92 = [v90 initWithString:v91];

    sub_10000905C(0, &unk_1006BA710);
    v93 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v77];
    sub_1000F0900(v80);
    type metadata accessor for Key(0);
    sub_10000A270(&qword_1006AF370, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v93 addAttributes:isa range:{0, 1}];

    [v93 appendAttributedString:v92];
    [*&v1[v104] setAttributedText:v93];
    v95 = [v53 view];
    if (v95)
    {
      v96 = v95;
      [v95 addSubview:v99];

      v97 = [v53 view];
      if (v97)
      {
        v76 = v97;

        [v76 addSubview:*&v1[v104]];

        goto LABEL_33;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v65 = *&v1[v104];
  v66 = [v100 mainBundle];
  v67._countAndFlagsBits = 0xD000000000000014;
  v68.value._countAndFlagsBits = 0xD000000000000010;
  v109._object = 0x8000000100582000;
  v67._object = 0x800000010058DA20;
  v68.value._object = 0x8000000100581FE0;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  v109._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v66, v69, v109);

  v70 = String._bridgeToObjectiveC()();

  [v65 setText:v70];

  v71 = [v53 view];
  if (!v71)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v72 = v71;
  [v71 addSubview:v99];

  v73 = [v53 view];
  if (!v73)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v74 = v73;
  [v73 addSubview:*&v1[v104]];

  v75 = [v53 view];
  if (v75)
  {
    v76 = v75;
    [v75 addSubview:v98];
LABEL_33:

    return;
  }

LABEL_40:
  __break(1u);
}

void sub_1002C0FD8()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionBackground];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v203 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_titleLabel];
  [v203 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_subtitleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollContentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v206 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_footnoteLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_footnoteLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v198 = v2;
  v201 = v1;
  v6 = *&qword_1006D4798;
  v7 = [v5 heightAnchor];
  v8 = [v7 constraintGreaterThanOrEqualToConstant:480.0];

  LOBYTE(v7) = v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_configuration];
  sub_1002BFBF8(v7);
  v10 = v9;
  v204 = v7 & 0xC0;
  if (v204 == 64)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 60.0;
  }

  [v8 constant];
  v13 = v12;
  v205 = v3;
  v14 = [v3 bottomAnchor];
  v207 = v5;
  v15 = [v5 bottomAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-v6];

  v17 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_heightConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_heightConstraint] = v8;
  v18 = v8;

  v19 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_bottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_bottomConstraint] = v16;
  v202 = v16;

  sub_10007EBC0(&qword_1006AFC30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005521F0;
  v21 = [v4 topAnchor];
  v22 = [v0 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_32;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v20 + 32) = v25;
  v26 = [v4 bottomAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v20 + 40) = v30;
  v31 = [v4 leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 leadingAnchor];
  v36 = [v31 constraintEqualToAnchor:v35];

  *(v20 + 48) = v36;
  v37 = [v4 trailingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = v38;
  v208 = objc_opt_self();
  v40 = [v39 safeAreaLayoutGuide];

  v41 = [v40 trailingAnchor];
  v42 = [v37 constraintEqualToAnchor:v41];

  *(v20 + 56) = v42;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:isa];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100552F00;
  v45 = [v207 topAnchor];
  v46 = [v4 topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v44 + 32) = v47;
  v48 = [v207 bottomAnchor];
  v49 = [v4 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = [v207 leadingAnchor];
  v52 = [v4 safeAreaLayoutGuide];
  v53 = [v52 leadingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53];
  *(v44 + 48) = v54;
  v55 = [v207 trailingAnchor];
  v56 = [v4 safeAreaLayoutGuide];
  v57 = [v56 trailingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *(v44 + 56) = v58;
  *(v44 + 64) = v18;
  v200 = v18;
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:v59];

  v60 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_playerView];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = [v60 topAnchor];
  v62 = [v207 safeAreaLayoutGuide];
  v63 = [v62 topAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:v13 * 0.4 + v10 * -0.5 - v11];
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1005521F0;
  v66 = [v60 leadingAnchor];
  v67 = [v207 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v65 + 32) = v68;
  v69 = [v60 trailingAnchor];
  v70 = [v207 trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v65 + 40) = v71;
  v72 = [v60 heightAnchor];
  v73 = [v72 constraintEqualToConstant:v10];

  *(v65 + 48) = v73;
  *(v65 + 56) = v64;
  v74 = v64;
  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:v75];

  v76 = *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_videoTopConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_videoTopConstraint] = v74;
  v199 = v74;

  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1005528C0;
  v78 = [v203 topAnchor];
  v79 = [v60 bottomAnchor];
  v80 = [objc_opt_self() mainScreen];
  [v80 nativeBounds];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;

  v210.origin.x = v82;
  v210.origin.y = v84;
  v210.size.width = v86;
  v210.size.height = v88;
  v89 = CGRectGetHeight(v210) > 1136.0;
  v90 = 32.0;
  if (!v89)
  {
    v90 = 20.0;
  }

  v91 = [v78 constraintEqualToAnchor:v79 constant:v90];

  *(v77 + 32) = v91;
  v92 = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:v92];

  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_100552EE0;
  v94 = [v203 leadingAnchor];
  v95 = [v207 leadingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:v6];

  *(v93 + 32) = v96;
  v97 = [v203 trailingAnchor];
  v98 = [v207 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:-v6];

  *(v93 + 40) = v99;
  v100 = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:v100];

  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1005521F0;
  v102 = [v205 topAnchor];
  v103 = [v203 bottomAnchor];
  v104 = [v102 constraintEqualToAnchor:v103 constant:8.0];

  *(v101 + 32) = v104;
  v105 = [v205 leadingAnchor];
  v106 = [v207 leadingAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:v6 + v6];

  *(v101 + 40) = v107;
  v108 = [v205 trailingAnchor];
  v109 = [v207 trailingAnchor];
  v110 = [v108 constraintEqualToAnchor:v109 constant:v6 * -2.0];

  *(v101 + 48) = v110;
  *(v101 + 56) = v202;
  v111 = v202;
  v112 = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:v112];

  if (v204 != 64)
  {
LABEL_22:
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_100552EF0;
    v164 = [*&v0[v206] bottomAnchor];
    v165 = [v0 view];
    if (v165)
    {
      v166 = v165;
      v167 = [v165 safeAreaLayoutGuide];

      v168 = [v167 bottomAnchor];
      v169 = [v164 constraintEqualToAnchor:v168 constant:-20.0];

      *(v163 + 32) = v169;
      v170 = [*&v0[v206] leadingAnchor];
      v171 = [v0 view];
      if (v171)
      {
        v172 = v171;
        v173 = [v171 leadingAnchor];

        v174 = [v170 constraintEqualToAnchor:v173 constant:v6 + v6];
        *(v163 + 40) = v174;
        v175 = [*&v0[v206] trailingAnchor];
        v176 = [v0 view];
        if (v176)
        {
          v177 = v176;
          v178 = [v176 trailingAnchor];

          v179 = [v175 constraintEqualToAnchor:v178 constant:v6 * -2.0];
          *(v163 + 48) = v179;
          v180 = Array._bridgeToObjectiveC()().super.isa;

          v146 = v208;
          [v208 activateConstraints:v180];

          v147 = swift_allocObject();
          *(v147 + 16) = xmmword_1005521F0;
          v181 = [v201 topAnchor];
          v182 = [*&v0[v206] topAnchor];
          v183 = [v181 constraintEqualToAnchor:v182 constant:-20.0];

          *(v147 + 32) = v183;
          v184 = [v201 bottomAnchor];
          v185 = [v0 view];
          if (v185)
          {
            v186 = v185;
            v187 = [v185 bottomAnchor];

            v188 = [v184 constraintEqualToAnchor:v187];
            *(v147 + 40) = v188;
            v189 = [v201 leadingAnchor];
            v190 = [v0 view];
            if (v190)
            {
              v191 = v190;
              v192 = [v190 leadingAnchor];

              v193 = [v189 constraintEqualToAnchor:v192];
              *(v147 + 48) = v193;
              v161 = [v201 trailingAnchor];
              v162 = [v0 view];
              if (v162)
              {
                goto LABEL_28;
              }

              goto LABEL_46;
            }

            goto LABEL_44;
          }

          goto LABEL_42;
        }

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_100552EE0;
  v114 = [*&v0[v206] leadingAnchor];
  v115 = [v0 view];
  if (!v115)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v116 = v115;
  v117 = [v115 leadingAnchor];

  v118 = [v114 constraintEqualToAnchor:v117 constant:v6];
  *(v113 + 32) = v118;
  v119 = [*&v0[v206] trailingAnchor];
  v120 = [v0 view];
  if (!v120)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v121 = v120;
  v122 = [v120 trailingAnchor];

  v123 = [v119 constraintEqualToAnchor:v122 constant:-v6];
  *(v113 + 40) = v123;
  v124 = Array._bridgeToObjectiveC()().super.isa;

  [v208 activateConstraints:v124];

  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1005521F0;
  v126 = [v198 topAnchor];
  v127 = [*&v0[v206] bottomAnchor];
  v128 = [v126 constraintEqualToAnchor:v127 constant:8.0];

  *(v125 + 32) = v128;
  v129 = [v198 bottomAnchor];
  v130 = [v0 view];
  if (!v130)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v131 = v130;
  v132 = [v130 safeAreaLayoutGuide];

  v133 = [v132 bottomAnchor];
  v134 = [v129 constraintEqualToAnchor:v133 constant:-20.0];

  *(v125 + 40) = v134;
  v135 = [v198 leadingAnchor];
  v136 = [v0 view];
  if (!v136)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v137 = v136;
  v138 = [v136 leadingAnchor];

  v139 = [v135 constraintEqualToAnchor:v138 constant:v6];
  *(v125 + 48) = v139;
  v140 = [v198 trailingAnchor];
  v141 = [v0 view];
  if (!v141)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v142 = v141;
  v143 = [v141 trailingAnchor];

  v144 = [v140 constraintEqualToAnchor:v143 constant:-v6];
  *(v125 + 56) = v144;
  v145 = Array._bridgeToObjectiveC()().super.isa;

  v146 = v208;
  [v208 activateConstraints:v145];

  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1005521F0;
  v148 = [v201 topAnchor];
  v149 = [*&v0[v206] topAnchor];
  v150 = [v148 constraintEqualToAnchor:v149 constant:-20.0];

  *(v147 + 32) = v150;
  v151 = [v201 bottomAnchor];
  v152 = [v0 view];
  if (!v152)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v153 = v152;
  v154 = [v152 bottomAnchor];

  v155 = [v151 constraintEqualToAnchor:v154];
  *(v147 + 40) = v155;
  v156 = [v201 leadingAnchor];
  v157 = [v0 view];
  if (!v157)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v158 = v157;
  v159 = [v157 leadingAnchor];

  v160 = [v156 constraintEqualToAnchor:v159];
  *(v147 + 48) = v160;
  v161 = [v201 trailingAnchor];
  v162 = [v0 view];
  if (!v162)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_28:
  v194 = v162;
  v195 = [v162 trailingAnchor];

  v196 = [v161 constraintEqualToAnchor:v195];
  *(v147 + 56) = v196;
  v197 = Array._bridgeToObjectiveC()().super.isa;

  [v146 activateConstraints:v197];
}

void sub_1002C2978(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMAirTagEducationalVideoViewController: traitCollectionDidChange", v7, 2u);
  }

  sub_1002C2AF0();
}

void sub_1002C2AF0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v63 - v7;
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v64.origin.x = v12;
  v64.origin.y = v14;
  v64.size.width = v16;
  v64.size.height = v18;
  Height = CGRectGetHeight(v64);
  v20 = [v1 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  [v20 safeAreaInsets];
  v23 = v22;

  v24 = [v1 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = Height - v23;
  [v24 safeAreaInsets];
  v28 = v27;

  v29 = v26 - v28;
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v30 = [objc_opt_self() mainScreen];
  [v30 nativeBounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v65.origin.x = v32;
  v65.origin.y = v34;
  v65.size.width = v36;
  v65.size.height = v38;
  v39 = CGRectGetHeight(v65) > 1136.0;
  v40 = 197.0;
  if (!v39)
  {
    v40 = 147.75;
  }

  v41 = v29 * 0.4 - v40 + -60.0;
  v42 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionBackground];
  [v42 frame];
  v44 = -(v43 + *&qword_1006D4798);
  [*&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_heightConstraint] setConstant:v29];
  [*&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_videoTopConstraint] setConstant:v41];
  [*&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_bottomConstraint] setConstant:v44];
  v45 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollView];
  [v45 contentSize];
  v47 = v46;
  [v45 frame];
  v49 = v48;
  [v42 frame];
  [v42 setHidden:v47 <= v49 - CGRectGetHeight(v66)];
  [v42 setNeedsLayout];
  [v42 layoutIfNeeded];
  v50 = [v1 traitCollection];
  [v50 userInterfaceStyle];

  v51 = [objc_opt_self() mainBundle];
  v52 = String._bridgeToObjectiveC()();
  v53 = [v51 URLForResource:v52 withExtension:0];

  if (v53)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v54 = [v1 view];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 layer];

      URL._bridgeToObjectiveC()(v57);
      v59 = v58;
      v60 = SFAdjustmentFiltersForAssetTypeAndURL();

      sub_10000905C(0, &qword_1006C3CB0);
      v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10052AAA0(v61);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 setFilters:isa];

      (*(v3 + 8))(v8, v2);
      return;
    }

LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1002C3040()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v17 = &v28 - v16;
  v18 = *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_index];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v20 > 3)
    {
      v20 = 1;
    }

    *&v1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_index] = v20;
    v29 = v9;
    v21 = result;
    v32 = result;
    v22 = v15;
    sub_10000905C(0, &qword_1006AEDC0);
    v33 = v6;
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v31 = *(v22 + 8);
    v31(v13, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    aBlock[4] = sub_1002C3EFC;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100634268;
    v24 = _Block_copy(aBlock);
    v25 = v1;

    v26 = v29;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A270(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v26, v33);
    return (v31)(v17, v32);
  }

  return result;
}

void sub_1002C3420(char *a1)
{
  v2 = objc_opt_self();
  v3 = *&a1[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_titleLabel];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v18 = sub_1002C3F04;
  v19 = v4;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100004AE4;
  v17 = &unk_1006342B8;
  v5 = _Block_copy(&v14);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v18 = sub_1002C3F0C;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10037A044;
  v17 = &unk_100634308;
  v8 = _Block_copy(&v14);
  v9 = v6;

  [v2 transitionWithView:v3 duration:5242880 options:v5 animations:v8 completion:0.5];
  _Block_release(v8);
  _Block_release(v5);
  v10 = *&v9[OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_subtitleLabel];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v18 = sub_1002C3F44;
  v19 = v11;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100004AE4;
  v17 = &unk_100634358;
  v12 = _Block_copy(&v14);
  v13 = v9;

  [v2 transitionWithView:v10 duration:5242880 options:v12 animations:0 completion:0.6];
  _Block_release(v12);
}

void sub_1002C3680(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_titleLabel);
  _StringGuts.grow(_:)(37);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x8000000100582000;
  v4.value._object = 0x8000000100581FE0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x800000010058D9A0;
  v4.value._countAndFlagsBits = 0xD000000000000010;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v8);

  v7 = String._bridgeToObjectiveC()();

  [v1 setText:v7];
}

void sub_1002C37F4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_subtitleLabel);
  _StringGuts.grow(_:)(40);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x8000000100582000;
  v4.value._object = 0x8000000100581FE0;
  v8._countAndFlagsBits = 0xD000000000000015;
  v5._countAndFlagsBits = 0xD000000000000026;
  v5._object = 0x800000010058D970;
  v4.value._countAndFlagsBits = 0xD000000000000010;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v8);

  v7 = String._bridgeToObjectiveC()();

  [v1 setText:v7];
}

id sub_1002C3A30()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMAirTagEducationalVideoViewController: Done button pressed", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1002C3BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAirTagEducationalVideoViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for FMAirTagEducationalVideoViewController.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FMAirTagEducationalVideoViewController.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002C3E70(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1002C3E9C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t sub_1002C3ED8(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4);
}

uint64_t sub_1002C3F0C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating) == 1)
  {
    return sub_1002C3040();
  }

  return result;
}

void sub_1002C3F4C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_subtitleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollView;
  *(v0 + v5) = [objc_allocWithZone(UIScrollView) init];
  v6 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_scrollContentView;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionButton;
  *(v0 + v7) = [objc_opt_self() buttonWithType:1];
  v8 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_actionBackground;
  *(v0 + v8) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_doneButton) = 0;
  v9 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_footnoteLabel;
  *(v0 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_playerView;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = objc_allocWithZone(type metadata accessor for FMAVPlayerView());
  *(v1 + v10) = sub_1002E7064(v11, 0.25);
  *(v1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_heightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_videoTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_bottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_index) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_animating) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy38FMAirTagEducationalVideoViewController_shouldAnimate) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002C45F0()
{
  sub_1002C9B30();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1002C46E0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1006BA740;
  swift_beginAccess();
  return sub_100007204(v1 + v3, a1, &unk_1006BB1B0);
}

uint64_t sub_1002C4748(uint64_t a1)
{
  v3 = qword_1006BA740;
  swift_beginAccess();
  sub_1000BBF40(a1, v1 + v3, &unk_1006BB1B0);
  return swift_endAccess();
}

uint64_t sub_1002C4818(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1006BA748);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1002C4834()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = *(*(v0 + qword_1006BA728) + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027AA8(v7 + v8, v6, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9 = *(v6 + 1);
  }

  else
  {
    sub_100029E60(v6, type metadata accessor for FMSelectedSection);
    v10 = *(*(v0 + qword_1006BA728) + 56);
    v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027AA8(v10 + v11, v4, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v9 = *(v4 + 1);
    }

    else
    {
      sub_100029E60(v4, type metadata accessor for FMSelectedSection);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_1002C49F4()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = *(*(v0 + qword_1006BA728) + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027AA8(v7 + v8, v6, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9 = *v6;
    sub_100091880(v6[1], v6[2]);
  }

  else
  {
    sub_100029E60(v6, type metadata accessor for FMSelectedSection);
    v10 = *(*(v0 + qword_1006BA728) + 56);
    v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027AA8(v10 + v11, v4, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v9 = *v4;
      sub_100091880(v4[1], v4[2]);
    }

    else
    {
      sub_100029E60(v4, type metadata accessor for FMSelectedSection);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_1002C4BD4(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - v13;
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = *((v5 & v4) + 0x3C8);
  v58 = *((v5 & v4) + 0x3C0);
  v59 = v17;
  v18 = type metadata accessor for FMGroupViewController();
  v65.receiver = v2;
  v65.super_class = v18;
  objc_msgSendSuper2(&v65, "viewWillAppear:", a1 & 1);
  p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
  v20 = *(*(v2 + qword_1006BA728) + 56);
  v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027AA8(v20 + v21, v16, type metadata accessor for FMSelectedSection);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  sub_100027AA8(v16, v14, type metadata accessor for FMSelectedSection);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v57 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v56 = v18;
    v28 = v27;
    v61 = v27;
    *v26 = 136315138;
    sub_100027AA8(v14, v11, type metadata accessor for FMSelectedSection);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    sub_100029E60(v14, type metadata accessor for FMSelectedSection);
    v32 = sub_100005B4C(v29, v31, &v61);
    p_cache = (&OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator + 16);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "FMItemsGroupViewController: viewWillAppear selected section: %s", v26, 0xCu);
    sub_100006060(v28);
    v18 = v56;

    v16 = v57;
  }

  else
  {

    sub_100029E60(v14, type metadata accessor for FMSelectedSection);
  }

  v33 = v60;
  sub_100027AA8(v16, v60, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v46 = type metadata accessor for FMNoItemView();
    v47 = type metadata accessor for FMItemTerminalView();
    v61 = v58;
    v62 = v46;
    v63 = v47;
    v64 = v59;
    v48 = type metadata accessor for FMSeparatedListViewController();

    v50 = sub_1004D3790(v49, 1);
    sub_100250940(v50, v2, v48, &off_100642AD0);

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_100029E60(v33, type metadata accessor for FMSelectedSection);
    v40 = type metadata accessor for FMNoItemView();
    v41 = type metadata accessor for FMItemTerminalView();
    v61 = v58;
    v62 = v40;
    v63 = v41;
    v64 = v59;
    v37 = type metadata accessor for FMSeparatedListViewController();

    v39 = 1;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_13:
    sub_100029E60(v33, type metadata accessor for FMSelectedSection);
    goto LABEL_14;
  }

  sub_100029E60(v33, type metadata accessor for FMSelectedSection);
  v35 = type metadata accessor for FMNoItemView();
  v36 = type metadata accessor for FMItemTerminalView();
  v61 = v58;
  v62 = v35;
  v63 = v36;
  v64 = v59;
  v37 = type metadata accessor for FMSeparatedListViewController();

  v39 = 0;
LABEL_11:
  v42 = sub_1004D3790(v38, v39);
  v43 = *(v2 + qword_1006BA748);
  v44 = *(v2 + qword_1006BA748 + 8);

  sub_1004D3B2C(v43, v44);
  v45 = v42;
  sub_100250940(v45, v2, v37, &off_100642AD0);

LABEL_14:
  v51 = *(*(p_cache[229] + v2) + 56);

  v52 = sub_10024767C(v2, v51, v18, &off_1006344E8);

  *(v2 + qword_1006BA730) = v52;

  v53 = *(*(p_cache[229] + v2) + 24);

  v54 = sub_1000E9EA4(v2, v53, v18, &off_100634448);

  *(v2 + qword_1006BA738) = v54;

  return sub_100029E60(v16, type metadata accessor for FMSelectedSection);
}

void sub_1002C51B0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002C4BD4(a3);
}

uint64_t sub_1002C5204(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FMGroupViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  return sub_1002C5998();
}

void sub_1002C5288(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002C5204(a3);
}

void sub_1002C52DC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v43 - v9;
  __chkstk_darwin(v8);
  v12 = v43 - v11;
  v13 = type metadata accessor for FMGroupViewController();
  v44.receiver = v1;
  v44.super_class = v13;
  objc_msgSendSuper2(&v44, "viewWillDisappear:", a1 & 1);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100005B14(v14, qword_1006D4630);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMItemsGroupViewController: viewWillDisappear", v18, 2u);
  }

  v19 = *&v2[qword_1006BA730];
  p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
  if (!v19)
  {
LABEL_9:
    if (*&v2[qword_1006BA738])
    {
      v28 = *(*(*(p_cache[229] + v2) + 24) + 16);

      os_unfair_lock_lock((v28 + 24));
      sub_10008FB6C((v28 + 16));
      os_unfair_lock_unlock((v28 + 24));

      p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
    }

    v29 = *(*(p_cache[229] + v2) + 16);
    v29[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
    v30 = v29;
    sub_10041E45C();

    v31 = *(*(p_cache[229] + v2) + 56);
    v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027AA8(v31 + v32, v12, type metadata accessor for FMSelectedSection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 0:
          v41 = sub_10007EBC0(&qword_1006BEEE0);
          sub_100012DF0(&v12[*(v41 + 48)], &qword_1006B07D0);
          v42 = type metadata accessor for FMIPDevice();
          (*(*(v42 - 8) + 8))(v12, v42);
LABEL_26:
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            v40 = "FMItemsGroupViewController: ignore current selection";
            goto LABEL_28;
          }

          goto LABEL_29;
        case 3:
LABEL_24:
          sub_100029E60(v12, type metadata accessor for FMSelectedSection);
          goto LABEL_26;
        case 5:
LABEL_18:
          sub_100029E60(v12, type metadata accessor for FMSelectedSection);
          v34 = *(*&v2[qword_1006BA728] + 56);
          swift_storeEnumTagMultiPayload();
          v35 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          sub_100027AA8(v34 + v35, v7, type metadata accessor for FMSelectedSection);
          swift_beginAccess();

          sub_100058530(v10, v34 + v35);
          swift_endAccess();
          sub_100058594(v7);

          sub_100029E60(v7, type metadata accessor for FMSelectedSection);
          v36 = v10;
LABEL_31:
          sub_100029E60(v36, type metadata accessor for FMSelectedSection);
          return;
      }
    }

    else if (EnumCaseMultiPayload > 15)
    {
      if (EnumCaseMultiPayload == 16)
      {
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 19)
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "FMItemsGroupViewController: ranging item ignore current selection";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);
        }

LABEL_29:

        return;
      }
    }

    else
    {
      if ((EnumCaseMultiPayload - 6) < 2)
      {
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload == 8)
      {
        goto LABEL_24;
      }
    }

    v36 = v12;
    goto LABEL_31;
  }

  v43[1] = v15;
  v21 = v7;
  v22 = v10;
  v23 = *(*&v2[qword_1006BA728] + 56);
  swift_beginAccess();

  v24 = sub_1003CD53C((v23 + 16), v19);
  v25 = v24;
  v26 = *(v23 + 16);
  if (v26 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (v27 >= v25)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v24)
    {
LABEL_8:
      sub_1003CD570(v25, v27);
      swift_endAccess();

      v10 = v22;
      v7 = v21;
      p_cache = (&OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator + 16);
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1002C5944(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002C52DC(a3);
}

uint64_t sub_1002C5998()
{
  v92 = swift_isaMask & *v0;
  v1 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v1 - 8);
  v84 = &v81 - v2;
  v3 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v3 - 8);
  v87 = &v81 - v4;
  v5 = type metadata accessor for FMIPSeparationLocation();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v7 - 8);
  v93 = &v81 - v8;
  v9 = type metadata accessor for UUID();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = __chkstk_darwin(v9);
  v86 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v11;
  __chkstk_darwin(v10);
  v95 = &v81 - v12;
  v13 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v81 - v14;
  v16 = type metadata accessor for FMSelectionPendingAction(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v98 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v91 = &v81 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v81 - v23;
  __chkstk_darwin(v22);
  v26 = &v81 - v25;
  v94 = v0;
  v27 = *(*&v0[qword_1006BA728] + 56);
  v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_100007204(v27 + v28, v15, &unk_1006B8DD0);
  v90 = v17;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_100012DF0(v15, &unk_1006B8DD0);
  }

  sub_10008FBAC(v15, v26);
  v30 = v26;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100005B14(v31, qword_1006D4630);
  sub_100027AA8(v26, v24, type metadata accessor for FMSelectionPendingAction);
  v81 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v99[0] = v36;
    *v35 = 136315138;
    v100 = 0;
    v101 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v38 = v100;
    v37 = v101;
    sub_100029E60(v24, type metadata accessor for FMSelectionPendingAction);
    v39 = sub_100005B4C(v38, v37, v99);
    v30 = v26;

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "FMItemsGroupViewController: performPendingActions %s", v35, 0xCu);
    sub_100006060(v36);
  }

  else
  {

    sub_100029E60(v24, type metadata accessor for FMSelectionPendingAction);
  }

  v40 = v98;
  v41 = swift_allocObject();
  v42 = v94;
  *(v41 + 16) = v94;
  v82 = v30;
  v43 = v30;
  v44 = v91;
  sub_100027AA8(v43, v91, type metadata accessor for FMSelectionPendingAction);
  sub_100027AA8(v44, v40, type metadata accessor for FMSelectionPendingAction);
  v45 = (*(v90 + 80) + 40) & ~*(v90 + 80);
  v46 = (v18 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v92;
  v90 = *(v92 + 960);
  *(v47 + 2) = v90;
  v49 = *(v48 + 968);
  *(v47 + 3) = v49;
  *(v47 + 4) = v42;
  sub_10008FBAC(v44, v47 + v45);
  v50 = (v47 + v46);
  v51 = *&v42[qword_1006BA728];
  *v50 = sub_1002CAEE0;
  v50[1] = v41;
  v52 = *(v51 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v53 = type metadata accessor for FMPendingActionInfo(0);
  v54 = v93;
  sub_100007204(v52 + *(v53 + 24), v93, &unk_1006B20C0);
  v56 = v96;
  v55 = v97;
  LODWORD(v46) = (*(v96 + 48))(v54, 1, v97);
  v57 = v42;
  v94 = v41;

  if (v46 == 1)
  {
    sub_100012DF0(v54, &unk_1006B20C0);
    v58 = *(*&v57[qword_1006BA728] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v59 = v58 + *(v53 + 20);
    v60 = v87;
    sub_100007204(v59, v87, &qword_1006BC990);
    v62 = v88;
    v61 = v89;
    if ((*(v88 + 48))(v60, 1, v89) == 1)
    {
      sub_100012DF0(v60, &qword_1006BC990);
      v63 = type metadata accessor for FMIPAddress();
      v64 = v84;
      (*(*(v63 - 8) + 56))(v84, 1, 1, v63);
      v65 = v98;
      sub_1002C66F0(v64, 0, 0, v57, v98, sub_1002CAEE0, v94);

      sub_100012DF0(v64, &qword_1006BB1E0);
      sub_100029E60(v65, type metadata accessor for FMSelectionPendingAction);
    }

    else
    {
      sub_100029E60(v98, type metadata accessor for FMSelectionPendingAction);
      v79 = v83;
      (*(v62 + 32))(v83, v60, v61);
      v80 = swift_allocObject();
      *(v80 + 16) = sub_1002CAEE8;
      *(v80 + 24) = v47;

      dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();

      (*(v62 + 8))(v79, v61);
    }

    v66 = v82;
  }

  else
  {
    sub_100029E60(v98, type metadata accessor for FMSelectionPendingAction);
    v67 = *(v56 + 32);
    v68 = v95;
    v67(v95, v54, v55);
    v69 = v86;
    (*(v56 + 16))(v86, v68, v55);
    v70 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v71 = (v85 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 2) = v90;
    *(v72 + 3) = v49;
    *(v72 + 4) = v57;
    v73 = v97;
    v67(&v72[v70], v69, v97);
    v74 = &v72[v71];
    *v74 = sub_1002CAEE8;
    v74[1] = v47;
    v75 = v57;

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 67109120;
      _os_log_impl(&_mh_execute_header, v76, v77, "FMDeviceProvider: refreshSafeLocations, isCompletionNil? %{BOOL}d", v78, 8u);
    }

    FMIPManager.refreshSafeLocations(completion:)();

    (*(v96 + 8))(v95, v73);
    v66 = v82;
  }

  return sub_100029E60(v66, type metadata accessor for FMSelectionPendingAction);
}

void sub_1002C6594(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(*&a1[qword_1006BA728] + 56);
  v6 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v4, v5 + v7, &unk_1006B8DD0);
  swift_endAccess();

  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C66F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a6;
  v77 = a7;
  v74 = a5;
  v85 = swift_isaMask & *a4;
  v11 = type metadata accessor for FMSelectionPendingAction(0);
  v72 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v73 = v12;
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v13 - 8);
  v84 = v13;
  __chkstk_darwin(v13);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007EBC0(&qword_1006BB1E0);
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v71 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v69 - v20;
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = a3;
  if (!a3)
  {
    v69 = a1;
    sub_100007204(a1, &v69 - v22, &qword_1006BB1E0);
    v25 = type metadata accessor for FMIPAddress();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v23, 1, v25) == 1)
    {
      sub_100012DF0(v23, &qword_1006BB1E0);
    }

    else
    {
      v28 = FMIPAddress.formattedAddressLines.getter();
      (*(v26 + 8))(v23, v25);
      if (v28)
      {
        if (v28[2])
        {
          a2 = v28[4];
          v24 = v28[5];

LABEL_11:
          a1 = v69;
          goto LABEL_12;
        }
      }
    }

    sub_100007204(v69, v21, &qword_1006BB1E0);
    if (v27(v21, 1, v25) == 1)
    {
      sub_100012DF0(v21, &qword_1006BB1E0);
      a2 = 0;
      v24 = 0;
    }

    else
    {
      a2 = FMIPAddress.label.getter();
      v24 = v29;
      (*(v26 + 8))(v21, v25);
    }

    goto LABEL_11;
  }

LABEL_12:
  v78 = a4;
  v30 = (a4 + qword_1006BA748);
  *v30 = a2;
  v30[1] = v24;

  v31 = *(a4 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v31)
  {
    v32 = v85;
    v33 = *(v85 + 960);
    v34 = type metadata accessor for FMNoItemView();
    v35 = type metadata accessor for FMItemTerminalView();
    v36 = *(v32 + 968);
    aBlock = v33;
    v87 = v34;
    v88 = v35;
    v89 = v36;
    type metadata accessor for FMSeparatedListViewController();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = v37;
      sub_10000905C(0, &qword_1006AEDC0);
      v39 = v31;
      v40 = static OS_dispatch_queue.main.getter();
      v41 = swift_allocObject();
      v42 = v78;
      *(v41 + 16) = v38;
      *(v41 + 24) = v42;
      v90 = sub_1002CB15C;
      v91 = v41;
      aBlock = _NSConcreteStackBlock;
      v87 = 1107296256;
      v88 = sub_100004AE4;
      v89 = &unk_1006346B8;
      v43 = _Block_copy(&aBlock);
      v44 = v39;
      v45 = v42;

      v46 = v79;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1002CB164(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v47 = a1;
      v48 = v81;
      v49 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v43);

      v50 = v48;
      a1 = v47;
      (*(v83 + 8))(v50, v49);
      (*(v80 + 8))(v46, v82);
    }
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v51 = static OS_dispatch_queue.main.getter();
  v52 = v75;
  sub_100027AA8(v74, v75, type metadata accessor for FMSelectionPendingAction);
  v53 = v71;
  sub_100007204(a1, v71, &qword_1006BB1E0);
  v54 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v55 = (v73 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v70 + 80) + v55 + 8) & ~*(v70 + 80);
  v57 = (v17 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v85;
  *(v58 + 16) = *(v85 + 960);
  *(v58 + 24) = *(v59 + 968);
  sub_10008FBAC(v52, v58 + v54);
  v60 = v78;
  *(v58 + v55) = v78;
  sub_100035318(v53, v58 + v56, &qword_1006BB1E0);
  v61 = (v58 + v57);
  v62 = v77;
  *v61 = v76;
  v61[1] = v62;
  v90 = sub_1002CB044;
  v91 = v58;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_100004AE4;
  v89 = &unk_100634668;
  v63 = _Block_copy(&aBlock);
  v64 = v60;

  v65 = v79;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002CB164(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v66 = v81;
  v67 = v84;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v63);

  (*(v83 + 8))(v66, v67);
  return (*(v80 + 8))(v65, v82);
}

void sub_1002C7004(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + qword_1006BA748);
  v7 = *(a2 + qword_1006BA748 + 8);

  sub_1004D3B2C(v6, v7);
  v8 = qword_1006BA740;
  swift_beginAccess();
  sub_100007204(a2 + v8, v5, &unk_1006BB1B0);
  v9 = type metadata accessor for FMIPSafeLocation();
  LOBYTE(a2) = (*(*(v9 - 8) + 48))(v5, 1, v9) != 1;
  sub_100012DF0(v5, &unk_1006BB1B0);
  sub_1004D3AFC(a2);
}

void sub_1002C714C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v47 = a5;
  v48 = a4;
  v46 = a2;
  v6 = type metadata accessor for FMIPSeparationLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006BC990);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v45 = &v44 - v17;
  v18 = type metadata accessor for FMSelectionPendingAction(0);
  __chkstk_darwin(v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  My = type metadata accessor for Feature.FindMy();
  v51[3] = My;
  v51[4] = sub_1002CB164(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v22 = sub_100008FC0(v51);
  (*(*(My - 8) + 104))(v22, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v23 = sub_100006060(v51);
  if (My & 1) != 0 && (swift_storeEnumTagMultiPayload(), v24 = sub_100247790(a1, v20), v23 = sub_100029E60(v20, type metadata accessor for FMSelectionPendingAction), (v24))
  {
    v25 = v45;
    v44 = *(v7 + 56);
    v44(v45, 1, 1, v6);
    v26 = *(*(v46 + qword_1006BA728) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v27 = type metadata accessor for FMPendingActionInfo(0);
    sub_100007204(v26 + *(v27 + 20), v16, &qword_1006BC990);
    if ((*(v7 + 48))(v16, 1, v6) == 1)
    {
      sub_100012DF0(v16, &qword_1006BC990);
    }

    else
    {
      (*(v7 + 32))(v9, v16, v6);
      FMIPSeparationLocation.with(address:)();
      (*(v7 + 8))(v9, v6);
      sub_100012DF0(v25, &qword_1006BC990);
      v44(v13, 0, 1, v6);
      sub_100035318(v13, v25, &qword_1006BC990);
    }

    v28 = sub_1002C49F4();
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    v30 = (v29 + 5);
    v31 = -v29[2];
    v32 = -1;
    while (1)
    {
      if (v31 + v32 == -1)
      {

        v40 = v45;
        v41 = v46;
        goto LABEL_15;
      }

      if (++v32 >= v29[2])
      {
        break;
      }

      v33 = v30 + 2;
      v35 = *(v30 - 1);
      v34 = *v30;
      v49 = 0xD00000000000001ELL;
      v50 = 0x800000010058DB30;

      v36._countAndFlagsBits = v35;
      v36._object = v34;
      String.append(_:)(v36);

      v37 = [objc_opt_self() standardUserDefaults];
      v38 = String._bridgeToObjectiveC()();

      v39 = [v37 BOOLForKey:v38];

      v30 = v33;
      if ((v39 & 1) == 0)
      {

        v40 = v45;
        v41 = v46;
        sub_1002C7E30(v45);
LABEL_15:
        v42 = *(*(v41 + qword_1006BA728) + 16);
        v42[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
        v43 = v42;
        sub_10041E45C();

        v23 = sub_100012DF0(v40, &qword_1006BC990);
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v48(v23);
  }
}

uint64_t sub_1002C76B0(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v5 = type metadata accessor for FMIPSafeLocationType();
  v55 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v51 - v8;
  v9 = sub_10007EBC0(&qword_1006BB1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v51 - v12;
  v13 = sub_10007EBC0(&unk_1006BB1B0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = type metadata accessor for FMIPSafeLocation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = UUID.uuidString.getter();
  sub_1000E65EC(v23, v24, v18);
  v25 = v19;
  v26 = v20;

  if ((*(v20 + 48))(v18, 1, v25) == 1)
  {
    v27 = &unk_1006BB1B0;
    v28 = v18;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v25);
    (*(v20 + 16))(v16, v22, v25);
    (*(v20 + 56))(v16, 0, 1, v25);
    v29 = v16;
    v30 = a1;
    sub_1002C4748(v29);
    FMIPSafeLocation.address.getter();
    v31 = v53;
    FMIPSafeLocation.type.getter();
    v33 = v54;
    v32 = v55;
    (*(v55 + 104))(v54, enum case for FMIPSafeLocationType.home(_:), v5);
    sub_1002CB164(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v34 = *(v32 + 8);
    v34(v33, v5);
    v34(v31, v5);
    v36 = v59;
    v35 = v60;
    v37 = type metadata accessor for FMIPAddress();
    v38 = *(v37 - 8);
    if (v35 == v36)
    {
      v39 = v52;
      (*(v38 + 56))(v52, 1, 1, v37);
      v40 = [objc_opt_self() mainBundle];
      v61._object = 0x8000000100587150;
      v41._object = 0x8000000100587130;
      v61._countAndFlagsBits = 0xD000000000000025;
      v41._countAndFlagsBits = 0xD000000000000013;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v61);

      v56(v39, v43._countAndFlagsBits, v43._object);

      sub_100012DF0(v39, &qword_1006BB1E0);
      (*(v26 + 8))(v22, v25);
      v28 = v58;
      v27 = &qword_1006BB1E0;
    }

    else
    {
      v44 = v30;
      v45 = v58;
      if ((*(v38 + 48))(v58, 1, v37) == 1)
      {
        v46 = swift_allocObject();
        v47 = v56;
        v48 = v57;
        v46[2] = v44;
        v46[3] = v47;
        v46[4] = v48;
        v49 = v44;

        dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();
      }

      else
      {
        v56(v45, 0, 0);
      }

      (*(v26 + 8))(v22, v25);
      v27 = &qword_1006BB1E0;
      v28 = v45;
    }
  }

  return sub_100012DF0(v28, v27);
}

uint64_t sub_1002C7CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v5 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_1002C47B8();
  v10 = v9;
  v11 = type metadata accessor for FMIPSafeLocation();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100007204(a1, v7, &qword_1006BB1E0);
    FMIPSafeLocation.address.setter();
  }

  (v8)(v13, 0);
  return a3(a1, 0, 0);
}

void sub_1002C7E30(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v3 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v3 - 8);
  v92 = &v83 - v4;
  v5 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v5 - 8);
  v93 = &v83 - v6;
  v89 = type metadata accessor for TimeZone();
  v7 = *(v89 - 8);
  __chkstk_darwin(v89);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v10 - 8);
  v12 = &v83 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v2 + qword_1006BA728) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v91 = type metadata accessor for FMPendingActionInfo(0);
  sub_100007204(v17 + *(v91 + 28), v12, &unk_1006B0000);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100012DF0(v12, &unk_1006B0000);
  }

  else
  {
    v84 = v14;
    v18 = *(v14 + 32);
    v19 = v16;
    v85 = v13;
    v18(v16, v12, v13);
    v20 = [objc_allocWithZone(NSDateFormatter) init];
    static TimeZone.autoupdatingCurrent.getter();
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v89);
    [v20 setTimeZone:isa];

    [v20 setTimeStyle:1];
    v22 = Date._bridgeToObjectiveC()().super.isa;
    v83 = v20;
    v23 = [v20 stringFromDate:v22];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v25;
    v88 = v24;

    v26 = *(v2 + qword_1006BA728);

    v27 = sub_1002C49F4();
    v28 = _swiftEmptyArrayStorage;
    if (v27)
    {
      v28 = v27;
    }

    v86 = v28;
    v29 = qword_1006BA740;
    swift_beginAccess();
    v89 = v2;
    v30 = v93;
    sub_100007204(v2 + v29, v93, &unk_1006BB1B0);
    v31 = v92;
    sub_100007204(v90, v92, &qword_1006BC990);
    v32 = objc_allocWithZone(type metadata accessor for FMSeparationNotificationWelcomeViewController());
    v33 = &v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler];
    *v33 = 0;
    v33[1] = 0;
    *&v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v34 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel;
    *&v32[v34] = [objc_allocWithZone(UILabel) init];
    v35 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel;
    *&v32[v35] = [objc_allocWithZone(UILabel) init];
    v36 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView;
    *&v32[v36] = [objc_allocWithZone(UIScrollView) init];
    v37 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView;
    *&v32[v37] = [objc_allocWithZone(UIView) init];
    v38 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton;
    v39 = objc_opt_self();
    v40 = [v39 systemBlueColor];
    v41 = type metadata accessor for FMSingleLinePlatterButton();
    v42 = objc_allocWithZone(v41);
    *&v32[v38] = sub_100038758(v40, 1, 0, 1);
    v43 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton;
    v44 = [v39 clearColor];
    v45 = objc_allocWithZone(v41);
    *&v32[v43] = sub_100038758(v44, 1, 0, 1);
    v46 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
    sub_10000905C(0, &qword_1006BC2B0);
    v47 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000);
    v48 = [objc_allocWithZone(UIImageView) initWithImage:v47];

    *&v32[v46] = v48;
    *&v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] = 0;
    v49 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
    v50 = type metadata accessor for FMIPItem();
    (*(*(v50 - 8) + 56))(&v32[v49], 1, 1, v50);
    v51 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
    v52 = type metadata accessor for FMIPDevice();
    (*(*(v52 - 8) + 56))(&v32[v51], 1, 1, v52);
    v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 2;
    v53 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
    v54 = type metadata accessor for FMIPSafeLocation();
    (*(*(v54 - 8) + 56))(&v32[v53], 1, 1, v54);
    v55 = &v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime];
    *v55 = 0;
    v55[1] = 0;
    v56 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
    v57 = type metadata accessor for FMIPSeparationLocation();
    (*(*(v57 - 8) + 56))(&v32[v56], 1, 1, v57);
    v58 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_mapSnapshotter;
    type metadata accessor for FMMapSnapshotter();
    swift_allocObject();
    *&v32[v58] = sub_10012114C();
    v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type] = 0;
    *&v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs] = v86;
    swift_beginAccess();
    sub_1000BBE44(v30, &v32[v53], &unk_1006BB1B0);
    swift_endAccess();
    v59 = *(v26 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v60 = 1;
    v61 = *(v59 + *(v91 + 32));
    v62 = v19;
    if (v61)
    {
      v60 = *(v61 + 16);
    }

    *&v32[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount] = v60;
    v63 = v87;
    *v55 = v88;
    v55[1] = v63;

    swift_beginAccess();
    sub_1000BBE44(v31, &v32[v56], &qword_1006BC990);
    swift_endAccess();
    *&v32[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v26;
    v64 = type metadata accessor for FMMediatedViewController();
    v94.receiver = v32;
    v94.super_class = v64;

    v65 = objc_msgSendSuper2(&v94, "initWithNibName:bundle:", 0, 0);
    sub_1002EEB9C();
    sub_1002EF8A8();
    v66 = objc_allocWithZone(UITapGestureRecognizer);
    v67 = v65;
    v68 = [v66 initWithTarget:v67 action:"primaryAction"];
    [*&v67[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton] addGestureRecognizer:v68];
    v69 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v67 action:"secondaryAction"];

    [*&v67[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton] addGestureRecognizer:v69];

    sub_100012DF0(v31, &qword_1006BC990);
    sub_100012DF0(v93, &unk_1006BB1B0);
    *&v67[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = &off_100634438;
    v70 = v89;
    swift_unknownObjectWeakAssign();
    v71 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v93 = v67;
    v92 = [v71 initWithRootViewController:v67];
    [v70 presentViewController:? animated:? completion:?];
    v72 = sub_1002C49F4();
    if (v72)
    {
      v73 = v72;
    }

    else
    {
      v73 = _swiftEmptyArrayStorage;
    }

    v74 = v73[2];
    if (v74)
    {
      v75 = 0;
      v76 = (v73 + 5);
      while (v75 < v73[2])
      {
        ++v75;
        v77 = v62;
        v79 = *(v76 - 1);
        v78 = *v76;
        v95 = 0xD00000000000001ELL;
        v96 = 0x800000010058DB30;

        v80._countAndFlagsBits = v79;
        v80._object = v78;
        String.append(_:)(v80);

        v81 = [objc_opt_self() standardUserDefaults];
        v82 = String._bridgeToObjectiveC()();
        v62 = v77;

        [v81 setBool:1 forKey:v82];

        v76 += 2;
        if (v74 == v75)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
      (*(v84 + 8))(v62, v85);
    }
  }
}

void sub_1002C89AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v121 = a1;
  v124 = type metadata accessor for FMIPDevice();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v117 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v115 - v10;
  v11 = __chkstk_darwin(v9);
  v120 = &v115 - v12;
  v13 = __chkstk_darwin(v11);
  v129 = &v115 - v14;
  v15 = __chkstk_darwin(v13);
  v127 = &v115 - v16;
  v17 = __chkstk_darwin(v15);
  v126 = &v115 - v18;
  v19 = __chkstk_darwin(v17);
  v125 = &v115 - v20;
  v21 = __chkstk_darwin(v19);
  v130 = &v115 - v22;
  v23 = __chkstk_darwin(v21);
  v128 = &v115 - v24;
  v25 = __chkstk_darwin(v23);
  v131 = &v115 - v26;
  v27 = __chkstk_darwin(v25);
  v132 = &v115 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v115 - v30;
  __chkstk_darwin(v29);
  v33 = &v115 - v32;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100005B14(v34, qword_1006D4630);
  sub_100027AA8(a2, v33, type metadata accessor for FMSelectedSection);
  v119 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v135 = v115;
    *v38 = 136315138;
    sub_100027AA8(v33, v31, type metadata accessor for FMSelectedSection);
    v39 = v3;
    v40 = String.init<A>(describing:)();
    v116 = v31;
    v42 = v41;
    sub_100029E60(v33, type metadata accessor for FMSelectedSection);
    v43 = v40;
    v3 = v39;
    v44 = sub_100005B4C(v43, v42, &v135);
    v31 = v116;

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMItemsGroupViewController: didUpdate selected section: %s", v38, 0xCu);
    sub_100006060(v115);
  }

  else
  {

    sub_100029E60(v33, type metadata accessor for FMSelectedSection);
  }

  swift_storeEnumTagMultiPayload();
  v45 = sub_10005F7D0(a2, v31);
  sub_100029E60(v31, type metadata accessor for FMSelectedSection);
  if ((v45 & 1) == 0)
  {
    v46 = a2;
    v47 = v31;
    v48 = *(*&v3[qword_1006BA728] + 56);
    v49 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v50 = v48 + v49;
    v51 = v132;
    sub_100027AA8(v50, v132, type metadata accessor for FMSelectedSection);
    LODWORD(v49) = swift_getEnumCaseMultiPayload();
    sub_100029E60(v51, type metadata accessor for FMSelectedSection);
    v52 = *&v3[qword_1006BA728];
    if (v49 == 3)
    {
      v53 = type metadata accessor for FMItemDetailCardViewController();
      v54 = objc_allocWithZone(v53);
      swift_storeEnumTagMultiPayload();
      *&v54[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_selectionSubscription] = 0;
      v54[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_isSharedLostItem] = 0;
      *&v54[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController] = 0;
      *&v54[OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_mediator] = v52;
      v133.receiver = v54;
      v133.super_class = v53;

      v55 = objc_msgSendSuper2(&v133, "initWithNibName:bundle:", 0, 0);
      v56 = *(*&v3[qword_1006BA728] + 56);
      v57 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      v58 = v56 + v57;
      v59 = v131;
      sub_100027AA8(v58, v131, type metadata accessor for FMSelectedSection);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        *v47 = *v59;
        *(v47 + 8) = *(v59 + 8);
        swift_storeEnumTagMultiPayload();
        v60 = OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_returnSelection;
        swift_beginAccess();
        sub_100058438(v47, v55 + v60);
        swift_endAccess();
      }

      else
      {
        sub_100029E60(v59, type metadata accessor for FMSelectedSection);
        v75 = *(*&v3[qword_1006BA728] + 56);
        v76 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
        swift_beginAccess();
        v77 = v75 + v76;
        v78 = v128;
        sub_100027AA8(v77, v128, type metadata accessor for FMSelectedSection);
        LODWORD(v76) = swift_getEnumCaseMultiPayload();
        sub_100029E60(v78, type metadata accessor for FMSelectedSection);
        if (v76 == 17)
        {
          sub_10024D71C();
LABEL_16:

          return;
        }
      }

      [v3 presentCard:v55 completion:0];
      goto LABEL_16;
    }

    v61 = *(v52 + 56);
    v62 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v63 = v61 + v62;
    v64 = v130;
    sub_100027AA8(v63, v130, type metadata accessor for FMSelectedSection);
    LODWORD(v61) = swift_getEnumCaseMultiPayload();
    sub_100029E60(v64, type metadata accessor for FMSelectedSection);
    v65 = *&v3[qword_1006BA728];
    if (!v61)
    {
      v79 = type metadata accessor for FMDeviceDetailCardViewController();
      v80 = objc_allocWithZone(v79);
      swift_storeEnumTagMultiPayload();
      *&v80[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_selectionSubscription] = 0;
      *&v80[OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_mediator] = v65;
      v134.receiver = v80;
      v134.super_class = v79;

      v81 = objc_msgSendSuper2(&v134, "initWithNibName:bundle:", 0, 0);
      v82 = *(*&v3[qword_1006BA728] + 56);
      v83 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      v84 = v125;
      sub_100027AA8(v82 + v83, v125, type metadata accessor for FMSelectedSection);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        *v47 = *v84;
        *(v47 + 8) = *(v84 + 8);
        swift_storeEnumTagMultiPayload();
        v85 = OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_returnSelection;
        swift_beginAccess();
        sub_100058438(v47, v81 + v85);
        swift_endAccess();
      }

      else
      {
        sub_100029E60(v84, type metadata accessor for FMSelectedSection);
      }

      v91 = v126;
      v92 = *(*&v3[qword_1006BA728] + 56);
      v93 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      sub_100027AA8(v92 + v93, v91, type metadata accessor for FMSelectedSection);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v94 = *(v123 + 32);
        v95 = v91;
        v96 = v122;
        v97 = v124;
        v94(v122, v95, v124);
        v94(v47, v96, v97);
        swift_storeEnumTagMultiPayload();
        v98 = OBJC_IVAR____TtC6FindMy32FMDeviceDetailCardViewController_returnSelection;
        swift_beginAccess();
        sub_100058438(v47, v81 + v98);
        swift_endAccess();
      }

      else
      {
        sub_100029E60(v91, type metadata accessor for FMSelectedSection);
      }

      v99 = *(*&v3[qword_1006BA728] + 56);
      v100 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      v101 = v99 + v100;
      v102 = v127;
      sub_100027AA8(v101, v127, type metadata accessor for FMSelectedSection);
      LODWORD(v99) = swift_getEnumCaseMultiPayload();
      sub_100029E60(v102, type metadata accessor for FMSelectedSection);
      if (v99 == 12)
      {
        sub_10024D71C();
      }

      else
      {
        [v3 presentCard:v81 completion:0];
      }

      goto LABEL_28;
    }

    v66 = *(v65 + 56);
    v67 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v68 = v66 + v67;
    v69 = v129;
    sub_100027AA8(v68, v129, type metadata accessor for FMSelectedSection);
    LODWORD(v66) = swift_getEnumCaseMultiPayload();
    sub_100029E60(v69, type metadata accessor for FMSelectedSection);
    if (v66 == 8)
    {
      v70 = *(*&v3[qword_1006BA728] + 56);
      v71 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      sub_100027AA8(v70 + v71, v47, type metadata accessor for FMSelectedSection);
      v72 = objc_allocWithZone(type metadata accessor for FMUTCardViewController());

      v74 = sub_1003E4FF4(v73, v47);

      [v3 presentCard:v74 completion:0];

      return;
    }

    swift_storeEnumTagMultiPayload();
    v86 = sub_10005F7D0(v46, v47);
    sub_100029E60(v47, type metadata accessor for FMSelectedSection);
    if (v86)
    {
      v87 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      v88 = v121;
      swift_beginAccess();
      sub_100027AA8(v88 + v87, v47, type metadata accessor for FMSelectedSection);

      v90 = sub_1001AB900(v89, v47, 0);

      sub_100029E60(v47, type metadata accessor for FMSelectedSection);
      [v3 presentViewController:v90 animated:1 completion:0];

      return;
    }

    v103 = v120;
    sub_100027AA8(v46, v120, type metadata accessor for FMSelectedSection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100029E60(v103, type metadata accessor for FMSelectedSection);
    if (EnumCaseMultiPayload == 6)
    {
      v81 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        v107 = "FMItemsGroupViewController: deviceGroup selected. Do nothing.";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v81, v105, v107, v106, 2u);

        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v108 = v118;
    sub_100027AA8(v46, v118, type metadata accessor for FMSelectedSection);
    v109 = swift_getEnumCaseMultiPayload();
    sub_100029E60(v108, type metadata accessor for FMSelectedSection);
    if (v109 == 5)
    {
      v81 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v81, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        v107 = "FMItemsGroupViewController: itemGroup selected. Do nothing.";
        goto LABEL_39;
      }

LABEL_28:

      return;
    }

    v110 = v46;
    v111 = v117;
    sub_100027AA8(v110, v117, type metadata accessor for FMSelectedSection);
    v112 = swift_getEnumCaseMultiPayload();
    sub_100029E60(v111, type metadata accessor for FMSelectedSection);
    v81 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    v113 = os_log_type_enabled(v81, v105);
    if (v112 == 7)
    {
      if (v113)
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        v107 = "FMItemsGroupViewController: multipart group selected. Do nothing.";
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v113)
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v81, v105, "FMItemsGroupViewController: no selection", v114, 2u);
    }

    sub_10024D71C();
  }
}

void sub_1002C9904(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1002CB358();
}

uint64_t sub_1002C9974()
{

  sub_100012DF0(v0 + qword_1006BA740, &unk_1006BB1B0);
}

id sub_1002C9A08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMGroupViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002C9A78(uint64_t a1)
{

  sub_100012DF0(a1 + qword_1006BA740, &unk_1006BB1B0);
}

void sub_1002C9B30()
{
  if (!qword_1006BB190)
  {
    type metadata accessor for FMIPSafeLocation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BB190);
    }
  }
}

uint64_t sub_1002C9B94()
{
  v1 = type metadata accessor for FMIPDevice();
  v43 = *(v1 - 8);
  __chkstk_darwin(v1);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for FMIPNotifyItemActionType();
  p_cache = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v55 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v43 - v9;
  v10 = sub_10007EBC0(&unk_1006BBCE0);
  v11 = __chkstk_darwin(v10 - 8);
  v61 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v43 - v13;
  v14 = sub_10007EBC0(&qword_1006B07D0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20 = type metadata accessor for Logger();
    v21 = sub_100005B14(v20, qword_1006D4630);
    v22 = v0;
    v45 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v58 = v1;
    v63 = v5;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v64 = p_cache;
      v27 = v67;
      *v26 = 136315138;
      v66 = sub_1002C49F4();
      sub_10007EBC0(&qword_1006BA7E0);
      v28 = String.init<A>(describing:)();
      v1 = sub_100005B4C(v28, v29, &v67);

      *(v26 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMGroupViewController: current selected clustered item identifiers %s", v26, 0xCu);
      sub_100006060(v27);
      p_cache = v64;
    }

    v0 = v22;
    v30 = sub_1002C49F4();
    v31 = _swiftEmptyArrayStorage;
    if (v30)
    {
      v31 = v30;
    }

    v64 = v31;
    v62 = v31[2];
    if (!v62)
    {
      break;
    }

    v5 = v22;
    v32 = 0;
    v59 = (v6 + 6);
    v51 = (v6 + 2);
    v52 = (v6 + 4);
    v50 = enum case for FMIPNotifyItemActionType.whenSeparated(_:);
    v48 = (v6 + 1);
    v49 = (p_cache + 13);
    v47 = (v43 + 6);
    v44 = (v43 + 4);
    ++v43;
    v33 = (v64 + 5);
    p_cache = (&OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator + 16);
    v6 = &qword_1006B07D0;
    v53 = v19;
    v60 = v5;
    while (v32 < v64[2])
    {
      v37 = *(v33 - 1);
      v38 = *v33;

      sub_1000E5FF8(v37, v38, v19);

      sub_1000E5180(v37, v38, v65);

      sub_100007204(v19, v17, &qword_1006B07D0);
      v1 = v63;
      if ((*v59)(v17, 1, v63) == 1)
      {
        sub_100012DF0(v17, &qword_1006B07D0);
        v39 = v61;
        sub_100007204(v65, v61, &unk_1006BBCE0);
        v40 = v58;
        if ((*v47)(v39, 1, v58) == 1)
        {
          sub_100012DF0(v61, &unk_1006BBCE0);
          v0 = Logger.logObject.getter();
          v1 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v0, v1))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v0, v1, "FMGroupViewController: Cannot disable leashing, no item or device found.", v41, 2u);
          }
        }

        else
        {
          v1 = v46;
          (*v44)(v46, v61, v40);
          v0 = *(*(*(v5 + qword_1006BA728) + 24) + 32);

          sub_1000DE0C0(v1, 0, sub_1002CA6D4, 0);

          (*v43)(v1, v40);
        }
      }

      else
      {
        v34 = v54;
        (*v52)(v54, v17, v1);
        (*v51)(v55, v34, v1);
        (*v49)(v56, v50, v57);
        type metadata accessor for FMIPNotifyItemAction();
        swift_allocObject();
        v19 = v53;
        v35 = FMIPNotifyItemAction.init(item:type:state:)();
        v0 = *(*(*(p_cache[229] + v60) + 24) + 32);

        sub_1000D6A90(v35, sub_1002CA3F0, 0);

        v36 = v34;
        v5 = v60;
        (*v48)(v36, v1);
      }

      ++v32;
      sub_100012DF0(v65, &unk_1006BBCE0);
      sub_100012DF0(v19, &qword_1006B07D0);
      v33 += 2;
      p_cache = &OBJC_METACLASS____TtC6FindMy42FMAccessoryProductImageFetchingCoordinator.cache;
      if (v62 == v32)
      {
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }
}

void sub_1002CA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FMIPItemActionStatus();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  (*(v6 + 16))(v8, a1, v5);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315394;
    sub_1002CB164(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = sub_100005B4C(v13, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v20 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v17 = String.init<A>(describing:)();
    v19 = sub_100005B4C(v17, v18, &v21);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMGroupViewController: Disable leashing completed with status: %s, error: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1002CA6D4()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;

    sub_10007EBC0(&qword_1006B0EA0);
    v4 = String.init<A>(describing:)();
    v6 = sub_100005B4C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMGroupViewController: Disable leashing completed for devices: %s", v2, 0xCu);
    sub_100006060(v3);
  }

  else
  {
  }
}

uint64_t sub_1002CA87C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItemState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100005B14(v14, qword_1006D4630);

  v38 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v16, v17, "FMItemsGroupViewController: didUpdate %ld items", v18, 0xCu);
  }

  else
  {
  }

  v39 = v2;
  result = sub_1002C4834();
  if (v20 - 2 >= 3 && v20)
  {
    if (v20 == 1)
    {
      v21 = 0;
      v22 = *(a1 + 16);
      v23 = (v8 + 8);
      while (v22 != v21)
      {
        type metadata accessor for FMIPItem();
        v24 = v21 + 1;
        FMIPItem.state.getter();
        static FMIPItemState.isBTConnected.getter();
        sub_1002CB164(&qword_1006C0350, &type metadata accessor for FMIPItemState);
        v25 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v26 = *v23;
        (*v23)(v11, v7);
        result = (v26)(v13, v7);
        v21 = v24;
        if (v25)
        {
          return result;
        }
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "FMItemsGroupViewController: dismissing since cluster is empty", v29, 2u);
      }

      sub_10000905C(0, &qword_1006AEDC0);
      v30 = static OS_dispatch_queue.main.getter();
      v31 = swift_allocObject();
      v32 = v39;
      *(v31 + 16) = v39;
      aBlock[4] = sub_1002CAEBC;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100634550;
      v33 = _Block_copy(aBlock);
      v34 = v32;

      v35 = v40;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002CB164(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v36 = v42;
      v37 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*(v44 + 8))(v36, v37);
      return (*(v41 + 8))(v35, v43);
    }

    else
    {

      return sub_1002CAEAC(result, v20);
    }
  }

  return result;
}

uint64_t sub_1002CAEAC(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_100091880(a1, a2);
  }

  return a1;
}

uint64_t sub_1002CAEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v3 + 32);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1002C66F0(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_1002CAFA4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1002C76B0(v3, v0 + v2, v5, v6);
}

void sub_1002CB044()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1002C714C(v0 + v2, v6, v0 + v5, v8, v9);
}

uint64_t sub_1002CB164(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002CB1AC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  *(v1 + qword_1006BA730) = 0;
  *(v1 + qword_1006BA738) = 0;
  v5 = qword_1006BA740;
  v6 = type metadata accessor for FMIPSafeLocation();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + qword_1006BA748);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + qword_1006BA750) = 0;
  v8 = qword_1006BA758;
  static Locale.autoupdatingCurrent.getter();
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v1 + v8) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002CB398()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMPeopleSuggester_peopleSuggester;
  *&v0[v1] = [objc_allocWithZone(CDPeopleSuggester) init];
  v2 = OBJC_IVAR____TtC6FindMy17FMPeopleSuggester_contactStore;
  *&v0[v2] = [objc_allocWithZone(CNContactStore) init];
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMPeopleSuggester();
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"contactStoreDidChangeWithNotification:" name:CNContactStoreDidChangeNotification object:0];

  return v5;
}

id sub_1002CB514()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:CNContactStoreDidChangeNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMPeopleSuggester();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002CB6A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v12;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMPeopleSuggester: Suggest people. Starting operation.", v16, 2u);
    v12 = v25;
  }

  Date.init()();
  v17 = *(v3 + OBJC_IVAR____TtC6FindMy17FMPeopleSuggester_peopleSuggester);
  (*(v7 + 16))(v10, v12, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v10, v6);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a1;
  v20[1] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002CC1AC;
  *(v21 + 24) = v19;
  aBlock[4] = sub_1002CC25C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002CC118;
  aBlock[3] = &unk_100634730;
  v22 = _Block_copy(aBlock);

  [v17 suggestPeopleWithCompletionHandler:v22];
  _Block_release(v22);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1002CB9C8(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void), uint64_t a5)
{
  v65 = a5;
  v66 = a4;
  v69 = a1;
  v72 = type metadata accessor for Date();
  v6 = *(v72 - 8);
  v7 = __chkstk_darwin(v72);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v71 = v61 - v11;
  v12 = __chkstk_darwin(v10);
  v67 = v61 - v13;
  __chkstk_darwin(v12);
  v15 = v61 - v14;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100005B14(v16, qword_1006D4630);
  v18 = *(v6 + 16);
  v63 = v6 + 16;
  v62 = v18;
  v18(v15, a3, v72);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v70 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = v67;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v25 = v24;
    v26 = *(v6 + 8);
    v27 = v23;
    v28 = v72;
    v26(v27, v72);
    v64 = v26;
    v26(v15, v28);
    v9 = v70;
    *(v22 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMPeopleSuggester: Suggest people. Completed operation. Took %f seconds", v22, 0xCu);
  }

  else
  {

    v64 = *(v6 + 8);
    v64(v15, v72);
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "FMPeopleSuggester: Fetch all the contacts related to suggestions.", v31, 2u);
  }

  Date.init()();
  v68 = v6;
  if (v69)
  {
    v61[1] = v17;
    v32 = *(v69 + 16);
    if (v32)
    {
      v33 = _swiftEmptyArrayStorage;
      v34 = v69 + 32;
      while (1)
      {
        sub_100006004(v34, v75);
        sub_100006004(v75, v74);
        sub_1002CC264();
        if (swift_dynamicCast())
        {
          v35 = v73;
          v36 = [v73 contact];
          if (!v36)
          {
            __break(1u);

            __break(1u);
            return result;
          }

          v37 = v36;
          v38 = [v36 identifier];

          if (v38)
          {
            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            type metadata accessor for FMContactsUtilities();
            v42 = sub_1004769D8(v39, v41, 0, 0, 0, 0, 0);
            if ((v43 & 0x10000) != 0)
            {
              sub_100006060(v75);
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_10008BEF8(0, v33[2] + 1, 1, v33);
              }

              v45 = v33[2];
              v44 = v33[3];
              if (v45 >= v44 >> 1)
              {
                v33 = sub_10008BEF8((v44 > 1), v45 + 1, 1, v33);
              }

              sub_100006060(v75);
              v33[2] = v45 + 1;
              v46 = &v33[3 * v45];
              v46[4] = v39;
              v46[5] = v41;
              v46[6] = v42;
              v9 = v70;
            }
          }

          else
          {
            sub_100006060(v75);
          }
        }

        else
        {
          sub_100006060(v75);
        }

        v34 += 32;
        if (!--v32)
        {
          goto LABEL_26;
        }
      }
    }

    v33 = _swiftEmptyArrayStorage;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

LABEL_26:
  v62(v9, v71, v72);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    v50 = v67;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v52 = v51;
    v53 = v50;
    v54 = v72;
    v55 = v64;
    v64(v53, v72);
    v55(v9, v54);
    v56 = v55;
    *(v49 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v47, v48, "FMPeopleSuggester: Fetch all the contacts. Completed operation. Took %f seconds", v49, 0xCu);
  }

  else
  {

    v57 = v9;
    v56 = v64;
    v64(v57, v72);
  }

  v58 = sub_10052AADC(v33);
  if (v58[2])
  {
    sub_10007EBC0(&qword_1006B5CA8);
    v59 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v59 = &_swiftEmptyDictionarySingleton;
  }

  v75[0] = v59;
  sub_1002CC2B0(v58, 1, v75);

  v66(v75[0]);

  v56(v71, v72);
}

uint64_t sub_1002CC0B0(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_10052AC28(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

uint64_t sub_1002CC118(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1002CC264();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1002CC1AC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1002CB9C8(a1, a2, (v2 + v6), v8, v9);
}

unint64_t sub_1002CC264()
{
  result = qword_1006BA820;
  if (!qword_1006BA820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BA820);
  }

  return result;
}

void sub_1002CC2B0(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_10000726C(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_1001B8B88(v17, i & 1);
    v12 = sub_10000726C(v8, v7);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v20 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v26 = (v20[6] + 16 * v12);
    *v26 = v8;
    v26[1] = v7;
    *(v20[7] + 8 * v12) = v11;
    v27 = v20[2];
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v20[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v25 = v12;
  sub_1001BF8DC();
  v12 = v25;
  v20 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = v12;
  v22 = *(v20[7] + 8 * v12);

  v23 = v20[7];
  v24 = *(v23 + 8 * v21);
  *(v23 + 8 * v21) = v22;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v33 = *i;
      v34 = *a3;

      v7 = v33;
      v35 = sub_10000726C(v11, v6);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v16 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v16)
      {
        break;
      }

      v8 = v36;
      if (v34[3] < v39)
      {
        sub_1001B8B88(v39, 1);
        v35 = sub_10000726C(v11, v6);
        if ((v8 & 1) != (v40 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v29 = v35;
        v30 = *(v3[7] + 8 * v35);

        v31 = v3[7];
        v32 = *(v31 + 8 * v29);
        *(v31 + 8 * v29) = v30;
      }

      else
      {
        v3[(v35 >> 6) + 8] |= 1 << v35;
        v41 = (v3[6] + 16 * v35);
        *v41 = v11;
        v41[1] = v6;
        *(v3[7] + 8 * v35) = v7;
        v42 = v3[2];
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v43;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_1002CC550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6465646E61707865;
  if (v2 != 1)
  {
    v4 = 0x6E6F707365726E75;
    v3 = 0xEC00000065766973;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x77656976657270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6465646E61707865;
  if (*a2 != 1)
  {
    v8 = 0x6E6F707365726E75;
    v7 = 0xEC00000065766973;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x77656976657270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002CC664()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002CC710()
{
  String.hash(into:)();
}

Swift::Int sub_1002CC7A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002CC850@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002CE7FC(*a1);
  *a2 = result;
  return result;
}

void sub_1002CC880(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465646E61707865;
  if (v2 != 1)
  {
    v5 = 0x6E6F707365726E75;
    v4 = 0xEC00000065766973;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x77656976657270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *sub_1002CC8E8()
{
  *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_manufacturerLabel;
  v2 = type metadata accessor for FMDetailRowView();
  v3 = objc_allocWithZone(v2);
  *(v0 + v1) = sub_100248B20();
  v4 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber;
  v5 = objc_allocWithZone(v2);
  *(v0 + v4) = sub_100248B20();
  v6 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model;
  v7 = objc_allocWithZone(v2);
  *(v0 + v6) = sub_100248B20();
  v8 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware;
  v9 = objc_allocWithZone(v2);
  *(v0 + v8) = sub_100248B20();
  v10 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate;
  v11 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
  *(v0 + v10) = sub_100038758(0, 0, 0, 1);
  *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_pageType) = 0;
  v12 = [objc_opt_self() mainBundle];
  v19._object = 0x8000000100579A00;
  v13._countAndFlagsBits = 0xD000000000000022;
  v13._object = 0x800000010058DCA0;
  v14.value._object = 0x80000001005799E0;
  v19._countAndFlagsBits = 0xD000000000000018;
  v14.value._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v19);

  v16 = sub_1001C9F00();
  v17 = String._bridgeToObjectiveC()();
  [v16 setAccessibilityIdentifier:v17];

  return v16;
}

id sub_1002CCAF8()
{
  sub_1001CA254();
  v55 = *(v0 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_contentStackView);
  [v55 setAxis:1];
  [v55 setSpacing:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_manufacturerLabel);
  v56 = objc_opt_self();
  v2 = [v56 mainBundle];
  v58._object = 0x8000000100579A00;
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x800000010058DCF0;
  v4.value._object = 0x80000001005799E0;
  v58._countAndFlagsBits = 0xD000000000000018;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v58);

  *&v1[OBJC_IVAR____TtC6FindMy15FMDetailRowView_title] = v6;

  v7 = *&v1[OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel];
  v54 = v1;

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v10];

  v11 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber);
  v52 = v0;
  v12 = [v56 mainBundle];
  v59._object = 0x8000000100579A00;
  v13._countAndFlagsBits = 0xD000000000000023;
  v13._object = 0x800000010058DD40;
  v14.value._object = 0x80000001005799E0;
  v59._countAndFlagsBits = 0xD000000000000018;
  v14.value._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v59);

  *&v11[OBJC_IVAR____TtC6FindMy15FMDetailRowView_title] = v16;

  v17 = *&v11[OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel];
  v53 = v11;

  v18 = v17;
  v19 = String._bridgeToObjectiveC()();

  [v18 setText:v19];

  v20 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v20];

  v21 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model);
  v22 = [v56 mainBundle];
  v60._object = 0x8000000100579A00;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  v23._object = 0x800000010058DD70;
  v24.value._object = 0x80000001005799E0;
  v60._countAndFlagsBits = 0xD000000000000018;
  v24.value._countAndFlagsBits = 0xD000000000000013;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v60);

  *&v21[OBJC_IVAR____TtC6FindMy15FMDetailRowView_title] = v26;

  v27 = *&v21[OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel];

  v28 = v27;
  v29 = String._bridgeToObjectiveC()();

  [v28 setText:v29];

  v30 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityIdentifier:v30];

  v31 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware);
  v32 = [v56 mainBundle];
  v61._object = 0x8000000100579A00;
  v33._countAndFlagsBits = 0xD000000000000026;
  v33._object = 0x800000010058DD90;
  v34.value._object = 0x80000001005799E0;
  v61._countAndFlagsBits = 0xD000000000000018;
  v34.value._countAndFlagsBits = 0xD000000000000013;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v61);

  *&v31[OBJC_IVAR____TtC6FindMy15FMDetailRowView_title] = v36;

  v37 = *&v31[OBJC_IVAR____TtC6FindMy15FMDetailRowView_titleLabel];

  v38 = v37;
  v39 = String._bridgeToObjectiveC()();

  [v38 setText:v39];

  v31[OBJC_IVAR____TtC6FindMy15FMDetailRowView_separated] = 0;
  [*&v31[OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator] setHidden:1];
  v40 = String._bridgeToObjectiveC()();
  [v31 setAccessibilityIdentifier:v40];

  v41 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate);
  v42 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v43 = *&v41[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v44 = [v56 mainBundle];
  v62._object = 0x8000000100579A00;
  v45._countAndFlagsBits = 0xD00000000000002FLL;
  v45._object = 0x800000010058DDC0;
  v46.value._object = 0x80000001005799E0;
  v62._countAndFlagsBits = 0xD000000000000018;
  v46.value._countAndFlagsBits = 0xD000000000000013;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v62);

  v48 = String._bridgeToObjectiveC()();

  [v43 setText:v48];

  [v41 setHidden:1];
  v41[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment] = 0;
  sub_1004F4288();
  v49 = [*&v41[v42] text];
  [v41 setAccessibilityIdentifier:v49];

  [v55 addArrangedSubview:v54];
  [v55 addArrangedSubview:v53];
  [v55 addArrangedSubview:v21];
  [v55 addArrangedSubview:v31];
  v50 = *(v52 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_secondaryStackView);

  return [v50 addArrangedSubview:v41];
}

void sub_1002CD1F0()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleFirmwareUpdate"];
  [*(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate) addGestureRecognizer:v1];
}

id sub_1002CD270(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItemState();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = __chkstk_darwin(v2);
  v76 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v74 = &v74 - v5;
  v6 = type metadata accessor for FMIPItemBatteryStatus();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v74 - v11;
  v13 = type metadata accessor for FMIPProductType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v81 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v77 = &v74 - v18;
  __chkstk_darwin(v17);
  v20 = &v74 - v19;
  v85 = a1;
  FMIPItem.productType.getter();
  FMIPProductType.productInformation.getter();
  v21 = *(v14 + 8);
  v83 = v14 + 8;
  v84 = v13;
  v82 = v21;
  v21(v20, v13);
  if (v88)
  {
    sub_1000244BC(v87, v88);
    v22 = dispatch thunk of FMIPAnyProductInformation.appBundleIdentifier.getter();
    v24 = v23;
    sub_100006060(v87);
    if (v24)
    {
      v25 = swift_allocObject();
      v26 = v86;
      *(v25 + 16) = v86;
      v27 = v26;
      sub_1001CB548(v22, v24, 0, sub_1002CE92C, v25);

      goto LABEL_8;
    }
  }

  else
  {
    sub_1002CE87C(v87);
  }

  v28 = v86;
  [*&v86[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_manufacturerLabel] setHidden:0];
  [*&v28[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber] setHidden:0];
  [*&v28[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model] setHidden:0];
  [*&v28[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware] setHidden:0];
  v28[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionButtonHidden] = 1;
  sub_1001C9BC0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v86[OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isLockupViewHidden] = 1;
  sub_1001C9CE4();
LABEL_8:
  FMIPItem.batteryStatus.getter();
  v29 = *(v7 + 104);
  v29(v10, enum case for FMIPItemBatteryStatus.replace(_:), v6);
  sub_1002CE8E4(&qword_1006BA890, &type metadata accessor for FMIPItemBatteryStatus);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v7 + 8);
  v31(v10, v6);
  v31(v12, v6);
  if (v30)
  {
    FMIPItem.batteryStatus.getter();
    v29(v10, enum case for FMIPItemBatteryStatus.dead(_:), v6);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31(v10, v6);
    v31(v12, v6);
    v33 = v32 ^ 1;
  }

  else
  {
    v33 = 1;
  }

  v75 = v33;
  v34 = v74;
  FMIPItem.state.getter();
  v35 = v76;
  static FMIPItemState.isFirmwareUpdatePending.getter();
  sub_1002CE8E4(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v36 = v80;
  v78 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v37 = *(v79 + 8);
  v37(v35, v36);
  v37(v34, v36);
  FMIPItem.state.getter();
  static FMIPItemState.isFirmwareUpdating.getter();
  v38 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v37(v35, v36);
  v37(v34, v36);
  v39 = v86;
  v40 = *&v86[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber];
  v41 = FMIPItem.serialNumber.getter();
  v42 = (v40 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailText);
  *v42 = v41;
  v42[1] = v43;

  v44 = *(v40 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel);

  v45 = v44;
  v46 = String._bridgeToObjectiveC()();

  [v45 setText:v46];

  v47 = *&v39[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_manufacturerLabel];
  v48 = v77;
  FMIPItem.productType.getter();
  FMIPProductType.productInformation.getter();
  v82(v48, v84);
  if (v88)
  {
    sub_1000244BC(v87, v88);
    v49 = dispatch thunk of FMIPAnyProductInformation.manufacturerName.getter();
    v51 = v50;
    sub_100006060(v87);
  }

  else
  {
    sub_1002CE87C(v87);
    v49 = 0;
    v51 = 0;
  }

  v52 = (v47 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailText);
  *v52 = v49;
  v52[1] = v51;

  v53 = *(v47 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel);
  v54 = v53;
  if (v51)
  {

    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  [v53 setText:v55];

  v56 = v81;
  FMIPItem.productType.getter();
  FMIPProductType.productInformation.getter();
  v82(v56, v84);
  countAndFlagsBits = v88;
  if (v88)
  {
    sub_1000244BC(v87, v88);
    countAndFlagsBits = dispatch thunk of FMIPAnyProductInformation.modelName.getter();
    object = v58;
    sub_100006060(v87);
    v60 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v60 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v60)
    {

      v61 = [objc_opt_self() mainBundle];
      v89._object = 0x8000000100579A00;
      v62._countAndFlagsBits = 0xD000000000000021;
      v62._object = 0x800000010058DE20;
      v63.value._object = 0x80000001005799E0;
      v89._countAndFlagsBits = 0xD000000000000018;
      v63.value._countAndFlagsBits = 0xD000000000000013;
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v89);
      countAndFlagsBits = v65._countAndFlagsBits;
      object = v65._object;
    }
  }

  else
  {
    sub_1002CE87C(v87);
    object = 0;
  }

  v66 = *&v86[OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model];
  v67 = (v66 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailText);
  *v67 = countAndFlagsBits;
  v67[1] = object;

  v68 = *(v66 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel);
  v69 = v68;
  if (object)
  {

    v70 = String._bridgeToObjectiveC()();
  }

  else
  {
    v70 = 0;
  }

  [v68 setText:v70];

  v71 = FMIPItem.systemVersion.getter();
  sub_1002CDBE0(v38 & 1, v71, v72);

  return sub_1002CDEEC(v78 & 1, v75 & 1);
}

void sub_1002CDBE0(char a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_actionButton);
  v30 = a1 & 1;
  *(v6 + OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_showActivityIndicator) = a1;
  v7 = OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_activityIndicator;
  v8 = *(v6 + OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_activityIndicator);
  if (a1)
  {
    [v8 setHidden:0];
    [*(v6 + v7) startAnimating];
    v9 = [objc_opt_self() mainBundle];
    v33._object = 0x8000000100579A00;
    v10._countAndFlagsBits = 0xD000000000000022;
    v10._object = 0x800000010058DDF0;
    v11.value._object = 0x80000001005799E0;
    v33._countAndFlagsBits = 0xD000000000000018;
    v11.value._countAndFlagsBits = 0xD000000000000013;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v33);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  else
  {
    [v8 setHidden:1];
    [*(v6 + v7) stopAnimating];
    countAndFlagsBits = 0;
    object = 0;
  }

  v16 = (v6 + OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailText);
  *v16 = countAndFlagsBits;
  v16[1] = object;

  v17 = *(v6 + OBJC_IVAR____TtC6FindMy21FMActionAndInfoButton_detailLabel);
  if (object)
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v17 setText:v18];

  v19 = *(v3 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware);
  *(v19 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_showActivityIndicator) = v30;
  sub_100247CC8();
  if (a1)
  {
    v20 = [objc_opt_self() mainBundle];
    v34._object = 0x8000000100579A00;
    v21._countAndFlagsBits = 0xD000000000000022;
    v21._object = 0x800000010058DDF0;
    v22.value._object = 0x80000001005799E0;
    v34._countAndFlagsBits = 0xD000000000000018;
    v22.value._countAndFlagsBits = 0xD000000000000013;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v34);
    v25 = v24._countAndFlagsBits;
    a3 = v24._object;
  }

  else
  {

    v25 = a2;
  }

  v26 = (v19 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailText);
  *v26 = v25;
  v26[1] = a3;

  v27 = *(v19 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel);

  v28 = v27;
  v31 = String._bridgeToObjectiveC()();

  [v28 setText:v31];
}

id sub_1002CDEEC(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!*(v2 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_pageType))
  {

LABEL_6:
    v5 = 0;
    v6 = 1;
    goto LABEL_7;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    goto LABEL_6;
  }

  v6 = 0;
  v5 = 1;
LABEL_7:
  v7 = *(v2 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate);
  [v7 setHidden:v6];
  v8 = *(v2 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware);
  *(v8 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_separated) = v5;
  [*(v8 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_separator) setHidden:v6];
  v9 = *&v7[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = &selRef_systemBlueColor;
  v13 = a2 & 1;
  if (!v13)
  {
    v12 = &selRef_secondaryLabelColor;
  }

  v14 = [v10 *v12];
  [v11 setTextColor:v14];

  return [v7 setUserInteractionEnabled:v13];
}

void sub_1002CE0A8()
{
  *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_pageType) = 1;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1002CE848;
  *(v4 + 24) = v2;
  v6[4] = sub_1002CE854;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100004AE4;
  v6[3] = &unk_100634860;
  v5 = _Block_copy(v6);

  [v3 animateWithDuration:4 delay:v5 options:0 animations:0.3 completion:0.0];

  _Block_release(v5);
}

id sub_1002CE324()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber);
  v2 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView;
  v3 = [*(v1 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_horizontalStackView) distribution] == 3;
  v4 = *(v1 + v2);
  v5 = !v3;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [v4 setDistribution:v6];
  v7 = OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel;
  [*(v1 + OBJC_IVAR____TtC6FindMy15FMDetailRowView_detailLabel) setLineBreakMode:4 * v5];
  v8 = *(v1 + v7);

  return [v8 setNumberOfLines:v5];
}

uint64_t sub_1002CE41C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_manufacturerLabel);
  if (a1)
  {
    if (a1 == 1)
    {
      [v3 setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber) setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model) setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware) setHidden:0];
      *(v1 + OBJC_IVAR____TtC6FindMy39FMPlatterAppStoreInfoAndButtonGroupView_isActionButtonHidden) = 1;
      sub_1001C9BC0();
    }

    else
    {
      [v3 setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber) setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model) setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware) setHidden:0];
      [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate) setHidden:0];
    }
  }

  else
  {
    [v3 setHidden:1];
    [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber) setHidden:1];
    [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model) setHidden:1];
    [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware) setHidden:1];
    [*(v1 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate) setHidden:1];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1002CE5CC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002CE41C(a2);
  }

  return Strong == 0;
}

void sub_1002CE630()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate);
}

id sub_1002CE6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryDetailView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002CE7A8()
{
  result = qword_1006BA888;
  if (!qword_1006BA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BA888);
  }

  return result;
}

unint64_t sub_1002CE7FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1006226E8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002CE87C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B1328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CE8E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002CE92C(uint64_t a1)
{
  v2 = a1 != 0;
  *(*(v1 + 16) + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_pageType) = v2;
  return sub_1002CE41C(v2);
}

void sub_1002CE96C()
{
  *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_manufacturerLabel;
  v2 = type metadata accessor for FMDetailRowView();
  v3 = objc_allocWithZone(v2);
  *(v0 + v1) = sub_100248B20();
  v4 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_serialNumber;
  v5 = objc_allocWithZone(v2);
  *(v0 + v4) = sub_100248B20();
  v6 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_model;
  v7 = objc_allocWithZone(v2);
  *(v0 + v6) = sub_100248B20();
  v8 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmware;
  v9 = objc_allocWithZone(v2);
  *(v0 + v8) = sub_100248B20();
  v10 = OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_firmwareUpdate;
  v11 = objc_allocWithZone(type metadata accessor for FMSingleLinePlatterButton());
  *(v0 + v10) = sub_100038758(0, 0, 0, 1);
  *(v0 + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_pageType) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002CEAA0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  [v0 coordinate];
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  [v0 coordinate];
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = [v0 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  (*(v2 + 8))(v4, v1);
  Double.write<A>(to:)();
  return v9[0];
}

uint64_t sub_1002CEC38()
{
  result = sub_1002CEC58();
  qword_1006BA898 = result;
  return result;
}

uint64_t sub_1002CEC58()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v2];

    v3 = [objc_allocWithZone(GEOLatLng) initWithLatitude:31.8502665 longitude:125.094901];
    [v1 addVertex:v3];

    v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:36.7747537 longitude:133.334647];
    [v1 addVertex:v4];

    v5 = [objc_allocWithZone(GEOLatLng) initWithLatitude:39.1903306 longitude:130.434257];
    [v1 addVertex:v5];

    v6 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v6];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002CEE28()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_100622778;
    do
    {
      v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex:v4];

      v3 += 2;
      --v2;
    }

    while (v2);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1002CEF50()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  *&v0[v1] = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView;
  *&v0[v2] = [objc_allocWithZone(UITextView) init];
  v3 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_lengthCounterView;
  *&v0[v3] = [objc_allocWithZone(UILabel) init];
  *&v0[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = -1;
  v0[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled] = 1;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMLostModeSummaryTextView();
  v5 = objc_msgSendSuper2(&v8, "init");
  sub_1002CF0D0();
  sub_1002CF62C();
  v6 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

id sub_1002CF0D0()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView);
  *(inited + 40) = v3;
  v29 = v2;
  v27 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v29; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v5 = i;
    v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v5 setFont:v6];

    v7 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v7];

    [v5 setDelegate:v0];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setAdjustsFontForContentSizeCategory:1];
    [*(v0 + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter) addSubview:v5];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v9 = v8;
  v10 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v10];

  v11 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v11];

  [v9 setDelegate:v0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAdjustsFontForContentSizeCategory:1];
  [*(v0 + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter) addSubview:v9];

  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_lengthCounterView);
  LODWORD(v13) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v13];
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1005528C0;
  *(v14 + 32) = v12;
  result = v12;
  v16 = result;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = result;
LABEL_10:
    v18 = v17;
    [v17 setNumberOfLines:{0, v27}];
    [v18 setAdjustsFontForContentSizeCategory:1];
    v19 = [objc_opt_self() secondaryLabelColor];
    [v18 setTextColor:v19];

    v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v18 setFont:v20];

    swift_setDeallocating();
    swift_arrayDestroy();
    v21 = [objc_opt_self() sharedApplication];
    v22 = [v21 userInterfaceLayoutDirection] != 1;

    [v16 setTextAlignment:2 * v22];
    v23 = objc_opt_self();
    v24 = [v23 labelColor];
    [v29 setTextColor:v24];

    v25 = String._bridgeToObjectiveC()();
    [v29 setAccessibilityIdentifier:v25];

    v26 = [v23 placeholderTextColor];
    [v28 setTextColor:v26];

    [v28 setUserInteractionEnabled:0];
    return [*(v0 + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter) setDirectionalLayoutMargins:{7.0, 11.0, 7.0, 11.0}];
  }

  __break(1u);
  return result;
}

void sub_1002CF62C()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528C0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_lengthCounterView);
  *(inited + 32) = v2;
  v3 = v2;
  if ((inited & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_4;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

    swift_setDeallocating();
    swift_arrayDestroy();
    v6 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter;
    LODWORD(v7) = 1132068864;
    [*(v0 + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter) setContentHuggingPriority:1 forAxis:v7];
    v42 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1005521F0;
    v9 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
    v10 = [v9 leadingAnchor];
    v11 = [*(v0 + v6) layoutMarginsGuide];
    v12 = [v11 leadingAnchor];

    v13 = [v10 constraintEqualToAnchor:v12];
    *(v8 + 32) = v13;
    v14 = [v9 trailingAnchor];
    v15 = [*(v0 + v6) layoutMarginsGuide];
    v16 = [v15 trailingAnchor];

    v17 = [v14 constraintEqualToAnchor:v16];
    *(v8 + 40) = v17;
    v18 = [v9 topAnchor];
    v19 = [*(v0 + v6) layoutMarginsGuide];
    v20 = [v19 topAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 48) = v21;
    v22 = [v9 bottomAnchor];
    v23 = [*(v0 + v6) layoutMarginsGuide];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v8 + 56) = v25;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:isa];

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1005521F0;
    v28 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView);
    v29 = [v28 leadingAnchor];
    v30 = [v9 leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v27 + 32) = v31;
    v32 = [v28 trailingAnchor];
    v33 = [v9 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v27 + 40) = v34;
    v35 = [v28 topAnchor];
    v36 = [v9 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v27 + 48) = v37;
    v38 = [v28 bottomAnchor];
    v39 = [v9 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v27 + 56) = v40;
    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:v41];

    return;
  }

  __break(1u);
}

id sub_1002CFB70()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView);

  return [v8 setHidden:v7];
}

void sub_1002CFC18()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_lengthCounterView);
  if (*(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 16) > 1u || *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 16))
  {

    [v1 setHidden:1];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_lengthCounterView);
    [v1 setHidden:0];
    v3 = [*(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView) text];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.count.getter();

      v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v5);

      v6._countAndFlagsBits = 47;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8 = String._bridgeToObjectiveC()();

      [v2 setText:v8];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1002CFDB8()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType);
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 8);
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 16);

  return sub_1001443E8(v1, v2, v3);
}

id sub_1002CFE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeSummaryTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CFF88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = &v5[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType];
  if (v5[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 16] > 1u)
  {
    if (v5[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 16] != 2)
    {
      v15 = 1;
      return v15 & 1;
    }

    v14 = (sub_1002D0210)(a1, a2, a3, a4, a5);
  }

  else if (v5[OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType + 16])
  {
    v14 = (sub_1002D029C)(a1, a2, a3, a4, a5);
  }

  else
  {
    v11 = *v10;
    *(swift_allocObject() + 16) = v11;
    v14 = sub_1002D0660(a1, a2, a3, a4, a5);
  }

  v15 = v14;
  if (v10[16] <= 1u)
  {
    v16 = *(v10 + 1);
    if (v10[16])
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_20;
    }

    v18 = *v10 == a4 && v16 == a5;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v10[16] == 2)
  {
LABEL_19:
    [v6 textViewDidChange:a1];
  }

LABEL_20:

  return v15 & 1;
}

uint64_t sub_1002D01E4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

id sub_1002D0210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 updateTextView:a1 shouldChangeCharactersInRange:a2 replacementString:{a3, v7}];

  return v8;
}

BOOL sub_1002D029C(void *a1)
{
  v1 = [a1 text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Range<>.init(_:in:)();
  v4 = v3;

  return (v4 & 1) == 0;
}

BOOL sub_1002D0330(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = Range<>.init(_:in:)();
  if (v16)
  {

    return 0;
  }

  else
  {
    sub_10036E204(v14, v15, a4, a5, v11, v13);

    v18 = String.count.getter();

    return v18 <= a6;
  }
}

BOOL sub_1002D041C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a2)
        {
          if (a5)
          {
            if (a1 == a4 && a2 == a5)
            {
              return 1;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              return 1;
            }
          }
        }

        else if (!a5)
        {
          return 1;
        }
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    return a1 == a4;
  }

  return 0;
}

void sub_1002D04CC()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView;
  *(v0 + v1) = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_placeholderTextView;
  *(v0 + v2) = [objc_allocWithZone(UITextView) init];
  v3 = OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_lengthCounterView;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_validatorType;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -1;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_isEnabled) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002D05D0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100319D30(v0);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1002D0668()
{
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  result = *&qword_1006D4D20;
  qword_1006D4470 = qword_1006D4D20;
  return result;
}

char *sub_1002D06C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v63 = a6;
  v64 = a7;
  v61 = a4;
  v62 = a5;
  v58 = a3;
  v59 = a1;
  v60 = a2;
  v9 = sub_10007EBC0(&qword_1006B00C8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v58 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_identifier];
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v16 + 8))(v18, v15);
  *v19 = v20;
  v19[1] = v22;
  v23 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_location;
  v24 = type metadata accessor for FMFLocation();
  (*(*(v24 - 8) + 56))(&v8[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  v26 = type metadata accessor for FMFLabelledLocation();
  (*(*(v26 - 8) + 56))(&v8[v25], 1, 1, v26);
  *&v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem] = 0;
  v27 = &v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  v29 = type metadata accessor for FMFLocationAlertAddressType();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = &v8[v28];
  v33 = v58;
  v31(v32, 1, 1, v29);
  v34 = &v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 1;
  v37 = &v8[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v37 = 0;
  v37[8] = 1;
  v38 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  v39 = type metadata accessor for FMFAddress();
  (*(*(v39 - 8) + 56))(&v8[v38], 1, 1, v39);
  v40 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup;
  *&v8[v40] = dispatch_group_create();
  v41 = type metadata accessor for FMFenceMapTransientRecord();
  v65.receiver = v8;
  v65.super_class = v41;
  v42 = objc_msgSendSuper2(&v65, "init");
  v43 = &v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  v44 = v60;
  *v43 = v59;
  *(v43 + 1) = v44;
  v45 = v42;

  sub_100007204(v33, v12, &qword_1006B00C8);
  v46 = *(v30 + 48);
  if (v46(v12, 1, v29) == 1)
  {
    (*(v30 + 104))(v14, enum case for FMFLocationAlertAddressType.unknown(_:), v29);
    if (v46(v12, 1, v29) != 1)
    {
      sub_100012DF0(v12, &qword_1006B00C8);
    }
  }

  else
  {
    (*(v30 + 32))(v14, v12, v29);
  }

  v31(v14, 0, 1, v29);
  v47 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  swift_beginAccess();
  sub_1000BBF40(v14, &v45[v47], &qword_1006B00C8);
  swift_endAccess();
  v48 = &v45[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  v49 = v62;
  *v48 = v61;
  *(v48 + 1) = v49;

  countAndFlagsBits = v63;
  object = v64;
  if (!v64)
  {
    v52 = [objc_opt_self() mainBundle];
    v66._object = 0x800000010058E080;
    v53._object = 0x800000010058E060;
    v66._countAndFlagsBits = 0xD000000000000024;
    v53._countAndFlagsBits = 0xD000000000000012;
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v66);
    countAndFlagsBits = v55._countAndFlagsBits;
    object = v55._object;
  }

  sub_100012DF0(v33, &qword_1006B00C8);
  v56 = &v45[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v56 = countAndFlagsBits;
  v56[1] = object;

  return v45;
}

char *sub_1002D0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *&v131 = a4;
  v133 = a3;
  v120 = a2;
  v119 = a1;
  v6 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v6 - 8);
  v126 = &v114 - v7;
  v8 = type metadata accessor for FMFLocationAlertAddressType();
  v132 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B0040);
  v11 = __chkstk_darwin(v10 - 8);
  v127 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v121 = &v114 - v14;
  __chkstk_darwin(v13);
  v117 = &v114 - v15;
  v16 = sub_10007EBC0(&qword_1006B0038);
  v17 = __chkstk_darwin(v16 - 8);
  v114 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v116 = &v114 - v20;
  __chkstk_darwin(v19);
  v22 = &v114 - v21;
  v23 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v23 - 8);
  v25 = &v114 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_identifier];
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v27 + 8))(v29, v26);
  *v30 = v31;
  v30[1] = v33;
  v34 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_location;
  v35 = type metadata accessor for FMFLocation();
  v124 = *(v35 - 8);
  v125 = v35;
  v122 = *(v124 + 56);
  v123 = v124 + 56;
  v122(&v5[v34], 1, 1);
  v36 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  v37 = type metadata accessor for FMFLabelledLocation();
  (*(*(v37 - 8) + 56))(&v5[v36], 1, 1, v37);
  *&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem] = 0;
  v38 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = v132;
  v40 = *(v132 + 56);
  v40(&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType], 1, 1, v8);
  v41 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v43 = 0;
  *(v43 + 1) = 0;
  v43[16] = 1;
  v44 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v44 = 0;
  v44[8] = 1;
  v45 = v119;
  v46 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  v47 = type metadata accessor for FMFAddress();
  v129 = *(v47 - 8);
  *&v130 = v47;
  (*(v129 + 56))(&v5[v46], 1, 1);
  v48 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup;
  *&v5[v48] = dispatch_group_create();
  v49 = v120;
  v50 = type metadata accessor for FMFenceMapTransientRecord();
  v134.receiver = v5;
  v134.super_class = v50;
  v51 = objc_msgSendSuper2(&v134, "init");
  v52 = &v51[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v52 = v45;
  *(v52 + 1) = v49;
  v53 = v51;

  (*(v39 + 16))(v25, v133, v8);
  v128 = v8;
  v40(v25, 0, 1, v8);
  v54 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  swift_beginAccess();
  sub_1000BBF40(v25, &v53[v54], &qword_1006B00C8);
  swift_endAccess();
  FMFLocation.label.getter();
  v55 = type metadata accessor for FMFLabel();
  v56 = *(v55 - 8);
  v118 = *(v56 + 48);
  if (v118(v22, 1, v55) == 1)
  {
    sub_100012DF0(v22, &qword_1006B0038);

    goto LABEL_3;
  }

  v61 = FMFLabel.localizedValue.getter();
  v63 = v62;
  (*(v56 + 8))(v22, v55);
  if (v61 == v45 && v63 == v49)
  {

LABEL_18:
    v68 = 0;
    v73 = 0;
    v58 = v131;
LABEL_25:
    v76 = v125;
    v74 = v121;
    goto LABEL_28;
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v72)
  {
    goto LABEL_18;
  }

LABEL_3:
  v120 = v56;
  v57 = v116;
  v58 = v131;
  FMFLocation.label.getter();
  if (v118(v57, 1, v55) == 1)
  {
    sub_100012DF0(v57, &qword_1006B0038);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v59 = FMFLabel.localizedValue.getter();
    v60 = v64;
    (*(v120 + 8))(v57, v55);
  }

  v65 = v117;
  FMFLocation.address.getter();
  v67 = v129;
  v66 = v130;
  if ((*(v129 + 48))(v65, 1, v130) == 1)
  {
    sub_100012DF0(v65, &qword_1006B0040);
    if (!v60)
    {
      v68 = 0;
LABEL_24:
      v73 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v69 = FMFAddress.displayAddressWithStreetName.getter();
    v70 = v65;
    v68 = v71;
    (*(v67 + 8))(v70, v66);
    if (v60)
    {
      if (v68)
      {
        if (v59 == v69 && v60 == v68)
        {

          v68 = 0;
          goto LABEL_24;
        }

        v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v74 = v121;
        if (v113)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else if (!v68)
    {
      goto LABEL_24;
    }
  }

  v74 = v121;
LABEL_21:
  v75 = v114;
  FMFLocation.label.getter();
  if (v118(v75, 1, v55) != 1)
  {
    v77 = FMFLabel.localizedValue.getter();
    v78 = v75;
    v68 = v77;
    v73 = v79;
    (*(v120 + 8))(v78, v55);
    goto LABEL_27;
  }

  sub_100012DF0(v75, &qword_1006B0038);
LABEL_23:
  v68 = 0;
  v73 = 0;
LABEL_27:
  v76 = v125;
LABEL_28:
  v80 = &v53[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v80 = v68;
  v80[1] = v73;

  FMFLocation.address.getter();
  v82 = v129;
  v81 = v130;
  v83 = (*(v129 + 48))(v74, 1, v130);
  v84 = v128;
  v85 = v124;
  if (v83 == 1)
  {
    sub_100012DF0(v74, &qword_1006B0040);
    v86 = v132;
    v87 = v115;
    (*(v132 + 104))(v115, enum case for FMFLocationAlertAddressType.labelledLocation(_:), v84);
    sub_1002D4514();
    v88 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v86 + 8))(v87, v84);
    if (v88)
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v96 = [objc_opt_self() mainBundle];
      v135._object = 0x800000010058E080;
      v97._object = 0x800000010058E060;
      v135._countAndFlagsBits = 0xD000000000000024;
      v97._countAndFlagsBits = 0xD000000000000012;
      v98._countAndFlagsBits = 0;
      v98._object = 0xE000000000000000;
      v99 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v135);
      countAndFlagsBits = v99._countAndFlagsBits;
      object = v99._object;

      v58 = v131;
    }
  }

  else
  {
    *&v131 = v53;
    v91 = v81;
    v92 = v124;
    v93 = v128;
    v94 = v82;
    countAndFlagsBits = FMFAddress.formattedAddress.getter();
    object = v95;
    v53 = v131;
    (*(v94 + 8))(v74, v91);
    v84 = v93;
    v85 = v92;
  }

  v100 = &v53[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v100 = countAndFlagsBits;
  v100[1] = object;

  v101 = v126;
  (*(v85 + 16))(v126, v58, v76);
  (v122)(v101, 0, 1, v76);
  v102 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_location;
  swift_beginAccess();
  sub_1000BBF40(v101, &v53[v102], &qword_1006AF740);
  swift_endAccess();
  v103 = FMFLocation.location.getter();
  v104 = v103;
  if (v103)
  {
    [v103 coordinate];
    v130 = v105;
    v131 = v106;

    *&v107 = v130;
    *(&v107 + 1) = v131;
  }

  else
  {
    v107 = 0uLL;
  }

  v108 = &v53[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v108 = v107;
  v108[16] = v104 == 0;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v109 = &v53[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v109 = qword_1006D4D20;
  v109[8] = 0;
  v110 = v127;
  FMFLocation.address.getter();
  (*(v85 + 8))(v58, v76);
  (*(v132 + 8))(v133, v84);
  v111 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  swift_beginAccess();
  sub_1000BBF40(v110, &v53[v111], &qword_1006B0040);
  swift_endAccess();

  return v53;
}

char *sub_1002D1934(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v70 = a4;
  v71 = a5;
  v69 = a3;
  v66 = a1;
  v67 = a2;
  v7 = sub_10007EBC0(&qword_1006BA968);
  __chkstk_darwin(v7 - 8);
  v68 = &v63 - v8;
  v9 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_identifier];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v13 + 8))(v15, v12);
  *v16 = v17;
  v16[1] = v19;
  v20 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_location;
  v21 = type metadata accessor for FMFLocation();
  (*(*(v21 - 8) + 56))(&v6[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  v23 = type metadata accessor for FMFLabelledLocation();
  v24 = *(*(v23 - 8) + 56);
  v64 = *(v23 - 8);
  v65 = v24;
  v24(&v6[v22], 1, 1, v23);
  *&v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem] = 0;
  v25 = &v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  v27 = type metadata accessor for FMFLocationAlertAddressType();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(&v6[v26], 1, 1, v27);
  v30 = &v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = &v6[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v33 = 0;
  v33[8] = 1;
  v34 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  v35 = type metadata accessor for FMFAddress();
  (*(*(v35 - 8) + 56))(&v6[v34], 1, 1, v35);
  v36 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup;
  *&v6[v36] = dispatch_group_create();
  v37 = type metadata accessor for FMFenceMapTransientRecord();
  v72.receiver = v6;
  v72.super_class = v37;
  v38 = objc_msgSendSuper2(&v72, "init");
  v39 = &v38[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  v40 = v67;
  *v39 = v66;
  *(v39 + 1) = v40;
  v41 = v38;

  (*(v28 + 104))(v11, enum case for FMFLocationAlertAddressType.labelledLocation(_:), v27);
  v29(v11, 0, 1, v27);
  v42 = v23;
  v43 = v64;
  v44 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  swift_beginAccess();
  sub_1000BBF40(v11, &v41[v44], &qword_1006B00C8);
  swift_endAccess();
  v45 = [objc_opt_self() mainBundle];
  v73._object = 0x800000010058E100;
  v46._countAndFlagsBits = 0x4E49564C4F534552;
  v46._object = 0xE900000000000047;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0xD00000000000001BLL;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v73);

  *&v41[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress] = v48;
  v49 = v69;

  v50 = v68;
  (*(v43 + 16))(v68, v49, v42);
  v65(v50, 0, 1, v42);
  v51 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  swift_beginAccess();
  sub_1000BBF40(v50, &v41[v51], &qword_1006BA968);
  swift_endAccess();
  v52 = COERCE_DOUBLE(FMFLabelledLocation.latitude.getter());
  if (v53)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v52;
  }

  v55 = COERCE_DOUBLE(FMFLabelledLocation.longitude.getter());
  if (v56)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v55;
  }

  v58 = CLLocationCoordinate2DMake(v54, v57);
  v59 = &v41[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v59 = v58;
  LOBYTE(v59[1].latitude) = 0;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v60 = &v41[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v60 = qword_1006D4D20;
  v60[8] = 0;
  v61 = v70;
  sub_1002D3088(v70, v71);
  sub_10001835C(v61);

  (*(v43 + 8))(v49, v42);
  return v41;
}

char *sub_1002D1F7C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v91 = a5;
  v92 = a6;
  v89 = a4;
  v90 = a3;
  v87 = a1;
  v88 = a2;
  v8 = sub_10007EBC0(&qword_1006BA960);
  __chkstk_darwin(v8 - 8);
  v85 = &v83 - v9;
  v86 = type metadata accessor for FMFDefaultLabel();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v83 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_identifier];
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  *v18 = v19;
  v18[1] = v21;
  v22 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_location;
  v23 = type metadata accessor for FMFLocation();
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  v25 = type metadata accessor for FMFLabelledLocation();
  (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
  *&v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem] = 0;
  v26 = &v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  v28 = type metadata accessor for FMFLocationAlertAddressType();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(&v7[v27], 1, 1, v28);
  v31 = &v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  v34 = &v7[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v34 = 0;
  v34[8] = 1;
  v35 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  v36 = type metadata accessor for FMFAddress();
  (*(*(v36 - 8) + 56))(&v7[v35], 1, 1, v36);
  v37 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup;
  *&v7[v37] = dispatch_group_create();
  v38 = type metadata accessor for FMFenceMapTransientRecord();
  v98.receiver = v7;
  v98.super_class = v38;
  v39 = objc_msgSendSuper2(&v98, "init");
  v40 = &v39[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  v41 = v88;
  *v40 = v87;
  *(v40 + 1) = v41;
  v42 = v39;

  (*(v29 + 104))(v13, enum case for FMFLocationAlertAddressType.addressbook(_:), v28);
  v43 = v89;
  v30(v13, 0, 1, v28);
  v44 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  swift_beginAccess();
  sub_1000BBF40(v13, &v42[v44], &qword_1006B00C8);
  swift_endAccess();
  v45 = [v43 label];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = &v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v50 = v47;
  v50[1] = v49;

  v51 = [v43 label];
  if (v51)
  {
    v52 = v51;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.lowercased()();

    v53 = v85;
    FMFDefaultLabel.init(rawValue:)();
    v54 = v84;
    v55 = v86;
    if ((*(v84 + 48))(v53, 1, v86) == 1)
    {
      sub_100012DF0(v53, &qword_1006BA960);
    }

    else
    {
      v56 = v83;
      (*(v54 + 32))(v83, v53, v55);
      v57 = FMFDefaultLabel.localizedLabel.getter();
      v58 = v54;
      v59 = v57;
      v61 = v60;
      (*(v58 + 8))(v56, v55);
      *v50 = v59;
      v50[1] = v61;
    }
  }

  v62 = objc_opt_self();
  v63 = [v43 value];
  v64 = [v62 stringFromPostalAddress:v63 style:0];

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  v96 = v65;
  v97 = v67;
  v94 = 10;
  v95 = 0xE100000000000000;
  v68 = [objc_opt_self() mainBundle];
  v99._object = 0x800000010058E0D0;
  v69._object = 0x800000010058E0B0;
  v99._countAndFlagsBits = 0xD000000000000023;
  v69._countAndFlagsBits = 0xD000000000000011;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v99);

  v93 = v71;
  sub_100035F3C();
  v72 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v74 = v73;

  v75 = &v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v75 = v72;
  v75[1] = v74;

  *v75 = v72;
  v75[1] = v74;

  v76 = *&v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact];
  v77 = v90;
  *&v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact] = v90;
  v78 = v77;

  v79 = *&v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress];
  *&v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress] = v43;
  v80 = v43;

  v81 = v91;
  sub_1002D372C(v91, v92);
  sub_10001835C(v81);

  return v42;
}

void sub_1002D2770(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v88 = a4;
  v89 = a3;
  v86 = a2;
  v87 = a1;
  v6 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v6 - 8);
  v85 = v82 - v7;
  v8 = sub_10007EBC0(&qword_1006B00C8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v82 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_identifier];
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v15 + 8))(v17, v14);
  *v18 = v19;
  v18[1] = v21;
  v22 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_location;
  v23 = type metadata accessor for FMFLocation();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  v25 = type metadata accessor for FMFLabelledLocation();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  *&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_contact] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_cnAddress] = 0;
  *&v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem] = 0;
  v26 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  v28 = type metadata accessor for FMFLocationAlertAddressType();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v31 = &v5[v27];
  v32 = v86;
  v30(v31, 1, 1, v28);
  v33 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = &v5[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v36 = 0;
  v36[8] = 1;
  v37 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  v38 = type metadata accessor for FMFAddress();
  v39 = *(v38 - 8);
  v83 = *(v39 + 56);
  v84 = v38;
  v82[1] = v39 + 56;
  v83(&v5[v37], 1, 1);
  v40 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup;
  *&v5[v40] = dispatch_group_create();
  v41 = type metadata accessor for FMFenceMapTransientRecord();
  v95.receiver = v5;
  v95.super_class = v41;
  v42 = objc_msgSendSuper2(&v95, "init");
  v43 = &v42[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title];
  *v43 = v87;
  *(v43 + 1) = v32;
  v44 = v42;

  sub_100007204(v89, v11, &qword_1006B00C8);
  v45 = *(v29 + 48);
  if (v45(v11, 1, v28) == 1)
  {
    (*(v29 + 104))(v13, enum case for FMFLocationAlertAddressType.unknown(_:), v28);
    if (v45(v11, 1, v28) != 1)
    {
      sub_100012DF0(v11, &qword_1006B00C8);
    }
  }

  else
  {
    (*(v29 + 32))(v13, v11, v28);
  }

  v30(v13, 0, 1, v28);
  v46 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
  swift_beginAccess();
  sub_1000BBF40(v13, &v44[v46], &qword_1006B00C8);
  swift_endAccess();
  v47 = v88;
  v48 = [v88 placemark];
  v49 = [v48 name];

  if (v49)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = &v44[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue];
  *v53 = v50;
  v53[1] = v52;

  v54 = [v47 placemark];
  countAndFlagsBits = [v54 postalAddress];

  if (countAndFlagsBits)
  {

    v56 = [v47 placemark];
    v57 = [v56 postalAddress];

    if (!v57)
    {
      __break(1u);
      return;
    }

    v58 = [objc_opt_self() stringFromPostalAddress:v57 style:0];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v93 = v59;
    v94 = v61;
    v91 = 10;
    v92 = 0xE100000000000000;
    v62 = [objc_opt_self() mainBundle];
    v96._object = 0x800000010058E0D0;
    v63._object = 0x800000010058E0B0;
    v96._countAndFlagsBits = 0xD000000000000023;
    v63._countAndFlagsBits = 0xD000000000000011;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v96);

    v90 = v65;
    sub_100035F3C();
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v66;
  }

  else
  {

    object = 0;
  }

  v68 = &v44[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
  *v68 = countAndFlagsBits;
  *(v68 + 1) = object;

  if (!object)
  {
    v69 = [objc_opt_self() mainBundle];
    v97._object = 0x800000010058E080;
    v70._countAndFlagsBits = 0xD000000000000012;
    v70._object = 0x800000010058E060;
    v97._countAndFlagsBits = 0xD000000000000024;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v69, v71, v97);
    countAndFlagsBits = v72._countAndFlagsBits;
    object = v72._object;
  }

  *v68 = countAndFlagsBits;
  *(v68 + 1) = object;

  v73 = *&v44[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem];
  *&v44[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_mapItem] = v47;
  v74 = v47;

  [v74 _coordinate];
  v75 = &v44[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
  *v75 = v76;
  *(v75 + 1) = v77;
  v75[16] = 0;
  if (qword_1006AED88 != -1)
  {
    swift_once();
  }

  v78 = &v44[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
  *v78 = qword_1006D4D20;
  v78[8] = 0;
  v79 = [v74 placemark];
  v80 = v85;
  FMFAddress.init(from:)();

  sub_100012DF0(v89, &qword_1006B00C8);
  (v83)(v80, 0, 1, v84);
  v81 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
  swift_beginAccess();
  sub_1000BBF40(v80, &v44[v81], &qword_1006B0040);
  swift_endAccess();
}

void sub_1002D3088(void (*a1)(uint64_t), uint64_t a2)
{
  v31 = a2;
  v34 = a1;
  v3 = type metadata accessor for FMFLabelledLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006BA968);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v33 = *(v2 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup);
  dispatch_group_enter(v33);
  v13 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelledLocation;
  swift_beginAccess();
  v32 = v2;
  sub_100007204(v2 + v13, v12, &qword_1006BA968);
  v14 = v4[6];
  if (v14(v12, 1, v3))
  {
    goto LABEL_2;
  }

  v29 = v4[2];
  v30 = v4 + 2;
  v29(v6, v12, v3);
  sub_100012DF0(v12, &qword_1006BA968);
  v15 = FMFLabelledLocation.latitude.getter();
  v17 = v16;
  v18 = v4[1];
  v18(v6, v3);
  if (v17)
  {
    goto LABEL_4;
  }

  sub_100007204(v32 + v13, v10, &qword_1006BA968);
  if (v14(v10, 1, v3))
  {
    v12 = v10;
LABEL_2:
    sub_100012DF0(v12, &qword_1006BA968);
    goto LABEL_4;
  }

  v29(v6, v10, v3);
  sub_100012DF0(v10, &qword_1006BA968);
  v19 = FMFLabelledLocation.longitude.getter();
  v21 = v20;
  v18(v6, v3);
  if ((v21 & 1) == 0)
  {
    v22 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v15 longitude:*&v19];
    v23 = [objc_allocWithZone(CLGeocoder) init];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v26 = v34;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v31;
    aBlock[4] = sub_1002D45C0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100485DE8;
    aBlock[3] = &unk_100634A30;
    v27 = _Block_copy(aBlock);
    sub_100062900(v26);

    [v23 reverseGeocodeLocation:v22 completionHandler:v27];
    _Block_release(v27);

    return;
  }

LABEL_4:
  if (v34)
  {
    v34(v32);
  }

  dispatch_group_leave(v33);
}

void sub_1002D34B8(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for FMFAddress();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v15 = *(a1 + 32);
      }

      v16 = v15;
      FMFAddress.init(from:)();
      v17 = FMFAddress.formattedAddress.getter();
      v19 = v18;

      v20 = &v14[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress];
      *v20 = v17;
      v20[1] = v19;

      (*(v10 + 32))(v8, v12, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      v21 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
      swift_beginAccess();
      sub_1000BBF40(v8, &v14[v21], &qword_1006B0040);
      swift_endAccess();
    }
  }

  if (a4)
  {
    a4(v14);
  }

  dispatch_group_leave(*&v14[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup]);
}

void sub_1002D372C(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup);
  dispatch_group_enter(v5);
  if (*(v2 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress + 8))
  {
    v6 = objc_allocWithZone(CLGeocoder);

    v7 = [v6 init];
    v8 = String._bridgeToObjectiveC()();

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a1;
    v10[4] = a2;
    v12[4] = sub_1002D456C;
    v12[5] = v10;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100485DE8;
    v12[3] = &unk_1006349E0;
    v11 = _Block_copy(v12);
    sub_100062900(a1);

    [v7 geocodeAddressString:v8 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    if (a1)
    {
      a1(v2);
    }

    dispatch_group_leave(v5);
  }
}

void sub_1002D38FC(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), id a5)
{
  v10 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for FMFAddress();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:
        v47 = a5;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_39;
          }

          v20 = *(a1 + 32);
        }

        v21 = v20;
        v22 = [v20 region];
        v45 = v14;
        if (v22)
        {
          v23 = v22;
          objc_opt_self();
          v5 = swift_dynamicCastObjCClass();
          if (!v5)
          {
          }
        }

        else
        {
          v5 = 0;
        }

        v46 = a4;
        v14 = &selRef_initWithScrollView_edge_;
        v24 = [v21 location];
        a4 = v21;
        if (v24)
        {
          v25 = v24;
          [v24 coordinate];
          v6 = v26;
        }

        else
        {
          v6 = 0.0;
        }

        if (!v5)
        {
          goto LABEL_20;
        }

        a5 = v5;
        [a5 radius];
        if (qword_1006AEBC8 == -1)
        {
LABEL_17:
          v21 = a4;
          if (*&qword_1006D4470 < v18)
          {
            [a5 center];
            v6 = v27;
          }

LABEL_20:
          a4 = v46;
          v28 = v14[300];
          v46 = v21;
          v29 = [v21 v28];
          if (v29)
          {
            v30 = v29;
            [v29 coordinate];
            v32 = v31;
          }

          else
          {
            v32 = 0.0;
          }

          v33 = v45;
          if (v5)
          {
            v5 = v5;
            [v5 radius];
            if (qword_1006AEBC8 != -1)
            {
              v44 = v34;
              swift_once();
              v34 = v44;
            }

            if (*&qword_1006D4470 < v34)
            {
              [v5 center];
              v32 = v35;
            }

            v36 = CLLocationCoordinate2DMake(v6, v32);
            v37 = &v19[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
            *v37 = v36;
            LOBYTE(v37[1].latitude) = 0;
            [v5 radius];
          }

          else
          {
            v39 = CLLocationCoordinate2DMake(v6, v32);
            v40 = &v19[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate];
            *v40 = v39;
            LOBYTE(v40[1].latitude) = 0;
            v38 = 0;
          }

          v41 = &v19[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius];
          *v41 = v38;
          v41[8] = 0;
          FMFAddress.init(from:)();

          (v33[4])(v12, v16, v13);
          (v33[7])(v12, 0, 1, v13);
          v42 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
          swift_beginAccess();
          sub_1000BBF40(v12, &v19[v42], &qword_1006B0040);
          swift_endAccess();
          goto LABEL_31;
        }

LABEL_39:
        v43 = v18;
        swift_once();
        v18 = v43;
        goto LABEL_17;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

LABEL_31:
  if (a4)
  {
    a4(v19);
  }

  dispatch_group_leave(*&v19[OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup]);
}