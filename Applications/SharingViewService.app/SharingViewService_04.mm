id sub_10005B794()
{
  v1 = v0;
  v2 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000D298(v5, qword_1001BAF20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = 2548;
    _os_log_impl(&_mh_execute_header, v6, v7, "learnMorePressed in %ld", v8, 0xCu);
  }

  result = [v1 mainController];
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_10003BFDC(0, v4, sub_10005B980, 0, 2549);

    return sub_10001259C(v4, &qword_1001BA7B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005B980()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  Optional.unwrap(_:file:line:)();
  sub_10001259C(v2, &qword_1001BA7B0);
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v9 = v7;
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    sub_100004F48(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openSensitiveURL:v11 withOptions:isa];
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_10005BC08()
{
  v1 = v0;
  v2 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000D298(v5, qword_1001BAF20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = 2559;
    _os_log_impl(&_mh_execute_header, v6, v7, "dismissPressed in %ld", v8, 0xCu);
  }

  result = [v1 mainController];
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_10003BFDC(5, v4, 0, 0, 2560);

    return sub_10001259C(v4, &qword_1001BA7B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005BE64(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_btn] = 0;
  v6 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_msgLbl;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_avatarImageView;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_lockImageView;
  *&v3[v8] = [objc_allocWithZone(UIImageView) init];
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for B389PairLockedViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10005BF84(void *a1)
{
  *&v1[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_btn] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_msgLbl;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_avatarImageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_lockImageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for B389PairLockedViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10005C130()
{
  strcpy(&qword_1001BAF38, "FIND_WITH_SIRI");
  unk_1001BAF47 = -18;
  qword_1001BAF48 = 0x6568705369726953;
  unk_1001BAF50 = 0xEA00000000006572;
  byte_1001BAF58 = 0;
  qword_1001BAF60 = [objc_opt_self() systemWhiteColor];
  byte_1001BAF68 = 0;
  result = swift_getKeyPath();
  qword_1001BAF70 = result;
  return result;
}

id sub_10005C1D0()
{
  qword_1001BAF78 = 0x4C414E4F53524550;
  unk_1001BAF80 = 0xEB00000000455A49;
  qword_1001BAF88 = 0x662E79656C696D73;
  unk_1001BAF90 = 0xEB000000006C6C69;
  byte_1001BAF98 = 1;
  result = [objc_opt_self() systemBlueColor];
  qword_1001BAFA0 = result;
  byte_1001BAFA8 = 0;
  qword_1001BAFB0 = 0;
  return result;
}

id sub_10005C268()
{
  qword_1001BAFB8 = 0x554F535F59414C50;
  unk_1001BAFC0 = 0xEA0000000000444ELL;
  qword_1001BAFC8 = 0xD000000000000010;
  unk_1001BAFD0 = 0x8000000100146590;
  byte_1001BAFD8 = 1;
  result = [objc_opt_self() systemIndigoColor];
  qword_1001BAFE0 = result;
  byte_1001BAFE8 = 1;
  qword_1001BAFF0 = 0;
  return result;
}

id sub_10005C2F8()
{
  qword_1001BAFF8 = 0x5F45534943455250;
  unk_1001BB000 = 0xEF474E49444E4946;
  qword_1001BB008 = 0xD00000000000001CLL;
  unk_1001BB010 = 0x80000001001465B0;
  byte_1001BB018 = 1;
  result = [objc_opt_self() systemGreenColor];
  qword_1001BB020 = result;
  byte_1001BB028 = 0;
  qword_1001BB030 = 0;
  return result;
}

id sub_10005C390()
{
  qword_1001BB038 = 0xD000000000000011;
  unk_1001BB040 = 0x8000000100147AA0;
  qword_1001BB048 = 0xD000000000000010;
  unk_1001BB050 = 0x80000001001465D0;
  byte_1001BB058 = 1;
  result = [objc_opt_self() systemPinkColor];
  qword_1001BB060 = result;
  byte_1001BB068 = 0;
  qword_1001BB070 = 0;
  return result;
}

uint64_t sub_10005C41C()
{
  v0 = SFIsFMFAllowed();
  v1 = SFIsRangingSupported();
  sub_100005DCC(&unk_1001BBB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10016D4E0;
  if (v0)
  {
    if (v1)
    {
      if (qword_1001B9338 != -1)
      {
        swift_once();
      }

      v3 = unk_1001BB000;
      v4 = qword_1001BB008;
      v5 = unk_1001BB010;
      v6 = byte_1001BB018;
      v7 = qword_1001BB020;
      v8 = byte_1001BB028;
      v9 = qword_1001BB030;
      *(v2 + 32) = qword_1001BAFF8;
      *(v2 + 40) = v3;
      *(v2 + 48) = v4;
      *(v2 + 56) = v5;
      *(v2 + 64) = v6;
      *(v2 + 72) = v7;
      *(v2 + 80) = v8;
      *(v2 + 88) = v9;
      v10 = qword_1001B9330;

      v11 = v7;

      if (v10 != -1)
      {
        swift_once();
      }

      v12 = unk_1001BAFC0;
      v13 = qword_1001BAFC8;
      v14 = unk_1001BAFD0;
      v15 = byte_1001BAFD8;
      v16 = qword_1001BAFE0;
      v17 = byte_1001BAFE8;
      v18 = qword_1001BAFF0;
      *(v2 + 96) = qword_1001BAFB8;
      *(v2 + 104) = v12;
      *(v2 + 112) = v13;
      *(v2 + 120) = v14;
      *(v2 + 128) = v15;
      *(v2 + 136) = v16;
      *(v2 + 144) = v17;
      *(v2 + 152) = v18;
      v19 = qword_1001B9340;

      v20 = v16;

      if (v19 != -1)
      {
        swift_once();
      }

      v21 = &qword_1001BB038;
      goto LABEL_28;
    }

    if (qword_1001B9340 != -1)
    {
      swift_once();
    }

    v22 = &qword_1001BB038;
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      if (qword_1001B9330 != -1)
      {
        swift_once();
      }

      v33 = unk_1001BAFC0;
      v34 = qword_1001BAFC8;
      v35 = unk_1001BAFD0;
      v36 = byte_1001BAFD8;
      v37 = qword_1001BAFE0;
      v38 = byte_1001BAFE8;
      v39 = qword_1001BAFF0;
      *(v2 + 32) = qword_1001BAFB8;
      *(v2 + 40) = v33;
      *(v2 + 48) = v34;
      *(v2 + 56) = v35;
      *(v2 + 64) = v36;
      *(v2 + 72) = v37;
      *(v2 + 80) = v38;
      *(v2 + 88) = v39;
      v40 = qword_1001B9328;

      v41 = v37;

      if (v40 != -1)
      {
        swift_once();
      }

      v32 = &qword_1001BAF78;
      goto LABEL_25;
    }

    if (qword_1001B9338 != -1)
    {
      swift_once();
    }

    v22 = &qword_1001BAFF8;
  }

  v23 = v22[1];
  v24 = v22[2];
  v25 = v22[3];
  v26 = *(v22 + 32);
  v27 = v22[5];
  v28 = *(v22 + 48);
  v29 = v22[7];
  *(v2 + 32) = *v22;
  *(v2 + 40) = v23;
  *(v2 + 48) = v24;
  *(v2 + 56) = v25;
  *(v2 + 64) = v26;
  *(v2 + 72) = v27;
  *(v2 + 80) = v28;
  *(v2 + 88) = v29;
  v30 = qword_1001B9330;

  v31 = v27;

  if (v30 != -1)
  {
    swift_once();
  }

  v32 = &qword_1001BAFB8;
LABEL_25:
  v42 = v32[1];
  v43 = v32[2];
  v44 = v32[3];
  v45 = *(v32 + 32);
  v46 = v32[5];
  v47 = *(v32 + 48);
  v48 = v32[7];
  *(v2 + 96) = *v32;
  *(v2 + 104) = v42;
  *(v2 + 112) = v43;
  *(v2 + 120) = v44;
  *(v2 + 128) = v45;
  *(v2 + 136) = v46;
  *(v2 + 144) = v47;
  *(v2 + 152) = v48;
  v49 = qword_1001B9320;

  v50 = v46;

  if (v49 != -1)
  {
    swift_once();
  }

  v21 = &qword_1001BAF38;
LABEL_28:
  v51 = v21[1];
  v52 = v21[2];
  v53 = v21[3];
  v54 = *(v21 + 32);
  v55 = v21[5];
  v56 = *(v21 + 48);
  v57 = v21[7];
  *(v2 + 160) = *v21;
  *(v2 + 168) = v51;
  *(v2 + 176) = v52;
  *(v2 + 184) = v53;
  *(v2 + 192) = v54;
  *(v2 + 200) = v55;
  *(v2 + 208) = v56;
  *(v2 + 216) = v57;

  v58 = v55;
  return v2;
}

uint64_t sub_10005C84C()
{
  result = sub_100128010();
  if (result == 1)
  {
    v1 = xmmword_10016E370;
    v2 = xmmword_10016E380;
    v3 = xmmword_10016E390;
    v4 = 24.0;
  }

  else
  {
    if (result == 2)
    {
      v1 = xmmword_10016E3A0;
      v2 = xmmword_10016E3B0;
      v3 = xmmword_10016E3C0;
    }

    else
    {
      v1 = xmmword_10016E3D0;
      v2 = xmmword_10016E3E0;
      v3 = xmmword_10016E3F0;
    }

    v4 = 48.0;
  }

  xmmword_1001BB078 = v3;
  *&qword_1001BB088 = v2;
  qword_1001BB098 = v2;
  *&qword_1001BB0A0 = v1;
  qword_1001BB0B0 = *&v4;
  return result;
}

void *sub_10005C8E8()
{
  v1 = [v0 mainController];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  if ((v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex + 8] & 1) != 0 || (v3 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex], (result = sub_100037598()) == 0))
  {

    goto LABEL_9;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < result[2])
  {
    v5 = result[2 * v3 + 5];

    type metadata accessor for SFMExampleUtterance();
    v6 = v5;
    v7 = SFMExampleUtterance.__allocating_init(forRole:)();
    v8 = dispatch thunk of SFMExampleUtterance.utteranceText.getter();
    v10 = v9;

    if (v10)
    {
      return v8;
    }

LABEL_9:
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    v14 = sub_1001279D0(v11, v12, v13);

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }

  __break(1u);
  return result;
}

void sub_10005CA80(char a1)
{
  v2 = v1;
  v118.receiver = v2;
  v118.super_class = type metadata accessor for B389DoneViewController();
  objc_msgSendSuper2(&v118, "viewWillAppear:", a1 & 1);
  v113 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController;
  v4 = *&v2[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController];
  if (qword_1001B9348 != -1)
  {
    swift_once();
  }

  v5 = &xmmword_1001BB078;
  if (!v4)
  {
    v5 = &xmmword_1001BB078 + 1;
  }

  v6 = sub_1000A1F84(v2, 0, *v5);
  v8 = v7;

  v9 = [v2 containerView];
  [v9 setSwipeDismissible:1];

  [v2 setModalPresentationStyle:4];
  v10 = [v2 containerView];
  v11 = setupNormalButtonAndOptionButton(inContainerView:)(v10);

  [(objc_class *)v11._0.super.super.super.super.super.isa addTarget:v2 action:"customizePressed" forControlEvents:64];
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = sub_1001279D0(v13, v14, v15);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100005DCC(&unk_1001BBB70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10016CCE0;
  if (qword_1001B9260 != -1)
  {
    swift_once();
  }

  v18 = [qword_1001C3838 localizedShortName];
  if (!v18)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10000BF44();
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  static String.localizedStringWithFormat(_:_:)();

  v23 = v11._0.super.super.super.super.super.isa;
  v24 = String._bridgeToObjectiveC()();
  [(objc_class *)v23 setTitle:v24 forState:0];

  v25 = [(objc_class *)v23 titleLabel];
  [v25 setAdjustsFontSizeToFitWidth:1];

  v26 = [(objc_class *)v23 titleLabel];
  if (v26)
  {
    [v26 setMinimumScaleFactor:0.3];
  }

  [(objc_class *)v11._1.super.super.super.super.isa addTarget:v2 action:"dismissPressed" forControlEvents:64];
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_100127AD0(v27);

  if (!v28)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v11._1.super.super.super.super.isa setTitle:v28 forState:0];

  v29 = [v2 containerView];
  isa = setupTitleLabel(inContainerView:textAlignment:)(v29, NSTextAlignmentNatural).super.super.super.isa;

  v30 = [v2 mainController];
  if (!v30)
  {
    goto LABEL_28;
  }

  v31 = v30;
  sub_1000378F8();
  v33 = v32;

  v114 = v23;
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [(objc_class *)isa setText:v34];

  v35 = [objc_allocWithZone(SVSCurrentLocationIndicator) init];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 clearColor];
  [v37 setBackgroundColor:v38];

  v39 = [objc_allocWithZone(UILabel) init];
  v40 = [objc_opt_self() systemFontOfSize:14.0];
  [v39 setFont:v40];

  v41 = [v12 mainBundle];
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = sub_1001279D0(v41, v42, v43);

  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = String._bridgeToObjectiveC()();
  }

  [v39 setText:v44];

  v45 = [v36 secondaryLabelColor];
  [v39 setTextColor:v45];

  sub_100005DCC(&qword_1001BBB00);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10016D400;
  *(v46 + 32) = v37;
  *(v46 + 40) = v39;
  v47 = objc_allocWithZone(UIStackView);
  sub_1000122EC(0, &qword_1001B9FB8);
  v115 = v37;
  v112 = v39;
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = [v47 initWithArrangedSubviews:v48];

  [v49 setSpacing:5.0];
  v50 = v49;
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = [v2 containerView];
  [v51 addSubview:v50];

  v52 = [v50 leadingAnchor];
  v53 = [v2 containerView];
  v54 = [v53 leadingAnchor];

  if (qword_1001B9450 != -1)
  {
    swift_once();
  }

  v55 = [v52 constraintEqualToAnchor:v54 constant:*&qword_1001C3B98];

  [v55 setActive:1];
  v56 = [v50 topAnchor];
  v57 = [(objc_class *)isa lastBaselineAnchor];
  if (qword_1001B9348 != -1)
  {
    swift_once();
  }

  v58 = [v56 constraintEqualToAnchor:v57 constant:*&qword_1001BB088];

  [v58 setActive:1];
  v59 = [v115 widthAnchor];
  v60 = [v59 constraintEqualToConstant:14.0];

  [v60 setActive:1];
  v61 = [v115 heightAnchor];

  v62 = [v61 constraintEqualToConstant:14.0];
  [v62 setActive:1];

  v63 = [v2 containerView];
  v64 = setupXButton(inContainerView:)(v63).super.super.super.super.isa;

  v111 = v64;
  [(objc_class *)v64 addTarget:v2 action:"dismissPressed" forControlEvents:64];
  v65 = [v2 containerView];
  v66 = *&v2[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_tv];
  [v65 addSubview:v66];

  [v66 setSeparatorStyle:0];
  [v66 setAlwaysBounceVertical:0];
  [v66 setAllowsSelection:0];
  [v66 setTranslatesAutoresizingMaskIntoConstraints:0];
  v67 = *&v113[v2];
  if (!v67)
  {

    v95 = [v66 topAnchor];
    v96 = [v50 bottomAnchor];

    v97 = [v95 constraintEqualToAnchor:v96 constant:*&qword_1001BB0B0];
    [v97 setActive:1];

    v98 = [(objc_class *)v114 topAnchor];
    v99 = [v66 bottomAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:*&qword_1001BB0A0];

    [v100 setActive:1];
    v90 = &selRef_applicationProxyForIdentifier_;
    v94 = &selRef_setDuration_;
    goto LABEL_26;
  }

  v68 = v67;
  [v2 addChildViewController:{v68, v50}];
  v69 = [v68 view];
  if (v69)
  {
    v70 = v69;

    v71 = [v2 containerView];
    [v71 addSubview:v70];

    [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v70 topAnchor];
    v73 = [v50 bottomAnchor];

    v74 = [v72 constraintEqualToAnchor:v73 constant:*&qword_1001BB098];
    [v74 setActive:1];

    v75 = [v70 widthAnchor];
    v116 = v114;
    v76 = [(objc_class *)v116 widthAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    [v77 setActive:1];
    v78 = [v70 centerXAnchor];
    v79 = [v2 containerView];
    v80 = [v79 centerXAnchor];

    v81 = [v78 constraintEqualToAnchor:v80];
    [v81 setActive:1];

    v82 = [v70 heightAnchor];
    v83 = [v82 constraintEqualToConstant:*&qword_1001BB090];

    [v83 setActive:1];
    [v70 _setContinuousCornerRadius:13.0];
    v84 = [v66 topAnchor];
    v85 = [v70 bottomAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:*&qword_1001BB0A8];

    [v86 setActive:1];
    v87 = [(objc_class *)v116 topAnchor];

    v88 = [v66 bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:2.0];

    [v89 setActive:1];
    v90 = &selRef_applicationProxyForIdentifier_;
    [v68 didMoveToParentViewController:v2];

    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = &v68[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_tapHandler];
    v93 = *&v68[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_tapHandler];
    *v92 = sub_10006254C;
    v92[1] = v91;

    sub_100012050(v93);

    v94 = &selRef_setDuration_;

LABEL_26:
    v101 = [v66 v94[316]];
    v102 = [v114 v94[316]];
    v103 = [v101 constraintEqualToAnchor:v102 constant:-6.0];

    [v103 setActive:1];
    v104 = [v66 centerXAnchor];
    v105 = [v2 containerView];
    v106 = [v105 centerXAnchor];

    v107 = [v104 v90[59]];
    [v107 setActive:1];

    type metadata accessor for B389FeatureTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v109 = String._bridgeToObjectiveC()();
    [v66 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v109];

    [v66 setDataSource:v2];
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_10005DB54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10005DDD8();
  }
}

void sub_10005DC44()
{
  v1 = v0;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAF20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 2809;
    _os_log_impl(&_mh_execute_header, v3, v4, "dismissPressed in %ld", v5, 0xCu);
  }

  v6 = [v1 mainController];
  if (v6)
  {
    v7 = v6;
    [v6 dismiss:5];
  }
}

char *sub_10005DDD8()
{
  v1 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v1);
  v3 = v60 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v72 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v73 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = v60 - v11;
  v12 = sub_100005DCC(&unk_1001BBAA0);
  v13 = __chkstk_darwin(v12);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v63 = v60 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v60 - v19;
  __chkstk_darwin(v18);
  v69 = v60 - v21;
  result = [v0 mainController];
  if (result)
  {
    v66 = v1;
    v67 = v7;
    v64 = v12;
    v65 = result;
    v71 = v8;
    v68 = v5;
    v76 = *&result[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session];
    v23 = v76;
    sub_100005DCC(&unk_1001BE1A0);
    Optional.unwrap(_:file:line:)();

    v24 = v74;
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_10000D298(v25, qword_1001BAF20);
    v27 = v24;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v70 = v27;
    if (v30)
    {
      v61 = v4;
      v31 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      v74 = v60[0];
      *v31 = 136315138;
      v32 = [v27 beaconId];
      v60[1] = v26;
      if (v32)
      {
        v33 = v32;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v36 = v71;
      v35 = v72;
      (*(v72 + 56))(v20, v34, 1, v71);
      v37 = v20;
      v38 = v69;
      sub_100066AC8(v37, v69, &unk_1001BBAA0);
      v39 = v38;
      v40 = v63;
      sub_100005EB8(v39, v63, &unk_1001BBAA0);
      if ((*(v35 + 48))(v40, 1, v36) == 1)
      {
        v41 = 0x8000000100146530;
        v42 = 0xD000000000000013;
      }

      else
      {
        v43 = v62;
        (*(v35 + 32))(v62, v40, v36);
        sub_10005F638(&qword_1001BBAB0, &type metadata accessor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v44;
        (*(v35 + 8))(v43, v36);
      }

      sub_10001259C(v69, &unk_1001BBAA0);
      v45 = sub_10002065C(v42, v41, &v74);

      *(v31 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v28, v29, "beaconID: %s", v31, 0xCu);
      sub_1000083B0(v60[0]);

      v4 = v61;
      v27 = v70;
    }

    else
    {

      v35 = v72;
    }

    v46 = [v27 beaconId];
    v47 = v68;
    v48 = v71;
    if (v46)
    {
      v49 = v46;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    (*(v35 + 56))(v15, v50, 1, v48);
    Optional.unwrap(_:file:line:)();
    sub_10001259C(v15, &unk_1001BBAA0);
    v74 = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v74 = 0xD000000000000013;
    v75 = 0x80000001001463C0;
    v51._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v51);

    v53 = v74;
    v52 = v75;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v74 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10002065C(v53, v52, &v74);
      _os_log_impl(&_mh_execute_header, v54, v55, "Opening findmy at %s", v56, 0xCu);
      sub_1000083B0(v57);

      v35 = v72;
    }

    URL.init(string:)();

    v58 = v67;
    Optional.unwrap(_:file:line:)();
    sub_10001259C(v3, &qword_1001BA7B0);
    (*(v47 + 16))(v3, v58, v4);
    (*(v47 + 56))(v3, 0, 1, v4);
    v59 = v65;
    sub_10003BFDC(0, v3, 0, 0, 2832);

    sub_10001259C(v3, &qword_1001BA7B0);
    (*(v47 + 8))(v58, v4);
    return (*(v35 + 8))(v73, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005E7B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_tv;
  *&v3[v6] = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController] = 0;
  v7 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_data;
  *&v3[v7] = sub_10005C41C();
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for B389DoneViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t sub_10005E8B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_10005E924(void *a1)
{
  v3 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_tv;
  *&v1[v3] = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController] = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_data;
  *&v1[v4] = sub_10005C41C();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for B389DoneViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_10005EAB4(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  type metadata accessor for B389FeatureTableViewCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *&v1[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_data];
  v8 = IndexPath.row.getter();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v50 = v1;
  v9 = v7 + (v8 << 6);
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(v9 + 64);
  v15 = *(v9 + 72);
  v16 = *(v9 + 80);
  v17 = *(v9 + 88);
  v18 = (v6 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration);
  v19 = *(v6 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration);
  v20 = *(v6 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration + 8);
  v52 = v6;
  v21 = *(v6 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration + 16);
  v22 = v18[3];
  *v18 = v12;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  v23 = v17;

  swift_bridgeObjectRetain_n();
  v24 = v15;

  v25 = v20;
  v26 = v52;
  sub_100017484(v19, v25, v21, v22);
  sub_100016D48();
  v51 = v24;

  v27._countAndFlagsBits = 0x4C5449544255535FLL;
  v27._object = 0xE900000000000045;
  String.append(_:)(v27);
  if (v16 == 1)
  {
    v28 = String._bridgeToObjectiveC()();

    v29 = sub_100126B8C(v28);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v23)
  {

    v30 = v50;
    swift_getAtKeyPath();

    v31 = [objc_opt_self() mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();

    v34 = sub_1001279D0(v31, v32, v33);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005DCC(&unk_1001BBB70);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10016CCE0;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_10000BF44();
    *(v35 + 32) = v11;
    *(v35 + 40) = v10;
    v26 = v52;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v36 = [objc_opt_self() mainBundle];
    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();

    v39 = sub_1001279D0(v36, v37, v38);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v40 = *(v26 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel);
  if (!v40)
  {
    goto LABEL_13;
  }

  v41 = v40;
  v42 = String._bridgeToObjectiveC()();

  [v41 setText:v42];

  v43 = [objc_opt_self() mainBundle];
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = sub_1001279D0(v43, v44, v45);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = *(v26 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel);
  if (v47)
  {
    v48 = v47;
    v49 = String._bridgeToObjectiveC()();

    [v48 setText:v49];

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for B389SetupMainViewController.PairingState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for B389SetupMainViewController.PairingState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for B389SetupMainViewController.PairingState(uint64_t result, int a2, int a3)
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

uint64_t sub_10005F1B4(uint64_t a1)
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

uint64_t sub_10005F1D0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_10005F204()
{
  result = qword_1001BBA40;
  if (!qword_1001BBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBA40);
  }

  return result;
}

void sub_10005F258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v13 = a2;
  v12 = a5;
  v8(a2, v9, v11, a4, a5);
}

uint64_t sub_10005F314(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (a4 & 1) != 0 && a3 == 1;
      }

      if ((a4 & 1) != 0 && a3 == 2)
      {
        return 1;
      }
    }

    else if ((a4 & 1) != 0 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return (a4 & 1) != 0 && a3 == 3;
  }

  if (a1 == 4)
  {
    return (a4 & 1) != 0 && a3 == 4;
  }

  return (a4 & 1) != 0 && a3 > 4;
}

unint64_t sub_10005F408()
{
  result = qword_1001BBA50;
  if (!qword_1001BBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBA50);
  }

  return result;
}

uint64_t sub_10005F45C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F4B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005F52C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10005F5D4()
{
  result = qword_1001BBA80;
  if (!qword_1001BBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBA80);
  }

  return result;
}

uint64_t sub_10005F638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005F734()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005F788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005F7E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F858(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10005F8A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10005F8FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {

    v4 = a3;
  }
}

void sub_10005F958(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100126B8C(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_1001279D0(v8, v9, v7);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100127AD0(v11);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100127AD0(v16);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = String._bridgeToObjectiveC()();

  v27[4] = sub_1000673D8;
  v27[5] = v18;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_10001BE90;
  v27[3] = &unk_100191518;
  v20 = _Block_copy(v27);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v15 addAction:v22];
  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100127AD0(v23);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v21 actionWithTitle:v25 style:1 handler:0];

  [v15 addAction:v26];
  [v15 setPreferredAction:v22];
  [a1 presentViewController:v15 animated:1 completion:0];
}

BOOL sub_10005FD40()
{
  v0 = [objc_opt_self() sharedConnection];
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 effectiveBoolValueForSetting:MCFeatureFindMyDeviceAllowed];
  v3 = MCFeatureFindMyFriendsAllowed;
  v4 = [v1 effectiveBoolValueForSetting:v3];

  return v2 != 2 && v4 != 2;
}

uint64_t sub_10005FDEC()
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BAF20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "takeBKSAssertion()", v3, 2u);
  }

  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processIdentifier];

  v6 = objc_allocWithZone(BKSProcessAssertion);
  v7 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10003BEBC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BA87C;
  aBlock[3] = &unk_1001915B8;
  v8 = _Block_copy(aBlock);

  v9 = [v6 initWithPID:v5 flags:15 reason:9 name:v7 withHandler:v8];
  _Block_release(v8);

  sub_100005DCC(&qword_1001BBC10);
  Optional.unwrap(_:file:line:)();

  return aBlock[0];
}

void sub_100060030(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100126B8C(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_1001279D0(v8, v9, v7);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100127AD0(v11);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100127AD0(v16);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  v19 = String._bridgeToObjectiveC()();

  v22[4] = sub_1000669E4;
  v22[5] = v18;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10001BE90;
  v22[3] = &unk_100191310;
  v20 = _Block_copy(v22);

  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v15 addAction:v21];
  [v15 setPreferredAction:v21];
  [a1 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_100060384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100060424, v5, v4);
}

uint64_t sub_100060424()
{
  v1 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v2 = v0[3];
  v16 = v0[2];
  v17 = v0[4];
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100126B8C(v3);

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v0[9] = v7;
  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100126B8C(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[10] = v12;
  v0[11] = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  v0[12] = v13;
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v2;
  v13[5] = v17;
  v13[6] = v10;
  v13[7] = v12;
  v13[8] = v16;
  v14 = swift_task_alloc();
  v0[13] = v14;
  *v14 = v0;
  v14[1] = sub_1000606A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000606A0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100060844;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1000607E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000607E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060844()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000608D8(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for PreferenceError();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Device();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for ClientOrigin();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v1[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v6;
  v1[17] = v5;

  return _swift_task_switch(sub_100060ABC, v6, v5);
}

uint64_t sub_100060ABC()
{
  (*(v0[12] + 104))(v0[13], enum case for ClientOrigin.other(_:), v0[11]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100060BA0;
  v2 = v0[14];

  return Session.init(_:)(v2);
}

uint64_t sub_100060BA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[19] = a1;

  v4 = swift_task_alloc();
  v2[20] = v4;
  *v4 = v3;
  v4[1] = sub_100060CF4;
  v5 = v2[10];

  return Session.activeLocationSharingDevice(cached:)(v5, 1);
}

uint64_t sub_100060CF4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100061E0C;
  }

  else
  {
    v5 = sub_100060E30;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100060E30()
{
  if (Device.isThisDevice.getter())
  {

    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BAF20);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Me device is this device.", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = Device.deviceName.getter();
    v13 = v12;
    v0[22] = v12;
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_10006105C;
    v15 = v0[3];

    return sub_100060384(v15, v11, v13);
  }
}

uint64_t sub_10006105C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10006127C;
  }

  else
  {
    v5 = sub_1000611B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000611B4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006127C()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[24];
  v0[2] = v1;
  v0[25] = v1;
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  if (swift_dynamicCast())
  {
    if ((*(v0[5] + 88))(v0[6], v0[4]) == enum case for PreferenceError.missingMeDevice(_:))
    {

      v2 = swift_task_alloc();
      v0[26] = v2;
      *v2 = v0;
      v2[1] = sub_10006150C;
      v3 = v0[9];

      return Session.activeLocationSharingDevice(cached:)(v3, 0);
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No active me device.", v7, 2u);
  }

  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_100061B60;
  v9 = v0[3];

  return sub_100060384(v9, 0, 0);
}

uint64_t sub_10006150C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100062084;
  }

  else
  {
    v5 = sub_100061648;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100061648()
{
  if (Device.isThisDevice.getter())
  {

    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BAF20);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Me device is this device.", v4, 2u);
    }

    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = Device.deviceName.getter();
    v12 = v11;
    v0[28] = v11;
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_100061860;
    v14 = v0[3];

    return sub_100060384(v14, v10, v12);
  }
}

uint64_t sub_100061860()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100061A88;
  }

  else
  {
    v5 = sub_1000619B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000619B8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100061A88()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100061B60()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100061D50;
  }

  else
  {
    v5 = sub_100061C9C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100061C9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100061D50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100061E0C()
{
  v1 = v0[21];
  v0[2] = v1;
  v0[25] = v1;
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  if (swift_dynamicCast())
  {
    if ((*(v0[5] + 88))(v0[6], v0[4]) == enum case for PreferenceError.missingMeDevice(_:))
    {

      v2 = swift_task_alloc();
      v0[26] = v2;
      *v2 = v0;
      v2[1] = sub_10006150C;
      v3 = v0[9];

      return Session.activeLocationSharingDevice(cached:)(v3, 0);
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "No active me device.", v7, 2u);
  }

  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_100061B60;
  v9 = v0[3];

  return sub_100060384(v9, 0, 0);
}

uint64_t sub_100062084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100062150()
{
  v1 = sub_100005DCC(&qword_1001BBB68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000621E4(uint64_t a1)
{
  v3 = *(sub_100005DCC(&qword_1001BBB68) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003D2DC(a1, v4);
}

uint64_t sub_100062260()
{
  v1 = sub_100005DCC(&qword_1001BBB68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100062330(uint64_t a1)
{
  v4 = *(sub_100005DCC(&qword_1001BBB68) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006242C;

  return sub_10003D4D4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10006242C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100062520@<X0>(void *a1@<X8>)
{
  result = sub_10005C8E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100062554(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v46);
  v6 = &v43 - v5;
  v45 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v45);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v9 - 8);
  v49 = &v43 - v10;
  v11 = sub_100005DCC(&unk_1001BBAA0);
  v12 = __chkstk_darwin(v11 - 8);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = &v43 - v15;
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BAF20);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "didConnect: %@", v22, 0xCu);
    sub_10001259C(v23, &unk_1001BBA60);
  }

  v25 = [v19 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v3;
  v27 = *(v3 + 56);
  v27(v17, 0, 1, v2);
  v28 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  v29 = v47;
  swift_beginAccess();
  v30 = v29 + v28;
  v31 = v49;
  sub_100005EB8(v30, v49, &unk_1001BE180);
  v32 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    __break(1u);
    return;
  }

  sub_100025418(v49 + *(v32 + 24), v8, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v48;
    (*(v26 + 32))(v48, v8, v2);
    v27(v33, 0, 1, v2);
  }

  else
  {
    v33 = v48;
    v27(v48, 1, 1, v2);
    sub_10005F788(v8, type metadata accessor for B389PresentationConfig.Mode);
  }

  v34 = *(v46 + 48);
  sub_100005EB8(v17, v6, &unk_1001BBAA0);
  sub_100005EB8(v33, &v6[v34], &unk_1001BBAA0);
  v35 = *(v26 + 48);
  if (v35(v6, 1, v2) != 1)
  {
    v37 = v44;
    sub_100005EB8(v6, v44, &unk_1001BBAA0);
    if (v35(&v6[v34], 1, v2) != 1)
    {
      v38 = &v6[v34];
      v39 = v43;
      (*(v26 + 32))(v43, v38, v2);
      sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
      v40 = v37;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v26 + 8);
      v42(v39, v2);
      sub_10001259C(v48, &unk_1001BBAA0);
      sub_10001259C(v17, &unk_1001BBAA0);
      v42(v40, v2);
      sub_10001259C(v6, &unk_1001BBAA0);
      v36 = sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
      if ((v41 & 1) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_10001259C(v48, &unk_1001BBAA0);
    sub_10001259C(v17, &unk_1001BBAA0);
    (*(v26 + 8))(v37, v2);
LABEL_14:
    sub_10001259C(v6, &unk_1001BBBC0);
    sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
    return;
  }

  sub_10001259C(v33, &unk_1001BBAA0);
  sub_10001259C(v17, &unk_1001BBAA0);
  if (v35(&v6[v34], 1, v2) != 1)
  {
    goto LABEL_14;
  }

  sub_10001259C(v6, &unk_1001BBAA0);
  v36 = sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
LABEL_16:
  *(v47 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState) = 2;
  sub_10003872C(v36);
}

void sub_100062D04(void *a1, uint64_t a2)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "didFailToConnect: %@", v8, 0xCu);
    sub_10001259C(v9, &unk_1001BBA60);
  }

  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = sub_1001279D0(v12, v13, v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v11 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_1001279D0(v19, v20, v21);

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_10004BB2C(v16, v18, a2, v23, v25, 0);

  sub_10003872C(v26);
}

void sub_100062FC8(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = static os_log_type_t.error.getter();
  }

  else
  {
    v6 = static os_log_type_t.default.getter();
  }

  v7 = v6;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BAF20);
  v9 = a1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v7))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v9;
    *v12 = v9;
    *(v11 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v14 = v9;
      v15 = Error.localizedDescription.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0x8000000100145470;
      v18 = v9;
      v15 = 0xD000000000000015;
    }

    v19 = sub_10002065C(v15, v17, &v36);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v7, "didDisconnectPeripheral: %@, error: %s", v11, 0x16u);
    sub_10001259C(v12, &unk_1001BBA60);

    sub_1000083B0(v13);
  }

  if (*(v3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState) != 2)
  {
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = sub_1001279D0(v22, v23, v24);

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [v21 mainBundle];
    v30 = String._bridgeToObjectiveC()();
    v31 = String._bridgeToObjectiveC()();
    v32 = sub_1001279D0(v29, v30, v31);

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    sub_10004BB2C(v26, v28, a2, v33, v35, 0);
  }

  sub_10003872C(v20);
}

void sub_100063390(void *a1, void *a2)
{
  v3 = v2;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BAF20);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v7;
    v12[1] = v8;
    v13 = v7;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "didLosePeripheral: %@, forType: %@", v11, 0x16u);
    sub_100005DCC(&unk_1001BBA60);
    swift_arrayDestroy();
  }

  if (v3[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didTapStart] == 1)
  {
    if (v3[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState] != 2)
    {
      v15 = objc_opt_self();
      v16 = [v15 mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = sub_1001279D0(v16, v17, v18);

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = [v15 mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = String._bridgeToObjectiveC()();
      v26 = sub_1001279D0(v23, v24, v25);

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      sub_10004BB2C(v20, v22, 0, v27, v29, 0);
    }
  }

  else
  {
    [v3 dismiss:7];
  }

  sub_100039158(0);
}

void sub_1000636C0(void *a1, uint64_t a2)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = a1;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = a1;
    *(v8 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v11 = v5;
      v12 = Error.localizedDescription.getter();
      v14 = v13;
    }

    else
    {
      v14 = 0x8000000100145470;
      v15 = v5;
      v12 = 0xD000000000000015;
    }

    v16 = sub_10002065C(v12, v14, &v33);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "peerDidFailToCompletePairing: %@, error: %s", v8, 0x16u);
    sub_10001259C(v9, &unk_1001BBA60);

    sub_1000083B0(v10);
  }

  v17 = objc_opt_self();
  v18 = [v17 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = sub_1001279D0(v18, v19, v20);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [v17 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_1001279D0(v25, v26, v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  sub_10004BB2C(v22, v24, a2, v29, v31, 0);

  sub_10003872C(v32);
}

void sub_100063A2C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v59);
  v6 = &v55 - v5;
  v58 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v58);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_100005DCC(&unk_1001BBAA0);
  v13 = __chkstk_darwin(v12 - 8);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v62 = &v55 - v16;
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000D298(v19, qword_1001BAF20);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v63 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57 = v8;
    v26 = v2;
    v27 = v6;
    v28 = v18;
    v29 = a1;
    v30 = v25;
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v29;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "peerDidCompletePairing: %@", v24, 0xCu);
    sub_10001259C(v30, &unk_1001BBA60);
    a1 = v29;
    v18 = v28;
    v6 = v27;
    v2 = v26;
    v8 = v57;

    v3 = v63;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = [v20 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = *(v3 + 56);
  v33(v18, 0, 1, v2);
  v34 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  v35 = v61;
  swift_beginAccess();
  sub_100005EB8(v35 + v34, v11, &unk_1001BE180);
  v36 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v36 - 8) + 48))(v11, 1, v36) == 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v37 = *(v36 + 24);
  v57 = v11;
  sub_100025418(&v11[v37], v8, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v63;
    v39 = v62;
    (*(v63 + 32))();
    v33(v39, 0, 1, v2);
  }

  else
  {
    v40 = v62;
    v33(v62, 1, 1, v2);
    v41 = v8;
    v39 = v40;
    sub_10005F788(v41, type metadata accessor for B389PresentationConfig.Mode);
    v38 = v63;
  }

  v42 = *(v59 + 48);
  sub_100005EB8(v18, v6, &unk_1001BBAA0);
  sub_100005EB8(v39, &v6[v42], &unk_1001BBAA0);
  v43 = *(v38 + 48);
  v44 = v43(v6, 1, v2) == 1;
  v45 = v39;
  v46 = v60;
  if (v44)
  {
    sub_10001259C(v45, &unk_1001BBAA0);
    sub_10001259C(v18, &unk_1001BBAA0);
    if (v43(&v6[v42], 1, v2) != 1)
    {
LABEL_16:
      sub_10001259C(v6, &unk_1001BBBC0);
      sub_10005F788(v57, type metadata accessor for B389PresentationConfig);
      return;
    }

    sub_10001259C(v6, &unk_1001BBAA0);
    v47 = sub_10005F788(v57, type metadata accessor for B389PresentationConfig);
    goto LABEL_18;
  }

  sub_100005EB8(v6, v60, &unk_1001BBAA0);
  v48 = v43(&v6[v42], 1, v2);
  if (v48 == 1)
  {
    sub_10001259C(v62, &unk_1001BBAA0);
    sub_10001259C(v18, &unk_1001BBAA0);
    (*(v63 + 8))(v46, v2);
    goto LABEL_16;
  }

  v49 = v63;
  v50 = &v6[v42];
  v51 = v56;
  (*(v63 + 32))(v56, v50, v2);
  sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v49 + 8);
  v53(v51, v2);
  sub_10001259C(v62, &unk_1001BBAA0);
  sub_10001259C(v18, &unk_1001BBAA0);
  v53(v46, v2);
  sub_10001259C(v6, &unk_1001BBAA0);
  v47 = sub_10005F788(v57, type metadata accessor for B389PresentationConfig);
  if (v52)
  {
LABEL_18:
    v54 = v35 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState;
    *v54 = 3;
    *(v54 + 8) = 1;
    sub_10003872C(v47);
  }
}

void sub_100064208(void *a1, uint64_t a2)
{
  v80 = a2;
  v89 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v89);
  v88 = &v79 - v3;
  v86 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v86);
  v87 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v5 - 8);
  v7 = &v79 - v6;
  v8 = sub_100005DCC(&unk_1001BBAA0);
  v9 = __chkstk_darwin(v8 - 8);
  v79 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v79 - v12;
  v13 = __chkstk_darwin(v11);
  v82 = &v79 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v84 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v81 = &v79 - v25;
  __chkstk_darwin(v24);
  v27 = &v79 - v26;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000D298(v28, qword_1001BAF20);
  v30 = a1;
  v83 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v91 = v27;
  v92 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = v19;
    v36 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v36 = a1;
    v37 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "peerDidRequestPairing: %@", v34, 0xCu);
    sub_10001259C(v36, &unk_1001BBA60);
    v19 = v35;
    v27 = v91;

    v21 = v92;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v38 = [v30 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  v40 = v90;
  swift_beginAccess();
  sub_100005EB8(v40 + v39, v7, &unk_1001BE180);
  v41 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v41 - 8) + 48))(v7, 1, v41) == 1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v42 = v87;
  sub_100025418(&v7[*(v41 + 24)], v87, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v21 + 32))(v19, v42, v20);
    v43 = *(v21 + 56);
    v43(v19, 0, 1, v20);
  }

  else
  {
    v43 = *(v21 + 56);
    v43(v19, 1, 1, v20);
    sub_10005F788(v42, type metadata accessor for B389PresentationConfig.Mode);
  }

  v44 = v19;
  sub_10005F788(v7, type metadata accessor for B389PresentationConfig);
  v45 = *(v21 + 16);
  v45(v17, v27, v20);
  v43(v17, 0, 1, v20);
  v46 = v88;
  v47 = *(v89 + 48);
  sub_100005EB8(v17, v88, &unk_1001BBAA0);
  v89 = v44;
  sub_100005EB8(v44, v46 + v47, &unk_1001BBAA0);
  v48 = *(v21 + 48);
  if (v48(v46, 1, v20) == 1)
  {
    sub_10001259C(v17, &unk_1001BBAA0);
    v49 = v48(v46 + v47, 1, v20);
    v50 = v91;
    if (v49 == 1)
    {
      v51 = sub_10001259C(v46, &unk_1001BBAA0);
LABEL_21:
      v74 = v90 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState;
      *v74 = v80;
      *(v74 + 8) = 0;
      sub_10003872C(v51);
      sub_10001259C(v89, &unk_1001BBAA0);
      (*(v92 + 8))(v50, v20);
      return;
    }
  }

  else
  {
    v52 = v82;
    sub_100005EB8(v46, v82, &unk_1001BBAA0);
    if (v48(v46 + v47, 1, v20) != 1)
    {
      v70 = v92;
      v71 = v46 + v47;
      v72 = v81;
      (*(v92 + 32))(v81, v71, v20);
      sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
      LODWORD(v87) = dispatch thunk of static Equatable.== infix(_:_:)();
      v73 = *(v70 + 8);
      v73(v72, v20);
      sub_10001259C(v17, &unk_1001BBAA0);
      v73(v52, v20);
      v51 = sub_10001259C(v88, &unk_1001BBAA0);
      v50 = v91;
      if (v87)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    sub_10001259C(v17, &unk_1001BBAA0);
    (*(v92 + 8))(v52, v20);
    v50 = v91;
  }

  sub_10001259C(v46, &unk_1001BBBC0);
LABEL_16:
  v53 = v84;
  v45(v84, v50, v20);
  v54 = v89;
  v55 = v85;
  sub_100005EB8(v89, v85, &unk_1001BBAA0);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v87 = v56;
    LODWORD(v90) = v57;
    v58 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v93 = v88;
    *v58 = 136315394;
    v86 = sub_10005F638(&qword_1001BBAB0, &type metadata accessor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = v92;
    v63 = *(v92 + 8);
    v63(v53, v20);
    v64 = sub_10002065C(v59, v61, &v93);

    *(v58 + 4) = v64;
    *(v58 + 12) = 2080;
    v65 = v79;
    sub_100005EB8(v55, v79, &unk_1001BBAA0);
    if (v48(v65, 1, v20) == 1)
    {
      v66 = 0x8000000100146530;
      v67 = 0xD000000000000013;
    }

    else
    {
      v75 = v81;
      (*(v62 + 32))(v81, v65, v20);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v76;
      v63(v75, v20);
    }

    sub_10001259C(v85, &unk_1001BBAA0);
    v77 = sub_10002065C(v67, v66, &v93);

    *(v58 + 14) = v77;
    v78 = v87;
    _os_log_impl(&_mh_execute_header, v87, v90, "Identifier mismatch, skip pairing request: %s != %s", v58, 0x16u);
    swift_arrayDestroy();

    sub_10001259C(v89, &unk_1001BBAA0);
    v63(v91, v20);
  }

  else
  {

    sub_10001259C(v55, &unk_1001BBAA0);
    v68 = v53;
    v69 = *(v92 + 8);
    v69(v68, v20);
    sub_10001259C(v54, &unk_1001BBAA0);
    v69(v50, v20);
  }
}

void sub_100064D88(unint64_t a1)
{
  v2 = v1;
  if (qword_1001B9318 != -1)
  {
LABEL_26:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "didDiscoverCharacteristicsFor: %@\n\n", v8, 0xCu);
    sub_10001259C(v9, &unk_1001BBA60);
  }

  v11 = [v5 services];
  v50 = v2;
  if (!v11)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v13 = v11;
  sub_1000122EC(0, &unk_1001BE1F0);
  a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
LABEL_7:
      v15 = 0;
      v16 = _swiftEmptyArrayStorage;
      v2 = a1 & 0xC000000000000001;
      do
      {
        v17 = v15;
        while (1)
        {
          if (v2)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v18 = *(a1 + 8 * v17 + 32);
          }

          v19 = v18;
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v20 = [v18 characteristics];
          if (v20)
          {
            break;
          }

          ++v17;
          if (v15 == v14)
          {
            goto LABEL_29;
          }
        }

        v21 = v20;
        sub_1000122EC(0, &qword_1001BBBD0);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100032B48(0, v16[2] + 1, 1, v16);
        }

        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          v16 = sub_100032B48((v23 > 1), v24 + 1, 1, v16);
        }

        v16[2] = v24 + 1;
        v16[v24 + 4] = v22;
      }

      while (v15 != v14);
      goto LABEL_29;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_7;
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_29:

  v25 = sub_100037178(v16);

  v2 = v50;
LABEL_30:
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_44;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return;
  }

  v27 = 0;
  v52 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
  v53 = v25 & 0xC000000000000001;
  *&v12 = 136315138;
  v49 = v12;
  do
  {
    if (v53)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v25 + 8 * v27 + 32);
    }

    v31 = v30;
    v32 = [v30 UUID];
    v33 = [v32 UUIDString];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = sub_10000764C();
    if (v34 != 19)
    {
      v35 = v34;
      swift_beginAccess();
      v36 = sub_1000DC954(v35);
      swift_endAccess();
      if (v36 != 19)
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v55[0] = v51;
          *v39 = v49;
          v40 = sub_100006E18(v35);
          v42 = v26;
          v43 = v25;
          v44 = sub_10002065C(v40, v41, v55);

          *(v39 + 4) = v44;
          v25 = v43;
          v26 = v42;
          _os_log_impl(&_mh_execute_header, v37, v38, "Discovered %s", v39, 0xCu);
          sub_1000083B0(v51);
          v2 = v50;
        }

        swift_beginAccess();
        v28 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = *(v2 + v52);
        *(v2 + v52) = 0x8000000000000000;
        sub_100035718(v28, v35, isUniquelyReferenced_nonNull_native);
        *(v2 + v52) = v54;
        swift_endAccess();
      }
    }

    ++v27;
  }

  while (v26 != v27);
LABEL_44:

  sub_10003872C(v45);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "done iterating chars", v48, 2u);
  }
}

void sub_1000653BC(void *a1, void *a2)
{
  v5 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 value];
  if (v9)
  {
    v127 = a1;
    v128 = v2;
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v12;

    v13 = [a2 UUID];
    v14 = String._bridgeToObjectiveC()();
    v15 = objc_opt_self();
    v16 = [v15 UUIDWithString:v14];

    sub_1000122EC(0, &qword_1001BBAF8);
    v17 = static NSObject.== infix(_:_:)();

    v129 = v13;
    if (v17)
    {
      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000D298(v18, qword_1001BAF20);
      v19 = v130;
      sub_100005E64(v11, v130);
      sub_100005E64(v11, v19);
      sub_100005E64(v11, v19);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      sub_1000083FC(v11, v19);
      v22 = os_log_type_enabled(v20, v21);
      v23 = v128;
      if (v22)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v134[0] = v25;
        *v24 = 136315394;
        sub_100005E64(v11, v19);
        v26 = Data.description.getter();
        v28 = v27;
        sub_1000083FC(v11, v130);
        v29 = sub_10002065C(v26, v28, v134);

        *(v24 + 4) = v29;
        v19 = v130;
        *(v24 + 12) = 2048;
        v30 = Data.hashValue.getter();
        sub_1000083FC(v11, v19);
        *(v24 + 14) = v30;
        sub_1000083FC(v11, v19);
        _os_log_impl(&_mh_execute_header, v20, v21, "didUpdateValueFor s1UUID: %s, hash: %ld", v24, 0x16u);
        sub_1000083B0(v25);
      }

      else
      {
        sub_1000083FC(v11, v19);
        sub_1000083FC(v11, v19);
      }

      v57 = &v23[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_storeS1];
      swift_beginAccess();
      v58 = &unk_1001C3000;
      if (*(v57 + 1) >> 60 != 15)
      {
        swift_beginAccess();
        if (*(v57 + 1) >> 60 == 15)
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        Data.append(_:)();
        swift_endAccess();
LABEL_49:
        v21 = v23;
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v89, v90))
        {

          v89 = v21;
          goto LABEL_63;
        }

        v91 = swift_slowAlloc();
        *v91 = 134217984;
        v92 = *(v57 + 1);
        if (v92 >> 60 == 15)
        {
LABEL_115:

          __break(1u);
          goto LABEL_116;
        }

        v93 = *v57;
        v94 = v92 >> 62;
        if ((v92 >> 62) > 1)
        {
          if (v94 != 2)
          {
            v93 = 0;
            goto LABEL_62;
          }

          v97 = v93 + 16;
          v95 = *(v93 + 16);
          v96 = *(v97 + 8);
          v75 = __OFSUB__(v96, v95);
          v93 = v96 - v95;
          if (!v75)
          {
            goto LABEL_62;
          }

          __break(1u);
        }

        else if (!v94)
        {
          v93 = BYTE6(v92);
LABEL_62:
          *(v91 + 4) = v93;
          v98 = v91;

          _os_log_impl(&_mh_execute_header, v89, v90, "Current s1 length: %ld", v98, 0xCu);

LABEL_63:

          v99 = *(v57 + 1);
          if (v99 >> 60 == 15)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          v100 = *v57;
          v101 = v99 >> 62;
          if ((v99 >> 62) > 1)
          {
            if (v101 != 2)
            {
              v100 = 0;
              goto LABEL_74;
            }

            v104 = v100 + 16;
            v102 = *(v100 + 16);
            v103 = *(v104 + 8);
            v75 = __OFSUB__(v103, v102);
            v100 = v103 - v102;
            if (!v75)
            {
LABEL_74:
              v105 = v21 + v58[343];
              if (v105[8])
              {
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
                goto LABEL_111;
              }

              if (*v105 < v100)
              {
                v106 = Logger.logObject.getter();
                v107 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v106, v107))
                {
                  v108 = swift_slowAlloc();
                  *v108 = 0;
                  _os_log_impl(&_mh_execute_header, v106, v107, "length went over", v108, 2u);
                }
              }

              v109 = *(v57 + 1);
              if (v109 >> 60 == 15)
              {
                goto LABEL_110;
              }

              if (v105[8])
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              v110 = *v57;
              v111 = *v105;
              sub_100005E64(*v57, *(v57 + 1));
              sub_100019A38(v111, v110, v109, v133);
              v112 = *v57;
              v113 = *(v57 + 1);
              *v57 = v133[0];
              v55 = sub_100025404(v112, v113);
              v114 = *(v57 + 1);
              if (v114 >> 60 == 15)
              {
LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

              v115 = *v57;
              v116 = v114 >> 62;
              v56 = v129;
              if ((v114 >> 62) <= 1)
              {
                if (!v116)
                {
                  v115 = BYTE6(v114);
                  goto LABEL_92;
                }

LABEL_89:
                v75 = __OFSUB__(HIDWORD(v115), v115);
                LODWORD(v115) = HIDWORD(v115) - v115;
                if (!v75)
                {
                  v115 = v115;
                  goto LABEL_92;
                }

                goto LABEL_105;
              }

              if (v116 == 2)
              {
                v119 = v115 + 16;
                v117 = *(v115 + 16);
                v118 = *(v119 + 8);
                v75 = __OFSUB__(v118, v117);
                v115 = v118 - v117;
                if (v75)
                {
                  __break(1u);
                  goto LABEL_89;
                }
              }

              else
              {
                v115 = 0;
              }

LABEL_92:
              if ((v105[8] & 1) == 0)
              {
                if (v115 < *v105)
                {
                  v120 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
                  swift_beginAccess();
                  v121 = *(&v21->isa + v120);
                  if (*(v121 + 16))
                  {

                    v122 = sub_100032E10(1);
                    if (v123)
                    {
                      v124 = *(*(v121 + 56) + 8 * v122);
                      v125 = v124;
                    }

                    else
                    {
                      v124 = 0;
                    }
                  }

                  else
                  {
                    v124 = 0;
                  }

                  v131 = v124;
                  sub_100005DCC(&unk_1001BE1B0);
                  Optional.unwrap(_:file:line:)();

                  v126 = v132;
                  [v127 readValueForCharacteristic:v132];
                }

                goto LABEL_101;
              }

              goto LABEL_113;
            }

            __break(1u);
          }

          else if (!v101)
          {
            v100 = BYTE6(v99);
            goto LABEL_74;
          }

          v75 = __OFSUB__(HIDWORD(v100), v100);
          LODWORD(v100) = HIDWORD(v100) - v100;
          if (v75)
          {
            __break(1u);
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v100 = v100;
          goto LABEL_74;
        }

        v75 = __OFSUB__(HIDWORD(v93), v93);
        LODWORD(v93) = HIDWORD(v93) - v93;
        if (v75)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v93 = v93;
        goto LABEL_62;
      }

      v59 = &v23[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_targetS1Length];
      if (v23[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_targetS1Length + 8] == 1)
      {
        v60 = v19 >> 62;
        if (v60 > 1)
        {
          if (v60 != 2)
          {
            goto LABEL_116;
          }

          v74 = *(v11 + 16);
          v73 = *(v11 + 24);
          v75 = __OFSUB__(v73, v74);
          v61 = v73 - v74;
          if (!v75)
          {
LABEL_39:
            if (v61 >= 2)
            {
              v76 = Data._Representation.subscript.getter();
              v77 = Data._Representation.subscript.getter();
              sub_100005DCC(&qword_1001BA7E8);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10016CCD0;
              *(inited + 32) = v76;
              *(inited + 33) = v77;
              v79 = sub_100024150(inited);
              swift_setDeallocating();
              v80 = Logger.logObject.getter();
              v81 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                *v82 = 33554688;
                *(v82 + 4) = v79;
                _os_log_impl(&_mh_execute_header, v80, v81, "s1 target length: %hu", v82, 6u);
              }

              *v59 = v79;
              v59[8] = 0;
              if (v60 == 2)
              {
                v83 = *(v11 + 24);
                v19 = v130;
                sub_100005E64(v11, v130);
                v58 = &unk_1001C3000;
              }

              else
              {
                v58 = &unk_1001C3000;
                if (v60 == 1)
                {
                  v83 = v11 >> 32;
                  v19 = v130;
                  sub_100005E64(v11, v130);
                }

                else
                {
                  v19 = v130;
                  v83 = BYTE6(v130);
                }
              }

              if (v83 < 2)
              {
                goto LABEL_117;
              }

              v84 = Data._Representation.subscript.getter();
              v86 = v85;
              sub_1000083FC(v11, v19);
              v87 = *v57;
              v88 = *(v57 + 1);
              *v57 = v84;
              *(v57 + 1) = v86;
              sub_100025404(v87, v88);
              goto LABEL_49;
            }

LABEL_116:
            __break(1u);
            swift_unexpectedError();
            __break(1u);
LABEL_117:
            __break(1u);
            return;
          }

          __break(1u);
        }

        else if (!v60)
        {
          v61 = BYTE6(v130);
          goto LABEL_39;
        }

        LODWORD(v61) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v61 = v61;
        goto LABEL_39;
      }

      __break(1u);
    }

    else
    {
      v38 = v13;
      v39 = String._bridgeToObjectiveC()();
      v40 = [v15 UUIDWithString:v39];

      v41 = static NSObject.== infix(_:_:)();
      if (v41)
      {
        v19 = v130;
        if (qword_1001B9318 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_10000D298(v42, qword_1001BAF20);
        sub_100005E64(v11, v19);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        sub_1000083FC(v11, v19);
        v45 = os_log_type_enabled(v43, v44);
        v46 = v128;
        if (v45)
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v132 = v48;
          *v47 = 136315138;
          *&v134[0] = 0;
          *(&v134[0] + 1) = 0xE000000000000000;
          *&v133[0] = v11;
          *(&v133[0] + 1) = v130;
          (*(v6 + 104))(v8, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v5);
          sub_10005F5D4();
          DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
          (*(v6 + 8))(v8, v5);
          v49 = sub_10002065C(*&v134[0], *(&v134[0] + 1), &v132);

          *(v47 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v43, v44, "didUpdateValueFor payload: %s", v47, 0xCu);
          sub_1000083B0(v48);

          v19 = v130;
        }

        sub_100005E64(v11, v19);
        sub_1000076A0(v11, v19, v134);
        v50 = &v46[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue];
        v51 = *&v46[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 48];
        v133[2] = *&v46[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 32];
        v133[3] = v51;
        v133[4] = *&v46[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 64];
        v52 = *&v46[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 16];
        v133[0] = *&v46[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue];
        v133[1] = v52;
        v53 = v134[1];
        *v50 = v134[0];
        *(v50 + 1) = v53;
        v54 = v134[3];
        *(v50 + 2) = v134[2];
        *(v50 + 3) = v54;
        *(v50 + 4) = v134[4];
        v55 = sub_10001259C(v133, &qword_1001BBAF0);
        v56 = v129;
        goto LABEL_101;
      }

      v62 = [v38 UUIDString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = sub_10000764C();
      v23 = v128;
      v19 = v130;
      v56 = v129;
      if (v55 == 19)
      {
LABEL_101:
        sub_10003872C(v55);

        sub_1000083FC(v11, v19);
        return;
      }

      LOBYTE(v21) = v55;
      if (qword_1001B9318 == -1)
      {
LABEL_28:
        v63 = type metadata accessor for Logger();
        sub_10000D298(v63, qword_1001BAF20);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v134[0] = v67;
          *v66 = 136315138;
          v68 = sub_100006E18(v21);
          v70 = sub_10002065C(v68, v69, v134);

          *(v66 + 4) = v70;
          v19 = v130;
          _os_log_impl(&_mh_execute_header, v64, v65, "didUpdateValueFor %s", v66, 0xCu);
          sub_1000083B0(v67);
        }

        v56 = v129;
        v71 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
        swift_beginAccess();
        sub_100005E64(v11, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v133[0] = *&v23[v71];
        *&v23[v71] = 0x8000000000000000;
        sub_100035860(v11, v19, v21, isUniquelyReferenced_nonNull_native);
        *&v23[v71] = *&v133[0];
        v55 = swift_endAccess();
        goto LABEL_101;
      }
    }

    swift_once();
    goto LABEL_28;
  }

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000D298(v31, qword_1001BAF20);
  v32 = a2;
  v130 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v130, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v32;
    *v35 = v32;
    v36 = v32;
    _os_log_impl(&_mh_execute_header, v130, v33, "didUpdateValueFor %@ value = nil", v34, 0xCu);
    sub_10001259C(v35, &unk_1001BBA60);
  }

  v37 = v130;
}

void sub_10006638C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = static os_log_type_t.error.getter();
  }

  else
  {
    v4 = static os_log_type_t.default.getter();
  }

  v5 = v4;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BAF20);
  v7 = a1;
  swift_errorRetain();
  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v5))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v12 = v7;
      v13 = Error.localizedDescription.getter();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000100145470;
      v16 = v7;
      v13 = 0xD000000000000015;
    }

    v17 = sub_10002065C(v13, v15, v19);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v5, "didWriteValueFor characteristic: %@, error? %s", v9, 0x16u);
    sub_10001259C(v10, &unk_1001BBA60);

    sub_1000083B0(v11);
  }

  if (!a2)
  {
    swift_beginAccess();
    sub_10001ACB0(v7);
    v18 = swift_endAccess();
    sub_10003872C(v18);
  }
}

id sub_100066608(uint64_t a1)
{
  v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_pairPressed_] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_topInfoLbl;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bottomInfoLbl;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor] = 0;
  v5 = &v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bypassBatteryTooLowCheck];
  *v6 = 0xD00000000000001CLL;
  v6[1] = 0x8000000100147C60;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for B389StartViewController();
  return objc_msgSendSuper2(&v8, "initWithMainController:", a1);
}

uint64_t sub_100066718(void *a1, id a2)
{
  v3 = [a2 view];
  v4 = [a1 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_1000122EC(0, &qword_1001B9FB8);
      v6 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v6 = 1;
      return v6 & 1;
    }

    v6 = 0;
    v3 = v4;
  }

  return v6 & 1;
}

id sub_1000667D8(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_imageName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_body];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_btn] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleLbl] = 0;
  v10 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_msgLbl;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_lockImageView;
  *&v1[v11] = [objc_allocWithZone(UIImageView) init];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for B389AppleIDViewController(0);
  return objc_msgSendSuper2(&v13, "initWithMainController:", a1);
}

id sub_10006691C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_btn] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_msgLbl;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_avatarImageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_lockImageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for B389PairLockedViewController();
  return objc_msgSendSuper2(&v7, "initWithMainController:", a1);
}

uint64_t sub_100066A14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for B389PresentationConfig.Mode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066AC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005DCC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100066B30()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100066B88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066BFC()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  if (*(v0 + 32))
  {
  }

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100066D44()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_10003C568(v2, v3, v4, v5, v6);
}

uint64_t sub_100066DC4()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_100066F18()
{
  v1 = *(sub_100005DCC(&qword_1001BA7B0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003C848(v3, v4, v0 + v2, v5);
}

id sub_100066FB4()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t sub_100066FCC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100067014()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000670A4()
{
  result = qword_1001BBC40;
  if (!qword_1001BBC40)
  {
    sub_1000122EC(255, &qword_1001BC220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBC40);
  }

  return result;
}

uint64_t sub_10006710C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100067118(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005DCC(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100067180()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000671E4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  if (a2 >> 60 != 15)
  {
    sub_1000083FC(result, a2);
    sub_1000083FC(a3, a4);
    sub_1000083FC(a5, a6);
    sub_1000083FC(a7, a8);

    return sub_1000083FC(a9, a10);
  }

  return result;
}

uint64_t sub_1000673DC()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BBD50);
  v1 = sub_10000D298(v0, qword_1001BBD50);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000674A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, v4 = [v2 text], v3, v4))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleEmoji];
    *v8 = v5;
    v8[1] = v7;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_100051A10();
  }
}

void sub_1000675B8()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    [v2 _setLocalOverrideTraitCollection:v3];

    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = sub_1001279D0(v5, v6, v7);

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v0 setTitle:v8];

    v9 = [v4 mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = sub_1001279D0(v9, v10, v11);

    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [v0 setSubtitle:v12];

    [v0 setDismissalType:1];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();
    v31 = sub_100069034;
    v32 = v13;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001BE90;
    v30 = &unk_100191860;
    v15 = _Block_copy(&v27);
    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:0 handler:v15];

    _Block_release(v15);

    [v0 setDismissButtonAction:v17];

    v18 = *&v0[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_continueAction];
    [v18 setEnabled:0];

    v19 = [v4 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = sub_1001279D0(v19, v20, v21);

    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    v23 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v31 = sub_100069054;
    v32 = v23;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001BE90;
    v30 = &unk_1001918B0;
    v25 = _Block_copy(&v27);

    v26 = [v16 actionWithTitle:v22 style:1 handler:v25];

    _Block_release(v25);

    sub_100067D84();
  }

  else
  {
    __break(1u);
  }
}

void sub_100067B00()
{
  if (qword_1001B9350 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BBD50);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      __break(1u);
      return;
    }

    swift_getObjectType();

    v6 = _typeName(_:qualified:)();
    v8 = sub_10002065C(v6, v7, v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %s", v3, 0xCu);
    sub_1000083B0(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      [v11 dismiss:5];
    }
  }
}

void sub_100067CFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
    if (v2)
    {
      v3 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC];
      if (v3)
      {
        sub_100127D64(v2, v3);
        sub_10003872C(v4);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100067D84()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_emojiContainer];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemFillColor];
  [v2 setBackgroundColor:v4];

  v5 = [v2 layer];
  [v5 setCornerRadius:41.5];

  v6 = [v2 layer];
  v7 = [v3 systemBlueColor];
  v8 = [v7 CGColor];

  [v6 setBorderColor:v8];
  v9 = [v2 layer];
  [v9 setBorderWidth:3.0];

  [v2 setClipsToBounds:1];
  v10 = [v1 contentView];
  [v10 addSubview:v2];

  v11 = *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_selectedEmojiLabel];
  v69 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_opt_self() systemFontOfSize:50.0];
  [v11 setFont:v12];

  [v11 setAdjustsFontSizeToFitWidth:1];
  [v2 addSubview:v11];
  v72 = [objc_opt_self() configurationWithPointSize:3 weight:2 scale:50.0];
  v13 = String._bridgeToObjectiveC()();
  v71 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v72];

  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_emojiButton];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = v14;
  [v14 setImage:v71 forState:0];
  v15 = [v3 tertiaryLabelColor];
  [v14 setTintColor:v15];

  [v14 addTarget:v1 action:"handleEmojiButtonTapped" forControlEvents:64];
  [v2 addSubview:v14];
  v16 = *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_hiddenEmojiField];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setHidden:1];
  [v16 setDelegate:v1];
  [v2 addSubview:v16];
  v70 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10016E8A0;
  v18 = [v2 topAnchor];
  v19 = [v1 contentView];
  v20 = [v19 mainContentGuide];

  v21 = [v20 topAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];

  *(v17 + 32) = v22;
  v23 = [v2 centerXAnchor];
  v24 = [v1 contentView];
  v25 = [v24 mainContentGuide];

  v26 = [v25 centerXAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];

  *(v17 + 40) = v27;
  v28 = [v2 heightAnchor];
  v29 = [v28 constraintEqualToConstant:83.0];

  *(v17 + 48) = v29;
  v30 = [v2 widthAnchor];
  v31 = [v2 heightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v17 + 56) = v32;
  v33 = [v2 bottomAnchor];
  v34 = [v1 contentView];
  v35 = [v34 mainContentGuide];

  v36 = [v35 bottomAnchor];
  v37 = [v33 constraintLessThanOrEqualToAnchor:v36];

  *(v17 + 64) = v37;
  v38 = [v69 centerXAnchor];
  v39 = [v2 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v17 + 72) = v40;
  v41 = [v69 centerYAnchor];
  v42 = [v2 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v17 + 80) = v43;
  v44 = [v69 leadingAnchor];
  v45 = [v2 leadingAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

  *(v17 + 88) = v46;
  v47 = [v69 trailingAnchor];
  v48 = [v2 trailingAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor:v48];

  *(v17 + 96) = v49;
  v50 = [v68 centerXAnchor];
  v51 = [v2 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v17 + 104) = v52;
  v53 = [v68 centerYAnchor];
  v54 = [v2 centerYAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v17 + 112) = v55;
  v56 = [v68 leadingAnchor];
  v57 = [v2 leadingAnchor];
  v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57];

  *(v17 + 120) = v58;
  v59 = [v68 trailingAnchor];
  v60 = [v2 trailingAnchor];
  v61 = [v59 constraintLessThanOrEqualToAnchor:v60];

  *(v17 + 128) = v61;
  v62 = [v16 centerXAnchor];
  v63 = [v2 centerXAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v17 + 136) = v64;
  v65 = [v16 centerYAnchor];
  v66 = [v2 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:25.0];

  *(v17 + 144) = v67;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v70 activateConstraints:isa];
}

void sub_100068A48(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *&a1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_emojiContainer];
  v9 = a1;
  v6 = [v5 layer];
  v7 = [objc_opt_self() *a4];
  v8 = [v7 CGColor];

  [v6 setBorderColor:v8];
}

id sub_100068B14(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(UIView);
  v5 = a1;
  v6 = [v4 init];
  *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_emojiContainer] = v6;
  v7 = [objc_opt_self() buttonWithType:1];
  *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_emojiButton] = v7;
  type metadata accessor for EmojiTextField();
  *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_hiddenEmojiField] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_selectedEmojiLabel] = v8;
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_1001279D0(v9, v10, v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10006909C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100191928;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();

  v18 = [v17 actionWithTitle:v12 style:0 handler:v16];

  _Block_release(v16);

  *&v1[OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_continueAction] = v18;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "initWithContentView:", 0);
}

BOOL sub_100068E2C()
{
  v1 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_hiddenEmojiField);
    v4 = String._bridgeToObjectiveC()();
    [v3 setText:v4];

    [*(v0 + OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_emojiButton) setImage:0 forState:0];
    v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_selectedEmojiLabel);
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_continueAction);
    v8 = [v3 text];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String.count.getter();

      v11 = v10 > 0;
    }

    else
    {
      v11 = 0;
    }

    [v7 setEnabled:v11];
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_continueAction);
    v13 = [*(v0 + OBJC_IVAR____TtC18SharingViewService29B389CustomEmojiViewController_hiddenEmojiField) text];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = String.count.getter();

      v16 = v15 > 0;
    }

    else
    {
      v16 = 0;
    }

    [v12 setEnabled:v16];
  }

  return IsSingleEmoji == 0;
}

uint64_t sub_100068FFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006903C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006905C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000691D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiTextField();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100069228()
{
  v151.receiver = v0;
  v151.super_class = type metadata accessor for D2DSetupStartViewController();
  objc_msgSendSuper2(&v151, "viewDidLoad");
  v1 = &v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v160 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v161 = v2;
  v4 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v5 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v162 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v163 = v5;
  v6 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v7 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v156 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v157 = v6;
  v8 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v9 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v158 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v159 = v9;
  v10 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v152 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v153 = v10;
  v11 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v154 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v155 = v11;
  aBlock = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v12 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v122 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v123 = v12;
  v13 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v124 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v125 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v118 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v119 = v14;
  v15 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v120 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v121 = v15;
  v16 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v116 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v117 = v16;
  v164 = v152;
  v173 = v160;
  v174 = v4;
  v17 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v175 = v162;
  v176 = v17;
  v169 = v156;
  v170 = v8;
  v171 = v158;
  v172 = v3;
  *&v105 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v18 = *(&v153 + 1);
  v19 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v167 = v154;
  v168 = v7;
  v165 = v19;
  v166 = *(&v153 + 1);
  if (sub_100013CE0(&v164) == 1)
  {
    v139 = aBlock;
    *&v140 = v105;
    *(&v140 + 1) = v18;
    v147 = v122;
    v148 = v123;
    v149 = v124;
    v150 = v125;
    v143 = v118;
    v144 = v119;
    v145 = v120;
    v146 = v121;
    v141 = v116;
    v142 = v117;
    sub_100019558(&v152, v128);
    sub_1000195C8(&v139);
  }

  else
  {
    v139 = aBlock;
    *&v140 = v105;
    *(&v140 + 1) = v18;
    v147 = v122;
    v148 = v123;
    v149 = v124;
    v150 = v125;
    v143 = v118;
    v144 = v119;
    v145 = v120;
    v146 = v121;
    v141 = v116;
    v142 = v117;
    sub_100019558(&v152, v128);
    v20 = v18;
    sub_1000195C8(&v139);
    if (v18)
    {
      v21 = [objc_allocWithZone(UIImageView) initWithImage:v20];
      [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v21 setContentMode:1];
      v22 = [v0 contentView];
      [v22 addSubview:v21];

      v23 = [v0 contentView];
      v24 = [v23 mainContentGuide];

      v77 = objc_opt_self();
      sub_100005DCC(&qword_1001BBB00);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10016D4A0;
      v26 = [v21 heightAnchor];
      v27 = [v26 constraintEqualToConstant:142.0];

      *(v25 + 32) = v27;
      v28 = [v21 topAnchor];
      v29 = [v24 topAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      *(v25 + 40) = v30;
      v31 = [v21 bottomAnchor];
      v32 = [v24 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];

      *(v25 + 48) = v33;
      v34 = [v21 centerXAnchor];

      v35 = [v24 centerXAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v25 + 56) = v36;
      sub_10000D1F4();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v77 activateConstraints:isa];
    }
  }

  v38 = *(v1 + 7);
  v39 = *(v1 + 9);
  v135 = *(v1 + 8);
  v136 = v39;
  v40 = *(v1 + 11);
  v41 = *(v1 + 9);
  v137 = *(v1 + 10);
  v138 = v40;
  v42 = *(v1 + 5);
  v131 = *(v1 + 4);
  v132 = v42;
  v43 = *(v1 + 7);
  v133 = *(v1 + 6);
  v134 = v43;
  v44 = *(v1 + 1);
  v128[0] = *v1;
  v128[1] = v44;
  v45 = *(v1 + 3);
  v46 = *(v1 + 1);
  v129 = *(v1 + 2);
  v130 = v45;
  v78 = *v1;
  v79 = v46;
  v80 = *(v1 + 2);
  v47 = *(v1 + 9);
  v85 = *(v1 + 8);
  v86 = v47;
  v48 = *(v1 + 11);
  v87 = *(v1 + 10);
  v88 = v48;
  v49 = *(v1 + 5);
  v81 = *(v1 + 4);
  v82 = v49;
  v50 = *(v1 + 7);
  v83 = *(v1 + 6);
  v84 = v50;
  v141 = v129;
  v140 = v44;
  v139 = v128[0];
  v146 = v38;
  v145 = v133;
  v144 = v42;
  v143 = v131;
  v150 = *(v1 + 11);
  v149 = v137;
  v51 = v45;
  v148 = v41;
  v147 = v135;
  v142 = v45;
  if (sub_100013CE0(&v139) == 1)
  {
    v116 = v78;
    v117 = v79;
    v118 = v80;
    v119 = v51;
    v124 = v85;
    v125 = v86;
    v126 = v87;
    v127 = v88;
    v120 = v81;
    v121 = v82;
    v122 = v83;
    v123 = v84;
    sub_100019558(v128, &aBlock);
    sub_1000195C8(&v116);
  }

  else
  {
    v116 = v78;
    v117 = v79;
    v118 = v80;
    v119 = v51;
    v124 = v85;
    v125 = v86;
    v126 = v87;
    v127 = v88;
    v120 = v81;
    v121 = v82;
    v122 = v83;
    v123 = v84;
    sub_100019558(v128, &aBlock);

    sub_1000195C8(&v116);
    if (*(&v51 + 1))
    {
      v52 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v53 = String._bridgeToObjectiveC()();

      *&v106 = sub_10006A408;
      *(&v106 + 1) = v52;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v105 = sub_10001BE90;
      *(&v105 + 1) = &unk_1001919A0;
      v54 = _Block_copy(&aBlock);
      v55 = [objc_opt_self() actionWithTitle:v53 style:0 handler:v54];

      _Block_release(v54);
    }
  }

  v56 = *(v1 + 7);
  v57 = *(v1 + 9);
  v112 = *(v1 + 8);
  v113 = v57;
  v58 = *(v1 + 11);
  v59 = *(v1 + 9);
  v114 = *(v1 + 10);
  v115 = v58;
  v60 = *(v1 + 5);
  v108 = *(v1 + 4);
  v109 = v60;
  v61 = *(v1 + 7);
  v62 = *(v1 + 5);
  v110 = *(v1 + 6);
  v111 = v61;
  v63 = *(v1 + 1);
  aBlock = *v1;
  v105 = v63;
  v64 = *(v1 + 3);
  v65 = v64;
  v106 = *(v1 + 2);
  v107 = v64;
  v66 = *(v1 + 1);
  v100 = *v1;
  v101 = v66;
  v67 = *(v1 + 3);
  v102 = *(v1 + 2);
  v103 = v67;
  v68 = *(v1 + 8);
  v69 = *(v1 + 10);
  v97 = *(v1 + 9);
  v98 = v69;
  v99 = *(v1 + 11);
  v70 = *(v1 + 6);
  v93 = *(v1 + 5);
  v94 = v70;
  v95 = *(v1 + 7);
  v96 = v68;
  v118 = v106;
  v119 = v65;
  v116 = aBlock;
  v117 = v63;
  v121 = v62;
  v122 = v110;
  v71 = *(v1 + 11);
  v126 = v114;
  v127 = v71;
  v124 = v112;
  v125 = v59;
  v72 = v108;
  v123 = v56;
  v120 = v108;
  if (sub_100013CE0(&v116) == 1)
  {
    v81 = v100;
    v82 = v101;
    v83 = v102;
    v84 = v103;
    v85 = v72;
    v90 = v97;
    v91 = v98;
    v92 = v99;
    v86 = v93;
    v87 = v94;
    v88 = v95;
    v89 = v96;
    sub_100019558(&aBlock, &v78);
    sub_1000195C8(&v81);
  }

  else
  {
    v81 = v100;
    v82 = v101;
    v83 = v102;
    v84 = v103;
    v85 = v72;
    v90 = v97;
    v91 = v98;
    v92 = v99;
    v86 = v93;
    v87 = v94;
    v88 = v95;
    v89 = v96;
    sub_100019558(&aBlock, &v78);

    sub_1000195C8(&v81);
    if (*(&v72 + 1))
    {
      v73 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v74 = String._bridgeToObjectiveC()();

      *&v80 = sub_10006A3CC;
      *(&v80 + 1) = v73;
      *&v78 = _NSConcreteStackBlock;
      *(&v78 + 1) = 1107296256;
      *&v79 = sub_10001BE90;
      *(&v79 + 1) = &unk_100191978;
      v75 = _Block_copy(&v78);
      v76 = [objc_opt_self() actionWithTitle:v74 style:1 handler:v75];

      _Block_release(v75);
    }
  }
}

void sub_100069C04()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000AD8A8();
    swift_unknownObjectRelease();
  }
}

void sub_100069CB8(char a1)
{
  v49.receiver = v1;
  v49.super_class = type metadata accessor for D2DSetupStartViewController();
  objc_msgSendSuper2(&v49, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v57 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v58 = v3;
  v4 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v59 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v60 = v4;
  v5 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v6 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v53 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v54 = v5;
  v7 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v8 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v55 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v56 = v7;
  v9 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v50[0] = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v50[1] = v9;
  v10 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v51 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v52 = v10;
  v11 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v12 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v46 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v47 = v12;
  v48 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v13 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v42 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v43 = v13;
  v44 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v45 = v11;
  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 120];
  v15 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 168];
  v39 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 152];
  v40 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 136];
  v37 = v14;
  v38 = v16;
  v61[0] = v50[0];
  v61[1] = v9;
  v61[5] = v8;
  v61[6] = v55;
  v17 = v56;
  v41 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 184];
  v61[3] = v6;
  v61[4] = v53;
  v61[2] = v51;
  v63 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 120];
  v18 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 136];
  v19 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 152];
  v20 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 184];
  v66 = *&v1[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 168];
  v65 = v19;
  v64 = v18;
  v67 = v20;
  v62 = v56;
  if (sub_100013CE0(v61) == 1)
  {
    v28 = v46;
    v29 = v47;
    v30 = v48;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v45;
    v32 = v37;
    v31 = v17;
    v36 = v41;
    v35 = v40;
    v34 = v39;
    v33 = v38;
    sub_100019558(v50, v23);
    sub_1000195C8(&v24);
  }

  else
  {
    v28 = v46;
    v29 = v47;
    v30 = v48;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v45;
    v32 = v37;
    v31 = v17;
    v36 = v41;
    v35 = v40;
    v34 = v39;
    v33 = v38;
    sub_100019558(v50, v23);

    sub_1000195C8(&v24);
    if (v17)
    {

      return;
    }
  }

  v21 = [objc_opt_self() defaultCenter];
  v22 = String._bridgeToObjectiveC()();
  [v21 addObserver:v1 selector:"didReceiveDeviceSetupNotification:" name:v22 object:0 suspensionBehavior:4];
}

void sub_10006A054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  v40 = *(a3 + 128);
  v41 = v5;
  v6 = *(a3 + 176);
  v42 = *(a3 + 160);
  v43 = v6;
  v7 = *(a3 + 80);
  v36 = *(a3 + 64);
  v37 = v7;
  v8 = *(a3 + 112);
  v38 = *(a3 + 96);
  v39 = v8;
  v9 = *(a3 + 16);
  v32 = *a3;
  v33 = v9;
  v10 = *(a3 + 48);
  v34 = *(a3 + 32);
  v35 = v10;
  nullsub_4(&v32);
  v11 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v12 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v44[8] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v44[9] = v12;
  v13 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v44[10] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v44[11] = v13;
  v14 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v44[4] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v44[5] = v14;
  v15 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v44[6] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v44[7] = v15;
  v16 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v44[0] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v44[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v44[2] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v44[3] = v17;
  v18 = v41;
  *(v11 + 8) = v40;
  *(v11 + 9) = v18;
  v19 = v43;
  *(v11 + 10) = v42;
  *(v11 + 11) = v19;
  v20 = v37;
  *(v11 + 4) = v36;
  *(v11 + 5) = v20;
  v21 = v39;
  *(v11 + 6) = v38;
  *(v11 + 7) = v21;
  v22 = v33;
  *v11 = v32;
  *(v11 + 1) = v22;
  v23 = v35;
  *(v11 + 2) = v34;
  *(v11 + 3) = v23;
  sub_100013C0C(a3, &v31);
  sub_1000195C8(v44);
  v24 = String._bridgeToObjectiveC()();
  [v3 setTitle:v24];

  [v3 setAttributedSubtitle:*(a3 + 40)];
  if (*(a3 + 112))
  {
    v25 = String._bridgeToObjectiveC()();
    [v3 showActivityIndicatorWithStatus:v25];
  }

  if (*(a3 + 136))
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v3 dismissalConfirmationActionWithTitle:v26 message:v27 confirmButtonTitle:v28 cancelButtonTitle:v29];

    [v3 setDismissButtonAction:v30];
  }
}

id sub_10006A33C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupStartViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006A394()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006A3E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006A40C()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BBE70);
  v1 = sub_10000D298(v0, qword_1001BBE70);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006A4D4()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = [objc_allocWithZone(UIImageView) init];

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() imageNamed:v2];

  if (v3)
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v6 = v5;

    v7 = [v3 _applicationIconImageForFormat:2 precomposed:0 scale:v6];
  }

  else
  {
    v7 = 0;
  }

  [v1 setImage:v7];

  v8 = v1;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 contentView];
  [v9 addSubview:v8];

  v10 = [v0 contentView];
  v11 = [v10 mainContentGuide];

  v12 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10016D4A0;
  v14 = [v8 centerXAnchor];
  v15 = [v11 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  v17 = [v8 centerYAnchor];
  v18 = [v11 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v13 + 40) = v19;
  v20 = [v8 topAnchor];
  v21 = [v11 topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

  *(v13 + 48) = v22;
  v23 = [v8 bottomAnchor];

  v24 = [v11 bottomAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

  *(v13 + 56) = v25;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  if (*&v0[OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_buttonText + 8])
  {
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v28 = String._bridgeToObjectiveC()();

    v32[4] = sub_10006AFE4;
    v32[5] = v27;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 1107296256;
    v32[2] = sub_10001BE90;
    v32[3] = &unk_1001919F0;
    v29 = _Block_copy(v32);
    v30 = [objc_opt_self() actionWithTitle:v28 style:0 handler:v29];

    _Block_release(v29);

    v31 = [v0 addAction:v30];
  }
}

void sub_10006AA38()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (qword_1001B9358 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000D298(v7, qword_1001BBE70);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = 56;
        _os_log_impl(&_mh_execute_header, v8, v9, "openSettingsPressed in %ld", v10, 0xCu);
      }

      v11 = OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_onDoneURL;
      swift_beginAccess();
      sub_10006B004(v4 + v11, v2);
      sub_1000C1744(0, v2, 0, 0, 58);

      sub_10000D310(v2);
      return;
    }
  }

  if (qword_1001B9358 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001BBE70);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "mainController nil while initializing primaryAction", v15, 2u);
  }
}

uint64_t type metadata accessor for AirTagAppleIDViewController()
{
  result = qword_1001BBEB8;
  if (!qword_1001BBEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006AEAC()
{
  sub_10006AF54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006AF54()
{
  if (!qword_1001BB578)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BB578);
    }
  }
}

uint64_t sub_10006AFAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006AFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006B004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BA7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B074()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BBEC8);
  v1 = sub_10000D298(v0, qword_1001BBEC8);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006B13C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v4];

  v5 = a1[8];
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService34PasswordSharingStartViewController_activityIndicatorTitle];
  *v6 = a1[7];
  *(v6 + 1) = v5;

  v7 = [objc_opt_self() configurationWithPointSize:72.0];
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  [v10 setTintColor:a1[6]];
  v11 = v10;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 contentView];
  [v12 addSubview:v11];

  v13 = [v1 contentView];
  v14 = [v13 mainContentGuide];

  v15 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10016D4A0;
  v17 = [v11 topAnchor];
  v18 = [v14 topAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v11 bottomAnchor];
  v21 = [v14 bottomAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v11 centerXAnchor];
  v24 = [v14 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v16 + 48) = v25;
  v26 = [v11 centerYAnchor];

  v27 = [v14 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v16 + 56) = v28;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = String._bridgeToObjectiveC()();
  v35[4] = sub_10006BF24;
  v35[5] = v30;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_10001BE90;
  v35[3] = &unk_100191A80;
  v32 = _Block_copy(v35);
  v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];

  _Block_release(v32);

  v34 = [v1 addAction:v33];
}

void sub_10006B638()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10006BC8C();
  }
}

uint64_t sub_10006B68C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PasswordSharingStartViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  [v0 setDismissalType:3];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = String._bridgeToObjectiveC()();
  v6[4] = sub_10006BF44;
  v6[5] = v1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001BE90;
  v6[3] = &unk_100191AA8;
  v3 = _Block_copy(v6);
  v4 = [objc_opt_self() actionWithTitle:v2 style:0 handler:v3];

  _Block_release(v3);

  [v0 setDismissButtonAction:v4];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + 40) = &off_100191A18;
    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10006B82C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1001B9360 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BBEC8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Start dismissed", v5, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000A4AB4(5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10006B9B0(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PasswordSharingStartViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  if (qword_1001B9360 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BBEC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start ViewDidAppear", v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A5054(*(v2 + OBJC_IVAR____TtC18SharingViewService34PasswordSharingStartViewController_type));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10006BB38(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PasswordSharingStartViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  if (qword_1001B9360 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BBEC8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Start ViewDidDisappear", v6, 2u);
  }
}

uint64_t sub_10006BC8C()
{
  v1 = v0;
  if (qword_1001B9360 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BBEC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Share button tapped", v5, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC18SharingViewService34PasswordSharingStartViewController_type))
    {
      sub_1000A4AB4(5);
    }

    else
    {
      sub_1000A5D30();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10006BE44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasswordSharingStartViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006BEEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BF2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006BF54()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BBF20);
  v1 = sub_10000D298(v0, qword_1001BBF20);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006C01C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "viewDidLoad");
  if (qword_1001B9368 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BBF20);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "AirTagStartViewController viewDidLoad", v12, 2u);
  }

  sub_1000974B4(96);
  v13 = String._bridgeToObjectiveC()();

  [v1 setTitle:v13];

  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v15 = Strong;
  v16 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_10006D0C4(v15 + v16, v8);
  v17 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
  {
    __break(1u);
    return;
  }

  sub_10006D134(&v8[*(v17 + 24)], v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_10006D198(v5, type metadata accessor for B389PresentationConfig.Mode);
      sub_10006D198(v8, type metadata accessor for B389PresentationConfig);
      goto LABEL_14;
    }

    v19 = v5[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(v5, v20);
    sub_10006D198(v8, type metadata accessor for B389PresentationConfig);
    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v21 = *v5;
  sub_10006D198(v8, type metadata accessor for B389PresentationConfig);
  if (v21 == 1)
  {
LABEL_12:
    aBlock = sub_1000974B4(106);
    v45 = v22;

    v23._countAndFlagsBits = 10;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);

    v24 = aBlock;
    v25 = v45;
    v26 = sub_1000974B4(107);
    v28 = v27;
    aBlock = v24;
    v45 = v25;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30 = String._bridgeToObjectiveC()();

    [v1 setSubtitle:v30];
  }

LABEL_14:
  v31 = sub_10006D1F8();
  v32 = SFIsGreenTeaDevice();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    sub_1000BB690();
  }

  if (v31)
  {
    v35 = 10;
  }

  else
  {
    v35 = 8;
  }

  if (v31)
  {
    v36 = 9;
  }

  else
  {
    v36 = 7;
  }

  if (v32)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  sub_1000974B4(v37);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = String._bridgeToObjectiveC()();

  v48 = sub_10006D220;
  v49 = v38;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE90;
  v47 = &unk_100191B20;
  v40 = _Block_copy(&aBlock);
  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];

  _Block_release(v40);

  v42 = [v1 addAction:v41];
}

void sub_10006C5C4(uint64_t a1, uint64_t a2)
{
  v3[4] = sub_10006D228;
  v3[5] = a2;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10007F288;
  v3[3] = &unk_100191B48;
  v2 = _Block_copy(v3);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v2);
}

void sub_10006C67C(char a1)
{
  if (qword_1001B9368 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BBF20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirTagStartViewController unlocked device: %{BOOL}d", v5, 8u);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_1000BBB08(v7);

LABEL_12:
        return;
      }
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Nil mainController while initializing primaryAction", v11, 2u);
    }

    goto LABEL_12;
  }
}

void sub_10006C88C(char a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "viewWillAppear:", a1 & 1);
  if (qword_1001B9368 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_10000D298(v4, qword_1001BBF20);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "AirTagStartViewController viewWillAppear", v7, 2u);
    }

    v8 = [v2 contentView];
    v9 = [v8 auxiliaryViews];

    if (!v9)
    {
      __break(1u);
      return;
    }

    sub_10006D020();
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_19;
    }

LABEL_7:
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setAlpha:0.0];

      ++v12;
      if (v15 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_19:

  v16 = [v2 contentView];
  v17 = [v16 titleView];

  if (v17)
  {
    [v17 setAlpha:0.0];
  }

  v18 = [v2 contentView];
  v19 = [v18 subtitleLabel];

  if (v19)
  {
    [v19 setAlpha:0.0];
  }

  v20 = objc_opt_self();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23[4] = sub_10006D0A4;
  v23[5] = v21;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10001C544;
  v23[3] = &unk_100191AF8;
  v22 = _Block_copy(v23);

  [v20 animateWithDuration:65538 delay:v22 options:0 animations:1.5 completion:0.8];
  _Block_release(v22);
}

void sub_10006CC20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong contentView];

    v3 = [v2 auxiliaryViews];
    if (!v3)
    {
      __break(1u);
      return;
    }

    sub_10006D020();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 setAlpha:1.0];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 contentView];

    v13 = [v12 titleView];
    if (v13)
    {
      [v13 setAlpha:1.0];
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 contentView];

    v17 = [v16 subtitleLabel];
    if (v17)
    {
      [v17 setAlpha:1.0];
    }
  }
}

unint64_t sub_10006D020()
{
  result = qword_1001B9FB8;
  if (!qword_1001B9FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B9FB8);
  }

  return result;
}

uint64_t sub_10006D06C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006D0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006D0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&unk_1001BE180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for B389PresentationConfig.Mode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10006D240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  v37 = *(a3 + 128);
  v38 = v5;
  v6 = *(a3 + 176);
  v39 = *(a3 + 160);
  v40 = v6;
  v7 = *(a3 + 80);
  v33 = *(a3 + 64);
  v34 = v7;
  v8 = *(a3 + 112);
  v35 = *(a3 + 96);
  v36 = v8;
  v9 = *(a3 + 16);
  v29 = *a3;
  v30 = v9;
  v10 = *(a3 + 48);
  v31 = *(a3 + 32);
  v32 = v10;
  nullsub_4(&v29);
  v11 = &v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel];
  v12 = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 144];
  v41[8] = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 128];
  v41[9] = v12;
  v13 = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 176];
  v41[10] = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 160];
  v41[11] = v13;
  v14 = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 80];
  v41[4] = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 64];
  v41[5] = v14;
  v15 = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 112];
  v41[6] = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 96];
  v41[7] = v15;
  v16 = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 16];
  v41[0] = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel];
  v41[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 48];
  v41[2] = *&v3[OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel + 32];
  v41[3] = v17;
  v18 = v38;
  *(v11 + 8) = v37;
  *(v11 + 9) = v18;
  v19 = v40;
  *(v11 + 10) = v39;
  *(v11 + 11) = v19;
  v20 = v34;
  *(v11 + 4) = v33;
  *(v11 + 5) = v20;
  v21 = v36;
  *(v11 + 6) = v35;
  *(v11 + 7) = v21;
  v22 = v30;
  *v11 = v29;
  *(v11 + 1) = v22;
  v23 = v32;
  *(v11 + 2) = v31;
  *(v11 + 3) = v23;
  sub_100013C0C(a3, &v28);
  sub_1000195C8(v41);
  v24 = String._bridgeToObjectiveC()();
  [v3 setTitle:v24];

  [v3 setAttributedSubtitle:*(a3 + 40)];
  [v3 setNumberOfDigits:6];
  v25 = [v3 passcodeEntryView];
  v26 = String._bridgeToObjectiveC()();
  [v25 setText:v26];

  return [v3 hideActivityIndicator];
}

uint64_t sub_10006D3D0(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 showActivityIndicatorWithStatus:v3];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [a1 text];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_1000AE384(v6, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10006D550()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupManualAuthViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10006D5A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100020C84(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000122EC(0, &qword_1001BBBB8);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100020C84((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100005E14(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000122EC(0, &qword_1001BBBB8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100020C84((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100005E14(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10006D7A4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100020C84(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_100020C84((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      v7[2] = v14 + 1;
      sub_100005E14(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_10006D93C()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BBF90);
  v1 = sub_10000D298(v0, qword_1001BBF90);
  if (qword_1001B9298 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3870);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006DA04(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SFMoveToAppShareSheetSettings();
  v12 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a1;
  if (!a1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v14 = [v140 actions];
  if (!v14)
  {
LABEL_39:
    if (qword_1001B9370 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000D298(v56, qword_1001BBF90);
    v57 = v140;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136315138;
      v62 = [v57 actions];
      if (v62)
      {
        v63 = v62;
        sub_1000122EC(0, &qword_1001BD700);
        sub_1000701D8();
        v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v64 = 0;
      }

      *&v144 = v64;
      sub_100005DCC(&qword_1001BBFF8);
      v65 = String.init<A>(reflecting:)();
      v67 = sub_10002065C(v65, v66, aBlock);

      *(v60 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to get action for MoveToAppShareSheetViewController {actions: %s}", v60, 0xCu);
      sub_1000083B0(v61);
    }

    if (a2)
    {
      a2();
      v68 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100070158(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
      v69 = swift_allocError();
      (*(*(v68 - 8) + 104))(v70, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v68);
      sub_10006F8B0(0, v69);

      return;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v15 = v14;
  v126 = v11;
  v128 = v9;
  v133 = a3;
  v129 = a2;
  v132 = v4;
  v16 = sub_1000122EC(0, &qword_1001BD700);
  sub_1000701D8();
  v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v127 = v8;
  v131 = v17;
  v134 = v16;
  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v17 = v146;
    v18 = v147;
    v19 = v148;
    v20 = v149;
    v21 = v150;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v17 + 56);

    v20 = 0;
  }

  v130 = v19;
  v25 = (v19 + 64) >> 6;
  v137 = enum case for SFMoveToAppShareSheetSettings.reply(_:);
  v136 = (v12 + 104);
  v135 = (v12 + 8);
  while (v17 < 0)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31 || (*&v144 = v31, swift_dynamicCast(), v30 = aBlock[0], v28 = v20, v29 = v21, !aBlock[0]))
    {
LABEL_38:
      sub_100024148();

      a2 = v129;
      goto LABEL_39;
    }

LABEL_20:
    v141 = v20;
    v142 = v21;
    v32 = [v30 info];
    if (v32)
    {
      v33 = v32;
      v34 = v138;
      v35 = v139;
      (*v136)(v138, v137, v139);
      v36 = SFMoveToAppShareSheetSettings.rawValue.getter();
      (*v135)(v34, v35);
      LOBYTE(v34) = [v33 BOOLForSetting:v36];

      if (v34)
      {
        sub_100024148();

        v20 = v132;
        v37 = *&v132[OBJC_IVAR___SVSMoveToAppShareSheetViewController_replyAction];
        *&v132[OBJC_IVAR___SVSMoveToAppShareSheetViewController_replyAction] = v30;
        v38 = v30;

        v39 = &selRef_setDuration_;
        v40 = [v140 userInfo];
        if (v40)
        {
          v41 = v40;
          v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          aBlock[7] = static SFMoveToAppShareSheetSettings.encodedFiles.getter();
          aBlock[8] = v43;
          AnyHashable.init<A>(_:)();
          if (*(v42 + 16) && (v44 = sub_100032C7C(aBlock), (v45 & 1) != 0))
          {
            sub_10000BFEC(*(v42 + 56) + 32 * v44, &v144);
            sub_10000BF98(aBlock);

            if (*(&v145 + 1))
            {
              sub_100005DCC(&qword_1001BC008);
              if (swift_dynamicCast())
              {
                v140 = v38;
                v46 = aBlock[0];
                v47 = _swiftEmptyArrayStorage;
                aBlock[0] = _swiftEmptyArrayStorage;
                v48 = *(v46 + 16);

                v142 = v46;
                if (v48)
                {
                  v38 = 0;
                  v49 = (v46 + 40);
                  v39 = UISUISecurityScopedResource_ptr;
                  v139 = v48;
                  v138 = (v46 + 40);
                  do
                  {
                    v141 = v47;
                    v50 = v48 - v38;
                    v51 = &v49[16 * v38];
                    while (1)
                    {
                      if (v38 >= *(v46 + 16))
                      {
                        __break(1u);
                        goto LABEL_88;
                      }

                      v52 = *(v51 - 1);
                      v53 = *v51;
                      sub_1000122EC(0, &qword_1001BA6D0);
                      sub_1000122EC(0, &unk_1001BC010);
                      sub_100005E64(v52, v53);
                      v54 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                      sub_1000083FC(v52, v53);
                      if (v54)
                      {
                        break;
                      }

                      v20 = v132;
                      v46 = v142;
                      v51 += 2;
                      ++v38;
                      if (!--v50)
                      {
                        goto LABEL_60;
                      }
                    }

                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    v46 = v142;
                    v20 = v132;
                    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    ++v38;
                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v47 = aBlock[0];
                    v55 = v50 == 1;
                    v48 = v139;
                    v49 = v138;
                  }

                  while (!v55);
                }

                goto LABEL_61;
              }

LABEL_51:
              if (qword_1001B9370 != -1)
              {
LABEL_88:
                swift_once();
              }

              v71 = type metadata accessor for Logger();
              sub_10000D298(v71, qword_1001BBF90);
              v72 = v140;
              v73 = Logger.logObject.getter();
              v74 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v73, v74))
              {
                v75 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                aBlock[0] = v76;
                *v75 = 136315138;
                v77 = [v72 v39[299]];
                if (v77)
                {
                  v78 = v77;
                  v79 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                }

                else
                {
                  v79 = 0;
                }

                *&v144 = v79;
                sub_100005DCC(&qword_1001BBC58);
                v80 = String.init<A>(reflecting:)();
                v82 = sub_10002065C(v80, v81, aBlock);

                *(v75 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v73, v74, "Failed to get security scoped files for MoveToAppShareSheetViewController {userInfo: %s}", v75, 0xCu);
                sub_1000083B0(v76);
              }

              if (v129)
              {
                v129();
                v83 = type metadata accessor for SFAirDropReceive.Failure();
                sub_100070158(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
                v84 = swift_allocError();
                (*(*(v83 - 8) + 104))(v85, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v83);
                sub_10006F8B0(0, v84);

                return;
              }

              goto LABEL_93;
            }
          }

          else
          {

            sub_10000BF98(aBlock);
            v144 = 0u;
            v145 = 0u;
          }
        }

        else
        {
          v144 = 0u;
          v145 = 0u;
        }

        sub_10001259C(&v144, &qword_1001BBB40);
        goto LABEL_51;
      }
    }

    v20 = v28;
    v21 = v29;
  }

  v26 = v20;
  v27 = v21;
  v28 = v20;
  if (v21)
  {
LABEL_16:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v28 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      goto LABEL_38;
    }

    v27 = *(v18 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_60:
  v47 = v141;
LABEL_61:

  v86 = OBJC_IVAR___SVSMoveToAppShareSheetViewController_files;
  *&v20[OBJC_IVAR___SVSMoveToAppShareSheetViewController_files] = v47;
  v141 = v47;
  swift_bridgeObjectRetain_n();

  sub_10006F540();
  v87 = *&v20[v86];
  if (v87 >> 62)
  {
    v88 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = v140;
  v90 = _swiftEmptyArrayStorage;
  if (v88)
  {
    aBlock[0] = _swiftEmptyArrayStorage;

    sub_100020CA4(0, v88 & ~(v88 >> 63), 0);
    if (v88 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v91 = 0;
    v90 = aBlock[0];
    do
    {
      if ((v87 & 0xC000000000000001) != 0)
      {
        v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v92 = *(v87 + 8 * v91 + 32);
      }

      v93 = v92;
      v94 = v126;
      v95 = [v92 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = v90;
      v97 = v90[2];
      v96 = v90[3];
      if (v97 >= v96 >> 1)
      {
        sub_100020CA4(v96 > 1, v97 + 1, 1);
        v90 = aBlock[0];
      }

      ++v91;
      v90[2] = v97 + 1;
      (*(v128 + 32))(v90 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v97, v94, v127);
    }

    while (v88 != v91);

    v20 = v132;
    v89 = v140;
  }

  if (qword_1001B9370 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_10000D298(v98, qword_1001BBF90);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock[0] = v102;
    *v101 = 136315138;
    v103 = Array.description.getter();
    v105 = sub_10002065C(v103, v104, aBlock);
    v20 = v132;

    *(v101 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v99, v100, "Share Sheet being configured with files: %s", v101, 0xCu);
    sub_1000083B0(v102);
  }

  sub_10006D7A4(v90);
  v106 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v108 = [v106 initWithActivityItems:isa applicationActivities:0];

  v109 = OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet;
  v110 = *&v20[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet];
  *&v20[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet] = v108;

  v111 = [objc_opt_self() currentDevice];
  v112 = [v111 userInterfaceIdiom];

  if (v112 == 1)
  {
    v113 = *&v20[v109];
    if (v113)
    {
      [v113 setAllowsCustomPresentationStyle:1];
      v114 = *&v20[v109];
      if (v114)
      {
        [v114 setModalPresentationStyle:2];
        goto LABEL_81;
      }
    }
  }

  else
  {
LABEL_81:
    v115 = *&v20[v109];
    if (v115)
    {
      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100070278;
      aBlock[5] = v116;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006EF14;
      aBlock[3] = &unk_100191C10;
      v117 = _Block_copy(aBlock);
      v118 = v115;

      [v118 setCompletionWithItemsHandler:v117];
      _Block_release(v117);
    }
  }

  v119 = v20;
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v122 = 138412290;
    v124 = *&v20[v109];
    *(v122 + 4) = v124;
    *v123 = v124;
    v125 = v124;
    _os_log_impl(&_mh_execute_header, v120, v121, "Created Share Sheet: %@", v122, 0xCu);
    sub_10001259C(v123, &unk_1001BBA60);
  }

  if (v129)
  {
    v129();

    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_94:
  __break(1u);
}

void sub_10006EB98(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      if (qword_1001B9370 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000D298(v9, qword_1001BBF90);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_21;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      if (a1)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0xD000000000000015;
        v17 = 0x8000000100145470;
      }

      v27 = sub_10002065C(v15, v17, &v31);

      *(v13 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "Share Sheet succeeded with activity type %s", v13, 0xCu);
      sub_1000083B0(v14);
    }

    else
    {
      if (qword_1001B9370 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000D298(v18, qword_1001BBF90);
      v19 = a1;
      swift_errorRetain();
      v11 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v11, v20))
      {
        goto LABEL_21;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v21 = 136315394;
      if (a1)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0xD000000000000015;
        v26 = 0x8000000100145470;
      }

      v28 = sub_10002065C(v24, v26, &v31);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2112;
      if (a4)
      {
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = v29;
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      *(v21 + 14) = v29;
      *v22 = v30;
      _os_log_impl(&_mh_execute_header, v11, v20, "Share Sheet failed with activity type %s and error %@", v21, 0x16u);
      sub_10001259C(v22, &unk_1001BBA60);

      sub_1000083B0(v23);
    }

LABEL_21:

    v8[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheetDismissed] = 1;
    sub_10006F8B0(a2 & 1, a4);
  }
}

uint64_t sub_10006EF14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

id sub_10006F0A0(char a1)
{
  if (qword_1001B9370 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BBF90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "MoveToApp Share Sheet viewDidAppear", v6, 2u);
  }

  v15.receiver = v1;
  v15.super_class = type metadata accessor for SVSMoveToAppShareSheetViewController();
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  v7 = *&v1[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet];
  if (v7)
  {
    return [v1 presentViewController:v7 animated:1 completion:0];
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MoveToApp Share Sheet dismissing because there is no loaded Share Sheet", v11, 2u);
  }

  v12 = type metadata accessor for SFAirDropReceive.Failure();
  sub_100070158(&qword_1001BBFF0, &type metadata accessor for SFAirDropReceive.Failure);
  v13 = swift_allocError();
  (*(*(v12 - 8) + 104))(v14, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v12);
  sub_10006F8B0(0, v13);
}

void sub_10006F344(char a1)
{
  if (qword_1001B9370 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000D298(v3, qword_1001BBF90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "MoveToApp Share Sheet viewDidDisappear", v6, 2u);
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for SVSMoveToAppShareSheetViewController();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  if ((*(v1 + OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheetDismissed) & 1) == 0)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "MoveToApp Share Sheet view disappeared before Share Sheet completed. Assuming cancellation", v9, 2u);
    }

    sub_10006F8B0(0, 0);
  }
}

uint64_t sub_10006F540()
{
  v35 = type metadata accessor for URL();
  v1 = *(v35 - 8);
  result = __chkstk_darwin(v35);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR___SVSMoveToAppShareSheetViewController_files);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v4 & 0xC000000000000001;
    v32 = (v1 + 8);

    v7 = 0;
    v8 = &off_1001AD000;
    v9 = qword_1001BBF90;
    *&v10 = 136315138;
    v31 = v10;
    v33 = v5;
    do
    {
      if (v6)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
      }

      v12 = v11;
      if ([v11 v8[260]])
      {
      }

      else
      {
        if (qword_1001B9370 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000D298(v13, v9);
        v14 = v12;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v37 = v17;
          v38 = swift_slowAlloc();
          v39 = v38;
          *v17 = v31;
          v18 = [v14 url];
          v19 = v34;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100070158(&unk_1001BBB30, &type metadata accessor for URL);
          v20 = v9;
          v21 = v6;
          v22 = v35;
          v23 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v16;
          v24 = v4;
          v26 = v25;
          v27 = v19;
          v5 = v33;
          v28 = v22;
          v6 = v21;
          v9 = v20;
          (*v32)(v27, v28);
          v29 = sub_10002065C(v23, v26, &v39);
          v4 = v24;

          v30 = v37;
          *(v37 + 1) = v29;
          _os_log_impl(&_mh_execute_header, v15, v36, "Failed to start accessing resource for URL %s", v30, 0xCu);
          sub_1000083B0(v38);

          v8 = &off_1001AD000;
        }

        else
        {
        }
      }

      ++v7;
    }

    while (v5 != v7);
  }

  return result;
}

void sub_10006F8B0(char a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR___SVSMoveToAppShareSheetViewController_files];
  if (v4 >> 62)
  {
    v15 = a2;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v15;
    v5 = v16;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = a2;

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v4 + 8 * i + 32);
    }

    v9 = v8;
    [v8 stopAccessing];
  }

  a2 = v6;
LABEL_10:
  sub_10006FAD0(a1 & 1, a2);
  if ((v2[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheetDismissed] & 1) != 0 || (v10 = *&v2[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet]) == 0)
  {

    [v2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v17[4] = sub_100070128;
    v17[5] = v11;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10001C544;
    v17[3] = &unk_100191B98;
    v12 = _Block_copy(v17);
    v13 = v10;
    v14 = v2;

    [v13 dismissViewControllerAnimated:1 completion:v12];
    _Block_release(v12);
  }
}

void sub_10006FAD0(char a1, uint64_t a2)
{
  v5 = type metadata accessor for SFMoveToAppShareSheetSettings();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR___SVSMoveToAppShareSheetViewController_replyAction);
  if (v10)
  {
    v11 = v7;
    v25 = v10;
    if ([v25 canSendResponse])
    {
      if (a2)
      {
        swift_errorRetain();
        v12 = _convertErrorToNSError(_:)();
        v13 = [objc_opt_self() responseForError:v12];
      }

      else
      {
        v22 = [objc_allocWithZone(BSMutableSettings) init];
        (*(v6 + 104))(v9, enum case for SFMoveToAppShareSheetSettings.shareSheetSucceeded(_:), v11);
        v23 = SFMoveToAppShareSheetSettings.rawValue.getter();
        (*(v6 + 8))(v9, v11);
        [v22 setFlag:a1 & 1 forSetting:v23];
        v13 = [objc_opt_self() responseWithInfo:v22];
      }

      [v25 sendResponse:v13];

      return;
    }

    if (qword_1001B9370 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000D298(v17, qword_1001BBF90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cannot send response for action in MoveToAppShareSheetViewController", v20, 2u);
    }
  }

  else
  {
    if (qword_1001B9370 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000D298(v14, qword_1001BBF90);
    v25 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v25, v15, "Missing action when performing MoveToAppShareSheetViewController dismiss", v16, 2u);
    }
  }

  v21 = v25;
}

id sub_10006FE5C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet] = 0;
  *&v3[OBJC_IVAR___SVSMoveToAppShareSheetViewController_files] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheetDismissed] = 0;
  *&v3[OBJC_IVAR___SVSMoveToAppShareSheetViewController_replyAction] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SVSMoveToAppShareSheetViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_10006FF74(void *a1)
{
  *&v1[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheet] = 0;
  *&v1[OBJC_IVAR___SVSMoveToAppShareSheetViewController_files] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR___SVSMoveToAppShareSheetViewController_sharesheetDismissed] = 0;
  *&v1[OBJC_IVAR___SVSMoveToAppShareSheetViewController_replyAction] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SVSMoveToAppShareSheetViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10007003C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SVSMoveToAppShareSheetViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000700F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000701A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000701D8()
{
  result = qword_1001BC000;
  if (!qword_1001BC000)
  {
    sub_1000122EC(255, &qword_1001BD700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC000);
  }

  return result;
}

uint64_t sub_100070240()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070288()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100005DCC(&unk_1001BC0B0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100070628(v5);
    return 0;
  }
}

uint64_t sub_100070628(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001BBB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100070690(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000707D4(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v28._object = 0xE000000000000000;
  v4.value._object = 0xEB00000000656C62;
  v5._object = 0x8000000100147E10;
  v5._countAndFlagsBits = 0xD000000000000010;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v28);

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100126B8C(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v2 mainBundle];
  v29._object = 0xE000000000000000;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v29);

  v18 = [v2 mainBundle];
  v30._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0x4C45434E4143;
  v19._object = 0xE600000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v30);

  v23 = [v2 mainBundle];
  v31._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000011;
  v24._object = 0x8000000100147E30;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v31);

  *a1 = v7;
  a1[1] = v17;
  a1[2] = v22;
  a1[3] = v27;
}

void sub_100070A28(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v23._object = 0xE000000000000000;
  v4._object = 0x8000000100147E10;
  v4._countAndFlagsBits = 0xD000000000000010;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v23);

  v8 = [v2 mainBundle];
  v24._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000012;
  v9._object = 0x8000000100148420;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

  v13 = [v2 mainBundle];
  v25._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x4C45434E4143;
  v14._object = 0xE600000000000000;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v25);

  v18 = [v2 mainBundle];
  v26._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x8000000100147E30;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v26);

  *a1 = v7;
  a1[1] = v12;
  a1[2] = v17;
  a1[3] = v22;
}

__n128 sub_100070C2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100070C40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100070C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100070CE8()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC0C0);
  v1 = sub_10000D298(v0, qword_1001BC0C0);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100070DB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, v4 = [v2 text], v3, v4))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleEmoji];
    *v8 = v5;
    v8[1] = v7;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_1000BC07C();
  }
}

void sub_100070EC4()
{
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    [v2 _setLocalOverrideTraitCollection:v3];

    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = sub_1001279D0(v5, v6, v7);

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v0 setTitle:v8];

    v9 = [v4 mainBundle];
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = sub_1001279D0(v9, v10, v11);

    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [v0 setSubtitle:v12];

    [v0 setDismissalType:1];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();
    v31 = sub_1000728F8;
    v32 = v13;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001BE90;
    v30 = &unk_100191D88;
    v15 = _Block_copy(&v27);
    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:0 handler:v15];

    _Block_release(v15);

    [v0 setDismissButtonAction:v17];

    v18 = *&v0[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_continueAction];
    [v18 setEnabled:0];

    v19 = [v4 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = sub_1001279D0(v19, v20, v21);

    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    v23 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v31 = sub_100072900;
    v32 = v23;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_10001BE90;
    v30 = &unk_100191DB0;
    v25 = _Block_copy(&v27);

    v26 = [v16 actionWithTitle:v22 style:1 handler:v25];

    _Block_release(v25);

    sub_10007165C();
  }

  else
  {
    __break(1u);
  }
}

void sub_10007140C()
{
  if (qword_1001B9378 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BC0C0);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      __break(1u);
      return;
    }

    swift_getObjectType();

    v6 = _typeName(_:qualified:)();
    v8 = sub_10002065C(v6, v7, v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %s", v3, 0xCu);
    sub_1000083B0(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      [v11 dismiss:5];
    }
  }
}

void sub_100071608()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000BC340();
  }
}

void sub_10007165C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_emojiContainer];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemFillColor];
  [v2 setBackgroundColor:v4];

  v5 = [v2 layer];
  [v5 setCornerRadius:41.5];

  v6 = [v2 layer];
  v7 = [v3 systemBlueColor];
  v8 = [v7 CGColor];

  [v6 setBorderColor:v8];
  v9 = [v2 layer];
  [v9 setBorderWidth:3.0];

  [v2 setClipsToBounds:1];
  v10 = [v1 contentView];
  [v10 addSubview:v2];

  v11 = *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_selectedEmojiLabel];
  v69 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_opt_self() systemFontOfSize:50.0];
  [v11 setFont:v12];

  [v11 setAdjustsFontSizeToFitWidth:1];
  [v2 addSubview:v11];
  v72 = [objc_opt_self() configurationWithPointSize:3 weight:2 scale:50.0];
  v13 = String._bridgeToObjectiveC()();
  v71 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v72];

  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_emojiButton];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = v14;
  [v14 setImage:v71 forState:0];
  v15 = [v3 tertiaryLabelColor];
  [v14 setTintColor:v15];

  [v14 addTarget:v1 action:"handleEmojiButtonTapped" forControlEvents:64];
  [v2 addSubview:v14];
  v16 = *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_hiddenEmojiField];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setHidden:1];
  [v16 setDelegate:v1];
  [v2 addSubview:v16];
  v70 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10016E8A0;
  v18 = [v2 topAnchor];
  v19 = [v1 contentView];
  v20 = [v19 mainContentGuide];

  v21 = [v20 topAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];

  *(v17 + 32) = v22;
  v23 = [v2 centerXAnchor];
  v24 = [v1 contentView];
  v25 = [v24 mainContentGuide];

  v26 = [v25 centerXAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];

  *(v17 + 40) = v27;
  v28 = [v2 heightAnchor];
  v29 = [v28 constraintEqualToConstant:83.0];

  *(v17 + 48) = v29;
  v30 = [v2 widthAnchor];
  v31 = [v2 heightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v17 + 56) = v32;
  v33 = [v2 bottomAnchor];
  v34 = [v1 contentView];
  v35 = [v34 mainContentGuide];

  v36 = [v35 bottomAnchor];
  v37 = [v33 constraintLessThanOrEqualToAnchor:v36];

  *(v17 + 64) = v37;
  v38 = [v69 centerXAnchor];
  v39 = [v2 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v17 + 72) = v40;
  v41 = [v69 centerYAnchor];
  v42 = [v2 centerYAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v17 + 80) = v43;
  v44 = [v69 leadingAnchor];
  v45 = [v2 leadingAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

  *(v17 + 88) = v46;
  v47 = [v69 trailingAnchor];
  v48 = [v2 trailingAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor:v48];

  *(v17 + 96) = v49;
  v50 = [v68 centerXAnchor];
  v51 = [v2 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v17 + 104) = v52;
  v53 = [v68 centerYAnchor];
  v54 = [v2 centerYAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v17 + 112) = v55;
  v56 = [v68 leadingAnchor];
  v57 = [v2 leadingAnchor];
  v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57];

  *(v17 + 120) = v58;
  v59 = [v68 trailingAnchor];
  v60 = [v2 trailingAnchor];
  v61 = [v59 constraintLessThanOrEqualToAnchor:v60];

  *(v17 + 128) = v61;
  v62 = [v16 centerXAnchor];
  v63 = [v2 centerXAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v17 + 136) = v64;
  v65 = [v16 centerYAnchor];
  v66 = [v2 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:25.0];

  *(v17 + 144) = v67;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v70 activateConstraints:isa];
}

void sub_100072320(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *&a1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_emojiContainer];
  v9 = a1;
  v6 = [v5 layer];
  v7 = [objc_opt_self() *a4];
  v8 = [v7 CGColor];

  [v6 setBorderColor:v8];
}

id sub_1000723EC(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(UIView);
  v5 = a1;
  v6 = [v4 init];
  *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_emojiContainer] = v6;
  v7 = [objc_opt_self() buttonWithType:1];
  *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_emojiButton] = v7;
  type metadata accessor for EmojiTextField();
  *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_hiddenEmojiField] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_selectedEmojiLabel] = v8;
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_1001279D0(v9, v10, v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10007277C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100191D38;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();

  v18 = [v17 actionWithTitle:v12 style:0 handler:v16];

  _Block_release(v16);

  *&v1[OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_continueAction] = v18;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "initWithContentView:", 0);
}

uint64_t sub_100072704()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007273C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100072784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_10007279C()
{
  v1 = String._bridgeToObjectiveC()();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_selectedEmojiLabel);
    v4 = String._bridgeToObjectiveC()();
    [v3 setText:v4];

    v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_hiddenEmojiField);
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    [*(v0 + OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_emojiButton) setImage:0 forState:0];
  }

  v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_continueAction);
  v8 = [*(v0 + OBJC_IVAR____TtC18SharingViewService31AirTagCustomEmojiViewController_hiddenEmojiField) text];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = String.count.getter();

    v11 = v10 > 0;
  }

  else
  {
    v11 = 0;
  }

  [v7 setEnabled:v11];
  return IsSingleEmoji == 0;
}

uint64_t sub_100072920()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC130);
  v1 = sub_10000D298(v0, qword_1001BC130);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000729E8()
{
  v61.receiver = v0;
  v61.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v61, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
    [v2 _setLocalOverrideTraitCollection:v3];

    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = sub_1001279D0(v5, v6, v7);

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v0 setTitle:v8];

    v9 = String._bridgeToObjectiveC()();
    v10 = sub_100126B8C(v9);

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = [v4 mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = sub_1001279D0(v11, v12, v10);

    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    [v0 setSubtitle:v13];

    [v0 setDismissalType:1];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v15 = String._bridgeToObjectiveC()();
    v59 = sub_100073634;
    v60 = v14;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_10001BE90;
    v58 = &unk_100191E28;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:0 handler:v16];

    _Block_release(v16);

    [v0 setDismissButtonAction:v18];

    v19 = String._bridgeToObjectiveC()();
    v20 = sub_100127AD0(v19);

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v59 = sub_100073654;
    v60 = v21;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_10001BE90;
    v58 = &unk_100191E78;
    v23 = _Block_copy(&aBlock);

    v54 = [v17 actionWithTitle:v20 style:0 handler:v23];

    _Block_release(v23);

    v24 = [objc_opt_self() configurationWithPointSize:4 weight:50.0];
    v25 = String._bridgeToObjectiveC()();
    v53 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

    v26 = [objc_allocWithZone(UIImageView) initWithImage:v53];
    v27 = [objc_opt_self() systemRedColor];
    [v26 setTintColor:v27];

    v28 = v26;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [v0 contentView];
    [v29 addSubview:v28];

    v52 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10016D4A0;
    v31 = [v28 topAnchor];
    v32 = [v0 contentView];
    v33 = [v32 mainContentGuide];

    v34 = [v33 topAnchor];
    v35 = [v31 constraintGreaterThanOrEqualToAnchor:v34];

    *(v30 + 32) = v35;
    v36 = [v28 centerXAnchor];
    v37 = [v0 contentView];
    v38 = [v37 mainContentGuide];

    v39 = [v38 centerXAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];

    *(v30 + 40) = v40;
    v41 = [v28 centerYAnchor];
    v42 = [v0 contentView];
    v43 = [v42 mainContentGuide];

    v44 = [v43 centerYAnchor];
    v45 = [v41 constraintEqualToAnchor:v44];

    *(v30 + 48) = v45;
    v46 = [v28 bottomAnchor];

    v47 = [v0 contentView];
    v48 = [v47 mainContentGuide];

    v49 = [v48 bottomAnchor];
    v50 = [v46 constraintLessThanOrEqualToAnchor:v49];

    *(v30 + 56) = v50;
    sub_10000D1F4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v52 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000732F4()
{
  if (qword_1001B9380 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BC130);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      __break(1u);
      return;
    }

    swift_getObjectType();

    v6 = _typeName(_:qualified:)();
    v8 = sub_10002065C(v6, v7, v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %s", v3, 0xCu);
    sub_1000083B0(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      [v11 dismiss:5];
    }
  }
}

void sub_1000734F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismiss:5];
  }
}

uint64_t sub_1000735FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007363C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100073668(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = [objc_allocWithZone(PRXTextField) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_nameField] = v4;
  sub_1000974B4(0);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  v8 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10007433C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100191F18;
  v9 = _Block_copy(aBlock);
  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];

  _Block_release(v9);

  *&v1[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_continueAction] = v10;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "initWithContentView:", 0);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:"updateContinueButton" name:UITextFieldTextDidChangeNotification object:0];

  return v13;
}

void sub_1000738E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, v4 = [v2 text], v3, v4))
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleName];
    *v8 = v5;
    v8[1] = v7;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = objc_allocWithZone(type metadata accessor for AirTagCustomEmojiViewController());
    v12 = v10;
    v13 = sub_1000723EC(v12);

    v14 = *&v12[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav];
    if (v14)
    {
      sub_1000BD9C0([v14 pushViewController:v13 animated:1]);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100073A50()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  sub_1000974B4(111);
  v1 = String._bridgeToObjectiveC()();

  [v0 setTitle:v1];

  sub_1000974B4(112);
  v2 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v2];

  [v0 setDismissalType:1];
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_continueAction];
  [v3 setEnabled:0];

  sub_1000974B4(114);
  v4 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  v9[4] = sub_10007435C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001BE90;
  v9[3] = &unk_100191F40;
  v7 = _Block_copy(v9);
  v8 = [objc_opt_self() actionWithTitle:v6 style:1 handler:v7];

  _Block_release(v7);

  sub_100073CF4();
}

void sub_100073CA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000BA8D0();
  }
}

void sub_100073CF4()
{
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService30AirTagCustomNameViewController_nameField];
  sub_1000974B4(113);
  v2 = String._bridgeToObjectiveC()();

  [v1 setPlaceholder:v2];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v0 contentView];
  [v3 addSubview:v1];

  v25 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10016D4A0;
  v5 = [v1 topAnchor];
  v6 = [v0 contentView];
  v7 = [v6 mainContentGuide];

  v8 = [v7 topAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];

  *(v4 + 32) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 mainContentGuide];

  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];

  *(v4 + 40) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 mainContentGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];

  *(v4 + 48) = v19;
  v20 = [v1 bottomAnchor];
  v21 = [v0 contentView];
  v22 = [v21 mainContentGuide];

  v23 = [v22 bottomAnchor];
  v24 = [v20 constraintLessThanOrEqualToAnchor:v23];

  *(v4 + 56) = v24;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

uint64_t sub_1000742C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000742FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100074344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074370()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC1C0);
  v1 = sub_10000D298(v0, qword_1001BC1C0);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100074438(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_module];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_userInfo] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t sub_10007455C(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  if (qword_1001B9388 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BC1C0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = [v7 userInfo];
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "PasswordSharingFlowViewController configuring with info: %@", v10, 0xCu);
    sub_100075188(v11);
  }

  v13 = [v7 userInfo];
  if (v13)
  {
    v14 = v13;
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  *(v3 + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_userInfo) = v15;

  if (a2)
  {
    return a2(result);
  }

  __break(1u);
  return result;
}

id sub_100074928(char a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1);
  result = [objc_opt_self() defaultConfiguration];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(PRXCardContainerViewController) initWithConfiguration:result];

    [v6 setFlowDelegate:v2];
    v7 = OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController;
    v8 = *&v2[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController];
    *&v2[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_prxContainerViewController] = v6;
    v9 = v6;

    v10 = *&v2[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_userInfo];

    v11 = v9;
    v12 = sub_1000A625C(v11, v10);

    type metadata accessor for PasswordSharingStartViewController();
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_100075934(v13, v12);
    *(v12 + 24) = &off_100191F68;
    swift_unknownObjectWeakAssign();
    v14 = &v2[OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_module];
    *v14 = v12;
    v14[1] = &off_100193208;

    swift_unknownObjectRelease();
    sub_10000E2A0();
    v15 = *&v2[v7];
    if (v15)
    {
      v16 = [v15 mainNavigationController];
      if (v16)
      {
        v17 = v16;
        [v16 pushViewController:v13 animated:0];
      }
    }

    [v2 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100074C24()
{
  v1 = v0;
  v2 = sub_100005DCC(&qword_1001BD600);
  __chkstk_darwin(v2 - 8);
  v4 = &v25[-v3];
  if (qword_1001B9388 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000D298(v5, qword_1001BC1C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Finish Password Sharing flow", v8, 2u);
  }

  v9 = OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_module;
  v10 = *(v1 + OBJC_IVAR____TtC18SharingViewService33PasswordSharingFlowViewController_module);
  if (v10)
  {
    *(v10 + 24) = 0;
    swift_unknownObjectWeakAssign();
    v11 = *(v1 + v9);
    if (v11)
    {
      if (*(v11 + 48) == 1)
      {
        swift_unknownObjectRetain();
      }

      else
      {
        v12 = *(v11 + 64);
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 48);
        swift_unknownObjectRetain();
        v15 = v14(v25, ObjectType, v12);
        *(v16 + *(type metadata accessor for PasswordSharingModel() + 64)) = 21;
        v15(v25, 0);
      }

      sub_1000A5A10();
      v17 = *(v11 + 64);
      v18 = swift_getObjectType();
      Date.init()();
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
      v20 = (*(v17 + 48))(v25, v18, v17);
      v22 = v21;
      v23 = type metadata accessor for PasswordSharingModel();
      sub_1000120E8(v4, v22 + *(v23 + 80));
      v20(v25, 0);
      sub_10000E790();
      swift_unknownObjectRelease();
    }
  }

  result = sub_100070288();
  if (result)
  {
    [result dismiss];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100074F4C()
{
  swift_unknownObjectRelease();
}

unint64_t sub_100075104()
{
  result = qword_1001BC220;
  if (!qword_1001BC220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BC220);
  }

  return result;
}

uint64_t sub_100075150()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100075188(uint64_t a1)
{
  v2 = sub_100005DCC(&unk_1001BBA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000751F0()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC228);
  v1 = sub_10000D298(v0, qword_1001BC228);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000752B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100075894();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  type metadata accessor for PasswordSharingDoneViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = v2;
    sub_10007595C(v9, v8, &OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_presenter, &OBJC_IVAR____TtC18SharingViewService33PasswordSharingDoneViewController_type, sub_100027E98);

    swift_unknownObjectRelease();
  }

  if (qword_1001B9390 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v10 = type metadata accessor for Logger();
  sub_10000D298(v10, qword_1001BC228);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Show Done View", v13, 2u);
  }

  v14 = [*(v1 + OBJC_IVAR____TtC18SharingViewService21PasswordSharingRouter_prxContainerViewController) mainNavigationController];
  if (v14)
  {
    v15 = v14;
    [v14 pushViewController:v2 animated:1];
  }
}

void sub_10007553C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100075894();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  type metadata accessor for PasswordSharingErrorViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = v2;
    sub_10007595C(v9, v8, &OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_presenter, &OBJC_IVAR____TtC18SharingViewService34PasswordSharingErrorViewController_type, sub_10008DE48);

    swift_unknownObjectRelease();
  }

  if (qword_1001B9390 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v10 = type metadata accessor for Logger();
  sub_10000D298(v10, qword_1001BC228);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Show Error View", v13, 2u);
  }

  v14 = [*(v1 + OBJC_IVAR____TtC18SharingViewService21PasswordSharingRouter_prxContainerViewController) mainNavigationController];
  if (v14)
  {
    v15 = v14;
    [v14 pushViewController:v2 animated:1];
  }
}

id sub_1000757F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PasswordSharingRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100075894()
{
  result = qword_1001BCE90;
  if (!qword_1001BCE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BCE90);
  }

  return result;
}

uint64_t sub_10007595C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(_OWORD *))
{
  v10 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + *a3 + 8) = &off_100193270;
  swift_unknownObjectWeakAssign();
  v13 = *(a2 + 56);
  v14 = OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  sub_100011F90(v13 + v14, v12);
  if (*(a1 + *a4))
  {
    if (*(a1 + *a4) == 1)
    {
      sub_10000A17C(&v20._countAndFlagsBits);
    }

    else
    {
      sub_10000A494(&v20);
    }
  }

  else if (sub_1000093C8())
  {
    sub_10000B324(&v20);
  }

  else
  {
    sub_10000A750(&v20);
  }

  v17[0] = v20;
  v17[1] = v21;
  *&v18[0] = v22;
  *(v18 + 8) = v23;
  *(&v18[1] + 1) = v24;
  v18[2] = v25;
  *&v19[0] = v26;
  *(v19 + 8) = v27;
  v28[0] = v20;
  v28[1] = v21;
  v29 = *(&v27 + 1);
  v28[4] = v25;
  v28[5] = v19[0];
  v28[2] = v18[0];
  v28[3] = v18[1];
  sub_100011FF4(v12);
  a5(v28);
  return sub_1000758E0(v17);
}

void sub_100075B24()
{
  v110.receiver = v0;
  v110.super_class = type metadata accessor for D2DSetupDoneSuccessViewController();
  objc_msgSendSuper2(&v110, "viewDidLoad");
  v1 = sub_1000763D4();
  v2 = [v0 contentView];
  [v2 addSubview:v1];

  v3 = [v0 contentView];
  v4 = [v3 mainContentGuide];

  v5 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10016D4A0;
  v7 = [v1 topAnchor];
  v8 = [v4 topAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v4 bottomAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v1 centerXAnchor];
  v14 = [v4 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v1 centerYAnchor];
  v17 = [v4 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  v20 = &v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v21 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v22 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v118 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v119 = v22;
  v23 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v24 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v120 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v121 = v23;
  v25 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v114 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v115 = v25;
  v26 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v116 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v117 = v26;
  v27 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v111[0] = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v111[1] = v27;
  v28 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v29 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v112 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v113 = v28;
  v60 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v61 = v29;
  v62 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v30 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v67 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v68 = v30;
  v31 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v69 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v70 = v31;
  v32 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v63 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v64 = v32;
  v33 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v65 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v66 = v33;
  v122[2] = v112;
  v122[1] = v27;
  v122[0] = v111[0];
  v122[7] = v21;
  v122[6] = v116;
  v122[5] = v25;
  v122[4] = v114;
  v122[11] = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v122[10] = v120;
  v34 = v28;
  v122[9] = v24;
  v122[8] = v118;
  v122[3] = v28;
  if (sub_100013CE0(v122) == 1)
  {
    v98 = v60;
    v99 = v61;
    v100 = v62;
    v101 = v34;
    v106 = v67;
    v107 = v68;
    v108 = v69;
    v109 = v70;
    v102 = v63;
    v103 = v64;
    v104 = v65;
    v105 = v66;
    sub_100019558(v111, &aBlock);
    sub_1000195C8(&v98);
  }

  else
  {
    v98 = v60;
    v99 = v61;
    v100 = v62;
    v101 = v34;
    v106 = v67;
    v107 = v68;
    v108 = v69;
    v109 = v70;
    v102 = v63;
    v103 = v64;
    v104 = v65;
    v105 = v66;
    sub_100019558(v111, &aBlock);

    sub_1000195C8(&v98);
    if (*(&v34 + 1))
    {
      v35 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v36 = String._bridgeToObjectiveC()();

      *&v88 = sub_100077238;
      *(&v88 + 1) = v35;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v87 = sub_10001BE90;
      *(&v87 + 1) = &unk_100192038;
      v37 = _Block_copy(&aBlock);
      v38 = [objc_opt_self() actionWithTitle:v36 style:0 handler:v37];

      _Block_release(v37);
    }
  }

  v39 = *(v20 + 7);
  v40 = *(v20 + 9);
  v94 = *(v20 + 8);
  v95 = v40;
  v41 = *(v20 + 11);
  v42 = *(v20 + 9);
  v96 = *(v20 + 10);
  v97 = v41;
  v43 = *(v20 + 5);
  v90 = *(v20 + 4);
  v91 = v43;
  v44 = *(v20 + 7);
  v45 = *(v20 + 5);
  v92 = *(v20 + 6);
  v93 = v44;
  v46 = *(v20 + 1);
  aBlock = *v20;
  v87 = v46;
  v47 = *(v20 + 3);
  v48 = v47;
  v88 = *(v20 + 2);
  v89 = v47;
  v49 = *(v20 + 1);
  v82 = *v20;
  v83 = v49;
  v50 = *(v20 + 3);
  v84 = *(v20 + 2);
  v85 = v50;
  v51 = *(v20 + 8);
  v52 = *(v20 + 10);
  v79 = *(v20 + 9);
  v80 = v52;
  v81 = *(v20 + 11);
  v53 = *(v20 + 6);
  v75 = *(v20 + 5);
  v76 = v53;
  v77 = *(v20 + 7);
  v78 = v51;
  v100 = v88;
  v101 = v48;
  v98 = aBlock;
  v99 = v46;
  v103 = v45;
  v104 = v92;
  v54 = *(v20 + 11);
  v108 = v96;
  v109 = v54;
  v106 = v94;
  v107 = v42;
  v55 = v90;
  v105 = v39;
  v102 = v90;
  if (sub_100013CE0(&v98) == 1)
  {
    sub_100019558(&aBlock, &v63);

    v63 = v82;
    v64 = v83;
    v65 = v84;
    v66 = v85;
    v67 = v55;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v71 = v78;
    sub_1000195C8(&v63);
  }

  else
  {
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v66 = v85;
    v67 = v55;
    v72 = v79;
    v73 = v80;
    v74 = v81;
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v71 = v78;
    sub_100019558(&aBlock, &v60);

    sub_1000195C8(&v63);
    if (*(&v55 + 1))
    {
      v56 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v57 = String._bridgeToObjectiveC()();

      *&v62 = sub_1000771F0;
      *(&v62 + 1) = v56;
      *&v60 = _NSConcreteStackBlock;
      *(&v60 + 1) = 1107296256;
      *&v61 = sub_10001BE90;
      *(&v61 + 1) = &unk_100192010;
      v58 = _Block_copy(&v60);
      v59 = [objc_opt_self() actionWithTitle:v57 style:1 handler:v58];

      _Block_release(v58);
    }
  }
}

void sub_100076318(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (swift_unknownObjectWeakLoadStrong())
  {
    a3();
    swift_unknownObjectRelease();
  }
}

id sub_1000763D4()
{
  v1 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144);
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112);
  v120 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128);
  v121 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144);
  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176);
  v122 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160);
  v123 = v5;
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80);
  v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48);
  v116 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64);
  v117 = v6;
  v8 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80);
  v9 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112);
  v118 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96);
  v119 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16);
  v112 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
  v113 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48);
  v114 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32);
  v115 = v11;
  v110 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
  v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144);
  v106 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128);
  v107 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176);
  v108 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160);
  v109 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80);
  v102 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64);
  v103 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112);
  v104 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96);
  v105 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48);
  v100 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32);
  v101 = v16;
  v124 = v112;
  v133 = v120;
  v134 = v4;
  v17 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176);
  v135 = v122;
  v136 = v17;
  v129 = v116;
  v130 = v8;
  v131 = v118;
  v132 = v3;
  v111 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16);
  v18 = *(&v113 + 1);
  v19 = *(v1 + 2);
  v127 = v114;
  v128 = v7;
  v125 = v19;
  v126 = *(&v113 + 1);
  if (sub_100013CE0(&v124) == 1)
  {
    v87 = v110;
    v88 = v111;
    v89 = *(&v113 + 1);
    v96 = v106;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v93 = v103;
    v94 = v104;
    v95 = v105;
    v90 = v100;
    v91 = v101;
    v92 = v102;
    sub_100019558(&v112, v75);
    sub_1000195C8(&v87);
LABEL_6:
    type metadata accessor for ExitBuddyIconView();
    v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    return v21;
  }

  v87 = v110;
  v88 = v111;
  v89 = *(&v113 + 1);
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v90 = v100;
  v91 = v101;
  v92 = v102;
  sub_100019558(&v112, v75);
  v20 = v18;
  sub_1000195C8(&v87);
  if (!v18)
  {
    goto LABEL_6;
  }

  v21 = [objc_allocWithZone(UIImageView) initWithImage:v20];
  v22 = v1[9];
  v71 = v1[8];
  v72 = v22;
  v23 = v1[11];
  v73 = v1[10];
  v74 = v23;
  v24 = v1[5];
  v67 = v1[4];
  v68 = v24;
  v25 = v1[7];
  v69 = v1[6];
  v70 = v25;
  v26 = v1[1];
  v27 = v26;
  v64[0] = *v1;
  v64[1] = v26;
  v28 = v1[3];
  v65 = v1[2];
  v66 = v28;
  v29 = v1[1];
  v62 = *v1;
  v63 = v29;
  v30 = *(v1 + 152);
  v58 = *(v1 + 136);
  v59 = v30;
  v60 = *(v1 + 168);
  v31 = *(v1 + 88);
  v54 = *(v1 + 72);
  v55 = v31;
  v32 = *(v1 + 120);
  v56 = *(v1 + 104);
  v57 = v32;
  v33 = *(v1 + 56);
  v52 = *(v1 + 40);
  v53 = v33;
  v34 = v65;
  v61 = *(v1 + 23);
  v75[0] = v64[0];
  v75[1] = v27;
  v83 = *(v1 + 136);
  v84 = *(v1 + 152);
  v85 = *(v1 + 168);
  v35 = *(v1 + 23);
  v79 = *(v1 + 72);
  v80 = *(v1 + 88);
  v81 = *(v1 + 104);
  v82 = *(v1 + 120);
  v77 = *(v1 + 40);
  v78 = *(v1 + 56);
  v86 = v35;
  v76 = v65;
  if (sub_100013CE0(v75) == 1)
  {
    v39 = v62;
    v40 = v63;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v42 = v52;
    v41 = v65;
    v51 = v61;
    v43 = v53;
    sub_100019558(v64, v38);
    sub_1000195C8(&v39);
  }

  else
  {
    v39 = v62;
    v40 = v63;
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v42 = v52;
    v41 = v65;
    v51 = v61;
    v43 = v53;
    sub_100019558(v64, v38);
    v36 = v34;
    sub_1000195C8(&v39);
    if (v34)
    {
      [v21 setTintColor:v36];
    }
  }

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setContentMode:1];

  return v21;
}