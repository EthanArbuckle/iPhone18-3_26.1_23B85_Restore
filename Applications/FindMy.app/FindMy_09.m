uint64_t sub_1000F673C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t _s6FindMy19FMItemBatteryStatusO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100621F60, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000F67E0()
{
  result = qword_1006B1930;
  if (!qword_1006B1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1930);
  }

  return result;
}

unint64_t sub_1000F6838()
{
  result = qword_1006B1938;
  if (!qword_1006B1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1938);
  }

  return result;
}

unint64_t sub_1000F688C()
{
  result = qword_1006B1940;
  if (!qword_1006B1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1940);
  }

  return result;
}

unint64_t sub_1000F68E4()
{
  result = qword_1006B1948;
  if (!qword_1006B1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1948);
  }

  return result;
}

unint64_t sub_1000F693C()
{
  result = qword_1006B1950;
  if (!qword_1006B1950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1950);
  }

  return result;
}

unint64_t sub_1000F6994()
{
  result = qword_1006B1958;
  if (!qword_1006B1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1958);
  }

  return result;
}

unint64_t sub_1000F69E8()
{
  result = qword_1006B1960;
  if (!qword_1006B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1960);
  }

  return result;
}

unint64_t sub_1000F6A40()
{
  result = qword_1006B1968;
  if (!qword_1006B1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1968);
  }

  return result;
}

unint64_t sub_1000F6A98()
{
  result = qword_1006B1970;
  if (!qword_1006B1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B1970);
  }

  return result;
}

uint64_t type metadata accessor for FMItemDetailViewModel()
{
  result = qword_1006B19D0;
  if (!qword_1006B19D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F6B90()
{
  sub_10000AF8C();
  if (v0 <= 0x3F)
  {
    sub_10000905C(319, &qword_1006C0000);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1000100C8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FMIPProductType();
          if (v4 <= 0x3F)
          {
            sub_10000905C(319, &unk_1006B19E0);
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

uint64_t sub_1000F6D68(uint64_t a1)
{
  result = sub_1000F6DC0(&qword_1006B1AA0, type metadata accessor for FMItemDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F6DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F6E08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1000F6E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy32FMPredefinedMessageTableViewCell__style;
  if (qword_1006AEAA0 != -1)
  {
    swift_once();
  }

  v7 = qword_1006B1B08;
  *&v3[v6] = qword_1006B1B08;
  v8 = &v3[OBJC_IVAR____TtC6FindMy32FMPredefinedMessageTableViewCell_message];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = v7;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for FMPredefinedMessageTableViewCell();
  v11 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v10);

  v12 = v11;
  sub_1000F703C();

  return v12;
}

void sub_1000F703C()
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*&v0[OBJC_IVAR____TtC6FindMy32FMPredefinedMessageTableViewCell__style]];
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setFont:v5];
  }

  v3 = [v0 textLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setNumberOfLines:0];
  }
}

void sub_1000F71A4(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMPredefinedMessageTableViewCell();
  objc_msgSendSuper2(&v8, "setSelected:", a1 & 1);
  v3 = [v1 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = &selRef_systemBackgroundColor;
    if ((a1 & 1) == 0)
    {
      v6 = &selRef_labelColor;
    }

    v7 = [v5 *v6];
    [v4 setTextColor:v7];
  }
}

void sub_1000F725C(char a1, char a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for FMPredefinedMessageTableViewCell();
  objc_msgSendSuper2(&v10, "setSelected:animated:", a1 & 1, a2 & 1);
  v5 = [v2 textLabel];
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = &selRef_systemBackgroundColor;
    if ((a1 & 1) == 0)
    {
      v8 = &selRef_labelColor;
    }

    v9 = [v7 *v8];
    [v6 setTextColor:v9];
  }
}

void sub_1000F7380(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC6FindMy32FMPredefinedMessageTableViewCell_message];
  *v3 = a1;
  *(v3 + 1) = a2;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMPredefinedMessageTableViewCell();
  v4 = objc_msgSendSuper2(&v7, "textLabel");
  if (v4)
  {
    v5 = v4;
    if (*(v3 + 1))
    {

      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v6 = 0;
    }

    [v5 setText:v6];
  }
}

uint64_t sub_1000F7440()
{
}

id sub_1000F7484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPredefinedMessageTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000F753C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v31 = a2;
  v2 = type metadata accessor for OfferLocationDuration();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FriendshipExpiration();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v28 - v7;
  v8 = sub_1003E1AD0();
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v39._object = 0x800000010057E1B0;
  v11._object = 0x800000010057E190;
  v39._countAndFlagsBits = 0xD000000000000027;
  v11._countAndFlagsBits = 0xD000000000000015;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v39);

  v13.super.isa = [v9 mainBundle];
  v40._object = 0x800000010057E200;
  v14._countAndFlagsBits = 0xD000000000000017;
  v14._object = 0x800000010057E1E0;
  v40._countAndFlagsBits = 0xD000000000000029;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v40);

  LOBYTE(v13.super.isa) = sub_100431578(v8);

  if (v13.super.isa)
  {
    v17 = v29;
    v16 = v30;
    (*(v30 + 16))(v29, v31, v2);
    v18 = (*(v16 + 88))(v17, v2);
    if (v18 == enum case for OfferLocationDuration.oneHour(_:))
    {
      v19 = &enum case for FriendshipExpiration.oneHour(_:);
LABEL_15:
      v25 = v34;
      v24 = v35;
      v26 = v32;
      (*(v34 + 104))(v32, *v19, v35);
      v27 = v33;
      (*(v25 + 32))(v33, v26, v24);
      sub_1000F8E3C(v36, v27, 0, 0);
      (*(v25 + 8))(v27, v24);
      return;
    }

    if (v18 == enum case for OfferLocationDuration.endOfDay(_:))
    {
      v19 = &enum case for FriendshipExpiration.endOfDay(_:);
      goto LABEL_15;
    }

    if (v18 == enum case for OfferLocationDuration.indefinitely(_:))
    {
      v19 = &enum case for FriendshipExpiration.forever(_:);
      goto LABEL_15;
    }

    if (v18 == enum case for OfferLocationDuration.pin(_:))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v37 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v37, v21, "FMPeopleActionController: Not eligible for sharing", v22, 2u);
    }

    v23 = v37;
  }
}

void sub_1000F7A2C(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v145 = a5;
  v146 = a6;
  v133 = a4;
  v137 = a2;
  v144 = a1;
  v7 = type metadata accessor for FMFActionStatus();
  v138 = *(v7 - 8);
  v139 = v7;
  __chkstk_darwin(v7);
  v132 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v9 - 8);
  v135 = (v126 - v10);
  v142 = type metadata accessor for FMFFriend();
  v147 = *(v142 - 8);
  v11 = __chkstk_darwin(v142);
  v141 = v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v12;
  __chkstk_darwin(v11);
  v14 = v126 - v13;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v154._object = 0x800000010057E1B0;
  v17._object = 0x800000010057E190;
  v154._countAndFlagsBits = 0xD000000000000027;
  v17._countAndFlagsBits = 0xD000000000000015;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v154);

  v143 = v15;
  v19.super.isa = [v15 mainBundle];
  v155._object = 0x800000010057E200;
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x800000010057E1E0;
  v155._countAndFlagsBits = 0xD000000000000029;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v155);

  v134 = a3;
  LOBYTE(v19.super.isa) = sub_100431578(a3);

  if (v19.super.isa)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    v23 = v147;
    v24 = v147 + 16;
    v25 = v142;
    v138 = *(v147 + 16);
    (v138)(v14, v144, v142);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v139 = v24;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136315138;
      v31 = FMFFriend.debugDescription.getter();
      v33 = v32;
      (*(v147 + 8))(v14, v25);
      v34 = sub_100005B4C(v31, v33, &aBlock);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMPeopleActionController: Start Sharing Location button pressed for %s", v29, 0xCu);
      sub_100006060(v30);
      v23 = v147;
    }

    else
    {

      (*(v23 + 8))(v14, v25);
    }

    v47 = v135;
    v48 = [v143 mainBundle];
    v156._object = 0x800000010057E390;
    v49._countAndFlagsBits = 0x52465F4552414853;
    v156._countAndFlagsBits = 0xD00000000000001CLL;
    v49._object = 0xEA00000000004D4FLL;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v156);

    sub_10007EBC0(&unk_1006B20B0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100552220;
    dispatch thunk of FMFManager.preferences.getter();
    v52 = type metadata accessor for FMFPreferences();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v47, 1, v52) == 1)
    {
      sub_100012DF0(v47, &qword_1006AF750);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v54 = FMFPreferences.primaryEmail.getter();
      v55 = v56;
      (*(v53 + 8))(v47, v52);
    }

    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_10008EE84();
    if (v55)
    {
      v57 = v54;
    }

    else
    {
      v57 = 0;
    }

    v58 = 0xE000000000000000;
    if (v55)
    {
      v58 = v55;
    }

    *(v51 + 32) = v57;
    *(v51 + 40) = v58;
    String.init(format:_:)();
    v60 = v59;

    v126[1] = v60;
    v61 = String._bridgeToObjectiveC()();
    v128 = [objc_opt_self() alertControllerWithTitle:v61 message:0 preferredStyle:v137];

    v62 = v143;
    v63 = [v143 mainBundle];
    v157._object = 0x800000010057E2D0;
    v64._countAndFlagsBits = 0xD00000000000002FLL;
    v64._object = 0x800000010057E2A0;
    v157._countAndFlagsBits = 0xD000000000000041;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v157);

    v66 = swift_allocObject();
    v68 = v145;
    v67 = v146;
    *(v66 + 16) = v145;
    *(v66 + 24) = v67;
    sub_100062900(v68);
    v69 = String._bridgeToObjectiveC()();

    v152 = sub_1000FF538;
    v153 = v66;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v135 = &v150;
    v150 = sub_100017328;
    v151 = &unk_100626F78;
    v70 = _Block_copy(&aBlock);

    v137 = objc_opt_self();
    v127 = [v137 actionWithTitle:v69 style:1 handler:v70];
    _Block_release(v70);

    v71 = [v62 mainBundle];
    v158._object = 0x800000010057E3D0;
    v72._object = 0x800000010057E3B0;
    v158._countAndFlagsBits = 0xD000000000000027;
    v72._countAndFlagsBits = 0xD000000000000015;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v158);

    v129 = String._bridgeToObjectiveC()();

    v74 = String._bridgeToObjectiveC()();
    v132 = objc_opt_self();
    v75 = [v132 systemImageNamed:v74];

    v76 = v141;
    v77 = v142;
    (v138)(v141, v144, v142);
    v78 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v79 = (v136 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = *(v23 + 80);
    v80 = swift_allocObject();
    v81 = v140;
    *(v80 + 16) = v140;
    v82 = *(v23 + 32);
    v136 = v78;
    v83 = v77;
    v84 = v79;
    v147 = v23 + 32;
    v130 = v82;
    v82(v80 + v78, v76, v83);
    v85 = v81;
    v86 = (v80 + v79);
    *v86 = v68;
    v86[1] = v67;
    v152 = sub_1000FF540;
    v153 = v80;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v150 = sub_1000F8CBC;
    v151 = &unk_100626FC8;
    v87 = _Block_copy(&aBlock);
    sub_100062900(v68);

    v88 = v129;
    v89 = [v137 _actionWithTitle:v129 image:v75 style:0 handler:v87 shouldDismissHandler:0];
    _Block_release(v87);

    if (v89)
    {
      v129 = v89;
      [v89 _setTitleTextAlignment:0];
      v90 = [v143 mainBundle];
      v159._object = 0x800000010057E420;
      v91._countAndFlagsBits = 0xD000000000000017;
      v91._object = 0x800000010057E400;
      v159._countAndFlagsBits = 0xD000000000000029;
      v92._countAndFlagsBits = 0;
      v92._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v159);

      v93 = String._bridgeToObjectiveC()();

      v94 = String._bridgeToObjectiveC()();
      v95 = [v132 systemImageNamed:v94];

      v96 = v141;
      v97 = v142;
      (v138)(v141, v144, v142);
      v98 = swift_allocObject();
      *(v98 + 16) = v85;
      v130(v98 + v136, v96, v97);
      v99 = (v98 + v84);
      v101 = v145;
      v100 = v146;
      *v99 = v145;
      v99[1] = v100;
      v152 = sub_1000FF54C;
      v153 = v98;
      aBlock = _NSConcreteStackBlock;
      v149 = 1107296256;
      v150 = sub_1000F8CBC;
      v151 = &unk_100627018;
      v102 = _Block_copy(&aBlock);
      sub_100062900(v101);

      v103 = [v137 _actionWithTitle:v93 image:v95 style:0 handler:v102 shouldDismissHandler:0];
      _Block_release(v102);

      if (v103)
      {
        [v103 _setTitleTextAlignment:0];
        v104 = [v143 mainBundle];
        v160._object = 0x800000010057E470;
        v105._countAndFlagsBits = 0xD000000000000019;
        v105._object = 0x800000010057E450;
        v160._countAndFlagsBits = 0xD00000000000002BLL;
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v160);

        v107 = String._bridgeToObjectiveC()();

        v108 = String._bridgeToObjectiveC()();
        v109 = [v132 systemImageNamed:v108];

        v110 = v141;
        (v138)(v141, v144, v97);
        v111 = swift_allocObject();
        *(v111 + 16) = v85;
        v130(v111 + v136, v110, v97);
        v112 = (v111 + v84);
        v114 = v145;
        v113 = v146;
        *v112 = v145;
        v112[1] = v113;
        v152 = sub_1000FF6E4;
        v153 = v111;
        aBlock = _NSConcreteStackBlock;
        v149 = 1107296256;
        v150 = sub_1000F8CBC;
        v151 = &unk_100627068;
        v115 = _Block_copy(&aBlock);
        sub_100062900(v114);

        v116 = [v137 _actionWithTitle:v107 image:v109 style:0 handler:v115 shouldDismissHandler:0];
        _Block_release(v115);

        if (v116)
        {

          [v116 _setTitleTextAlignment:0];
          v117 = v128;
          v118 = v129;
          [v128 addAction:v129];
          [v117 addAction:v103];
          [v117 addAction:v116];
          v119 = v127;
          [v117 addAction:v127];
          v120 = v133;
          if (v133)
          {
            v121 = v117;
            v122 = v120;
            v123 = [v121 popoverPresentationController];
            if (v123)
            {
              v124 = v123;
              [v123 setSourceView:v122];
            }

            v125 = [v121 popoverPresentationController];

            if (v125)
            {
              [v122 bounds];
              [v125 setSourceRect:?];
            }
          }

          if (v134)
          {
            [v134 presentViewController:v117 animated:1 completion:0];
          }

          return;
        }

LABEL_36:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100005B14(v35, qword_1006D4630);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v145;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMPeopleActionController: Not eligible for sharing", v40, 2u);
  }

  if (v39)
  {
    v42 = v138;
    v41 = v139;
    v43 = v132;
    (*(v138 + 104))(v132, enum case for FMFActionStatus.error(_:), v139);
    v44 = type metadata accessor for FMFActionsError();
    sub_100009F10(&qword_1006B1CA0, &type metadata accessor for FMFActionsError);
    v45 = swift_allocError();
    (*(*(v44 - 8) + 104))(v46, enum case for FMFActionsError.invalidState(_:), v44);
    v39(v43, v45);

    (*(v42 + 8))(v43, v41);
  }
}

uint64_t sub_1000F8BB8(uint64_t a1, void (*a2)(char *, void))
{
  v3 = type metadata accessor for FMFActionStatus();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v4 + 104))(v7, enum case for FMFActionStatus.unknown(_:), v3);
    a2(v7, 0);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void sub_1000F8CBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000F8D28(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned int *a6)
{
  v10 = type metadata accessor for FriendshipExpiration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *a6, v10);
  sub_1000F8E3C(a3, v13, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

void sub_1000F8E3C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v59 = a4;
  v65 = a2;
  v6 = type metadata accessor for FMFActionStatus();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMFFriend();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FriendshipExpiration();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = __chkstk_darwin(v10);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v64 = a1;
  v15 = FMFFriend.contactHandles.getter();
  v16 = *(v15 + 16);
  v60 = a3;
  if (v16)
  {
    v17 = sub_10002E21C(v16, 0);
    v18 = sub_100016318(v66, v17 + 4, v16, v15);
    v19 = v66[0];
    v20 = v66[1];
    a3 = v66[4];

    sub_10000BEC8();
    if (v18 != v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    a3 = v60;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v66[0] = v17;
  sub_10000BED0(v66);

  v19 = v62;
  v20 = v63;
  v21 = v61;
  if (*(v66[0] + 2))
  {
    v17 = *(v66[0] + 5);
    v61 = *(v66[0] + 4);

    if (qword_1006AEBE0 == -1)
    {
LABEL_7:
      v22 = type metadata accessor for Logger();
      sub_100005B14(v22, qword_1006D4630);
      v57 = *(v19 + 2);
      v57(v14, v65, v20);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v25 = 136315394;
        *(v25 + 4) = sub_100005B4C(v61, v17, v66);
        *(v25 + 12) = 2080;
        sub_100009F10(&qword_1006B1C98, &type metadata accessor for FriendshipExpiration);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v19;
        v28 = v20;
        v30 = v29;
        (*(v27 + 1))(v14, v28);
        v31 = sub_100005B4C(v26, v30, v66);

        *(v25 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "FMPeopleActionController: Establishing share for: %s until: %s", v25, 0x16u);
        swift_arrayDestroy();

        a3 = v60;
      }

      else
      {

        (*(v19 + 1))(v14, v20);
        v28 = v20;
      }

      sub_10007EBC0(&unk_1006AF770);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_100552220;
      v45 = v61;
      *(v44 + 32) = v61;
      *(v44 + 40) = v17;

      FMFFriend.identifier.getter();
      v57(v58, v65, v28);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();
      v46 = FMFShareLocationAction.init(handles:friendId:duration:)();
      v47 = swift_allocObject();
      v47[2] = v45;
      v47[3] = v17;
      v48 = v59;
      v47[4] = a3;
      v47[5] = v48;
      sub_100062900(a3);
      sub_1000FB600(v46, sub_1000FF52C, v47);

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005B14(v32, qword_1006D4630);
  v33 = v56;
  v34 = v57;
  (*(v56 + 16))(v21, v64, v57);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v66[0] = v38;
    *v37 = 136315138;
    v39 = FMFFriend.debugDescription.getter();
    v40 = v33;
    v42 = v41;
    (*(v40 + 8))(v21, v34);
    v43 = sub_100005B4C(v39, v42, v66);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "FMPeopleActionController: No handle for person: %s", v37, 0xCu);
    sub_100006060(v38);

    if (!a3)
    {
      return;
    }
  }

  else
  {

    (*(v33 + 8))(v21, v34);
    if (!a3)
    {
      return;
    }
  }

  v50 = v53;
  v49 = v54;
  v51 = v55;
  (*(v54 + 104))(v53, enum case for FMFActionStatus.unknown(_:), v55);
  (a3)(v50, 0);
  (*(v49 + 8))(v50, v51);
}

uint64_t sub_1000F95E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for FMFActionStatus();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  v17 = *(v13 + 16);
  v33 = a1;
  v17(v15, a1, v12);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v18, v19))
  {

    (*(v13 + 8))(v15, v12);
    result = v33;
    if (!a5)
    {
      return result;
    }

    return a5(result, a2);
  }

  v20 = swift_slowAlloc();
  v31 = a6;
  v21 = v20;
  v22 = swift_slowAlloc();
  v32 = a5;
  v36 = v22;
  *v21 = 136315650;

  v23 = sub_100005B4C(a3, a4, &v36);

  *(v21 + 4) = v23;
  *(v21 + 12) = 2080;
  v34 = 0;
  v35 = 0xE000000000000000;
  _print_unlocked<A, B>(_:_:)();
  v24 = v34;
  v25 = v35;
  (*(v13 + 8))(v15, v12);
  v26 = sub_100005B4C(v24, v25, &v36);

  *(v21 + 14) = v26;
  *(v21 + 22) = 2080;
  v34 = a2;
  swift_errorRetain();
  sub_10007EBC0(&qword_1006B9570);
  v27 = String.init<A>(describing:)();
  v29 = sub_100005B4C(v27, v28, &v36);

  *(v21 + 24) = v29;
  _os_log_impl(&_mh_execute_header, v18, v19, "FMPeopleListDataSource: Establishing share completed for: %s, status: %s, error: %s", v21, 0x20u);
  swift_arrayDestroy();
  a5 = v32;

  result = v33;
  if (a5)
  {
    return a5(result, a2);
  }

  return result;
}

void sub_1000F992C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v60 = a4;
  v62 = a6;
  v58 = a1;
  v57 = type metadata accessor for FMFFriend();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v57);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v69._object = 0x800000010057E260;
  v13._object = 0x800000010057E230;
  v69._countAndFlagsBits = 0xD000000000000034;
  v13._countAndFlagsBits = 0xD000000000000022;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v69);

  v15 = String._bridgeToObjectiveC()();

  v55 = [objc_opt_self() alertControllerWithTitle:0 message:v15 preferredStyle:a2];

  v16 = [v11 mainBundle];
  v70._object = 0x800000010057E2D0;
  v17._countAndFlagsBits = 0xD00000000000002FLL;
  v17._object = 0x800000010057E2A0;
  v70._countAndFlagsBits = 0xD000000000000041;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v70);

  v19 = swift_allocObject();
  v54 = a5;
  v20 = v62;
  v19[2] = a5;
  v19[3] = v20;
  v19[4] = a3;
  sub_100062900(a5);
  v61 = a3;
  v51 = a3;
  v21 = String._bridgeToObjectiveC()();

  v67 = sub_1000FF48C;
  v68 = v19;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v53 = &v65;
  v65 = sub_100017328;
  v66 = &unk_100626EB0;
  v22 = _Block_copy(&aBlock);

  v52 = objc_opt_self();
  v23 = [v52 actionWithTitle:v21 style:1 handler:v22];
  _Block_release(v22);

  v24 = [v11 mainBundle];
  v71._object = 0x800000010057E350;
  v25._countAndFlagsBits = 0xD000000000000028;
  v25._object = 0x800000010057E320;
  v71._countAndFlagsBits = 0xD00000000000003ALL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v71);

  v27 = v56;
  v28 = v57;
  (*(v9 + 16))(v56, v58, v57);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v59;
  (*(v9 + 32))(v31 + v29, v27, v28);
  v32 = (v31 + v30);
  v33 = v54;
  v34 = v62;
  *v32 = v54;
  v32[1] = v34;
  sub_100062900(v33);

  v35 = String._bridgeToObjectiveC()();
  v36 = v55;

  v67 = sub_1000FF498;
  v68 = v31;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_100017328;
  v66 = &unk_100626F00;
  v37 = _Block_copy(&aBlock);

  v38 = [v52 actionWithTitle:v35 style:2 handler:v37];
  _Block_release(v37);

  [v36 addAction:v38];
  v39 = v60;
  [v36 addAction:v23];
  if (v39)
  {
    v66 = &type metadata for SolariumFeatureFlag;
    v67 = sub_10000BD04();
    v40 = v39;
    v41 = isFeatureEnabled(_:)();
    sub_100006060(&aBlock);
    if ((v41 & 1) == 0 || (v42 = [v40 traitCollection], v43 = objc_msgSend(v42, "horizontalSizeClass"), v42, v43 != 1))
    {
      v44 = [v36 popoverPresentationController];
      if (v44)
      {
        v45 = v44;
        [v44 setPermittedArrowDirections:12];
      }
    }

    v46 = v36;
    v47 = [v46 popoverPresentationController];
    if (v47)
    {
      v48 = v47;
      [v47 setSourceView:v40];
    }

    v49 = [v46 popoverPresentationController];

    if (v49)
    {
      [v40 bounds];
      [v49 setSourceRect:?];
    }
  }

  if (v61)
  {
    [v51 presentViewController:v36 animated:1 completion:0];
  }
}

uint64_t sub_1000F9F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v30 = a2;
  v4 = type metadata accessor for FMFFriend();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for FMFRelationshipType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.followsMyLocation.getter();
  sub_100009F10(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v16 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v18 = v28;
  v19 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v17(v13, v9);
  v17(v15, v9);
  v20 = *(v18 + 16);
  if (v16 & 1) == 0 || (v19)
  {
    v20(v27, a1, v29);
    type metadata accessor for FMFStopSharingAction();
    swift_allocObject();
    v23 = FMFStopSharingAction.init(friend:)();
    v24 = swift_allocObject();
    v25 = v30;
    v26 = v31;
    *(v24 + 16) = v30;
    *(v24 + 24) = v26;
    sub_100062900(v25);
    sub_1000FB600(v23, sub_1000FF484, v24);
  }

  else
  {
    v21 = v29;
    v20(v8, a1, v29);
    (*(v18 + 56))(v8, 0, 1, v21);
    sub_1000FD204(v8, v30, v31);
    return sub_100012DF0(v8, &qword_1006B0050);
  }
}

void sub_1000FA338(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for FMFActionStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a1, v8);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v13, v14))
  {

    (*(v9 + 8))(v11, v8);
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  v15 = swift_slowAlloc();
  v24[0] = a1;
  v16 = v15;
  v17 = swift_slowAlloc();
  *v16 = 136315394;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = v17;
  _print_unlocked<A, B>(_:_:)();
  v24[1] = a4;
  v25 = a3;
  v19 = v26;
  v18 = v27;
  (*(v9 + 8))(v11, v8);
  v20 = sub_100005B4C(v19, v18, &v28);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2080;
  v26 = a2;
  swift_errorRetain();
  sub_10007EBC0(&qword_1006B9570);
  v21 = String.init<A>(describing:)();
  v23 = sub_100005B4C(v21, v22, &v28);
  a3 = v25;

  *(v16 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v13, v14, "FMPersonDetailContentViewController: Stop sharing completed with status: %s, error: %s", v16, 0x16u);
  swift_arrayDestroy();

  a1 = v24[0];

  if (a3)
  {
LABEL_7:
    a3(a1, a2);
  }
}

void sub_1000FA630(uint64_t a1, void *a2)
{
  v39 = a1;
  v38 = type metadata accessor for FMFFriend();
  v40 = *(v38 - 8);
  v4 = __chkstk_darwin(v38);
  v36[2] = v5;
  v37 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v36 - v6;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v43._object = 0x800000010057E1B0;
  v10._object = 0x800000010057E190;
  v43._countAndFlagsBits = 0xD000000000000027;
  v10._countAndFlagsBits = 0xD000000000000015;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v43);

  v12 = [v8 mainBundle];
  v44._object = 0x800000010057E200;
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x800000010057E1E0;
  v44._countAndFlagsBits = 0xD000000000000029;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v44);

  LOBYTE(a2) = sub_100431578(a2);

  if (a2)
  {
    v36[1] = v2;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = v40;
    isa = v40[2].isa;
    v18 = v38;
    (isa)(v7, v39, v38);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v21 = 136315138;
      v23 = FMFFriend.debugDescription.getter();
      v25 = v24;
      (v40[1].isa)(v7, v18);
      v26 = sub_100005B4C(v23, v25, &v41);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMPeopleActionController: Accepting invite for person: %s", v21, 0xCu);
      sub_100006060(v22);

      v16 = v40;
    }

    else
    {

      (v16[1].isa)(v7, v18);
    }

    v31 = v39;
    FMFFriend.identifier.getter();
    type metadata accessor for FMFRespondToInviteAction();
    swift_allocObject();
    v32 = FMFRespondToInviteAction.init(friendId:accepted:)();
    v33 = v37;
    (isa)(v37, v31, v18);
    v34 = (LOBYTE(v16[10].isa) + 16) & ~LOBYTE(v16[10].isa);
    v35 = swift_allocObject();
    (v16[4].isa)(v35 + v34, v33, v18);
    sub_1000FB600(v32, sub_1000FF478, v35);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v40 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v40, v28, "FMPeopleActionController: Not eligible for sharing", v29, 2u);
    }

    v30 = v40;
  }
}

uint64_t sub_1000FAB74(uint64_t a1)
{
  v3 = type metadata accessor for FMFFriend();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v26 = v6;
  v27 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v25 = *(v4 + 16);
  v25(v8, a1, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = FMFFriend.debugDescription.getter();
    v24[0] = a1;
    v17 = v16;
    (*(v4 + 8))(v8, v3);
    v18 = sub_100005B4C(v15, v17, &v28);
    a1 = v24[0];

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMPeopleActionController: Declining invite for person: %s", v13, 0xCu);
    sub_100006060(v14);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
  }

  FMFFriend.identifier.getter();
  type metadata accessor for FMFRespondToInviteAction();
  swift_allocObject();
  v19 = FMFRespondToInviteAction.init(friendId:accepted:)();
  v20 = v27;
  v25(v27, a1, v3);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v4 + 32))(v22 + v21, v20, v3);
  sub_1000FB600(v19, sub_1000FF750, v22);
}

uint64_t sub_1000FAEC0(uint64_t a1)
{
  v3 = type metadata accessor for FMFFriend();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v27 = v6;
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v26 = *(v4 + 16);
  v26(v8, a1, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    v15 = FMFFriend.debugDescription.getter();
    v25[0] = a1;
    v17 = v16;
    (*(v4 + 8))(v8, v3);
    v18 = sub_100005B4C(v15, v17, &v29);
    a1 = v25[0];

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMPeopleActionController: Declined share with 'Not Now' for person: %s", v13, 0xCu);
    sub_100006060(v14);
  }

  else
  {

    (*(v4 + 8))(v8, v3);
  }

  v19 = v28;
  v20 = v26;
  v26(v28, a1, v3);
  type metadata accessor for FMFNotNowAction();
  swift_allocObject();
  v21 = FMFNotNowAction.init(friend:)();
  v20(v19, a1, v3);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v4 + 32))(v23 + v22, v19, v3);
  sub_1000FB600(v21, sub_1000FF368, v23);
}

void sub_1000FB208(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v36 = a4;
  v7 = type metadata accessor for FMFActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFFriend();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, a1, v7);
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v7;
    v34 = v17;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315650;
    v37 = 0;
    v38 = 0xE000000000000000;
    v39 = v20;
    _print_unlocked<A, B>(_:_:)();
    v21 = a2;
    v22 = v37;
    v23 = v38;
    (*(v12 + 8))(v14, v11);
    v24 = sub_100005B4C(v22, v23, &v39);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v37 = 0;
    v38 = 0xE000000000000000;
    v25 = v33;
    _print_unlocked<A, B>(_:_:)();
    v26 = v37;
    v27 = v38;
    (*(v8 + 8))(v10, v25);
    v28 = sub_100005B4C(v26, v27, &v39);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    v37 = v21;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v29 = String.init<A>(describing:)();
    v31 = sub_100005B4C(v29, v30, &v39);

    *(v19 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v16, v34, v36, v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1000FB600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = dispatch thunk of FMFBaseAction.debugDescription.getter();
    v12 = sub_100005B4C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMPeopleActionController: perform action %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  dispatch thunk of FMFManager.perform(action:completion:)();
}

uint64_t sub_1000FB7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FMFActionStatus();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = v10;
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v42 = a2;
    aBlock[0] = v16;
    *v15 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v17 = String.init<A>(describing:)();
    v19 = sub_100005B4C(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMPeopleActionController: perform action completed with error?: %s", v15, 0xCu);
    sub_100006060(v16);

    a3 = v31;
  }

  sub_100003E90();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = v34;
  v22 = v36;
  (*(v9 + 16))(v34, a1, v36);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = (v33 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = v39;
  (*(v9 + 32))(v25 + v23, v21, v22);
  *(v25 + v24) = a2;
  aBlock[4] = sub_1000FF2D4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100626DC0;
  v26 = _Block_copy(aBlock);
  swift_errorRetain();

  v27 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009F10(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v28 = v32;
  v29 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v28, v29);
  return (*(v41 + 8))(v27, v38);
}

void sub_1000FBCEC(uint64_t a1, void *a2)
{
  v53 = a2;
  v3 = sub_10007EBC0(&unk_1006B0670);
  __chkstk_darwin(v3 - 8);
  v5 = &v49 - v4;
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for FMFFriend();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMPeopleActionController: handleContact", v16, 2u);
  }

  sub_1000FEA40(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &qword_1006B0050);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMPeopleActionController: cannot show contact card from unknown person", v19, 2u);
    }

    goto LABEL_26;
  }

  (*(v10 + 32))(v12, v8, v9);
  v20 = FMFFriend.contactHandles.getter();
  v21 = *(v20 + 16);
  v51 = v9;
  v52 = v10;
  v50 = v12;
  if (v21)
  {
    v22 = sub_10002E21C(v21, 0);
    v23 = sub_100016318(&v55, v22 + 4, v21, v20);

    sub_10000BEC8();
    if (v23 != v21)
    {
      __break(1u);
      goto LABEL_28;
    }

    v12 = v50;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v55 = v22;
  sub_10000BED0(&v55);

  if (!*(v55 + 2))
  {
LABEL_28:

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  FMFFriend.contact.getter();
  v24 = type metadata accessor for FMFContact();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v5, 1, v24) == 1)
  {
    sub_100012DF0(v5, &unk_1006B0670);
LABEL_19:
    v35 = sub_1000EC68C();
    v36 = [objc_opt_self() viewControllerForUnknownContact:v35];
    if (!v36)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v37 = v36;
    [v37 setDisplayMode:1];
    [v37 setAllowsEditing:1];
    v29 = 0;
    v34 = v52;
    goto LABEL_24;
  }

  FMFContact.storeUUID.getter();
  (*(v25 + 8))(v5, v24);
  type metadata accessor for FMFCoreHelper();
  sub_10007EBC0(&qword_1006AFC30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1005528C0;
  v27 = objc_opt_self();
  *(v26 + 32) = [v27 descriptorForRequiredKeys];
  v28 = static FMFCoreHelper.contact(for:keysToFetch:)();

  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  String.isEmail.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = FMFFriend.contactHandles.getter();
  v12 = v30;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = sub_10002E21C(*(v30 + 16), 0);
    v33 = sub_100016318(&v55, v32 + 4, v31, v12);
    sub_10000BEC8();
    v34 = v52;
    if (v33 != v31)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
    v34 = v52;
  }

  sub_1000FEC3C(v29, v32);

  v38 = [v27 viewControllerForContact:v29];
  if (v38)
  {
    v39 = v38;
    [v39 setDisplayMode:1];
    [v39 setAllowsEditing:1];
    v37 = v39;
    v40 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    [v37 highlightPropertyWithKey:v40 identifier:v35];

    v12 = v50;
LABEL_24:

    v41 = objc_allocWithZone(UIBarButtonItem);
    v42 = [v41 initWithBarButtonSystemItem:1 target:v54 action:"dismissPresentedVCWithSender:"];
    v43 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v37];
    [v43 setModalPresentationStyle:2];
    v44 = [v37 navigationItem];
    [v44 setLeftBarButtonItem:v42 animated:1];

    v45 = [v37 view];
    if (v45)
    {
      v46 = v45;
      v47 = [objc_opt_self() systemBackgroundColor];
      [v46 setBackgroundColor:v47];

      v48 = [objc_allocWithZone(CNContactStore) init];
      [v37 setContactStore:v48];

      [v53 presentViewController:v43 animated:1 completion:0];
      (*(v34 + 8))(v12, v51);
      v17 = *(v54 + 24);
      *(v54 + 24) = v43;
LABEL_26:

      return;
    }

    goto LABEL_29;
  }

LABEL_31:
  __break(1u);

  __break(1u);
}

void sub_1000FC574()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    v5[4] = sub_1000822F4;
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100004AE4;
    v5[3] = &unk_100626D48;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

void sub_1000FC6C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v78 = a4;
  v79 = a5;
  v80 = a2;
  v73 = a3;
  v6 = sub_10007EBC0(&qword_1006B0050);
  v74 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v71 - v11;
  v72 = v13;
  __chkstk_darwin(v10);
  v15 = &v71 - v14;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);
  sub_1000FEA40(a1, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v75 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v20 = 136315138;
    sub_1000FEA40(v15, v12);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_100012DF0(v15, &qword_1006B0050);
    v25 = sub_100005B4C(v22, v24, &aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "FMPeopleActionController: Removing friend %s", v20, 0xCu);
    sub_100006060(v21);
  }

  else
  {

    sub_100012DF0(v15, &qword_1006B0050);
  }

  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v87._object = 0x800000010057E090;
  v28._countAndFlagsBits = 0xD000000000000024;
  v28._object = 0x800000010057E060;
  v87._countAndFlagsBits = 0xD000000000000036;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v87);

  sub_1000FEA40(a1, v9);
  v30 = type metadata accessor for FMFFriend();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v9, 1, v30);
  v76 = a1;
  if (v32 == 1)
  {
    sub_100012DF0(v9, &qword_1006B0050);
  }

  else
  {
    v33 = FMFFriend.shortName.getter();
    v35 = v34;
    (*(v31 + 8))(v9, v30);
    if (v35)
    {

      v36 = [v26 mainBundle];
      v88._object = 0x800000010057E160;
      v37._object = 0x800000010057E140;
      v88._countAndFlagsBits = 0xD00000000000002ELL;
      v37._countAndFlagsBits = 0xD00000000000001CLL;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v88);

      sub_10007EBC0(&unk_1006B20B0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_100552220;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_10008EE84();
      *(v39 + 32) = v33;
      *(v39 + 40) = v35;
      String.init(format:_:)();
    }
  }

  v40 = String._bridgeToObjectiveC()();

  v71 = [objc_opt_self() alertControllerWithTitle:0 message:v40 preferredStyle:0];

  v41 = [v26 mainBundle];
  v89._object = 0x800000010057B2C0;
  v42._countAndFlagsBits = 0xD000000000000029;
  v42._object = 0x800000010057B290;
  v89._countAndFlagsBits = 0xD00000000000003BLL;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v89);

  v44 = swift_allocObject();
  v45 = v73;
  *(v44 + 16) = v73;
  v73 = v45;
  v46 = String._bridgeToObjectiveC()();

  v85 = State.rawValue.getter;
  v86 = v44;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_100017328;
  v84 = &unk_100626C80;
  v47 = _Block_copy(&aBlock);

  v48 = objc_opt_self();
  v49 = [v48 actionWithTitle:v46 style:1 handler:v47];
  _Block_release(v47);

  v50 = [v26 mainBundle];
  v90._object = 0x800000010057E100;
  v51._countAndFlagsBits = 0xD000000000000022;
  v51._object = 0x800000010057E0D0;
  v90._countAndFlagsBits = 0xD000000000000034;
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v90);

  v53 = v75;
  sub_1000FEA40(v76, v75);
  v54 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v55 = (v72 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = v77;
  sub_1000FEB1C(v53, v56 + v54);
  v57 = (v56 + v55);
  v59 = v78;
  v58 = v79;
  *v57 = v78;
  v57[1] = v58;
  v60 = v49;
  v61 = v71;

  sub_100062900(v59);
  v62 = String._bridgeToObjectiveC()();

  v85 = sub_1000FEB8C;
  v86 = v56;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_100017328;
  v84 = &unk_100626CD0;
  v63 = _Block_copy(&aBlock);

  v64 = [v48 actionWithTitle:v62 style:2 handler:v63];
  _Block_release(v63);

  [v61 addAction:v64];
  [v61 addAction:v60];
  v65 = v80;
  if (v80)
  {
    v66 = v61;
    v67 = v65;
    v68 = [v66 popoverPresentationController];
    if (v68)
    {
      v69 = v68;
      [v68 setSourceView:v67];
    }

    v70 = [v66 popoverPresentationController];

    if (v70)
    {
      [v67 bounds];
      [v70 setSourceRect:?];
    }
  }

  [v73 presentViewController:v61 animated:1 completion:0];
}

uint64_t sub_1000FCFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for FMFFriend();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  sub_1000FEA40(a3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100012DF0(v10, &qword_1006B0050);
  }

  (*(v12 + 32))(v17, v10, v11);
  (*(v12 + 16))(v15, v17, v11);
  type metadata accessor for FMFRemoveFriendAction();
  swift_allocObject();
  v19 = FMFRemoveFriendAction.init(friend:)();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  sub_100062900(a4);
  sub_1000FB600(v19, sub_1000FF710, v20);

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1000FD204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for FMFFriend();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  sub_1000FEA40(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100012DF0(v8, &qword_1006B0050);
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 16))(v13, v15, v9);
  type metadata accessor for FMFRemoveFriendAction();
  swift_allocObject();
  v17 = FMFRemoveFriendAction.init(friend:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  sub_100062900(a2);
  sub_1000FB600(v17, sub_1000FEAF8, v18);

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1000FD4BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v29 = a2;
  v30 = a3;
  v31 = a1;
  v8 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for FMFFriend();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v28 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = v12;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, v27, v20, 2u);
    v12 = v26;
  }

  sub_1000FEA40(v31, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100012DF0(v10, &qword_1006B0050);
  }

  (*(v12 + 32))(v16, v10, v11);
  (*(v12 + 16))(v28, v16, v11);
  type metadata accessor for FMFSetFavoriteAction();
  swift_allocObject();
  v22 = FMFSetFavoriteAction.init(friend:order:)();
  v23 = swift_allocObject();
  v24 = v29;
  v25 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v25;
  sub_100062900(v24);
  sub_1000FB600(v22, a7, v23);

  return (*(v12 + 8))(v16, v11);
}

void sub_1000FD808(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, const char *a5)
{
  v10 = type metadata accessor for FMFActionStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  (*(v11 + 16))(v13, a1, v10);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v15, v16))
  {

    (*(v11 + 8))(v13, v10);
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  v17 = swift_slowAlloc();
  v27 = a5;
  v18 = v17;
  v19 = swift_slowAlloc();
  v28 = a1;
  *v18 = 136315394;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = v19;
  _print_unlocked<A, B>(_:_:)();
  v29 = a3;
  v30 = a4;
  v21 = v31;
  v20 = v32;
  (*(v11 + 8))(v13, v10);
  v22 = sub_100005B4C(v21, v20, &v33);

  *(v18 + 4) = v22;
  *(v18 + 12) = 2080;
  v31 = a2;
  swift_errorRetain();
  sub_10007EBC0(&qword_1006B9570);
  v23 = String.init<A>(describing:)();
  v25 = sub_100005B4C(v23, v24, &v33);

  *(v18 + 14) = v25;
  a3 = v29;
  _os_log_impl(&_mh_execute_header, v15, v16, v27, v18, 0x16u);
  swift_arrayDestroy();
  a1 = v28;

  if (a3)
  {
LABEL_7:

    a3(a1, a2);
    sub_10001835C(a3);
  }
}

uint64_t sub_1000FDB18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10025EFD4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000FE0F4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10008B8B8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000FE0F4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10025EFD4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10025EF48(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000FE0F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1000FE31C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006AF740);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = sub_10007EBC0(&qword_1006B0050);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  sub_1000FEA40(a1, &v49 - v12);
  v14 = type metadata accessor for FMFFriend();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_100012DF0(v13, &qword_1006B0050);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "FMPeopleActionController: cannot get direction for person with unknown identifier";
    goto LABEL_15;
  }

  FMFFriend.identifier.getter();

  v22 = *(v15 + 8);
  v22(v13, v14);
  sub_1000FEA40(a1, v11);
  if (v16(v11, 1, v14) == 1)
  {
    v23 = &qword_1006B0050;
    v24 = v11;
LABEL_10:
    sub_100012DF0(v24, v23);
LABEL_11:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "FMPeopleActionController: cannot get direction for person with unknown location";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_16:

    return;
  }

  FMFFriend.location.getter();
  v51 = v22;
  v22(v11, v14);
  v25 = type metadata accessor for FMFLocation();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v4, 1, v25) == 1)
  {
    v23 = &qword_1006AF740;
    v24 = v4;
    goto LABEL_10;
  }

  v28 = FMFLocation.location.getter();
  (*(v26 + 8))(v4, v25);
  if (!v28)
  {
    goto LABEL_11;
  }

  v18 = v28;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005B14(v29, qword_1006D4630);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMPeopleActionController: Directions button toggled", v32, 2u);
  }

  v50 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v18];
  sub_10007EBC0(&unk_1006BF7D0);
  inited = swift_initStackObject();
  v49 = xmmword_100552220;
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v34;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v35;
  *(inited + 56) = v36;
  v37 = sub_1000070D4(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &unk_1006B8500);
  sub_1000FEA40(a1, v8);
  if (v16(v8, 1, v14) == 1)
  {
    sub_100012DF0(v8, &qword_1006B0050);
  }

  else
  {
    v38 = FMFFriend.contactHandles.getter();
    v51(v8, v14);
    v39 = sub_1000F0614(v38);
    v41 = v40;

    if (v41)
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      sub_10007EBC0(&unk_1006AF770);
      v45 = swift_allocObject();
      *(v45 + 16) = v49;
      *(v45 + 32) = v39;
      *(v45 + 40) = v41;
      v55 = sub_10007EBC0(&qword_1006C0C10);
      *&v54 = v45;
      sub_1000072E4(&v54, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v37;
      sub_1001BBDEC(v53, v42, v44, isUniquelyReferenced_nonNull_native);
    }
  }

  if (v50)
  {
    v47 = v50;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v47 openInMapsWithLaunchOptions:isa];

    goto LABEL_16;
  }
}

uint64_t sub_1000FEA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEB8C(uint64_t a1)
{
  v3 = *(sub_10007EBC0(&qword_1006B0050) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000FCFA4(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1000FEC3C(void *a1, char *a2)
{
  v65 = a1;
  v75 = a2;

  sub_10000BED0(&v75);
  v2 = v75;
  v63 = *(v75 + 2);
  if (!v63)
  {

    goto LABEL_60;
  }

  v68 = 0;
  v72 = 0;
  v3 = 0;
  v61 = v75;
  v62 = v75 + 32;
  do
  {
    if (v3 >= *(v2 + 2))
    {
      goto LABEL_63;
    }

    v64 = v3;
    v4 = &v62[16 * v3];
    v5 = *v4;
    v6 = *(v4 + 1);

    v7 = [v65 emailAddresses];
    v8 = sub_10007EBC0(&unk_1006BC970);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v9;
    if (v9 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v9;
      v67 = v8;
      if (!v11)
      {
        goto LABEL_23;
      }

LABEL_8:
      if (v11 < 1)
      {
        goto LABEL_64;
      }

      v12 = 0;
      v69 = v10 & 0xC000000000000001;
      v70 = v11;
      v71 = v10;
      while (1)
      {
        if (v69)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v10 + 8 * v12 + 32);
        }

        v16 = v15;
        v17 = [v15 value];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (v18 == v5 && v20 == v6)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v13 = [v16 identifier];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v14;

LABEL_12:
        ++v12;
        v10 = v71;
        if (v70 == v12)
        {
          goto LABEL_23;
        }
      }
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = v8;
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_23:

    if (v72)
    {

      return v68;
    }

    v23 = 0xE000000000000000;
    v79 = 0;
    v80 = 0xE000000000000000;
    v24 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v24 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v75 = v5;
    v76 = v6;
    v77 = 0;
    v78 = v24;
    v26 = String.Iterator.next()();
    countAndFlagsBits = v26.value._countAndFlagsBits;
    if (v26.value._object)
    {
      v27 = v26.value._countAndFlagsBits;
      object = v26.value._object;
      do
      {
        v73 = v27;
        v74 = object;
        __chkstk_darwin(countAndFlagsBits);
        v60 = &v73;
        if (sub_10008A4B8(sub_1000FF734, v59, 0x3736353433323130, 0xEB00000000303938))
        {
          v30._countAndFlagsBits = v27;
          v30._object = object;
          String.append(_:)(v30);
        }

        v29 = String.Iterator.next()();
        countAndFlagsBits = v29.value._countAndFlagsBits;
        v27 = v29.value._countAndFlagsBits;
        object = v29.value._object;
      }

      while (v29.value._object);
      v23 = v80;
      v72 = v79;
    }

    else
    {
      v72 = 0;
    }

    v31 = [v65 phoneNumbers];
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = v32;
    if (v32 >> 62)
    {
      v57 = v32;
      v34 = _CocoaArrayWrapper.endIndex.getter();
      v33 = v57;
      if (!v34)
      {
        goto LABEL_3;
      }

LABEL_35:
      v35 = 0;
      v70 = v34;
      v71 = v33 & 0xC000000000000001;
      v69 = v33;
      v66 = v33 + 32;
      v67 = v33 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v71)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v35 >= *(v67 + 16))
          {
            goto LABEL_62;
          }

          v36 = *(v66 + 8 * v35);
        }

        v37 = v36;
        if (__OFADD__(v35++, 1))
        {
          break;
        }

        v39 = v23;
        v40 = [v36 value];
        v41 = [v40 stringValue];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = 0xE000000000000000;
        v79 = 0;
        v80 = 0xE000000000000000;
        v46 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v46 = v42 & 0xFFFFFFFFFFFFLL;
        }

        v75 = v42;
        v76 = v44;
        v77 = 0;
        v78 = v46;
        v48 = String.Iterator.next()();
        v47 = v48.value._countAndFlagsBits;
        if (v48.value._object)
        {
          v49 = v48.value._countAndFlagsBits;
          v50 = v48.value._object;
          do
          {
            v73 = v49;
            v74 = v50;
            __chkstk_darwin(v47);
            v60 = &v73;
            if (sub_10008A4B8(sub_1000FF2B0, v59, 0x3736353433323130, 0xEB00000000303938))
            {
              v52._countAndFlagsBits = v49;
              v52._object = v50;
              String.append(_:)(v52);
            }

            v51 = String.Iterator.next()();
            v47 = v51.value._countAndFlagsBits;
            v49 = v51.value._countAndFlagsBits;
            v50 = v51.value._object;
          }

          while (v51.value._object);
          v53 = v79;
          v45 = v80;
        }

        else
        {
          v53 = 0;
        }

        v75 = v72;
        v76 = v39;
        v23 = v39;
        v79 = v53;
        v80 = v45;
        sub_100035F3C();
        v54 = StringProtocol.contains<A>(_:)();

        if (v54)
        {

          v55 = [v37 identifier];
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v56;

          goto LABEL_4;
        }

        if (v35 == v70)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);

      __break(1u);
      return result;
    }

    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_35;
    }

LABEL_3:

    v72 = 0;
LABEL_4:
    v3 = v64 + 1;
    v2 = v61;
  }

  while (v64 + 1 != v63);

  if (v72)
  {
    return v68;
  }

LABEL_60:

  result = 0;
  v72 = 0xE000000000000000;
  return result;
}

uint64_t sub_1000FF2D4()
{
  v1 = *(type metadata accessor for FMFActionStatus() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000FF3F0()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FF498()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000F9F94(v0 + v2, *v3, v3[1]);
}

uint64_t sub_1000FF558(uint64_t a1, unsigned int *a2)
{
  v5 = *(type metadata accessor for FMFFriend() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1000F8D28(a1, *(v2 + 16), v2 + v6, *v7, *(v7 + 8), a2);
}

uint64_t sub_1000FF600()
{
  v1 = type metadata accessor for FMFFriend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000FF754()
{
  v0 = type metadata accessor for DateComponents();
  v71 = *(v0 - 8);
  v72 = v0;
  __chkstk_darwin(v0);
  v73 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Calendar.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v62 - v13;
  Date.init()();
  Date.init(timeIntervalSinceNow:)();
  (*(v3 + 104))(v5, enum case for Calendar.Identifier.gregorian(_:), v2);
  Calendar.init(identifier:)();
  (*(v3 + 8))(v5, v2);
  sub_10007EBC0(&qword_1006B0088);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1005528D0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, enum case for Calendar.Component.hour(_:), v15);
  v21(v20 + v17, enum case for Calendar.Component.minute(_:), v15);
  v21(v20 + 2 * v17, enum case for Calendar.Component.second(_:), v15);
  sub_100174754(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = v14;
  v65 = v12;
  v22 = v73;
  v66 = v8;
  Calendar.dateComponents(_:from:to:)();

  v23 = DateComponents.hour.getter();
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = DateComponents.minute.getter();
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  result = DateComponents.second.getter();
  if ((v30 & 1) == 0 && result >= 1 && (v31 = __OFADD__(v28, 1), ++v28, v31))
  {
    __break(1u);
  }

  else
  {
    if (v28 != 60)
    {
      goto LABEL_13;
    }

    v31 = __OFADD__(v25++, 1);
    if (!v31)
    {
      v28 = 0;
LABEL_13:
      v32 = objc_opt_self();
      v33 = [objc_allocWithZone(NSNumber) initWithInteger:v25];
      v34 = [v32 localizedStringFromNumber:v33 numberStyle:0];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = [objc_allocWithZone(NSNumber) initWithInteger:v28];
      v39 = [v32 localizedStringFromNumber:v38 numberStyle:0];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (v25)
      {
        v43 = [objc_opt_self() mainBundle];
        v74._object = 0x800000010057E4F0;
        v44._countAndFlagsBits = 0xD000000000000011;
        v44._object = 0x800000010057E4D0;
        v74._countAndFlagsBits = 0xD000000000000023;
        v45._countAndFlagsBits = 0;
        v45._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v74);

        sub_10007EBC0(&unk_1006B20B0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_100552210;
        *(v46 + 56) = &type metadata for String;
        v47 = sub_10008EE84();
        *(v46 + 32) = v35;
        *(v46 + 40) = v37;
        *(v46 + 96) = &type metadata for String;
        *(v46 + 104) = v47;
        *(v46 + 64) = v47;
        *(v46 + 72) = v40;
        *(v46 + 80) = v42;
        v28 = String.init(format:_:)();

        v49 = v71;
        v48 = v72;
        v51 = v69;
        v50 = v70;
      }

      else
      {
        v63 = v40;

        v49 = v71;
        v53 = v72;
        v51 = v69;
        v50 = v70;
        if (v28)
        {
          v52 = v68;
          if (v28 == 1)
          {
            v54 = [objc_opt_self() mainBundle];
            v61 = 0x800000010057E570;
            v55 = 0x454D49545F4E494DLL;
            v56 = 0xEF54414D524F465FLL;
            v57 = 0xD000000000000021;
          }

          else
          {
            v54 = [objc_opt_self() mainBundle];
            v61 = 0x800000010057E540;
            v56 = 0x800000010057E520;
            v57 = 0xD000000000000022;
            v55 = 0xD000000000000010;
          }

          v58._countAndFlagsBits = 0;
          v58._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v55, 0, v54, v58, *&v57);

          sub_10007EBC0(&unk_1006B20B0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_100552220;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = sub_10008EE84();
          *(v59 + 32) = v63;
          *(v59 + 40) = v42;
          v28 = String.init(format:_:)();

          v48 = v53;
          goto LABEL_22;
        }

        v48 = v53;
      }

      v52 = v68;
LABEL_22:
      (*(v49 + 8))(v22, v48);
      (*(v51 + 8))(v66, v50);
      v60 = *(v67 + 8);
      v60(v65, v52);
      v60(v64, v52);
      return v28;
    }
  }

  __break(1u);
  return result;
}

double sub_1000FFF68()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  dword_1006D3D30 = 1031127695;
  unk_1006D3D38 = xmmword_1005542F0;
  unk_1006D3D48 = xmmword_100554300;
  qword_1006D3D58 = 0x404D800000000000;
  *&qword_1006D3D60 = *&qword_1006D4798 / 1.5;
  result = 0.0;
  unk_1006D3D68 = xmmword_100554310;
  qword_1006D3D78 = 0x4028000000000000;
  return result;
}

id sub_100100164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMHyperlinkPlatterInfoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1001002C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001002E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100100304(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

unint64_t sub_100100354()
{
  result = qword_1006B3400;
  if (!qword_1006B3400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B3400);
  }

  return result;
}

void sub_1001003A0()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_style;
  if (qword_1006AEAA8 != -1)
  {
    swift_once();
  }

  memmove((v0 + v1), &dword_1006D3D30, 0x50uLL);
  v2 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_containerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_circleImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_iconImageView;
  *(v0 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_label;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_button;
  *(v0 + v6) = [objc_opt_self() buttonWithType:1];
  *(v0 + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_labelTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_labelCenterYConstraint) = 0;
  v7 = (v0 + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_actionHandler);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_collapsed) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10010053C()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_heightConstraint];
  if (v2)
  {
    [v2 setActive:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC6FindMy26FMHyperlinkPlatterInfoView_style + 16];
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  if (_UIContentSizeCategoryCompareToContentSizeCategory() == 1)
  {
    v3 = v3 * 1.2;
  }

  v6 = [v0 heightAnchor];
  v7 = [v6 constraintGreaterThanOrEqualToConstant:v3];

  LODWORD(v8) = 1144750080;
  [v7 setPriority:v8];
  v9 = *&v0[v1];
  *&v0[v1] = v7;
  v10 = v7;

  [v10 setActive:1];
}

void sub_1001006B8(char a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 willChangeValueForKey:v3];

  *(v1 + qword_1006B1E60) = a1;
  v4 = String._bridgeToObjectiveC()();
  [v1 didChangeValueForKey:v4];
}

Swift::Int sub_100100760()
{
  v0 = sub_100175AE8(&off_100621E00);
  sub_100102394(&unk_100621E20);
  return v0;
}

Swift::Int sub_10010079C()
{
  v0 = sub_100175AE8(&off_100621E30);
  sub_100102394(&unk_100621E50);
  return v0;
}

Swift::Int sub_1001007D8()
{
  v0 = sub_100175AE8(&off_100621E60);
  sub_100102394(&unk_100621E80);
  return v0;
}

uint64_t sub_10010084C()
{
  _StringGuts.grow(_:)(43);

  swift_getObjectType();
  v0._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v0);

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100100918()
{
  v1 = type metadata accessor for FMResult();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v15 - v3);
  v5 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  result = [v0 isCancelled];
  if (result)
  {
    v9 = *&v0[qword_1006B1E58];
    if (v9)
    {
      type metadata accessor for CancellationError();
      sub_1001021B0();
      v10 = swift_allocError();
      sub_100062900(v9);
      CancellationError.init()();
      *v4 = v10;
      swift_storeEnumTagMultiPayload();
      v9(v4);
      sub_10001835C(v9);
      return (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    sub_1001006B8(1);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v0;
    v13 = v0;
    v14 = sub_1001012A4(0, 0, v7, &unk_100554560, v12);
    sub_1001022BC(v7);
    *&v13[qword_1006B1D48] = v14;
  }

  return result;
}

uint64_t sub_100100BA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *((swift_isaMask & *a4) + 0xB8);
  v4[3] = v5;
  v6 = type metadata accessor for FMResult();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100100CDC, 0, 0);
}

uint64_t sub_100100CDC()
{
  static Task<>.checkCancellation()();
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0xE0) + **((swift_isaMask & **(v0 + 16)) + 0xE0));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100100F20;
  v2 = *(v0 + 64);

  return v4(v2);
}

uint64_t sub_100100F20()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100101180;
  }

  else
  {
    v2 = sub_100101034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100101034()
{
  v1 = *(v0[2] + qword_1006B1E58);
  v3 = v0[7];
  v2 = v0[8];
  if (v1)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    (*(v3 + 16))(v4, v0[8], v6);
    swift_storeEnumTagMultiPayload();
    sub_100062900(v1);
    v1(v4);
    sub_10001835C(v1);
    (*(v5 + 8))(v4, v7);
  }

  else
  {
    v6 = v0[3];
  }

  (*(v3 + 8))(v2, v6);
  sub_1001006B8(2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100101180()
{
  v1 = *(v0[2] + qword_1006B1E58);
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    *v2 = v0[10];
    swift_storeEnumTagMultiPayload();
    sub_100062900(v1);
    swift_errorRetain();
    v1(v2);
    sub_10001835C(v1);

    (*(v3 + 8))(v2, v4);
  }

  else
  {
  }

  sub_1001006B8(2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001012A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100102324(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1001022BC(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1001014F0(void *a1)
{
  v1 = a1;
  sub_100100918();
}

id sub_100101538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAsyncOperation();
  result = objc_msgSendSuper2(&v2, "cancel");
  if (*&v0[qword_1006B1D48])
  {

    sub_10007EBC0(&unk_1006AF7B0);
    Task.cancel()();
  }

  return result;
}

void sub_1001015F0(void *a1)
{
  v1 = a1;
  sub_100101538();
}

id sub_100101638()
{
  *&v0[qword_1006B1D48] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAsyncOperation();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100101734()
{
  v1 = type metadata accessor for FMResult();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - v3);
  result = [v0 isCancelled];
  if (result)
  {
    v6 = *(v0 + qword_1006B1E58);
    if (v6)
    {
      type metadata accessor for CancellationError();
      sub_1001021B0();
      v7 = swift_allocError();
      sub_100062900(v6);
      CancellationError.init()();
      *v4 = v7;
      swift_storeEnumTagMultiPayload();
      v6(v4);
      sub_10001835C(v6);
      return (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    sub_1001006B8(1);
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v9 = *((swift_isaMask & *v0) + 0xC0);
    v10 = v0;
    v9(sub_1001021A8, v8);
  }

  return result;
}

void sub_100101954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_1006B1E58);
  if (v2)
  {
    sub_100062900(*(a2 + qword_1006B1E58));
    v2(a1);
    sub_10001835C(v2);
  }

  sub_1001006B8(2);
}

void sub_1001019CC(void *a1)
{
  v1 = a1;
  sub_100101734();
}

id sub_100101A14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLegacyAsyncOperation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100101AAC(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0xB8));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int FMSoundPlatterViewLayout.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100101BC0()
{
  Hasher.init(_seed:)();
  FMSoundPlatterViewLayout.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100101C20(void *a1)
{
  v1 = a1;
  v2 = sub_100101C54();

  return v2 & 1;
}

id sub_100101C54()
{
  if (v0[qword_1006B1E60])
  {
    return 0;
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCommonAsyncOperation();
  return objc_msgSendSuper2(&v2, "isReady");
}

Class sub_100101DA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_100101E00()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[qword_1006B1E50];
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *v6 = v7;
  v6[1] = v9;
  v10 = &v1[qword_1006B1E58];
  *v10 = 0;
  v10[1] = 0;
  v1[qword_1006B1E60] = 0;
  v11 = type metadata accessor for FMCommonAsyncOperation();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100101F7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCommonAsyncOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100101FD8(uint64_t a1)
{

  v2 = *(a1 + qword_1006B1E58);

  return sub_10001835C(v2);
}

uint64_t getEnumTagSinglePayload for FMCardContainerLockingPercent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMCardContainerLockingPercent(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001021B0()
{
  result = qword_1006C18E0;
  if (!qword_1006C18E0)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C18E0);
  }

  return result;
}

uint64_t sub_100102208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E3478;

  return sub_100100BA0(a1, v4, v5, v6);
}

uint64_t sub_1001022BC(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006BEF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100102324(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BEF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001023E8()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "FMRenameItemDataSource: loading roles", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_rolePicker;
  [*(v1 + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_rolePicker) setDataSource:v1];
  [*(v1 + v6) setDelegate:v1];
  v7 = *(v1 + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconManager);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_1001038B8;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100103108;
  v11[3] = &unk_100627440;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 roleCategoriesWithCompletion:v9];
  _Block_release(v9);
}

uint64_t sub_1001025C4(unint64_t a1, uint64_t a2)
{
  v80 = a2;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FMIPItemRole();
  v5 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for FMIPItem();
  v7 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100005B14(v9, qword_1006D4630);

  v63 = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v7;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    sub_10000905C(0, &qword_1006B2098);
    v16 = Array.debugDescription.getter();
    v18 = sub_100005B4C(v16, v17, aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMRenameItemDataSource: received roles %s", v14, 0xCu);
    sub_100006060(v15);

    v7 = v13;
  }

  if (!(a1 >> 62))
  {
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_39:
    v23 = 0;
    v21 = 0;
    goto LABEL_40;
  }

  v68 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_6:
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v67 = a1 & 0xC000000000000001;
  v66 = (a1 + 32);
  v74 = (v7 + 16);
  v73 = (v7 + 8);
  v72 = (v5 + 8);
  *&v19 = 134218498;
  v60 = v19;
  v65 = a1;
  v64 = v20;
  do
  {
    v62 = v23;
    v61 = v21;
    while (1)
    {
      if (v67)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v68 + 16))
        {
          goto LABEL_36;
        }

        v24 = *&v66[8 * v22];
      }

      a1 = v24;
      v7 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v25 = [v24 roles];
      sub_10000905C(0, &unk_1006B20A0);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = v22;
      v71 = v22 + 1;
      v70 = a1;
      v5 = v26 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      swift_beginAccess();
      if (v5)
      {
        break;
      }

LABEL_10:

      v22 = v71;
      a1 = v65;
      if (v71 == v64)
      {
        v23 = v62;
        v21 = v61;
        goto LABEL_40;
      }
    }

    v21 = 0;
    v79 = (v26 & 0xC000000000000001);
    while (1)
    {
      if (v79)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v27 = *(v26 + 8 * v21 + 32);
      }

      v7 = v27;
      a1 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v28 = [v27 roleId];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        v31 = v75;
        v32 = v76;
        (*v74)(v75, Strong + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_item, v76);

        v33 = v77;
        FMIPItem.role.getter();
        (*v73)(v31, v32);
        v34 = FMIPItemRole.identifier.getter();
        (*v72)(v33, v78);
        if (v28 == v34)
        {
          break;
        }
      }

      ++v21;
      if (a1 == v5)
      {
        goto LABEL_10;
      }
    }

    v35 = v7;
    v36 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v36, v5);
    a1 = v65;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v38 = v60;
      v23 = v69;
      *(v38 + 4) = v69;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v21;
      *(v38 + 22) = 2080;
      v39 = [v35 debugDescription];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_100005B4C(v40, v42, aBlock);

      *(v38 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v36, v5, "FMRenameItemDataSource: selected categoryIndex: %ld, index: %ld, role %s", v38, 0x20u);
      v7 = v79;
      sub_100006060(v79);
    }

    else
    {

      v23 = v69;
    }

    v22 = v71;
  }

  while (v71 != v64);
LABEL_40:
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    *(v44 + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles) = a1;
    v45 = v44;
  }

  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    *&v46[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_initialIndex] = v21;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v47 = static OS_dispatch_queue.main.getter();
  v48 = swift_allocObject();
  v48[2] = v80;
  v48[3] = v21;
  v48[4] = v23;
  aBlock[4] = sub_1001038C0;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100627490;
  v49 = _Block_copy(aBlock);

  v50 = v54;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v51 = v56;
  v52 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);

  (*(v58 + 8))(v51, v52);
  return (*(v55 + 8))(v50, v57);
}

void sub_100103020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_rolePicker);

    [v7 reloadAllComponents];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_rolePicker);

    [v10 selectRow:a2 inComponent:a3 animated:0];
  }
}

uint64_t sub_100103108(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000905C(0, &qword_1006B2098);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_1001033E4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a1;
  aBlock[4] = sub_1001047FC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100627558;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v18);
}

id sub_1001036B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMRenameItemDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMRenameItemDataSource()
{
  result = qword_1006B2088;
  if (!qword_1006B2088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001037F0()
{
  result = type metadata accessor for FMIPItem();
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

unint64_t sub_1001038CC(uint64_t a1, char *a2, uint64_t a3, void *a4, char *a5, void *a6)
{
  v70 = a1;
  v71 = a3;
  v68 = a2;
  v9 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  v18 = swift_allocObject();
  v18[2] = a6;
  v19 = a6;
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10010478C(v11);
    sub_1000C7FD0(0, v19);
  }

  (*(v13 + 32))(v17, v11, v12);
  v20 = [*&a5[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_rolePicker] selectedRowInComponent:0];
  v21 = OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles;
  v22 = *&a5[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles];
  v65 = v18;
  if ((v22 & 0xC000000000000001) != 0)
  {

    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v23 = *(v22 + 32);
  }

  v18 = [v23 roles];

  v64 = sub_10000905C(0, &unk_1006B20A0);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = a5;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = a4;
    goto LABEL_10;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if (v20 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = a4;
  v24 = *(v22 + 8 * v20 + 32);
LABEL_10:

  v25 = v24;
  v26 = [v24 roleEmoji];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v67 = v17;
  if (v27 == v71 && v29 == v18)
  {
    v21 = v69;
LABEL_26:
    v30 = v25;
    goto LABEL_27;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    a5 = v68;
    v21 = v69;
    v30 = v25;
    goto LABEL_28;
  }

  v31 = *&v66[v21];
  if ((v31 & 0xC000000000000001) != 0)
  {

    v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v32 = *(v31 + 32);
  }

  v33 = [v32 roles];

  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v25;
  if (v34 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v69;
    if (!v35)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v69;
    if (!v35)
    {
LABEL_27:

      a5 = v68;
LABEL_28:
      v68 = v30;
      v22 = [v30 roleId];
      v17 = [objc_allocWithZone(SPBeaconUpdates) init];
      [v17 setRoleId:v22];
      v39 = String._bridgeToObjectiveC()();
      [v17 setName:v39];

      v40 = String._bridgeToObjectiveC()();
      [v17 setEmoji:v40];

      if (qword_1006AEBE0 == -1)
      {
LABEL_29:
        v41 = type metadata accessor for Logger();
        sub_100005B14(v41, qword_1006D4630);
        (*(v13 + 16))(v21, v67, v12);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        v44 = os_log_type_enabled(v42, v43);
        v69 = v12;
        if (v44)
        {
          v45 = swift_slowAlloc();
          v63 = v18;
          v46 = v45;
          v47 = swift_slowAlloc();
          v62 = v22;
          aBlock[0] = v47;
          *v46 = 136315906;
          v48 = UUID.uuidString.getter();
          v49 = v21;
          v51 = v50;
          v64 = v17;
          v52 = a5;
          v53 = *(v13 + 8);
          v53(v49, v69);
          v54 = sub_100005B4C(v48, v51, aBlock);

          *(v46 + 4) = v54;
          *(v46 + 12) = 2080;
          v55 = v52;
          v17 = v64;
          *(v46 + 14) = sub_100005B4C(v70, v55, aBlock);
          *(v46 + 22) = 2080;
          *(v46 + 24) = sub_100005B4C(v71, v63, aBlock);
          *(v46 + 32) = 2048;
          *(v46 + 34) = v62;
          _os_log_impl(&_mh_execute_header, v42, v43, "FMRenameItemDataSource: saving uuid: %s, name: %s, emoji: %s, role: %ld", v46, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          v53 = *(v13 + 8);
          v53(v21, v69);
        }

        v56 = v65;
        v57 = *&v66[OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconManager];
        v58 = v67;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v60 = swift_allocObject();
        *(v60 + 16) = sub_100104784;
        *(v60 + 24) = v56;
        aBlock[4] = sub_1001047F4;
        aBlock[5] = v60;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10037A044;
        aBlock[3] = &unk_100627508;
        v61 = _Block_copy(aBlock);

        [v57 updateBeacon:isa updates:v17 completion:v61];
        _Block_release(v61);

        v53(v58, v69);
      }

LABEL_39:
      swift_once();
      goto LABEL_29;
    }
  }

  v36 = __OFSUB__(v35, 1);
  result = v35 - 1;
  if (v36)
  {
    goto LABEL_44;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v34 + 8 * result + 32);
LABEL_25:
    v25 = v38;

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void sub_10010412C(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = *(v4 + 8 * a2 + 32);
  }

  v6 = [v5 roles];

  sub_10000905C(0, &unk_1006B20A0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v8 = *(v7 + 8 * a1 + 32);
LABEL_9:
    v9 = v8;

    v10 = [v9 role];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_100104290(unint64_t a1, unint64_t a2)
{
  v5 = [objc_allocWithZone(CNContactStore) init];
  if (qword_1006AED58 != -1)
  {
    swift_once();
  }

  sub_10007EBC0(&qword_1006AF180);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v41 = 0;
  v7 = [v5 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v41];

  v8 = v41;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v9 = 0;
  }

  v11 = *(v2 + OBJC_IVAR____TtC6FindMy22FMRenameItemDataSource_beaconRoles);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = *(v11 + 8 * a2 + 32);
  }

  v13 = [v12 roles];

  sub_10000905C(0, &unk_1006B20A0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v14 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v15 = *(v14 + 8 * a1 + 32);
        goto LABEL_14;
      }

LABEL_30:
      __break(1u);
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_27:
  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v16 = v15;

  v40 = v7;
  if (v9)
  {
    v17 = [v9 givenName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v19;
  }

  else
  {
    v18 = 0;
  }

  v20 = [v16 role];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = v9;
  if (!v9)
  {
    v36 = [objc_allocWithZone(ACAccountStore) init];
    v37 = [v36 aa_primaryAppleAccount];

    if (!v37)
    {
      goto LABEL_19;
    }

    v38 = [v37 aa_firstName];

    if (!v38)
    {
      goto LABEL_19;
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v39;
  }

  v25 = [objc_opt_self() mainBundle];
  v42._object = 0x8000000100579A00;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  v26._object = 0x800000010057E850;
  v27.value._object = 0x80000001005799E0;
  v42._countAndFlagsBits = 0xD000000000000018;
  v27.value._countAndFlagsBits = 0xD000000000000013;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v42);

  sub_10007EBC0(&unk_1006B20B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100552210;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_10008EE84();
  *(v29 + 64) = v30;
  *(v29 + 32) = v18;
  *(v29 + 40) = v24;
  v31 = [v16 role];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  *(v29 + 72) = v32;
  *(v29 + 80) = v34;
  v21 = String.init(format:_:)();
  v23 = v35;

LABEL_19:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000C9308(v16, v21, v23);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10010478C(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B20C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100104944(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = _swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

void sub_100104C2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) == 1)
  {
    v11 = *(v1 + 16);
    v12 = *(v11 + 24);
    v44 = v8;
    v45 = v7;
    type metadata accessor for FMDevicesSubscription();
    v13 = swift_allocObject();
    v43 = v3;
    v14 = v13;
    *(v13 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v14 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_1006275F8;
    swift_unknownObjectWeakAssign();
    v15 = *(v12 + 16);

    os_unfair_lock_lock((v15 + 24));
    sub_10000E7C0((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));

    *(v1 + 48) = v14;

    v16 = *(v11 + 32);

    v17 = sub_1003CD4DC(v1, v16);

    *(v1 + 56) = v17;

    v18 = *(v11 + 40);
    v19 = sub_1003CBD84(v1, v18);

    *(v1 + 64) = v19;

    v20 = *(v11 + 56);

    v21 = sub_1003CD3BC(v1, v20);

    *(v1 + 72) = v21;

    sub_10000905C(0, &qword_1006AEDC0);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100109954;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006277D8;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v43 + 8))(v5, v2);
    (*(v44 + 8))(v10, v45);
    return;
  }

  if (*(v1 + 48))
  {
    v25 = *(*(*(v1 + 16) + 24) + 16);

    os_unfair_lock_lock((v25 + 24));
    sub_10008FB6C((v25 + 16));
    os_unfair_lock_unlock((v25 + 24));
  }

  v26 = *(v1 + 56);
  if (v26)
  {
    v27 = *(*(v1 + 16) + 32);
    swift_beginAccess();

    v28 = sub_1003CE8B8(v27 + 2, v26);
    v29 = v27[2];
    if (v29 >> 62)
    {
      v40 = v28;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v40;
      if (v30 >= v40)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 >= v28)
      {
LABEL_8:
        sub_1003CE8EC(v28, v30);
        swift_endAccess();

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  v31 = *(v1 + 64);
  if (!v31)
  {
    goto LABEL_13;
  }

  v32 = *(*(v1 + 16) + 40);
  v33 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();

  v27 = v32;
  v28 = sub_1003CEA10(&v32[v33], v31);
  v34 = *&v32[v33];
  if (v34 >> 62)
  {
LABEL_20:
    v41 = v28;
    v35 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v41;
    if (v35 >= v41)
    {
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35 < v28)
  {
    goto LABEL_21;
  }

LABEL_12:
  sub_1003CEA44(v28, v35);
  swift_endAccess();

LABEL_13:
  v36 = *(v1 + 72);
  if (!v36)
  {
    return;
  }

  v37 = *(*(v1 + 16) + 56);
  swift_beginAccess();

  v28 = sub_1003CD53C((v37 + 16), v36);
  v38 = *(v37 + 16);
  if (v38 >> 62)
  {
LABEL_22:
    v42 = v28;
    v39 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v42;
    if (v39 >= v42)
    {
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39 < v28)
  {
    goto LABEL_23;
  }

LABEL_16:
  sub_1003CD570(v28, v39);
  swift_endAccess();
}

uint64_t sub_1001052C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v1 = FMIPManager.items.getter();

    sub_100106290(v1);
  }

  return result;
}

uint64_t sub_100105358(uint64_t a1)
{
  v3 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_100109CF4(a1, v1 + v6, type metadata accessor for FMItemDetailViewModel);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100027970(v1 + v6, v5, type metadata accessor for FMItemDetailViewModel);
    if (*(v1 + 96))
    {
      sub_10038AC90(v5);
      sub_10039C650(v5);
      sub_100392B50(v5);
      sub_1003987F8();
      *(v8 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
      v9 = v8 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v1, v5, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    sub_100029EC0(a1, type metadata accessor for FMItemDetailViewModel);
  }

  else
  {
    v5 = a1;
  }

  return sub_100029EC0(v5, type metadata accessor for FMItemDetailViewModel);
}

uint64_t sub_100105520(uint64_t a1)
{
  v57 = a1;
  v2 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v55 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v4 - 8);
  v54 = &v45 - v5;
  v6 = type metadata accessor for FMIPItem();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = __chkstk_darwin(v6);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v45 - v9;
  v49 = type metadata accessor for FMSelectedSection();
  v10 = __chkstk_darwin(v49);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v45 - v12;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FMItemAger();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  swift_allocObject();
  *(v1 + 80) = sub_10002BE70();
  v45 = sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInitiated.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_100009F58(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  v18 = v1;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v46 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v47);
  *(v1 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 96) = 0;
  v19 = *(v57 + 56);
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v21 = v19 + v20;
  v22 = v56;
  sub_100027970(v21, v56, type metadata accessor for FMSelectedSection);
  v23 = v48;
  sub_100027970(v22, v48, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v24 = v50;
    v25 = v51;
    v26 = v52;
    (*(v51 + 32))(v50, v23, v52);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMItemDetailDataSource: initialized", v30, 2u);
    }

    sub_10007EBC0(&unk_1006C2450);
    v31 = swift_allocObject();
    *(v31 + ((*(*v31 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v32 = *(v25 + 16);
    v32(v31 + *(*v31 + class metadata base offset for ManagedBuffer + 16), v24, v26);
    *(v18 + 40) = v31;
    v33 = v57;
    *(v18 + 16) = v57;
    v34 = *(*(v33 + 24) + 64);
    __chkstk_darwin(v33);

    v35 = sub_100104944(sub_1001098B0, (&v45 - 4), v34, &type metadata accessor for FMIPBeaconShare, sub_10016717C);

    __chkstk_darwin(v36);
    v43 = v24;
    v37 = v54;
    sub_100110880(sub_1001098D0, v35, v54);

    v38 = type metadata accessor for FMIPBeaconShare();
    LODWORD(v35) = (*(*(v38 - 8) + 48))(v37, 1, v38) != 1;
    sub_100012DF0(v37, &unk_1006C0240);
    v39 = v53;
    v32(v53, v24, v26);
    v40 = v55;
    sub_1000F1704(v57, v39, 0, 0, 0, 0, 0, v35, v55);
    sub_100029EC0(v56, type metadata accessor for FMSelectedSection);
    sub_1001098F0(v40, v18 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
    *(*(v18 + 80) + 24) = &off_1006275D8;
    swift_unknownObjectWeakAssign();
    (*(v25 + 8))(v24, v26);
    return v18;
  }

  else
  {
    sub_100029EC0(v23, type metadata accessor for FMSelectedSection);
    v58 = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(84);
    v42._countAndFlagsBits = 0xD000000000000052;
    v42._object = 0x800000010057E960;
    String.append(_:)(v42);
    _print_unlocked<A, B>(_:_:)();
    v44 = 0;
    v43 = 93;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);

    sub_10005CD20(v18 + 24);

    type metadata accessor for FMItemDetailDataSource();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  return result;
}

uint64_t sub_100105EE8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FMIPBeaconShare.isSharedLostItem.getter())
  {
    FMIPBeaconShare.beaconIdentifier.getter();
    v4 = UUID.uuidString.getter();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    if (v4 == FMIPItem.identifier.getter() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100106038()
{

  v0 = FMIPManager.items.getter();

  sub_100106290(v0);
}

uint64_t sub_1001060A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 40);
  v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  (*(v7 + 16))(v9, v10 + v11, v6);
  os_unfair_lock_unlock((v10 + v12));

  v13 = FMIPItem.identifier.getter();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v13 == a1 && v15 == a2)
  {

    goto LABEL_8;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_8:

    v19 = FMIPManager.items.getter();

    sub_100106290(v19);
  }

  return result;
}

uint64_t sub_100106290(uint64_t a1)
{
  v77 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v77);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v78 = &v66 - v4;
  v76 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItem();
  v81 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v84 = &v66 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v66 - v13;
  v15 = __chkstk_darwin(v12);
  v68 = &v66 - v16;
  v69 = v17;
  __chkstk_darwin(v15);
  v80 = &v66 - v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v85 = *(v81 + 16);
    v20 = *(v81 + 80);
    v66 = ~v20;
    v67 = v20;
    v21 = a1 + ((v20 + 32) & ~v20);
    v22 = (v81 + 8);
    v86 = v81 + 16;
    v82 = *(v81 + 72);
    v83 = v14;
    v23 = v85;
    while (1)
    {
      v88 = v19;
      v23(v14, v21, v7);
      v89 = FMIPItem.identifier.getter();
      v24 = v22;
      v25 = v7;
      v27 = v26;
      v28 = *(v87 + 40);
      v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
      v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v28 + v30));
      v31 = v84;
      v23(v84, v28 + v29, v25);
      os_unfair_lock_unlock((v28 + v30));

      v32 = FMIPItem.identifier.getter();
      v34 = v33;
      v7 = v25;
      v35 = v25;
      v22 = v24;
      v36 = *v24;
      v36(v31, v35);
      if (v89 == v32 && v27 == v34)
      {
        break;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_9;
      }

      v14 = v83;
      v36(v83, v7);
      v21 += v82;
      v19 = v88 - 1;
      if (v88 == 1)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v43 = *(v81 + 32);
    v44 = v68;
    v45 = v7;
    v43(v68, v83, v7);
    v46 = v80;
    v43(v80, v44, v7);
    v47 = v87;
    v48 = sub_100107CC8();
    v82 = v49;
    v83 = v48;
    v89 = v36;
    v81 = v50;
    v79 = v51;
    v52 = *(*(*(v47 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v84 = *(v47 + 88);
    v53 = v70;
    v85(v70, v46, v45);
    v88 = v22;
    v54 = (v67 + 24) & v66;
    v55 = (v69 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v47;
    v43((v56 + v54), v53, v45);
    *(v56 + v55) = v52;
    v57 = (v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
    v58 = v82;
    *v57 = v83;
    v57[1] = v58;
    v59 = v79;
    v57[2] = v81;
    v57[3] = v59;
    aBlock[4] = sub_10010995C;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100627828;
    v60 = _Block_copy(aBlock);
    v61 = v52;

    v62 = v71;
    static DispatchQoS.unspecified.getter();
    v90 = _swiftEmptyArrayStorage;
    sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    v63 = v73;
    v64 = v76;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);
    (*(v75 + 8))(v63, v64);
    (*(v72 + 8))(v62, v74);

    v65 = v80;
    static FMIPAnalytics.sendItemEvent(item:)();

    return v89(v65, v45);
  }

  else
  {
LABEL_7:
    v38 = *(*(v87 + 16) + 56);
    v39 = v78;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v41 = v79;
    sub_100027970(v38 + v40, v79, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100109CF4(v39, v38 + v40, type metadata accessor for FMSelectedSection);
    swift_endAccess();
    sub_100058594(v41);

    sub_100029EC0(v41, type metadata accessor for FMSelectedSection);
    return sub_100029EC0(v39, type metadata accessor for FMSelectedSection);
  }
}

uint64_t sub_100106B00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v27 = a3;
  v28 = a4;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a2, v10);
  v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a1;
  (*(v11 + 32))(&v20[v18], v13, v10);
  v22 = v27;
  v21 = v28;
  *&v20[v19] = v27;
  v23 = &v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v21;
  *(v23 + 1) = a5;
  v24 = v30;
  *(v23 + 2) = v29;
  *(v23 + 3) = v24;

  v25 = v22;
  sub_100170C90(0, 0, v16, &unk_100554720, v20);
}

uint64_t sub_100106D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v18;
  v8[15] = v19;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = type metadata accessor for FMIPItem();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v12 = type metadata accessor for FMItemDetailViewModel();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v8[28] = *(v13 + 64);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v8[31] = v14;
  v8[32] = *(v14 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = sub_10007EBC0(&qword_1006B22E8);
  v8[35] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B20C0);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v15 = type metadata accessor for FMIPBeaconShare();
  v8[39] = v15;
  v8[40] = *(v15 - 8);
  v8[41] = swift_task_alloc();

  return _swift_task_switch(sub_10010707C, 0, 0);
}

void sub_10010707C()
{
  v1 = v0[10];
  v53 = *(v0[9] + 16);
  v2 = *(*(v53 + 24) + 64);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  v4 = sub_100104944(sub_100109D8C, v3, v2, &type metadata accessor for FMIPBeaconShare, sub_10016717C);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v0[40];
    v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = v0[32];
    v75 = (v9 + 56);
    v79 = (v9 + 48);
    v81 = (v7 + 8);
    v73 = v0[34];
    v55 = (v9 + 32);
    v61 = (v9 + 8);
    v77 = v4;
    v69 = v8;
    v71 = *(v4 + 16);
    v62 = v7;
    do
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      (*(v7 + 16))(v0[41], v8 + *(v7 + 72) * v6, v0[39]);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        v11 = v0[37];
        v10 = v0[38];
        v12 = v0[35];
        v13 = v0[31];
        FMIPBeaconShare.beaconIdentifier.getter();
        (*v75)(v10, 0, 1, v13);
        FMIPItem.identifier.getter();
        UUID.init(uuidString:)();

        v14 = *(v73 + 48);
        sub_100109C84(v10, v12);
        sub_100109C84(v11, v12 + v14);
        v15 = *v79;
        if ((*v79)(v12, 1, v13) == 1)
        {
          v16 = v0[41];
          v18 = v0[38];
          v17 = v0[39];
          v66 = v0[31];
          sub_100012DF0(v0[37], &unk_1006B20C0);
          sub_100012DF0(v18, &unk_1006B20C0);
          (*v81)(v16, v17);
          v7 = v62;
          if (v15(v12 + v14, 1, v66) == 1)
          {
            sub_100012DF0(v0[35], &unk_1006B20C0);
            v70 = 1;
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        v19 = v0[31];
        sub_100109C84(v0[35], v0[36]);
        v20 = v15(v12 + v14, 1, v19);
        v21 = v0[38];
        v64 = v0[39];
        v67 = v0[41];
        v22 = v0[36];
        v23 = v0[37];
        if (v20 == 1)
        {
          v24 = v0[31];
          sub_100012DF0(v0[37], &unk_1006B20C0);
          sub_100012DF0(v21, &unk_1006B20C0);
          (*v81)(v67, v64);
          (*v61)(v22, v24);
LABEL_12:
          sub_100012DF0(v0[35], &qword_1006B22E8);
          v4 = v77;
          v8 = v69;
          v5 = v71;
          goto LABEL_4;
        }

        v59 = v0[35];
        v25 = v0[33];
        v26 = v0[31];
        (*v55)(v25, v12 + v14, v26);
        sub_100009F58(&qword_1006B22F0, &type metadata accessor for UUID);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *v61;
        (*v61)(v25, v26);
        sub_100012DF0(v23, &unk_1006B20C0);
        sub_100012DF0(v21, &unk_1006B20C0);
        (*v81)(v67, v64);
        v27(v22, v26);
        sub_100012DF0(v59, &unk_1006B20C0);
        v4 = v77;
        v8 = v69;
        v5 = v71;
        if (v57)
        {
          v70 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        (*v81)(v0[41], v0[39]);
      }

LABEL_4:
      ++v6;
    }

    while (v5 != v6);
  }

  v70 = 0;
LABEL_16:

  v28 = v0[30];
  v29 = v0[25];
  v74 = v0[26];
  v80 = v0[22];
  v82 = v0[24];
  v30 = v0[14];
  v72 = v0[15];
  v31 = v0[12];
  v32 = v0[13];
  v33 = v0[11];
  v34 = v0[9];
  v76 = *(v0[23] + 16);
  v78 = v0[10];
  v76(v29);

  v35 = v33;
  sub_1000F1704(v53, v29, v33, v31, v32, v30, v72, v70, v28);
  sub_10007EBC0(&unk_1006B40B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100552220;
  *(v36 + 56) = v74;
  *(v36 + 64) = &off_100626BA0;
  v37 = sub_100008FC0((v36 + 32));
  sub_100027970(v28, v37, type metadata accessor for FMItemDetailViewModel);
  sub_100036B80(v36);

  (v76)(v82, v78, v80);
  v38 = *(v34 + 40);
  *(swift_task_alloc() + 16) = v82;
  v39 = *(*v38 + class metadata base offset for ManagedBuffer + 16);
  v40 = (*(*v38 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v38 + v40));
  sub_100109D70(v38 + v39);
  v42 = v0[29];
  v41 = v0[30];
  v56 = v41;
  v52 = v0[27];
  v43 = v0[24];
  v44 = v0[22];
  v45 = v0[23];
  v54 = v0[21];
  v68 = v0[19];
  v63 = v0[17];
  v65 = v0[20];
  v58 = v0[18];
  v60 = v0[16];
  v46 = v0[9];
  os_unfair_lock_unlock((v38 + v40));

  (*(v45 + 8))(v43, v44);
  sub_10000905C(0, &qword_1006AEDC0);
  v47 = static OS_dispatch_queue.main.getter();
  sub_100027970(v41, v42, type metadata accessor for FMItemDetailViewModel);
  v48 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  sub_1001098F0(v42, v49 + v48);
  v0[6] = sub_100109C20;
  v0[7] = v49;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004AE4;
  v0[5] = &unk_1006278A0;
  v50 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v63 + 8))(v58, v60);
  (*(v65 + 8))(v54, v68);
  sub_100029EC0(v56, type metadata accessor for FMItemDetailViewModel);

  v51 = v0[1];

  v51();
}

uint64_t sub_100107A6C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027970(a2, v5, type metadata accessor for FMItemDetailViewModel);
  return sub_100105358(v5);
}

uint64_t sub_100107B08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10007EBC0(&unk_1006AF7A0);
    v2 = type metadata accessor for FMIPItem();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100552220;
    v6 = *(v1 + 40);
    v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v6 + v8));
    (*(v3 + 16))(v5 + v4, v6 + v7, v2);
    os_unfair_lock_unlock((v6 + v8));

    sub_100106290(v5);

    swift_setDeallocating();
    (*(v3 + 8))(v5 + v4, v2);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_100107CC8()
{
  v1 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *(*(*(v0 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  FMIPItem.location.getter();
  v6 = type metadata accessor for FMIPLocation();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {

    sub_100012DF0(v3, &unk_1006C0220);
    return 0;
  }

  v9 = FMIPLocation.location.getter();
  (*(v7 + 8))(v3, v6);

  v10 = FMIPItem.identifier.getter();
  v12 = sub_1002339F4(v5, v9, v10, v11);

  return v12;
}

uint64_t sub_100107E98()
{

  sub_10005CD20(v0 + 24);

  sub_100029EC0(v0 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel, type metadata accessor for FMItemDetailViewModel);
  return v0;
}

uint64_t sub_100107F1C()
{
  sub_100107E98();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMItemDetailDataSource()
{
  result = qword_1006B20F8;
  if (!qword_1006B20F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100107FC8()
{
  result = type metadata accessor for FMItemDetailViewModel();
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

void sub_1001080CC(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  v40 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v36 - v5;
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  sub_100027970(a1, v11, type metadata accessor for FMSelectedSection);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v37 = v2;
    v19 = v18;
    *v17 = 136315138;
    v42 = 0;
    v43 = 0xE000000000000000;
    v44 = v18;
    _print_unlocked<A, B>(_:_:)();
    v20 = a1;
    v21 = v42;
    v22 = v43;
    sub_100029EC0(v11, type metadata accessor for FMSelectedSection);
    v23 = sub_100005B4C(v21, v22, &v44);

    *(v17 + 4) = v23;
    a1 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMItemDetailDataSource: didUpdate selectedSection %s", v17, 0xCu);
    sub_100006060(v19);
    v2 = v37;
  }

  else
  {

    sub_100029EC0(v11, type metadata accessor for FMSelectedSection);
  }

  sub_100027970(a1, v9, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v25 = v39;
    v24 = v40;
    (*(v40 + 32))(v39, v9, v2);
    v26 = v38;
    v27 = (*(v24 + 16))(v38, v25, v2);
    v28 = *(v41 + 40);
    __chkstk_darwin(v27);
    *(&v36 - 2) = v26;
    v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
    v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v28 + v30));
    sub_100109898(v28 + v29);
    os_unfair_lock_unlock((v28 + v30));

    v31 = *(v24 + 8);
    v31(v26, v2);

    v32 = FMIPManager.items.getter();

    sub_100106290(v32);

    v31(v25, v2);
  }

  else
  {
    sub_100029EC0(v9, type metadata accessor for FMSelectedSection);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "FMItemDetailDataSource: not updating selection...", v35, 2u);
    }
  }
}

uint64_t sub_1001085E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMItemDetailDataSource: didUpdate %ld items", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = sub_100108D50;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006276E8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v19 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v18);
}

uint64_t sub_1001089B4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailDataSource: didUpdate beacon shares", v11, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100108D34;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100627698;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v15);
}

uint64_t sub_100108D78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v11 + 4) = v13;
    v12->super.isa = v13.super.isa;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailDataSource: didUpdate location %@", v11, 0xCu);
    sub_100012DF0(v12, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100109D88;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006277B0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_100109178(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_100109470;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100627738;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_10010947C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v9 + 4) = v11;
    v10->super.isa = v11.super.isa;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailDataSource: itemsDidAge %@", v9, 0xCu);
    sub_100012DF0(v10, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100109890;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100627788;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009F58(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v16);
}

uint64_t sub_1001098F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMItemDetailViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010995C()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  return sub_100106B00(v4, v0 + v2, v5, v7, v8, v9, v10);
}

uint64_t sub_100109A00(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000E3478;

  return sub_100106D30(a1, v14, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_100109B60(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_100109C20()
{
  v1 = *(type metadata accessor for FMItemDetailViewModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100107A6C(v2, v3);
}

uint64_t sub_100109C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B20C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100109CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

__n128 sub_100109DC0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100109DEC()
{
  _StringGuts.grow(_:)(65);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._object = 0x8000000100554780;
  v2._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x69746E656469203ALL;
  v3._object = 0xEE00203A72656966;
  String.append(_:)(v3);
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x3A656C646E616820;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 32));
  v5._countAndFlagsBits = 0x746361746E6F6320;
  v5._object = 0xEE00203A44495555;
  String.append(_:)(v5);
  if (*(v0 + 24))
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 9071406774580000;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x203A6873616820;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  String.append(_:)(*(v0 + 56));
  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 0;
}

Swift::Int sub_100109FB0(char a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 0x4050800000000000;
  }

  else
  {
    v2 = 0x4046000000000000;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10010A008(char a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 0x4050800000000000;
  }

  else
  {
    v2 = 0x4040800000000000;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10010A064(_BYTE *a1, _BYTE *a2)
{
  v2 = 44.0;
  if (*a1)
  {
    v3 = 66.0;
  }

  else
  {
    v3 = 44.0;
  }

  if (*a2)
  {
    v2 = 66.0;
  }

  return v3 == v2;
}

void sub_10010A0A4()
{
  if (*v0)
  {
    v1 = 0x4050800000000000;
  }

  else
  {
    v1 = 0x4046000000000000;
  }

  Hasher._combine(_:)(v1);
}

double *sub_10010A0EC@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 66.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 44.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_10010A120(double *a1@<X8>)
{
  v2 = 44.0;
  if (*v1)
  {
    v2 = 66.0;
  }

  *a1 = v2;
}

uint64_t sub_10010A148()
{
  v7 = *(v0 + 88);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x2D7261746176612DLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + 56));
  v3._countAndFlagsBits = 45;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 1735290926;
  v5._object = 0xE400000000000000;
  String.append(_:)(v5);
  return v7;
}

uint64_t sub_10010A240()
{
  String.hash(into:)();
  if (*(v0 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  if (*(v0 + 48))
  {
    v1 = 0x4050800000000000;
  }

  else
  {
    v1 = 0x4046000000000000;
  }

  Hasher._combine(_:)(v1);
  String.hash(into:)();
  v2 = *(v0 + 72);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  Hasher._combine(_:)(*(v0 + 80));

  return String.hash(into:)();
}

Swift::Int sub_10010A314()
{
  Hasher.init(_seed:)();
  sub_10010A240();
  return Hasher._finalize()();
}

Swift::Int sub_10010A358()
{
  Hasher.init(_seed:)();
  sub_10010A240();
  return Hasher._finalize()();
}

uint64_t sub_10010A398(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_10010A404(v11, v13) & 1;
}

uint64_t sub_10010A404(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + 48) == 1)
  {
    if (*(a1 + 48))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

LABEL_22:
  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  if (*(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10010A558()
{
  if ((v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor] & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v1 = [v0 traitCollection];
    v2 = sub_100356E0C(v1);

    v3 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v2;
  }

  sub_10003A318();
  v4 = [v0 layer];
  v5 = [objc_opt_self() systemBlueColor];
  v6 = [v5 colorWithAlphaComponent:0.1];

  v7 = [v6 CGColor];
  [v4 setBackgroundColor:v7];
}

void sub_10010A768()
{
  sub_100038EE8();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v2 = [objc_opt_self() systemBlueColor];
  [v1 setTextColor:v2];
}

void sub_10010A884()
{
  sub_100038EE8();
  v1 = [v0 layer];
  [v1 setShouldRasterize:1];

  v2 = [v0 layer];
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];
  v5 = v4;

  [v2 setRasterizationScale:v5];
  v6 = [v0 layer];
  v17 = &type metadata for SolariumFeatureFlag;
  v18 = sub_10000BD04();
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_100006060(v16);
  v7 = _UISheetCornerRadius;
  if (v3)
  {
    v7 = 26.0;
  }

  [v6 setCornerRadius:v7];

  v8 = [v0 layer];
  [v8 setMasksToBounds:0];

  v9 = [v0 layer];
  v10 = [objc_opt_self() blackColor];
  v11 = [v10 CGColor];

  [v9 setShadowColor:v11];
  v12 = [v0 layer];
  LODWORD(v13) = 1031127695;
  [v12 setShadowOpacity:v13];

  v14 = [v0 layer];
  [v14 setShadowRadius:16.0];

  v15 = [v0 layer];
  [v15 setShadowOffset:{0.0, 0.0}];
}

id sub_10010AB40(SEL *a1)
{
  sub_100038EE8();
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v4 = [objc_opt_self() *a1];
  [v3 setTextColor:v4];

  return [v3 setTextAlignment:1];
}

void sub_10010ABCC()
{
  if ((v0[OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor] & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v1 = [v0 traitCollection];
    v2 = sub_100356E0C(v1);

    v3 = *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background];
    *&v0[OBJC_IVAR____TtC6FindMy15FMPlatterButton_background] = v2;
  }

  sub_10003A318();
  v4 = [v0 layer];
  v5 = [objc_opt_self() systemRedColor];
  v6 = [v5 CGColor];

  [v4 setBackgroundColor:v6];
}

id sub_10010AD1C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_10010ADB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10010AE0C(double a1, double a2, double a3, double a4)
{
  v5 = sub_10010B270(a1, a2, a3, a4, *&v4[OBJC_IVAR____TtC6FindMy12FMInsetLabel_topInset], *&v4[OBJC_IVAR____TtC6FindMy12FMInsetLabel_leftInset]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FMInsetLabel();
  return objc_msgSendSuper2(&v13, "drawTextInRect:", v5, v7, v9, v11);
}

double sub_10010AF1C(double a1, double a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FMInsetLabel();
  objc_msgSendSuper2(&v7, "sizeThatFits:", a1, a2);
  return v5 + *&v2[OBJC_IVAR____TtC6FindMy12FMInsetLabel_leftInset] + *&v2[OBJC_IVAR____TtC6FindMy12FMInsetLabel_rightInset];
}

double sub_10010B040()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMInsetLabel();
  objc_msgSendSuper2(&v3, "intrinsicContentSize");
  return v1 + *&v0[OBJC_IVAR____TtC6FindMy12FMInsetLabel_leftInset] + *&v0[OBJC_IVAR____TtC6FindMy12FMInsetLabel_rightInset];
}

id sub_10010B158(void *a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy12FMInsetLabel_topInset] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC6FindMy12FMInsetLabel_leftInset] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC6FindMy12FMInsetLabel_bottomInset] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC6FindMy12FMInsetLabel_rightInset] = 0x4020000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FMInsetLabel();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10010B218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMInsetLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMUnknownItemCellViewModel()
{
  result = qword_1006B2458;
  if (!qword_1006B2458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010B300()
{
  sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0);
  if (v0 <= 0x3F)
  {
    sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10010B450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v64 = a1;
  v20 = FMIPUnknownItem.locations.getter();
  v21 = *(v20 + 16);
  v62 = v14;
  if (v21)
  {
    (*(v7 + 16))(v9, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    v22 = FMIPLocation.location.getter();
    (*(v7 + 8))(v9, v6);
    v23 = [v22 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = *(v14 + 32);
    v24(v12, v17, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v24(v19, v12, v13);
  }

  else
  {

    (*(v14 + 56))(v12, 1, 1, v13);
    Date.init()();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1000CAE48(v12);
    }
  }

  v63 = v13;
  v25 = v56;
  static FormatStyleCapitalizationContext.middleOfSentence.getter();
  v61 = v19;
  v26 = sub_1000CA838(v25);
  v57 = v27;
  v58 = v26;
  (v59)[1](v25, v60);
  v28 = v64;
  FMIPUnknownItem.handle.getter();
  if (v29)
  {

    v30 = FMIPUnknownItem.name.getter();
    v32 = v31;
    v59 = 0x8000000100579A00;
    v60 = 0x80000001005799E0;
  }

  else
  {
    v33 = [objc_opt_self() mainBundle];
    v34.value._countAndFlagsBits = 0xD000000000000013;
    v59 = 0x8000000100579A00;
    v65._object = 0x8000000100579A00;
    v35._object = 0x800000010057EBA0;
    v35._countAndFlagsBits = 0xD000000000000018;
    v60 = 0x80000001005799E0;
    v34.value._object = 0x80000001005799E0;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v65);

    sub_10007EBC0(&unk_1006B20B0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100552220;
    v38 = FMIPUnknownItem.name.getter();
    v40 = v39;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_10008EE84();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v28 = v64;
    v30 = String.init(format:_:)();
    v32 = v41;
  }

  v42 = v62;
  *(a2 + 56) = 0x4040800000000000;
  *(a2 + 64) = 1;
  v43 = type metadata accessor for FMUnknownItemCellViewModel();
  FMIPUnknownItem.identifier.getter();
  *(a2 + 24) = v30;
  *(a2 + 32) = v32;
  v44 = [objc_opt_self() mainBundle];
  v45.value._countAndFlagsBits = 0xD000000000000013;
  v66._object = v59;
  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v46._object = 0x800000010057EBC0;
  v45.value._object = v60;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v45, v44, v47, v66);

  sub_10007EBC0(&unk_1006B20B0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100552220;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_10008EE84();
  v49 = v57;
  *(v48 + 32) = v58;
  *(v48 + 40) = v49;
  v50 = String.init(format:_:)();
  v52 = v51;

  v53 = type metadata accessor for FMIPUnknownItem();
  (*(*(v53 - 8) + 8))(v28, v53);
  *(a2 + 40) = v50;
  *(a2 + 48) = v52;
  return (*(v42 + 32))(a2 + *(v43 + 48), v61, v63);
}

uint64_t sub_10010BAD4()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();

    v4 = *(v1 + 8);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    v6 = *(v1 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  v4 = *(v0 + 8);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v5 = v4;
  NSObject.hash(into:)();

  v6 = *(v1 + 16);
  if (v6)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    v7 = v6;
    NSObject.hash(into:)();

    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  String.hash(into:)();
  String.hash(into:)();
  v8 = *(v1 + 56);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  Hasher._combine(_:)(*(v1 + 64));
  type metadata accessor for FMUnknownItemCellViewModel();
  type metadata accessor for UUID();
  sub_10010C118(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10010C118(&qword_1006B1480, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

id sub_10010BCB0()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *sub_10010BCD8()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_10010BD00()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10010BD28()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_10010BD58()
{
  v1 = *(v0 + 24);

  return v1;
}

Swift::Int sub_10010BD9C()
{
  Hasher.init(_seed:)();
  sub_10010BAD4();
  return Hasher._finalize()();
}

Swift::Int sub_10010BDE0()
{
  Hasher.init(_seed:)();
  sub_10010BAD4();
  return Hasher._finalize()();
}

uint64_t sub_10010BE64(uint64_t a1)
{
  result = sub_10010C118(&qword_1006B24E0, type metadata accessor for FMUnknownItemCellViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10010BEBC(uint64_t a1)
{
  result = sub_10010C118(&qword_1006B24E8, type metadata accessor for FMUnknownItemCellViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010BF14(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_10000905C(0, &qword_1006BC2B0);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_10000905C(0, &qword_1006BC2B0);
    v11 = v10;
    v12 = v9;
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  sub_10000905C(0, &qword_1006C0000);
  v16 = v15;
  v17 = v14;
  v18 = static NSObject.== infix(_:_:)();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  type metadata accessor for FMUnknownItemCellViewModel();
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_10010C118(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10010C160(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_optionPlatter;
  v4 = type metadata accessor for FMSectionPlatterGroupView();
  *(v2 + v3) = [objc_allocWithZone(v4) init];
  *(&v37 + 1) = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  *&v38 = v5;
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  v6 = 16.0;
  v7 = 16.0;
  if ((v3 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v7 = *&qword_1006D4798;
  }

  v8 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption;
  v9 = type metadata accessor for FMSettingRowView();
  v10 = objc_allocWithZone(v9);
  *(v2 + v8) = sub_100502750(1, v7);
  *(&v37 + 1) = &type metadata for SolariumFeatureFlag;
  *&v38 = v5;
  v11 = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  if ((v11 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1006D4798;
  }

  v12 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption;
  v13 = objc_allocWithZone(v9);
  *(v2 + v12) = sub_100502750(1, v6);
  *(&v37 + 1) = &type metadata for SolariumFeatureFlag;
  *&v38 = v5;
  v14 = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  v15 = 16.0;
  v16 = 16.0;
  if ((v14 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v16 = *&qword_1006D4798;
  }

  v17 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption;
  v18 = objc_allocWithZone(v9);
  *(v2 + v17) = sub_100502750(1, v16);
  v19 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_distanceOptionPlatter;
  *(v2 + v19) = [objc_allocWithZone(v4) init];
  *(&v37 + 1) = &type metadata for SolariumFeatureFlag;
  *&v38 = v5;
  LOBYTE(v19) = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  if ((v19 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v15 = *&qword_1006D4798;
  }

  v20 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption;
  v21 = objc_allocWithZone(v9);
  *(v2 + v20) = sub_100502750(1, v15);
  *(&v37 + 1) = &type metadata for SolariumFeatureFlag;
  *&v38 = v5;
  v22 = isFeatureEnabled(_:)();
  sub_100006060(&v36);
  v23 = 16.0;
  if ((v22 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v23 = *&qword_1006D4798;
  }

  v24 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption;
  v25 = objc_allocWithZone(v9);
  *(v2 + v24) = sub_100502750(1, v23);
  *(v2 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attribution) = 0;
  v26 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attributionButton;
  *(v2 + v26) = [objc_allocWithZone(UIButton) init];
  v27 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_verticalStackView;
  *(v2 + v27) = [objc_allocWithZone(UIStackView) init];
  *(v2 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_selectionSubscription) = 0;
  v36 = xmmword_100554AC0;
  v37 = xmmword_100554AD0;
  v38 = xmmword_100552170;
  v39 = xmmword_100552180;
  v40 = xmmword_100552190;
  v41 = xmmword_1005521A0;
  v42 = xmmword_1005521B0;
  v43 = xmmword_1005521C0;
  v44 = xmmword_1005521D0;
  v45 = xmmword_1005521E0;
  v46 = 0;
  v47 = 0x403A000000000000;
  v48 = 0;
  *&v49[3] = *&v35[3];
  *v49 = *v35;
  __asm { FMOV            V0.2D, #16.0 }

  v50 = _Q0;
  v51 = 0x4046000000000000;
  v52 = 0;
  return sub_100278C9C(a1, &v36);
}

int64_t sub_10010C5F4(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v11, "viewWillDisappear:", a1 & 1);
  v5 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_selectionSubscription;
  v6 = *&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_selectionSubscription];
  if (v6)
  {
    v7 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
    swift_beginAccess();

    result = sub_1003CD53C((v7 + 16), v6);
    v8 = *(v7 + 16);
    if (v8 >> 62)
    {
      v10 = result;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      result = v10;
      if (v9 >= v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= result)
      {
LABEL_4:
        sub_1003CD570(result, v9);
        swift_endAccess();

        *&v2[v5] = 0;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10010C770()
{
  sub_1002791F0();
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel) setHidden:1];
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v112._object = 0x800000010057ECE0;
  v3._object = 0x800000010057ECC0;
  v112._countAndFlagsBits = 0xD000000000000023;
  v3._countAndFlagsBits = 0xD000000000000011;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v112);

  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText) = v5;

  sub_10027D190();
  v110 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_optionPlatter;
  v6 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_optionPlatter) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  v7 = [v1 mainBundle];
  v113._object = 0x800000010057ED30;
  v8._object = 0x800000010057ED10;
  v113._countAndFlagsBits = 0xD000000000000023;
  v8._countAndFlagsBits = 0xD000000000000011;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v113);

  v10 = String._bridgeToObjectiveC()();

  [v6 setText:v10];

  v109 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_distanceOptionPlatter;
  v11 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_distanceOptionPlatter) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  v12 = [v1 mainBundle];
  v114._object = 0x800000010057ED80;
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x800000010057ED60;
  v114._countAndFlagsBits = 0xD000000000000026;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v114);

  v15 = String._bridgeToObjectiveC()();

  [v11 setText:v15];

  v16 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption;
  v17 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  v111 = objc_opt_self();
  v18 = v17;
  v19 = [v111 systemBlueColor];
  [v18 setTintColor:v19];

  v20 = *(v0 + v16);
  v21 = [v1 mainBundle];
  v115._object = 0x800000010057EDD0;
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x800000010057EDB0;
  v115._countAndFlagsBits = 0xD00000000000002ALL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v115);

  *&v20[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v24;

  v25 = *&v20[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v26 = v25;
  v27 = String._bridgeToObjectiveC()();

  [v26 setText:v27];

  v28 = [*(*(v0 + v16) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v28 setCornerRadius:10.0];

  v29 = [*(*(v0 + v16) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v29 setMaskedCorners:3];

  v30 = [*(*(v0 + v16) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v30 setMasksToBounds:1];

  v31 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption;
  v108 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption;
  v32 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  v33 = [v111 systemBlueColor];
  [v32 setTintColor:v33];

  v34 = *(v0 + v31);
  v35 = v1;
  v107 = v1;
  v36 = [v1 mainBundle];
  v116._object = 0x800000010057EE20;
  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x800000010057EE00;
  v116._countAndFlagsBits = 0xD000000000000029;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v116);

  *&v34[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v39;

  v40 = *&v34[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v41 = v40;
  v42 = String._bridgeToObjectiveC()();

  [v41 setText:v42];

  v43 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption;
  v44 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  v45 = [v111 systemBlueColor];
  [v44 setTintColor:v45];

  v46 = *(v0 + v43);
  v47 = [v35 mainBundle];
  v117._object = 0x800000010057EE70;
  v48._countAndFlagsBits = 0xD00000000000001ALL;
  v48._object = 0x800000010057EE50;
  v117._countAndFlagsBits = 0xD00000000000002CLL;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v47, v49, v117);

  *&v46[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v50;

  v51 = *&v46[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v52 = v51;
  v53 = String._bridgeToObjectiveC()();

  [v52 setText:v53];

  v54 = *(v0 + v43);
  *(v54 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated) = 0;
  [*(v54 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator) setHidden:1];
  v55 = [*(*(v0 + v43) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v55 setCornerRadius:10.0];

  v56 = [*(*(v0 + v43) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v56 setMaskedCorners:12];

  v57 = [*(*(v0 + v43) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v57 setMasksToBounds:1];

  [*(*(v0 + v110) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:*(v0 + v16)];
  [*(*(v0 + v110) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:*(v0 + v108)];
  [*(*(v0 + v110) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:*(v0 + v43)];
  v58 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption;
  v59 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  v60 = [v111 systemBlueColor];
  [v59 setTintColor:v60];

  v61 = *(v0 + v58);
  v62 = [v107 mainBundle];
  v118._object = 0x800000010057EEC0;
  v63._countAndFlagsBits = 0xD00000000000001ALL;
  v63._object = 0x800000010057EEA0;
  v118._countAndFlagsBits = 0xD00000000000002CLL;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v65 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v118);

  *&v61[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v65;

  v66 = *&v61[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v67 = v66;
  v68 = String._bridgeToObjectiveC()();

  [v67 setText:v68];

  v69 = [*(*(v0 + v58) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v69 setCornerRadius:10.0];

  v70 = [*(*(v0 + v58) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v70 setMaskedCorners:3];

  v71 = [*(*(v0 + v58) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v71 setMasksToBounds:1];

  v72 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption;
  v73 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  v74 = [v111 systemBlueColor];
  [v73 setTintColor:v74];

  v75 = *(v0 + v72);
  v76 = [v107 mainBundle];
  v119._object = 0x800000010057EF10;
  v77._countAndFlagsBits = 0xD000000000000017;
  v77._object = 0x800000010057EEF0;
  v119._countAndFlagsBits = 0xD000000000000029;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v119);

  *&v75[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v79;

  v80 = *&v75[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v81 = v80;
  v82 = String._bridgeToObjectiveC()();

  [v81 setText:v82];

  v83 = *(v0 + v72);
  *(v83 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated) = 0;
  [*(v83 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator) setHidden:1];
  v84 = [*(*(v0 + v72) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v84 setCornerRadius:10.0];

  v85 = [*(*(v0 + v72) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v85 setMaskedCorners:12];

  v86 = [*(*(v0 + v72) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_backgroundView) layer];
  [v86 setMasksToBounds:1];

  [*(*(v0 + v109) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:*(v0 + v58)];
  [*(*(v0 + v109) + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView) addArrangedSubview:*(v0 + v72)];
  v87 = [objc_allocWithZone(MKMapView) init];
  sub_10007EBC0(&qword_1006B2570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = NSForegroundColorAttributeName;
  v89 = NSForegroundColorAttributeName;
  *(inited + 40) = [v111 labelColor];
  *(inited + 48) = NSFontAttributeName;
  v90 = objc_opt_self();
  v91 = NSFontAttributeName;
  *(inited + 56) = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v92 = sub_1001535F0(inited);
  swift_setDeallocating();
  sub_10007EBC0(&unk_1006B4DC0);
  swift_arrayDestroy();
  sub_1000F0914(v92);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v94 = [v87 mapAttributionWithStringAttributes:isa underlineText:1];

  if (v94)
  {
    v95 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attributionButton;
    v96 = [*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attributionButton) titleLabel];
    if (v96)
    {
      v97 = v96;
      [v96 setNumberOfLines:3];
    }

    v98 = [*(v0 + v95) titleLabel];
    if (v98)
    {
      v99 = v98;
      [v98 setTextAlignment:4];
    }

    v100 = *(v0 + v95);
    v101 = [v94 string];
    [v100 setAttributedTitle:v101 forState:0];

    v102 = qword_1006AEC30;
    v103 = *(v0 + v95);
    if (v102 != -1)
    {
      swift_once();
    }

    if (qword_1006D47A0 == 1)
    {
      v104 = 2;
    }

    else
    {
      v104 = 1;
    }

    [v103 setContentHorizontalAlignment:v104];

    v105 = *(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attribution);
    *(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attribution) = v94;
  }

  v106 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_verticalStackView;
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_verticalStackView) setAxis:1];
  [*(v0 + v106) setDistribution:3];
  [*(v0 + v106) setSpacing:19.0];
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) addSubview:*(v0 + v106)];
  [*(v0 + v106) addArrangedSubview:*(v0 + v110)];
  [*(v0 + v106) addArrangedSubview:*(v0 + v109)];
  [*(v0 + v106) addArrangedSubview:*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attributionButton)];
}

void sub_10010D7C4()
{
  sub_10027A200();
  v1 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_verticalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_verticalStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [*&v0[v1] topAnchor];
  v4 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel] lastBaselineAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:19.0];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 layoutMarginsGuide];

  v10 = [v9 leadingAnchor];
  v11 = [v6 constraintEqualToAnchor:v10];

  *(v2 + 40) = v11;
  v12 = [*&v0[v1] trailingAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v14 layoutMarginsGuide];

  v17 = [v16 trailingAnchor];
  v18 = [v12 constraintEqualToAnchor:v17];

  *(v2 + 48) = v18;
  v19 = [*&v0[v1] bottomAnchor];
  v20 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] bottomAnchor];
  v21 = [v19 constraintLessThanOrEqualToAnchor:v20];

  *(v2 + 56) = v21;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];
}

void sub_10010DAD0()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:"selectDefaultOption"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"selectHybridOption"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption] addGestureRecognizer:v4];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"selectSatelliteOption"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption] addGestureRecognizer:v5];
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"selectMilesOption"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption] addGestureRecognizer:v6];
  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"selectKMOption"];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption] addGestureRecognizer:v7];
  v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"attributionPressed"];

  [*&v2[OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attributionButton] addGestureRecognizer:v8];
}

void sub_10010DCC4()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption;
  [*(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron) setImage:0];
  v2 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption;
  [*(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron) setImage:0];
  v3 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption;
  [*(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron) setImage:0];
  v4 = [objc_opt_self() configurationWithWeight:7];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  v11 = [v6 imageByApplyingSymbolConfiguration:v4];
  v7 = (*(*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode);
  if (*v7 == 1)
  {
    if (v7[2])
    {
      v8 = *(v0 + v2);
    }

    else
    {
      v8 = *(v0 + v1);
    }

    v9 = (v8 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  }

  else
  {
    v9 = (*(v0 + v3) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  }

  v10 = *v9;
  [v10 setImage:v11];
}

void sub_10010DE9C()
{
  v1 = (v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption);
  [*(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron) setImage:0];
  v2 = (v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption);
  [*(*(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron) setImage:0];
  v3 = [objc_opt_self() configurationWithWeight:7];
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4];

  v8 = [v5 imageByApplyingSymbolConfiguration:v3];
  if (qword_1006AEC58 != -1)
  {
    swift_once();
  }

  if ([qword_1006D48A8 measurementSystem] == 3)
  {
    v6 = v1;
  }

  else
  {
    v6 = v2;
  }

  v7 = *(*v6 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_chevron);
  [v7 setImage:v8];
}

void sub_10010E05C(char *a1, uint64_t a2, char a3)
{
  v3 = *(*&a1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedMapMode;
  *v3 = a3;
  *(v3 + 1) = 256;
  v4 = a1;

  sub_1002467BC();

  sub_10010DCC4();
}

void sub_10010E1C8(char *a1, uint64_t a2, uint64_t a3)
{
  *(*(*&a1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_selectedUnit) = a3;
  v3 = a1;

  sub_100246B60();

  sub_10010DE9C();
}

void sub_10010E248()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attribution);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 sharedApplication];
    v9 = [v7 url];
    if (v9)
    {
      v10 = v9;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v11);
      v13 = v12;
      (*(v2 + 8))(v4, v1);
      sub_10015391C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_10010E644();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v8 openURL:v13 options:isa completionHandler:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10010E44C()
{
}

void sub_10010E61C()
{
  sub_10010DCC4();

  sub_10010DE9C();
}

unint64_t sub_10010E644()
{
  result = qword_1006AF360;
  if (!qword_1006AF360)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF360);
  }

  return result;
}

uint64_t sub_10010E69C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_optionPlatter;
  v3 = type metadata accessor for FMSectionPlatterGroupView();
  *(v1 + v2) = [objc_allocWithZone(v3) init];
  v29 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v30 = v4;
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100006060(v28);
  v5 = 16.0;
  v6 = 16.0;
  if ((v2 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1006D4798;
  }

  v7 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_defaultOption;
  v8 = type metadata accessor for FMSettingRowView();
  v9 = objc_allocWithZone(v8);
  *(v1 + v7) = sub_100502750(1, v6);
  v29 = &type metadata for SolariumFeatureFlag;
  v30 = v4;
  v10 = isFeatureEnabled(_:)();
  sub_100006060(v28);
  if ((v10 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v5 = *&qword_1006D4798;
  }

  v11 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_hybridOption;
  v12 = objc_allocWithZone(v8);
  *(v1 + v11) = sub_100502750(1, v5);
  v29 = &type metadata for SolariumFeatureFlag;
  v30 = v4;
  v13 = isFeatureEnabled(_:)();
  sub_100006060(v28);
  v14 = 16.0;
  v15 = 16.0;
  if ((v13 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v15 = *&qword_1006D4798;
  }

  v16 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_satelliteOption;
  v17 = objc_allocWithZone(v8);
  *(v1 + v16) = sub_100502750(1, v15);
  v18 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_distanceOptionPlatter;
  *(v1 + v18) = [objc_allocWithZone(v3) init];
  v29 = &type metadata for SolariumFeatureFlag;
  v30 = v4;
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_100006060(v28);
  if ((v18 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v14 = *&qword_1006D4798;
  }

  v19 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_milesOption;
  v20 = objc_allocWithZone(v8);
  *(v1 + v19) = sub_100502750(1, v14);
  v29 = &type metadata for SolariumFeatureFlag;
  v30 = v4;
  v21 = isFeatureEnabled(_:)();
  sub_100006060(v28);
  v22 = 16.0;
  if ((v21 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v22 = *&qword_1006D4798;
  }

  v23 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_kmOption;
  v24 = objc_allocWithZone(v8);
  *(v1 + v23) = sub_100502750(1, v22);
  *(v1 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attribution) = 0;
  v25 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_attributionButton;
  *(v1 + v25) = [objc_allocWithZone(UIButton) init];
  v26 = OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_verticalStackView;
  *(v1 + v26) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy27FMMapSettingsViewController_selectionSubscription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10010EA04(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FMLostModeConfirmationViewController();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:{v2, v3.receiver, v3.super_class}];

  *(*&v1[qword_1006B8E50] + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable) = 0;
  sub_100143FE8();
  sub_10010ED64();
  sub_10010EAC0();
}

id sub_10010EAC0()
{
  v1 = v0;
  v2 = *(v0 + qword_1006B8E50);
  *(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_isEditable) = 0;
  v3 = sub_100143FE8();
  v4 = qword_1006D3E00;
  v5 = sub_100285210(v3);
  *(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowNotifyWhenFound) = v5 & 1;
  v6 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView;
  v7 = sub_100283FCC([*(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView) setHidden:(v5 & 1) == 0]);
  *(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowMessageView) = v7 & 1;
  [*(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) setHidden:(v7 & 1) == 0];
  v8 = sub_1002842B8();
  v9 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_canEnableNotifyWhenFound;
  *(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_canEnableNotifyWhenFound) = v8;
  *(*(v2 + v6) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_isEnabled) = v8;
  sub_1003737CC();
  [*(*(v2 + v6) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle) setOn:*(v2 + v9) animated:0];
  *(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowDisableButton) = 0;
  [*(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_disableButton) setHidden:1];
  sub_10022FB78(v0 + v4);
  sub_10022FEFC(0xD00000000000002BLL, 0x800000010057F020);

  v10 = *(*(v2 + v6) + OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_footer);
  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];

  sub_10022FB78(v1 + v4);
  sub_10022FEFC(0xD000000000000022, 0x800000010057F050);

  v12 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_footerLabel;
  v13 = *(v2 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_footerLabel);

  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = *(v2 + v12);

  return [v15 setHidden:0];
}

void sub_10010ED64()
{
  v1 = [objc_opt_self() boldButton];
  v2 = [objc_opt_self() mainBundle];
  v11._object = 0x800000010057EFE0;
  v3._object = 0x800000010057EFB0;
  v11._countAndFlagsBits = 0xD000000000000032;
  v3._countAndFlagsBits = 0xD000000000000020;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v5 = String._bridgeToObjectiveC()();

  [v1 setTitle:v5 forState:0];

  v6 = v1;
  v7 = String._bridgeToObjectiveC()();
  [v6 setAccessibilityIdentifier:v7];

  [v6 addTarget:v0 action:"handleActivateButton" forControlEvents:64];
  v8 = [v0 buttonTray];
  [v8 addButton:v6];

  v9 = *&v0[qword_1006D4360];
  *&v0[qword_1006D4360] = v6;
}

uint64_t sub_10010EF2C()
{
  v1 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v1 - 8);
  v41 = &v32 - v2;
  v3 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B28E0);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  __chkstk_darwin(v5);
  v33 = &v32 - v7;
  v40 = sub_10007EBC0(&qword_1006B28E8);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = &v32 - v8;
  v9 = sub_10007EBC0(&qword_1006B28F0);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  __chkstk_darwin(v9);
  v38 = &v32 - v11;
  v12 = [*(*(*&v0[qword_1006B8E50] + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_notifyWhenFoundView) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle) isOn];
  v13 = *&v0[qword_1006D4360];
  v14 = v13;
  sub_100437A74(v13);

  v47 = sub_100268D30(&v0[qword_1006D3E00]);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v0;
  v37 = v0;
  static Subscribers.Demand.unlimited.getter();
  sub_10007EBC0(&qword_1006B28D8);
  sub_10007EBC0(&qword_1006B28F8);
  sub_100004098(&qword_1006B2900, &qword_1006B28D8);
  sub_100004098(&qword_1006B2908, &qword_1006B28F8);
  v16 = v33;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_100004098(&qword_1006B2910, &qword_1006B28E0);
  v17 = v35;
  v18 = Publisher.eraseToAnyPublisher()();
  (*(v36 + 8))(v16, v17);
  v47 = v18;
  v19 = v34;
  Publisher.catch<A>(_:)();

  v20 = v39;
  NSRunLoop.SchedulerTimeType.Stride.init(integerLiteral:)();
  v21 = [objc_opt_self() mainRunLoop];
  v47 = v21;
  v22 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v23 = v41;
  (*(*(v22 - 8) + 56))(v41, 1, 1, v22);
  sub_10011060C();
  sub_100004098(&qword_1006B2920, &qword_1006B28E8);
  sub_100110658();
  v24 = v38;
  v25 = v40;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_100012DF0(v23, &qword_1006B64E0);

  (*(v45 + 8))(v20, v46);
  (*(v42 + 8))(v19, v25);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 16) = v37;
  sub_100004098(&qword_1006B2930, &qword_1006B28F0);
  v28 = v27;
  v29 = v43;
  v30 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v44 + 8))(v24, v29);
  *&v28[qword_1006B8820] = v30;
}

uint64_t sub_10010F638@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_10007EBC0(&qword_1006B2938);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  v10 = sub_10007EBC0(&qword_1006B2940);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  if (a1)
  {
    v16[1] = sub_10010F908(a2 + qword_1006D3E00);
    sub_10007EBC0(&qword_1006B28D8);
    sub_100004098(&qword_1006B2900, &qword_1006B28D8);
    v14 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    Just.init(_:)();
    sub_1001106B8();
    Just.setFailureType<A>(to:)();
    (*(v7 + 8))(v9, v6);
    sub_100004098(&qword_1006B2950, &qword_1006B2940);
    v14 = Publisher.eraseToAnyPublisher()();
    result = (*(v11 + 8))(v13, v10);
  }

  *a3 = v14;
  return result;
}

void sub_10010F8C0(void *a1)
{
  v1 = a1;
  sub_10010EF2C();
}

uint64_t sub_10010F908(uint64_t a1)
{
  v28 = a1;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = &v27 - v7;
  v8 = sub_10007EBC0(&qword_1006B07D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for FMIPDevice();
  v30 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(v28, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v30 + 32))(v16, v19, v14);
    sub_100110438(&v19[v20], v13);
    sub_1001104A8(v13, v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      sub_100012DF0(v11, &qword_1006B07D0);
      v21 = *(*(v1 + qword_1006B8E58) + 24);

      v22 = sub_10010FF54(v16, v21);
    }

    else
    {
      v24 = v27;
      (*(v3 + 32))(v27, v11, v2);
      v25 = *(*(v1 + qword_1006B8E58) + 24);

      v22 = sub_10010FD4C(v24, v25);

      (*(v3 + 8))(v24, v2);
    }

    sub_100012DF0(v13, &qword_1006B07D0);
    (*(v30 + 8))(v16, v14);
  }

  else
  {
    (*(v3 + 32))(v6, v19, v2);
    v23 = *(*(v1 + qword_1006B8E58) + 24);

    v22 = sub_10010FD4C(v6, v23);

    (*(v3 + 8))(v6, v2);
  }

  return v22;
}

uint64_t sub_10010FD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPNotifyItemActionType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v7 + 104))(v9, enum case for FMIPNotifyItemActionType.whenFound(_:), v6);
  type metadata accessor for FMIPNotifyItemAction();
  swift_allocObject();
  v13 = FMIPNotifyItemAction.init(item:type:state:)();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = v3;
  sub_10007EBC0(&qword_1006B28D8);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10010FF54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMIPNotifyActionType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDevice();
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v7 + 104))(v9, enum case for FMIPNotifyActionType.whenFound(_:), v6);
  type metadata accessor for FMIPNotifyAction();
  swift_allocObject();
  v13 = FMIPNotifyAction.init(device:type:enabled:)();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = v3;
  sub_10007EBC0(&qword_1006B28D8);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10011015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  v10[2] = sub_10011070C;
  v10[3] = v9;
  v10[4] = a5;

  sub_1000D6A90(a4, sub_1001105F4, v10);
}

uint64_t sub_100110230(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  swift_errorRetain();
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = -1;
  }

  sub_10026AEA8(a4, a5, a1, a3, v9);
}

uint64_t sub_1001102A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  v10[2] = sub_100110524;
  v10[3] = v9;
  v10[4] = a5;

  sub_1000D7218(a4, sub_100110528, v10);
}

id sub_100110374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeConfirmationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMLostModeConfirmationViewController()
{
  result = qword_1006B25A0;
  if (!qword_1006B25A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100110438(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B07D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001104A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B07D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  swift_errorRetain();
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = -1;
  }

  sub_10026B130(v7, v6, a1, a3, v8);
}

uint64_t sub_100110594()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10011060C()
{
  result = qword_1006B2918;
  if (!qword_1006B2918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B2918);
  }

  return result;
}

unint64_t sub_100110658()
{
  result = qword_1006B2928;
  if (!qword_1006B2928)
  {
    sub_10011060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B2928);
  }

  return result;
}

unint64_t sub_1001106B8()
{
  result = qword_1006B2948;
  if (!qword_1006B2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B2948);
  }

  return result;
}

uint64_t sub_100110710(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      v16 = v14;

      v15 = a1(&v16);
      if (v3)
      {

        return v14;
      }

      if (v15)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return 0;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100110904@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v28 = a3;
  v38 = type metadata accessor for FMIPBeaconShare();
  v6 = __chkstk_darwin(v38);
  v37 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v28 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v33 = v8 + 32;
  v34 = v8;
  v29 = (v8 + 8);
  v30 = v8 + 16;
  v35 = a2;

  v16 = 0;
  v17 = v31;
  if (v13)
  {
    while (1)
    {
      v36 = v4;
      v18 = v16;
LABEL_9:
      v19 = v34;
      v20 = v38;
      (*(v34 + 16))(v17, *(v35 + 48) + *(v34 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v38);
      v21 = *(v19 + 32);
      v22 = v37;
      v21(v37, v17, v20);
      v23 = v36;
      v24 = v32(v22);
      v4 = v23;
      if (v23)
      {
        (*v29)(v37, v38);
      }

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v29)(v37, v38);
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v27 = v28;
    v21(v28, v37, v38);
    v26 = v27;
    v25 = 0;
    return (*(v34 + 56))(v26, v25, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v25 = 1;
        v26 = v28;
        return (*(v34 + 56))(v26, v25, 1, v38);
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v36 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100110BC4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void *sub_100110CD8(uint64_t a1)
{
  v35 = type metadata accessor for FMIPItem();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10016715C(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = FMIPItem.identifier.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10016715C((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000F6E08(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000F6E08(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100110FE0()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for FMMenuManager();
    v1 = swift_allocObject();
    *(v1 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v1 + 16) = v0;
    *(v0 + 112) = v1;
  }

  return v1;
}