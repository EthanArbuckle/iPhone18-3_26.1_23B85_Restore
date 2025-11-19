void sub_1000A3844()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v20._object = 0x800000010057B8A0;
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x800000010057B880;
  v20._countAndFlagsBits = 0xD000000000000027;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v20);

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v9 = v0;
  v10 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000BBEE8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100624B28;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  v14 = [v4 mainBundle];
  v21._object = 0x800000010057B8F0;
  v15._object = 0x800000010057B8D0;
  v21._countAndFlagsBits = 0xD000000000000025;
  v15._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

  v17 = String._bridgeToObjectiveC()();

  v18 = [v12 actionWithTitle:v17 style:0 handler:0];

  [v3 addAction:v18];
  [v3 addAction:v13];
  [v9 presentViewController:v3 animated:1 completion:0];
}

void sub_1000A3B40()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100579B60;
  v5._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v5._object = 0xEF454C5449545F4ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v11);

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = State.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100624BA0;
  v8 = _Block_copy(aBlock);

  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];
  _Block_release(v8);

  [v3 addAction:v9];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1000A3D48(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Fence.Error();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  __chkstk_darwin(v6);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v9 + 8))(v11, a1);
  }

  else
  {
    swift_allocError();
    (*(v9 + 32))(v12, v11, a1);
  }

  v13 = _convertErrorToNSError(_:)();

  v14 = [v13 domain];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v15 && v18 == v17)
  {

LABEL_16:
    if ([v13 code] != 2)
    {

      return 0;
    }

    v24 = [v13 userInfo];
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v25 + 16))
    {
      v28 = sub_10000726C(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
LABEL_51:

        __break(1u);
        return result;
      }

      sub_100006004(*(v25 + 56) + 32 * v28, v50);

      sub_1000072E4(v50, &v51);
      sub_10007EBC0(&qword_1006B0148);
      swift_dynamicCast();
      v31 = v49 + 64;
      v32 = 1 << *(v49 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v49 + 64);
      v35 = (v32 + 63) >> 6;

      v36 = 0;
      while (v34)
      {
LABEL_27:
        swift_getErrorValue();
        v38 = v48[6];
        swift_errorRetain();
        if (sub_100271D20(v38) == 22)
        {

          return 1;
        }

        v34 &= v34 - 1;
        swift_getErrorValue();
        v39 = sub_100271D20(v48[2]);

        if (v39 == 33)
        {

          return 1;
        }
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v37 >= v35)
        {

          goto LABEL_32;
        }

        v34 = *(v31 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_16;
  }

  if (static Fence.Error.errorDomain.getter() == v15 && v21 == v17)
  {

LABEL_35:

    v41 = [v13 code];
    (*(v5 + 104))(v8, enum case for Fence.Error.appUpgradeNeeded(_:), v4);
    v42 = Fence.Error.rawValue.getter();

    (*(v5 + 8))(v8, v4);
    return v41 == v42;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_35;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v15 || v44 != v17)
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_48;
    }

LABEL_32:

    return 0;
  }

LABEL_48:
  v47 = [v13 code];

  return v47 == 0;
}

void sub_1000A4330()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v18._object = 0x8000000100579B60;
  v6._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v6._object = 0xEF454C5449545F4ELL;
  v18._countAndFlagsBits = 0xD000000000000021;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v18);

  v8 = String._bridgeToObjectiveC()();

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v8 style:0 handler:0];

  v11 = [v4 mainBundle];
  v19._object = 0x800000010057B940;
  v12._object = 0x800000010057B920;
  v19._countAndFlagsBits = 0xD000000000000029;
  v12._countAndFlagsBits = 0xD000000000000017;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v19);

  v14 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000B5A2C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100624B78;
  v15 = _Block_copy(aBlock);

  v16 = [v9 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v3 addAction:v16];
  [v3 addAction:v10];
  [v0 presentViewController:v3 animated:1 completion:0];
}

BOOL sub_1000A4614(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_10007EBC0(&unk_1006B0130);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = *(a1 - 8);
  v8 = __chkstk_darwin(v4);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Fence.Error();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  My = type metadata accessor for Feature.FindMy();
  v39[3] = My;
  v39[4] = sub_1000BBEF8(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v21 = sub_100008FC0(v39);
  (*(*(My - 8) + 104))(v21, enum case for Feature.FindMy.fencesMigration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v39);
  v22 = *(v7 + 16);
  if (My)
  {
    v22(v12, v37, a1);
    v23 = swift_dynamicCast();
    v24 = *(v14 + 56);
    if (v23)
    {
      v24(v6, 0, 1, v13);
      (*(v14 + 32))(v19, v6, v13);
      (*(v14 + 104))(v17, enum case for Fence.Error.noMeDevice(_:), v13);
      sub_1000BBEF8(&qword_1006B0140, &type metadata accessor for Fence.Error);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v25 = *(v14 + 8);
      v25(v17, v13);
      v25(v19, v13);
      return v39[0] == v38;
    }

    v24(v6, 1, 1, v13);
    sub_100012DF0(v6, &unk_1006B0130);
    return 0;
  }

  v22(v10, v37, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v7 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v7 + 32))(v27, v10, a1);
  }

  v28 = _convertErrorToNSError(_:)();

  v29 = [v28 domain];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {

LABEL_12:
    v35 = [v28 code];

    return v35 == 4;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_12;
  }

  return 0;
}

void sub_1000A4B44(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = a4;
  v149 = a3;
  v144 = a2;
  v151 = a1;
  v5 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v5 - 8);
  v134 = v122 - v6;
  v141 = type metadata accessor for FMFLocation();
  v140 = *(v141 - 8);
  v7 = __chkstk_darwin(v141);
  v133 = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v136 = v122 - v9;
  v10 = sub_10007EBC0(&qword_1006AF740);
  v11 = __chkstk_darwin(v10 - 8);
  v138 = v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v139 = v122 - v13;
  v14 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v14 - 8);
  v135 = v122 - v15;
  v16 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v16 - 8);
  v146 = v122 - v17;
  v148 = type metadata accessor for Date();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v142 = v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for FMFLocationAlertTriggerType();
  v19 = *(v154 - 1);
  v20 = __chkstk_darwin(v154);
  v137 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v132 = v122 - v23;
  v24 = __chkstk_darwin(v22);
  v153 = v122 - v25;
  __chkstk_darwin(v24);
  v152 = v122 - v26;
  v27 = sub_10007EBC0(&qword_1006B0050);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v122 - v31;
  v33 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert;
  sub_100007204(&v4[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], v122 - v31, &qword_1006B0050);
  v34 = type metadata accessor for FMFFriend();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v32, 1, v34) == 1)
  {
    sub_100012DF0(v32, &qword_1006B0050);
    return;
  }

  v130 = v19;
  v145 = FMFFriend.name.getter();
  v143 = v37;
  v38 = *(v35 + 8);
  v38(v32, v34);
  v39 = v4;
  sub_100007204(&v4[v33], v30, &qword_1006B0050);
  if (v36(v30, 1, v34) == 1)
  {
    sub_100012DF0(v30, &qword_1006B0050);
LABEL_7:
    v43 = v39;
    v42 = v143;
    goto LABEL_8;
  }

  v40 = FMFFriend.shortName.getter();
  v42 = v41;
  v38(v30, v34);
  if (!v42)
  {
    goto LABEL_7;
  }

  v145 = v40;
  v43 = v39;
LABEL_8:
  v131 = objc_opt_self();
  v44 = [v131 mainBundle];
  v45._countAndFlagsBits = 0xD000000000000033;
  v165._countAndFlagsBits = 0xD000000000000045;
  v165._object = 0x800000010057B450;
  v45._object = 0x800000010057B410;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v165);

  v127 = sub_10007EBC0(&unk_1006B20B0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100552220;
  *(v47 + 56) = &type metadata for String;
  v126 = sub_10008EE84();
  *(v47 + 64) = v126;
  v48 = v145;
  *(v47 + 32) = v145;
  *(v47 + 40) = v42;

  v128 = String.init(format:_:)();
  v129 = v49;

  v50 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  swift_beginAccess();
  v51 = v130;
  v52 = *(v130 + 16);
  v125 = v50;
  v53 = v43;
  v54 = v154;
  v124 = v52;
  v122[1] = v130 + 16;
  v52(v152, &v43[v50], v154);
  v123 = *(v51 + 104);
  v123(v153, enum case for FMFLocationAlertTriggerType.scheduled(_:), v54);
  v55 = sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v122[2] = v55;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock != v157 || (v56 = v151, v160 != v158))
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)() & v151;
  }

  v57 = *(v51 + 8);
  v58 = v154;
  v57(v153, v154);
  v153 = v57;
  v57(v152, v58);

  if (v56)
  {
    v59 = v146;
    v60 = v53;
    sub_10009D820(v146);
    v61 = v147;
    v62 = v148;
    if ((*(v147 + 48))(v59, 1, v148) != 1)
    {

      v69 = v142;
      (*(v61 + 32))(v142, v59, v62);
      v70 = sub_1000A6BE8(v69);
      sub_1000A7154(v69, v70, v71, v48, v42);

      (*(v61 + 8))(v69, v62);
      v63 = v131;
      goto LABEL_21;
    }

    sub_100012DF0(v59, &unk_1006B0000);
    goto LABEL_14;
  }

  v60 = v53;
  if (v53[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating] != 1 || (v151 & 1) == 0)
  {
LABEL_19:

    v63 = v131;
    goto LABEL_21;
  }

  v143 = v42;
  v64 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v65 = v139;
  sub_100007204(&v53[v64], v139, &qword_1006AF740);
  v66 = v140;
  v67 = *(v140 + 48);
  v68 = v141;
  if (v67(v65, 1, v141))
  {
    sub_100012DF0(v65, &qword_1006AF740);
  }

  else
  {
    v91 = v136;
    (*(v66 + 16))(v136, v65, v68);
    sub_100012DF0(v65, &qword_1006AF740);
    v92 = v135;
    FMFLocation.label.getter();
    (*(v66 + 8))(v91, v68);
    v93 = type metadata accessor for FMFLabel();
    v94 = *(v93 - 8);
    if ((*(v94 + 48))(v92, 1, v93) != 1)
    {
      v102 = FMFLabel.localizedValue.getter();
      v104 = v103;
      (*(v94 + 8))(v92, v93);
      goto LABEL_35;
    }

    sub_100012DF0(v92, &qword_1006B0038);
    v68 = v141;
    v66 = v140;
  }

  v95 = &v60[v64];
  v96 = v138;
  sub_100007204(v95, v138, &qword_1006AF740);
  if (v67(v96, 1, v68))
  {
    sub_100012DF0(v96, &qword_1006AF740);
    goto LABEL_19;
  }

  v97 = v133;
  (*(v66 + 16))(v133, v96, v68);
  sub_100012DF0(v96, &qword_1006AF740);
  v98 = v66;
  v99 = v134;
  FMFLocation.address.getter();
  (*(v98 + 8))(v97, v68);
  v100 = type metadata accessor for FMFAddress();
  v101 = *(v100 - 8);
  if ((*(v101 + 48))(v99, 1, v100) != 1)
  {
    v105 = FMFAddress.formattedAddressLines.getter();
    (*(v101 + 8))(v99, v100);
    v63 = v131;
    if (!v105)
    {

      goto LABEL_21;
    }

    if (!v105[2])
    {

      goto LABEL_21;
    }

    v102 = v105[4];
    v104 = v105[5];

LABEL_35:

    v106 = v132;
    v107 = v154;
    v124(v132, &v60[v125], v154);
    v123(v137, enum case for FMFLocationAlertTriggerType.arriving(_:), v107);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v155 && v160 == v156)
    {
      v109 = v153;
      v108 = v154;
      (v153)(v137, v154);
      v109(v106, v108);

      v110 = "SAGE_WITH_FRIEND_LEAVES";
      v111 = 0xD000000000000048;
    }

    else
    {
      v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v114 = v153;
      v113 = v154;
      (v153)(v137, v154);
      v114(v106, v113);

      if (v112)
      {
        v111 = 0xD000000000000048;
      }

      else
      {
        v111 = 0xD000000000000047;
      }

      if (v112)
      {
        v110 = "SAGE_WITH_FRIEND_LEAVES";
      }

      else
      {
        v110 = "g LOCATION_ALERT_CONFIRM";
      }
    }

    v63 = v131;
    v115 = [v131 mainBundle];
    v116.value._countAndFlagsBits = 0xD000000000000012;
    v168._countAndFlagsBits = 0xD000000000000017;
    v168._object = 0x800000010057ABB0;
    v117._object = (v110 | 0x8000000000000000);
    v116.value._object = 0x800000010057AB90;
    v117._countAndFlagsBits = v111;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v117, v116, v115, v118, v168);

    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_100552210;
    v120 = v126;
    *(v119 + 56) = &type metadata for String;
    *(v119 + 64) = v120;
    v121 = v143;
    *(v119 + 32) = v145;
    *(v119 + 40) = v121;
    *(v119 + 96) = &type metadata for String;
    *(v119 + 104) = v120;
    *(v119 + 72) = v102;
    *(v119 + 80) = v104;
    String.init(format:_:)();

    goto LABEL_21;
  }

  sub_100012DF0(v99, &qword_1006B0040);

LABEL_14:
  v63 = v131;
LABEL_21:
  v72 = String._bridgeToObjectiveC()();

  v73 = [objc_opt_self() alertControllerWithTitle:0 message:v72 preferredStyle:0];

  v74 = [v63 mainBundle];
  v166._countAndFlagsBits = 0xD00000000000001FLL;
  v166._object = 0x800000010057B4A0;
  v75._countAndFlagsBits = 0x425F4C45434E4143;
  v75._object = 0xED00004E4F545455;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v166);

  v77 = swift_allocObject();
  *(v77 + 16) = v60;
  v154 = v60;
  v78 = String._bridgeToObjectiveC()();

  v163 = sub_1000BBED8;
  v164 = v77;
  aBlock = _NSConcreteStackBlock;
  v160 = 1107296256;
  v161 = sub_100017328;
  v162 = &unk_100624970;
  v79 = _Block_copy(&aBlock);

  v80 = objc_opt_self();
  v81 = [v80 actionWithTitle:v78 style:1 handler:v79];
  _Block_release(v79);

  v82 = [v63 mainBundle];
  v83._countAndFlagsBits = 0xD000000000000016;
  v167._countAndFlagsBits = 0xD000000000000028;
  v167._object = 0x800000010057B4E0;
  v83._object = 0x800000010057B4C0;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v167);

  v85 = swift_allocObject();
  *(v85 + 16) = v149;
  *(v85 + 24) = v150;

  v86 = String._bridgeToObjectiveC()();

  v163 = sub_100009624;
  v164 = v85;
  aBlock = _NSConcreteStackBlock;
  v160 = 1107296256;
  v161 = sub_100017328;
  v162 = &unk_1006249C0;
  v87 = _Block_copy(&aBlock);

  v88 = [v80 actionWithTitle:v86 style:0 handler:v87];
  _Block_release(v87);

  [v73 addAction:v81];
  [v73 addAction:v88];
  v162 = &type metadata for SolariumFeatureFlag;
  v163 = sub_10000BD04();
  LOBYTE(v86) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  if (v86)
  {
    v89 = [v73 popoverPresentationController];
    if (v89)
    {
      v90 = v89;
      [v89 setBarButtonItem:v144];
    }
  }

  [v154 presentViewController:v73 animated:1 completion:0];
}

void sub_1000A5F28(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v5[4] = sub_100097224;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100004AE4;
  v5[3] = &unk_100624A10;
  v4 = _Block_copy(v5);

  [a2 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

void sub_1000A5FF4(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for FMFLocationAlertTriggerType();
  v22 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for FMFLocationAlertTarget();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
  if (v13)
  {
    [v13 setEnabled:0];
  }

  (*(v10 + 104))(v12, enum case for FMFLocationAlertTarget.alertMe(_:), v9);
  sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v26 == v28 && v27 == v29)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v10 + 8))(v12, v9);

    if ((v14 & 1) == 0)
    {
      sub_10009EA98();
      return;
    }
  }

  if (v1[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating])
  {
    v15 = 1;
  }

  else
  {
    v16 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    v17 = v22;
    (*(v22 + 16))(v8, &v1[v16], v3);
    (*(v17 + 104))(v6, enum case for FMFLocationAlertTriggerType.scheduled(_:), v3);
    sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v28 == v24 && v29 == v25)
    {
      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v18 = *(v17 + 8);
    v18(v6, v3);
    v18(v8, v3);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  v20 = v2;
  sub_1000A4B44(v15 & 1, v23, sub_1000BBEB4, v19);
}

void sub_1000A649C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for FMFLocationAlert();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  sub_100007204(v1 + v12, v4, &unk_1006BEF80);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BEF80);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No location alert to be removed", v16, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    type metadata accessor for FMFRemoveLocationAlertAction();
    swift_allocObject();
    v17 = FMFRemoveLocationAlertAction.init(locationAlert:)();
    sub_100437A74(0);
    v18 = swift_allocObject();
    *(v18 + 16) = v1;

    v19 = v1;
    sub_1000FB600(v17, sub_1000BBEAC, v18);

    (*(v6 + 8))(v11, v5);
  }
}

void sub_1000A67FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100005B4C(v9, v10, aBlock);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error removing the location alert - %s", v7, 0xCu);
      sub_100006060(v8);
    }

    else
    {
    }
  }

  sub_1003EB538(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  aBlock[4] = sub_1000822F4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006248F8;
  v13 = _Block_copy(aBlock);

  [a3 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
}

int64_t sub_1000A6A44(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView) numberOfRowsInSection:a1];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = _swiftEmptyArrayStorage;
    if (result)
    {
      v14 = _swiftEmptyArrayStorage;
      sub_1001672E8(0, result, 0);
      v10 = 0;
      v9 = v14;
      do
      {
        IndexPath.init(row:section:)();
        v14 = v9;
        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          sub_1001672E8(v11 > 1, v12 + 1, 1);
          v9 = v14;
        }

        ++v10;
        v9[2] = v12 + 1;
        (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v6, v3);
      }

      while (v8 != v10);
    }

    return v9;
  }

  return result;
}

uint64_t sub_1000A6BE8(uint64_t a1)
{
  v39 = a1;
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v36 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10007EBC0(&qword_1006B00F0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v34[-v7];
  v9 = sub_10007EBC0(&qword_1006AFFF8);
  v10 = __chkstk_darwin(v9 - 8);
  v38 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v40 = &v34[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v34[-v15];
  __chkstk_darwin(v14);
  v18 = &v34[-v17];
  v19 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  swift_beginAccess();
  v37 = v19;
  sub_100007204(v1 + v19, v18, &qword_1006AFFF8);
  static TimeZone.current.getter();
  (*(v3 + 56))(v16, 0, 1, v2);
  v20 = *(v6 + 56);
  sub_100007204(v18, v8, &qword_1006AFFF8);
  sub_100007204(v16, &v8[v20], &qword_1006AFFF8);
  v41 = v3;
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) != 1)
  {
    sub_100007204(v8, v40, &qword_1006AFFF8);
    if (v21(&v8[v20], 1, v2) != 1)
    {
      v23 = v36;
      (*(v41 + 32))(v36, &v8[v20], v2);
      sub_1000BBEF8(&qword_1006B00F8, &type metadata accessor for TimeZone);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v41 + 8);
      v24(v23, v2);
      sub_100012DF0(v16, &qword_1006AFFF8);
      sub_100012DF0(v18, &qword_1006AFFF8);
      v24(v40, v2);
      sub_100012DF0(v8, &qword_1006AFFF8);
      if (v35)
      {
        goto LABEL_9;
      }

LABEL_7:
      v22 = &OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterWithTimezone;
      goto LABEL_10;
    }

    sub_100012DF0(v16, &qword_1006AFFF8);
    sub_100012DF0(v18, &qword_1006AFFF8);
    (*(v41 + 8))(v40, v2);
LABEL_6:
    sub_100012DF0(v8, &qword_1006B00F0);
    goto LABEL_7;
  }

  sub_100012DF0(v16, &qword_1006AFFF8);
  sub_100012DF0(v18, &qword_1006AFFF8);
  if (v21(&v8[v20], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_100012DF0(v8, &qword_1006AFFF8);
LABEL_9:
  v22 = &OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterNoTimezone;
LABEL_10:
  v25 = *(v1 + *v22);
  v26 = v38;
  sub_100007204(v1 + v37, v38, &qword_1006AFFF8);
  v27 = v21(v26, 1, v2);
  v28 = v25;
  if (v27 == 1)
  {
    isa = 0;
  }

  else
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v41 + 8))(v26, v2);
  }

  [v28 setTimeZone:isa];

  v30 = Date._bridgeToObjectiveC()().super.isa;
  v31 = [v28 stringFromDate:v30];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v32;
}

uint64_t sub_1000A7154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v102 = a3;
  v99 = a4;
  v100 = a2;
  v108 = a1;
  v106 = sub_10007EBC0(&unk_1006B00E0);
  v6 = __chkstk_darwin(v106);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v89 - v8;
  v107 = type metadata accessor for Date();
  v103 = *(v107 - 8);
  v10 = __chkstk_darwin(v107);
  v95 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v93 = &v89 - v13;
  __chkstk_darwin(v12);
  v15 = &v89 - v14;
  v16 = sub_10007EBC0(&unk_1006B0000);
  v17 = __chkstk_darwin(v16 - 8);
  v90 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v97 = &v89 - v20;
  v21 = __chkstk_darwin(v19);
  v98 = &v89 - v22;
  v23 = __chkstk_darwin(v21);
  v94 = &v89 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v89 - v26;
  __chkstk_darwin(v25);
  v105 = &v89 - v28;
  v29 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v29 - 8);
  v31 = &v89 - v30;
  v91 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_dateFormatter;
  v32 = *(v5 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_dateFormatter);
  v33 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  swift_beginAccess();
  v92 = v5;
  sub_100007204(v5 + v33, v31, &qword_1006AFFF8);
  v34 = type metadata accessor for TimeZone();
  v35 = *(v34 - 8);
  LODWORD(v33) = (*(v35 + 48))(v31, 1, v34);
  v36 = v32;
  isa = 0;
  if (v33 != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v35 + 8))(v31, v34);
  }

  [v36 setTimeZone:isa];

  v38 = v105;
  sub_1000C95EC(v105);
  Date.init()();
  sub_1000C95EC(v27);
  v39 = v103;
  v40 = v107;
  v104 = *(v103 + 8);
  v104(v15, v107);
  v41 = *(v106 + 48);
  sub_100007204(v38, v9, &unk_1006B0000);
  sub_100007204(v27, &v9[v41], &unk_1006B0000);
  v42 = *(v39 + 48);
  if (v42(v9, 1, v40) == 1)
  {
    sub_100012DF0(v27, &unk_1006B0000);
    sub_100012DF0(v38, &unk_1006B0000);
    if (v42(&v9[v41], 1, v40) == 1)
    {
      sub_100012DF0(v9, &unk_1006B0000);
LABEL_17:
      v71 = "_MESSAGE_WITH_FRIEND_TOMORROW";
      v72 = [objc_opt_self() mainBundle];
      v88 = 0x800000010057ABB0;
      v73 = 0xD00000000000003ALL;
LABEL_20:
      v78 = v71 | 0x8000000000000000;
      v79.value._object = 0x800000010057AB90;
      v80 = 0xD000000000000017;
      v79.value._countAndFlagsBits = 0xD000000000000012;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v73, v79, v72, v81, *(&v88 - 1));

      sub_10007EBC0(&unk_1006B20B0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100552210;
      *(v82 + 56) = &type metadata for String;
      v83 = sub_10008EE84();
      v84 = v100;
      v85 = v101;
      *(v82 + 32) = v99;
      *(v82 + 40) = v85;
      *(v82 + 96) = &type metadata for String;
      *(v82 + 104) = v83;
      *(v82 + 64) = v83;
      *(v82 + 72) = v84;
      *(v82 + 80) = v102;

      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v43 = v94;
  sub_100007204(v9, v94, &unk_1006B0000);
  if (v42(&v9[v41], 1, v40) == 1)
  {
    sub_100012DF0(v27, &unk_1006B0000);
    sub_100012DF0(v105, &unk_1006B0000);
    v104(v43, v40);
LABEL_8:
    sub_100012DF0(v9, &unk_1006B00E0);
    goto LABEL_9;
  }

  v66 = &v9[v41];
  v67 = v93;
  (*(v103 + 32))(v93, v66, v40);
  sub_1000BBEF8(&qword_1006C1DC0, &type metadata accessor for Date);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = v43;
  v70 = v104;
  v104(v67, v40);
  sub_100012DF0(v27, &unk_1006B0000);
  sub_100012DF0(v105, &unk_1006B0000);
  v70(v69, v40);
  sub_100012DF0(v9, &unk_1006B0000);
  if (v68)
  {
    goto LABEL_17;
  }

LABEL_9:
  v44 = v98;
  sub_1000C95EC(v98);
  v45 = v95;
  Date.init()();
  v46 = v97;
  sub_1000C9954(v97);
  v47 = v107;
  v104(v45, v107);
  v48 = *(v106 + 48);
  v49 = v96;
  sub_100007204(v44, v96, &unk_1006B0000);
  sub_100007204(v46, v49 + v48, &unk_1006B0000);
  if (v42(v49, 1, v47) == 1)
  {
    sub_100012DF0(v46, &unk_1006B0000);
    sub_100012DF0(v44, &unk_1006B0000);
    if (v42((v49 + v48), 1, v47) == 1)
    {
      sub_100012DF0(v49, &unk_1006B0000);
LABEL_19:
      v71 = "_MESSAGE_WITH_FRIEND_DATE";
      v72 = [objc_opt_self() mainBundle];
      v88 = 0x800000010057ABB0;
      v73 = 0xD00000000000003DLL;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v50 = v90;
  sub_100007204(v49, v90, &unk_1006B0000);
  if (v42((v49 + v48), 1, v47) == 1)
  {
    sub_100012DF0(v97, &unk_1006B0000);
    sub_100012DF0(v98, &unk_1006B0000);
    v104(v50, v47);
LABEL_14:
    sub_100012DF0(v49, &unk_1006B00E0);
    goto LABEL_15;
  }

  v74 = v49 + v48;
  v75 = v93;
  (*(v103 + 32))(v93, v74, v47);
  sub_1000BBEF8(&qword_1006C1DC0, &type metadata accessor for Date);
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v77 = v104;
  v104(v75, v47);
  sub_100012DF0(v97, &unk_1006B0000);
  sub_100012DF0(v98, &unk_1006B0000);
  v77(v50, v47);
  sub_100012DF0(v49, &unk_1006B0000);
  if (v76)
  {
    goto LABEL_19;
  }

LABEL_15:
  v51 = *(v92 + v91);
  v52 = Date._bridgeToObjectiveC()().super.isa;
  v53 = [v51 stringFromDate:v52];

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  v57 = [objc_opt_self() mainBundle];
  v109._object = 0x800000010057ABB0;
  v58._countAndFlagsBits = 0xD000000000000039;
  v58._object = 0x800000010057B350;
  v59.value._object = 0x800000010057AB90;
  v109._countAndFlagsBits = 0xD000000000000017;
  v59.value._countAndFlagsBits = 0xD000000000000012;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v109);

  sub_10007EBC0(&unk_1006B20B0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1005528D0;
  *(v61 + 56) = &type metadata for String;
  v62 = sub_10008EE84();
  v63 = v100;
  v64 = v101;
  *(v61 + 32) = v99;
  *(v61 + 40) = v64;
  *(v61 + 96) = &type metadata for String;
  *(v61 + 104) = v62;
  *(v61 + 64) = v62;
  *(v61 + 72) = v54;
  *(v61 + 80) = v56;
  *(v61 + 136) = &type metadata for String;
  *(v61 + 144) = v62;
  v65 = v102;
  *(v61 + 112) = v63;
  *(v61 + 120) = v65;

LABEL_21:
  v86 = String.init(format:_:)();

  return v86;
}

uint64_t sub_1000A7D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v3 = type metadata accessor for FMFLocationAlertTarget();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_10007EBC0(&qword_1006AF740);
  v10 = __chkstk_darwin(v9 - 8);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v48 = &v44 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v47 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
  sub_100007204(v2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation, &v44 - v17, &qword_1006AF740);
  v19 = type metadata accessor for FMFLocation();
  v20 = *(v19 - 8);
  v21 = v19;
  v53 = *(v20 + 48);
  v49 = v20 + 48;
  v22 = v53(v18, 1);
  sub_100012DF0(v18, &qword_1006AF740);
  v50 = v4;
  if (v22 == 1)
  {
    v23 = v2;
    v24 = -1;
    v25 = v53;
  }

  else
  {
    (*(v4 + 104))(v8, enum case for FMFLocationAlertTarget.alertMe(_:), v3);
    sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
    v23 = v2;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v58 == v56 && v59 == v57)
    {
      v24 = 0;
    }

    else
    {
      v24 = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) - 1;
    }

    v25 = v53;
    (*(v50 + 8))(v8, v3);
  }

  if (v24 == IndexPath.row.getter())
  {
    goto LABEL_9;
  }

  v44 = v3;
  v27 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  swift_beginAccess();
  sub_100007204(v23 + v27, v16, &qword_1006AF740);
  LODWORD(v27) = v25(v16, 1, v21);
  sub_100012DF0(v16, &qword_1006AF740);
  if (v27 == 1)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if (v28 == IndexPath.row.getter())
  {
    v26 = &enum case for FMFLocationAlertAddressType.currentLocation(_:);
    goto LABEL_27;
  }

  v29 = v48;
  sub_100007204(v23 + v47, v48, &qword_1006AF740);
  v30 = v25(v29, 1, v21);
  sub_100012DF0(v29, &qword_1006AF740);
  v31 = v23;
  if (v30 == 1)
  {
    goto LABEL_21;
  }

  v32 = v50;
  v33 = v44;
  v34 = v45;
  (*(v50 + 104))(v45, enum case for FMFLocationAlertTarget.alertFriends(_:), v44);
  sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v56 == v54 && v57 == v55)
  {
    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v32 + 8))(v34, v33);

    if ((v35 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  ++v28;
LABEL_21:
  if (v28 == IndexPath.row.getter())
  {
LABEL_9:
    v26 = &enum case for FMFLocationAlertAddressType.friendLocation(_:);
    goto LABEL_27;
  }

  v36 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
  swift_beginAccess();
  v37 = v31 + v36;
  v38 = v46;
  sub_100007204(v37, v46, &qword_1006AF740);
  LODWORD(v36) = (v53)(v38, 1, v21);
  sub_100012DF0(v38, &qword_1006AF740);
  if (v36 == 1)
  {
    v39 = v28;
  }

  else
  {
    v39 = v28 + 1;
  }

  v40 = IndexPath.row.getter();
  v26 = &enum case for FMFLocationAlertAddressType.unknown(_:);
  if (v39 == v40)
  {
    v26 = &enum case for FMFLocationAlertAddressType.custom(_:);
  }

LABEL_27:
  v41 = *v26;
  v42 = type metadata accessor for FMFLocationAlertAddressType();
  return (*(*(v42 - 8) + 104))(v52, v41, v42);
}

id sub_1000A838C()
{
  v1 = sub_10007EBC0(&unk_1006B0010);
  __chkstk_darwin(v1 - 8);
  v153 = &v145 - v2;
  v3 = type metadata accessor for FMFLocation();
  v187 = *(v3 - 8);
  __chkstk_darwin(v3);
  v154 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_10007EBC0(&qword_1006B0020);
  __chkstk_darwin(v162);
  v163 = &v145 - v5;
  v169 = sub_10007EBC0(&qword_1006B00D0);
  __chkstk_darwin(v169);
  v173 = &v145 - v6;
  v185 = type metadata accessor for FMFLocationAlert();
  v180 = *(v185 - 8);
  __chkstk_darwin(v185);
  v166 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BC960);
  v9 = __chkstk_darwin(v8 - 8);
  v165 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v170 = &v145 - v12;
  __chkstk_darwin(v11);
  v171 = &v145 - v13;
  v14 = sub_10007EBC0(&unk_1006BEF80);
  v15 = __chkstk_darwin(v14 - 8);
  v152 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v155 = &v145 - v18;
  v19 = __chkstk_darwin(v17);
  v161 = &v145 - v20;
  v21 = __chkstk_darwin(v19);
  v168 = &v145 - v22;
  __chkstk_darwin(v21);
  v172 = &v145 - v23;
  v178 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v177 = *(v178 - 8);
  v24 = __chkstk_darwin(v178);
  v176 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v175 = &v145 - v26;
  v184 = type metadata accessor for FMFSchedule();
  v183 = *(v184 - 8);
  v27 = __chkstk_darwin(v184);
  v151 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v179 = &v145 - v29;
  v30 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v30 - 8);
  v174 = (&v145 - v31);
  v32 = type metadata accessor for FMFLocationAlertTriggerType();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v157 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v181 = &v145 - v37;
  v38 = __chkstk_darwin(v36);
  v182 = &v145 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v145 - v41;
  __chkstk_darwin(v40);
  v44 = &v145 - v43;
  v45 = sub_10007EBC0(&qword_1006AF740);
  v46 = __chkstk_darwin(v45 - 8);
  v156 = &v145 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v167 = &v145 - v49;
  __chkstk_darwin(v48);
  v51 = &v145 - v50;
  v52 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v158 = v52;
  sub_100007204(v0 + v52, v51, &qword_1006AF740);
  v53 = *(v187 + 48);
  v164 = v3;
  v160 = v187 + 48;
  v159 = v53;
  LODWORD(v3) = v53(v51, 1, v3);
  sub_100012DF0(v51, &qword_1006AF740);
  if (v3 == 1)
  {
    v54 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
    if (v54)
    {
      [v54 setEnabled:0];
    }

    result = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton);
    if (!result)
    {
      return result;
    }

    return [result setEnabled:{0, v145}];
  }

  v56 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  swift_beginAccess();
  v57 = v33[2];
  v186 = v0;
  v150 = v56;
  v149 = v33 + 2;
  v148 = v57;
  v57(v44, v0 + v56, v32);
  v58 = v33[13];
  v147 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
  v146 = v58;
  v58(v42);
  sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v190 == v188 && v191 == v189)
  {
    v59 = 1;
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v60 = v33 + 1;
  v61 = v42;
  v62 = v33[1];
  v62(v61, v32);
  v62(v44, v32);

  if ((v59 & 1) == 0 || (v63 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone, v64 = v186, swift_beginAccess(), v65 = v64 + v63, v66 = v174, sub_100007204(v65, v174, &qword_1006AFFF8), v67 = type metadata accessor for TimeZone(), LODWORD(v63) = (*(*(v67 - 8) + 48))(v66, 1, v67), sub_100012DF0(v66, &qword_1006AFFF8), v63 != 1))
  {
    v174 = v33;
    v70 = v182;
    v148(v182, v186 + v150, v32);
    v71 = v181;
    v146(v181, v147, v32);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v145 = v60;
    if (v190 == v188 && v191 == v189)
    {
      v62(v71, v32);
      v62(v70, v32);

      v73 = v185;
      v72 = v186;
      v74 = v184;
      v75 = v183;
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v62(v71, v32);
      v62(v70, v32);

      v73 = v185;
      v72 = v186;
      v74 = v184;
      v75 = v183;
      if ((v76 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v77 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
    swift_beginAccess();
    v78 = v179;
    (*(v75 + 16))(v179, v72 + v77, v74);
    v79 = v175;
    FMFSchedule.daysOfWeek.getter();
    (*(v75 + 8))(v78, v74);
    v80 = v176;
    static FMFSchedule.DaysOfWeek.none.getter();
    sub_1000BBEF8(&qword_1006B0078, &type metadata accessor for FMFSchedule.DaysOfWeek);
    v81 = v178;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v82 = *(v177 + 8);
    v82(v80, v81);
    v82(v79, v81);
    if (v190 == v188)
    {
      goto LABEL_21;
    }

LABEL_26:
    v182 = v62;
    v84 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
    swift_beginAccess();
    v85 = v172;
    sub_100007204(v72 + v84, v172, &unk_1006BEF80);
    v86 = *(v180 + 48);
    v87 = v86(v85, 1, v73);
    sub_100012DF0(v85, &unk_1006BEF80);
    if (v87 == 1)
    {
      goto LABEL_27;
    }

    v89 = v168;
    sub_100007204(v72 + v84, v168, &unk_1006BEF80);
    v181 = v86;
    if (v86(v89, 1, v73))
    {
      sub_100012DF0(v89, &unk_1006BEF80);
      v90 = 1;
      v91 = v171;
    }

    else
    {
      v92 = v180;
      v93 = v166;
      (*(v180 + 16))(v166, v89, v73);
      sub_100012DF0(v89, &unk_1006BEF80);
      v91 = v171;
      FMFLocationAlert.triggerType.getter();
      (*(v92 + 8))(v93, v73);
      v90 = 0;
    }

    v94 = v170;
    v95 = v174;
    v96 = v174[7];
    v96(v91, v90, 1, v32);
    v148(v94, v72 + v150, v32);
    v96(v94, 0, 1, v32);
    v97 = v95;
    v98 = *(v169 + 48);
    v99 = v173;
    sub_100007204(v91, v173, &unk_1006BC960);
    v100 = v99;
    sub_100007204(v94, v99 + v98, &unk_1006BC960);
    v101 = *(v97 + 48);
    if (v101(v99, 1, v32) == 1)
    {
      sub_100012DF0(v94, &unk_1006BC960);
      v102 = v173;
      sub_100012DF0(v91, &unk_1006BC960);
      v103 = v101(v102 + v98, 1, v32);
      v72 = v186;
      if (v103 == 1)
      {
        sub_100012DF0(v102, &unk_1006BC960);
        v104 = v167;
        v105 = v185;
        goto LABEL_45;
      }
    }

    else
    {
      v106 = v165;
      sub_100007204(v99, v165, &unk_1006BC960);
      v107 = v101(v99 + v98, 1, v32);
      v108 = v167;
      v109 = v185;
      if (v107 != 1)
      {
        v111 = v100 + v98;
        v112 = v157;
        (v174[4])(v157, v111, v32);
        sub_1000BBEF8(&qword_1006B0098, &type metadata accessor for FMFLocationAlertTriggerType);
        LODWORD(v178) = dispatch thunk of static Equatable.== infix(_:_:)();
        v113 = v109;
        v114 = v182;
        (v182)(v112, v32);
        sub_100012DF0(v170, &unk_1006BC960);
        sub_100012DF0(v171, &unk_1006BC960);
        v114(v106, v32);
        v104 = v108;
        v105 = v113;
        sub_100012DF0(v173, &unk_1006BC960);
        v72 = v186;
        if (v178)
        {
LABEL_45:
          v115 = v161;
          sub_100007204(v72 + v84, v161, &unk_1006BEF80);
          if ((v181)(v115, 1, v105))
          {
            sub_100012DF0(v115, &unk_1006BEF80);
            v116 = v164;
            (*(v187 + 56))(v104, 1, 1, v164);
          }

          else
          {
            v117 = v180;
            v118 = v166;
            (*(v180 + 16))(v166, v115, v105);
            sub_100012DF0(v115, &unk_1006BEF80);
            FMFLocationAlert.location.getter();
            (*(v117 + 8))(v118, v105);
            v116 = v164;
          }

          v119 = v163;
          v120 = *(v162 + 48);
          sub_100007204(v104, v163, &qword_1006AF740);
          sub_100007204(v72 + v158, v119 + v120, &qword_1006AF740);
          v121 = v159;
          if (v159(v119, 1, v116) == 1)
          {
            sub_100012DF0(v104, &qword_1006AF740);
            if (v121(v119 + v120, 1, v116) == 1)
            {
              sub_100012DF0(v119, &qword_1006AF740);
              goto LABEL_55;
            }
          }

          else
          {
            v122 = v156;
            sub_100007204(v119, v156, &qword_1006AF740);
            if (v121(v119 + v120, 1, v116) != 1)
            {
              v123 = v187;
              v124 = v119 + v120;
              v125 = v154;
              (*(v187 + 32))(v154, v124, v116);
              sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
              v126 = dispatch thunk of static Equatable.== infix(_:_:)();
              v127 = *(v123 + 8);
              v127(v125, v116);
              sub_100012DF0(v167, &qword_1006AF740);
              v127(v122, v116);
              sub_100012DF0(v119, &qword_1006AF740);
              v105 = v185;
              if (v126)
              {
LABEL_55:
                v128 = v155;
                sub_100007204(v72 + v84, v155, &unk_1006BEF80);
                if ((v181)(v128, 1, v105))
                {
                  sub_100012DF0(v128, &unk_1006BEF80);
                }

                else
                {
                  v129 = v180;
                  v130 = *(v180 + 16);
                  v131 = v166;
                  v130(v166, v128, v105);
                  sub_100012DF0(v128, &unk_1006BEF80);
                  v132 = FMFLocationAlert.repeating.getter() & 1;
                  v133 = *(v129 + 8);
                  v180 = v129 + 8;
                  v133(v131, v105);
                  if (*(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating) == v132)
                  {
                    v134 = v152;
                    sub_100007204(v72 + v84, v152, &unk_1006BEF80);
                    if ((v181)(v134, 1, v105))
                    {
                      sub_100012DF0(v134, &unk_1006BEF80);
                      v135 = v153;
                      (*(v183 + 56))(v153, 1, 1, v184);
                    }

                    else
                    {
                      v136 = v166;
                      v130(v166, v134, v105);
                      sub_100012DF0(v134, &unk_1006BEF80);
                      v135 = v153;
                      FMFLocationAlert.schedule.getter();
                      v133(v136, v105);
                      v137 = v183;
                      v138 = v184;
                      if ((*(v183 + 48))(v135, 1, v184) != 1)
                      {
                        v139 = v151;
                        (*(v137 + 32))(v151, v135, v138);
                        v140 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
                        swift_beginAccess();
                        v141 = v179;
                        (*(v137 + 16))(v179, v72 + v140, v138);
                        sub_1000BBEF8(&qword_1006B00D8, &type metadata accessor for FMFSchedule);
                        LOBYTE(v140) = dispatch thunk of static Equatable.== infix(_:_:)();
                        v142 = *(v137 + 8);
                        v142(v141, v138);
                        if ((v140 & 1) == 0)
                        {
                          v143 = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
                          if (v143)
                          {
                            [v143 setEnabled:1];
                          }

                          v144 = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton);
                          if (v144)
                          {
                            [v144 setEnabled:1];
                          }

                          return (v142)(v139, v138);
                        }

                        v142(v139, v138);
                        goto LABEL_21;
                      }
                    }

                    sub_100012DF0(v135, &unk_1006B0010);
LABEL_21:
                    v83 = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
                    if (v83)
                    {
                      [v83 setEnabled:0];
                    }

                    result = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton);
                    if (result)
                    {
                      return [result setEnabled:{0, v145}];
                    }

                    return result;
                  }
                }
              }

LABEL_27:
              v88 = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
              if (v88)
              {
                [v88 setEnabled:1];
              }

              result = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton);
              if (!result)
              {
                return result;
              }

              return [result setEnabled:{1, v145}];
            }

            sub_100012DF0(v167, &qword_1006AF740);
            (*(v187 + 8))(v122, v116);
          }

          sub_100012DF0(v119, &qword_1006B0020);
          goto LABEL_27;
        }

LABEL_40:
        v110 = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
        if (v110)
        {
          [v110 setEnabled:1];
        }

        result = *(v72 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton);
        if (!result)
        {
          return result;
        }

        return [result setEnabled:{1, v145}];
      }

      sub_100012DF0(v170, &unk_1006BC960);
      v102 = v173;
      sub_100012DF0(v171, &unk_1006BC960);
      (v182)(v106, v32);
      v72 = v186;
    }

    sub_100012DF0(v102, &qword_1006B00D0);
    goto LABEL_40;
  }

  v68 = v186;
  v69 = *(v186 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
  if (v69)
  {
    [v69 setEnabled:0];
  }

  result = *(v68 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton);
  if (result)
  {
    return [result setEnabled:{0, v145}];
  }

  return result;
}

void sub_1000A9D10()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_delegate);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert, &unk_1006BEF80);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, &qword_1006B0050);
  v1 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget;
  v2 = type metadata accessor for FMFLocationAlertTarget();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation, &qword_1006AF740);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation, &qword_1006AF740);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation, &qword_1006AF740);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation, &qword_1006AF740);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation, &qword_1006AF740);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation, &qword_1006AF740);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone, &qword_1006AFFF8);

  v3 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  v4 = type metadata accessor for FMFLocationAlertTriggerType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
  v6 = type metadata accessor for FMFSchedule();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterNoTimezone);
}

void sub_1000AA2D4()
{
  sub_1000AA5CC(319, &qword_1006AFE58, &type metadata accessor for FMFLocationAlert);
  if (v0 <= 0x3F)
  {
    sub_1000AA5CC(319, &qword_1006AFE60, &type metadata accessor for FMFFriend);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FMFLocationAlertTarget();
      if (v2 <= 0x3F)
      {
        sub_1000AA5CC(319, &qword_1006C07D0, &type metadata accessor for FMFLocation);
        if (v3 <= 0x3F)
        {
          sub_1000AA5CC(319, &qword_1006AFE70, &type metadata accessor for TimeZone);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FMFLocationAlertTriggerType();
            if (v5 <= 0x3F)
            {
              type metadata accessor for FMFSchedule();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000AA5CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id sub_1000AA620(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFSchedule();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = __chkstk_darwin(v4);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v43 - v7;
  v48 = type metadata accessor for DateComponents();
  v8 = *(v48 - 1);
  v9 = __chkstk_darwin(v48);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v43 - v15;
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
  result = [v50 indexPathForCell:a1];
  if (!result)
  {
    goto LABEL_14;
  }

  v24 = result;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = IndexPath.row.getter();
  v51 = v20;
  (*(v20 + 8))(v22, v19);
  v49 = v19;
  if (v25 != 1)
  {
    if (*(v2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded))
    {
      if (v25 != 3)
      {
        goto LABEL_12;
      }
    }

    else if (v25 != 2)
    {
      goto LABEL_12;
    }

    sub_1000B6A28(v13);
    DateComponents.hour.getter();
    v39 = *(v8 + 8);
    v40 = v48;
    v39(v13, v48);
    swift_beginAccess();
    FMFSchedule.endHour.setter();
    swift_endAccess();
    v41 = v43;
    sub_1000B6A28(v43);
    DateComponents.minute.getter();
    v39(v41, v40);
    goto LABEL_11;
  }

  sub_1000B6A28(v18);
  DateComponents.hour.getter();
  v26 = *(v8 + 8);
  v27 = v48;
  v26(v18, v48);
  v28 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
  swift_beginAccess();
  FMFSchedule.startHour.setter();
  swift_endAccess();
  sub_1000B6A28(v16);
  DateComponents.minute.getter();
  v26(v16, v27);
  swift_beginAccess();
  FMFSchedule.startMin.setter();
  swift_endAccess();
  v29 = v46;
  v30 = v47;
  v31 = v44;
  v32 = *(v46 + 16);
  v32(v44, v2 + v28, v47);
  v33 = FMFSchedule.endHour.getter();
  v34 = *(v29 + 8);
  v34(v31, v30);
  v35 = v45;
  v48 = v32;
  v32(v45, v2 + v28, v30);
  v36 = v34;
  v37 = FMFSchedule.startHour.getter();
  v34(v35, v30);
  if (v37 < v33)
  {
LABEL_12:
    sub_1000986CC(2);
    sub_10007EBC0(&qword_1006B0090);
    *(swift_allocObject() + 16) = xmmword_100552210;
    IndexPath.init(row:section:)();
    IndexPath.init(row:section:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v50 reloadRowsAtIndexPaths:isa withRowAnimation:100];

    return sub_1000A838C();
  }

  (v48)(v31, v2 + v28, v30);
  v38 = FMFSchedule.startHour.getter();
  result = v36(v31, v30);
  if (!__OFADD__(v38, 1))
  {
    swift_beginAccess();
    FMFSchedule.endHour.setter();
    swift_endAccess();
    (v48)(v31, v2 + v28, v30);
    FMFSchedule.startMin.getter();
    v36(v31, v30);
LABEL_11:
    swift_beginAccess();
    FMFSchedule.endMin.setter();
    swift_endAccess();
    goto LABEL_12;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1000AACD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v270 = a1;
  v5 = type metadata accessor for IndexPath();
  v239 = *(v5 - 8);
  v240 = v5;
  __chkstk_darwin(v5);
  v238 = &v229 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for IndexSet();
  *&v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  *&v248 = &v229 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v263 = &v229 - v9;
  v10 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v10 - 8);
  v262 = &v229 - v11;
  v12 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v12 - 8);
  v261 = &v229 - v13;
  v14 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v14 - 8);
  v259 = &v229 - v15;
  v257 = sub_10007EBC0(&qword_1006B0020);
  v16 = __chkstk_darwin(v257);
  v251 = &v229 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v245 = &v229 - v18;
  v269 = type metadata accessor for FMFLocationAlertAddressType();
  v267 = *(v269 - 8);
  v19 = __chkstk_darwin(v269);
  v260 = &v229 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  *&v247 = &v229 - v22;
  __chkstk_darwin(v21);
  v246 = &v229 - v23;
  v24 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v24 - 8);
  v242 = &v229 - v25;
  v26 = sub_10007EBC0(&qword_1006AF740);
  v27 = __chkstk_darwin(v26 - 8);
  v255 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v253 = &v229 - v30;
  v31 = __chkstk_darwin(v29);
  v252 = &v229 - v32;
  v33 = __chkstk_darwin(v31);
  v265 = &v229 - v34;
  v35 = __chkstk_darwin(v33);
  v235 = &v229 - v36;
  v37 = __chkstk_darwin(v35);
  v243 = &v229 - v38;
  v39 = __chkstk_darwin(v37);
  v237 = (&v229 - v40);
  v41 = __chkstk_darwin(v39);
  v244 = &v229 - v42;
  v43 = __chkstk_darwin(v41);
  v234 = &v229 - v44;
  v45 = __chkstk_darwin(v43);
  v233 = &v229 - v46;
  v47 = __chkstk_darwin(v45);
  v241 = &v229 - v48;
  __chkstk_darwin(v47);
  v232 = &v229 - v49;
  v266 = type metadata accessor for FMFLocation();
  v268 = *(v266 - 1);
  v50 = __chkstk_darwin(v266);
  v256 = (&v229 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __chkstk_darwin(v50);
  v236 = &v229 - v53;
  v54 = __chkstk_darwin(v52);
  v231 = &v229 - v55;
  v56 = __chkstk_darwin(v54);
  v229 = &v229 - v57;
  __chkstk_darwin(v56);
  v230 = &v229 - v58;
  v264 = type metadata accessor for FMFLocationAlertTarget();
  v258 = *(v264 - 8);
  v59 = __chkstk_darwin(v264);
  v254 = &v229 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v63 = &v229 - v62;
  v64 = __chkstk_darwin(v61);
  v66 = &v229 - v65;
  __chkstk_darwin(v64);
  v68 = &v229 - v67;
  v69 = type metadata accessor for FMFLocationAlertTriggerType();
  v70 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v229 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = IndexPath.section.getter();
  v74 = sub_1000AD4A4(v73);
  v271 = v3;
  if ((v3[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable] & 1) == 0 && v74 != 5)
  {
    return;
  }

  if (v74 > 2u)
  {
    if (v74 != 3)
    {
      v84 = v271;
      if (v74 != 4)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v86 = [v270 cellForRowAtIndexPath:isa];

        [v84 showRemoveAlertWithSender:v86];
      }

      goto LABEL_91;
    }

    v93 = IndexPath.row.getter();
    v84 = v271;
    if (v93 == 1)
    {
      v271[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating] = 1;
      goto LABEL_91;
    }

    if (!v93)
    {
      v271[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating] = 0;
      goto LABEL_91;
    }

LABEL_93:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (!v74)
  {
    v87 = IndexPath.row.getter();
    switch(v87)
    {
      case 2:
        (*(v70 + 104))(v72, enum case for FMFLocationAlertTriggerType.scheduled(_:), v69);
        v100 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
        v84 = v271;
        swift_beginAccess();
        (*(v70 + 40))(&v84[v100], v72, v69);
        swift_endAccess();
        v84[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating] = 1;
        v101 = v258;
        (*(v258 + 104))(v63, enum case for FMFLocationAlertTarget.alertMe(_:), v264);
        sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v274 == v273)
        {
          (*(v101 + 8))(v63, v264);

          v92 = v266;
        }

        else
        {
          v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
          (*(v101 + 8))(v63, v264);

          v92 = v266;
          if ((v116 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v113 = v234;
        sub_100007204(&v84[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation], v234, &qword_1006AF740);
        v114 = v268;
        if ((*(v268 + 48))(v113, 1, v92) != 1)
        {
          v115 = v231;
          (*(v114 + 32))(v231, v113, v92);
          goto LABEL_90;
        }

        goto LABEL_47;
      case 1:
        (*(v70 + 104))(v72, enum case for FMFLocationAlertTriggerType.leaving(_:), v69);
        v88 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
        v89 = v271;
        swift_beginAccess();
        (*(v70 + 40))(&v89[v88], v72, v69);
        swift_endAccess();
        v90 = v258;
        v91 = v264;
        (*(v258 + 104))(v66, enum case for FMFLocationAlertTarget.alertMe(_:), v264);
        sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v274 == v273)
        {
          (*(v90 + 8))(v66, v91);

          v84 = v271;
          v92 = v266;
          goto LABEL_40;
        }

        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*(v90 + 8))(v66, v91);

        v84 = v271;
        v92 = v266;
        if (v112)
        {
LABEL_40:
          v113 = v233;
          sub_100007204(&v84[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation], v233, &qword_1006AF740);
          v114 = v268;
          if ((*(v268 + 48))(v113, 1, v92) != 1)
          {
            v115 = v229;
            (*(v114 + 32))(v229, v113, v92);
LABEL_90:
            v219 = v241;
            (*(v114 + 16))(v241, v115, v92);
            (*(v114 + 56))(v219, 0, 1, v92);
            v220 = type metadata accessor for TimeZone();
            v221 = v242;
            (*(*(v220 - 8) + 56))(v242, 1, 1, v220);
            sub_100097820(v219, v221);
            sub_100012DF0(v221, &qword_1006AFFF8);
            sub_100012DF0(v219, &qword_1006AF740);
            (*(v114 + 8))(v115, v92);
            goto LABEL_91;
          }

          goto LABEL_47;
        }

LABEL_91:
        v222 = objc_opt_self();
        v223 = swift_allocObject();
        *(v223 + 16) = v84;
        *&v275[1] = sub_1000BBDA8;
        *(&v275[1] + 1) = v223;
        *&v274 = _NSConcreteStackBlock;
        *(&v274 + 1) = 1107296256;
        *&v275[0] = sub_100004AE4;
        *(&v275[0] + 1) = &unk_100624830;
        v224 = _Block_copy(&v274);
        v225 = v84;

        v226 = swift_allocObject();
        *(v226 + 16) = v225;
        *&v275[1] = sub_1000BBDC4;
        *(&v275[1] + 1) = v226;
        *&v274 = _NSConcreteStackBlock;
        *(&v274 + 1) = 1107296256;
        *&v275[0] = sub_10037A044;
        *(&v275[0] + 1) = &unk_100624880;
        v227 = _Block_copy(&v274);
        v228 = v225;

        [v222 transitionWithView:v270 duration:5242880 options:v224 animations:v227 completion:0.2];
        _Block_release(v227);
        _Block_release(v224);
        return;
      case 0:
        (*(v70 + 104))(v72, enum case for FMFLocationAlertTriggerType.arriving(_:), v69);
        v102 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
        v84 = v271;
        swift_beginAccess();
        (*(v70 + 40))(&v84[v102], v72, v69);
        swift_endAccess();
        v103 = v258;
        v104 = v264;
        (*(v258 + 104))(v68, enum case for FMFLocationAlertTarget.alertMe(_:), v264);
        sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v274 == v273)
        {
          (*(v103 + 8))(v68, v104);

          v92 = v266;
        }

        else
        {
          v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
          (*(v103 + 8))(v68, v104);

          v92 = v266;
          if ((v117 & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v118 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
        swift_beginAccess();
        v119 = &v84[v118];
        v113 = v232;
        sub_100007204(v119, v232, &qword_1006AF740);
        v114 = v268;
        if ((*(v268 + 48))(v113, 1, v92) != 1)
        {
          v115 = v230;
          (*(v114 + 32))(v230, v113, v92);
          goto LABEL_90;
        }

LABEL_47:
        sub_100012DF0(v113, &qword_1006AF740);
        goto LABEL_91;
    }

    goto LABEL_93;
  }

  if (v74 == 1)
  {
    v75 = v246;
    v76 = v271;
    sub_1000A7D30(a2, v246);
    v77 = v267;
    v78 = v247;
    v79 = v269;
    (*(v267 + 32))(v247, v75, v269);
    v80 = (*(v77 + 88))(v78, v79);
    LODWORD(v248) = enum case for FMFLocationAlertAddressType.currentLocation(_:);
    if (v80 == enum case for FMFLocationAlertAddressType.currentLocation(_:))
    {
      v81 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
      swift_beginAccess();
      v82 = v244;
      sub_100007204(&v76[v81], v244, &qword_1006AF740);
      v83 = v268;
      goto LABEL_49;
    }

    v83 = v268;
    v82 = v244;
    if (v80 == enum case for FMFLocationAlertAddressType.friendLocation(_:))
    {
      v98 = &v76[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation];
    }

    else
    {
      if (v80 != enum case for FMFLocationAlertAddressType.custom(_:))
      {
        (*(v267 + 8))(v78, v269);
        (*(v83 + 56))(v82, 1, 1, v266);
LABEL_49:
        v120 = *(v83 + 48);
        v121 = v266;
        v122 = v120(v82, 1, v266);
        *&v249 = v120;
        if (v122 == 1)
        {
          sub_100012DF0(v82, &qword_1006AF740);
        }

        else
        {
          v123 = v236;
          (*(v83 + 32))(v236, v82, v121);
          v124 = v241;
          (*(v83 + 16))(v241, v123, v121);
          (*(v83 + 56))(v124, 0, 1, v121);
          v125 = type metadata accessor for TimeZone();
          v126 = v242;
          (*(*(v125 - 8) + 56))(v242, 1, 1, v125);
          sub_100097820(v124, v126);
          sub_100012DF0(v126, &qword_1006AFFF8);
          sub_100012DF0(v124, &qword_1006AF740);
          (*(v83 + 8))(v123, v121);
        }

        v127 = v245;
        v128 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
        swift_beginAccess();
        v129 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
        v130 = *(v257 + 48);
        v250 = v128;
        sub_100007204(&v76[v128], v127, &qword_1006AF740);
        sub_100007204(&v76[v129], v127 + v130, &qword_1006AF740);
        v131 = v249;
        v132 = v121;
        if ((v249)(v127, 1, v121) == 1)
        {
          v133 = v131(v127 + v130, 1, v121);
          v134 = v251;
          if (v133 == 1)
          {
            sub_100012DF0(v127, &qword_1006AF740);
LABEL_66:
            v143 = enum case for FMFLocationAlertAddressType.friendLocation(_:);
            v142 = v260;
            v141 = v250;
            goto LABEL_67;
          }
        }

        else
        {
          v135 = v237;
          sub_100007204(v127, v237, &qword_1006AF740);
          if (v131(v127 + v130, 1, v121) != 1)
          {
            v145 = v268;
            v146 = v256;
            (*(v268 + 32))(v256, v127 + v130, v132);
            sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
            v147 = dispatch thunk of static Equatable.== infix(_:_:)();
            v148 = *(v145 + 8);
            v148(v146, v132);
            v148(v237, v132);
            sub_100012DF0(v127, &qword_1006AF740);
            v134 = v251;
            if (v147)
            {
              goto LABEL_66;
            }

LABEL_58:
            v136 = v243;
            sub_100007204(&v76[v250], v243, &qword_1006AF740);
            v137 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
            swift_beginAccess();
            v138 = *(v257 + 48);
            sub_100007204(v136, v134, &qword_1006AF740);
            v139 = &v76[v137];
            v132 = v266;
            sub_100007204(v139, v134 + v138, &qword_1006AF740);
            if (v131(v134, 1, v132) == 1)
            {
              sub_100012DF0(v136, &qword_1006AF740);
              v140 = v131(v134 + v138, 1, v132);
              v141 = v250;
              if (v140 == 1)
              {
                sub_100012DF0(v134, &qword_1006AF740);
                v142 = v260;
                v143 = v248;
LABEL_67:
                (*(v267 + 104))(v142, v143, v269);
                v257 = *&v76[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
                v149 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
                swift_beginAccess();
                sub_100007204(&v76[v149], v265, &qword_1006AF740);
                v150 = v252;
                sub_100007204(&v76[v141], v252, &qword_1006AF740);
                if (v131(v150, 1, v132))
                {
                  sub_100012DF0(v150, &qword_1006AF740);
                  v252 = 0;
                  v151 = v268;
                }

                else
                {
                  v151 = v268;
                  v152 = v256;
                  (*(v268 + 16))(v256, v150, v132);
                  sub_100012DF0(v150, &qword_1006AF740);
                  v252 = FMFLocation.location.getter();
                  (*(v151 + 8))(v152, v132);
                }

                v153 = v253;
                sub_100007204(&v76[v141], v253, &qword_1006AF740);
                if (v131(v153, 1, v132))
                {
                  sub_100012DF0(v153, &qword_1006AF740);
                  v154 = type metadata accessor for FMFAddress();
                  (*(*(v154 - 8) + 56))(v259, 1, 1, v154);
                }

                else
                {
                  v155 = v256;
                  (*(v151 + 16))(v256, v153, v132);
                  sub_100012DF0(v153, &qword_1006AF740);
                  FMFLocation.address.getter();
                  (*(v151 + 8))(v155, v132);
                }

                v156 = v267;
                v157 = v261;
                v158 = v269;
                (*(v267 + 16))(v261, v142, v269);
                v266 = *(v156 + 56);
                (v266)(v157, 0, 1, v158);
                v159 = v255;
                sub_100007204(&v76[v141], v255, &qword_1006AF740);
                if (v131(v159, 1, v132))
                {
                  sub_100012DF0(v159, &qword_1006AF740);
                  v160 = type metadata accessor for FMFLabel();
                  (*(*(v160 - 8) + 56))(v262, 1, 1, v160);
                }

                else
                {
                  v161 = v268;
                  v162 = v256;
                  (*(v268 + 16))(v256, v159, v132);
                  sub_100012DF0(v159, &qword_1006AF740);
                  FMFLocation.label.getter();
                  (*(v161 + 8))(v162, v132);
                }

                v163 = v258;
                v164 = v264;
                v165 = v254;
                v264 = *&v76[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedRadius];
                sub_100007204(&v76[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], v263, &qword_1006B0050);
                (*(v163 + 104))(v165, enum case for FMFLocationAlertTarget.alertMe(_:), v164);
                sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
                dispatch thunk of RawRepresentable.rawValue.getter();
                dispatch thunk of RawRepresentable.rawValue.getter();
                if (v274 == v273)
                {
                  LODWORD(v258) = 1;
                }

                else
                {
                  LODWORD(v258) = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                (*(v163 + 8))(v165, v164);

                v256 = type metadata accessor for FMFenceMapViewController();
                v166 = objc_allocWithZone(v256);
                v167 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediator) = 0;
                v168 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation;
                (*(v268 + 56))(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_myLocation, 1, 1, v132);
                v169 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedLocation) = 0;
                v170 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_address;
                v171 = type metadata accessor for FMFAddress();
                v172 = *(*(v171 - 8) + 56);
                v254 = v170;
                v172(v170, 1, 1, v171);
                v253 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressType;
                (v266)();
                v173 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressLabel;
                v174 = type metadata accessor for FMFLabel();
                v175 = *(*(v174 - 8) + 56);
                v268 = v173;
                v175(v173, 1, 1, v174);
                v176 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_addressRadius;
                *v176 = 0;
                v176[8] = 1;
                v177 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_friendForFence;
                v178 = type metadata accessor for FMFFriend();
                v179 = *(*(v178 - 8) + 56);
                v255 = v177;
                v179(v177, 1, 1, v178);
                v251 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isNotifyMe) = 0;
                v250 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage) = 0;
                v180 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_delegate + 8) = 0;
                swift_unknownObjectWeakInit();
                v181 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneHandler;
                *v181 = 0;
                v181[1] = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_peopleSubscription) = 0;
                *(&v275[0] + 1) = &type metadata for SolariumFeatureFlag;
                *&v275[1] = sub_10000BD04();
                LOBYTE(v177) = isFeatureEnabled(_:)();
                sub_100006060(&v274);
                if (v177)
                {
                  if (qword_1006AED50 != -1)
                  {
                    swift_once();
                  }

                  v182 = &xmmword_1006D4BA0;
                }

                else
                {
                  if (qword_1006AED48 != -1)
                  {
                    swift_once();
                  }

                  v182 = &xmmword_1006D4B40;
                }

                v183 = v182[5];
                v277 = v182[4];
                v278 = v183;
                v184 = v182[3];
                v275[1] = v182[2];
                v276 = v184;
                v185 = v182[1];
                v274 = *v182;
                v275[0] = v185;
                v248 = v277;
                v249 = v278;
                v186 = *(&v276 + 1);
                v187 = v276;
                v247 = *(v275 + 8);
                v188 = *(&v275[1] + 1);
                v189 = v185;
                v190 = *(&v274 + 1);
                v191 = v274;
                sub_1000BBDE8(&v274, &v273);
                v192 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style;
                *v192 = v191;
                *(v192 + 1) = v190;
                *(v192 + 2) = v189;
                *(v192 + 24) = v247;
                *(v192 + 5) = v188;
                *(v192 + 6) = v187;
                *(v192 + 7) = v186;
                v193 = v249;
                *(v192 + 4) = v248;
                *(v192 + 5) = v193;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_doneButton) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_smallRadiusButton) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mediumRadiusButton) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_largeRadiusButton) = 0;
                v194 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_radiusButtonsStackView;
                *(v166 + v194) = [objc_allocWithZone(UIStackView) init];
                v195 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_locationRadiusTitleLabel;
                *(v166 + v195) = [objc_allocWithZone(UILabel) init];
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_userDroppedAnnotation) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation) = 0;
                v196 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
                *v196 = 0u;
                *(v196 + 1) = 0u;
                v196[32] = 1;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapSearchResults) = 0;
                (v266)(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSeachAddressType, 1, 1, v269);
                v197 = v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapLastSearchedQuery;
                *v197 = 0;
                v197[1] = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_defaultSearchRecords) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView) = 0;
                v198 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_contactsDataController;
                type metadata accessor for FMFContactsDataController();
                swift_allocObject();
                *(v166 + v198) = FMFContactsDataController.init(isSnapshotMode:)();
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchController) = 0;
                *(v166 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords) = 0;
                *(v166 + v167) = v257;

                swift_beginAccess();
                sub_1000BBE44(v265, v168, &qword_1006AF740);
                swift_endAccess();
                v199 = *(v166 + v169);
                v200 = v252;
                *(v166 + v169) = v252;
                v266 = v200;

                v201 = v254;
                swift_beginAccess();
                v202 = v259;
                sub_1000BBE44(v259, v201, &qword_1006B0040);
                swift_endAccess();
                v203 = v253;
                swift_beginAccess();
                v204 = v261;
                sub_1000BBE44(v261, v203, &qword_1006B00C8);
                swift_endAccess();
                v205 = v268;
                swift_beginAccess();
                v206 = v262;
                sub_1000BBE44(v262, v205, &qword_1006B0038);
                swift_endAccess();
                *v176 = v264;
                v176[8] = 0;
                v207 = v255;
                swift_beginAccess();
                v208 = v263;
                sub_1000BBE44(v263, v207, &qword_1006B0050);
                swift_endAccess();
                v209 = v251;
                *(v166 + v250) = 0;
                v209[v166] = v258 & 1;
                *(v180 + 1) = &off_1006246E0;
                v210 = v271;
                swift_unknownObjectWeakAssign();
                v272.receiver = v166;
                v272.super_class = v256;
                v211 = objc_msgSendSuper2(&v272, "initWithNibName:bundle:", 0, 0);

                sub_100012DF0(v208, &qword_1006B0050);
                v84 = v210;
                sub_100012DF0(v206, &qword_1006B0038);
                sub_100012DF0(v204, &qword_1006B00C8);
                sub_100012DF0(v202, &qword_1006B0040);
                sub_100012DF0(v265, &qword_1006AF740);
                v212 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v211];
                [v212 setModalPresentationStyle:2];
                [v210 presentViewController:v212 animated:1 completion:0];

                (*(v267 + 8))(v260, v269);
                goto LABEL_91;
              }
            }

            else
            {
              v144 = v235;
              sub_100007204(v134, v235, &qword_1006AF740);
              if (v131(v134 + v138, 1, v132) != 1)
              {
                v213 = v134;
                v214 = v268;
                v215 = v256;
                (*(v268 + 32))(v256, v213 + v138, v132);
                sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
                v216 = v144;
                v217 = dispatch thunk of static Equatable.== infix(_:_:)();
                v218 = *(v214 + 8);
                v218(v215, v266);
                sub_100012DF0(v243, &qword_1006AF740);
                v218(v216, v266);
                v132 = v266;
                v76 = v271;
                sub_100012DF0(v213, &qword_1006AF740);
                v142 = v260;
                v141 = v250;
                v143 = v248;
                if (v217)
                {
                  goto LABEL_67;
                }

                goto LABEL_64;
              }

              sub_100012DF0(v243, &qword_1006AF740);
              (*(v268 + 8))(v144, v132);
              v141 = v250;
            }

            sub_100012DF0(v134, &qword_1006B0020);
            v142 = v260;
LABEL_64:
            v143 = enum case for FMFLocationAlertAddressType.custom(_:);
            goto LABEL_67;
          }

          (*(v268 + 8))(v135, v121);
          v134 = v251;
        }

        sub_100012DF0(v127, &qword_1006B0020);
        goto LABEL_58;
      }

      v111 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
      swift_beginAccess();
      v98 = &v76[v111];
    }

    sub_100007204(v98, v82, &qword_1006AF740);
    goto LABEL_49;
  }

  v94 = v271;
  v95 = &v271[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded];
  v96 = v271[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded];
  v97 = IndexPath.row.getter();
  if (v97)
  {
    if (v96)
    {
      if (v97 != 2)
      {
        goto LABEL_93;
      }
    }

    else if (v97 != 1)
    {
      goto LABEL_93;
    }

    v94[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] = (v94[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] & 1) == 0;
    v99 = v95;
  }

  else
  {
    *v95 = !*v95;
    v99 = &v94[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded];
  }

  *v99 = 0;
  IndexPath.section.getter();
  v105 = v248;
  IndexSet.init(integer:)();
  IndexSet._bridgeToObjectiveC()(v106);
  v108 = v107;
  (*(v249 + 8))(v105, v250);
  [v270 reloadSections:v108 withRowAnimation:100];

  if (*v95 || v271[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] == 1)
  {
    IndexPath.section.getter();
    v109 = v238;
    IndexPath.init(row:section:)();
    v110 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v270 scrollToRowAtIndexPath:v110 atScrollPosition:3 animated:1];

    (*(v239 + 8))(v109, v240);
  }
}

uint64_t sub_1000AD4A4(uint64_t a1)
{
  v3 = type metadata accessor for FMFLocationAlertTriggerType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (!a1)
  {
    return 0;
  }

  if (a1 != 1)
  {
    v34 = a1;
    v17 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    v18 = v4[2];
    v33 = v1;
    v30 = v18;
    v31 = v17;
    v18(v15, v1 + v17, v3);
    v19 = v4[13];
    v29 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
    v28 = v19;
    v19(v13);
    sub_1000BBEF8(&qword_1006B0098, &type metadata accessor for FMFLocationAlertTriggerType);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = v4[1];
    v21(v13, v3);
    v32 = v21;
    v21(v15, v3);
    if (v20)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
      if (v34 == 2)
      {
        return v16;
      }
    }

    v30(v10, v33 + v31, v3);
    v28(v7, v29, v3);
    sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v37 == v35 && v38 == v36)
    {
      v22 = v7;
      v23 = v32;
      v32(v22, v3);
      v23(v10, v3);
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v25 = v7;
      v26 = v32;
      v32(v25, v3);
      v26(v10, v3);

      if ((v24 & 1) == 0)
      {
        return 5;
      }
    }

    if (v16 == v34)
    {
      return 2;
    }

    if (v16 + 1 == v34)
    {
      return 4;
    }

    return 5;
  }

  return 1;
}

void sub_1000AD96C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v34._object = 0x800000010057B250;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x800000010057B220;
  v34._countAndFlagsBits = 0xD000000000000034;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v34);

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:0 message:v6 preferredStyle:0];

  v8 = [v2 mainBundle];
  v35._object = 0x800000010057B2C0;
  v9._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x800000010057B290;
  v35._countAndFlagsBits = 0xD00000000000003BLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v35);

  v11 = String._bridgeToObjectiveC()();

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v11 style:1 handler:0];

  v14 = [v2 mainBundle];
  v36._object = 0x800000010057AA80;
  v15._object = 0x800000010057AA60;
  v36._countAndFlagsBits = 0xD00000000000002DLL;
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36);

  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = v1;
  v19 = String._bridgeToObjectiveC()();

  v32 = sub_1000BBD84;
  v33 = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  v31 = &unk_1006247E0;
  v20 = _Block_copy(aBlock);

  v21 = [v12 actionWithTitle:v19 style:2 handler:v20];
  _Block_release(v20);

  [v7 addAction:v13];
  [v7 addAction:v21];
  v31 = &type metadata for SolariumFeatureFlag;
  v32 = sub_10000BD04();
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if ((v12 & 1) != 0 && a1)
  {
    v22 = v7;
    v23 = a1;
    v24 = [v22 popoverPresentationController];
    if (v24)
    {
      v25 = v24;
      [v24 setSourceView:v23];
    }

    v26 = [v22 popoverPresentationController];

    if (v26)
    {
      [v23 bounds];
      [v26 setSourceRect:?];
    }
  }

  v27 = [v18 parentViewController];
  if (v27)
  {
    v28 = v27;
    [v27 presentViewController:v7 animated:1 completion:0];
  }
}

uint64_t sub_1000AE020()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0050);
  v3 = __chkstk_darwin(v2 - 8);
  v134 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v133 = &v131 - v6;
  __chkstk_darwin(v5);
  v138 = &v131 - v7;
  v8 = type metadata accessor for FMFFriend();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v132 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v131 = &v131 - v13;
  __chkstk_darwin(v12);
  v137 = &v131 - v14;
  v15 = type metadata accessor for FMFLocationAlertTarget();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v136 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v135 = &v131 - v20;
  __chkstk_darwin(v19);
  v22 = &v131 - v21;
  v23 = type metadata accessor for FMFLocationAlertTriggerType();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v143 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v145 = &v131 - v28;
  __chkstk_darwin(v27);
  v30 = &v131 - v29;
  v31 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded);
  v139 = v9;
  v140 = v8;
  if (v31 == 1)
  {
    v32 = IndexPath.row.getter();
    if (v32 == 2)
    {
      v33 = &enum case for FMFLocationAlertTriggerType.scheduled(_:);
    }

    else if (v32 == 1)
    {
      v33 = &enum case for FMFLocationAlertTriggerType.leaving(_:);
    }

    else
    {
      if (v32)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v33 = &enum case for FMFLocationAlertTriggerType.arriving(_:);
    }

    (*(v24 + 104))(v30, *v33, v23);
  }

  else
  {
    v34 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    (*(v24 + 16))(v30, v0 + v34, v23);
  }

  v35 = v30;
  v36 = v23;
  v37 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
  v38 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v144 = [v37 dequeueReusableCellWithIdentifier:v38 forIndexPath:isa];

  v41 = v24 + 16;
  v40 = *(v24 + 16);
  v42 = v145;
  v147 = v35;
  v141 = v40;
  v40(v145, v35, v36);
  v43 = v24;
  v44 = *(v24 + 88);
  v146 = v36;
  v45 = v44(v42, v36);
  v46 = &selRef_pushViewController_animated_;
  v142 = v41;
  if (v45 == enum case for FMFLocationAlertTriggerType.leaving(_:))
  {
    (*(v16 + 104))(v22, enum case for FMFLocationAlertTarget.alertMe(_:), v15);
    sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v150 == v152 && v151 == v153)
    {
      (*(v16 + 8))(v22, v15);

      v47 = v43;
      v49 = v143;
      v48 = v144;
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v16 + 8))(v22, v15);

      v47 = v43;
      v49 = v143;
      v48 = v144;
      if ((v52 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v53 = v138;
    sub_100007204(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v138, &qword_1006B0050);
    v55 = v139;
    v54 = v140;
    if ((*(v139 + 48))(v53, 1, v140) == 1)
    {
      sub_100012DF0(v53, &qword_1006B0050);
LABEL_21:
      v56 = [v48 textLabel];
      if (v56)
      {
        v57 = v56;
        v58 = [objc_opt_self() mainBundle];
        v130 = 0x800000010057AC20;
        v59 = 0xD00000000000001BLL;
        v60 = 0x800000010057AC00;
        v61 = 0xD00000000000002DLL;
        v62 = 0;
        v63 = 0;
LABEL_35:
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v59, *&v62, v58, v80, *&v61);

        v81 = String._bridgeToObjectiveC()();

        [v57 setText:v81];

        goto LABEL_52;
      }

      goto LABEL_52;
    }

    v65 = v137;
    (*(v55 + 32))(v137, v53, v54);
    v66 = [v48 textLabel];
    if (v66)
    {
      v67 = v66;
      v68 = [objc_opt_self() mainBundle];
      v154._object = 0x800000010057AC80;
      v69._countAndFlagsBits = 0xD000000000000021;
      v69._object = 0x800000010057AC50;
      v154._countAndFlagsBits = 0xD000000000000033;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v154);

      sub_10007EBC0(&unk_1006B20B0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_100552220;
      v72 = FMFFriend.shortName.getter();
      v74 = v73;
      *(v71 + 56) = &type metadata for String;
      *(v71 + 64) = sub_10008EE84();
      if (!v74)
      {
        v72 = FMFFriend.name.getter();
        v74 = v75;
      }

      *(v71 + 32) = v72;
      *(v71 + 40) = v74;
      String.init(format:_:)();

      v76 = String._bridgeToObjectiveC()();

      [v67 setText:v76];

      v48 = v144;
      v46 = &selRef_pushViewController_animated_;
      v55 = v139;
      v54 = v140;
      v65 = v137;
    }

LABEL_45:
    (*(v55 + 8))(v65, v54);
    goto LABEL_52;
  }

  v50 = *(v16 + 104);
  if (v45 != enum case for FMFLocationAlertTriggerType.scheduled(_:))
  {
    v64 = v136;
    v50(v136, enum case for FMFLocationAlertTarget.alertMe(_:), v15);
    sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v47 = v43;
    if (v150 == v152 && v151 == v153)
    {
      (*(v16 + 8))(v64, v15);

      v49 = v143;
      v48 = v144;
    }

    else
    {
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v16 + 8))(v64, v15);

      v49 = v143;
      v48 = v144;
      if ((v82 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v83 = v134;
    sub_100007204(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v134, &qword_1006B0050);
    v85 = v139;
    v84 = v140;
    if ((*(v139 + 48))(v83, 1, v140) != 1)
    {
      v104 = v132;
      (*(v85 + 32))(v132, v83, v84);
      v105 = [v48 textLabel];
      if (v105)
      {
        v106 = v105;
        v107 = [objc_opt_self() mainBundle];
        v157._object = 0x800000010057AB30;
        v108._countAndFlagsBits = 0xD000000000000022;
        v108._object = 0x800000010057AB00;
        v157._countAndFlagsBits = 0xD000000000000034;
        v109._countAndFlagsBits = 0;
        v109._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v108, 0, v107, v109, v157);

        sub_10007EBC0(&unk_1006B20B0);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_100552220;
        v111 = FMFFriend.shortName.getter();
        v113 = v112;
        *(v110 + 56) = &type metadata for String;
        *(v110 + 64) = sub_10008EE84();
        if (!v113)
        {
          v111 = FMFFriend.name.getter();
          v113 = v114;
        }

        *(v110 + 32) = v111;
        *(v110 + 40) = v113;
        String.init(format:_:)();

        v115 = String._bridgeToObjectiveC()();

        [v106 setText:v115];

        v48 = v144;
        v46 = &selRef_pushViewController_animated_;
        v85 = v139;
        v84 = v140;
        v104 = v132;
      }

      (*(v85 + 8))(v104, v84);
      goto LABEL_51;
    }

    sub_100012DF0(v83, &qword_1006B0050);
LABEL_39:
    v86 = [v48 textLabel];
    if (v86)
    {
      v87 = v86;
      v88 = [objc_opt_self() mainBundle];
      v155._object = 0x800000010057AAD0;
      v89._countAndFlagsBits = 0xD00000000000001CLL;
      v89._object = 0x800000010057AAB0;
      v155._countAndFlagsBits = 0xD00000000000002ELL;
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v155);

      v91 = String._bridgeToObjectiveC()();

      [v87 setText:v91];
    }

LABEL_51:
    (*(v47 + 8))(v145, v146);
    goto LABEL_52;
  }

  v51 = v135;
  v50(v135, enum case for FMFLocationAlertTarget.alertMe(_:), v15);
  sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v47 = v43;
  if (v150 == v152 && v151 == v153)
  {
    (*(v16 + 8))(v51, v15);

    v49 = v143;
  }

  else
  {
    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v16 + 8))(v51, v15);

    v49 = v143;
    if ((v77 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v78 = v133;
  sub_100007204(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v133, &qword_1006B0050);
  v55 = v139;
  v54 = v140;
  if ((*(v139 + 48))(v78, 1, v140) != 1)
  {
    v65 = v131;
    (*(v55 + 32))(v131, v78, v54);
    v48 = v144;
    v92 = [v144 textLabel];
    if (v92)
    {
      v93 = v92;
      v94 = [objc_opt_self() mainBundle];
      v156._object = 0x800000010057ABB0;
      v95._countAndFlagsBits = 0xD000000000000024;
      v95._object = 0x800000010057ABD0;
      v96.value._object = 0x800000010057AB90;
      v156._countAndFlagsBits = 0xD000000000000017;
      v96.value._countAndFlagsBits = 0xD000000000000012;
      v97._countAndFlagsBits = 0;
      v97._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v96, v94, v97, v156);

      sub_10007EBC0(&unk_1006B20B0);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_100552220;
      v99 = FMFFriend.shortName.getter();
      v101 = v100;
      *(v98 + 56) = &type metadata for String;
      *(v98 + 64) = sub_10008EE84();
      if (!v101)
      {
        v99 = FMFFriend.name.getter();
        v101 = v102;
      }

      *(v98 + 32) = v99;
      *(v98 + 40) = v101;
      String.init(format:_:)();

      v103 = String._bridgeToObjectiveC()();

      [v93 setText:v103];

      v48 = v144;
      v46 = &selRef_pushViewController_animated_;
      v55 = v139;
      v54 = v140;
      v65 = v131;
    }

    goto LABEL_45;
  }

  sub_100012DF0(v78, &qword_1006B0050);
LABEL_33:
  v48 = v144;
  v79 = [v144 textLabel];
  if (v79)
  {
    v57 = v79;
    v58 = [objc_opt_self() mainBundle];
    v130 = 0x800000010057ABB0;
    v59 = 0xD00000000000001FLL;
    v60 = 0x800000010057AB70;
    v63 = 0x800000010057AB90;
    v61 = 0xD000000000000017;
    v62 = 0xD000000000000012;
    goto LABEL_35;
  }

LABEL_52:
  v116 = [v48 v46[37]];
  if (v116)
  {
    v117 = v116;
    [v116 setNumberOfLines:0];
  }

  v118 = [v48 v46[37]];
  if (v118)
  {
    v119 = v118;
    [v118 setLineBreakMode:0];
  }

  v120 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  swift_beginAccess();
  v121 = v146;
  v141(v49, v1 + v120, v146);
  sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v152 == v148 && v153 == v149)
  {
    v122 = 3;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v122 = 3;
  }

  else
  {
    v122 = 0;
  }

  v123 = *(v47 + 8);
  v123(v49, v121);

  [v48 setAccessoryType:v122];
  v124 = [v48 v46[37]];
  if (v124)
  {
    v125 = v124;
    [v124 setEnabled:*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
  }

  v126 = [v48 detailTextLabel];
  if (v126)
  {
    v127 = v126;
    [v126 setEnabled:*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable))
  {
    v128 = 3;
  }

  else
  {
    v128 = 0;
  }

  [v48 setSelectionStyle:v128];
  v123(v147, v121);
  return v48;
}

id sub_1000AF378(void *a1)
{
  v464 = a1;
  v1 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v1 - 8);
  v420 = &v404[-v2];
  v3 = sub_10007EBC0(&qword_1006B0040);
  v4 = __chkstk_darwin(v3 - 8);
  v415 = &v404[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v413 = &v404[-v7];
  v8 = __chkstk_darwin(v6);
  v408 = &v404[-v9];
  v10 = __chkstk_darwin(v8);
  v455 = &v404[-v11];
  v12 = __chkstk_darwin(v10);
  v421 = &v404[-v13];
  v14 = __chkstk_darwin(v12);
  v429 = &v404[-v15];
  v16 = __chkstk_darwin(v14);
  v449 = &v404[-v17];
  v18 = __chkstk_darwin(v16);
  v417 = &v404[-v19];
  __chkstk_darwin(v18);
  v434 = &v404[-v20];
  v21 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v21 - 8);
  v442 = &v404[-v22];
  v447 = type metadata accessor for FMFFriend();
  v446 = *(v447 - 8);
  __chkstk_darwin(v447);
  v445 = &v404[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for FMFLocation();
  v462 = *(v24 - 8);
  v463 = v24;
  v25 = __chkstk_darwin(v24);
  v414 = &v404[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v412 = &v404[-v28];
  v29 = __chkstk_darwin(v27);
  v407 = &v404[-v30];
  v31 = __chkstk_darwin(v29);
  v409 = &v404[-v32];
  v33 = __chkstk_darwin(v31);
  v419 = &v404[-v34];
  v35 = __chkstk_darwin(v33);
  v418 = &v404[-v36];
  v37 = __chkstk_darwin(v35);
  v428 = &v404[-v38];
  v39 = __chkstk_darwin(v37);
  v431 = &v404[-v40];
  __chkstk_darwin(v39);
  v453 = &v404[-v41];
  v42 = sub_10007EBC0(&qword_1006AF740);
  v43 = __chkstk_darwin(v42 - 8);
  v438 = &v404[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __chkstk_darwin(v43);
  v424 = &v404[-v46];
  v47 = __chkstk_darwin(v45);
  v456 = &v404[-v48];
  v49 = __chkstk_darwin(v47);
  v423 = &v404[-v50];
  v51 = __chkstk_darwin(v49);
  v427 = &v404[-v52];
  v53 = __chkstk_darwin(v51);
  v411 = &v404[-v54];
  v55 = __chkstk_darwin(v53);
  v416 = &v404[-v56];
  v57 = __chkstk_darwin(v55);
  v433 = &v404[-v58];
  v59 = __chkstk_darwin(v57);
  v432 = &v404[-v60];
  v61 = __chkstk_darwin(v59);
  v452 = &v404[-v62];
  v63 = __chkstk_darwin(v61);
  v443 = &v404[-v64];
  v65 = __chkstk_darwin(v63);
  v451 = &v404[-v66];
  v67 = __chkstk_darwin(v65);
  v444 = &v404[-v68];
  v69 = __chkstk_darwin(v67);
  v448 = &v404[-v70];
  v71 = __chkstk_darwin(v69);
  v436 = &v404[-v72];
  v73 = __chkstk_darwin(v71);
  v75 = &v404[-v74];
  v76 = __chkstk_darwin(v73);
  v425 = &v404[-v77];
  v78 = __chkstk_darwin(v76);
  v426 = &v404[-v79];
  v80 = __chkstk_darwin(v78);
  v430 = &v404[-v81];
  v82 = __chkstk_darwin(v80);
  v441 = &v404[-v83];
  v84 = __chkstk_darwin(v82);
  v439 = &v404[-v85];
  v86 = __chkstk_darwin(v84);
  v88 = &v404[-v87];
  __chkstk_darwin(v86);
  v90 = &v404[-v89];
  v91 = sub_10007EBC0(&qword_1006B0020);
  v92 = __chkstk_darwin(v91);
  v437 = &v404[-((v93 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = __chkstk_darwin(v92);
  v450 = &v404[-v95];
  v96 = __chkstk_darwin(v94);
  v435 = &v404[-v97];
  v98 = __chkstk_darwin(v96);
  v440 = &v404[-v99];
  v100 = __chkstk_darwin(v98);
  v102 = &v404[-v101];
  __chkstk_darwin(v100);
  v104 = &v404[-v103];
  v105 = type metadata accessor for FMFLocationAlertAddressType();
  v460 = *(v105 - 8);
  v106 = __chkstk_darwin(v105);
  v457 = &v404[-((v107 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v106);
  v459 = &v404[-v108];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_100005B14(v109, qword_1006D4630);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&_mh_execute_header, v110, v111, "FMLocationAlertViewController: Loading location cells", v112, 2u);
  }

  v113 = v461;
  v114 = *(v461 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded) == 1;
  v454 = v91;
  v458 = v105;
  if (v114)
  {
    v115 = v459;
    sub_1000A7D30(v464, v459);
    v116 = v460;
LABEL_8:
    v117 = v455;
    goto LABEL_33;
  }

  v406 = v102;
  v118 = v88;
  v422 = v75;
  v119 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v120 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
  v121 = *(v91 + 48);
  v410 = v119;
  sub_100007204(v113 + v119, v104, &qword_1006AF740);
  sub_100007204(v113 + v120, &v104[v121], &qword_1006AF740);
  v122 = v463;
  v123 = *(v462 + 48);
  if (v123(v104, 1, v463) != 1)
  {
    sub_100007204(v104, v90, &qword_1006AF740);
    v124 = v118;
    if (v123(&v104[v121], 1, v122) != 1)
    {
      v138 = v462;
      v139 = v453;
      (*(v462 + 32))(v453, &v104[v121], v122);
      sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
      v405 = dispatch thunk of static Equatable.== infix(_:_:)();
      v140 = *(v138 + 8);
      v141 = v139;
      v91 = v454;
      v140(v141, v122);
      v140(v90, v122);
      sub_100012DF0(v104, &qword_1006AF740);
      v125 = v406;
      if (v405)
      {
        goto LABEL_25;
      }

LABEL_15:
      v126 = v461;
      sub_100007204(v461 + v410, v124, &qword_1006AF740);
      v127 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
      swift_beginAccess();
      v128 = *(v91 + 48);
      sub_100007204(v124, v125, &qword_1006AF740);
      sub_100007204(v126 + v127, v125 + v128, &qword_1006AF740);
      v129 = v463;
      if (v123(v125, 1, v463) == 1)
      {
        sub_100012DF0(v124, &qword_1006AF740);
        v130 = v123(v125 + v128, 1, v129);
        v105 = v458;
        if (v130 == 1)
        {
          sub_100012DF0(v125, &qword_1006AF740);
          v117 = v455;
LABEL_31:
          v116 = v460;
          v115 = v459;
          (*(v460 + 104))(v459, enum case for FMFLocationAlertAddressType.currentLocation(_:), v105);
          v113 = v461;
          goto LABEL_32;
        }
      }

      else
      {
        v131 = v439;
        sub_100007204(v125, v439, &qword_1006AF740);
        if (v123(v125 + v128, 1, v129) != 1)
        {
          v143 = v462;
          v144 = v453;
          (*(v462 + 32))(v453, v125 + v128, v129);
          sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
          v145 = dispatch thunk of static Equatable.== infix(_:_:)();
          v146 = *(v143 + 8);
          v147 = v144;
          v91 = v454;
          v146(v147, v129);
          sub_100012DF0(v124, &qword_1006AF740);
          v146(v131, v129);
          sub_100012DF0(v125, &qword_1006AF740);
          v105 = v458;
          v117 = v455;
          if (v145)
          {
            goto LABEL_31;
          }

LABEL_21:
          v132 = v461;
          v133 = v441;
          sub_100007204(v461 + v410, v441, &qword_1006AF740);
          v134 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
          swift_beginAccess();
          v135 = *(v91 + 48);
          v136 = v440;
          sub_100007204(v133, v440, &qword_1006AF740);
          sub_100007204(v132 + v134, &v136[v135], &qword_1006AF740);
          v137 = v463;
          if (v123(v136, 1, v463) == 1)
          {
            sub_100012DF0(v133, &qword_1006AF740);
            if (v123(&v136[v135], 1, v137) == 1)
            {
              sub_100012DF0(v136, &qword_1006AF740);
LABEL_59:
              v116 = v460;
              v115 = v459;
              (*(v460 + 104))(v459, enum case for FMFLocationAlertAddressType.custom(_:), v105);
              v113 = v461;
              v75 = v422;
              goto LABEL_8;
            }
          }

          else
          {
            v142 = v430;
            sub_100007204(v136, v430, &qword_1006AF740);
            if (v123(&v136[v135], 1, v137) != 1)
            {
              v202 = v462;
              v203 = &v136[v135];
              v204 = v136;
              v205 = v453;
              (*(v462 + 32))(v453, v203, v137);
              sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
              v206 = v133;
              v207 = v137;
              v208 = dispatch thunk of static Equatable.== infix(_:_:)();
              v209 = *(v202 + 8);
              v209(v205, v207);
              sub_100012DF0(v206, &qword_1006AF740);
              v209(v142, v207);
              sub_100012DF0(v204, &qword_1006AF740);
              if (v208)
              {
                goto LABEL_59;
              }

              return [objc_allocWithZone(UITableViewCell) init];
            }

            sub_100012DF0(v133, &qword_1006AF740);
            (*(v462 + 8))(v142, v137);
          }

          sub_100012DF0(v136, &qword_1006B0020);
          return [objc_allocWithZone(UITableViewCell) init];
        }

        sub_100012DF0(v124, &qword_1006AF740);
        (*(v462 + 8))(v131, v129);
        v105 = v458;
      }

      sub_100012DF0(v125, &qword_1006B0020);
      goto LABEL_21;
    }

    (*(v462 + 8))(v90, v122);
LABEL_14:
    sub_100012DF0(v104, &qword_1006B0020);
    v125 = v406;
    goto LABEL_15;
  }

  v124 = v118;
  if (v123(&v104[v121], 1, v122) != 1)
  {
    goto LABEL_14;
  }

  sub_100012DF0(v104, &qword_1006AF740);
LABEL_25:
  v116 = v460;
  v115 = v459;
  v105 = v458;
  (*(v460 + 104))(v459, enum case for FMFLocationAlertAddressType.friendLocation(_:), v458);
  v113 = v461;
  v117 = v455;
LABEL_32:
  v75 = v422;
LABEL_33:
  v148 = v457;
  (*(v116 + 16))(v457, v115, v105);
  v149 = (*(v116 + 88))(v148, v105);
  v150 = v456;
  if (v149 == enum case for FMFLocationAlertAddressType.currentLocation(_:))
  {
    v464 = sub_1000B4A9C();
    v151 = [v464 textLabel];
    if (v151)
    {
      v152 = v151;
      v153 = [objc_opt_self() mainBundle];
      v465._object = 0x800000010057AD20;
      v154._object = 0x800000010057ACF0;
      v465._countAndFlagsBits = 0xD000000000000034;
      v154._countAndFlagsBits = 0xD000000000000022;
      v155._countAndFlagsBits = 0;
      v155._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v154, 0, v153, v155, v465);

      v156 = String._bridgeToObjectiveC()();

      [v152 setText:v156];
    }

    v157 = [v464 detailTextLabel];
    v158 = v463;
    v159 = v451;
    v160 = v449;
    v161 = v448;
    if (!v157)
    {
LABEL_102:
      v255 = [v464 detailTextLabel];
      if (v255)
      {
        v256 = v255;
        v257 = [objc_opt_self() secondaryLabelColor];
        [v256 setTextColor:v257];
      }

      v258 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
      swift_beginAccess();
      sub_100007204(v113 + v258, v159, &qword_1006AF740);
      v259 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
      swift_beginAccess();
      v260 = *(v454 + 48);
      v261 = v450;
      sub_100007204(v159, v450, &qword_1006AF740);
      sub_100007204(v113 + v259, &v261[v260], &qword_1006AF740);
      v262 = v462;
      v263 = v463;
      v264 = *(v462 + 48);
      if (v264(v261, 1, v463) == 1)
      {
        sub_100012DF0(v159, &qword_1006AF740);
        v265 = v264(&v261[v260], 1, v263);
        v266 = v459;
        if (v265 == 1)
        {
          sub_100012DF0(v261, &qword_1006AF740);
          v267 = 3;
          v268 = v452;
LABEL_112:
          [v464 setAccessoryType:v267];
          sub_100007204(v113 + v258, v268, &qword_1006AF740);
          if (v264(v268, 1, v263))
          {
            sub_100012DF0(v268, &qword_1006AF740);
          }

          else
          {
            v275 = v453;
            (*(v262 + 16))(v453, v268, v263);
            sub_100012DF0(v268, &qword_1006AF740);
            v276 = FMFLocation.location.getter();
            v277 = v262;
            v278 = v276;
            (*(v277 + 8))(v275, v263);
            if (v278)
            {
              v279 = sub_1000B4C78(v278);
              if (v279)
              {
                v280 = v279;
                v281 = [v464 imageView];
                if (v281)
                {
                  v282 = v281;
                  v280 = v280;
                  [v282 setImage:v280];
                }
              }

              else
              {
              }
            }
          }

          v270 = [v464 textLabel];
          if (v270)
          {
            v271 = v270;
            [v270 setEnabled:*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
          }

          v272 = [v464 detailTextLabel];
          if (v272)
          {
            v273 = v272;
            [v272 setEnabled:*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
          }

          if (*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable))
          {
            v274 = 3;
          }

          else
          {
            v274 = 0;
          }

          [v464 setSelectionStyle:v274];
          (*(v460 + 8))(v266, v458);
          return v464;
        }
      }

      else
      {
        v269 = v443;
        sub_100007204(v261, v443, &qword_1006AF740);
        if (v264(&v261[v260], 1, v263) != 1)
        {
          v283 = &v261[v260];
          v284 = v453;
          (*(v262 + 32))(v453, v283, v263);
          sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
          v285 = v269;
          v286 = v262;
          v287 = dispatch thunk of static Equatable.== infix(_:_:)();
          v288 = *(v286 + 8);
          v288(v284, v463);
          sub_100012DF0(v159, &qword_1006AF740);
          v288(v285, v463);
          v113 = v461;
          v263 = v463;
          sub_100012DF0(v261, &qword_1006AF740);
          v266 = v459;
          v268 = v452;
          if (v287)
          {
            v267 = 3;
            goto LABEL_111;
          }

LABEL_110:
          v267 = 0;
LABEL_111:
          v262 = v462;
          goto LABEL_112;
        }

        sub_100012DF0(v159, &qword_1006AF740);
        (*(v262 + 8))(v269, v263);
        v266 = v459;
      }

      sub_100012DF0(v261, &qword_1006B0020);
      v268 = v452;
      goto LABEL_110;
    }

    v162 = v157;
    v163 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
    swift_beginAccess();
    sub_100007204(v113 + v163, v161, &qword_1006AF740);
    v164 = v462;
    v165 = *(v462 + 48);
    if (v165(v161, 1, v158))
    {
      sub_100012DF0(v161, &qword_1006AF740);
    }

    else
    {
      v197 = v431;
      (*(v164 + 16))(v431, v161, v158);
      sub_100012DF0(v161, &qword_1006AF740);
      FMFLocation.address.getter();
      v158 = v463;
      (*(v164 + 8))(v197, v463);
      v198 = type metadata accessor for FMFAddress();
      v199 = *(v198 - 8);
      if ((*(v199 + 48))(v160, 1, v198) == 1)
      {
        sub_100012DF0(v160, &qword_1006B0040);
      }

      else
      {
        v200 = FMFAddress.formattedAddressLines.getter();
        v158 = v463;
        v201 = v200;
        (*(v199 + 8))(v160, v198);
        if (v201)
        {
          if (*(v201 + 16))
          {

            v113 = v461;
            goto LABEL_130;
          }
        }
      }
    }

    v248 = v444;
    sub_100007204(v461 + v163, v444, &qword_1006AF740);
    if (v165(v248, 1, v158))
    {
      v249 = &qword_1006AF740;
LABEL_100:
      sub_100012DF0(v248, v249);
      v254 = 0;
      v113 = v461;
LABEL_101:
      [v162 setText:v254];

      goto LABEL_102;
    }

    v250 = v462;
    v251 = v428;
    (*(v462 + 16))(v428, v248, v158);
    sub_100012DF0(v248, &qword_1006AF740);
    v248 = v429;
    FMFLocation.address.getter();
    (*(v250 + 8))(v251, v463);
    v252 = type metadata accessor for FMFAddress();
    v253 = *(v252 - 8);
    if ((*(v253 + 48))(v248, 1, v252) == 1)
    {
      v249 = &qword_1006B0040;
      goto LABEL_100;
    }

    FMFAddress.displayAddress.getter();
    v290 = v289;
    (*(v253 + 8))(v248, v252);
    v113 = v461;
    if (!v290)
    {
      v254 = 0;
      goto LABEL_101;
    }

LABEL_130:
    v254 = String._bridgeToObjectiveC()();

    goto LABEL_101;
  }

  if (v149 == enum case for FMFLocationAlertAddressType.friendLocation(_:))
  {
    v166 = v442;
    sub_100007204(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v442, &qword_1006B0050);
    v167 = v446;
    v168 = v447;
    if ((*(v446 + 48))(v166, 1, v447) == 1)
    {
      sub_100012DF0(v166, &qword_1006B0050);
      v464 = sub_1000B4630();
      (*(v116 + 8))(v115, v105);
      return v464;
    }

    v422 = v75;
    (*(v167 + 32))(v445, v166, v168);
    v464 = sub_1000B4A9C();
    v177 = [v464 textLabel];
    v178 = v434;
    if (v177)
    {
      v179 = v177;
      v180 = [objc_opt_self() mainBundle];
      v466._object = 0x800000010057AD90;
      v181._countAndFlagsBits = 0xD000000000000027;
      v181._object = 0x800000010057AD60;
      v466._countAndFlagsBits = 0xD000000000000039;
      v182._countAndFlagsBits = 0;
      v182._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v181, 0, v180, v182, v466);

      sub_10007EBC0(&unk_1006B20B0);
      v183 = swift_allocObject();
      *(v183 + 16) = xmmword_100552220;
      v184 = FMFFriend.shortName.getter();
      v186 = v185;
      *(v183 + 56) = &type metadata for String;
      *(v183 + 64) = sub_10008EE84();
      if (!v186)
      {
        v184 = FMFFriend.name.getter();
        v186 = v187;
      }

      *(v183 + 32) = v184;
      *(v183 + 40) = v186;
      String.init(format:_:)();

      v188 = String._bridgeToObjectiveC()();

      [v179 setText:v188];
    }

    v189 = [v464 detailTextLabel];
    v190 = v463;
    if (!v189)
    {
LABEL_199:
      v363 = &selRef_pushViewController_animated_;
      v364 = [v464 detailTextLabel];
      if (v364)
      {
        v365 = v364;
        v366 = [objc_opt_self() secondaryLabelColor];
        [v365 setTextColor:v366];
      }

      v367 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
      v368 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
      swift_beginAccess();
      v369 = *(v454 + 48);
      v370 = v435;
      sub_100007204(v113 + v367, v435, &qword_1006AF740);
      sub_100007204(v113 + v368, &v370[v369], &qword_1006AF740);
      v371 = v462;
      v372 = v463;
      v373 = *(v462 + 48);
      if (v373(v370, 1, v463) == 1)
      {
        if (v373(&v370[v369], 1, v372) == 1)
        {
          sub_100012DF0(v370, &qword_1006AF740);
          v374 = 3;
          v375 = v436;
LABEL_209:
          [v464 setAccessoryType:v374];
          sub_100007204(v113 + v367, v375, &qword_1006AF740);
          if (v373(v375, 1, v372) == 1)
          {
            sub_100012DF0(v375, &qword_1006AF740);
            v378 = v458;
            v379 = v459;
          }

          else
          {
            v380 = FMFLocation.location.getter();
            v381 = v371;
            v382 = v380;
            (*(v381 + 8))(v375, v372);
            v378 = v458;
            v379 = v459;
            if (v382)
            {
              v383 = sub_1000B4C78(v382);
              if (v383)
              {
                v384 = v383;
                v385 = [v464 imageView];
                if (v385)
                {
                  v386 = v385;
                  v384 = v384;
                  [v386 setImage:v384];
                }
              }
            }
          }

          v387 = [v464 textLabel];
          if (v387)
          {
            v388 = v387;
            [v387 setEnabled:*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
          }

          v389 = [v464 v363[48]];
          v390 = v445;
          if (v389)
          {
            v391 = v389;
            [v389 setEnabled:*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
          }

          if (*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable))
          {
            v392 = 3;
          }

          else
          {
            v392 = 0;
          }

          [v464 setSelectionStyle:v392];
          (*(v446 + 8))(v390, v447);
          (*(v460 + 8))(v379, v378);
          return v464;
        }
      }

      else
      {
        v376 = v367;
        v377 = v422;
        sub_100007204(v370, v422, &qword_1006AF740);
        if (v373(&v370[v369], 1, v372) != 1)
        {
          v394 = &v370[v369];
          v395 = v453;
          (*(v371 + 32))(v453, v394, v372);
          sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
          v396 = v371;
          v397 = dispatch thunk of static Equatable.== infix(_:_:)();
          v398 = *(v396 + 8);
          v398(v395, v463);
          v398(v377, v463);
          v372 = v463;
          sub_100012DF0(v370, &qword_1006AF740);
          v375 = v436;
          v367 = v376;
          v363 = &selRef_pushViewController_animated_;
          if (v397)
          {
            v374 = 3;
            goto LABEL_208;
          }

LABEL_207:
          v374 = 0;
LABEL_208:
          v371 = v462;
          goto LABEL_209;
        }

        (*(v371 + 8))(v377, v372);
        v367 = v376;
        v363 = &selRef_pushViewController_animated_;
      }

      sub_100012DF0(v370, &qword_1006B0020);
      v375 = v436;
      goto LABEL_207;
    }

    v191 = v189;
    v192 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
    v193 = v426;
    sub_100007204(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation, v426, &qword_1006AF740);
    v194 = v462;
    v195 = *(v462 + 48);
    if (v195(v193, 1, v190) == 1)
    {
      sub_100012DF0(v193, &qword_1006AF740);
    }

    else
    {
      FMFLocation.address.getter();
      v190 = v463;
      (*(v194 + 8))(v193, v463);
      v215 = type metadata accessor for FMFAddress();
      v216 = *(v215 - 8);
      if ((*(v216 + 48))(v178, 1, v215) == 1)
      {
        sub_100012DF0(v178, &qword_1006B0040);
      }

      else
      {
        v242 = FMFAddress.formattedAddressLines.getter();
        v190 = v463;
        v243 = v242;
        (*(v216 + 8))(v178, v215);
        if (v243)
        {
          if (*(v243 + 16))
          {

            v113 = v461;
            goto LABEL_196;
          }
        }
      }
    }

    v354 = v425;
    sub_100007204(v461 + v192, v425, &qword_1006AF740);
    if (v195(v354, 1, v190) == 1)
    {
      v355 = &qword_1006AF740;
      v356 = v354;
LABEL_194:
      sub_100012DF0(v356, v355);
      v360 = 0;
      v113 = v461;
LABEL_198:
      [v191 setText:v360];

      goto LABEL_199;
    }

    v357 = v417;
    FMFLocation.address.getter();
    (*(v462 + 8))(v354, v463);
    v358 = type metadata accessor for FMFAddress();
    v359 = *(v358 - 8);
    if ((*(v359 + 48))(v357, 1, v358) == 1)
    {
      v355 = &qword_1006B0040;
      v356 = v357;
      goto LABEL_194;
    }

    FMFAddress.displayAddress.getter();
    v362 = v361;
    (*(v359 + 8))(v357, v358);
    v113 = v461;
    if (!v362)
    {
      v360 = 0;
      goto LABEL_198;
    }

LABEL_196:
    v360 = String._bridgeToObjectiveC()();

    goto LABEL_198;
  }

  if (v149 != enum case for FMFLocationAlertAddressType.custom(_:))
  {
    v464 = sub_1000B48F0();
    v196 = *(v116 + 8);
    v196(v115, v105);
    v196(v457, v105);
    return v464;
  }

  v464 = sub_1000B4A9C();
  v169 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
  swift_beginAccess();
  v457 = v169;
  v170 = v432;
  sub_100007204(v113 + v169, v432, &qword_1006AF740);
  v171 = v462;
  v172 = v463;
  v173 = *(v462 + 48);
  if ((v173)(v170, 1, v463))
  {
    sub_100012DF0(v170, &qword_1006AF740);
    v174 = 0;
    v175 = 0;
    v176 = v433;
  }

  else
  {
    v210 = v418;
    (*(v171 + 16))(v418, v170, v172);
    sub_100012DF0(v170, &qword_1006AF740);
    v211 = v420;
    FMFLocation.label.getter();
    v172 = v463;
    (*(v171 + 8))(v210, v463);
    v212 = type metadata accessor for FMFLabel();
    v213 = *(v212 - 8);
    v214 = (*(v213 + 48))(v211, 1, v212);
    v176 = v433;
    if (v214 == 1)
    {
      sub_100012DF0(v211, &qword_1006B0038);
      v174 = 0;
      v175 = 0;
    }

    else
    {
      v217 = FMFLabel.localizedValue.getter();
      v172 = v463;
      v218 = v211;
      v174 = v217;
      v175 = v219;
      (*(v213 + 8))(v218, v212);
    }

    v150 = v456;
  }

  sub_100007204(&v457[v113], v176, &qword_1006AF740);
  if (!(v173)(v176, 1, v172))
  {
    v222 = v462;
    v223 = v176;
    v224 = v419;
    (*(v462 + 16))(v419, v223, v172);
    sub_100012DF0(v223, &qword_1006AF740);
    v225 = v421;
    v226 = v172;
    FMFLocation.address.getter();
    v227 = v225;
    (*(v222 + 8))(v224, v226);
    v228 = type metadata accessor for FMFAddress();
    v229 = *(v228 - 8);
    if ((*(v229 + 48))(v227, 1, v228) == 1)
    {
      sub_100012DF0(v227, &qword_1006B0040);
    }

    else
    {
      v230 = FMFAddress.formattedAddressLines.getter();
      (*(v229 + 8))(v227, v228);
      if (v230)
      {
        v113 = v461;
        if (v230[2])
        {
          v220 = v230[4];
          v221 = v230[5];
        }

        else
        {

          v220 = 0;
          v221 = 0;
        }

LABEL_75:
        v150 = v456;
        if (!v175)
        {
          goto LABEL_83;
        }

        goto LABEL_76;
      }
    }

    v220 = 0;
    v221 = 0;
    v113 = v461;
    goto LABEL_75;
  }

  sub_100012DF0(v176, &qword_1006AF740);
  v220 = 0;
  v221 = 0;
  if (!v175)
  {
LABEL_83:

    v232 = [v464 textLabel];
    v233 = v463;
    v234 = v427;
    if (!v232)
    {
      goto LABEL_137;
    }

    v235 = v232;
    sub_100007204(&v457[v113], v427, &qword_1006AF740);
    if ((v173)(v234, 1, v233))
    {
      sub_100012DF0(v234, &qword_1006AF740);
    }

    else
    {
      v456 = v173;
      v237 = v462;
      v238 = v412;
      (*(v462 + 16))(v412, v234, v233);
      sub_100012DF0(v234, &qword_1006AF740);
      v239 = v413;
      FMFLocation.address.getter();
      (*(v237 + 8))(v238, v233);
      v240 = type metadata accessor for FMFAddress();
      v241 = *(v240 - 8);
      if ((*(v241 + 48))(v239, 1, v240) == 1)
      {
        sub_100012DF0(v239, &qword_1006B0040);
        v236 = 0;
        v173 = v456;
        goto LABEL_136;
      }

      v236 = FMFAddress.formattedAddressLines.getter();
      (*(v241 + 8))(v239, v240);
      v173 = v456;
      if (!v236)
      {
        goto LABEL_136;
      }

      if (v236[2])
      {

        v236 = String._bridgeToObjectiveC()();

        goto LABEL_136;
      }
    }

    v236 = 0;
LABEL_136:
    [v235 setText:v236];

    v233 = v463;
LABEL_137:
    v291 = [v464 detailTextLabel];
    if (!v291)
    {
      goto LABEL_148;
    }

    v292 = v291;
    v293 = v423;
    sub_100007204(&v457[v113], v423, &qword_1006AF740);
    if ((v173)(v293, 1, v233))
    {
      sub_100012DF0(v293, &qword_1006AF740);
      v294 = 0;
LABEL_146:
      [v292 setText:v294];
LABEL_147:

      goto LABEL_148;
    }

    v295 = v462;
    v296 = v414;
    (*(v462 + 16))(v414, v293, v233);
    sub_100012DF0(v293, &qword_1006AF740);
    v297 = v415;
    FMFLocation.address.getter();
    (*(v295 + 8))(v296, v463);
    v298 = type metadata accessor for FMFAddress();
    v299 = *(v298 - 8);
    if ((*(v299 + 48))(v297, 1, v298) == 1)
    {
      sub_100012DF0(v297, &qword_1006B0040);
    }

    else
    {
      FMFAddress.displayAddress.getter();
      v301 = v300;
      (*(v299 + 8))(v297, v298);
      if (v301)
      {
        v294 = String._bridgeToObjectiveC()();

LABEL_145:
        v113 = v461;
        goto LABEL_146;
      }
    }

    v294 = 0;
    goto LABEL_145;
  }

LABEL_76:
  v231 = HIBYTE(v175) & 0xF;
  if ((v175 & 0x2000000000000000) == 0)
  {
    v231 = v174 & 0xFFFFFFFFFFFFLL;
  }

  if (!v231)
  {
    goto LABEL_82;
  }

  if (v221)
  {
    if (v174 == v220 && v175 == v221)
    {
LABEL_82:

      goto LABEL_83;
    }

    v244 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v244)
    {
      goto LABEL_83;
    }
  }

  v245 = [v464 textLabel];
  if (v245)
  {
    v246 = v245;
    v247 = String._bridgeToObjectiveC()();

    [v246 setText:v247];
  }

  else
  {
  }

  v336 = v463;
  v337 = [v464 detailTextLabel];
  v338 = v416;
  if (v337)
  {
    v292 = v337;
    sub_100007204(&v457[v113], v416, &qword_1006AF740);
    if ((v173)(v338, 1, v336))
    {
      sub_100012DF0(v338, &qword_1006AF740);
    }

    else
    {
      v339 = v338;
      v340 = v462;
      v341 = v409;
      (*(v462 + 16))(v409, v339, v336);
      sub_100012DF0(v339, &qword_1006AF740);
      FMFLocation.address.getter();
      v336 = v463;
      (*(v340 + 8))(v341, v463);
      v342 = type metadata accessor for FMFAddress();
      v343 = *(v342 - 8);
      if ((*(v343 + 48))(v117, 1, v342) != 1)
      {
        v399 = FMFAddress.formattedAddressLines.getter();
        v336 = v463;
        v400 = v399;
        (*(v343 + 8))(v117, v342);
        v113 = v461;
        v344 = v462;
        v345 = v411;
        if (v400)
        {
          if (*(v400 + 16))
          {

            goto LABEL_232;
          }
        }

LABEL_183:
        sub_100007204(&v457[v113], v345, &qword_1006AF740);
        if ((v173)(v345, 1, v336))
        {
          v346 = &qword_1006AF740;
          v347 = v345;
LABEL_187:
          sub_100012DF0(v347, v346);
          v294 = 0;
          [v292 setText:0];
          goto LABEL_147;
        }

        v348 = v345;
        v349 = v407;
        (*(v344 + 16))(v407, v348, v336);
        sub_100012DF0(v348, &qword_1006AF740);
        v350 = v408;
        FMFLocation.address.getter();
        v351 = v350;
        (*(v344 + 8))(v349, v463);
        v352 = type metadata accessor for FMFAddress();
        v353 = *(v352 - 8);
        if ((*(v353 + 48))(v351, 1, v352) == 1)
        {
          v346 = &qword_1006B0040;
          v347 = v351;
          goto LABEL_187;
        }

        v401 = v351;
        FMFAddress.displayAddress.getter();
        v403 = v402;
        (*(v353 + 8))(v401, v352);
        if (!v403)
        {
          v294 = 0;
          [v292 setText:0];
          goto LABEL_147;
        }

LABEL_232:
        v294 = String._bridgeToObjectiveC()();

        [v292 setText:v294];
        goto LABEL_147;
      }

      sub_100012DF0(v117, &qword_1006B0040);
      v113 = v461;
    }

    v344 = v462;
    v345 = v411;
    goto LABEL_183;
  }

LABEL_148:
  v302 = [v464 detailTextLabel];
  if (v302)
  {
    v303 = v302;
    v304 = [objc_opt_self() secondaryLabelColor];
    [v303 setTextColor:v304];
  }

  sub_100007204(&v457[v113], v150, &qword_1006AF740);
  v305 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v306 = *(v454 + 48);
  v307 = v437;
  sub_100007204(v150, v437, &qword_1006AF740);
  sub_100007204(v113 + v305, &v307[v306], &qword_1006AF740);
  v308 = v463;
  if ((v173)(v307, 1, v463) != 1)
  {
    v312 = v424;
    sub_100007204(v307, v424, &qword_1006AF740);
    v313 = (v173)(&v307[v306], 1, v308);
    v314 = v462;
    if (v313 != 1)
    {
      v329 = &v307[v306];
      v330 = v453;
      (*(v462 + 32))(v453, v329, v308);
      sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
      v331 = v173;
      v332 = v307;
      v333 = dispatch thunk of static Equatable.== infix(_:_:)();
      v334 = *(v314 + 8);
      v334(v330, v463);
      sub_100012DF0(v150, &qword_1006AF740);
      v334(v312, v463);
      v113 = v461;
      v335 = v332;
      v173 = v331;
      v308 = v463;
      sub_100012DF0(v335, &qword_1006AF740);
      v311 = v438;
      if (v333)
      {
        v309 = 3;
        goto LABEL_157;
      }

LABEL_156:
      v309 = 0;
LABEL_157:
      v310 = v462;
      goto LABEL_158;
    }

    sub_100012DF0(v150, &qword_1006AF740);
    (*(v314 + 8))(v312, v308);
LABEL_155:
    sub_100012DF0(v307, &qword_1006B0020);
    v311 = v438;
    goto LABEL_156;
  }

  sub_100012DF0(v150, &qword_1006AF740);
  if ((v173)(&v307[v306], 1, v308) != 1)
  {
    goto LABEL_155;
  }

  sub_100012DF0(v307, &qword_1006AF740);
  v309 = 3;
  v310 = v462;
  v311 = v438;
LABEL_158:
  [v464 setAccessoryType:v309];
  sub_100007204(&v457[v113], v311, &qword_1006AF740);
  if ((v173)(v311, 1, v308))
  {
    sub_100012DF0(v311, &qword_1006AF740);
    v315 = v458;
  }

  else
  {
    v321 = v453;
    (*(v310 + 16))(v453, v311, v308);
    sub_100012DF0(v311, &qword_1006AF740);
    v322 = FMFLocation.location.getter();
    v323 = v310;
    v324 = v322;
    (*(v323 + 8))(v321, v308);
    v315 = v458;
    if (v324)
    {
      v325 = sub_1000B4C78(v324);
      if (v325)
      {
        v326 = v325;
        v327 = [v464 imageView];
        if (v327)
        {
          v328 = v327;
          v326 = v326;
          [v328 setImage:v326];
        }
      }

      else
      {
      }
    }
  }

  v316 = [v464 textLabel];
  if (v316)
  {
    v317 = v316;
    [v316 setEnabled:*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
  }

  v318 = [v464 detailTextLabel];
  if (v318)
  {
    v319 = v318;
    [v318 setEnabled:*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
  }

  if (*(v113 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable))
  {
    v320 = 3;
  }

  else
  {
    v320 = 0;
  }

  [v464 setSelectionStyle:v320];
  (*(v460 + 8))(v459, v315);
  return v464;
}

char *sub_1000B2D40()
{
  v1 = sub_10007EBC0(&unk_1006B0000);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v120 - v5;
  v7 = sub_10007EBC0(&qword_1006AFFF8);
  __chkstk_darwin(v7 - 8);
  v127 = v120 - v8;
  v9 = sub_10007EBC0(&qword_1006B00A8);
  __chkstk_darwin(v9 - 8);
  v126 = v120 - v10;
  v11 = type metadata accessor for DateComponents();
  v124 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v123 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v120 - v15;
  __chkstk_darwin(v14);
  v18 = v120 - v17;
  v125 = type metadata accessor for FMFSchedule();
  v19 = *(v125 - 8);
  v20 = __chkstk_darwin(v125);
  v22 = v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v120 - v23;
  v128 = v0;
  v25 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded);
  v26 = IndexPath.row.getter();
  if (!v26)
  {
    v123 = v18;
    v44 = *(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
    v45 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v47 = [v44 dequeueReusableCellWithIdentifier:v45 forIndexPath:isa];

    v129 = v47;
    v48 = [v47 textLabel];
    if (v48)
    {
      v49 = v48;
      v50 = [objc_opt_self() mainBundle];
      v51.value._countAndFlagsBits = 0xD000000000000012;
      v130._object = 0x800000010057ABB0;
      v52._countAndFlagsBits = 0xD000000000000022;
      v52._object = 0x800000010057AEF0;
      v51.value._object = 0x800000010057AB90;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v130._countAndFlagsBits = 0xD000000000000017;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v51, v50, v53, v130);

      v54 = String._bridgeToObjectiveC()();

      [v49 setText:v54];
    }

    v55 = [v129 detailTextLabel];
    if (v55)
    {
      v56 = v55;
      v57 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
      v58 = v128;
      swift_beginAccess();
      v59 = v125;
      (*(v19 + 16))(v24, v58 + v57, v125);
      v60 = type metadata accessor for Calendar();
      (*(*(v60 - 8) + 56))(v126, 1, 1, v60);
      v61 = type metadata accessor for TimeZone();
      (*(*(v61 - 8) + 56))(v127, 1, 1, v61);
      FMFSchedule.startHour.getter();
      FMFSchedule.startMin.getter();
      v62 = v123;
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      sub_1000BB484(v62);
      (*(v124 + 8))(v62, v11);
      (*(v19 + 8))(v24, v59);
      v63 = String._bridgeToObjectiveC()();

      [v56 setText:v63];
    }

    v64 = [v129 detailTextLabel];
    if (v64)
    {
      v65 = v64;
      v66 = [objc_opt_self() systemBlueColor];
      [v65 setTextColor:v66];
    }

    v67 = [v129 textLabel];
    if (v67)
    {
      v68 = v67;
      [v67 setEnabled:*(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
    }

    v69 = [v129 detailTextLabel];
    if (v69)
    {
      v70 = v69;
      [v69 setEnabled:*(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
    }

    v71 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable;
    goto LABEL_34;
  }

  if (!v25)
  {
    if (v26 != 2)
    {
      if (v26 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_20:
    v122 = v11;
    v72 = v19;
    v73 = v128;
    v74 = *(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
    v75 = String._bridgeToObjectiveC()();
    v76 = IndexPath._bridgeToObjectiveC()().super.isa;
    v77 = [v74 dequeueReusableCellWithIdentifier:v75 forIndexPath:v76];

    type metadata accessor for ScheduleTimePickerCell(0);
    v129 = swift_dynamicCastClassUnconditional();
    *&v129[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_delegate + 8] = &off_100624708;
    swift_unknownObjectWeakAssign();
    v78 = type metadata accessor for Calendar();
    (*(*(v78 - 8) + 56))(v126, 1, 1, v78);
    v79 = type metadata accessor for TimeZone();
    (*(*(v79 - 8) + 56))(v127, 1, 1, v79);
    v80 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
    swift_beginAccess();
    v121 = v4;
    v81 = *(v72 + 16);
    v82 = v125;
    v81(v24, v73 + v80, v125);
    v120[1] = FMFSchedule.endHour.getter();
    v83 = *(v72 + 8);
    v83(v24, v82);
    v81(v22, v73 + v80, v82);
    v84 = v121;
    FMFSchedule.endMin.getter();
    v83(v22, v82);
    v85 = v129;
    v86 = v123;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v87 = *&v85[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker];
    Calendar.date(from:)();
    v88 = type metadata accessor for Date();
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(v84, 1, v88) != 1)
    {
      v90 = Date._bridgeToObjectiveC()().super.isa;
      (*(v89 + 8))(v84, v88);
      [v87 setDate:v90];

      (*(v124 + 8))(v86, v122);
      return v129;
    }

    __break(1u);
    goto LABEL_40;
  }

  switch(v26)
  {
    case 3:
      goto LABEL_20;
    case 2:
LABEL_23:
      v123 = v18;
      v91 = *(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
      v92 = String._bridgeToObjectiveC()();
      v93 = IndexPath._bridgeToObjectiveC()().super.isa;
      v94 = [v91 dequeueReusableCellWithIdentifier:v92 forIndexPath:v93];

      v129 = v94;
      v95 = [v94 textLabel];
      if (v95)
      {
        v96 = v95;
        v97 = [objc_opt_self() mainBundle];
        v98.value._countAndFlagsBits = 0xD000000000000012;
        v131._object = 0x800000010057ABB0;
        v99._countAndFlagsBits = 0xD000000000000020;
        v99._object = 0x800000010057AEC0;
        v98.value._object = 0x800000010057AB90;
        v100._countAndFlagsBits = 0;
        v100._object = 0xE000000000000000;
        v131._countAndFlagsBits = 0xD000000000000017;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v98, v97, v100, v131);

        v101 = String._bridgeToObjectiveC()();

        [v96 setText:v101];
      }

      v102 = [v129 detailTextLabel];
      if (v102)
      {
        v103 = v102;
        v122 = v11;
        v104 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
        v105 = v128;
        swift_beginAccess();
        v106 = v125;
        (*(v19 + 16))(v24, v105 + v104, v125);
        v107 = type metadata accessor for Calendar();
        (*(*(v107 - 8) + 56))(v126, 1, 1, v107);
        v108 = type metadata accessor for TimeZone();
        (*(*(v108 - 8) + 56))(v127, 1, 1, v108);
        FMFSchedule.endHour.getter();
        FMFSchedule.endMin.getter();
        v109 = v123;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        sub_1000BB484(v109);
        (*(v124 + 8))(v109, v122);
        (*(v19 + 8))(v24, v106);
        v110 = String._bridgeToObjectiveC()();

        [v103 setText:v110];
      }

      v111 = [v129 detailTextLabel];
      if (v111)
      {
        v112 = v111;
        v113 = [objc_opt_self() systemBlueColor];
        [v112 setTextColor:v113];
      }

      v114 = [v129 textLabel];
      if (v114)
      {
        v115 = v114;
        [v114 setEnabled:*(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
      }

      v116 = [v129 detailTextLabel];
      if (v116)
      {
        v117 = v116;
        [v116 setEnabled:*(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
      }

      v71 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable;
LABEL_34:
      if (*(v128 + v71))
      {
        v118 = 3;
      }

      else
      {
        v118 = 0;
      }

      [v129 setSelectionStyle:v118];
      return v129;
    case 1:
      v122 = v11;
      v27 = *(v128 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
      v28 = v128;
      v29 = String._bridgeToObjectiveC()();
      v30 = IndexPath._bridgeToObjectiveC()().super.isa;
      v31 = [v27 dequeueReusableCellWithIdentifier:v29 forIndexPath:v30];

      type metadata accessor for ScheduleTimePickerCell(0);
      v129 = swift_dynamicCastClassUnconditional();
      *&v129[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_delegate + 8] = &off_100624708;
      swift_unknownObjectWeakAssign();
      v32 = type metadata accessor for Calendar();
      (*(*(v32 - 8) + 56))(v126, 1, 1, v32);
      v33 = type metadata accessor for TimeZone();
      (*(*(v33 - 8) + 56))(v127, 1, 1, v33);
      v34 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
      swift_beginAccess();
      v35 = v24;
      v36 = *(v19 + 16);
      v37 = v19;
      v38 = v125;
      v36(v35, v28 + v34, v125);
      v123 = FMFSchedule.startHour.getter();
      v39 = *(v37 + 8);
      v39(v35, v38);
      v36(v22, v128 + v34, v38);
      FMFSchedule.startMin.getter();
      v39(v22, v38);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      v40 = *&v129[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker];
      Calendar.date(from:)();
      v41 = type metadata accessor for Date();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v6, 1, v41) != 1)
      {
        v43 = Date._bridgeToObjectiveC()().super.isa;
        (*(v42 + 8))(v6, v41);
        [v40 setDate:v43];

        (*(v124 + 8))(v16, v122);
        return v129;
      }

LABEL_40:
      __break(1u);
      break;
  }

LABEL_41:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000B3FA0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded) != 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating);
    v3 = sub_1000B4630();
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    v12 = [v3 textLabel];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() mainBundle];
      v23._object = 0x800000010057AF50;
      v15._countAndFlagsBits = 0xD00000000000002BLL;
      v15._object = 0x800000010057AF20;
      v23._countAndFlagsBits = 0xD00000000000003DLL;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v23);

      v17 = String._bridgeToObjectiveC()();

      [v13 setText:v17];
    }

    if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating))
    {
      v11 = 0;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_17;
  }

  v2 = IndexPath.row.getter();
  if (v2 != 1)
  {
    if (v2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v3 = sub_1000B4630();
    goto LABEL_12;
  }

  v3 = sub_1000B4630();
LABEL_5:
  v5 = [v3 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() mainBundle];
    v22._object = 0x800000010057AFC0;
    v8._object = 0x800000010057AF90;
    v22._countAndFlagsBits = 0xD000000000000039;
    v8._countAndFlagsBits = 0xD000000000000027;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v22);

    v10 = String._bridgeToObjectiveC()();

    [v6 setText:v10];
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating))
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

LABEL_17:
  [v3 setAccessoryType:v11];
  v18 = [v3 textLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setEnabled:*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable)];
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable))
  {
    v20 = 3;
  }

  else
  {
    v20 = 0;
  }

  [v3 setSelectionStyle:v20];
  return v3;
}

id sub_1000B42D8()
{
  v1 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FMFSchedule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
  v12 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [v11 dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

  type metadata accessor for ScheduleDaysOfWeekCell(0);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
    v18 = v27;
    swift_beginAccess();
    (*(v8 + 16))(v10, v18 + v17, v7);
    v25 = v14;
    FMFSchedule.daysOfWeek.getter();
    (*(v8 + 8))(v10, v7);
    v19 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_daysOfWeek;
    swift_beginAccess();
    v20 = v26;
    (*(v2 + 16))(v26, v16 + v19, v1);
    swift_beginAccess();
    (*(v2 + 24))(v16 + v19, v6, v1);
    swift_endAccess();
    sub_1000B73EC();
    v21 = *(v2 + 8);
    v21(v20, v1);
    v21(v6, v1);
    *(v16 + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_delegate + 8) = &off_1006246F8;
    swift_unknownObjectWeakAssign();
    v22 = *(v18 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable);
    v23 = *(v16 + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable);
    *(v16 + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable) = v22;
    if (v22 != v23)
    {
      sub_1000B763C();
    }
  }

  return v14;
}

id sub_1000B4630()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
  sub_10000905C(0, &qword_1006B00B0);
  sub_10007EBC0(&qword_1006B00B8);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [v1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  [v4 setIndentationLevel:0];
  v5 = [v4 textLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setTextAlignment:3];
  }

  v7 = [v4 textLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() labelColor];
    [v8 setTextColor:v9];
  }

  v10 = [v4 textLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setText:0];
  }

  [v4 setAccessoryView:0];
  return v4;
}

id sub_1000B48F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [v1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  type metadata accessor for FMPlusButtonTableViewCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(*(v5 + OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton) + OBJC_IVAR____TtC6FindMy11FMAddButton_titleLabel);
    v7 = objc_opt_self();
    v8 = v4;
    v9 = v6;
    v10 = [v7 mainBundle];
    v15._object = 0x800000010057AE20;
    v11._countAndFlagsBits = 0xD00000000000002BLL;
    v11._object = 0x800000010057ADF0;
    v15._countAndFlagsBits = 0xD00000000000003DLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v15);

    v13 = String._bridgeToObjectiveC()();

    [v9 setText:v13];
  }

  return v4;
}

id sub_1000B4A9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [v1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  type metadata accessor for AlertLocationCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 textLabel];
    if (v8)
    {
      v9 = v8;
      [v8 setNumberOfLines:0];
    }

    v10 = [v6 textLabel];
    if (v10)
    {
      v11 = v10;
      [v10 setLineBreakMode:0];
    }

    v12 = [v6 imageView];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 layer];

      [v14 setCornerRadius:6.0];
    }

    v15 = [v6 imageView];

    if (v15)
    {
      v16 = [v15 layer];

      [v16 setMasksToBounds:1];
    }
  }

  return v4;
}

id sub_1000B4C78(void *a1)
{
  sub_10007EBC0(&unk_1006B20B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005528D0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552220;
  [a1 coordinate];
  *(v3 + 56) = &type metadata for Double;
  *(v3 + 64) = &protocol witness table for Double;
  *(v3 + 32) = v4;
  v5 = String.init(format:_:)();
  v7 = v6;
  *(v2 + 56) = &type metadata for String;
  v8 = sub_10008EE84();
  *(v2 + 64) = v8;
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100552220;
  v86 = a1;
  [a1 coordinate];
  *(v9 + 56) = &type metadata for Double;
  *(v9 + 64) = &protocol witness table for Double;
  *(v9 + 32) = v10;
  v11 = String.init(format:_:)();
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v8;
  *(v2 + 72) = v11;
  *(v2 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100552220;
  v14 = [v85 traitCollection];
  v15 = [v14 userInterfaceStyle];

  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v15;
  v16 = String.init(format:_:)();
  *(v2 + 136) = &type metadata for String;
  *(v2 + 144) = v8;
  *(v2 + 112) = v16;
  *(v2 + 120) = v17;
  v18 = String.init(format:_:)();
  v20 = v19;
  v21 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_imageCache;
  swift_beginAccess();
  v22 = *&v85[v21];
  if (!*(v22 + 16))
  {
LABEL_8:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100005B14(v32, qword_1006D4630);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v87 = v18;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v89 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100005B4C(v18, v20, &v89);
      _os_log_impl(&_mh_execute_header, v33, v34, "FMLocationAlertViewController: loading new image for %s", v35, 0xCu);
      sub_100006060(v36);
    }

    v37 = *&v85[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_mapSnapshotter];
    v38 = [v85 traitCollection];
    swift_bridgeObjectRetain_n();
    v39 = v85;
    [v86 coordinate];
    [v86 coordinate];
    v89 = 0;
    v90 = 0xE000000000000000;
    Double.write<A>(to:)();
    v40._countAndFlagsBits = 45;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    Double.write<A>(to:)();
    v41 = v89;
    v42 = v90;
    v89 = [v38 userInterfaceStyle];
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v89 = v41;
    v90 = v42;

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    v48 = v89;
    v47 = v90;
    v89 = 0;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v89 = v48;
    v90 = v47;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    String.append(_:)(v52);

    v53 = v89;
    v54 = v90;
    v55 = Double.description.getter();
    v57 = v56;
    v89 = v53;
    v90 = v54;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    String.append(_:)(v58);

    v59 = v89;
    v60 = v90;
    v61 = Double.description.getter();
    v63 = v62;
    v89 = v59;
    v90 = v60;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);

    v66 = v89;
    v65 = v90;
    swift_beginAccess();
    v67 = *(v37 + 24);
    if (*(v67 + 16))
    {

      v68 = sub_10000726C(v66, v65);
      if (v69)
      {
        v70 = *(*(v67 + 56) + 8 * v68);

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v88 = v74;
          *v73 = 136315138;
          v75 = sub_100005B4C(v66, v65, &v88);

          *(v73 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v71, v72, "FMMapSnapshotter: Returning cached image for hash %s", v73, 0xCu);
          sub_100006060(v74);
        }

        else
        {
        }

        sub_1000B55E8(v70, v39, v87, v20);
        swift_bridgeObjectRelease_n();

        return 0;
      }
    }

    [v86 coordinate];
    v77 = v76 + 0.0025;
    [v86 coordinate];
    v79 = CLLocationCoordinate2DMake(v77, v78);
    v91 = CLLocationCoordinate2DMake(v79.latitude + 0.005, v79.longitude + -0.005);
    v80 = MKMapPointForCoordinate(v91);
    v92 = CLLocationCoordinate2DMake(v79.latitude + -0.005, v79.longitude + 0.005);
    v81 = MKMapPointForCoordinate(v92);
    v82 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    [v82 setMapRect:{v80.x, v80.y, v81.x - v80.x, v81.y - v80.y}];
    [v82 setSize:{50.0, 50.0}];
    [v82 setTraitCollection:v38];

    v83 = v39;
    sub_1001213A8(v82, v86, v38, 0, v37, v83, v87, v20);

    swift_bridgeObjectRelease_n();
    return 0;
  }

  v23 = sub_10000726C(v18, v20);
  if ((v24 & 1) == 0)
  {

    goto LABEL_8;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100005B14(v26, qword_1006D4630);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v89 = v30;
    *v29 = 136315138;
    v31 = sub_100005B4C(v18, v20, &v89);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "FMLocationAlertViewController: mapSnapshot returning cached image for  %s", v29, 0xCu);
    sub_100006060(v30);
  }

  else
  {
  }

  return v25;
}

uint64_t sub_1000B55E8(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_imageCache;
  swift_beginAccess();

  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *&a2[v14];
  *&a2[v14] = 0x8000000000000000;
  sub_1001BB8CC(v15, a3, a4, isUniquelyReferenced_nonNull_native);

  *&a2[v14] = v26;
  swift_endAccess();
  sub_10000905C(0, &qword_1006AEDC0);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  aBlock[4] = sub_1000BC19C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624790;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000BBEF8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_1000B5930(unint64_t a1, void *a2, void (*a3)(id))
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = a2;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = a2;
    goto LABEL_9;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v4 = FMLocationShiftingRequest.location.getter();

LABEL_9:
  v9 = v4;
  a3(v4);
}

void sub_1000B5A2C()
{
  v0 = type metadata accessor for FMFConfigValue();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for FMFConfigValue.fenceSetupLink(_:), v0);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  FMFGlobalConfig<A>(_:fallback:)();
  (*(v1 + 8))(v3, v0);
  URL.init(string:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMLocationAlertViewController: Cannot go to link", v14, 2u);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    sub_10015391C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1000BBEF8(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 openURL:v18 options:isa completionHandler:0];

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1000B5E18(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  sub_100431238(a2, sub_1000BBEF0, v3);
}

void sub_1000B5E88(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem);
  if (v5)
  {
    [v5 setEnabled:1];
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 67109378;
      *(v9 + 4) = a1 & 1;
      *(v9 + 8) = 2080;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_100005B4C(v11, v12, &v25);

      *(v9 + 10) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMLocationAlertViewController: didUpgrade=%{BOOL}d, upgrade error %s", v9, 0x12u);
      sub_100006060(v10);
    }

    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v27._object = 0x800000010057B5E0;
    v16._object = 0x800000010057B5B0;
    v27._countAndFlagsBits = 0xD000000000000034;
    v16._countAndFlagsBits = 0xD000000000000022;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v27);

    v18 = [v14 mainBundle];
    v28._object = 0x800000010057B650;
    v19._countAndFlagsBits = 0xD000000000000024;
    v19._object = 0x800000010057B620;
    v28._countAndFlagsBits = 0xD000000000000036;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v28);

    sub_1000A3B40();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, oslog, v22, "FMLocationAlertViewController: didUpgrade=%{BOOL}d", v23, 8u);
    }
  }
}

id sub_1000B62E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1000B6350()
{
  v1 = &v0[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell____lazy_storage___checkmarkSpacingSize];
  if ((v0[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F29CheckmarkAlignedTableViewCell____lazy_storage___checkmarkSpacingSize + 16] & 1) == 0)
  {
    return *v1;
  }

  result = sub_1000B6398(v0);
  *v1 = result;
  *(v1 + 1) = v3;
  v1[16] = 0;
  return result;
}

double sub_1000B6398(void *a1)
{
  v1 = [a1 textLabel];
  v2 = 17.666667;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 font];

    if (v4)
    {
      v5 = [objc_opt_self() configurationWithFont:v4];
      v6 = String._bridgeToObjectiveC()();
      v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

      if (v7)
      {
        [v7 size];
        v2 = v8;
      }

      else
      {
      }
    }
  }

  return v2;
}

id sub_1000B68F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = a1;
  v12.super_class = a5(0);
  v10 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a6, v9);

  return v10;
}

uint64_t sub_1000B6A28@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_gregorian;
  sub_10007EBC0(&qword_1006B0088);
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552210;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, enum case for Calendar.Component.minute(_:), v6);
  v12(v11 + v8, enum case for Calendar.Component.hour(_:), v6);
  sub_100174754(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = [*(v1 + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker) date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Calendar.dateComponents(_:from:)();

  return (*(v3 + 8))(v5, v2);
}

void sub_1000B6E1C()
{
  if (qword_1006AEA38 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1006AFCD0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 contentView];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v2 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:*&v1];

  [v3 addConstraint:v7];
  v8 = [v0 contentView];
  v9 = [v0 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v2 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  [v8 addConstraint:v12];
  v13 = [v0 contentView];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v2 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:*(&v1 + 1)];

  [v13 addConstraint:v17];
  v18 = [v0 contentView];
  v19 = [v0 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v2 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  [v18 addConstraint:v22];
}

uint64_t sub_1000B72B0()
{
  result = type metadata accessor for Calendar();
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

id sub_1000B73A8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_1000B73EC()
{
  v1 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v11[0] = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_daysOfWeek;
  swift_beginAccess();
  v8 = *(v2 + 16);
  v8(v6, v0 + v7, v1);
  sub_1000BBEF8(&qword_1006B0078, &type metadata accessor for FMFSchedule.DaysOfWeek);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v2 + 8);
  result = v9(v6, v1);
  if (v11[1] != v11[4])
  {
    sub_1000B763C();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8(v6, v0 + v7, v1);
      v8(v11[0], v6, v1);
      swift_beginAccess();
      FMFSchedule.daysOfWeek.setter();
      swift_endAccess();
      sub_1000A838C();
      swift_unknownObjectRelease();
      return v9(v6, v1);
    }
  }

  return result;
}

void sub_1000B763C()
{
  v46 = type metadata accessor for Calendar();
  v1 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = (&v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_dayButtons;
  swift_beginAccess();
  v49 = v0;
  v43 = v9;
  v10 = *(v0 + v9);
  if (v10 >> 62)
  {
    goto LABEL_51;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable;
  if (*(v49 + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable) == 1)
  {
    if (qword_1006AEA40 != -1)
    {
      swift_once();
    }

    v13 = &qword_1006AFCF0;
  }

  else
  {
    if (qword_1006AEA50 != -1)
    {
      swift_once();
    }

    v13 = &qword_1006AFD00;
  }

  v14 = *v13;
  if (*(v49 + v12) != 1)
  {
    goto LABEL_15;
  }

  v15 = qword_1006AEA48;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  for (i = &qword_1006AFCF8; v11 < 0; i = &qword_1006AFD08)
  {
    __break(1u);
LABEL_15:
    v18 = qword_1006AEA58;
    v19 = v14;
    if (v18 != -1)
    {
      swift_once();
    }
  }

  if (v11)
  {
    v48 = v14;
    v20 = *i;
    v42 = objc_opt_self();
    v21 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_daysOfWeek;
    v47 = v20;
    v41 = v21;
    swift_beginAccess();
    v22 = 0;
    v23 = (v1 + 8);
    v24 = (v4 + 2);
    ++v4;
    v40 = v11;
    while (1)
    {
      v25 = [v42 currentCalendar];
      v1 = v45;
      static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = Calendar.firstWeekday.getter();
      (*v23)(v1, v46);
      if (__OFADD__(v26, 6))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v27 = (v26 + 6) % 7;
      v28 = __OFADD__(v22, v27);
      v29 = v22 + v27;
      if (v28)
      {
        goto LABEL_49;
      }

      v30 = v29 % 7;
      if (v30 <= 2)
      {
        if (!v30)
        {
          static FMFSchedule.DaysOfWeek.sunday.getter();
          goto LABEL_38;
        }

        if (v30 != 1)
        {
          if (v30 == 2)
          {
            static FMFSchedule.DaysOfWeek.tuesday.getter();
            goto LABEL_38;
          }

LABEL_34:
          static FMFSchedule.DaysOfWeek.none.getter();
          goto LABEL_38;
        }

        static FMFSchedule.DaysOfWeek.monday.getter();
      }

      else
      {
        if (v30 <= 4)
        {
          if (v30 == 3)
          {
            static FMFSchedule.DaysOfWeek.wednesday.getter();
          }

          else
          {
            static FMFSchedule.DaysOfWeek.thursday.getter();
          }

          goto LABEL_38;
        }

        if (v30 != 5)
        {
          if (v30 == 6)
          {
            static FMFSchedule.DaysOfWeek.saturday.getter();
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        static FMFSchedule.DaysOfWeek.friday.getter();
      }

LABEL_38:
      v31 = v49;
      v32 = v44;
      (*v24)(v44, v49 + v41, v3);
      sub_1000BBEF8(&qword_1006B0070, &type metadata accessor for FMFSchedule.DaysOfWeek);
      v33 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v1 = *v4;
      (*v4)(v32, v3);
      if (v33)
      {
        v34 = v48;
      }

      else
      {
        v34 = v47;
      }

      v35 = *(v31 + v43);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = v34;

        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v36 = *(v35 + 8 * v22 + 32);
        v37 = v34;
        v38 = v36;
      }

      ++v22;
      [v38 setBackgroundColor:v34];

      v1(v8, v3);
      if (v40 == v22)
      {

        v14 = v48;
        break;
      }
    }
  }
}

uint64_t sub_1000B7C04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B0068);
  __chkstk_darwin(v4 - 8);
  v55 = &v50 - v5;
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v57 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = __chkstk_darwin(v13);
  v53 = &v50 - v17;
  v18 = __chkstk_darwin(v16);
  v56 = &v50 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v50 - v21;
  result = __chkstk_darwin(v20);
  v58 = &v50 - v24;
  if (*(v2 + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable) != 1)
  {
    return result;
  }

  v25 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_dayButtons;
  swift_beginAccess();
  v26 = *(v2 + v25);

  v27 = sub_100141CF4(a1, v26);
  v29 = v28;

  if (v29)
  {
    return result;
  }

  v30 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = Calendar.firstWeekday.getter();
  result = (*(v7 + 8))(v9, v6);
  if (__OFADD__(v31, 6))
  {
    __break(1u);
    goto LABEL_14;
  }

  v32 = (v31 + 6) % 7;
  v33 = v27 + v32;
  if (__OFADD__(v27, v32))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v51 = v15;
  type metadata accessor for ScheduleDaysOfWeekCell(0);
  sub_10009AE7C(v33 % 7);
  v34 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_daysOfWeek;
  swift_beginAccess();
  v35 = v57;
  v36 = *(v57 + 16);
  v36(v22, v2 + v34, v10);
  v52 = sub_1000BBEF8(&qword_1006B0070, &type metadata accessor for FMFSchedule.DaysOfWeek);
  v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v38 = *(v35 + 8);
  v38(v22, v10);
  if (v37)
  {
    v51 = (v35 + 8);
    v39 = v35;
    v54 = v34;
    v40 = v56;
    v36(v56, v2 + v34, v10);
    v50 = v36;
    v36(v22, v40, v10);
    v41 = v53;
    v42 = v58;
    dispatch thunk of SetAlgebra.intersection(_:)();
    v43 = v42;
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v38(v41, v10);
      v44 = 1;
      v45 = v55;
      v46 = v56;
    }

    else
    {
      v48 = v56;
      dispatch thunk of SetAlgebra.subtract(_:)();
      v45 = v55;
      (*(v39 + 32))(v55, v41, v10);
      v44 = 0;
      v46 = v48;
      v43 = v58;
    }

    (*(v39 + 56))(v45, v44, 1, v10);
    sub_100012DF0(v45, &qword_1006B0068);
    v49 = v54;
    v50(v22, &v54[v2], v10);
    swift_beginAccess();
    (*(v39 + 24))(&v49[v2], v46, v10);
    swift_endAccess();
  }

  else
  {
    v47 = v51;
    v36(v51, v2 + v34, v10);
    sub_10037ACA8(v22, v58);
    v38(v22, v10);
    v22 = v54;
    v36(v54, v2 + v34, v10);
    swift_beginAccess();
    (*(v35 + 24))(v2 + v34, v47, v10);
    swift_endAccess();
    v46 = v47;
    v43 = v58;
  }

  sub_1000B73EC();
  v38(v22, v10);
  v38(v46, v10);
  return (v38)(v43, v10);
}

id sub_1000B82D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for Calendar();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable] = 1;
  static FMFSchedule.DaysOfWeek.none.getter();
  (*(v12 + 32))(&v3[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_daysOfWeek], v14, v11);
  *&v3[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_dayButtons] = _swiftEmptyArrayStorage;
  v15 = [objc_allocWithZone(UIStackView) init];
  [v15 setAxis:0];
  [v15 setDistribution:4];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_buttonsContainerView] = v15;
  v16 = v15;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for ScheduleDaysOfWeekCell(0);
  v42.receiver = v3;
  v42.super_class = v18;
  v19 = objc_msgSendSuper2(&v42, "initWithStyle:reuseIdentifier:", a1, v17);

  v20 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  static Locale.autoupdatingCurrent.getter();
  v21 = type metadata accessor for Locale();
  (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  Calendar.locale.setter();
  v22 = Calendar.veryShortStandaloneWeekdaySymbols.getter();
  result = Calendar.firstWeekday.getter();
  if (!__OFADD__(result, 6))
  {
    v41 = v15;
    v37 = v9;
    v24 = (result + 6) % 7;
    v40 = objc_opt_self();
    v25 = 7;
    v26 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_dayButtons;
    while (1)
    {
      result = [objc_allocWithZone(UIButton) init];
      if ((v24 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v24 >= *(v22 + 16))
      {
        goto LABEL_15;
      }

      v27 = result;

      v28 = String._bridgeToObjectiveC()();

      [v27 setTitle:v28 forStates:0];

      v29 = v27;
      [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
      if (qword_1006AEA48 != -1)
      {
        swift_once();
      }

      [v29 setBackgroundColor:qword_1006AFCF8];
      v30 = [v40 whiteColor];
      [v29 setTitleColor:v30 forState:0];

      v31 = [v29 layer];
      [v31 setCornerRadius:15.0];

      [v29 setClipsToBounds:1];
      [v29 addTarget:v19 action:"dayButtonPressed:" forControlEvents:64];
      swift_beginAccess();
      v32 = v29;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v19 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v19 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v41 addArrangedSubview:v32];

      v33 = ((v24 + 1) * 0x2492492492492493uLL) >> 64;
      v24 = v24 + 1 - 7 * ((v33 + ((v24 + 1 - v33) >> 1)) >> 2);
      if (!--v25)
      {

        v34 = v19;
        v35 = [v34 contentView];
        v36 = v41;
        [v35 addSubview:v41];

        [v34 setSelectionStyle:0];
        sub_1000B8968();

        (*(v38 + 8))(v39, v37);
        return v34;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000B8968()
{
  v1 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_buttonsContainerView;
  v2 = [*&v0[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_buttonsContainerView] topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = [v2 constraintEqualToAnchor:v4 constant:10.0];
  [v5 setActive:1];

  v6 = [*&v0[v1] bottomAnchor];
  v7 = [v0 contentView];
  v8 = [v7 bottomAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:-10.0];
  [v9 setActive:1];

  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:10.0];
  [v13 setActive:1];

  v14 = [*&v0[v1] trailingAnchor];
  v15 = [v0 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-10.0];
  [v17 setActive:1];

  v18 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_dayButtons;
  swift_beginAccess();
  v19 = 0;
  while (1)
  {
    v20 = *&v0[v18];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v21 = v30;
      goto LABEL_5;
    }

    if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v21 = *(v20 + 8 * v19 + 32);
LABEL_5:
    ++v19;
    v22 = v21;
    v23 = [v22 heightAnchor];
    v24 = [v23 constraintEqualToConstant:30.0];

    [v24 setActive:1];
    v25 = [v22 widthAnchor];
    v26 = [v25 constraintEqualToConstant:30.0];

    [v26 setActive:1];
    v27 = [v22 centerYAnchor];

    v28 = [*&v0[v1] centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setActive:1];
    if (v19 == 7)
    {
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000B8EF0()
{
  result = type metadata accessor for FMFSchedule.DaysOfWeek();
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

void sub_1000B8FB0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  v3 = type metadata accessor for FMFLocationAlert();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView;
  *(v1 + v4) = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *(v1 + v5) = sub_10012114C();
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationCellsExpanded) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded) = 0;
  v6 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  v7 = type metadata accessor for FMFLocation();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation, 1, 1, v7);
  v9 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationShifter;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *(v1 + v9) = FMLocationShifter.init()();
  v8(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation, 1, 1, v7);
  v10 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  v11 = type metadata accessor for TimeZone();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_imageCache) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating) = 0;
  v12 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  v13 = enum case for FMFLocationAlertTriggerType.leaving(_:);
  v14 = type metadata accessor for FMFLocationAlertTriggerType();
  (*(*(v14 - 8) + 104))(v1 + v12, v13, v14);
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeButton) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeCell) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000B92E4(char *a1)
{
  v2 = sub_10007EBC0(&qword_1006AFFF8);
  v3 = __chkstk_darwin(v2 - 8);
  v160 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v167 = &v142 - v5;
  v6 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v6 - 8);
  v151 = &v142 - v7;
  v8 = sub_10007EBC0(&unk_1006BC950);
  __chkstk_darwin(v8 - 8);
  v150 = &v142 - v9;
  v10 = sub_10007EBC0(&unk_1006B0010);
  __chkstk_darwin(v10 - 8);
  v149 = &v142 - v11;
  v12 = sub_10007EBC0(&unk_1006BC960);
  __chkstk_darwin(v12 - 8);
  v148 = &v142 - v13;
  v156 = sub_10007EBC0(&qword_1006B0020);
  __chkstk_darwin(v156);
  v159 = &v142 - v14;
  v175 = type metadata accessor for FMFLocationAlert();
  v179 = *(v175 - 8);
  v15 = __chkstk_darwin(v175);
  v155 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v147 = &v142 - v18;
  __chkstk_darwin(v17);
  v171 = &v142 - v19;
  v20 = sub_10007EBC0(&unk_1006BEF80);
  v21 = __chkstk_darwin(v20 - 8);
  v146 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v162 = &v142 - v24;
  v25 = __chkstk_darwin(v23);
  v158 = &v142 - v26;
  __chkstk_darwin(v25);
  v172 = &v142 - v27;
  v176 = type metadata accessor for FMFLocation();
  v177 = *(v176 - 8);
  v28 = __chkstk_darwin(v176);
  v145 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v157 = &v142 - v30;
  v31 = sub_10007EBC0(&qword_1006AF740);
  v32 = __chkstk_darwin(v31 - 8);
  v166 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v165 = &v142 - v35;
  v36 = __chkstk_darwin(v34);
  v153 = &v142 - v37;
  v38 = __chkstk_darwin(v36);
  v161 = &v142 - v39;
  __chkstk_darwin(v38);
  v173 = (&v142 - v40);
  v41 = sub_10007EBC0(&qword_1006B0028);
  __chkstk_darwin(v41 - 8);
  v43 = &v142 - v42;
  v44 = sub_10007EBC0(&qword_1006B0030);
  __chkstk_darwin(v44 - 8);
  v46 = &v142 - v45;
  v47 = sub_10007EBC0(&qword_1006B0038);
  v48 = __chkstk_darwin(v47 - 8);
  v164 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v180 = &v142 - v50;
  v51 = sub_10007EBC0(&qword_1006B0040);
  v52 = __chkstk_darwin(v51 - 8);
  v163 = &v142 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v52);
  v154 = &v142 - v55;
  __chkstk_darwin(v54);
  v57 = &v142 - v56;
  v58 = type metadata accessor for FMFAddress();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v61 = &v142 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  v63 = &a1[v62];
  v64 = v58;
  v65 = v59;
  sub_100007204(v63, v57, &qword_1006B0040);
  if ((*(v59 + 48))(v57, 1, v64) == 1)
  {
    return sub_100012DF0(v57, &qword_1006B0040);
  }

  (*(v59 + 32))(v61, v57, v64);
  v67 = [a1 title];
  v170 = v64;
  v168 = v61;
  if (v67)
  {

    v68 = [a1 title];
    if (v68)
    {
      v69 = v68;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v72 = v177;
    v73 = type metadata accessor for FMFLabelSaveType();
    (*(*(v73 - 8) + 56))(v46, 1, 1, v73);
    v74 = type metadata accessor for FMFLabelSourceType();
    (*(*(v74 - 8) + 56))(v43, 1, 1, v74);
    FMFLabel.init(value:labelSaveType:labelSourceType:)();
    v71 = v178;
  }

  else
  {
    v70 = type metadata accessor for FMFLabel();
    (*(*(v70 - 8) + 56))(v180, 1, 1, v70);
    v71 = v178;
    v72 = v177;
  }

  v169 = v65;
  [a1 coordinate];
  v76 = v75;
  v152 = a1;
  [a1 coordinate];
  v174 = [objc_allocWithZone(CLLocation) initWithLatitude:v76 longitude:v77];
  v78 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v143 = v78;
  v79 = v173;
  sub_100007204(v71 + v78, v173, &qword_1006AF740);
  v80 = v176;
  v144 = *(v72 + 48);
  if (v144(v79, 1, v176))
  {
    sub_100012DF0(v79, &qword_1006AF740);
    v81 = v175;
  }

  else
  {
    v91 = v157;
    (*(v72 + 16))(v157, v79, v80);
    sub_100012DF0(v79, &qword_1006AF740);
    v92 = FMFLocation.location.getter();
    (*(v72 + 8))(v91, v80);
    v81 = v175;
    if (v92)
    {
      [v92 distanceFromLocation:v174];
      v94 = v93;

      if (v94 > 1.0)
      {
        goto LABEL_16;
      }
    }
  }

  v82 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  v83 = v172;
  sub_100007204(v71 + v82, v172, &unk_1006BEF80);
  v84 = *(v179 + 48);
  v85 = v84(v83, 1, v81);
  sub_100012DF0(v83, &unk_1006BEF80);
  v86 = v85 == 1;
  v71 = v178;
  if (v86)
  {
    goto LABEL_16;
  }

  v87 = *&v152[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
  v88 = v158;
  sub_100007204(v178 + v82, v158, &unk_1006BEF80);
  result = v84(v88, 1, v81);
  if (result != 1)
  {
    FMFLocationAlert.radius.getter();
    v90 = v89;
    (*(v179 + 8))(v88, v81);
    if (v87 == v90)
    {
LABEL_37:

      sub_100012DF0(v180, &qword_1006B0038);
      return (*(v169 + 8))(v168, v170);
    }

LABEL_16:
    v95 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
    swift_beginAccess();
    v96 = v162;
    sub_100007204(v71 + v95, v162, &unk_1006BEF80);
    v97 = v179;
    if ((*(v179 + 48))(v96, 1, v81) == 1)
    {
      sub_100012DF0(v96, &unk_1006BEF80);
      v98 = v152;
      v99 = v170;
      v100 = v176;
      goto LABEL_30;
    }

    v173 = *(v97 + 32);
    (v173)(v171, v96, v81);
    v101 = v161;
    sub_100007204(v71 + v143, v161, &qword_1006AF740);
    v102 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
    swift_beginAccess();
    v103 = *(v156 + 48);
    v104 = v159;
    sub_100007204(v101, v159, &qword_1006AF740);
    v105 = v104;
    sub_100007204(v71 + v102, v104 + v103, &qword_1006AF740);
    v100 = v176;
    v106 = v144;
    if (v144(v104, 1, v176) == 1)
    {
      sub_100012DF0(v101, &qword_1006AF740);
      v107 = v106(v104 + v103, 1, v100);
      v98 = v152;
      v99 = v170;
      if (v107 == 1)
      {
        sub_100012DF0(v105, &qword_1006AF740);
LABEL_26:
        (*(v179 + 16))(v155, v171, v175);
        v172 = *&v98[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
        v114 = v169;
        v115 = v154;
        (*(v169 + 16))(v154, v168, v99);
        (*(v114 + 56))(v115, 0, 1, v99);
        v116 = [v98 title];
        if (v116)
        {
          v117 = v116;
          v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v162 = 0;
        }

        v118 = type metadata accessor for FMFLocationAlertTriggerType();
        (*(*(v118 - 8) + 56))(v148, 1, 1, v118);
        v119 = type metadata accessor for FMFSchedule();
        (*(*(v119 - 8) + 56))(v149, 1, 1, v119);
        v120 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
        (*(*(v120 - 8) + 56))(v150, 1, 1, v120);
        v121 = type metadata accessor for Date();
        (*(*(v121 - 8) + 56))(v151, 1, 1, v121);
        v122 = v174;
        v123 = v147;
        FMFLocationAlert.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:schedule:phoneNumbers:emails:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:muteEndDate:)();
        v124 = v179;
        v125 = v175;
        (*(v179 + 8))(v171, v175);
        v126 = v146;
        (v173)(v146, v123, v125);
        (*(v124 + 56))(v126, 0, 1, v125);
        v71 = v178;
        swift_beginAccess();
        sub_1000BBF40(v126, v71 + v95, &unk_1006BEF80);
        swift_endAccess();
        v99 = v170;
LABEL_30:
        v127 = v177;
        v128 = v169;
        v129 = v163;
        (*(v169 + 16))(v163, v168, v99);
        (*(v128 + 56))(v129, 0, 1, v99);
        sub_100007204(v180, v164, &qword_1006B0038);
        v130 = v174;
        v131 = v165;
        FMFLocation.init(from:address:label:labels:)();
        (*(v127 + 56))(v131, 0, 1, v100);
        v132 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
        swift_beginAccess();
        sub_1000BBF40(v131, v71 + v132, &qword_1006AF740);
        swift_endAccess();
        v133 = v166;
        sub_100007204(v71 + v132, v166, &qword_1006AF740);
        v134 = *&v98[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark];
        if (v134)
        {
          v135 = [v134 timeZone];
          v136 = v167;
          if (v135)
          {
            v137 = v160;
            v138 = v135;
            static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

            v139 = 0;
          }

          else
          {
            v139 = 1;
            v137 = v160;
          }

          v141 = type metadata accessor for TimeZone();
          (*(*(v141 - 8) + 56))(v137, v139, 1, v141);
          sub_100035318(v137, v136, &qword_1006AFFF8);
        }

        else
        {
          v140 = type metadata accessor for TimeZone();
          v136 = v167;
          (*(*(v140 - 8) + 56))(v167, 1, 1, v140);
        }

        sub_100097820(v133, v136);
        sub_100012DF0(v136, &qword_1006AFFF8);
        sub_100012DF0(v133, &qword_1006AF740);
        *(v71 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedRadius) = *&v98[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
        sub_1000A838C();
        [*(v71 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView) reloadData];
        goto LABEL_37;
      }
    }

    else
    {
      v108 = v153;
      sub_100007204(v104, v153, &qword_1006AF740);
      v109 = v106(v104 + v103, 1, v100);
      v98 = v152;
      if (v109 != 1)
      {
        v110 = v177;
        v111 = v145;
        (*(v177 + 32))(v145, v105 + v103, v100);
        sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation);
        v112 = dispatch thunk of static Equatable.== infix(_:_:)();
        v113 = *(v110 + 8);
        v113(v111, v100);
        sub_100012DF0(v161, &qword_1006AF740);
        v113(v108, v100);
        sub_100012DF0(v159, &qword_1006AF740);
        v99 = v170;
        if (v112)
        {
          goto LABEL_26;
        }

LABEL_24:
        (*(v179 + 8))(v171, v175);
        v71 = v178;
        goto LABEL_30;
      }

      sub_100012DF0(v161, &qword_1006AF740);
      (*(v177 + 8))(v108, v100);
      v99 = v170;
    }

    sub_100012DF0(v105, &qword_1006B0020);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BA99C(void *a1)
{
  v3 = *(type metadata accessor for FMFLocationAlert() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10007EBC0(&qword_1006B0050) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10009AEE0(a1, v8, v1 + v4, v9, v1 + v7, v10);
}

uint64_t sub_1000BAAC8(uint64_t a1)
{
  v3 = sub_10007EBC0(&qword_1006AF740);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v28 - v8;
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = type metadata accessor for FMFLocationAlertTarget();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000AD4A4(a1);
  if (v16 > 2)
  {
    if (v16 - 4 >= 2)
    {
      if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 1;
  }

  if (!v16)
  {
    if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded) == 1)
    {
      (*(v13 + 104))(v15, enum case for FMFLocationAlertTarget.alertMe(_:), v12);
      sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v28[3] == v28[0] && v28[4] == v28[1])
      {
        v25 = 3;
      }

      else if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      (*(v13 + 8))(v15, v12);

      return v25;
    }

    return 1;
  }

  if (v16 == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationCellsExpanded) == 1)
    {
      sub_100007204(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation, v11, &qword_1006AF740);
      v17 = type metadata accessor for FMFLocation();
      v18 = *(*(v17 - 8) + 48);
      v19 = 1;
      if (v18(v11, 1, v17) != 1)
      {
        v19 = 2;
      }

      sub_100012DF0(v11, &qword_1006AF740);
      v20 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
      swift_beginAccess();
      sub_100007204(v1 + v20, v9, &qword_1006AF740);
      LODWORD(v20) = v18(v9, 1, v17);
      sub_100012DF0(v9, &qword_1006AF740);
      if (v20 == 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 + 1;
      }

      v22 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
      swift_beginAccess();
      sub_100007204(v1 + v22, v6, &qword_1006AF740);
      v23 = v18(v6, 1, v17);
      sub_100012DF0(v6, &qword_1006AF740);
      if (v23 == 1)
      {
        return v21;
      }

      else
      {
        return v21 + 1;
      }
    }

    return 1;
  }

  v26 = 1;
  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded))
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded))
  {
    v26 = 2;
  }

  return v26 + v27;
}

uint64_t sub_1000BAF10(uint64_t a1)
{
  v1 = sub_1000AD4A4(a1);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = [objc_opt_self() mainBundle];
      v12 = 0x800000010057B0E0;
      v3 = 0xD000000000000028;
      v4 = 0x800000010057B0B0;
      v5 = 0xD00000000000003ALL;
      goto LABEL_10;
    }

    if (v1 != 4)
    {
      return 0;
    }

    v6 = "CHEDULE_HEADER_TITLE";
    v2 = [objc_opt_self() mainBundle];
    v12 = 0x800000010057ABB0;
    v3 = 0xD000000000000020;
LABEL_12:
    v4 = v6 | 0x8000000000000000;
    v8 = 0x800000010057AB90;
    v5 = 0xD000000000000017;
    v7 = 0xD000000000000012;
    goto LABEL_13;
  }

  if (!v1)
  {
    v2 = [objc_opt_self() mainBundle];
    v12 = 0x800000010057B1C0;
    v3 = 0xD000000000000020;
    v4 = 0x800000010057B190;
    v5 = 0xD000000000000032;
    goto LABEL_10;
  }

  if (v1 != 1)
  {
    v6 = "scheduleDaysOfWeekCell";
    v2 = [objc_opt_self() mainBundle];
    v12 = 0x800000010057ABB0;
    v3 = 0xD000000000000024;
    goto LABEL_12;
  }

  v2 = [objc_opt_self() mainBundle];
  v12 = 0x800000010057B150;
  v3 = 0xD000000000000027;
  v4 = 0x800000010057B120;
  v5 = 0xD000000000000039;
LABEL_10:
  v7 = 0;
  v8 = 0;
LABEL_13:
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v7, v2, v9, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000BB190()
{
  v1 = type metadata accessor for FMFLocationAlertTriggerType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v18 - v6;
  v8 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  sub_100007204(v0 + v11, v10, &unk_1006BEF80);
  v12 = type metadata accessor for FMFLocationAlert();
  v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_100012DF0(v10, &unk_1006BEF80);
  v14 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v14, v1);
  (*(v2 + 104))(v5, enum case for FMFLocationAlertTriggerType.scheduled(_:), v1);
  sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v18[2] == v18[0] && v18[3] == v18[1])
  {
    v15 = 4;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  v16 = *(v2 + 8);
  v16(v5, v1);
  v16(v7, v1);

  if (v13 == 1)
  {
    return v15;
  }

  else
  {
    return v15 + 1;
  }
}

uint64_t sub_1000BB484(uint64_t a1)
{
  v21[1] = a1;
  v1 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar.Identifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Calendar();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Calendar.Identifier.gregorian(_:), v8);
  Calendar.init(identifier:)();
  (*(v9 + 8))(v11, v8);
  Calendar.date(from:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v17 = [objc_allocWithZone(NSDateFormatter) init];
    [v17 setDateStyle:0];
    [v17 setTimeStyle:1];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 stringFromDate:isa];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v5 + 8))(v7, v4);
    (*(v13 + 8))(v15, v12);
    return v20;
  }

  return result;
}

char *sub_1000BB7E8(void *a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  v5 = sub_1000AD4A4(v4);
  if (v5 > 2)
  {
    if (v5 == 3)
    {

      return sub_1000B3FA0();
    }

    else if (v5 == 4)
    {

      return sub_1000B42D8();
    }

    else
    {
      v7 = sub_1000B4630();
      v8 = [v7 textLabel];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_opt_self() mainBundle];
        v24._object = 0x800000010057AA80;
        v11._object = 0x800000010057AA60;
        v24._countAndFlagsBits = 0xD00000000000002DLL;
        v11._countAndFlagsBits = 0xD00000000000001BLL;
        v12._countAndFlagsBits = 0;
        v12._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v24);

        v13 = String._bridgeToObjectiveC()();

        [v9 setText:v13];
      }

      v14 = [v7 textLabel];
      if (v14)
      {
        v15 = v14;
        [v14 setTextAlignment:1];
      }

      v16 = [v7 textLabel];
      if (v16)
      {
        v17 = v16;
        v18 = [objc_opt_self() systemRedColor];
        [v17 setTextColor:v18];
      }

      v19 = [v7 textLabel];
      if (v19)
      {
        v20 = v19;
        [v19 setEnabled:1];
      }

      [v7 setIndentationLevel:0];
      [v7 setAccessoryType:0];
      v21 = *(v2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeCell);
      *(v2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeCell) = v7;
      v22 = v7;

      return v22;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {

      return sub_1000AF378(a1);
    }

    else
    {

      return sub_1000B2D40();
    }
  }

  else
  {

    return sub_1000AE020();
  }
}

char *sub_1000BBB24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Calendar.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker;
  *&v2[v8] = [objc_allocWithZone(UIDatePicker) init];
  (*(v5 + 104))(v7, enum case for Calendar.Identifier.gregorian(_:), v4);
  Calendar.init(identifier:)();
  (*(v5 + 8))(v7, v4);
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for ScheduleTimePickerCell(0);
  v18.receiver = v2;
  v18.super_class = v10;
  v11 = objc_msgSendSuper2(&v18, "initWithStyle:reuseIdentifier:", 0, v9);

  v12 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker;
  v13 = *&v11[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker];
  v14 = v11;
  [v13 setDatePickerMode:0];
  [*&v11[v12] setMinuteInterval:5];
  LODWORD(v15) = 1148846080;
  [*&v11[v12] setContentCompressionResistancePriority:1 forAxis:v15];
  [*&v11[v12] addTarget:v14 action:"timeChanged" forControlEvents:4096];
  [*&v11[v12] setPreferredDatePickerStyle:1];
  v16 = [v14 contentView];
  [v16 addSubview:*&v11[v12]];

  sub_1000B6E1C();
  return v14;
}

uint64_t sub_1000BBE44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10007EBC0(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BBEF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BBF40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10007EBC0(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for LocationAlertTableViewSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationAlertTableViewSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BC10C()
{
  result = qword_1006B0168;
  if (!qword_1006B0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0168);
  }

  return result;
}

void sub_1000BC2B8()
{
  if ([v0 isCancelled])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "FMDeviceImageDownloadOperation: operation cancelled", v3, 2u);
    }
  }
}

id sub_1000BC40C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for FMDeviceImageDownloadOperation();
  v62.receiver = v0;
  v62.super_class = v15;
  objc_msgSendSuper2(&v62, "start");
  v16 = *&v0[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_request + 48];
  v65 = *&v0[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_request + 32];
  v66 = v16;
  v67 = *&v0[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_request + 64];
  v17 = *&v0[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_request + 16];
  v63 = *&v0[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_request];
  v64 = v17;
  sub_1001A2AB4(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000BD1D4(v4);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceImageDownloadOperation: operation cannot start without URL", v21, 2u);
    }

    return [v1 setFinished:1];
  }

  else
  {
    v59 = *(v6 + 32);
    v60 = v6 + 32;
    v59(v14, v4, v5);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = *(v6 + 16);
    v56 = v6 + 16;
    v55 = v24;
    v24(v12, v14, v5);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v54 = v0;
      v28 = v27;
      v29 = swift_slowAlloc();
      v53 = v14;
      v30 = v29;
      aBlock[0] = v29;
      *v28 = 136315138;
      v31 = URL.absoluteString.getter();
      v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = v32;
      v34 = *(v6 + 8);
      v57 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = v34;
      v34(v12, v5);
      v35 = sub_100005B4C(v31, v33, aBlock);
      v9 = v52;

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMDeviceImageDownloadOperation: started for URL: %s", v28, 0xCu);
      sub_100006060(v30);
      v14 = v53;

      v1 = v54;
    }

    else
    {

      v36 = *(v6 + 8);
      v57 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = v36;
      v36(v12, v5);
    }

    v37 = [objc_opt_self() defaultSessionConfiguration];
    [v37 setHTTPShouldUsePipelining:1];
    v38 = [objc_opt_self() sessionWithConfiguration:v37];
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v55(v9, v14, v5);
    v42 = *(v6 + 80);
    v43 = v9;
    v44 = (v42 + 16) & ~v42;
    v45 = (v7 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = v14;
    v47 = swift_allocObject();
    v59((v47 + v44), v43, v5);
    *(v47 + v45) = v1;
    aBlock[4] = sub_1000BD23C;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BCFB0;
    aBlock[3] = &unk_100624D70;
    v48 = _Block_copy(aBlock);
    v49 = v1;

    v50 = [v38 dataTaskWithURL:v41 completionHandler:v48];
    _Block_release(v48);

    [v50 resume];
    return v58(v46, v5);
  }
}

id sub_1000BCA48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  if (a2 >> 60 == 15 || a4)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    (*(v12 + 16))(v15, a5, v11);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = a6;
      v47 = v33;
      *v32 = 136315394;
      v34 = URL.absoluteString.getter();
      v36 = v35;
      (*(v12 + 8))(v15, v11);
      v37 = sub_100005B4C(v34, v36, &v47);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v46 = a4;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v38 = String.init<A>(describing:)();
      v40 = sub_100005B4C(v38, v39, &v47);

      *(v32 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "FMDeviceImageDownloadOperation: error received for URL: %s, error: %s", v32, 0x16u);
      swift_arrayDestroy();
      a6 = v45;
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (*&a6[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_completion])(0, 0xF000000000000000, a4);
    return [a6 setFinished:1];
  }

  else
  {
    v45 = a6;
    sub_10005B930(a1, a2);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    (*(v12 + 16))(v17, a5, v11);
    sub_10005B930(a1, a2);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_10005BA6C(a1, a2);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v21 = 136315394;
      v22 = URL.absoluteString.getter();
      v24 = v23;
      (*(v12 + 8))(v17, v11);
      v25 = sub_100005B4C(v22, v24, &v47);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = Data.debugDescription.getter();
      v28 = sub_100005B4C(v26, v27, &v47);

      *(v21 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceImageDownloadOperation: response received for URL: %s, data: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    v42 = v45;
    v43 = *&v45[OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation_completion];
    sub_10005B930(a1, a2);
    v43(a1, a2, 0);
    sub_10005BA6C(a1, a2);
    [v42 setFinished:1];
    return sub_10005BA6C(a1, a2);
  }
}

uint64_t sub_1000BCFB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_10005BA6C(v6, v10);
}

id sub_1000BD0F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceImageDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BD1D4(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B0120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000BD23C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000BCA48(a1, a2, a3, a4, v4 + v10, v11);
}

uint64_t sub_1000BD300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a2;
  v47 = a3;
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = &v42 - v10;
  v11 = __chkstk_darwin(v9);
  v42 = &v42 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = __chkstk_darwin(v13);
  v45 = &v42 - v17;
  __chkstk_darwin(v16);
  v44 = &v42 - v18;
  v46 = *(v3 + 40);
  result = dispatch thunk of FMFManager.friends.getter();
  v20 = result;
  v21 = *(result + 16);
  v49 = v5;
  if (v21)
  {
    v22 = 0;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      (*(v6 + 16))(v15, v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v5);
      if (FMFFriend.identifier.getter() == a1 && v23 == v50)
      {

        goto LABEL_26;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        break;
      }

      ++v22;
      v5 = v49;
      result = (*(v6 + 8))(v15, v49);
      if (v21 == v22)
      {
        goto LABEL_8;
      }
    }

    v5 = v49;
LABEL_26:
    v37 = *(v6 + 32);
    v38 = v45;
    v37(v45, v15, v5);
    v39 = v44;
LABEL_27:
    v37(v39, v38, v5);
    v41 = v47;
    v37(v47, v39, v5);
    v40 = 0;
    return (*(v6 + 56))(v41, v40, 1, v5);
  }

LABEL_8:

  result = dispatch thunk of FMFManager.friends.getter();
  v25 = result;
  v26 = *(result + 16);
  if (!v26)
  {
LABEL_23:

    v40 = 1;
    v41 = v47;
    v5 = v49;
    return (*(v6 + 56))(v41, v40, 1, v5);
  }

  v27 = 0;
  v46 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v45 = (v6 + 16);
  while (v27 < *(v25 + 16))
  {
    (*(v6 + 16))(v48, v46 + *(v6 + 72) * v27, v49);
    v28 = FMFFriend.contactHandles.getter();
    if (*(v28 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = v50;
      v31 = -1 << *(v28 + 32);
      v32 = v29 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = (*(v28 + 48) + 16 * v32);
          if (*v34 == a1 && v34[1] == v30)
          {
            break;
          }

          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v30 = v50;
          if (v36)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v37 = *(v6 + 32);
        v38 = v43;
        v5 = v49;
        v37(v43, v48, v49);
        v39 = v42;
        goto LABEL_27;
      }
    }

LABEL_10:
    ++v27;

    result = (*(v6 + 8))(v48, v49);
    if (v27 == v26)
    {
      goto LABEL_23;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000BD790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a1;
  v4 = type metadata accessor for FMFLocationAlert();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch thunk of FMFManager.locationAlerts.getter();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 16);
    if (v9)
    {
      v19 = a3;
      v10 = 0;
      result = v22;
      v12 = v8 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v13 = (v22 + 8);
      while (v10 < *(v8 + 16))
      {
        (*(result + 16))(v6, v12 + *(result + 72) * v10, v4);
        v15 = FMFLocationAlert.identifier.getter();
        if (v16)
        {
          if (v15 == v21 && v16 == v20)
          {

LABEL_17:

            v18 = v19;
            (*(v22 + 32))(v19, v6, v4);
            return (*(v22 + 56))(v18, 0, 1, v4);
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_17;
          }
        }

        ++v10;
        (*v13)(v6, v4);
        result = v22;
        if (v9 == v10)
        {

          a3 = v19;
          return (*(v22 + 56))(a3, 1, 1, v4);
        }
      }

      __break(1u);
    }

    else
    {

      return (*(v22 + 56))(a3, 1, 1, v4);
    }
  }

  else
  {
    v17 = *(v22 + 56);

    return v17(a3, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1000BDA10(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B0670);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B0050);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  sub_100007204(a1, &v33 - v13, &qword_1006B0050);
  dispatch thunk of FMFManager.selectedFriend.setter();
  sub_100007204(a1, v12, &qword_1006B0050);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    return sub_100012DF0(v12, &qword_1006B0050);
  }

  (*(v6 + 32))(v8, v12, v5);
  v15 = FMFFriend.name.getter();
  v17 = v16;
  v18 = FMFFriend.identifier.getter();
  v34 = v19;
  v20 = FMFFriend.contactHandles.getter();
  v21 = *(v20 + 16);
  v35 = v18;
  v36 = v5;
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = sub_10002E21C(v21, 0);
  v23 = sub_100016318(aBlock, v22 + 4, v21, v20);
  sub_10000BEC8();
  if (v23 != v21)
  {
    __break(1u);
LABEL_6:

    v22 = _swiftEmptyArrayStorage;
  }

  FMFFriend.contact.getter();
  v24 = type metadata accessor for FMFContact();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v4, 1, v24) == 1)
  {
    sub_100012DF0(v4, &unk_1006B0670);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v26 = FMFContact.storeUUID.getter();
    v27 = v28;
    (*(v25 + 8))(v4, v24);
  }

  type metadata accessor for LocateIntent();
  LocateIntent.__allocating_init(friendName:friendId:handles:contactId:)(v15, v17, v35, v34, v22, v26, v27);
  v30 = v29;
  v31 = [objc_allocWithZone(INInteraction) initWithIntent:v29 response:0];
  aBlock[4] = sub_1001C493C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A44B4;
  aBlock[3] = &unk_100624E48;
  v32 = _Block_copy(aBlock);

  [v31 donateInteractionWithCompletion:v32];
  _Block_release(v32);

  return (*(v6 + 8))(v8, v36);
}

void sub_1000BDE60(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0);
      v6 = String.init<A>(describing:)();
      v8 = sub_100005B4C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error during locate friend donation - %s", v4, 0xCu);
      sub_100006060(v5);
    }

    else
    {
    }
  }
}

char *sub_1000BE020(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v3 - 8);
  v51 = &v40 - v4;
  v5 = type metadata accessor for FMFFriend();
  v45 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FMIPBeaconShare();
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v17 = (*(v13 + 32))(v15, v11, v12);
    v18 = *(*(a2 + 24) + 64);
    __chkstk_darwin(v17);
    *(&v40 - 2) = v15;

    v19 = sub_1001048C4(sub_1000C1EC0, (&v40 - 4), v18);
    v20 = *(v19 + 16);
    if (v20)
    {
      v41 = v15;
      v42 = v13;
      v43 = v12;
      v44 = v19;
      v21 = *(v52 + 16);
      v22 = v19 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v47 = *(v52 + 72);
      v48 = v21;
      v52 += 16;
      v53 = v5;
      v23 = (v52 - 8);
      v24 = (v45 + 48);
      v46 = (v45 + 32);
      v25 = _swiftEmptyArrayStorage;
      v26 = v49;
      v21(v8, v22, v49);
      while (1)
      {
        v27 = FMIPBeaconShare.otherPartyHandle.getter();
        v28 = v51;
        sub_1000BD300(v27, v29, v51);
        v30 = v28;

        (*v23)(v8, v26);
        v31 = v28;
        v32 = v53;
        if ((*v24)(v31, 1, v53) == 1)
        {
          sub_100012DF0(v30, &qword_1006B0050);
        }

        else
        {
          v33 = *v46;
          (*v46)(v50, v30, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_10008BB54(0, *(v25 + 2) + 1, 1, v25);
          }

          v35 = *(v25 + 2);
          v34 = *(v25 + 3);
          if (v35 >= v34 >> 1)
          {
            v25 = sub_10008BB54(v34 > 1, v35 + 1, 1, v25);
          }

          *(v25 + 2) = v35 + 1;
          v33(&v25[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35], v50, v53);
        }

        v22 += v47;
        if (!--v20)
        {
          break;
        }

        v48(v8, v22, v26);
      }

      v13 = v42;
      v12 = v43;
      v15 = v41;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    v36 = sub_100538270(v25);

    v37 = *(v36 + 16);
    if (v37)
    {
      v16 = sub_10008CA0C(*(v36 + 16), 0);
      v38 = sub_1004A261C(&v54, &v16[(*(v45 + 80) + 32) & ~*(v45 + 80)], v37, v36);
      sub_10000BEC8();
      if (v38 == v37)
      {
LABEL_20:
        (*(v13 + 8))(v15, v12);
        return v16;
      }

      __break(1u);
    }

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  sub_100012DF0(v11, &unk_1006B20C0);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000BE5D4()
{
  v0 = type metadata accessor for FMIPBeaconShareState();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.beaconIdentifier.getter();
  v11 = static UUID.== infix(_:_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    FMIPBeaconShare.state.getter();
    (*(v1 + 104))(v4, enum case for FMIPBeaconShareState.accepted(_:), v0);
    v12 = static FMIPBeaconShareState.== infix(_:_:)();
    v13 = *(v1 + 8);
    v13(v4, v0);
    v13(v6, v0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1000BE7E0()
{
  if (*(v0 + 80) == 1)
  {
    *(v0 + 80) = 0;
    dispatch thunk of FMFManager.startRefreshing()();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "FMPeopleProvider: Skipping startRefreshing since it has already started", v3, 2u);
    }
  }
}

void sub_1000BE8F0()
{
  if (*(v0 + 80))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "FMPeopleProvider: Skipping stopRefreshing since is has already stopped", v3, 2u);
    }
  }

  else
  {
    *(v0 + 80) = 1;
    dispatch thunk of FMFManager.stopRefreshing()();
  }
}

uint64_t sub_1000BEA00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 49) == 1)
  {
    *(v2 + 49) = 0;
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
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMPeopleProvider: enter refreshForActionGroup, location alerts need to be refreshed", v15, 2u);
    }

    dispatch_group_enter(*(v3 + 24));
    dispatch thunk of FMFManager.startRefreshing()();
  }

  v16 = *(v3 + 24);
  sub_10000905C(0, &qword_1006AEDC0);
  v17 = v16;
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_1000C1E80;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624E20;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100009E80(&qword_1006AEDE0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_1000BEDC4(uint64_t a1)
{
  v3 = type metadata accessor for FMFFriend();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = FMFFriend.debugDescription.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_100005B4C(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMPeopleProvider: startLiveLocation %s", v11, 0xCu);
    sub_100006060(v12);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return dispatch thunk of FMFManager.startLiveLocation(for:clientApp:)();
}

uint64_t sub_1000BF014(uint64_t a1)
{
  v3 = type metadata accessor for FMFFriend();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = FMFFriend.debugDescription.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_100005B4C(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMPeopleProvider: stopLiveLocation %s", v11, 0xCu);
    sub_100006060(v12);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return dispatch thunk of FMFManager.stopLiveLocation(for:)();
}

uint64_t sub_1000BF25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006B04D8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  if (*(a1 + 72))
  {
    sub_100007204(a3, &v13 - v8, &qword_1006B04D8);
    v10 = type metadata accessor for FMFActionURLInfo();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      sub_100012DF0(v9, &qword_1006B04D8);
      v13 = 0u;
      v14 = 0u;
    }

    else
    {
      *(&v14 + 1) = v10;
      v12 = sub_100008FC0(&v13);
      (*(v11 + 32))(v12, v9, v10);
    }

    sub_1002B904C(a2, &v13);

    return sub_100012DF0(&v13, &unk_1006B8740);
  }

  return result;
}

uint64_t sub_1000BF3EC(unint64_t *a1)
{

  v2 = sub_1000C159C(a1);

  if (*a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (result >= v2)
    {
      return sub_1003CE888(v2, v4);
    }
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v2)
    {
      return sub_1003CE888(v2, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BF484()
{

  return v0;
}

uint64_t sub_1000BF4D4()
{
  sub_1000BF484();

  return swift_deallocClassInstance();
}

uint64_t sub_1000BF56C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000BF5B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1000BF628()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "FMPeopleProvider: initializationDidFail", v5, 2u);
  }

  v6 = *(v1 + 32);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v7 + 8 * i + 32);
    }

    v14 = v13 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 16))(v1, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_17:
}

void sub_1000BF83C(uint64_t a1)
{
  v2 = v1;
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
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: didReceive: locationAlerts %ld", v7, 0xCu);
  }

  else
  {
  }

  v8 = *(v2 + 32);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v9 + 8 * i + 32);
    }

    v15 = v14 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 32))(v2, a1, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:

  if ((*(v2 + 49) & 1) == 0)
  {
    *(v2 + 49) = 1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMPeopleProvider: leave refreshForActionGroup, location alerts refreshed", v18, 2u);
    }

    v19 = *(v2 + 24);

    dispatch_group_leave(v19);
  }
}

uint64_t sub_1000BFB40(uint64_t a1)
{
  v2 = v1;
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
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: didReceive: locations %ld", v7, 0xCu);
  }

  else
  {
  }

  v8 = *(v2 + 32);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v11 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v9 + 8 * i + 32);
    }

    v16 = v15 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 40))(v2, a1, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
}

void sub_1000BFD8C(uint64_t a1, unint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      a1 = 7104878;
      v8 = 0xE300000000000000;
    }

    v9 = sub_100005B4C(a1, v8, &v11);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v5, "FMPeopleProvider: meDeviceChanged: %s", v6, 0xCu);
    sub_100006060(v7);
  }
}

uint64_t sub_1000BFF10(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFPreferences();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 136315138;
    v12 = FMFPreferences.debugDescription.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_100005B4C(v12, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPeopleProvider: preferences changed: %s", v11, 0xCu);
    sub_100006060(v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = *(v2 + 32);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));

  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_8;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
  }

LABEL_8:
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v17 + 8 * i + 32);
      }

      v24 = v23 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v24 + 8);
        ObjectType = swift_getObjectType();
        (*(v21 + 64))(v2, a1, ObjectType, v21);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C025C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFMyInfo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 136315138;
    v12 = FMFMyInfo.debugDescription.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_100005B4C(v12, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPeopleProvider: myInfos changed: %s", v11, 0xCu);
    sub_100006060(v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = *(v2 + 32);

  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));

  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_8;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
  }

LABEL_8:
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v17 + 8 * i + 32);
      }

      v24 = v23 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v24 + 8);
        ObjectType = swift_getObjectType();
        (*(v21 + 72))(v2, a1, ObjectType, v21);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C05A8(uint64_t a1)
{
  v2 = v1;
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
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    type metadata accessor for FMFDevice();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v7 + 4) = v9;
    v8->super.isa = v9.super.isa;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: devices changed: %@", v7, 0xCu);
    sub_100012DF0(v8, &unk_1006AF760);
  }

  v10 = *(v2 + 48);
  if (v10 != 2 && (v10 & 1) == 0)
  {
    *(v2 + 48) = 1;
    dispatch_group_leave(*(v2 + 16));
  }

  v11 = *(v2 + 32);

  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);

  os_unfair_lock_unlock((v11 + 24));

  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v12 + 8 * i + 32);
    }

    v19 = v18 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 80))(v2, a1, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_20:
}