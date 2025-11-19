id sub_100043584(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType] = 0;
  *&v4[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_dimmedBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_isGlowEnabled] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for NowPlayingShuffleButton();
  v9 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  sub_10028EC98();
  v10 = v9;
  v11 = static UIFont.preferredFont(forTextStyle:weight:)();
  v12 = [objc_opt_self() configurationWithFont:v11 scale:2];

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  if (v14)
  {
    v15 = [v14 imageWithSymbolConfiguration:v12];
  }

  else
  {
    v15 = 0;
  }

  v16 = v10;
  [v16 setImage:v15 forState:0];
  [v16 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  v17 = AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v18, v19);
  sub_10010FC20(&unk_101182D80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6B0;
  v21 = sub_100050078();
  *(v20 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v20 + 40) = v21;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

id UIImage.init(systemName:pointSize:weight:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() configurationWithPointSize:a4 weight:a1];
  v9 = [ObjCClassFromMetadata systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

uint64_t *AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor()
{
  if (qword_1011A6EC8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingShuffleButton;
}

uint64_t sub_100043988()
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AFC00;
  v4 = *algn_1011AFC08;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0x8000000100E630C0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingShuffleButton = v3;
  *algn_10121ABF8 = v4;
  qword_10121AC00 = 0xD000000000000018;
  unk_10121AC08 = 0x8000000100E630C0;
  return result;
}

id UIView.forAutolayout.getter()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

char *sub_100043ACC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType] = 0;
  *&v4[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_dimmedBackgroundColor] = 0;
  v4[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_isGlowEnabled] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for NowPlayingRepeatButton();
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v10 = *&v9[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType];
  v11 = v9;
  v12 = sub_100043D3C(v10);
  [v11 setImage:v12 forState:0];

  [v11 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v13 = [v11 layer];
  [v13 setCornerCurve:kCACornerCurveContinuous];

  v14 = [v11 layer];
  [v14 setCornerRadius:7.0];

  v15 = AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v16, v17);
  sub_10010FC20(&unk_101182D80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  v19 = sub_100050078();
  *(v18 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v18 + 40) = v19;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_100043D3C(unint64_t a1)
{
  sub_10028EC98();
  v2 = static UIFont.preferredFont(forTextStyle:weight:)();
  v3 = [objc_opt_self() configurationWithFont:v2 scale:2];

  if (a1 > 2)
  {
    _StringGuts.grow(_:)(24);
    v8._object = 0x8000000100E53D80;
    v8._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 0x746165706552504DLL;
    v9._object = 0xEC00000065707954;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    type metadata accessor for MPRepeatType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v3];

    return v6;
  }

  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor()
{
  if (qword_1011A6ED0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingRepeatButton;
}

uint64_t sub_100043F74()
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AFC00;
  v4 = *algn_1011AFC08;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x8000000100E630A0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.nowPlayingRepeatButton = v3;
  *algn_10121AC18 = v4;
  qword_10121AC20 = 0xD000000000000017;
  unk_10121AC28 = 0x8000000100E630A0;
  return result;
}

void UIViewController.playActivityFeatureIdentifier.setter(char a1)
{
  if (a1 != 20)
  {
    PlayActivityFeatureIdentifier.rawValue.getter(a1);
  }

  v2 = String._bridgeToObjectiveC()();

  [v1 setPlayActivityFeatureName:v2];
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

id sub_100044424(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v13.receiver = a1;
  v13.super_class = a8(a7);
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_100044500()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v443 = sub_10010FC20(&unk_101189DC0);
  v442 = *(v443 - 8);
  __chkstk_darwin(v443);
  v441 = &v434 - v3;
  v4 = sub_10010FC20(&unk_1011979E0);
  v445 = *(v4 - 8);
  __chkstk_darwin(v4);
  v444 = &v434 - v5;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v440 = &v434 - v7;
  v471 = sub_10010FC20(&unk_101182130);
  v8 = *(v471 - 8);
  __chkstk_darwin(v471);
  v469 = &v434 - v9;
  v472 = sub_10010FC20(&unk_101183B20);
  v10 = *(v472 - 8);
  __chkstk_darwin(v472);
  v470 = &v434 - v11;
  v439 = sub_10010FC20(&unk_10118AC90);
  v438 = *(v439 - 8);
  __chkstk_darwin(v439);
  v437 = &v434 - v12;
  v459 = sub_10010FC20(&qword_101183A40);
  v458 = *(v459 - 8);
  __chkstk_darwin(v459);
  v457 = &v434 - v13;
  v462 = sub_10010FC20(&qword_101183A48);
  v461 = *(v462 - 1);
  __chkstk_darwin(v462);
  v460 = &v434 - v14;
  v454 = sub_10010FC20(&unk_101189DD0);
  v453 = *(v454 - 8);
  __chkstk_darwin(v454);
  v452 = &v434 - v15;
  v463 = sub_10010FC20(&qword_101183B30);
  v456 = *(v463 - 8);
  __chkstk_darwin(v463);
  v455 = &v434 - v16;
  v17 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v17 - 8);
  v476 = &v434 - v18;
  v448 = sub_10010FC20(&unk_101183D80);
  v447 = *(v448 - 8);
  __chkstk_darwin(v448);
  v446 = &v434 - v19;
  v451 = sub_10010FC20(&qword_101189DE0);
  v450 = *(v451 - 8);
  __chkstk_darwin(v451);
  v449 = &v434 - v20;
  v482.receiver = v0;
  v482.super_class = ObjectType;
  v468 = ObjectType;
  objc_msgSendSuper2(&v482, "viewDidLoad");
  v21 = sub_1000483AC();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaRemote, v21))
  {
    v22 = [objc_allocWithZone(MPMediaControls) init];
    v23 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls];
    *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls] = v22;

    v24 = type metadata accessor for BottomPlayerViewController.RouteButtonWorkaround();
    v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v26 = UIView.forAutolayout.getter();

    v27 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton;
    v28 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton];
    *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton] = v26;
    v29 = v26;

    v30 = String._bridgeToObjectiveC()();
    v31 = [objc_opt_self() systemImageNamed:v30];

    if (!v31)
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    [v29 setAccessoryImage:v31];

    v32 = *&v1[v27];
    if (!v32)
    {
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    [v32 setRouteLabelHidden:1];
    v33 = *&v1[v27];
    if (!v33)
    {
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v34 = qword_10117F918;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    [v35 setTintColor:qword_1012190B0];

    v36 = *&v1[v27];
    if (!v36)
    {
      goto LABEL_194;
    }

    [v36 setHitRectInsets:{-20.0, -20.0, -20.0, -20.0}];
    v37 = *&v1[v27];
    if (!v37)
    {
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = v37;
    ControlEventHandling<>.on(_:handler:)(1, sub_1002B819C, v38, v24);

    v40 = *&v1[v27];
    if (!v40)
    {
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v40;
    ControlEventHandling<>.on(_:handler:)(128, sub_1002B81A4, v41, v24);

    v43 = *&v1[v27];
    if (!v43)
    {
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v43;
    ControlEventHandling<>.on(_:handler:)(64, sub_1002B81C8, v44, v24);
  }

  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v46 = [v1 view];
  if (!v46)
  {
    __break(1u);
    goto LABEL_115;
  }

  v47 = v46;
  [v46 setInsetsLayoutMarginsFromSafeArea:0];

  v48 = [v1 view];
  if (!v48)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v49 = v48;
  v50 = [v48 layer];

  [v50 setShadowPathIsBounds:1];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v52 = v51;
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DragDropController();
  v54 = swift_allocObject();
  *(v54 + 72) = 0;
  *(v54 + 80) = 0;
  *(v54 + 88) = 1;
  *(v54 + 96) = 0u;
  *(v54 + 112) = 0u;
  *(v54 + 128) = 0u;
  *(v54 + 144) = 0;
  *(v54 + 16) = v52;
  *(v54 + 24) = static MPMediaLibraryFilteringOptions.none.getter;
  *(v54 + 32) = 0;
  *(v54 + 40) = sub_1002B7FC0;
  *(v54 + 48) = v53;
  *(v54 + 56) = 0;
  *(v54 + 64) = 0;
  swift_retain_n();
  v55 = v52;
  sub_100020438(0);
  v56 = *(v54 + 72);
  *(v54 + 72) = 0;
  *(v54 + 80) = 0;
  sub_100020438(v56);
  sub_1000486A4();
  sub_100048B6C();

  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_dragDropController] = v54;

  v57 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  v58 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_playbackCancellationGesture;
  v59 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playbackCancellationGesture];
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playbackCancellationGesture] = v57;
  v60 = v57;

  if (!v60)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  [v60 setNumberOfTouchesRequired:2];

  v61 = *&v1[v58];
  if (!v61)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  [v61 setMinimumPressDuration:2.0];
  v62 = *&v1[v58];
  if (!v62)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v63 = sub_100009F78(0, &qword_101189DE8);
  v64 = v62;
  UIGestureRecognizerHandling<>.addHandler(_:)(sub_1002AE378, 0, v63);

  v65 = [v1 view];
  if (!v65)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (!*&v1[v58])
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v66 = v65;
  [v65 addGestureRecognizer:?];

  v67 = *&v1[v58];
  if (!v67)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  [v67 setDelegate:v1];
  v68 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v1];
  v69 = [v1 view];
  if (!v69)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v70 = v69;
  [v69 addInteraction:v68];

  v71 = [objc_allocWithZone(UILayoutGuide) init];
  v72 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide];
  v480 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide;
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide] = v71;
  v73 = v71;

  if (!v73)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v74 = String._bridgeToObjectiveC()();
  [v73 setIdentifier:v74];

  v75 = [v1 view];
  if (!v75)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (!*&v1[v480])
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v76 = v75;
  [v75 addLayoutGuide:?];

  type metadata accessor for NowPlayingContentView(0);
  v77 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v78 = UIView.forAutolayout.getter();

  v79 = [v1 view];
  if (!v79)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v80 = v79;
  v81 = v78;
  [v80 addSubview:v81];

  v467 = v81;
  [v1 setArtworkView:v81];
  v82 = [objc_allocWithZone(MPRouteLabel) init];
  v83 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel;
  v84 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel] = v82;
  v85 = v82;

  if (!v85)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (qword_10117F508 != -1)
  {
    swift_once();
  }

  v436 = v68;
  [v85 setFont:qword_101218998];

  v86 = *&v1[v83];
  if (!v86)
  {
    goto LABEL_129;
  }

  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 labelColor];
  [v88 setTextColor:v89];

  v90 = [v1 view];
  if (!v90)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (!*&v1[v83])
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v91 = v90;
  v435 = v4;
  v474 = v8;
  v475 = v10;
  [v90 addSubview:?];

  v92 = [v1 view];
  if (!v92)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v93 = v92;
  v94 = sub_1002AE644();
  [v93 addSubview:v94];

  v95 = OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView;
  v96 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
  v97 = *((swift_isaMask & *v96) + 0xC8);
  v98 = v96;
  v97(0x50206D6F74746F42, 0xED0000726579616CLL);

  v99 = *&v1[v95];
  v100 = [v1 traitCollection];
  v101 = [v100 preferredContentSizeCategory];

  LOBYTE(v100) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v102 = (*((swift_isaMask & *v99) + 0x100))(v483);
  *(v103 + 16) = v100 & 1;
  v102(v483, 0);

  sub_10004EFF4();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v107 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
  v108 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton];
  sub_100009F78(0, &unk_101189DF0);
  static UIPointerStyle.capsule(in:)(0);
  v109 = v108;

  UIButton.pointerStyleProvider.setter();

  v110 = *&v1[v107];
  v111 = [v87 secondaryLabelColor];
  v112 = *&v110[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor];
  *&v110[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor] = v111;
  v113 = v111;

  sub_10004FD5C();
  v114 = *&v1[v107];
  v115 = [v87 tintColor];
  v116 = *&v114[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor];
  *&v114[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor] = v115;
  v117 = v115;

  sub_10004FD5C();
  v118 = [*&v1[v107] layer];
  [v118 setAllowsGroupBlending:0];

  v119 = *&v1[v107];
  v120 = [v87 clearColor];
  v121 = *&v119[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor];
  *&v119[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor] = v120;
  v122 = v120;

  sub_10004FD5C();
  v123 = *&v1[v107];
  v124 = [v87 clearColor];
  v125 = *&v123[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_dimmedBackgroundColor];
  *&v123[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_dimmedBackgroundColor] = v124;
  v126 = v124;

  sub_10004FD5C();
  v127 = *&v1[v107];
  v483[0] = *&UIEdgeInsetsZero.top;
  *&v483[1] = left;
  *&v483[2] = bottom;
  *&v483[3] = right;
  v484 = 1;
  v128 = *((swift_isaMask & *v127) + 0x60);
  v129 = v127;
  v128(v483);

  v479 = v107;
  v130 = *&v1[v107];
  v131 = type metadata accessor for NowPlayingShuffleButton();
  v132 = v130;
  ControlEventHandling<>.on(_:handler:)(64, sub_1002AE808, 0, v131);

  v133 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
  v134 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton];
  UIButton.pointerStyleProvider.setter();

  v135 = *&v1[v133];
  v136 = [v87 secondaryLabelColor];
  v137 = *&v135[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor];
  *&v135[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor] = v136;
  v138 = v136;

  sub_100050478();
  v139 = *&v1[v133];
  v140 = [v87 tintColor];
  v141 = *&v139[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor];
  *&v139[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor] = v140;
  v142 = v140;

  sub_100050478();
  v143 = [*&v1[v133] layer];
  [v143 setAllowsGroupBlending:0];

  v144 = *&v1[v133];
  v145 = [v87 clearColor];
  v146 = *&v144[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor];
  *&v144[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor] = v145;
  v147 = v145;

  sub_100050478();
  v148 = *&v1[v133];
  v149 = [v87 clearColor];
  v150 = *&v148[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_dimmedBackgroundColor];
  *&v148[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_dimmedBackgroundColor] = v149;
  v151 = v149;

  sub_100050478();
  v152 = *&v1[v133];
  v153 = *((swift_isaMask & *v152) + 0x60);
  v154 = v152;
  v153(v483);

  *&v478 = v133;
  v155 = *&v1[v133];
  v156 = type metadata accessor for NowPlayingRepeatButton();
  v157 = v155;
  ControlEventHandling<>.on(_:handler:)(64, sub_1002AE9DC, 0, v156);

  v158 = [v1 traitCollection];
  v159 = [v158 horizontalSizeClass];

  if (v159 != 2)
  {
    goto LABEL_37;
  }

  v160 = [v1 view];
  if (!v160)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v161 = v160;
  [v160 addSubview:*&v479[v1]];

  v162 = [v1 view];
  if (v162)
  {
    v163 = v162;
    [v162 addSubview:*&v1[v478]];

LABEL_37:
    v164 = type metadata accessor for NowPlayingTransportButton();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v166 = [ObjCClassFromMetadata buttonWithType:0];
    v167 = UIView.forAutolayout.getter();

    v168 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton;
    v169 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton];
    *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton] = v167;
    v170 = v167;

    v170[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_wantsHihglightIndicator] = 0;
    v171 = *&v170[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
    if (v171)
    {
      [v171 setHidden:1];

      v172 = *&v1[v168];
      if (v172)
      {
        v173 = qword_10117F918;
        v174 = v172;
        if (v173 != -1)
        {
          swift_once();
        }

        v175 = qword_1012190B0;
        [v174 setTintColor:qword_1012190B0];

        v176 = *&v1[v168];
        if (v176)
        {
          *&v176[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4040000000000000;
          v177 = *&v176[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
          if (v177)
          {
            v178 = v176;
            [v177 setConstant:32.0];
            [v178 invalidateIntrinsicContentSize];

            v179 = *&v1[v168];
            if (v179)
            {
              v180 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v181 = v179;
              ControlEventHandling<>.on(_:handler:)(64, sub_1002B7FC8, v180, v164);

              v182 = *&v1[v168];
              if (v182)
              {
                v183 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v184 = v182;
                ControlEventHandling<>.on(_:handler:)(0x1000000, sub_1002B7FD0, v183, v164);

                v185 = *&v1[v168];
                if (v185)
                {
                  v186 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v187 = v185;
                  ControlEventHandling<>.on(_:handler:)(0x2000000, sub_1002B7FFC, v186, v164);

                  v188 = *&v1[v168];
                  if (v188)
                  {
                    [v188 setHitRectInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
                    v190 = *&v1[v168];
                    if (v190)
                    {
                      LODWORD(v189) = 1144782848;
                      [v190 setContentCompressionResistancePriority:0 forAxis:v189];
                      v191 = *&v1[v168];
                      if (v191)
                      {
                        [v191 _setTouchInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
                        v192 = [ObjCClassFromMetadata buttonWithType:0];
                        v193 = UIView.forAutolayout.getter();

                        v194 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton;
                        v195 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton];
                        *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton] = v193;
                        v196 = v193;

                        v196[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_wantsHihglightIndicator] = 0;
                        v197 = *&v196[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
                        if (v197)
                        {
                          [v197 setHidden:1];

                          v198 = *&v1[v194];
                          if (v198)
                          {
                            [v198 setTintColor:v175];
                            v199 = *&v1[v194];
                            if (v199)
                            {
                              *&v199[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4040000000000000;
                              v200 = *&v199[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
                              if (v200)
                              {
                                v201 = v199;
                                [v200 setConstant:32.0];
                                [v201 invalidateIntrinsicContentSize];

                                v202 = *&v1[v194];
                                if (v202)
                                {
                                  v203 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v204 = v202;
                                  ControlEventHandling<>.on(_:handler:)(64, sub_1002B8028, v203, v164);

                                  v205 = *&v1[v194];
                                  if (v205)
                                  {
                                    [v205 setHitRectInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
                                    v207 = *&v1[v194];
                                    if (v207)
                                    {
                                      LODWORD(v206) = 1144782848;
                                      [v207 setContentCompressionResistancePriority:0 forAxis:v206];
                                      v208 = *&v1[v194];
                                      if (v208)
                                      {
                                        [v208 _setTouchInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
                                        v209 = [ObjCClassFromMetadata buttonWithType:0];
                                        v210 = UIView.forAutolayout.getter();

                                        v211 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton;
                                        v212 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton];
                                        *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton] = v210;
                                        v213 = v210;

                                        v213[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_wantsHihglightIndicator] = 0;
                                        v214 = *&v213[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
                                        if (v214)
                                        {
                                          [v214 setHidden:1];

                                          v215 = *&v1[v211];
                                          if (v215)
                                          {
                                            [v215 setTintColor:v175];
                                            v216 = *&v1[v211];
                                            if (v216)
                                            {
                                              *&v216[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4040000000000000;
                                              v217 = *&v216[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
                                              if (v217)
                                              {
                                                v218 = v216;
                                                [v217 setConstant:32.0];
                                                [v218 invalidateIntrinsicContentSize];

                                                v219 = *&v1[v211];
                                                if (v219)
                                                {
                                                  v220 = swift_allocObject();
                                                  swift_unknownObjectWeakInit();
                                                  v221 = v219;
                                                  ControlEventHandling<>.on(_:handler:)(64, sub_1002B8030, v220, v164);

                                                  v222 = *&v1[v211];
                                                  if (v222)
                                                  {
                                                    v223 = swift_allocObject();
                                                    swift_unknownObjectWeakInit();
                                                    v224 = v222;
                                                    ControlEventHandling<>.on(_:handler:)(0x1000000, sub_1002B8038, v223, v164);

                                                    v225 = *&v1[v211];
                                                    if (v225)
                                                    {
                                                      v226 = swift_allocObject();
                                                      swift_unknownObjectWeakInit();
                                                      v227 = v225;
                                                      ControlEventHandling<>.on(_:handler:)(0x2000000, sub_1002B8064, v226, v164);

                                                      v228 = *&v1[v211];
                                                      if (v228)
                                                      {
                                                        [v228 setHitRectInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
                                                        v229 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController];
                                                        v230 = swift_allocObject();
                                                        swift_unknownObjectWeakInit();
                                                        v231 = *(v229 + 88);
                                                        *(v229 + 88) = sub_1002B8090;
                                                        *(v229 + 96) = v230;

                                                        sub_100020438(v231);

                                                        v473 = sub_10010FC20(&qword_101183990);
                                                        v232 = swift_allocObject();
                                                        *(v232 + 16) = xmmword_100EC3620;
                                                        v233 = *&v479[v1];
                                                        *(v232 + 32) = v233;
                                                        v234 = *&v1[v168];
                                                        if (v234)
                                                        {
                                                          v235 = v232;
                                                          *(v232 + 40) = v234;
                                                          v236 = *&v1[v194];
                                                          if (v236)
                                                          {
                                                            v477 = v194;
                                                            *(v232 + 48) = v236;
                                                            v237 = *&v1[v211];
                                                            if (v237)
                                                            {
                                                              type metadata accessor for HitMyRectStackView();
                                                              v238 = *&v1[v478];
                                                              *(v235 + 56) = v237;
                                                              *(v235 + 64) = v238;
                                                              v239 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                                                              v240 = sub_100009F78(0, &qword_101181620);
                                                              v241 = v233;
                                                              v242 = v238;
                                                              v243 = v237;
                                                              v244 = v236;
                                                              v245 = v234;
                                                              v465 = v240;
                                                              isa = Array._bridgeToObjectiveC()().super.isa;

                                                              v247 = [v239 initWithArrangedSubviews:isa];

                                                              v248 = UIView.forAutolayout.getter();
                                                              v249 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack;
                                                              v250 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
                                                              *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack] = v248;
                                                              v251 = v248;

                                                              [v251 _setTouchInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
                                                              v252 = *&v1[v249];
                                                              if (v252)
                                                              {
                                                                [v252 setSemanticContentAttribute:1];
                                                                v253 = *&v1[v249];
                                                                v254 = v480;
                                                                if (v253)
                                                                {
                                                                  [v253 setAxis:0];
                                                                  v255 = *&v1[v249];
                                                                  if (v255)
                                                                  {
                                                                    [v255 setAlignment:3];
                                                                    v256 = [v1 view];
                                                                    if (v256)
                                                                    {
                                                                      if (*&v1[v249])
                                                                      {
                                                                        v257 = v256;
                                                                        [v256 addSubview:?];

                                                                        sub_1000511A4();
                                                                        v258 = [v1 view];
                                                                        if (v258)
                                                                        {
                                                                          v259 = v258;
                                                                          v260 = [v258 layoutMarginsGuide];

                                                                          v261 = swift_allocObject();
                                                                          *(v261 + 16) = xmmword_100EC56B0;
                                                                          v466 = v249;
                                                                          v262 = *&v1[v249];
                                                                          if (v262)
                                                                          {
                                                                            v263 = [v262 trailingAnchor];
                                                                            v264 = [v260 trailingAnchor];
                                                                            v265 = [v263 constraintEqualToAnchor:v264];

                                                                            *(v261 + 32) = v265;
                                                                            v266 = *&v1[v254];
                                                                            if (v266)
                                                                            {
                                                                              v267 = [v266 leadingAnchor];
                                                                              v464 = v260;
                                                                              v268 = [v260 leadingAnchor];
                                                                              v269 = [v267 constraintEqualToAnchor:v268];

                                                                              *(v261 + 40) = v269;
                                                                              v270 = v479;
                                                                              v271 = [*&v479[v1] widthAnchor];
                                                                              v272 = [v271 constraintEqualToConstant:28.0];

                                                                              *(v261 + 48) = v272;
                                                                              v273 = [*&v270[v1] heightAnchor];
                                                                              v274 = [*&v270[v1] widthAnchor];
                                                                              v275 = [v273 constraintEqualToAnchor:v274];

                                                                              *(v261 + 56) = v275;
                                                                              v276 = v478;
                                                                              v277 = [*&v1[v478] widthAnchor];
                                                                              v278 = [v277 constraintEqualToConstant:28.0];

                                                                              *(v261 + 64) = v278;
                                                                              v279 = [*&v1[v276] heightAnchor];
                                                                              v280 = [*&v1[v276] widthAnchor];
                                                                              v281 = [v279 constraintEqualToAnchor:v280];

                                                                              *(v261 + 72) = v281;
                                                                              v282 = *&v1[v477];
                                                                              if (v282)
                                                                              {
                                                                                v283 = [v282 widthAnchor];
                                                                                if (qword_10117F518 != -1)
                                                                                {
                                                                                  swift_once();
                                                                                }

                                                                                v284 = *&qword_1012189A8;
                                                                                v285 = [v283 constraintEqualToConstant:*&qword_1012189A8];

                                                                                *(v261 + 80) = v285;
                                                                                v286 = v477;
                                                                                v287 = *&v1[v477];
                                                                                v288 = v480;
                                                                                if (v287)
                                                                                {
                                                                                  v289 = [v287 heightAnchor];
                                                                                  v290 = *&v1[v286];
                                                                                  if (v290)
                                                                                  {
                                                                                    v291 = [v290 widthAnchor];
                                                                                    v292 = [v289 constraintEqualToAnchor:v291];

                                                                                    *(v261 + 88) = v292;
                                                                                    v293 = *&v1[v211];
                                                                                    if (v293)
                                                                                    {
                                                                                      v294 = [v293 widthAnchor];
                                                                                      v295 = [v294 constraintEqualToConstant:v284];

                                                                                      *(v261 + 96) = v295;
                                                                                      v296 = *&v1[v211];
                                                                                      if (v296)
                                                                                      {
                                                                                        v297 = [v296 heightAnchor];
                                                                                        v298 = *&v1[v211];
                                                                                        if (v298)
                                                                                        {
                                                                                          v299 = [v298 widthAnchor];
                                                                                          v300 = [v297 constraintEqualToAnchor:v299];

                                                                                          *(v261 + 104) = v300;
                                                                                          *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_standardConstraints] = v261;

                                                                                          v301 = swift_allocObject();
                                                                                          *(v301 + 16) = xmmword_100EBEE90;
                                                                                          v302 = *&v1[v288];
                                                                                          if (v302)
                                                                                          {
                                                                                            v303 = [v302 widthAnchor];
                                                                                            v304 = *&v1[v288];
                                                                                            v305 = v467;
                                                                                            if (v304)
                                                                                            {
                                                                                              v306 = [v304 heightAnchor];
                                                                                              v307 = [v303 constraintEqualToAnchor:v306];

                                                                                              *(v301 + 32) = v307;
                                                                                              v308 = [v305 centerXAnchor];

                                                                                              v309 = *&v1[v288];
                                                                                              if (v309)
                                                                                              {
                                                                                                v310 = [v309 centerXAnchor];
                                                                                                v311 = [v308 constraintEqualToAnchor:v310];

                                                                                                *(v301 + 40) = v311;
                                                                                                v312 = [v305 centerYAnchor];

                                                                                                v313 = *&v1[v288];
                                                                                                if (v313)
                                                                                                {
                                                                                                  v314 = [v313 centerYAnchor];
                                                                                                  v315 = [v312 constraintEqualToAnchor:v314];

                                                                                                  *(v301 + 48) = v315;
                                                                                                  v316 = [v305 widthAnchor];

                                                                                                  v317 = *&v1[v288];
                                                                                                  if (v317)
                                                                                                  {
                                                                                                    v318 = [v317 widthAnchor];
                                                                                                    v319 = [v316 constraintEqualToAnchor:v318];

                                                                                                    *(v301 + 56) = v319;
                                                                                                    v320 = [v305 heightAnchor];

                                                                                                    v321 = *&v1[v288];
                                                                                                    if (v321)
                                                                                                    {
                                                                                                      v322 = [v321 heightAnchor];
                                                                                                      v323 = [v320 constraintEqualToAnchor:v322];

                                                                                                      *(v301 + 64) = v323;
                                                                                                      v324 = *&v1[v288];
                                                                                                      v325 = v464;
                                                                                                      if (v324)
                                                                                                      {
                                                                                                        v326 = [v324 topAnchor];
                                                                                                        v327 = [v325 topAnchor];
                                                                                                        v328 = [v326 constraintEqualToAnchor:v327];

                                                                                                        *(v301 + 72) = v328;
                                                                                                        v329 = *&v1[v288];
                                                                                                        if (v329)
                                                                                                        {
                                                                                                          v330 = [v329 bottomAnchor];
                                                                                                          v331 = [v325 bottomAnchor];
                                                                                                          v332 = [v330 constraintEqualToAnchor:v331];

                                                                                                          *(v301 + 80) = v332;
                                                                                                          v333 = *&v466[v1];
                                                                                                          if (v333)
                                                                                                          {
                                                                                                            v334 = [v333 topAnchor];
                                                                                                            v335 = [v1 view];
                                                                                                            if (v335)
                                                                                                            {
                                                                                                              v336 = v335;
                                                                                                              v337 = [v335 topAnchor];

                                                                                                              v338 = [v334 constraintEqualToAnchor:v337];
                                                                                                              *(v301 + 88) = v338;
                                                                                                              v339 = *&v466[v1];
                                                                                                              if (v339)
                                                                                                              {
                                                                                                                v340 = [v339 bottomAnchor];
                                                                                                                v341 = [v1 view];
                                                                                                                if (v341)
                                                                                                                {
                                                                                                                  v342 = v341;
                                                                                                                  v343 = objc_opt_self();
                                                                                                                  v344 = [v342 bottomAnchor];

                                                                                                                  v345 = [v340 constraintEqualToAnchor:v344];
                                                                                                                  *(v301 + 96) = v345;
                                                                                                                  sub_100009F78(0, &qword_1011838A0);
                                                                                                                  v346 = Array._bridgeToObjectiveC()().super.isa;

                                                                                                                  [v343 activateConstraints:v346];

                                                                                                                  v347 = [v1 traitCollection];
                                                                                                                  v348 = [v347 horizontalSizeClass];

                                                                                                                  if (v348 == 2)
                                                                                                                  {
                                                                                                                    sub_1002AF2CC();
                                                                                                                  }

                                                                                                                  v349 = Array._bridgeToObjectiveC()().super.isa;

                                                                                                                  [v343 activateConstraints:v349];

                                                                                                                  if (qword_10117F5F8 != -1)
                                                                                                                  {
                                                                                                                    swift_once();
                                                                                                                  }

                                                                                                                  v350 = qword_101218AC8;
                                                                                                                  v351 = v446;
                                                                                                                  (*(*qword_101218AC8 + 456))();
                                                                                                                  v352 = sub_100009F78(0, &qword_101182960);
                                                                                                                  v353 = static OS_dispatch_queue.main.getter();
                                                                                                                  v481 = v353;
                                                                                                                  v480 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
                                                                                                                  v354 = *(v480 - 8);
                                                                                                                  v479 = *(v354 + 56);
                                                                                                                  v355 = v354 + 56;
                                                                                                                  v356 = v476;
                                                                                                                  (v479)(v476, 1, 1, v480);
                                                                                                                  v473 = v355;
                                                                                                                  *&v478 = &protocol conformance descriptor for Published<A>.Publisher;
                                                                                                                  sub_100020674(&unk_1011A4650, &unk_101183D80);
                                                                                                                  v477 = sub_10001C070(&qword_101184920, &qword_101182960);
                                                                                                                  v357 = v449;
                                                                                                                  v358 = v448;
                                                                                                                  Publisher.receive<A>(on:options:)();
                                                                                                                  sub_1000095E8(v356, &qword_101182140);

                                                                                                                  (*(v447 + 8))(v351, v358);
                                                                                                                  swift_allocObject();
                                                                                                                  swift_unknownObjectWeakInit();
                                                                                                                  v466 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
                                                                                                                  sub_100020674(&unk_10118ACC0, &qword_101189DE0);
                                                                                                                  v359 = v451;
                                                                                                                  Publisher<>.sink(receiveValue:)();

                                                                                                                  (*(v450 + 8))(v357, v359);
                                                                                                                  swift_beginAccess();
                                                                                                                  AnyCancellable.store(in:)();
                                                                                                                  swift_endAccess();

                                                                                                                  v361 = v452;
                                                                                                                  (*(*v350 + 504))(v360);
                                                                                                                  v362 = v352;
                                                                                                                  v363 = static OS_dispatch_queue.main.getter();
                                                                                                                  v481 = v363;
                                                                                                                  (v479)(v356, 1, 1, v480);
                                                                                                                  sub_100020674(&unk_101189E00, &unk_101189DD0);
                                                                                                                  v364 = v455;
                                                                                                                  v365 = v454;
                                                                                                                  Publisher.receive<A>(on:options:)();
                                                                                                                  sub_1000095E8(v356, &qword_101182140);

                                                                                                                  (*(v453 + 8))(v361, v365);
                                                                                                                  swift_allocObject();
                                                                                                                  swift_unknownObjectWeakInit();
                                                                                                                  sub_100020674(&qword_101183B70, &qword_101183B30);
                                                                                                                  v366 = v463;
                                                                                                                  Publisher<>.sink(receiveValue:)();

                                                                                                                  (*(v456 + 8))(v364, v366);
                                                                                                                  swift_beginAccess();
                                                                                                                  AnyCancellable.store(in:)();
                                                                                                                  swift_endAccess();

                                                                                                                  v368 = *(*v350 + 552);
                                                                                                                  v369 = v457;
                                                                                                                  v456 = v350;
                                                                                                                  v368(v367);
                                                                                                                  v370 = static OS_dispatch_queue.main.getter();
                                                                                                                  v481 = v370;
                                                                                                                  (v479)(v356, 1, 1, v480);
                                                                                                                  sub_100020674(&unk_101183A50, &qword_101183A40);
                                                                                                                  v371 = v460;
                                                                                                                  v372 = v459;
                                                                                                                  v463 = v362;
                                                                                                                  Publisher.receive<A>(on:options:)();
                                                                                                                  sub_1000095E8(v356, &qword_101182140);

                                                                                                                  (*(v458 + 8))(v369, v372);
                                                                                                                  swift_allocObject();
                                                                                                                  swift_unknownObjectWeakInit();
                                                                                                                  sub_100020674(&qword_101183A60, &qword_101183A48);
                                                                                                                  v373 = v462;
                                                                                                                  Publisher<>.sink(receiveValue:)();

                                                                                                                  (*(v461 + 8))(v371, v373);
                                                                                                                  swift_beginAccess();
                                                                                                                  AnyCancellable.store(in:)();
                                                                                                                  swift_endAccess();

                                                                                                                  sub_1002B06E4();
                                                                                                                  sub_1002B0A98();
                                                                                                                  v374 = [v1 view];
                                                                                                                  if (v374)
                                                                                                                  {
                                                                                                                    v375 = v374;
                                                                                                                    v376 = [v374 traitCollection];

                                                                                                                    v377 = [v376 tabAccessoryEnvironment];
                                                                                                                    if (v377 > 1)
                                                                                                                    {
                                                                                                                      v378 = &v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment];
                                                                                                                      *v378 = v377;
                                                                                                                      v378[8] = 0;
                                                                                                                    }

                                                                                                                    v379 = [v1 view];
                                                                                                                    if (v379)
                                                                                                                    {
                                                                                                                      v380 = v379;
                                                                                                                      v381 = sub_10010FC20(&unk_101182D80);
                                                                                                                      v382 = swift_allocObject();
                                                                                                                      v478 = xmmword_100EBC6B0;
                                                                                                                      *(v382 + 16) = xmmword_100EBC6B0;
                                                                                                                      *(v382 + 32) = type metadata accessor for UITraitTabAccessoryEnvironment();
                                                                                                                      *(v382 + 40) = &protocol witness table for UITraitTabAccessoryEnvironment;
                                                                                                                      swift_allocObject();
                                                                                                                      swift_unknownObjectWeakInit();
                                                                                                                      UIView.registerForTraitChanges<A>(_:handler:)();
                                                                                                                      swift_unknownObjectRelease();

                                                                                                                      v383 = swift_allocObject();
                                                                                                                      *(v383 + 16) = v478;
                                                                                                                      *(v383 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
                                                                                                                      *(v383 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
                                                                                                                      UIViewController.registerForTraitChanges<A>(_:handler:)();
                                                                                                                      swift_unknownObjectRelease();

                                                                                                                      v384 = swift_allocObject();
                                                                                                                      *(v384 + 16) = v478;
                                                                                                                      *(v384 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
                                                                                                                      *(v384 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
                                                                                                                      UIViewController.registerForTraitChanges<A>(_:handler:)();
                                                                                                                      swift_unknownObjectRelease();

                                                                                                                      v459 = v381;
                                                                                                                      v385 = swift_allocObject();
                                                                                                                      *(v385 + 16) = v478;
                                                                                                                      *(v385 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
                                                                                                                      *(v385 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
                                                                                                                      UIViewController.registerForTraitChanges<A>(_:handler:)();
                                                                                                                      swift_unknownObjectRelease();

                                                                                                                      if (qword_10117F600 != -1)
                                                                                                                      {
                                                                                                                        swift_once();
                                                                                                                      }

                                                                                                                      v386 = v437;
                                                                                                                      GroupActivitiesManager.$participantsCount.getter();
                                                                                                                      swift_allocObject();
                                                                                                                      swift_unknownObjectWeakInit();
                                                                                                                      sub_100020674(&unk_10118ACB0, &unk_10118AC90);
                                                                                                                      v387 = v439;
                                                                                                                      Publisher<>.sink(receiveValue:)();

                                                                                                                      (*(v438 + 8))(v386, v387);
                                                                                                                      swift_beginAccess();
                                                                                                                      AnyCancellable.store(in:)();
                                                                                                                      swift_endAccess();

                                                                                                                      v388 = v469;
                                                                                                                      GroupActivitiesManager.$isLoading.getter();
                                                                                                                      v389 = static OS_dispatch_queue.main.getter();
                                                                                                                      v481 = v389;
                                                                                                                      v390 = v476;
                                                                                                                      (v479)(v476, 1, 1, v480);
                                                                                                                      v391 = sub_100020674(&qword_101184280, &unk_101182130);
                                                                                                                      v392 = v470;
                                                                                                                      v393 = v471;
                                                                                                                      v466 = v391;
                                                                                                                      Publisher.receive<A>(on:options:)();
                                                                                                                      sub_1000095E8(v390, &qword_101182140);

                                                                                                                      v394 = *(v474 + 8);
                                                                                                                      v474 += 8;
                                                                                                                      v462 = v394;
                                                                                                                      (v394)(v388, v393);
                                                                                                                      swift_allocObject();
                                                                                                                      swift_unknownObjectWeakInit();
                                                                                                                      v395 = sub_100020674(&unk_101182180, &unk_101183B20);
                                                                                                                      v396 = v472;
                                                                                                                      Publisher<>.sink(receiveValue:)();

                                                                                                                      v397 = *(v475 + 8);
                                                                                                                      v475 += 8;
                                                                                                                      v460 = v397;
                                                                                                                      (v397)(v392, v396);
                                                                                                                      swift_beginAccess();
                                                                                                                      AnyCancellable.store(in:)();
                                                                                                                      swift_endAccess();

                                                                                                                      v398 = type metadata accessor for TaskPriority();
                                                                                                                      v399 = v440;
                                                                                                                      (*(*(v398 - 8) + 56))(v440, 1, 1, v398);
                                                                                                                      type metadata accessor for MainActor();
                                                                                                                      v400 = v1;
                                                                                                                      v401 = static MainActor.shared.getter();
                                                                                                                      v402 = swift_allocObject();
                                                                                                                      v402[2] = v401;
                                                                                                                      v402[3] = &protocol witness table for MainActor;
                                                                                                                      v402[4] = v400;
                                                                                                                      sub_1001F4CB8(0, 0, v399, &unk_100EC5840, v402);

                                                                                                                      v403 = *&v400[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager];
                                                                                                                      v404 = [v400 traitCollection];
                                                                                                                      v405 = [objc_opt_self() currentDevice];
                                                                                                                      v406 = [v405 userInterfaceIdiom];

                                                                                                                      v461 = v395;
                                                                                                                      if (v406 == 1 || [v404 accessibilityContrast] == 1)
                                                                                                                      {

                                                                                                                        *(v403 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = 0;
                                                                                                                        v407 = v456;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();

                                                                                                                        *(v403 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = !IsInvertColorsEnabled;
                                                                                                                        v407 = v456;
                                                                                                                        if (!IsInvertColorsEnabled)
                                                                                                                        {
                                                                                                                          sub_10010FC20(&qword_101189E10);
                                                                                                                          type metadata accessor for EditorialVideoArtworkFlavor();
                                                                                                                          v408 = swift_allocObject();
                                                                                                                          *(v408 + 16) = xmmword_100EBDC20;
                                                                                                                          static EditorialVideoArtworkFlavor.motionDetailTall.getter();
LABEL_110:
                                                                                                                          static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
                                                                                                                          swift_getKeyPath();
                                                                                                                          swift_getKeyPath();
                                                                                                                          v481 = v408;

                                                                                                                          static Published.subscript.setter();
                                                                                                                          v409 = swift_allocObject();
                                                                                                                          *(v409 + 16) = v478;
                                                                                                                          *(v409 + 32) = type metadata accessor for UITraitAccessibilityContrast();
                                                                                                                          *(v409 + 40) = &protocol witness table for UITraitAccessibilityContrast;
                                                                                                                          UIViewController.registerForTraitChanges<A>(_:handler:)();
                                                                                                                          swift_unknownObjectRelease();

                                                                                                                          v410 = swift_allocObject();
                                                                                                                          swift_unknownObjectWeakInit();
                                                                                                                          *&v478 = type metadata accessor for NotificationObserver();
                                                                                                                          swift_allocObject();
                                                                                                                          *&v400[OBJC_IVAR____TtC5Music26BottomPlayerViewController_invertColorsStatusDidChangeObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIAccessibilityInvertColorsStatusDidChangeNotification, 0, 1, 1, sub_1002B817C, v410);

                                                                                                                          v411 = (*(*v407 + 752))(&v481);
                                                                                                                          v412.reverseCount = 2;
                                                                                                                          v412.forwardCount = 12;
                                                                                                                          Player.NowPlayingConfiguration.insert(_:)(v412);
                                                                                                                          v411(&v481, 0);
                                                                                                                          swift_beginAccess();
                                                                                                                          sub_10010FC20(&qword_101189E18);
                                                                                                                          v413 = v441;
                                                                                                                          Published.projectedValue.getter();
                                                                                                                          swift_endAccess();
                                                                                                                          v414 = static OS_dispatch_queue.main.getter();
                                                                                                                          v481 = v414;
                                                                                                                          v415 = v476;
                                                                                                                          (v479)(v476, 1, 1, v480);
                                                                                                                          sub_100020674(&qword_101189E20, &unk_101189DC0);
                                                                                                                          v416 = v444;
                                                                                                                          v417 = v443;
                                                                                                                          Publisher.receive<A>(on:options:)();
                                                                                                                          sub_1000095E8(v415, &qword_101182140);

                                                                                                                          (*(v442 + 8))(v413, v417);
                                                                                                                          swift_allocObject();
                                                                                                                          swift_unknownObjectUnownedInit();
                                                                                                                          sub_100020674(&unk_101189E28, &unk_1011979E0);
                                                                                                                          v418 = v435;
                                                                                                                          v419 = Publisher<>.sink(receiveValue:)();

                                                                                                                          (*(v445 + 8))(v416, v418);
                                                                                                                          *&v400[OBJC_IVAR____TtC5Music26BottomPlayerViewController_videoArtworksObserver] = v419;

                                                                                                                          v420 = swift_allocObject();
                                                                                                                          swift_unknownObjectWeakInit();
                                                                                                                          swift_allocObject();
                                                                                                                          *&v400[OBJC_IVAR____TtC5Music26BottomPlayerViewController_didActivateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, 0, 1, 1, sub_1002B818C, v420);

                                                                                                                          type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
                                                                                                                          v421 = static NowPlayingArtworkRestrictionsMonitor.shared.getter();
                                                                                                                          v422 = v469;
                                                                                                                          dispatch thunk of NowPlayingArtworkRestrictionsMonitor.$isMotionDisabled.getter();

                                                                                                                          v423 = static OS_dispatch_queue.main.getter();
                                                                                                                          v481 = v423;
                                                                                                                          (v479)(v415, 1, 1, v480);
                                                                                                                          v424 = v470;
                                                                                                                          v425 = v471;
                                                                                                                          Publisher.receive<A>(on:options:)();
                                                                                                                          sub_1000095E8(v415, &qword_101182140);

                                                                                                                          (v462)(v422, v425);
                                                                                                                          swift_allocObject();
                                                                                                                          swift_unknownObjectWeakInit();
                                                                                                                          v426 = v472;
                                                                                                                          v427 = Publisher<>.sink(receiveValue:)();

                                                                                                                          (v460)(v424, v426);
                                                                                                                          *&v400[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionRestrictionsObserver] = v427;

                                                                                                                          v428 = [v400 view];
                                                                                                                          if (v428)
                                                                                                                          {
                                                                                                                            v429 = v428;
                                                                                                                            v430 = AccessibilityIdentifier.bottomPlayerView.unsafeMutableAddressor();
                                                                                                                            v431 = *v430;
                                                                                                                            v432 = v430[1];

                                                                                                                            UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v431, v432);

                                                                                                                            return;
                                                                                                                          }

                                                                                                                          goto LABEL_190;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      sub_10010FC20(&qword_101189E10);
                                                                                                                      type metadata accessor for EditorialVideoArtworkFlavor();
                                                                                                                      v408 = swift_allocObject();
                                                                                                                      *(v408 + 16) = v478;
                                                                                                                      goto LABEL_110;
                                                                                                                    }

LABEL_189:
                                                                                                                    __break(1u);
LABEL_190:
                                                                                                                    __break(1u);
                                                                                                                    goto LABEL_191;
                                                                                                                  }

LABEL_188:
                                                                                                                  __break(1u);
                                                                                                                  goto LABEL_189;
                                                                                                                }

LABEL_187:
                                                                                                                __break(1u);
                                                                                                                goto LABEL_188;
                                                                                                              }

LABEL_186:
                                                                                                              __break(1u);
                                                                                                              goto LABEL_187;
                                                                                                            }

LABEL_185:
                                                                                                            __break(1u);
                                                                                                            goto LABEL_186;
                                                                                                          }

LABEL_184:
                                                                                                          __break(1u);
                                                                                                          goto LABEL_185;
                                                                                                        }

LABEL_183:
                                                                                                        __break(1u);
                                                                                                        goto LABEL_184;
                                                                                                      }

LABEL_182:
                                                                                                      __break(1u);
                                                                                                      goto LABEL_183;
                                                                                                    }

LABEL_181:
                                                                                                    __break(1u);
                                                                                                    goto LABEL_182;
                                                                                                  }

LABEL_180:
                                                                                                  __break(1u);
                                                                                                  goto LABEL_181;
                                                                                                }

LABEL_179:
                                                                                                __break(1u);
                                                                                                goto LABEL_180;
                                                                                              }

LABEL_178:
                                                                                              __break(1u);
                                                                                              goto LABEL_179;
                                                                                            }

LABEL_177:
                                                                                            __break(1u);
                                                                                            goto LABEL_178;
                                                                                          }

LABEL_176:
                                                                                          __break(1u);
                                                                                          goto LABEL_177;
                                                                                        }

LABEL_175:
                                                                                        __break(1u);
                                                                                        goto LABEL_176;
                                                                                      }

LABEL_174:
                                                                                      __break(1u);
                                                                                      goto LABEL_175;
                                                                                    }

LABEL_173:
                                                                                    __break(1u);
                                                                                    goto LABEL_174;
                                                                                  }

LABEL_172:
                                                                                  __break(1u);
                                                                                  goto LABEL_173;
                                                                                }

LABEL_171:
                                                                                __break(1u);
                                                                                goto LABEL_172;
                                                                              }

LABEL_170:
                                                                              __break(1u);
                                                                              goto LABEL_171;
                                                                            }

LABEL_169:
                                                                            __break(1u);
                                                                            goto LABEL_170;
                                                                          }

LABEL_168:
                                                                          __break(1u);
                                                                          goto LABEL_169;
                                                                        }

LABEL_167:
                                                                        __break(1u);
                                                                        goto LABEL_168;
                                                                      }

LABEL_166:
                                                                      __break(1u);
                                                                      goto LABEL_167;
                                                                    }

LABEL_165:
                                                                    __break(1u);
                                                                    goto LABEL_166;
                                                                  }

LABEL_164:
                                                                  __break(1u);
                                                                  goto LABEL_165;
                                                                }

LABEL_163:
                                                                __break(1u);
                                                                goto LABEL_164;
                                                              }

LABEL_162:
                                                              __break(1u);
                                                              goto LABEL_163;
                                                            }

LABEL_161:
                                                            __break(1u);
                                                            goto LABEL_162;
                                                          }

LABEL_160:
                                                          __break(1u);
                                                          goto LABEL_161;
                                                        }

LABEL_159:
                                                        __break(1u);
                                                        goto LABEL_160;
                                                      }

LABEL_158:
                                                      __break(1u);
                                                      goto LABEL_159;
                                                    }

LABEL_157:
                                                    __break(1u);
                                                    goto LABEL_158;
                                                  }

LABEL_156:
                                                  __break(1u);
                                                  goto LABEL_157;
                                                }

LABEL_155:
                                                __break(1u);
                                                goto LABEL_156;
                                              }

LABEL_154:
                                              __break(1u);
                                              goto LABEL_155;
                                            }

LABEL_153:
                                            __break(1u);
                                            goto LABEL_154;
                                          }

LABEL_152:
                                          __break(1u);
                                          goto LABEL_153;
                                        }

LABEL_151:
                                        __break(1u);
                                        goto LABEL_152;
                                      }

LABEL_150:
                                      __break(1u);
                                      goto LABEL_151;
                                    }

LABEL_149:
                                    __break(1u);
                                    goto LABEL_150;
                                  }

LABEL_148:
                                  __break(1u);
                                  goto LABEL_149;
                                }

LABEL_147:
                                __break(1u);
                                goto LABEL_148;
                              }

LABEL_146:
                              __break(1u);
                              goto LABEL_147;
                            }

LABEL_145:
                            __break(1u);
                            goto LABEL_146;
                          }

LABEL_144:
                          __break(1u);
                          goto LABEL_145;
                        }

LABEL_143:
                        __break(1u);
                        goto LABEL_144;
                      }

LABEL_142:
                      __break(1u);
                      goto LABEL_143;
                    }

LABEL_141:
                    __break(1u);
                    goto LABEL_142;
                  }

LABEL_140:
                  __break(1u);
                  goto LABEL_141;
                }

LABEL_139:
                __break(1u);
                goto LABEL_140;
              }

LABEL_138:
              __break(1u);
              goto LABEL_139;
            }

LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_199:
  __break(1u);
}

uint64_t sub_10004832C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004836C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

unint64_t sub_1000483AC()
{
  result = qword_101189D68;
  if (!qword_101189D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189D68);
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t UIView.shadow.setter(uint64_t a1)
{
  sub_100048484(a1);

  return sub_1000485FC(a1);
}

void sub_100048484(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor:v4];

  v5 = [v1 layer];
  [v5 setShadowOffset:{*(a1 + 24), *(a1 + 32)}];

  v6 = [v1 layer];
  [v6 setShadowRadius:*(a1 + 16)];

  v8 = [v1 layer];
  v7 = *(a1 + 8);
  *&v7 = v7;
  [v8 setShadowOpacity:v7];
}

void sub_1000486A4()
{
  v17 = 0;
  if (*(v0 + 88) == 1 && (v1 = *(v0 + 24)) != 0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 120);
    if (v3)
    {

      v4 = v3;
    }

    else
    {
      v5 = objc_allocWithZone(type metadata accessor for DragDropController.DragDelegate());

      v4 = [v5 init];
    }

    v16 = v4;
    v17 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    v7 = &v16[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider];
    v8 = *&v16[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider];
    *v7 = sub_100327620;
    v7[1] = v6;
    v9 = v3;
    sub_100020438(v8);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = &v16[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin];
    v12 = *&v16[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionWillBegin];
    *v11 = sub_100327628;
    v11[1] = v10;

    sub_100020438(v12);

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = &v16[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd];
    v15 = *&v16[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd];
    *v14 = sub_100327644;
    v14[1] = v13;

    sub_100020438(v15);

    sub_1000489D4(&v17, v0);
  }

  else
  {
    sub_1000489D4(&v17, v0);
  }
}

uint64_t sub_10004889C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000488D4()
{

  return swift_deallocObject();
}

id sub_100048938(char *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(void))
{
  v7 = &a1[*a3];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[*a4];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[*a5];
  v10 = a6(0);
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = a1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_1000489D4(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v12 = *(a2 + 120);
    *(a2 + 120) = 0;

    v13 = *(a2 + 128);
    *(a2 + 128) = 0;
    if (!v13)
    {
      return;
    }

    v16 = v13;
    [*(a2 + 16) removeInteraction:?];
    goto LABEL_9;
  }

  v4 = *(a2 + 120);
  *(a2 + 120) = v3;
  v16 = v3;

  v5 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:v16];
  v6 = v5;
  v7 = *(a2 + 128);
  *(a2 + 128) = v5;
  if (!v5)
  {
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_9:
    v11 = v16;
    goto LABEL_16;
  }

  if (!v7)
  {
    v14 = v5;
    v15 = v6;
LABEL_13:
    [*(a2 + 16) addInteraction:v15];
LABEL_15:

    v11 = v7;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_10118B9A0);
  v8 = v6;
  v9 = v7;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    v15 = *(a2 + 128);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_14:
    [*(a2 + 16) removeInteraction:v7];
    goto LABEL_15;
  }

  v11 = v9;
LABEL_16:
}

void sub_100048B6C()
{
  v21 = 0;
  if (*(v0 + 88) == 1 && (v1 = *(v0 + 40)) != 0)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 136);
    if (v3)
    {

      v4 = v3;
    }

    else
    {
      v5 = objc_allocWithZone(type metadata accessor for DragDropController.DropDelegate());

      v4 = [v5 init];
    }

    v20 = v4;
    v21 = v4;
    v6 = &v4[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession];
    v7 = *&v4[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession];
    *v6 = sub_10032779C;
    *(v6 + 1) = 0;
    v8 = v3;
    sub_100020438(v7);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 2) = v9;
    *(v10 + 3) = v1;
    *(v10 + 4) = v2;
    v11 = &v20[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
    v12 = *&v20[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate];
    *v11 = sub_1003274FC;
    v11[1] = v10;
    sub_100030444(v1);

    sub_100020438(v12);

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = &v20[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd];
    v15 = *&v20[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd];
    *v14 = sub_100327508;
    v14[1] = v13;

    sub_100020438(v15);

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = v1;
    *(v17 + 4) = v2;
    v18 = &v20[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop];
    v19 = *&v20[OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop];
    *v18 = sub_100327510;
    v18[1] = v17;

    sub_100020438(v19);

    sub_100048EB0(&v21, v0);
  }

  else
  {
    sub_100048EB0(&v21, v0);
  }
}

void sub_100048EB0(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v12 = *(a2 + 136);
    *(a2 + 136) = 0;

    v13 = *(a2 + 144);
    *(a2 + 144) = 0;
    if (!v13)
    {
      return;
    }

    v16 = v13;
    [*(a2 + 16) removeInteraction:?];
    goto LABEL_9;
  }

  v4 = *(a2 + 136);
  *(a2 + 136) = v3;
  v16 = v3;

  v5 = [objc_allocWithZone(UIDropInteraction) initWithDelegate:v16];
  v6 = v5;
  v7 = *(a2 + 144);
  *(a2 + 144) = v5;
  if (!v5)
  {
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_9:
    v11 = v16;
    goto LABEL_16;
  }

  if (!v7)
  {
    v14 = v5;
    v15 = v6;
LABEL_13:
    [*(a2 + 16) addInteraction:v15];
LABEL_15:

    v11 = v7;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_10118B998);
  v8 = v6;
  v9 = v7;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    v15 = *(a2 + 144);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_14:
    [*(a2 + 16) removeInteraction:v7];
    goto LABEL_15;
  }

  v11 = v9;
LABEL_16:
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1011B9A58 != -1)
  {
    swift_once();
  }

  v8 = qword_1011BB328;
  if (objc_getAssociatedObject(v4, qword_1011BB328))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_10010FC20(&qword_1011BB330);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    sub_100011F28(v18);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  *&v18[0] = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_100C5D520, v10, a3);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  objc_setAssociatedObject(v12, v8, isa, 1);

  return v11;
}

uint64_t sub_100049270()
{
  result = swift_slowAlloc();
  qword_1011BB328 = result;
  return result;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = sub_100C21E74;
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

uint64_t sub_10004938C()
{

  return swift_deallocObject();
}

void sub_1000493E4()
{
  sub_100661690();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100049538()
{
  if (!qword_10119C0F8)
  {
    type metadata accessor for SquareMotionState(255);
    sub_1000496E4(&qword_10119C100, type metadata accessor for SquareMotionState);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10119C0F8);
    }
  }
}

void sub_1000495CC()
{
  sub_100049538();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100049654()
{
  sub_100008E30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000496E4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10004972C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for Artwork(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = 1;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext] = 0;
  v17 = &v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkDidChangeHandler];
  *v17 = 0;
  v17[1] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkCachingReference] = 0;
  v18 = &v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_layoutHandler];
  *v18 = 0;
  v18[1] = 0;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog] = 0;
  v19 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
  Artwork.init()(&v57 - v15);
  sub_1005579F0(v16, v14);
  v20 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v21 = Artwork.View.init(configuration:)(v14);
  sub_1006638C0(v16, type metadata accessor for Artwork);
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView;
  *&v5[v22] = [objc_allocWithZone(UIView) init];
  v23 = &v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_lastSeenBounds];
  *v23 = 0u;
  v23[1] = 0u;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionAnimationDuration] = 0x3FC3333333333333;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated] = 0;
  v24 = &v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
  v26 = sub_10010FC20(&qword_10119BDB8);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView] = 0;
  v27 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionState;
  type metadata accessor for SquareMotionState(0);
  v28 = swift_allocObject();
  v58 = 1;
  Published.init(initialValue:)();
  v58 = 1;
  Published.init(initialValue:)();
  *&v5[v27] = v28;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning] = 0;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = 0;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate] = 0;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot] = 0;
  *&v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath] = 0;
  v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates] = 0;
  v59.receiver = v5;
  v59.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v59, "initWithFrame:", a1, a2, a3, a4);
  [v29 setUserInteractionEnabled:0];
  v30 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
  [*&v29[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setClipsToBounds:1];
  v31 = *&v29[v30];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = &v31[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  swift_beginAccess();
  v34 = *v33;
  *v33 = sub_10004E3C0;
  v33[1] = v32;
  v35 = v31;

  sub_100020438(v34);

  v36 = [v29 layer];
  [v36 setAllowsGroupOpacity:0];

  v37 = [v29 layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView;
  [*&v29[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] addSubview:*&v29[v30]];
  v39 = *&v29[v38];
  v40 = UIView.forAutolayout.getter();

  [v29 addSubview:v40];
  v41 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100EBDC10;
  v43 = [*&v29[v38] topAnchor];
  v44 = [v29 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [*&v29[v38] bottomAnchor];
  v47 = [v29 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v42 + 40) = v48;
  v49 = [*&v29[v38] leftAnchor];
  v50 = [v29 leftAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v42 + 48) = v51;
  v52 = [*&v29[v38] rightAnchor];
  v53 = [v29 rightAnchor];

  v54 = [v52 constraintEqualToAnchor:v53];
  *(v42 + 56) = v54;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];

  sub_10004C8F4();
  return v29;
}

void sub_100049E50()
{
  sub_1000308A0(319, &qword_1011B0F08);
  if (v0 <= 0x3F)
  {
    sub_1000308A0(319, &qword_1011B0F10);
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_1011B0F18);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v3 <= 0x3F)
        {
          sub_1000308A0(319, &qword_1011B0F20);
          if (v4 <= 0x3F)
          {
            sub_10004A0D4();
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

void sub_100049F94()
{
  sub_1000308A0(319, &unk_1011B7870);
  if (v0 <= 0x3F)
  {
    sub_10004A068();
    if (v1 <= 0x3F)
    {
      sub_100009F78(319, &qword_1011B4940);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIAxis(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004A068()
{
  if (!qword_1011B1108)
  {
    type metadata accessor for UIView.Corner();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B1108);
    }
  }
}

void sub_10004A0D4()
{
  if (!qword_1011B0F28)
  {
    sub_1001109D0(&unk_1011B0F30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011B0F28);
    }
  }
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_100EBCEF0;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_10004A240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10004A288(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10004A2D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10004A338()
{
  result = type metadata accessor for Artwork(319);
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

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  sub_10004A5F0(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  sub_10004A658();
  sub_10004AF48();
  sub_10004BF1C();

  sub_10004BEBC(a1, type metadata accessor for Artwork);
  return v8;
}

uint64_t sub_10004A5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10004A658()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      sub_10004ADE8(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      LOBYTE(ObjectType) = v6[8];
      v6[8] = 1;
      v13 = v11;
      sub_10004AC3C(v12, ObjectType);
      sub_10004ADFC(v12, ObjectType);
      swift_unknownObjectRelease();

      v14 = v8;
      v15 = v7;
LABEL_20:
      sub_10004ADFC(v14, v15);
      goto LABEL_27;
    }

    v16 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v17 = [v16 image];
    if (v17)
    {
    }

    else
    {
      v33 = [v1 artworkCatalog];
      if (v33)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v34 = swift_getObjectType();
    v35 = (*(v5 + 8))(0, v34, v5);
    v36 = *v6;
    *v6 = v35;
    v37 = v6[8];
    v6[8] = 1;
    v38 = v35;
    sub_10004AC3C(v36, v37);
    sub_10004ADFC(v36, v37);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v18 = &v2[*(v3 + 32)];
  v19 = *(v18 + 3);
  if (!v19)
  {
    v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v40 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v39 = 0;
    v41 = v39[8];
    v39[8] = -1;
    sub_10004AC3C(v40, v41);
    v14 = v40;
    v15 = v41;
    goto LABEL_20;
  }

  v21 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v23 = *(v18 + 4);
  v24 = *(v18 + 5);
  *&v80 = *v18;
  *(&v80 + 1) = v20;
  *&v81 = v22;
  *(&v81 + 1) = v19;
  *&v82 = v23;
  *(&v82 + 1) = v24;
  v25 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v26 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v26 == 255 || (v26 & 1) != 0)
  {
    v27 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v28 = v22;
    v29 = v19;
    v30 = v21;
    v31 = v20;
    v32 = [v27 image];
    if (v32)
    {
    }

    else
    {
      v51 = [v1 artworkCatalog];
      if (v51)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v52 = type metadata accessor for Artwork.Placeholder.View();
    v53 = objc_allocWithZone(v52);
    v54 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v55 = objc_allocWithZone(UIImageView);
    v56 = v30;
    v77 = v31;
    v57 = v28;
    v58 = v29;
    *&v53[v54] = [v55 init];
    v59 = &v53[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v60 = v82;
    *(v59 + 1) = v81;
    *(v59 + 2) = v60;
    *v59 = v80;
    v78.receiver = v53;
    v78.super_class = v52;
    v61 = v56;
    v62 = v77;
    v63 = v57;
    v64 = v58;
    v65 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v65 addSubview:*&v65[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    sub_10004DF5C(&v83);

    v66 = v62;
    v67 = v61;
    v68 = *v25;
    *v25 = v65;
    LOBYTE(v62) = v25[8];
    v25[8] = 0;
    v69 = v65;
    sub_10004AC3C(v68, v62);
    sub_10004ADFC(v68, v62);

    goto LABEL_27;
  }

  v42 = *v25;
  v43 = *v25 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v44 = *(v43 + 16);
  v83 = *v43;
  v84 = v44;
  v74 = *(v43 + 8);
  v75 = *v43;
  v72 = *(v43 + 24);
  v73 = *(v43 + 16);
  v70 = *(v43 + 40);
  v71 = *(v43 + 32);
  v87 = *(&v83 + 1);
  v88 = v83;
  v76 = *(&v44 + 1);
  v86 = v44;
  v85 = *(v43 + 32);
  v45 = v80;
  v46 = v82;
  *(v43 + 16) = v81;
  *(v43 + 32) = v46;
  *v43 = v45;
  sub_10004E1CC(v21, v20, v22, v19);
  sub_10004ADE8(v42, v26);
  v47 = v22;
  v48 = v19;
  v49 = v21;
  v50 = v20;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(&v80, &v83))
  {
    v79[0] = v75;
    v79[1] = v74;
    v79[2] = v73;
    v79[3] = v72;
    v79[4] = v71;
    v79[5] = v70;
    sub_10004DF5C(v79);
  }

  sub_10004ADFC(v42, v26);
  sub_1000095E8(&v88, &qword_1011B1178);
  sub_1000095E8(&v87, &qword_1011B1178);
  sub_1000095E8(&v86, &qword_1011B1180);

LABEL_27:
  sub_10004AE10();
}

void sub_10004AC3C(void *a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    sub_10004ADE8(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_10004ADE8(a1, a2);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      sub_100009F78(0, &qword_1011B7C10);
      sub_10004ADE8(v6, v10);
      sub_10004ADE8(a1, a2);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_10004ADE8(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_10004ADE8(a1, a2);
    v8 = v6;
  }

LABEL_16:
  if (a2 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    sub_10004ADFC(v13, v12);
  }
}

id sub_10004ADE8(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_10004ADFC(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_10004AE10()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      sub_10004ADFC(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

uint64_t sub_10004AF48()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011B1170);
  v3 = __chkstk_darwin(v2 - 8);
  v103 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v101 = (&v100 - v6);
  v7 = __chkstk_darwin(v5);
  v113 = &v100 - v8;
  v9 = __chkstk_darwin(v7);
  v109 = &v100 - v10;
  v11 = __chkstk_darwin(v9);
  v106 = (&v100 - v12);
  v13 = __chkstk_darwin(v11);
  v110 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v105 = &v100 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = (&v100 - v18);
  __chkstk_darwin(v17);
  v21 = &v100 - v20;
  v22 = sub_10010FC20(&qword_1011B7710);
  v23 = __chkstk_darwin(v22 - 8);
  v102 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v28 = __chkstk_darwin(v25);
  v104 = &v100 - v29;
  __chkstk_darwin(v28);
  v31 = &v100 - v30;
  v32 = type metadata accessor for Artwork.Decoration(0);
  v116 = *(v32 - 1);
  __chkstk_darwin(v32);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v107 frame];
  v36 = v35;
  v38 = v37;
  v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v111 = type metadata accessor for Artwork(0);
  v112 = v39;
  v40 = &v39[v111[7]];
  v117 = v34;
  sub_10004A5F0(v40, v34, type metadata accessor for Artwork.Decoration);
  v41 = *(v40 + v32[7]);
  [v1 bounds];
  if ((v41 & 1) != 0 && (v46 = v42, v47 = v43, v48 = v44, v49 = v45, Width = CGRectGetWidth(*&v42), v45 = v49, v44 = v48, v43 = v47, v51 = Width, v42 = v46, v36 < v51) || (v41 & 2) != 0 && v38 < CGRectGetHeight(*&v42))
  {
    v52 = v117;
    sub_1000089F8(&v117[v32[5]], v31, &qword_1011B7710);
    v53 = type metadata accessor for UIView.Corner();
    v54 = (*(*(v53 - 8) + 48))(v31, 1, v53) != 1;
    sub_1000095E8(v31, &qword_1011B7710);
    v55 = v54;
    v56 = 1;
    [v1 setClipsToBounds:v55];
    v57 = *(v52 + v32[6]);
  }

  else
  {
    [v1 setClipsToBounds:0];
    v57 = [objc_opt_self() clearColor];
    v56 = 0;
  }

  [v1 setBackgroundColor:v57];

  v58 = v116;
  v108 = v27;
  v115 = v56;
  if (v56)
  {
    sub_10004A5F0(v117, v21, type metadata accessor for Artwork.Decoration);
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v114 = v58[7];
  v114(v21, v59, 1, v32);
  sub_1000089F8(v21, v19, &qword_1011B1170);
  v116 = v58[6];
  if ((v116)(v19, 1, v32) == 1)
  {
    v60 = v1;
    sub_1000095E8(v19, &qword_1011B1170);
    v61 = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
  }

  else
  {
    v61 = *v19;
    v62 = v19[1];
    v63 = v19[2];
    v64 = v63;
    v65 = v1;
    sub_10004BEBC(v19, type metadata accessor for Artwork.Decoration);
  }

  v66 = v110;
  UIView.border.setter(v61, v62, v63);
  v67 = v105;
  sub_1000089F8(v21, v105, &qword_1011B1170);
  v68 = v116;
  if ((v116)(v67, 1, v32) == 1)
  {
    sub_1000095E8(v67, &qword_1011B1170);
    v69 = type metadata accessor for UIView.Corner();
    (*(*(v69 - 8) + 56))(v104, 1, 1, v69);
  }

  else
  {
    sub_1000089F8(v67 + v32[5], v104, &qword_1011B7710);
    sub_10004BEBC(v67, type metadata accessor for Artwork.Decoration);
  }

  v70 = v107;
  UIView.corner.setter();

  sub_1000095E8(v21, &qword_1011B1170);
  if (v115)
  {
    v71 = 1;
  }

  else
  {
    sub_10004A5F0(v117, v66, type metadata accessor for Artwork.Decoration);
    v71 = 0;
  }

  v72 = v106;
  v114(v66, v71, 1, v32);
  sub_1000089F8(v66, v72, &qword_1011B1170);
  if (v68(v72, 1, v32) == 1)
  {
    v73 = v70;
    sub_1000095E8(v72, &qword_1011B1170);
    v74 = 0;
    LOBYTE(v75) = 0;
    v76 = 0;
  }

  else
  {
    v74 = *v72;
    v75 = v72[1];
    v76 = v72[2];
    v77 = v76;
    v78 = v70;
    sub_10004BEBC(v72, type metadata accessor for Artwork.Decoration);
  }

  UIView.border.setter(v74, v75, v76);
  v79 = v109;
  sub_1000089F8(v66, v109, &qword_1011B1170);
  v80 = v116;
  if ((v116)(v79, 1, v32) == 1)
  {
    sub_1000095E8(v79, &qword_1011B1170);
    v81 = type metadata accessor for UIView.Corner();
    (*(*(v81 - 8) + 56))(v108, 1, 1, v81);
  }

  else
  {
    sub_1000089F8(v79 + v32[5], v108, &qword_1011B7710);
    sub_10004BEBC(v79, type metadata accessor for Artwork.Decoration);
  }

  UIView.corner.setter();

  sub_1000095E8(v66, &qword_1011B1170);
  v82 = &v112[v111[9]];
  v86 = *v82 && (v83 = *(v82 + 1), ObjectType = swift_getObjectType(), v85 = *(v83 + 16), swift_unknownObjectRetain(), LOBYTE(v83) = v85(ObjectType, v83), swift_unknownObjectRelease(), (v83 & 1) != 0) && *&v112[v111[8] + 24] == 0;
  v87 = v113;
  if ((v115 | v86))
  {
    v88 = 1;
  }

  else
  {
    sub_10004A5F0(v117, v113, type metadata accessor for Artwork.Decoration);
    v88 = 0;
  }

  v114(v87, v88, 1, v32);
  v89 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v89 != 255)
  {
    v90 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v91 = v101;
    sub_1000089F8(v87, v101, &qword_1011B1170);
    if (v80(v91, 1, v32) == 1)
    {
      v92 = v90;
      sub_1000095E8(v91, &qword_1011B1170);
      v93 = 0;
      LOBYTE(v94) = 0;
      v95 = 0;
    }

    else
    {
      v93 = *v91;
      v94 = v91[1];
      v95 = v91[2];
      sub_10004ADE8(v90, v89);
      sub_10004ADE8(v90, v89);
      v96 = v95;
      sub_10004BEBC(v91, type metadata accessor for Artwork.Decoration);
    }

    UIView.border.setter(v93, v94, v95);
    v87 = v113;
    v97 = v103;
    sub_1000089F8(v113, v103, &qword_1011B1170);
    if (v80(v97, 1, v32) == 1)
    {
      sub_1000095E8(v97, &qword_1011B1170);
      v98 = type metadata accessor for UIView.Corner();
      (*(*(v98 - 8) + 56))(v102, 1, 1, v98);
    }

    else
    {
      sub_1000089F8(v97 + v32[5], v102, &qword_1011B7710);
      sub_10004BEBC(v97, type metadata accessor for Artwork.Decoration);
    }

    UIView.corner.setter();
    sub_10004ADFC(v90, v89);
    sub_10004ADFC(v90, v89);
  }

  sub_1000095E8(v87, &qword_1011B1170);
  return sub_10004BEBC(v117, type metadata accessor for Artwork.Decoration);
}

uint64_t sub_10004BB78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_1011B7710);
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

uint64_t sub_10004BC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_1011B7710);
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

void sub_10004BD20(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v7 = [v3 layer];
    v8 = v7;
    if (a2)
    {
      [v7 setBorderWidth:*&a1];
    }

    else
    {
      v9 = [v3 traitCollection];
      [v9 displayScale];
      v11 = v10;

      [v8 setBorderWidth:{*&a1 / fmax(v11, 1.0)}];
    }
  }

  else
  {
    v8 = [v3 layer];
    [v8 setBorderWidth:0.0];
  }

  v12 = [v3 layer];
  if (a3)
  {
    v13 = [a3 CGColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v12 setBorderColor:?];
}

void UIView.border.setter(uint64_t a1, char a2, void *a3)
{
  sub_10004BD20(a1, a2, a3);
}

uint64_t sub_10004BEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10004BF1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    sub_10004C458(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      sub_1000089F8((v4 + 16), v48, &qword_1011B0DF0);
      sub_1000089F8(v48, &v46, &qword_1011B0DF0);
      if (v47)
      {
        v11 = v10;

        sub_100AFE9C8(&v46);
      }

      else
      {
        v13 = v10;
        sub_1000095E8(&v46, &qword_1011B0DF0);
      }

      v14 = String._bridgeToObjectiveC()();

      sub_1000089F8(v48, &v46, &qword_1011B0DF0);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        sub_100AFE9C8(&v46);
      }

      else
      {
        sub_1000095E8(&v46, &qword_1011B0DF0);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        sub_100058300(v27, v29, v25, v19);
        v32 = v31;
        sub_100058300(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return sub_1000095E8(v48, &qword_1011B0DF0);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, sub_100AFE9C0, v45, ObjectType);

      return sub_1000095E8(v48, &qword_1011B0DF0);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    sub_10004C458(0);
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10004C39C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004C3D4()
{

  return swift_deallocObject();
}

id Optional<A>.isArtworkVisuallyIdentical(to:)(uint64_t a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      return [a2 isArtworkVisuallyIdenticalToCatalog:a1];
    }

    return 0;
  }

  return !a1;
}

uint64_t sub_10004C458(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  sub_10004A658();
LABEL_12:
  sub_10004AE10();
  sub_10004AF48();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {

    v11(v12);
    return sub_100020438(v11);
  }

  return result;
}

void sub_10004C5B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_10004C8F4()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIView.Corner();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101183A90);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC5Music21NowPlayingContentView_mode;
  sub_10004CF20(*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v1 traitCollection], &v48 - v16);
  v19 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
  v20 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
  v54 = v1;
  v55 = v17;
  v21 = v20;
  static Artwork.with(_:)(sub_10004D1FC, v8);
  Artwork.View.typedConfiguration.setter(v8);

  v22 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
  if (v22)
  {
    v23 = *(*v22 + 216);

    v25 = v23(v24);

    v26 = [v25 playerViewController];

    v27 = [v26 view];
    if (!v27)
    {
      __break(1u);
      return;
    }

    sub_1000089F8(v17, v15, &qword_101183A90);
    UIView.corner.setter();
  }

  v28 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView];
  if (v28)
  {
    sub_1000089F8(v17, v15, &qword_101183A90);
    v29 = v28;
    UIView.corner.setter();
  }

  if ((*&v1[v18] & 0xC100) == 0x4100)
  {
    [*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:0];
  }

  v56 = 11;
  v30 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v30) & 1) != 0 && (v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] & 1) == 0)
  {
    v31 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
    if (v31)
    {
      v32 = *&v1[v19] + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
      swift_beginAccess();
      v33 = *(v6 + 28);
      v34 = type metadata accessor for Artwork.Decoration(0);
      sub_1000089F8(v32 + v33 + *(v34 + 20), v12, &qword_101183A90);
      v36 = v52;
      v35 = v53;
      if ((*(v52 + 48))(v12, 1, v53) == 1)
      {
        sub_1000095E8(v12, &qword_101183A90);
      }

      else
      {
        v37 = v51;
        (*(v36 + 32))(v51, v12, v35);
        v38 = v31;
        v39 = v48;
        UIView.Corner.radius.getter();
        v41 = v49;
        v40 = v50;
        if ((*(v49 + 88))(v39, v50) == enum case for UIView.Corner.Radius.value(_:))
        {
          (*(v41 + 96))(v39, v40);
          v42 = *v39;
          v43 = v39[8];
          v44 = [v38 layer];
          [v44 setCornerRadius:v42];

          v45 = [v38 layer];
          v46 = &kCACornerCurveContinuous;
          if (!v43)
          {
            v46 = &kCACornerCurveCircular;
          }

          v47 = *v46;
          [v45 setCornerCurve:v47];

          (*(v36 + 8))(v37, v35);
        }

        else
        {
          (*(v36 + 8))(v37, v35);

          (*(v41 + 8))(v39, v40);
        }
      }
    }
  }

  sub_1000095E8(v17, &qword_101183A90);
}

uint64_t sub_10004CF20@<X0>(unsigned __int16 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UIView.Corner();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!(a1 >> 14))
  {
    [a2 horizontalSizeClass];
    static UIView.Corner.value(_:continuous:)();
LABEL_10:

    (*(v7 + 32))(a3, v9, v6);
    v10 = 0;
    return (*(v7 + 56))(a3, v10, 1, v6);
  }

  if (a1 >> 14 == 1)
  {
    if (a1 & 0x100) != 0 && (a1)
    {
      sub_1001D1C24();
      sub_1001D1C78();
      UITraitCollection.subscript.getter();
      if ((sub_1005C3564(v13[15]) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_9;
  }

  if (a1 == 0x8000)
  {
LABEL_9:
    v11 = UIView.Corner.large.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v11, v6);
    goto LABEL_10;
  }

LABEL_6:

  v10 = 1;
  return (*(v7 + 56))(a3, v10, 1, v6);
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_100EBCEF0;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

void sub_10004D23C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_10004D27C(unsigned __int16 a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!(a1 >> 14))
  {
    if ((a1 & 0x100) == 0)
    {
      v17 = Artwork.Placeholder.miniPlayer.unsafeMutableAddressor();
LABEL_8:
      v16 = *v17;
      v15 = v17[1];
      v14 = v17[2];
      v18 = v17[3];
      v11 = v17[4];
      v12 = v17[5];
      v19 = v14;
      v13 = v18;
      v20 = v16;
      v21 = v15;
      goto LABEL_9;
    }

LABEL_7:
    v17 = Artwork.Placeholder.nowPlaying.unsafeMutableAddressor();
    goto LABEL_8;
  }

  if (a1 >> 14 == 1 || a1 == 0x8000)
  {
    goto LABEL_7;
  }

  v5 = Artwork.Placeholder.nowPlaying.unsafeMutableAddressor();
  v6 = *(v5 + 1);
  v27 = *v5;
  v28 = v6;
  v29 = *(v5 + 2);
  v30 = v27;
  v7 = *(&v6 + 1);
  v31 = v6;
  v8 = objc_opt_self();
  sub_1000089F8(&v30, v26, &unk_1011951E0);
  sub_1000089F8(&v30 + 8, v26, &unk_1011951E0);
  sub_1000089F8(&v31, v26, &qword_101184460);
  v9 = v7;
  v10 = [v8 blackColor];
  Artwork.Placeholder.withBackground(_:)(v10, v24);

  sub_1000095E8(&v30, &unk_1011951E0);
  sub_1000095E8(&v30 + 8, &unk_1011951E0);
  sub_1000095E8(&v31, &qword_101184460);

  v11 = v24[4];
  v12 = v24[5];
  v14 = v24[2];
  v13 = v24[3];
  v16 = v24[0];
  v15 = v24[1];
LABEL_9:
  v26[0] = v16;
  v26[1] = v15;
  v26[2] = v14;
  v26[3] = v13;
  v26[4] = v11;
  v26[5] = v12;
  if (a2)
  {
    v22 = [a2 route];
    if (v22)
    {
      v23 = v22;
      if ([v22 isDeviceRoute])
      {
      }

      else
      {
        static Artwork.Placeholder.device(representing:basedOn:)(v23, v26, v25);

        v11 = v25[4];
        v12 = v25[5];
        v14 = v25[2];
        v13 = v25[3];
        v16 = v25[0];
        v15 = v25[1];
      }
    }
  }

  *a3 = v16;
  a3[1] = v15;
  a3[2] = v14;
  a3[3] = v13;
  a3[4] = v11;
  a3[5] = v12;
}

uint64_t *Artwork.Placeholder.miniPlayer.unsafeMutableAddressor()
{
  if (qword_1011B0460 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.miniPlayer;
}

double sub_10004D4F8()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemFillColor];
  v2 = [v0 secondaryLabelColor];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.miniPlayer = v1;
  unk_10121B3E0 = v2;
  qword_10121B3E8 = v4;
  unk_10121B3F0 = v5;
  result = 0.46;
  xmmword_10121B3F8 = xmmword_100EFDB40;
  return result;
}

void sub_10004D5E4(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

uint64_t sub_10004D63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10004D6AC()
{
  sub_100009F78(0, &qword_101180C98);
  UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(153, 153, 153, 0.1);
  UIView.Border.init(thickness:color:)();
  qword_10119BCC0 = v0;
  byte_10119BCC8 = v1 & 1;
  qword_10119BCD0 = v2;
}

id UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_10004A5F0(v1 + v6, v5, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_10004D8C8(a1, v1 + v6);
  swift_endAccess();
  sub_10004D9B8(v5);
  sub_10004BEBC(a1, type metadata accessor for Artwork);
  return sub_10004BEBC(v5, type metadata accessor for Artwork);
}

uint64_t sub_10004D8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004D96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10004D9B8(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  sub_10004A5F0(v6, v5, type metadata accessor for Artwork);
  v7 = _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_10004BEBC(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    sub_10004A658();
    sub_10004AF48();
    sub_10004BF1C();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        sub_10004A658();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

BOOL _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    sub_100009F78(0, &unk_1011B7C00);
    v7 = v6;
    v8 = v4;
    if (static NSObject.== infix(_:_:)())
    {
      if (v5)
      {
        if (v6)
        {
          sub_100009F78(0, &qword_1011B4940);
          v9 = v7;
          v10 = v5;
          v11 = static NSObject.== infix(_:_:)();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  sub_1000089F8(a1 + 16, &v43, &qword_1011B0DF0);
  sub_1000089F8(a2 + 16, &v46, &qword_1011B0DF0);
  if (!v44)
  {
    if (!v47)
    {
      sub_1000095E8(&v43, &qword_1011B0DF0);
      goto LABEL_15;
    }

LABEL_22:
    sub_1000095E8(&v43, &qword_1011B1198);
    return 0;
  }

  sub_1000089F8(&v43, v42, &qword_1011B0DF0);
  if (!v47)
  {
    sub_100AFE9C8(v42);
    goto LABEL_22;
  }

  sub_100AFEA10(&v46, v41);
  v12 = _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(v42, v41);
  sub_100AFE9C8(v41);
  sub_100AFE9C8(v42);
  sub_1000095E8(&v43, &qword_1011B0DF0);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (_s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 40), v13, *(a1 + 56), *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!_s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      sub_10004E1CC(v31, v25, v27, v28);
      sub_10004E1CC(v18, v32, v33, v21);
      v34 = _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v43);

      sub_10004D5E4(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    sub_10004E1CC(*v24, v38, v27, v28);
    sub_10004E1CC(v18, v19, v35, v21);
    sub_10004D5E4(v18, v19, v35, v21);
    sub_10004D5E4(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

void sub_10004DF5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  sub_100009F78(0, &qword_1011B5F70);
  v24 = v12;
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  sub_100009F78(0, &unk_1011B7AD0);
  v26 = v9;
  v27 = v4;
  v28 = static NSObject.== infix(_:_:)();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

id sub_10004E1CC(id result, void *a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = result;
    v6 = a3;
    v7 = a4;
    v8 = v5;

    return a2;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B4940);
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

    sub_100009F78(0, &qword_1011B4940);
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
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B5F70);
    v16 = v15;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011B7C00);
  if ((static NSObject.== infix(_:_:)() & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

id sub_10004E3C8()
{
  v1 = v0;
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-v7];
  v9 = OBJC_IVAR____TtC5Music21NowPlayingContentView_mode;
  v10 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
  if (!(v10 >> 14) || v10 >> 14 != 1 && v10 == 0x8000)
  {
    v11 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView];
    v12 = [v11 layer];
    [v12 cornerRadius];
    v14 = v13;

    sub_10004CF20(*&v1[v9], [v1 traitCollection], v8);
    v15 = type metadata accessor for UIView.Corner();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) == 1)
    {
      sub_1000095E8(v8, &qword_101183A90);
      if (v14 != 0.0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      UIView.Corner.radius.getter();
      (*(v16 + 8))(v8, v15);
      [v11 bounds];
      UIView.Corner.Radius.value(in:)();
      v18 = v17;
      (*(v3 + 8))(v5, v2);
      if (v14 != v18)
      {
LABEL_8:
        sub_10004E714(0, 0);
      }
    }
  }

  v25[15] = 11;
  v19 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19) & 1) != 0 && (v20 = [objc_opt_self() currentDevice], v21 = objc_msgSend(v20, "userInterfaceIdiom"), v20, v21 == 1))
  {
    result = [*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setHidden:0];
  }

  else
  {
    result = sub_100660A4C(v1);
  }

  v23 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkDidChangeHandler];
  if (v23)
  {

    v23(v24);
    return sub_100020438(v23);
  }

  return result;
}

void sub_10004E714(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIView.Corner.Radius();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v10 - 8);
  v12 = aBlock - v11;
  v13 = [v3 traitCollection];
  [v13 displayCornerRadius];
  v15 = v14;

  sub_10004CF20(*&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v3 traitCollection], v12);
  v16 = type metadata accessor for UIView.Corner();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_1000095E8(v12, &qword_101183A90);
    v18 = 0.0;
  }

  else
  {
    UIView.Corner.radius.getter();
    (*(v17 + 8))(v12, v16);
    [v3 bounds];
    UIView.Corner.Radius.value(in:)();
    v18 = v19;
    (*(v7 + 8))(v9, v6);
  }

  v20 = *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView];
  [v20 setClipsToBounds:1];
  if (a2)
  {
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    *(v22 + 24) = a1 & 1;
    *(v22 + 32) = v15;
    *(v22 + 40) = v18;
    aBlock[4] = sub_1005EBE9C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010B9250;
    v23 = _Block_copy(aBlock);
    v24 = v3;

    [v21 animateWithDuration:4 delay:v23 options:0 animations:0.35 completion:0.0];
    _Block_release(v23);
  }

  else
  {
    v25 = [v20 layer];
    v26 = v25;
    if (a1)
    {
      v27 = v15;
    }

    else
    {
      v27 = v18;
    }

    if (a1)
    {
      v28 = &kCACornerCurveContinuous;
    }

    else
    {
      v28 = &kCACornerCurveCircular;
    }

    [v25 setCornerRadius:v27];

    v29 = [v20 layer];
    v30 = *v28;
    [v29 setCornerCurve:v30];
  }
}

uint64_t sub_10004EAF4()
{

  return swift_deallocObject();
}

void sub_10004EBAC(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView;
  v4 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView];
  if (a1)
  {
    v5 = a1;
    if (v4)
    {
      type metadata accessor for NowPlayingContentView(0);
      v6 = v4;
      v5 = v5;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }

    v8 = v5;
    v9 = sub_1002ADF78();
    v10 = *((swift_isaMask & *v9) + 0x110);
    v11 = type metadata accessor for NowPlayingContentView(0);
    v12 = sub_1002B7108(&unk_101189E80, type metadata accessor for NowPlayingContentView);
    v13 = v10(v8, v11, v12);

    v14 = [v8 superview];
    v15 = [v2 view];
    v16 = v15;
    if (v14)
    {
      if (!v15)
      {

        goto LABEL_14;
      }

      sub_100009F78(0, &qword_101181620);
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
LABEL_14:

        v4 = *&v2[v3];
        if (!v4)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else if (v15)
    {

      goto LABEL_14;
    }

    [v8 removeFromSuperview];
    goto LABEL_14;
  }

  if (!v4)
  {
    return;
  }

LABEL_15:
  v18 = v4;
  v22 = sub_1002ADF78();
  v19 = *((swift_isaMask & *v22) + 0x108);
  v20 = type metadata accessor for NowPlayingContentView(0);
  v21 = sub_1002B7108(&unk_101189E80, type metadata accessor for NowPlayingContentView);
  v19(v18, v20, v21);
}

id sub_10004EE7C()
{
  result = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightMedium];
  qword_101218998 = result;
  return result;
}

void sub_10004EEE4(uint64_t a1, id *a2, double *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = *a3;
  v9 = *a2;
  v10 = [v7 _preferredFontForTextStyle:v9 weight:v8];

  if (v10)
  {
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }
}

void sub_10004EF70(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle:v6];

  *a3 = v7;
}

void sub_10004EFF4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath];
  if (!v1 || (v2 = [v1 route]) == 0)
  {
    v20 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
    if (v20)
    {
      [v20 setHidden:1];
      goto LABEL_21;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = v2;
  v4 = sub_1000483AC();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaRemote, v4))
  {
    v5 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton];
    if (!v5)
    {
LABEL_33:
      __break(1u);
      return;
    }

    [v5 setRoute:v3];
  }

  v6 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel;
  v7 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
  if (!v7)
  {
    goto LABEL_30;
  }

  [v7 setRoute:v3];
  v8 = *&v0[v6];
  if (!v8)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (([v3 isDeviceRoute] & 1) != 0 && !objc_msgSend(v3, "isAirPlayingToDevice"))
    {
      goto LABEL_15;
    }

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14 && (v15 = [v0 traitCollection], v16 = objc_msgSend(v15, "preferredContentSizeCategory"), v15, LOBYTE(v15) = UIContentSizeCategory.isAccessibilityCategory.getter(), v16, (v15 & 1) == 0))
    {
      v21 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession];
      if (v21)
      {
        v22 = v0;
        v23 = *((swift_isaMask & *v21) + 0x268);
        v24 = v21;
        LOBYTE(v23) = v23();

        if (v23)
        {
          v0 = v22;
          v17 = *&v22[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount] > 0;
        }

        else
        {
          v17 = 0;
          v0 = v22;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
LABEL_15:
      v17 = 1;
    }

    v18 = *&v0[v6];
    if (v18)
    {
      v19 = v18;

      [v19 setHidden:v17];

      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_18:

LABEL_21:
  sub_10004F27C();

  sub_10004F8C8();
}

void sub_10004F27C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (!v4 || ([v4 isSharedListeningSession] & 1) == 0) && !*&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession] || *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount] < 1 || (v5 = objc_msgSend(v0, "traitCollection"), v6 = objc_msgSend(v5, "preferredContentSizeCategory"), v5, LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter(), v6, (v5))
  {
    v7 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
    if (v7)
    {
      v8 = objc_opt_self();
      v9 = v7;
      v10 = [v8 secondaryLabelColor];
      [v9 setTextColor:v10];

      v11 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel];
      if (v11)
      {
        [v11 setHidden:1];
      }

      sub_10004F8C8();
      return;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel;
  if (!*&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel])
  {
    v13 = [objc_allocWithZone(UILabel) init];
    if (qword_10117F500 != -1)
    {
      swift_once();
    }

    [v13 setFont:qword_101218990];
    v14 = [objc_opt_self() systemGreenColor];
    [v13 setTextColor:v14];

    [v13 setAdjustsFontForContentSizeCategory:1];
    [v13 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v15 = [v0 view];
    if (!v15)
    {
      goto LABEL_29;
    }

    v16 = v15;
    [v15 addSubview:v13];

    v17 = *&v0[v12];
    *&v0[v12] = v13;
  }

  v18 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel;
  v19 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 systemGreenColor];
  [v21 setTextColor:v22];

  v23 = *&v0[v18];
  if (!v23)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v24 = v0;
  if ([v23 isHidden])
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0x6C6F626D79737B7BLL;
    v25._object = 0xEB00000000207D7DLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v26 = 0x696E657473694C20;
    v27 = 0xEA0000000000676ELL;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0x6C6F626D79737B7BLL;
    v28._object = 0xEB00000000207D7DLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v26 = 12042784;
    v27 = 0xA300000000000000;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v26);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  sub_100009F78(0, &unk_101189D70);
  v32 = String._bridgeToObjectiveC()();
  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = sub_1002B628C(_swiftEmptyArrayStorage);
  v43.is_nil = sub_1002B628C(_swiftEmptyArrayStorage);
  v35._countAndFlagsBits = v29;
  v35._object = v31;
  v36._countAndFlagsBits = 0x6C6F626D79737B7BLL;
  v36._object = 0xEA00000000007D7DLL;
  v43.value.super.isa = v33;
  v38.super.isa = NSAttributedString.init(string:attributes:replacingPlaceholder:withImage:imageAttributes:)(v35, v34, v36, v43, v37).super.isa;
  v39 = *&v24[v12];
  if (v39)
  {
    [v39 setAttributedText:v38.super.isa];
    v40 = *&v24[v12];
    if (v40)
    {
      v41 = v40;
      [v41 setHidden:0];
    }
  }

  sub_10004F8C8();
}

void sub_10004F8C8()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
  if (v1)
  {
    v2 = v0;
    if ([v1 isHidden] && ((v3 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel]) == 0 || objc_msgSend(v3, "isHidden")))
    {
      v4 = sub_1002AE644();
      v5 = [v2 traitCollection];
      v6 = [v5 preferredContentSizeCategory];

      LOBYTE(v5) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v7 = (*((swift_isaMask & *v4) + 0x100))(v35);
      *(v8 + 16) = v5 & 1;
      v7(v35, 0);
    }

    else
    {
      v4 = sub_1002AE644();
      v9 = (*((swift_isaMask & *v4) + 0x100))(v35);
      *(v10 + 16) = 1;
      v9(v35, 0);
    }

    v11 = [v2 traitCollection];
    v12 = [v11 horizontalSizeClass];

    v13 = sub_1002AE644();
    if (v12 == 2)
    {
      if (qword_10117F4E0 != -1)
      {
        swift_once();
      }

      v14 = *((swift_isaMask & *v13) + 0xE8);
      v15 = qword_101218970;
      v16 = v14(v35);
      v18 = *v17;
      *v17 = v15;

      v16(v35, 0);
      v19 = qword_10117F4E8;
      v20 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = qword_101218978;
    }

    else
    {
      if (qword_10117F4F0 != -1)
      {
        swift_once();
      }

      v22 = *((swift_isaMask & *v13) + 0xE8);
      v23 = qword_101218980;
      v24 = v22(v35);
      v26 = *v25;
      *v25 = v23;

      v24(v35, 0);
      v27 = qword_10117F4F8;
      v20 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
      if (v27 != -1)
      {
        swift_once();
      }

      v21 = qword_101218988;
    }

    v28 = *((swift_isaMask & *v20) + 0x100);
    v29 = v21;
    v30 = v28(v35);
    v32 = *v31;
    *v31 = v29;

    v30(v35, 0);
    v33 = [v2 view];
    if (v33)
    {
      v34 = v33;
      [v33 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10004FD5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType];
  if (v2 >= 3)
  {
    _StringGuts.grow(_:)(24);
    v14._object = 0x8000000100E53D80;
    v14._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0x6C6666756853504DLL;
    v15._object = 0xED00006570795465;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    type metadata accessor for MPShuffleType(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    [v0 setSelected:(6u >> (v2 & 7)) & 1];
    v3 = [v0 isSelected];
    v4 = &OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor;
    if (!v3)
    {
      v4 = &OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_defaultColor;
    }

    [v0 setTintColor:*&v0[*v4]];
    v5 = 0.0;
    if ([v0 isSelected] && v0[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_isGlowEnabled] == 1)
    {
      v6 = [v0 traitCollection];
      sub_100050078();
      v7 = UITraitCollection.subscript.getter();

      if (v7)
      {
        v5 = 0.4;
      }

      else
      {
        v5 = 0.0;
      }
    }

    v8 = [v1 layer];
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 CGColor];

    [v8 setShadowColor:v10];
    v11 = [v1 layer];
    *&v12 = v5;
    [v11 setShadowOpacity:v12];

    v13 = [v1 layer];
    [v13 setShadowOffset:{0.0, 0.0}];

    v17 = [v1 layer];
    [v17 setShadowRadius:6.0];
  }
}

unint64_t sub_100050078()
{
  result = qword_1011839C0;
  if (!qword_1011839C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011839C0);
  }

  return result;
}

uint64_t *UIColor.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_1011B04D0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.normal;
}

uint64_t sub_1000501F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003640C;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

void ControlEventHandling<>.on(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100009F78(0, &qword_1011BA038);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = v10;
  v11[4] = a2;
  v11[5] = a3;

  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v5 addAction:v12 forControlEvents:{a1, 0, 0, 0, sub_100C221B8, v11}];
}

uint64_t sub_1000503FC()
{

  return swift_deallocObject();
}

uint64_t sub_10005043C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100050478()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType;
  v5 = *&v1[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType];
  if (v5 >= 3)
  {
    _StringGuts.grow(_:)(24);
    v16._object = 0x8000000100E53D80;
    v16._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x746165706552504DLL;
    v17._object = 0xEC00000065707954;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    type metadata accessor for MPRepeatType(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    [v1 setSelected:(6u >> (v5 & 7)) & 1];
    v6 = sub_100043D3C(*&v1[v4]);
    [v1 setImage:v6 forState:0];

    v7 = [v1 isSelected];
    v8 = &OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor;
    if (!v7)
    {
      v8 = &OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_defaultColor;
    }

    [v1 setTintColor:*&v1[*v8]];
    if (![v1 isSelected] || (v1[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_isGlowEnabled] & 1) == 0)
    {
      v3 = 0;
    }

    v9 = [v1 layer];
    v10 = [objc_opt_self() whiteColor];
    v11 = [v10 CGColor];

    [v9 setShadowColor:v11];
    v12 = [v1 layer];
    v13 = v12;
    LODWORD(v14) = 1053609165;
    if ((v3 & 1) == 0)
    {
      *&v14 = 0.0;
    }

    [v12 setShadowOpacity:v14];

    v15 = [v1 layer];
    [v15 setShadowOffset:{0.0, 0.0}];

    v19 = [v1 layer];
    [v19 setShadowRadius:6.0];
  }
}

void sub_100050828(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView] = 0;
  v9 = &v4[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[96] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = 0;
  v4[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_wantsHihglightIndicator] = 1;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4046000000000000;
  v51.receiver = v4;
  v51.super_class = type metadata accessor for NowPlayingTransportButton();
  v10 = objc_msgSendSuper2(&v51, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_allocWithZone(UIView);
  v12 = v10;
  v13 = [v11 init];
  v14 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView;
  v15 = *&v12[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
  *&v12[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView] = v13;
  v16 = v13;

  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = *&v12[v14];
  if (!v17)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = qword_10117F918;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor:qword_1012190B0];

  v20 = *&v12[v14];
  if (!v20)
  {
    goto LABEL_19;
  }

  [v20 setAlpha:0.0];
  v21 = *&v12[v14];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  CGAffineTransformMakeScale(&v50, 1.4, 1.4);
  [v21 setTransform:&v50];
  v22 = *&v12[v14];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v12;
  [v23 insertSubview:v22 atIndex:0];
  v24 = *&v12[v14];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = [v24 widthAnchor];
  v26 = [v25 constraintEqualToConstant:44.0];

  v27 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint;
  v28 = *&v23[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  *&v23[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = v26;

  sub_10010FC20(&qword_101183990);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBDC10;
  v30 = *&v23[v27];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v29;
  *(v29 + 32) = v30;
  v32 = *&v12[v14];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v30;
  v34 = [v32 heightAnchor];
  v35 = *&v12[v14];
  if (!v35)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = [v35 widthAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  v31[5] = v37;
  v38 = *&v12[v14];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = [v38 centerXAnchor];
  v40 = [v23 centerXAnchor];

  v41 = [v39 constraintEqualToAnchor:v40];
  v31[6] = v41;
  v42 = *&v12[v14];
  if (!v42)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v43 = objc_opt_self();
  v44 = [v42 centerYAnchor];
  v45 = [v23 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  v31[7] = v46;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  v48 = [v23 imageView];
  if (v48)
  {
    v49 = v48;
    [v48 setContentMode:1];
  }

  sub_100009F78(0, &unk_101189DF0);
  static UIPointerStyle.capsule(in:)(*&v12[v14]);
  UIButton.pointerStyleProvider.setter();
}

id sub_100050D34(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for NowPlayingTransportButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_100050DA0()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for NowPlayingTransportButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = [v0 imageView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    [v1 contentRectForBounds:?];
    [v1 imageRectForContentRect:?];
    UIView.untransformedFrame.setter(v4, v5, v6, v7);
  }

  v8 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView;
  v9 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorView];
  if (v9)
  {
    v10 = [v9 layer];
    v11 = *&v1[v8];
    if (v11)
    {
      [v11 bounds];
      [v10 setCornerRadius:CGRectGetWidth(v13) * 0.5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id UIView.untransformedFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v11 = [v4 layer];
  [v11 anchorPoint];
  v13 = v12;

  v14 = MinX + Width * v13;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  v17 = [v4 layer];
  [v17 anchorPoint];
  v19 = v18;

  [v4 setCenter:{v14, MinY + Height * v19}];
  [v4 bounds];

  return [v4 setBounds:?];
}

void sub_1000511A4()
{
  v1 = v0;
  p_cache = &selRef_trackNumber;
  v3 = [v0 traitCollection];
  v4 = &v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButtonConfiguration];
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;

  v5 = &v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButtonConfiguration];
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;

  v6 = &v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButtonConfiguration];
  *v6 = 0;
  v6[1] = 0;
  v173 = v6;
  v6[2] = 0;

  v7 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton;
  v8 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton];
  if (!v8)
  {
    goto LABEL_81;
  }

  v9 = v8;
  v10 = &stru_101148000;
  [v9 setHidden:{objc_msgSend(v3, "horizontalSizeClass") != 2}];

  if ([v3 horizontalSizeClass] == 2)
  {
    goto LABEL_3;
  }

  v26 = [v1 view];
  if (!v26)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = v26;
  v28 = [v26 traitCollection];

  v29 = [v28 tabAccessoryEnvironment];
  if (v29 < 2)
  {
    if ((v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment + 8] & 1) == 0 && *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment] == 3)
    {
      goto LABEL_41;
    }

LABEL_3:
    v11 = sub_1000483AC();
    v12 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaRemote, v11);
    goto LABEL_4;
  }

  if (v29 != 3)
  {
    goto LABEL_3;
  }

LABEL_41:
  v12 = 1;
LABEL_4:
  v13 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton;
  v14 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton];
  if (!v14)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if ((v12 & 1) != [v14 isHidden])
  {
    v15 = *&v1[v13];
    if (!v15)
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v16 = 1.0;
    if (v12)
    {
      v16 = 0.0;
    }

    [v15 setAlpha:v16];
    v17 = *&v1[v13];
    if (!v17)
    {
      goto LABEL_94;
    }

    [v17 setHidden:v12 & 1];
  }

  sub_1002B06E4();
  v18 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
  if (!v18)
  {
    goto LABEL_83;
  }

  v19 = v18;
  v20 = [v3 horizontalSizeClass];
  v21 = 12.0;
  if (v20 == 2)
  {
    v21 = 0.0;
  }

  [v19 setSpacing:v21];

  v22 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  v175 = v13;
  v176 = v3;
  v174 = v22;
  if (v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing] == 1)
  {
    if (v22 && ([v22 isSharedListeningSession] & 1) != 0)
    {
      v23 = 1;
      v24 = 1;
      v25 = *&v1[v7];
      if (!v25)
      {
        goto LABEL_52;
      }

LABEL_27:
      [v25 setEnabled:0];
      v31 = *&v1[v7];
      if (v31)
      {
        v32 = &v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
        v34 = *&v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
        v33 = *&v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
        v212 = *&v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
        v213 = v34;
        v214 = v33;
        v36 = *&v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
        v35 = *&v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
        v37 = *&v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
        v218 = v31[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
        v216 = v36;
        v217 = v35;
        v215 = v37;
        *(v32 + 2) = 0u;
        *(v32 + 3) = 0u;
        *(v32 + 4) = 0u;
        *(v32 + 5) = 0u;
        v32[96] = 0;
        *v32 = 0u;
        *(v32 + 1) = 0u;
        v38 = v31;
        sub_1000095E8(&v212, &qword_101183BC0);
        sub_100052308();

        v39 = *&v1[v7];
        if (v39)
        {
          v40 = v176;
          v41 = v39;
          v42 = 1;
          v43 = sub_1007EE8A4(0, v176, -1, 1u);
          v44 = String._bridgeToObjectiveC()();
          v45 = [objc_opt_self() systemImageNamed:v44 withConfiguration:v43];

          [v41 setImage:v45 forState:0];
          if (v23)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }
  }

  else
  {
    v30 = v22;
  }

  if (v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading])
  {
    v24 = 0;
    v23 = 1;
    v25 = *&v1[v7];
    if (v25)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

  v46 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController];
  if (!*(v46 + 32))
  {
    v23 = 0;
    v24 = 0;
    v25 = *&v1[v7];
    if (v25)
    {
      goto LABEL_27;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v47 = *(v46 + 16);
  v48 = *(v46 + 24);
  v170 = *(v46 + 32);

  v49 = [v1 traitCollection];
  v50 = v47;
  v172 = v48;
  sub_1007EE2AC(v49, 0, v47, v48, &v196);

  v51 = v197;
  v52 = *&v1[v7];
  if (v197)
  {
    if (!v52)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v191 = v200;
    v192 = v201;
    v193 = v202;
    LOBYTE(v194) = v203;
    v189 = v198;
    v190 = v199;
    v53 = &v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
    v55 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
    v54 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
    v212 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
    v213 = v55;
    v214 = v54;
    v57 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
    v56 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
    v58 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
    v218 = v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
    v216 = v57;
    v217 = v56;
    v215 = v58;
    *v53 = v196;
    *(v53 + 1) = v51;
    *(v53 + 3) = v191;
    *(v53 + 4) = v192;
    *(v53 + 5) = v193;
    v53[96] = v194;
    *(v53 + 1) = v189;
    *(v53 + 2) = v190;
    sub_1000089F8(&v196, &v204, &qword_101183BC0);
    sub_1000089F8(&v196, &v204, &qword_101183BC0);
    v59 = v52;
    sub_1000095E8(&v212, &qword_101183BC0);
    sub_100052308();
    sub_1000095E8(&v196, &qword_101183BC0);

    sub_1000095E8(&v196, &qword_101183BC0);
    v60 = v50;
    v61 = v48;
    v62 = *&v1[v7];
    if (v62)
    {
      goto LABEL_35;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v52)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v156 = &v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
  v158 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
  v157 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
  v212 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
  v213 = v158;
  v214 = v157;
  v160 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
  v159 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
  v161 = *&v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
  v218 = v52[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
  v216 = v160;
  v217 = v159;
  v215 = v161;
  *(v156 + 2) = 0u;
  *(v156 + 3) = 0u;
  *(v156 + 4) = 0u;
  *(v156 + 5) = 0u;
  v156[96] = 0;
  *v156 = 0u;
  *(v156 + 1) = 0u;
  v162 = v52;
  sub_1000095E8(&v212, &qword_101183BC0);
  sub_100052308();

  v163 = *&v1[v7];
  v61 = v48;
  if (v163)
  {
    v164 = v3;
    v165 = v163;
    v60 = v50;
    sub_1007EEB38(v50, v172);
    v167 = v166;
    if (v166)
    {
      v168 = sub_1007EE8A4(0, v164, v50, v172);
      v169 = String._bridgeToObjectiveC()();

      v167 = [objc_opt_self() systemImageNamed:v169 withConfiguration:v168];

      v61 = v172;
    }

    [v165 setImage:v167 forState:0];
    v62 = *&v1[v7];
    if (v62)
    {
LABEL_35:
      [v62 setEnabled:{1, v170}];
      *v4 = v60;
      v4[1] = v61;
      v4[2] = v171;

      v24 = 0;
LABEL_36:
      v63 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController];
      v13 = *(v63 + 56);
      if (v13)
      {
        v7 = *(v63 + 40);
        v4 = *(v63 + 48);

        v64 = [v1 traitCollection];
        sub_1007EE2AC(v64, 0, v7, v4, &v204);

        v65 = v205;
        p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
        v10 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton;
        v23 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton];
        if (v205)
        {
          if (!v23)
          {
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          v179 = v208;
          v180 = v209;
          v181 = v210;
          v182 = v211;
          v177 = v206;
          v178 = v207;
          v66 = v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition;
          v68 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16);
          v67 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32);
          v212 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition);
          v213 = v68;
          v214 = v67;
          v70 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64);
          v69 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80);
          v71 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48);
          v218 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96);
          v216 = v70;
          v217 = v69;
          v215 = v71;
          *v66 = v204;
          *(v66 + 8) = v65;
          *(v66 + 48) = v179;
          *(v66 + 64) = v180;
          *(v66 + 80) = v181;
          *(v66 + 96) = v182;
          *(v66 + 16) = v177;
          *(v66 + 32) = v178;
          sub_1000089F8(&v204, &v189, &qword_101183BC0);
          sub_1000089F8(&v204, &v189, &qword_101183BC0);
          v72 = v23;
          sub_1000095E8(&v212, &qword_101183BC0);
          sub_100052308();
          sub_1000095E8(&v204, &qword_101183BC0);

          sub_1000095E8(&v204, &qword_101183BC0);
          goto LABEL_58;
        }

LABEL_53:
        if (!v23)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v92 = v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition;
        v94 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16);
        v93 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32);
        v212 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition);
        v213 = v94;
        v214 = v93;
        v96 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64);
        v95 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80);
        v97 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48);
        v218 = *(v23 + OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96);
        v216 = v96;
        v217 = v95;
        v215 = v97;
        *(v92 + 32) = 0u;
        *(v92 + 48) = 0u;
        *(v92 + 64) = 0u;
        *(v92 + 80) = 0u;
        *(v92 + 96) = 0;
        *v92 = 0u;
        *(v92 + 16) = 0u;
        v98 = v23;
        sub_1000095E8(&v212, &qword_101183BC0);
        sub_100052308();

        v99 = *(&v10->name + v1);
        if (!v99)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v100 = v176;
        v101 = v99;
        sub_1007EEB38(v7, v4);
        v103 = v102;
        if (v102)
        {
          v104 = v100;
          v105 = sub_1007EE8A4(0, v100, v7, v4);
          v106 = String._bridgeToObjectiveC()();

          v103 = [objc_opt_self() systemImageNamed:v106 withConfiguration:v105];

          v100 = v104;
          p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
        }

        [v101 setImage:v103 forState:0];
LABEL_58:
        v107 = *(p_cache[350] + v1);
        v85 = v176;
        if (!v107)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        [v107 setEnabled:1];
        *v5 = v7;
        v5[1] = v4;
        v5[2] = v13;

LABEL_60:
        v108 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController];
        v109 = *(v108 + 80);
        if (v109)
        {
          v110 = *(v108 + 64);
          v111 = *(v108 + 72);

          v112 = [v1 traitCollection];
          sub_1007EE2AC(v112, 0, v110, v111, &v212);

          v113 = *(&v212 + 1);
          v114 = v175;
          v115 = *&v1[v175];
          if (*(&v212 + 1))
          {
            if (!v115)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v185 = v215;
            v186 = v216;
            v187 = v217;
            v188 = v218;
            v183 = v213;
            v184 = v214;
            v116 = &v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
            v118 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
            v117 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
            v189 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
            v190 = v118;
            v191 = v117;
            v120 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
            v119 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
            v121 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
            v195 = v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
            v193 = v120;
            v194 = v119;
            v192 = v121;
            *v116 = v212;
            *(v116 + 1) = v113;
            v122 = v186;
            *(v116 + 3) = v185;
            *(v116 + 4) = v122;
            *(v116 + 5) = v187;
            v116[96] = v188;
            v123 = v184;
            *(v116 + 1) = v183;
            *(v116 + 2) = v123;
            sub_1000089F8(&v212, &v177, &qword_101183BC0);
            sub_1000089F8(&v212, &v177, &qword_101183BC0);
            v124 = v115;
            sub_1000095E8(&v189, &qword_101183BC0);
            sub_100052308();
            sub_1000095E8(&v212, &qword_101183BC0);

            sub_1000095E8(&v212, &qword_101183BC0);
          }

          else
          {
            if (!v115)
            {
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            v140 = &v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
            v142 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
            v141 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
            v189 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
            v190 = v142;
            v191 = v141;
            v144 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
            v143 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
            v145 = *&v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
            v195 = v115[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
            v193 = v144;
            v194 = v143;
            v192 = v145;
            *(v140 + 2) = 0u;
            *(v140 + 3) = 0u;
            *(v140 + 4) = 0u;
            *(v140 + 5) = 0u;
            v140[96] = 0;
            *v140 = 0u;
            *(v140 + 1) = 0u;
            v146 = v115;
            sub_1000095E8(&v189, &qword_101183BC0);
            sub_100052308();

            v147 = *&v1[v175];
            if (!v147)
            {
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

            v148 = v85;
            v149 = v147;
            sub_1007EEB38(v110, v111);
            v151 = v150;
            if (v150)
            {
              v152 = sub_1007EE8A4(0, v148, v110, v111);
              v153 = String._bridgeToObjectiveC()();

              v151 = [objc_opt_self() systemImageNamed:v153 withConfiguration:v152];
            }

            [v149 setImage:v151 forState:0];
            v114 = v175;
          }

          v154 = *&v1[v114];
          if (v154)
          {
            v155 = v154;
            [v155 setEnabled:1];

            *v173 = v110;
            v173[1] = v111;
            v173[2] = v109;

            return;
          }

          goto LABEL_95;
        }

LABEL_64:
        v125 = *&v1[v175];
        if (v125)
        {
          [v125 setEnabled:0];
          v126 = *&v1[v175];
          if (v126)
          {
            v127 = &v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
            v129 = *&v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
            v128 = *&v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
            v212 = *&v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
            v213 = v129;
            v214 = v128;
            v131 = *&v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
            v130 = *&v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
            v132 = *&v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
            v218 = v126[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
            v216 = v131;
            v217 = v130;
            v215 = v132;
            *(v127 + 2) = 0u;
            *(v127 + 3) = 0u;
            *(v127 + 4) = 0u;
            *(v127 + 5) = 0u;
            v127[96] = 0;
            *v127 = 0u;
            *(v127 + 1) = 0u;
            v133 = v126;
            sub_1000095E8(&v212, &qword_101183BC0);
            sub_100052308();

            v134 = *&v1[v175];
            if (v134)
            {
              v135 = v85;
              v136 = v134;
              v137 = sub_1007EE8A4(0, v85, 1, 1u);
              v138 = String._bridgeToObjectiveC()();
              v139 = [objc_opt_self() systemImageNamed:v138 withConfiguration:v137];

              [v136 setImage:v139 forState:0];
              return;
            }

            goto LABEL_91;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v42 = 0;
LABEL_43:
      v73 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton;
      v74 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton];
      if (v74)
      {
        [v74 setEnabled:0];
        v75 = *&v1[v73];
        if (v75)
        {
          v76 = &v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
          v78 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
          v77 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
          v212 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
          v213 = v78;
          v214 = v77;
          v80 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
          v79 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
          v81 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
          v218 = v75[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
          v216 = v80;
          v217 = v79;
          v215 = v81;
          *(v76 + 2) = 0u;
          *(v76 + 3) = 0u;
          *(v76 + 4) = 0u;
          *(v76 + 5) = 0u;
          v76[96] = 0;
          *v76 = 0u;
          *(v76 + 1) = 0u;
          v82 = v75;
          sub_1000095E8(&v212, &qword_101183BC0);
          sub_100052308();

          v83 = *&v1[v73];
          if (v83)
          {
            v84 = v24;
            v85 = v176;
            v86 = v176;
            v87 = v83;
            sub_1007EEB38(v84, 2);
            if (v88)
            {
              v89 = sub_1007EE8A4(0, v86, v84, 2u);
              v90 = String._bridgeToObjectiveC()();

              v91 = [objc_opt_self() systemImageNamed:v90 withConfiguration:v89];

              v85 = v176;
            }

            else
            {
              v91 = 0;
            }

            [v87 setImage:v91 forState:0];
            if (v42)
            {
              goto LABEL_64;
            }

            goto LABEL_60;
          }

LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    goto LABEL_80;
  }

LABEL_105:
  __break(1u);
}

uint64_t sub_1000522C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

void sub_100052308()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
  v3 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
  v39 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
  v40 = v3;
  v41 = v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
  v4 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
  *&v37.a = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
  *&v37.c = v4;
  v5 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
  *&v37.tx = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
  v38 = v5;
  if (*&v37.b)
  {
    v30 = *&v37.a;
    v6 = *(v2 + 4);
    v7 = *(v2 + 5);
    v8 = *(v2 + 2);
    v33 = *(v2 + 3);
    v34 = v6;
    v35 = v7;
    v36 = v2[96];
    v9 = *v2;
    v31 = *(v2 + 1);
    v32 = v8;
    v28[0] = v9;
    v28[1] = v31;
    v29 = v36;
    v28[4] = v6;
    v28[5] = v7;
    v28[2] = v8;
    v28[3] = v33;
    sub_1001D2EC0(v28, &v23);
    [v0 setImage:0 forState:0];
    v10 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView;
    v11 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
    if (v11)
    {
      v12 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
    }

    else
    {
      v14 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v23 = v37;
      v24 = v38;
      sub_1001D2EC0(&v23, v22);
      v15 = CoreAnimationPackageView.init(definition:)(&v30);
      v12 = UIView.forAutolayout.getter();

      v11 = 0;
    }

    v16 = *((swift_isaMask & *v12) + 0xA0);
    sub_10040F864(&v37, &v23);
    v17 = v11;
    v16(&v30);
    v18 = [v1 tintColor];
    (*((swift_isaMask & *v12) + 0xD8))(v18);
    if ([v1 isHighlighted])
    {
      CGAffineTransformMakeScale(&v23, 0.8, 0.8);
    }

    else
    {
      v23.a = 1.0;
      v23.b = 0.0;
      v23.c = 0.0;
      v23.d = 1.0;
      v23.tx = 0.0;
      v23.ty = 0.0;
    }

    [v12 setTransform:&v23];
    v19 = *&v1[v10];
    *&v1[v10] = v12;
    v20 = v12;
    sub_1000525EC(v19);

    sub_10040F8D4(&v37);
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
    v21 = v13;
    *&v0[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView] = 0;
    sub_1000525EC(v13);
  }
}

void sub_1000525EC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView;
  v5 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_11:
      v13 = v5;
      v14 = [v13 superview];
      if (!v14 || (v15 = v14, sub_100009F78(0, &qword_101181620), v16 = v2, v17 = static NSObject.== infix(_:_:)(), v15, v16, isa = v13, (v17 & 1) == 0))
      {
        [v13 setUserInteractionEnabled:0];
        [v2 addSubview:v13];
        v18 = objc_opt_self();
        sub_10010FC20(&qword_101183990);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_100EBDC10;
        v20 = [v13 leadingAnchor];
        v21 = [v2 leadingAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];

        *(v19 + 32) = v22;
        v23 = [v13 trailingAnchor];
        v24 = [v2 trailingAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];

        *(v19 + 40) = v25;
        v26 = [v13 topAnchor];
        v27 = [v2 topAnchor];
        v28 = [v26 constraintEqualToAnchor:v27];

        *(v19 + 48) = v28;
        v29 = [v13 bottomAnchor];

        v30 = [v2 bottomAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v19 + 56) = v31;
        sub_100009F78(0, &qword_1011838A0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v18 activateConstraints:isa];
      }

      return;
    }

    type metadata accessor for CoreAnimationPackageView();
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v7 = a1;
  }

  v9 = [v7 superview];
  if (v9)
  {
    v10 = v9;
    sub_100009F78(0, &qword_101181620);
    v11 = v2;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      [a1 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1000529EC()
{
  v0 = _s11CoordinatorCMa_0();
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  sub_10010FC20(&unk_10118C440);
  swift_allocObject();
  v1[4] = PassthroughSubject.init()();
  v3[3] = v0;
  v3[4] = &off_1010B8488;
  v3[0] = v1;
  type metadata accessor for GroupActivitiesManager(0);
  swift_allocObject();
  result = GroupActivitiesManager.init(coordinator:)(v3);
  qword_101218AD0 = result;
  return result;
}

void sub_100052AE0()
{
  sub_100052C90(319, &qword_1011AF3D0, &qword_1011AF3D8, "Ld\n", &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100052CF4();
    if (v1 <= 0x3F)
    {
      sub_100052D5C(319, &qword_1011AF3F0, type metadata accessor for CodableListeningProperties);
      if (v2 <= 0x3F)
      {
        sub_100052D5C(319, &qword_1011AF3F8, type metadata accessor for CodableModelObjectIdentity);
        if (v3 <= 0x3F)
        {
          sub_100052D5C(319, &unk_1011AF400, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100052C2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100052C90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100052CF4()
{
  if (!qword_1011AF3E0)
  {
    sub_100009F78(255, &qword_1011AC8D8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AF3E0);
    }
  }
}

void sub_100052D5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100052E18()
{
  sub_10000547C(319, &qword_1011AEEF0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100052D5C(319, qword_1011AF4B0, _s3__C7CGImageCMa_0);
    if (v1 <= 0x3F)
    {
      sub_100052D5C(319, &qword_1011A9988, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        _s3__C6CGSizeVMa_0(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100053024(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000530D4()
{
  sub_10000547C(319, &qword_1011AEE78, &type metadata for Int, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_10000547C(319, &qword_1011AC790, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_100052C90(319, &qword_1011AF238, &qword_1011AF160, &unk_100EFB350, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_100052D5C(319, &unk_1011AF240, type metadata accessor for GroupActivitiesManager.Activity);
        if (v3 <= 0x3F)
        {
          sub_100052D5C(319, &qword_1011AA350, type metadata accessor for Signpost);
          if (v4 <= 0x3F)
          {
            sub_100052D5C(319, &unk_1011AF250, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t GroupActivitiesManager.init(coordinator:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v3 - 8);
  v37 = &v33 - v4;
  v34 = sub_10010FC20(&qword_1011AF170);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v33 - v6;
  v8 = sub_10010FC20(&qword_1011ABBB8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_10010FC20(&qword_1011AEDA8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  v35 = xmmword_100EBCEE0;
  *(v1 + 56) = xmmword_100EBCEE0;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v38 = 0;
  Published.init(initialValue:)();
  (*(v13 + 32))(v2 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v38) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v17, v11, v8);
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  sub_10010FC20(&qword_1011AF160);
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v18, v7, v34);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  type metadata accessor for GroupStateObserver();
  *(v2 + v19) = GroupStateObserver.__allocating_init()();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v21 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v21 - 8) + 56))(v2 + v20, 1, 1, v21);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v23 = type metadata accessor for Signpost();
  (*(*(v23 - 8) + 56))(v2 + v22, 1, 1, v23);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v2 + v24, 1, 1, v25);
  v26 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v26 = v35;
  *(v26 + 16) = 0;
  v27 = v36;
  sub_100008FE4(v36, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  ObservationRegistrar.init()();
  *(v2 + 88) = v28;
  v29 = type metadata accessor for TaskPriority();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v2;

  sub_100969440(0, 0, v30, &unk_100EFB470, v31);

  sub_10000959C(v27);
  return v2;
}

uint64_t sub_100053944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_10010FC20(&qword_1011AF0C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100053A14()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100053ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100053B80();
}

uint64_t sub_100053B80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_100053C10();
}

uint64_t sub_100053C10()
{
  v1[5] = v0;
  v2 = sub_10010FC20(&qword_1011AF960);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011AF968);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_10006AADC, v5, v4);
}

uint64_t sub_100053D98()
{
  type metadata accessor for PreviewPlaybackController(0);
  v0 = swift_allocObject();
  result = sub_100054124();
  qword_101218620 = v0;
  return result;
}

void sub_100053DF8()
{
  sub_100053F7C(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_100053F18();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100053F18()
{
  if (!qword_1011816F0)
  {
    sub_1001109D0(&unk_10119E440);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011816F0);
    }
  }
}

void sub_100053F7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100053FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

void sub_100054040()
{
  sub_100053F7C(319, &unk_101181968, &type metadata for PreviewPlaybackController.Context.Origin, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Song();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeControlStatus(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100054124()
{
  v1 = v0;
  v38 = sub_10010FC20(&qword_1011819B0);
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v36 - v3;
  v5 = sub_10010FC20(&unk_10119E440);
  v6 = __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = sub_10010FC20(&unk_101189E60);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC5Music25PreviewPlaybackController__isPreviewing;
  v40[0] = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(v1 + v15, v14, v11);
  v16 = (v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_playbackFinishedHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC5Music25PreviewPlaybackController_maxUpsellDisplays;
  *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_maxUpsellDisplays) = 5;
  v37 = OBJC_IVAR____TtC5Music25PreviewPlaybackController_previewUpsellTriggerCountPerContainer;
  *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_previewUpsellTriggerCountPerContainer) = 3;
  *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController____lazy_storage___containerPreviewCountDictionary) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_nowPlayingSubscription) = 0;
  v18 = OBJC_IVAR____TtC5Music25PreviewPlaybackController__context;
  v19 = type metadata accessor for PreviewPlaybackController.Context(0);
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1000089F8(v10, v8, &unk_10119E440);
  Published.init(initialValue:)();
  sub_1000095E8(v10, &unk_10119E440);
  (*(v2 + 32))(v1 + v18, v4, v38);
  *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player) = sub_100131AB0();
  sub_10012F974();
  BagProvider.shared.unsafeMutableAddressor();

  v20 = BagProvider.bag.getter();

  if (!v20)
  {
    return v1;
  }

  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 dictionaryForBagKey:v21];

  if (!v22 || (v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v22, v24 = sub_10005476C(v23), , !v24))
  {
LABEL_13:

    return v1;
  }

  if (*(v24 + 16))
  {
    v25 = qword_101181660;
    v26 = off_101181668;

    v27 = sub_100019C10(v25, v26);
    v29 = v28;

    if (v29)
    {
      sub_10000DD18(*(v24 + 56) + 32 * v27, v40);
      if (swift_dynamicCast())
      {
        *(v1 + v17) = v39;
      }
    }
  }

  if (!*(v24 + 16) || (v30 = qword_101181670, v31 = off_101181678, , v32 = sub_100019C10(v30, v31), v34 = v33, , (v34 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_10000DD18(*(v24 + 56) + 32 * v32, v40);

  if (swift_dynamicCast())
  {
    *(v1 + v37) = v39;
  }

  return v1;
}

uint64_t sub_100054608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for Song();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000546BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *(a1 + 16);
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Song();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

unint64_t sub_10005476C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&unk_101180220);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v12, v27);
        sub_10000DD18(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000160F8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000DD18(v25 + 8, v20);
        sub_1000095E8(v24, &qword_10118EB28);
        v21 = v18;
        sub_100016270(v20, v22);
        v13 = v21;
        sub_100016270(v22, v23);
        sub_100016270(v23, &v21);
        result = sub_100019C10(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000959C(v10);
          result = sub_100016270(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100016270(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1000095E8(v24, &qword_10118EB28);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100054A48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011A85C8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v12, v27);
        sub_10000DD18(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000160F8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000DD18(v25 + 8, v20);
        sub_10001A9D4(v24);
        v21 = v18;
        sub_100016270(v20, v22);
        v13 = v21;
        sub_100016270(v22, v23);
        sub_100016270(v23, &v21);
        result = sub_100019C28(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000959C(v10);
          result = sub_100016270(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100016270(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10001A9D4(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100054D04(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011B5440);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v12, v27);
        sub_10000DD18(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000160F8(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000DD18(v25 + 8, v20);
        sub_1000095E8(v24, &qword_1011B5448);
        v21 = v18;
        sub_100016270(v20, v22);
        v13 = v21;
        sub_100016270(v22, v23);
        sub_100016270(v23, &v21);
        result = sub_10000F8B8(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_10000959C(v10);
          result = sub_100016270(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100016270(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1000095E8(v24, &qword_1011B5448);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void (*Player.nowPlayingConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10005567C;
}

unint64_t sub_100055068(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v4 = Hasher._finalize()();

  return sub_100055580(a1, a2, v4);
}

unint64_t sub_1000550E8(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100055068(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1008BB584();
    result = v19;
    goto LABEL_8;
  }

  sub_1000552E8(v16, a4 & 1);
  result = sub_100055068(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  _s3__C30MPCPlayerRequestTracklistRangeVMa_0(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100055224(Swift::UInt a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = sub_100055068(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = v10;
LABEL_6:
    result = sub_1000550E8(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000552E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011A85B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

unint64_t sub_100055580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100055624()
{
  result = qword_1011AC750;
  if (!qword_1011AC750)
  {
    _s3__C30MPCPlayerRequestTracklistRangeVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC750);
  }

  return result;
}

void sub_10005567C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10002B6B0();
  }
}

uint64_t *AccessibilityIdentifier.bottomPlayerView.unsafeMutableAddressor()
{
  if (qword_1011A6EC0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.bottomPlayerView;
}

uint64_t sub_100055700()
{
  if (qword_1011A6B58 != -1)
  {
    swift_once();
  }

  v3 = qword_1011AFC00;
  v4 = *algn_1011AFC08;

  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000010;
  v1._object = 0x8000000100E630E0;
  String.append(_:)(v1);

  static AccessibilityIdentifier.bottomPlayerView = v3;
  *algn_10121ABD8 = v4;
  qword_10121ABE0 = 0xD000000000000010;
  unk_10121ABE8 = 0x8000000100E630E0;
  return result;
}

uint64_t type metadata accessor for PalettePresentationInteraction()
{
  result = qword_1011A3EF8;
  if (!qword_1011A3EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100055824()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for PalettePresentationInteraction()) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_100055890()
{
  sub_1000059A8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100055968()
{
  v1 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction____lazy_storage___presentationSetupSignpost;
  v2 = type metadata accessor for Signpost();
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v3(&v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction____lazy_storage___presentationSignpost], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view] = 0;
  v4 = &v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_isEnabled] = 1;
  v5 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer;
  *&v0[v5] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v6 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer;
  *&v0[v6] = [objc_allocWithZone(UIPanGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PalettePresentationInteraction();
  v7 = objc_msgSendSuper2(&v13, "init");
  v8 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer;
  v9 = *&v7[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer];
  v10 = v7;
  [v9 addTarget:v10 action:"tapGestureRecognized:"];
  [*&v7[v8] setDelegate:v10];
  v11 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer] addTarget:v10 action:"panGestureRecognized:"];
  [*&v10[v11] setMaximumNumberOfTouches:1];
  [*&v10[v11] _setHysteresis:5.0];
  [*&v10[v11] setDelegate:v10];

  return v10;
}

void sub_100055BBC(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v6 = *(v2 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
  v7 = v6;
  sub_100055C6C(a1);
  v8 = *(v2 + v5);
  *(v2 + v5) = a1;
  v9 = a1;

  sub_100055F38(v6);
  v11 = *(v2 + OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction);
  *(v2 + OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction) = a2;
  v10 = a2;
  sub_100058CAC(v11);
}

void sub_100055C6C(void *a1)
{
  v2 = v1;
  if (!*&v2[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController])
  {
    return;
  }

  v21 = *&v2[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (!a1)
  {
    v8 = v21;
    v7 = v21;
    goto LABEL_7;
  }

  type metadata accessor for BottomPlayerViewController();
  v4 = v21;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  v7 = v21;
  if ((v6 & 1) == 0)
  {
LABEL_7:
    v9 = v7;
    v10 = [v9 parentViewController];
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;

    if (v11 != v2)
    {
      goto LABEL_28;
    }

    [v9 willMoveToParentViewController:0];
    v12 = [v9 view];
    v13 = [v2 bottomAccessory];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 contentView];

      if (!v12)
      {
        if (v15)
        {

          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v15)
      {
        sub_100009F78(0, &qword_101181620);
        v16 = static NSObject.== infix(_:_:)();

        if ((v16 & 1) == 0)
        {
LABEL_19:
          if ([v2 shouldAutomaticallyForwardAppearanceMethods])
          {
LABEL_27:
            [v9 removeFromParentViewController];
LABEL_28:
            v18 = *&v2[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction];
            if (v18)
            {
              v19 = v18;
              v20 = [v9 view];

              if (!v20)
              {
                __break(1u);
                return;
              }

              v9 = v19;
              [v20 removeInteraction:v9];
            }

            v7 = v21;
            goto LABEL_32;
          }

          v17 = v2[OBJC_IVAR____TtC5Music16TabBarController_appearanceState];
          if (v17 >> 6)
          {
            if (v17 >> 6 == 1)
            {
LABEL_26:
              [v9 endAppearanceTransition];
              goto LABEL_27;
            }

            if (v17 == 128)
            {
              goto LABEL_27;
            }
          }

          else
          {
            [v9 endAppearanceTransition];
          }

          [v9 beginAppearanceTransition:0 animated:0];
          goto LABEL_26;
        }

LABEL_18:
        [v2 setBottomAccessory:0];
        goto LABEL_19;
      }
    }

    else if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_32:
}

void sub_100055F38(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v4 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (!v4)
  {
    return;
  }

  if (a1)
  {
    type metadata accessor for BottomPlayerViewController();
    v30 = v4;
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = v4;
  }

  v9 = [v2 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6)
  {
    if (qword_10117F618 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_101218AF0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Setting a bottomPlayerViewController on vOS is unsupported — rdar://149699651", v14, 2u);
    }

    v15 = *&v2[v3];
    *&v2[v3] = 0;
    goto LABEL_26;
  }

  v30 = v4;
  [v2 addChildViewController:v30];
  v16 = [v30 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(UITabAccessory) initWithContentView:v16];

  [v2 setBottomAccessory:v18];
  v19 = [v2 shouldAutomaticallyForwardAppearanceMethods];
  v20 = v30;
  if ((v19 & 1) == 0)
  {
    v21 = v2[OBJC_IVAR____TtC5Music16TabBarController_appearanceState];
    if (v21 != 128)
    {
      if (v21 >> 6)
      {
        if (v21 >> 6 == 1)
        {
          goto LABEL_20;
        }

        [v30 beginAppearanceTransition:1 animated:0];
        [v30 endAppearanceTransition];
      }

      else
      {
        [v30 beginAppearanceTransition:1 animated:v21 & 1];
      }

      v20 = v30;
    }
  }

LABEL_20:
  [v20 didMoveToParentViewController:v2];
  v22 = *&v2[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction];
  if (v22)
  {
    v23 = v22;
    v24 = [v30 view];

    if (v24)
    {
      [v24 addInteraction:v23];

      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      v26 = objc_allocWithZone(UISpringLoadedInteraction);
      aBlock[4] = sub_1006CCC38;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006BE4C0;
      aBlock[3] = &unk_1010BB0C8;
      v27 = _Block_copy(aBlock);
      v28 = v23;
      v29 = [v26 initWithInteractionBehavior:0 interactionEffect:v30 activationHandler:v27];
      _Block_release(v27);

      sub_1000592E0(v29);

      return;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_25:
  v15 = v30;
LABEL_26:
}

void *sub_100056378(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10010FC20(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_100056578()
{
  v120.receiver = v0;
  v120.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v120, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_48;
  }

  v2 = v1;
  [v1 effectiveUserInterfaceLayoutDirection];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v4 = v3;
  [v3 bounds];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = v5;
  [v5 directionalLayoutMargins];

  CGRect.inset(by:for:)();
  v9 = v7;
  v11 = v10;
  v12 = v8;
  v14 = v13;
  v15 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide];
  v16 = v8;
  MaxX = v7;
  v116 = v10;
  v117 = v13;
  if (v15)
  {
    v114 = v7;
    v118 = v8;
    [v15 layoutFrame];
    v18 = [v0 view];
    if (!v18)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v19 = v18;
    [v18 bounds];

    CGRect.removingLayoutDirection(_:inBounds:)();
    x = v130.origin.x;
    y = v130.origin.y;
    width = v130.size.width;
    height = v130.size.height;
    MaxX = CGRectGetMaxX(v130);
    v131.origin.x = x;
    v131.origin.y = y;
    v131.size.width = width;
    v131.size.height = height;
    v24 = CGRectGetMaxX(v131);
    v9 = v114;
    v11 = v116;
    v132.origin.x = v114;
    v132.origin.y = v116;
    v14 = v117;
    v12 = v118;
    v132.size.width = v118;
    v132.size.height = v117;
    v16 = v118 - (v24 - CGRectGetMinX(v132));
  }

  v25 = [v0 traitCollection];
  v26 = [v25 horizontalSizeClass];

  if (v26 == 2)
  {
    v27 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView];
    if (v27)
    {
      v115 = v16;
      v113 = MaxX;
      v28 = v27;
      v133.origin.x = v9;
      v133.origin.y = v11;
      v133.size.width = v12;
      v133.size.height = v14;
      v16 = CGRectGetMaxX(v133);
      [v28 frame];
      v11 = v29;
      v14 = v30;
      MaxX = v31;
      v32 = [v0 view];
      if (v32)
      {
LABEL_14:
        v36 = v32;
        v119 = v16;
        [v32 bounds];

        CGRect.removingLayoutDirection(_:inBounds:)();
        MinX = CGRectGetMinX(v135);

        v14 = v117;
        v11 = v116;
        v16 = v115 - (v119 - MinX);
        MaxX = v113;
        goto LABEL_15;
      }

      __break(1u);
    }
  }

  v33 = [v0 traitCollection];
  v34 = [v33 horizontalSizeClass];

  if (v34 == 1)
  {
    v35 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
    if (v35)
    {
      v115 = v16;
      v113 = MaxX;
      v28 = v35;
      v134.origin.x = v9;
      v134.origin.y = v11;
      v134.size.width = v12;
      v134.size.height = v14;
      v16 = CGRectGetMaxX(v134);
      [v28 frame];
      v32 = [v0 view];
      if (!v32)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v38 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel;
  v39 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel];
  if (!v39)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ([v39 isHidden])
  {
    v40 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel];
    if (!v40 || ([v40 isHidden] & 1) != 0)
    {
      v41 = sub_1002AE644();
      v42 = [v0 view];
      if (v42)
      {
        v43 = v42;
        v127 = 0u;
        v128 = 0u;
        v129 = 1;
LABEL_46:
        CGRect.applyingLayoutDirection(in:bounds:)();
        v105 = v104;
        v107 = v106;
        v109 = v108;
        v111 = v110;

        [v41 setFrame:{v105, v107, v109, v111}];
        return;
      }

      goto LABEL_56;
    }
  }

  v136.origin.x = MaxX;
  v136.origin.y = v11;
  v136.size.width = v16;
  v136.size.height = v14;
  CGRectGetWidth(v136);
  v44 = sub_1002AE644();
  [v44 intrinsicContentSize];

  Int.seconds.getter(0);
  v45 = v16 + -8.0;
  v46 = MaxX + 8.0;
  v47 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel;
  v48 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel];
  if (!v48)
  {
LABEL_28:
    v64 = *&v0[v38];
    if (v64)
    {
      if (([v64 isHidden] & 1) == 0)
      {
        v65 = *&v0[v38];
        if (!v65)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v66 = v65;
        v138.origin.x = v46;
        v138.origin.y = v11;
        v138.size.width = v45;
        v138.size.height = v14;
        v67 = CGRectGetWidth(v138);
        v68 = *&v0[v38];
        if (!v68)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v69 = v67;
        [v68 intrinsicContentSize];
        [v66 sizeThatFits:v69];

        v70 = *&v0[v38];
        if (!v70)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v71 = v70;
        v72 = [v0 view];
        if (!v72)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v73 = v72;
        v124 = 0u;
        v125 = 0u;
        v126 = 1;
        CGRect.applyingLayoutDirection(in:bounds:)();
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v81 = v80;

        [v71 setFrame:{v75, v77, v79, v81}];
      }

      v82 = [v0 view];
      if (v82)
      {
        v83 = v82;
        CGRect.centeringAlong(axes:in:)();
        v85 = v84;
        v87 = v86;
        v89 = v88;
        v91 = v90;

        v139.origin.x = v85;
        v139.origin.y = v87;
        v139.size.width = v89;
        v139.size.height = v91;
        CGRectGetMinY(v139);
        v140.origin.x = v85;
        v140.origin.y = v87;
        v140.size.width = v89;
        v140.size.height = v91;
        CGRectGetWidth(v140);
        v92 = *&v0[v47];
        if (v92)
        {
          v93 = v92;
          if (([v93 isHidden] & 1) == 0)
          {
            [v93 frame];
            v95 = v94;
            v96 = [v0 traitCollection];
            [v96 displayScale];

            CGRect.centeringAlong(axes:bounds:scale:)();
            [v93 setFrame:v95];
          }
        }

        v97 = *&v0[v38];
        if (v97)
        {
          if (([v97 isHidden] & 1) == 0)
          {
            v98 = *&v0[v38];
            if (!v98)
            {
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v99 = v98;
            [v99 frame];
            v101 = v100;
            v102 = [v0 traitCollection];
            [v102 displayScale];

            CGRect.centeringAlong(axes:bounds:scale:)();
            [v99 setFrame:v101];
          }

          v141.origin.x = v85;
          v141.origin.y = v87;
          v141.size.width = v89;
          v141.size.height = v91;
          CGRectGetMinX(v141);
          v142.origin.x = v85;
          v142.origin.y = v87;
          v142.size.width = v89;
          v142.size.height = v91;
          CGRectGetMinY(v142);
          v41 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
          v103 = [v0 view];
          if (v103)
          {
            v43 = v103;
            v121 = 0u;
            v122 = 0u;
            v123 = 1;
            goto LABEL_46;
          }

          goto LABEL_54;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v49 = v48;
  if ([v49 isHidden])
  {

    goto LABEL_28;
  }

  v137.origin.x = MaxX + 8.0;
  v137.origin.y = v11;
  v137.size.width = v16 + -8.0;
  v137.size.height = v14;
  v50 = CGRectGetWidth(v137);
  [v49 intrinsicContentSize];
  [v49 sizeThatFits:v50];
  v52 = v51;
  v53 = [v0 view];
  if (v53)
  {
    v54 = v53;
    v127 = 0u;
    v128 = 0u;
    v129 = 1;
    CGRect.applyingLayoutDirection(in:bounds:)();
    v112 = v52;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    [v49 setFrame:{v56, v58, v60, v62}];
    if (qword_10117F510 != -1)
    {
      swift_once();
    }

    v63 = *&qword_1012189A0;

    v45 = v45 - (v112 + v63);
    v46 = v46 + v112 + v63;
    v14 = v117;
    goto LABEL_28;
  }

LABEL_63:
  __break(1u);
}

uint64_t sub_100056FE4()
{
  v1 = v0;
  v174.receiver = v0;
  v174.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v174, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_layoutHandler];
  if (v2)
  {

    v2(v0);
    sub_100020438(v2);
  }

  LOBYTE(v172.a) = 11;
  v3 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v3))
  {
    v4 = [v0 window];
    v5 = v4;
    if (v4)
    {
      [v4 bounds];
      v169 = v6;
      v171 = v7;

      *&v8 = v169;
      *(&v8 + 1) = v171;
    }

    else
    {
      v8 = 0uLL;
    }

    v9 = &v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize];
    *v9 = v8;
    v9[16] = v5 == 0;
  }

  [v1 bounds];
  v11 = v10;
  v168 = v13;
  v170 = v12;
  v167 = v14;
  v15 = [v1 traitCollection];
  [v15 displayScale];

  [v1 bounds];
  v16 = &v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_lastSeenBounds];
  if (!CGRectEqualToRect(v179, *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_lastSeenBounds]))
  {
    sub_10004C8F4();
    [v1 bounds];
    *v16 = v17;
    *(v16 + 1) = v18;
    *(v16 + 2) = v19;
    *(v16 + 3) = v20;
  }

  v21 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
  v22 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
  [v1 bounds];
  Artwork.View.sizeThatFits(_:)(v23, v24);
  v26 = v25;
  v28 = v27;

  v161 = v3;
  if (v26 == 0.0 && v28 == 0.0)
  {
    [v1 bounds];
  }

  v29 = OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext;
  v30 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext];
  v165 = v21;
  if (v30)
  {
    v31 = *(*v30 + 216);

    v33 = (v31)(v32);
    v166 = [v33 isReadyForDisplay];

    v34 = v31();
    [v34 videoBounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v180.origin.x = v36;
    v180.origin.y = v38;
    v180.size.width = v40;
    v180.size.height = v42;
    if (CGRectGetWidth(v180) > 0.0)
    {
      v181.origin.x = v36;
      v181.origin.y = v38;
      v181.size.width = v40;
      v181.size.height = v42;
      if (CGRectGetHeight(v181) > 0.0)
      {
        CGRect.aspectFit(in:scale:)();
        width = v182.size.width;
        height = v182.size.height;
        v182.origin.x = 0.0;
        v182.origin.y = 0.0;
        v163 = CGRectGetWidth(v182);
        v183.origin.x = v11;
        v183.origin.y = v170;
        v183.size.width = v168;
        v183.size.height = v167;
        v172.a = CGRectGetWidth(v183);
        v175[0] = 0;
        sub_10066386C();
        v45 = static ApproximatelyEquatable<>.==~ infix(_:_:)();
        if (v45)
        {
          v46 = width;
        }

        else
        {
          v46 = v168;
        }

        if (v45)
        {
          v47 = height;
        }

        else
        {
          v47 = v167;
        }

        v48 = 0.0;
        if (v45)
        {
          v49 = 0.0;
        }

        else
        {
          v49 = v11;
        }

        if ((v45 & 1) == 0)
        {
          v48 = v170;
        }

        v50 = CGRectGetWidth(*(&v46 - 2));
        v184.origin.x = 0.0;
        v184.origin.y = 0.0;
        v184.size.width = width;
        v184.size.height = height;
        v51 = CGRectGetHeight(v184);
        v185.origin.x = v11;
        v185.origin.y = v170;
        v185.size.width = v168;
        v185.size.height = v167;
        v172.a = CGRectGetHeight(v185);
        v175[0] = 0;
        v52 = static ApproximatelyEquatable<>.==~ infix(_:_:)();
        if (v52)
        {
          v53 = width;
        }

        else
        {
          v53 = v168;
        }

        if (v52)
        {
          v54 = height;
        }

        else
        {
          v54 = v167;
        }

        v55 = 0.0;
        if (v52)
        {
          v56 = 0.0;
        }

        else
        {
          v56 = v11;
        }

        if ((v52 & 1) == 0)
        {
          v55 = v170;
        }

        v57 = v51 / CGRectGetHeight(*(&v53 - 2)) * -10.0;
        v186.origin.x = 0.0;
        v186.origin.y = 0.0;
        v186.size.width = width;
        v186.size.height = height;
        CGRectInset(v186, v163 / v50 * -10.0, v57);

        goto LABEL_45;
      }
    }

    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000060E4(v58, qword_1012190C8);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "NowPlayingContentView video NOT READY (invalid bounds)", v61, 2u);
    }
  }

  v166 = 0;
LABEL_45:
  CGRect.aspectFit(in:scale:)();
  v151 = v62;
  v153 = v11;
  CGRect.centeringAlong(axes:bounds:scale:)();
  v64 = v63;
  v66 = v65;
  v67 = OBJC_IVAR____TtC5Music21NowPlayingContentView_mode;
  sub_100660BAC(*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v1 traitCollection], v175);
  v160 = v175[0];
  v68 = *&v175[1];
  v159 = v176;
  v158 = v177;
  v69 = *&v1[v29];
  if (v69)
  {
    v70 = *(*v69 + 216);

    v72 = v70(v71);

    v69 = [v72 videoGravity];
  }

  v73 = *&v1[v67];
  if (v73 >> 14)
  {
    if (v73 >> 14 == 1)
    {
      v74 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v172.a) = v73 & 1;

      static Published.subscript.setter();
      if ((v73 & 1) == 0)
      {
        CGAffineTransformMakeScale(&v172, 0.73, 0.73);
        v178.width = v64;
        v178.height = v66;
        CGSizeApplyAffineTransform(v178, &v172);
        CGRect.centeringAlong(axes:bounds:scale:)();
        v64 = v75;
        v66 = v76;
      }

      v77 = AVLayerVideoGravityResize;

      v155 = 10.0;
      v78 = 20.0;
      v164 = v77;
      goto LABEL_65;
    }

    if (v73 != 0x8000)
    {
      v83 = v69;
      if (v69)
      {
        v164 = v69;
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;
        if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
        {

          v83 = v164;
        }

        else
        {
          v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v83 = v164;
          if ((v88 & 1) == 0)
          {
            v155 = 10.0;
            v78 = 20.0;
            v166 = 1;
            v64 = v168;
            v66 = v167;
            goto LABEL_64;
          }
        }
      }

      v89 = AVLayerVideoGravityResizeAspect;

      v155 = 10.0;
      v78 = 20.0;
      v166 = 1;
      v64 = v168;
      v66 = v167;
      v164 = v89;
LABEL_64:
      v21 = v165;
      goto LABEL_65;
    }
  }

  UIEdgeInsets.init(value:)();
  v80 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
  v164 = v69;
  v155 = v81;
  if (v80)
  {
    v154 = v79;
    if ((v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16] & 1) == 0)
    {
      v82 = v80;
      [v82 frame];
      [v82 setFrame:{v153, v170}];
      [v82 frame];
      [v82 setFrame:?];
    }

    v78 = v154;
  }

  else
  {
    v78 = v79;
  }

LABEL_65:
  v90 = *&v1[v21];
  Artwork.View.fittingImageSize(in:)(v64, v66);
  v92 = v91;

  v152 = v92;
  CGRect.centeringAlong(axes:bounds:scale:)();
  sub_100058728(v93, v94, v95, v96, v78, v155);
  UIRectIntegralWithScale();
  v98 = v97;
  v100 = v99;
  v156 = v102;
  v157 = v101;
  UIRectIntegralWithScale();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  sub_1000060E4(v111, qword_1012190C8);
  v112 = v1;
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.info.getter();

  v162 = v29;
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *&v172.a = swift_slowAlloc();
    *v115 = 136446722;
    v173 = *&v1[v29];

    sub_10010FC20(&unk_10118C420);
    v116 = String.init<A>(describing:)();
    v118 = sub_1000105AC(v116, v117, &v172);

    *(v115 + 4) = v118;
    *(v115 + 12) = 2082;
    LOWORD(v173) = *&v1[v67];
    v119 = String.init<A>(describing:)();
    v121 = sub_1000105AC(v119, v120, &v172);

    *(v115 + 14) = v121;
    *(v115 + 22) = 1026;
    *(v115 + 24) = v166;
    _os_log_impl(&_mh_execute_header, v113, v114, "NowPlayingContentView VideoContext=%{public}s, .mode=%{public}s => videoReady=%{BOOL,public}d", v115, 0x1Cu);
    swift_arrayDestroy();

    v21 = v165;
  }

  LOBYTE(v172.a) = 11;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v161))
  {
    if (v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground] != 1)
    {
      goto LABEL_79;
    }
  }

  else if ((sub_10065F7F8() & 1) == 0)
  {
LABEL_79:
    [*&v1[v21] setFrame:{v98, v100, v157, v156, v152}];
    goto LABEL_83;
  }

  if ((*&v1[v67] & 0xC100) != 0x4000)
  {
    goto LABEL_79;
  }

  [v112 frame];
  v108 = CGRectGetWidth(v187);
  [v112 frame];
  v110 = CGRectGetWidth(v188);
  LOBYTE(v172.a) = 11;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v161) & 1) == 0)
  {
    v104 = 0.0;
    if ((v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates] & 1) == 0)
    {
      [*&v1[v21] setFrame:{0.0, 0.0, v108, v110}];
    }

    goto LABEL_82;
  }

  if (!v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates])
  {
    goto LABEL_78;
  }

  v122 = [*&v1[v21] superview];
  v104 = 0.0;
  if (v122)
  {
    v123 = v122;
    v124 = *&v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView];
    sub_100009F78(0, &qword_101181620);
    v125 = v124;
    v126 = static NSObject.== infix(_:_:)();

    v21 = v165;
    if ((v126 & 1) == 0)
    {
LABEL_82:
      v106 = 0.0;
      goto LABEL_83;
    }

LABEL_78:
    v104 = 0.0;
    [*&v1[v21] setFrame:{0.0, 0.0, v108, v110}];
    goto LABEL_82;
  }

  v106 = 0.0;
  v21 = v165;
LABEL_83:
  LOBYTE(v172.a) = 11;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v161) & 1) == 0 || (v127 = [objc_opt_self() currentDevice], v128 = objc_msgSend(v127, "userInterfaceIdiom"), v127, v128 != 1))
  {
    if (*&v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      b_low = LOBYTE(v172.b);
      if (LOBYTE(v172.b) != 255)
      {
        sub_10004ADFC(*&v172.a, SLOBYTE(v172.b));
        if ((b_low & 1) == 0)
        {
          v130 = *&v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView];
          if (v130)
          {
            v131 = *&v1[v21];
            v132 = v130;
            [v131 frame];
            v133 = [v112 traitCollection];
            [v133 displayScale];

            CGRect.centeringAlong(axes:bounds:scale:)();
            [v132 setFrame:*&v167];
          }
        }
      }
    }
  }

  v134 = *&v1[v21];
  v135 = Artwork.View.currentImage.getter();

  if (v135)
  {
  }

  else
  {
    v68 = 0.0;
  }

  v136 = *&v1[v162];
  if (!v136)
  {
    goto LABEL_99;
  }

  v137 = *(*v136 + 216);

  v139 = v137(v138);

  v140 = [v139 playerViewController];

  v141 = [v140 view];
  if (!v141)
  {
    goto LABEL_99;
  }

  v142 = [v141 superview];
  if (!v142 || (v143 = v142, sub_100009F78(0, &qword_101181620), v144 = v112, v145 = static NSObject.== infix(_:_:)(), v144, v143, (v145 & 1) == 0))
  {

LABEL_99:
    [*&v112[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setHidden:0];
    goto LABEL_100;
  }

  [v141 setFrame:{v98, v100, v157, v156}];
  [v141 setClipsToBounds:1];
  [v141 setHidden:v166 ^ 1];
  [*&v144[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setHidden:v166];

LABEL_100:
  *&v172.a = v160;
  v172.b = v68;
  *&v172.c = v159;
  v172.tx = v158;
  v146 = v160;
  UIView.shadow.setter(&v172);
  v147 = [v112 layer];
  v148 = [objc_opt_self() bezierPathWithRoundedRect:v104 cornerRadius:{v106, v108, v110, 6.0}];
  v149 = [v148 CGPath];

  [v147 setShadowPath:v149];
  return sub_1000485A8(v175);
}

uint64_t _s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  v6 = *(v5 + 48);
  if (v6 == 255)
  {
    Artwork.View.fittingImageSize(in:)(a1, a2);
  }

  else
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 40);
    v9 = *(v5 + 64);
    sub_100058300(a1, a2, v8, v6);
    sub_100058300(a1, a2, v7, v9);
  }
}

uint64_t sub_100058300(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    _StringGuts.grow(_:)(67);
    v8._countAndFlagsBits = 0x6F69736E656D6944;
    v8._object = 0xE90000000000006ELL;
    String.append(_:)(v8);
    v9._object = 0x8000000100E64880;
    v9._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v9);
    v10._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x696C61766E49203ALL;
    v11._object = 0xEF68746469772064;
    String.append(_:)(v11);
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    _StringGuts.grow(_:)(68);
    v4._countAndFlagsBits = 0x6F69736E656D6944;
    v4._object = 0xE90000000000006ELL;
    String.append(_:)(v4);
    v5._object = 0x8000000100E64880;
    v5._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v5);
    v6._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0xD000000000000010;
    v7._object = 0x8000000100E648C0;
    String.append(_:)(v7);
    goto LABEL_10;
  }

  return result;
}