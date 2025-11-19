uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100001BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001BD0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  objc_copyWeak(v8, (a1 + 32));
  v8[1] = *&a2;
  AXPerformBlockOnMainThread();
  objc_destroyWeak(v8);
}

void sub_100001C90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLevel:*(a1 + 40)];
}

void sub_100001DB8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v5 semanticContentAttribute]);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = a3;
  if (v7 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v13 = CGRectGetMinX(*&v8) + 20.0 + v12 * *(*(a1 + 32) + 24) + v12 * *(*(a1 + 32) + 32);
  }

  else
  {
    v13 = CGRectGetMaxX(*&v8) + -20.0 - v12 * *(*(a1 + 32) + 24) - v12 * *(*(a1 + 32) + 32);
  }

  v15 = [UIBezierPath bezierPathWithRoundedRect:v13 cornerRadius:CGRectGetMidY(*(a1 + 40)) + *(*(a1 + 32) + 24) * -0.5, *(*(a1 + 32) + 24), *(*(a1 + 32) + 24), 20.0];
  v14 = v15;
  [v6 setPath:{objc_msgSend(v15, "CGPath")}];
}

void sub_100001FA8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = (*(a1 + 40) * v3);
  v5 = v3 - a3 + 1;
  v6 = a2;
  v7 = +[UIColor systemOrangeColor];
  v10 = v7;
  v8 = 0.25;
  if (v5 < v4)
  {
    v8 = 1.0;
  }

  v9 = [v7 colorWithAlphaComponent:v8];
  [v6 setFillColor:{objc_msgSend(v9, "CGColor")}];
}

void sub_10000232C()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for LiveListenSystemApertureViewController();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingView];
  v2 = &ResourceBundleClass;
  v3 = &ResourceBundleClass;
  if (v1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v1 setAccessibilityLabel:v8];

    [v1 setTintColor:*&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_keyColor]];
    v9 = v1;
    v2 = &ResourceBundleClass;
    v10 = [v0 view];
    v3 = &ResourceBundleClass;
    if (!v10)
    {
      __break(1u);
      goto LABEL_20;
    }

    v11 = v10;
    [v10 addSubview:v9];
  }

  v12 = *&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_minimalView];
  if (v12)
  {
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:v13];
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    [v12 setAccessibilityLabel:v17];

    [v12 setTintColor:*&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_keyColor]];
    v18 = v12;
    v19 = [v0 *&v2[4].flags];
    if (v19)
    {
      v20 = v19;
      [v19 *&v3[4].ivar:v18 base:?size];

      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  v21 = *&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingView];
  if (!v21)
  {
LABEL_18:
    sub_100002864();
    return;
  }

  v22 = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:v22];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [v21 setAccessibilityLabel:v26];

  v27 = *&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_keyColor];
  [v21 setTintColor:v27];
  v28 = v21;
  [v28 frame];
  v33 = [objc_allocWithZone(LiveListenLevels) initWithFrame:1 inCompact:{v29, v30, v31, v32}];
  if (!v33)
  {
LABEL_17:

    goto LABEL_18;
  }

  v34 = v33;
  [v28 *&v3[4].ivar:v33 base:?size];
  [v28 setTintColor:v27];
  v35 = [v0 *&v2[4].flags];
  if (v35)
  {
    v36 = v35;
    [v35 *&v3[4].ivar:v28 base:?size];

    v28 = v36;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

void sub_100002864()
{
  v1 = v0;
  type metadata accessor for UIButton.Configuration();
  __chkstk_darwin();
  v164[1] = v164 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = objc_allocWithZone(type metadata accessor for LiveListenLeadingView());
  sub_100004F70(0);
  v4 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView;
  v5 = *&v0[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView];
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView] = v6;
  v7 = v6;

  [v7 setHidden:1];
  [*&v1[v4] setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v1[v4];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = v9;
  [v9 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  v19 = *&v1[v4];
  type metadata accessor for LiveListenSystemApertureViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = objc_opt_self();
  v22 = v19;
  v169 = v21;
  v170 = ObjCClassFromMetadata;
  v23 = [v21 bundleForClass:ObjCClassFromMetadata];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [v22 setAccessibilityLabel:v26];

  v27 = *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_keyColor];
  [*&v1[v4] setTintColor:v27];
  v28 = [v1 view];
  if (!v28)
  {
    goto LABEL_40;
  }

  v29 = v28;
  [v28 addSubview:*&v1[v4]];

  v168 = sub_100005C30(&qword_1000160B0);
  v30 = swift_allocObject();
  v165 = xmmword_1000086B0;
  *(v30 + 16) = xmmword_1000086B0;
  v31 = [*&v1[v4] leadingAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor:v34 constant:30.0];
  *(v30 + 32) = v35;
  v36 = [*&v1[v4] topAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v38 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v41 = [v40 bottomAnchor];
  v42 = [v36 constraintEqualToAnchor:v41];

  *(v30 + 40) = v42;
  v166 = sub_100005DFC(0, &qword_1000160B8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v167 = v39;
  [v39 activateConstraints:isa];

  v44 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel;
  [*&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = *&v1[v44];
  v46 = [v169 bundleForClass:v170];
  v47 = String._bridgeToObjectiveC()();
  v48 = String._bridgeToObjectiveC()();
  v49 = [v46 localizedStringForKey:v47 value:0 table:v48];

  if (!v49)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = String._bridgeToObjectiveC()();
  }

  [v45 setText:v49];

  [*&v1[v44] setTextColor:v27];
  [*&v1[v44] setHidden:1];
  [*&v1[v44] sizeToFit];
  v50 = *&v1[v44];
  v51 = objc_allocWithZone(UIFontMetrics);
  v52 = v50;
  v53 = [v51 initForTextStyle:UIFontTextStyleBody];
  v54 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  [v54 pointSize];
  if (v55 <= 20.0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 20.0;
  }

  v57 = [objc_opt_self() systemFontOfSize:v56 weight:UIFontWeightMedium];
  v58 = [v53 scaledFontForFont:v57];

  [v52 setFont:v58];
  [*&v1[v44] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v44] setUserInteractionEnabled:0];
  v59 = [v1 view];
  if (!v59)
  {
    goto LABEL_43;
  }

  v60 = v59;
  [v59 addSubview:*&v1[v44]];

  v61 = swift_allocObject();
  *(v61 + 16) = v165;
  v62 = [*&v1[v44] topAnchor];
  v63 = [v1 view];
  if (!v63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v64 = v63;
  v65 = [v63 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v66 = [v65 bottomAnchor];
  v67 = [v62 constraintEqualToAnchor:v66];

  *(v61 + 32) = v67;
  v68 = [*&v1[v44] leadingAnchor];
  v69 = [v1 view];
  if (!v69)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v70 = v69;
  v71 = [v69 leadingAnchor];

  v72 = [v68 constraintEqualToAnchor:v71 constant:72.0];
  *(v61 + 40) = v72;
  v73 = Array._bridgeToObjectiveC()().super.isa;

  [v167 activateConstraints:v73];

  [*&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v74 = [objc_opt_self() sharedUtilities];
  v75 = swift_allocObject();
  *(v75 + 16) = v1;
  aBlock[4] = sub_100005DD4;
  aBlock[5] = v75;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003E5C;
  aBlock[3] = &unk_1000108C8;
  v76 = _Block_copy(aBlock);
  v77 = v1;

  [v74 requestCurrentRoutesWithCompletion:v76];
  _Block_release(v76);

  v78 = *&v77[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingCustomView];
  if (!v78)
  {
    goto LABEL_24;
  }

  v79 = v78;
  [v79 setTintColor:v27];
  [v79 setHidden:1];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80 = [v77 view];
  if (!v80)
  {
    goto LABEL_46;
  }

  v81 = v80;
  [v80 frame];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;

  [v79 setFrame:{v83, v85, v87, v89}];
  v90 = v79;
  v91 = [v169 bundleForClass:v170];
  v92 = String._bridgeToObjectiveC()();
  v93 = String._bridgeToObjectiveC()();
  v94 = [v91 localizedStringForKey:v92 value:0 table:v93];

  if (!v94)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = String._bridgeToObjectiveC()();
  }

  [v90 setAccessibilityLabel:v94];

  v95 = [v77 view];
  if (!v95)
  {
    goto LABEL_47;
  }

  v96 = v95;
  [v95 addSubview:v90];

  v97 = [v77 view];
  if (!v97)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v98 = v97;
  [v97 bringSubviewToFront:v90];

  v99 = swift_allocObject();
  *(v99 + 16) = v165;
  v100 = [v90 trailingAnchor];
  v101 = [v77 view];
  if (!v101)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v102 = v101;
  v103 = [v101 trailingAnchor];

  v104 = [v100 constraintEqualToAnchor:v103 constant:-34.0];
  *(v99 + 32) = v104;
  v105 = [v90 topAnchor];

  v106 = [v77 view];
  if (!v106)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v107 = v106;
  v108 = [v106 topAnchor];

  v109 = [v105 constraintEqualToAnchor:v108 constant:50.0];
  *(v99 + 40) = v109;
  v110 = Array._bridgeToObjectiveC()().super.isa;

  [v167 activateConstraints:v110];

LABEL_24:
  v111 = objc_opt_self();
  v112 = [objc_opt_self() traitCollectionWithLegibilityWeight:1];
  v113 = [v111 sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:v112];

  [v113 setBaseBackgroundColor:v27];
  [v113 setBaseForegroundColor:v27];
  v114 = [v169 bundleForClass:v170];
  v115 = String._bridgeToObjectiveC()();
  v116 = String._bridgeToObjectiveC()();
  v117 = [v114 localizedStringForKey:v115 value:0 table:v116];

  if (!v117)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = String._bridgeToObjectiveC()();
  }

  [v113 setTitle:v117];

  sub_100005DFC(0, &qword_1000160C0);
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100005DFC(0, &qword_1000160C8);
  *(swift_allocObject() + 16) = v77;
  v118 = v77;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v119 = UIButton.init(configuration:primaryAction:)();
  v120 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton;
  v121 = *&v118[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton];
  *&v118[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton] = v119;
  v122 = v119;

  [v122 setHidden:1];
  v123 = *&v118[v120];
  if (!v123)
  {
    goto LABEL_38;
  }

  [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
  v124 = *&v118[v120];
  if (!v124)
  {
    goto LABEL_38;
  }

  v125 = v124;
  v126 = [v118 view];
  if (!v126)
  {
    goto LABEL_51;
  }

  v127 = v126;
  [v126 frame];
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;

  [v125 setFrame:{v129, v131, v133, v135}];
  v136 = *&v118[v120];
  if (!v136)
  {
    goto LABEL_38;
  }

  v137 = v136;
  v138 = [v169 bundleForClass:v170];
  v139 = String._bridgeToObjectiveC()();
  v140 = String._bridgeToObjectiveC()();
  v141 = [v138 localizedStringForKey:v139 value:0 table:v140];

  if (!v141)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = String._bridgeToObjectiveC()();
  }

  [v137 setAccessibilityLabel:v141];

  v142 = *&v118[v120];
  if (!v142)
  {
    goto LABEL_38;
  }

  v143 = v142;
  v144 = [v118 view];
  if (!v144)
  {
    goto LABEL_52;
  }

  v145 = v144;
  v146 = v143;
  [v145 addSubview:v146];

  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1000086C0;
  v148 = [v146 leadingAnchor];

  v149 = [v118 view];
  if (!v149)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v150 = v149;
  v151 = [v149 leadingAnchor];

  v152 = [v148 constraintEqualToAnchor:v151 constant:20.0];
  *(v147 + 32) = v152;
  v153 = [v146 trailingAnchor];

  v154 = [v118 view];
  if (!v154)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v155 = v154;
  v156 = [v154 trailingAnchor];

  v157 = [v153 constraintEqualToAnchor:v156 constant:-20.0];
  *(v147 + 40) = v157;
  v158 = [v146 bottomAnchor];

  v159 = [v118 view];
  if (v159)
  {
    v160 = v159;
    v161 = [v159 bottomAnchor];

    v162 = [v158 constraintEqualToAnchor:v161 constant:-20.0];
    *(v147 + 48) = v162;
    v163 = Array._bridgeToObjectiveC()().super.isa;

    [v167 activateConstraints:v163];

LABEL_38:
    return;
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_100003B48(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DFC(0, &qword_1000160D0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100005E84;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003E18;
  aBlock[3] = &unk_100010940;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000058B8(&qword_1000160D8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005C30(&qword_1000160E0);
  sub_100005EAC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_100003E18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003E5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

void sub_100003EE0()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    [v0 stopLiveListen];
  }

  else
  {
    __break(1u);
  }
}

void sub_100003F48(uint64_t a1)
{
  v2 = v1;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_100005AD4(v36), (v5 & 1) != 0))
  {
    sub_100005B6C(*(a1 + 56) + 32 * v4, &v37);
    sub_100005B18(v36);
    sub_100005DFC(0, &qword_1000160A0);
    if (swift_dynamicCast())
    {
      *&v37 = 0x6D614E6574756F52;
      *(&v37 + 1) = 0xE900000000000065;
      v6 = [0xD000000000000014 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v6)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v36[0] = v37;
      v36[1] = v38;
      if (*(&v38 + 1))
      {
        if (swift_dynamicCast())
        {
          v7 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel;
          v8 = *&v2[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel];
          v9 = String._bridgeToObjectiveC()();
          [v8 setText:v9];

          v10 = *&v2[v7];
          v11 = objc_opt_self();
          v12 = v10;
          v13 = [v11 grayColor];
          [v12 setTextColor:v13];

          [*&v2[v7] setHidden:1];
          [*&v2[v7] sizeToFit];
          v14 = *&v2[v7];
          v15 = objc_allocWithZone(UIFontMetrics);
          v16 = v14;
          v17 = [v15 initForTextStyle:UIFontTextStyleFootnote];
          v18 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
          [v18 pointSize];
          if (v19 <= 20.0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 20.0;
          }

          v21 = [objc_opt_self() systemFontOfSize:v20 weight:UIFontWeightMedium];
          v22 = [v17 scaledFontForFont:v21];

          [v16 setFont:v22];
          [*&v2[v7] setAdjustsFontForContentSizeCategory:1];
          [*&v2[v7] setUserInteractionEnabled:0];
          v23 = [v2 view];
          if (v23)
          {
            v24 = v23;
            [v23 addSubview:*&v2[v7]];

            sub_100005C30(&qword_1000160B0);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_1000086B0;
            v26 = [*&v2[v7] leadingAnchor];
            v27 = [v2 view];
            if (v27)
            {
              v28 = v27;

              v29 = objc_opt_self();
              v30 = [v28 leadingAnchor];

              v31 = [v26 constraintEqualToAnchor:v30 constant:72.0];
              *(v25 + 32) = v31;
              v32 = [*&v2[v7] topAnchor];
              v33 = [*&v2[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel] bottomAnchor];
              v34 = [v32 constraintEqualToAnchor:v33 constant:2.0];

              *(v25 + 40) = v34;
              sub_100005DFC(0, &qword_1000160B8);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v29 activateConstraints:isa];

              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
        }

        else
        {
        }
      }

      else
      {

        sub_100005BC8(v36);
      }
    }
  }

  else
  {
    sub_100005B18(v36);
  }
}

void sub_1000044B8(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for LiveListenSystemApertureViewController();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v15 = sub_1000063A8;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10000484C;
  v14 = &unk_100010990;
  v8 = _Block_copy(&v11);
  v9 = v3;

  v15 = nullsub_1;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10000484C;
  v14 = &unk_1000109B8;
  v10 = _Block_copy(&v11);
  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_10000462C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_activeLayoutMode);
  switch(v3)
  {
    case 4:
      v10 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingView);
      if (v10)
      {
        [v10 setHidden:1];
      }

      v11 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingView);
      if (v11)
      {
        [v11 setHidden:1];
      }

      v12 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_minimalView);
      if (v12)
      {
        [v12 setHidden:1];
      }

      [*(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView) setHidden:0];
      v13 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingCustomView);
      if (v13)
      {
        [v13 setHidden:0];
      }

      v14 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton);
      if (v14)
      {
        [v14 setHidden:0];
      }

      [*(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel) setHidden:0];
      v4 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel);
      break;
    case 3:
      v5 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingView);
      if (v5)
      {
        [v5 setHidden:0];
      }

      v6 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingView);
      if (v6)
      {
        [v6 setHidden:0];
      }

      [*(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView) setHidden:1];
      v7 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingCustomView);
      if (v7)
      {
        [v7 setHidden:1];
      }

      v8 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton);
      if (v8)
      {
        [v8 setHidden:1];
      }

      [*(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel) setHidden:1];
      v4 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel);
      v9 = 1;
      goto LABEL_27;
    case 2:
      v4 = *(a2 + OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_minimalView);
      if (!v4)
      {
        return;
      }

      break;
    default:
      return;
  }

  v9 = 0;
LABEL_27:

  [v4 setHidden:v9];
}

uint64_t sub_10000484C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_100004938(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_maximumLayoutMode] = 4;
  v7 = SBUISystemApertureElementIdentifierLiveListen;
  *&v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierLiveListen;
  v8 = &v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_associatedAppBundleIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_statusBarStyleOverridesToSuppress] = 1024;
  v9 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_preferredHeightForBottomSafeArea;
  v10 = v7;
  *&v4[v9] = sub_100005F58();
  v11 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingView;
  v12 = type metadata accessor for LiveListenLeadingView();
  v13 = objc_allocWithZone(v12);
  sub_100004F70(1);
  *&v4[v11] = v14;
  v15 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingView;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for LiveListenTrailingView()) init];
  v16 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_minimalView;
  v17 = objc_allocWithZone(v12);
  sub_100004F70(1);
  *&v4[v16] = v18;
  v19 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingCustomView;
  *&v4[v20] = [objc_allocWithZone(LiveListenLevels) initWithFrame:0 inCompact:{0.0, 0.0, 160.0, 40.0}];
  v21 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton] = 0;
  v23 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_keyColor;
  *&v4[v23] = [objc_opt_self() systemOrangeColor];
  if (a2)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v27.receiver = v4;
  v27.super_class = type metadata accessor for LiveListenSystemApertureViewController();
  v25 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", v24, a3);

  return v25;
}

id sub_100004BF8(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_maximumLayoutMode] = 4;
  v4 = SBUISystemApertureElementIdentifierLiveListen;
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierLiveListen;
  v5 = &v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_associatedAppBundleIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_statusBarStyleOverridesToSuppress] = 1024;
  v6 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_preferredHeightForBottomSafeArea;
  v7 = v4;
  *&v2[v6] = sub_100005F58();
  v8 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingView;
  v9 = type metadata accessor for LiveListenLeadingView();
  v10 = objc_allocWithZone(v9);
  sub_100004F70(1);
  *&v2[v8] = v11;
  v12 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingView;
  *&v2[v12] = [objc_allocWithZone(type metadata accessor for LiveListenTrailingView()) init];
  v13 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_minimalView;
  v14 = objc_allocWithZone(v9);
  sub_100004F70(1);
  *&v2[v13] = v15;
  v16 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_leadingCustomView;
  *&v2[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_trailingCustomView;
  *&v2[v17] = [objc_allocWithZone(LiveListenLevels) initWithFrame:0 inCompact:{0.0, 0.0, 160.0, 40.0}];
  v18 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenLabel;
  *&v2[v18] = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_liveListenSubtitleLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_stopButton] = 0;
  v20 = OBJC_IVAR____TtC10HearingApp38LiveListenSystemApertureViewController_keyColor;
  *&v2[v20] = [objc_opt_self() systemOrangeColor];
  v23.receiver = v2;
  v23.super_class = type metadata accessor for LiveListenSystemApertureViewController();
  v21 = objc_msgSendSuper2(&v23, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

void sub_100004F70(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize];
  *v3 = nullsub_1(14.3, 19.0);
  *(v3 + 1) = v4;
  v5 = &v1[OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize];
  v6 = nullsub_1(28.0, 37.7);
  *v5 = v6;
  v5[1] = v7;
  if (a1)
  {
    v8 = *v3;
    v9 = v3[1];
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v20.receiver = v1;
  v20.super_class = type metadata accessor for LiveListenLeadingView();
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, v8, v9);
  type metadata accessor for LiveListenSystemApertureViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 bundleForClass:ObjCClassFromMetadata];
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() imageNamed:v15 inBundle:v14];

  if (v16)
  {
    v17 = [v16 imageWithRenderingMode:2];

    v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
    [v18 setFrame:{0.0, 0.0, v8, v9}];
    v19 = [objc_opt_self() systemOrangeColor];
    [v18 setTintColor:v19];

    [v13 addSubview:v18];
  }

  else
  {
    __break(1u);
  }
}

id sub_100005434(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100005490(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000054A0(uint64_t a1, int a2)
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

uint64_t sub_1000054C0(uint64_t result, int a2, int a3)
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

void sub_10000554C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000055A0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100005618(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005698@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_1000056DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000056F8@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100005740@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000576C(uint64_t a1)
{
  v2 = sub_1000058B8(&qword_100016090, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_1000058B8(&qword_100016098, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000058B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005900()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000593C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100005990()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100005A04()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_100005AD4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100005C78(a1, v4);
}

uint64_t sub_100005B6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005BC8(uint64_t a1)
{
  v2 = sub_100005C30(&qword_1000160A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005C30(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005D40(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100005B18(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100005D9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005DFC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100005E44()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100005EAC()
{
  result = qword_1000160E8;
  if (!qword_1000160E8)
  {
    sub_100005F10(&qword_1000160E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000160E8);
  }

  return result;
}

uint64_t sub_100005F10(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

double sub_100005F58()
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

    return 160.0;
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

    return 160.0;
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

    return 145.0;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    return 145.0;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return 150.0;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    return 150.0;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    return 140.0;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {

    return 140.0;
  }

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
      return 120.0;
    }
  }

  return 130.0;
}

id sub_100006730()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingSessionSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HearingSessionSceneDelegate()
{
  result = qword_1000161E0;
  if (!qword_1000161E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006838()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000068D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000069A4(v11, 0, 0, 1, a1, a2);
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
    sub_100005B6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000071F8(v11);
  return v7;
}

unint64_t sub_1000069A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006AB0(a5, a6);
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

char *sub_100006AB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006AFC(a1, a2);
  sub_100006C2C(&off_100010768);
  return v3;
}

char *sub_100006AFC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006D18(v5, 0);
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
        v7 = sub_100006D18(v10, 0);
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

uint64_t sub_100006C2C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100006D8C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100006D18(uint64_t a1, uint64_t a2)
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

  sub_100005C30(&unk_1000161F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006D8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005C30(&unk_1000161F0);
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

void sub_100006E80(void *a1)
{
  v2 = v1;
  type metadata accessor for ActivityScene();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v23 = v6;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      v11 = [v5 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_1000068D8(v12, v14, &v25);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "SessionSceneDelegate: Connecting session scene: %s", v9, 0xCu);
      sub_1000071F8(v10);

      v6 = v23;
    }

    v24 = v6;
    if ([v5 SBUI_isHostedBySystemAperture])
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Returning system aperture view controller", v18, 2u);
      }

      v19 = OBJC_IVAR____TtC10HearingApp27HearingSessionSceneDelegate_systemApertureElementProvider;
      [*(v2 + OBJC_IVAR____TtC10HearingApp27HearingSessionSceneDelegate_systemApertureElementProvider) loadViewIfNeeded];
      v20 = *(v2 + v19);
      [v5 setSystemApertureElementViewControllerProvider:v20];
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v24, v21, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v22, 2u);
    }
  }
}

void sub_100007144(const char *a1)
{
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, a1, v3, 2u);
  }
}

uint64_t sub_1000071F8(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}