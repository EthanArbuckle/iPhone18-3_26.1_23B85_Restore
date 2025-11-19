id sub_100625758(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_selectedColor] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 configurationWithPointSize:7 weight:15.0];
  v13 = v11;
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  [v13 setImage:v16 forState:0];
  [v13 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  v17 = AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v18, v19);

  return v13;
}

void sub_1006259A4(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  if (a1)
  {
    sub_100050078();
    v4 = UITraitCollection.subscript.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v2 traitCollection];
  sub_100050078();
  v6 = UITraitCollection.subscript.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_100625AE0();
  }
}

void sub_100625AE0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    if (qword_10117F878 != -1)
    {
      swift_once();
    }

    v6 = [v4 imageNamed:v5 inBundle:qword_101218F90 compatibleWithTraitCollection:0];

    if (!v6)
    {
      __break(1u);
      return;
    }

    [v1 setImage:v6 forState:4];

    if ([v1 isSelected])
    {
      if (qword_10117F8E8 != -1)
      {
        swift_once();
      }

      v7 = &qword_101219080;
    }

    else
    {
      if (qword_10117F900 != -1)
      {
        swift_once();
      }

      v7 = &qword_101219098;
    }

    [v1 setTintColor:*v7];
    v15 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor:v15];

    v13 = [v1 layer];
    v14 = 0.0;
  }

  else
  {
    [v1 setImage:0 forState:4];
    v8 = [v1 isSelected];
    v9 = &OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_selectedColor;
    if (!v8)
    {
      v9 = &OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor;
    }

    [v1 setTintColor:*&v1[*v9]];
    if ([v1 isSelected])
    {
      v10 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingAutoPlayButton_defaultColor];
    }

    else
    {
      v10 = [objc_opt_self() clearColor];
    }

    v11 = v10;
    [v1 setBackgroundColor:v10];

    v12 = [v1 layer];
    [v12 setCornerCurve:kCACornerCurveContinuous];

    v13 = [v1 layer];
    v14 = 7.0;
  }

  v16 = v13;
  [v16 setCornerRadius:v14];
}

id sub_100625E28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingAutoPlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100625ED8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100625EEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100625F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100626004()
{
  result = type metadata accessor for DragDropToLibrary.Origin(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1006260A0()
{
  Hasher.init(_seed:)();
  GenericMusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006260FC()
{
  GenericMusicItem.id.getter();
  String.hash(into:)();
}

Swift::Int sub_10062614C()
{
  Hasher.init(_seed:)();
  GenericMusicItem.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006261A4()
{
  v0 = GenericMusicItem.id.getter();
  v2 = v1;
  if (v0 == GenericMusicItem.id.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100626278(uint64_t a1)
{
  result = sub_1006262D0(&qword_1011999A8, type metadata accessor for DragDropToLibrary.Origin);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006262D0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100626318(void (**a1)(char *, uint64_t))
{
  v45 = a1;
  v53 = type metadata accessor for MusicLibrary.AddAction();
  v44 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DragDropToLibrary.Origin(0);
  __chkstk_darwin(v3 - 8);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10010FC20(&unk_101193E20);
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v42 - v8;
  v9 = type metadata accessor for DragDropToLibrary(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicAuthorization.Status();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  type metadata accessor for MusicLibrary();
  v19 = *v1;
  static MusicLibrary.shared.getter();
  v46 = v19;
  v20 = static MusicLibrary.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  static MusicAuthorization.currentStatus.getter();
  (*(v13 + 104))(v15, enum case for MusicAuthorization.Status.authorized(_:), v12);
  sub_1006262D0(&unk_1011948E0, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v56 == v54 && v57 == v55)
  {
    v21 = *(v13 + 8);
    v21(v15, v12);
    v21(v18, v12);

    goto LABEL_6;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v23 = *(v13 + 8);
  v23(v15, v12);
  v23(v18, v12);

  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v24 = v45[2];
  if (!v24)
  {
    return 1;
  }

  v25 = v45 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v42 = *(v10 + 72);
  v26 = (v44 + 1);
  v44 = (v5 + 32);
  v45 = v26;
  v27 = (v5 + 88);
  v43 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v28 = (v5 + 8);
  v29 = v24 - 1;
  v30 = v51;
  do
  {
    v31 = v47;
    sub_1006274F0(v25, v47, type metadata accessor for DragDropToLibrary);
    sub_1006274F0(v31, v30, type metadata accessor for DragDropToLibrary.Origin);
    v32 = v52;
    static MusicLibraryAction<>.add.getter();
    v33 = v48;
    v34 = v53;
    MusicLibrary.supportedStatus<A>(for:action:)();
    (*v45)(v32, v34);
    sub_100627558(v31, type metadata accessor for DragDropToLibrary);
    v35 = type metadata accessor for GenericMusicItem();
    (*(*(v35 - 8) + 8))(v30, v35);
    v37 = v49;
    v36 = v50;
    (*v44)(v49, v33, v50);
    v38 = (*v27)(v37, v36);
    (*v28)(v37, v36);
    v40 = v29-- != 0;
    result = v38 == v43;
    if (v38 != v43)
    {
      break;
    }

    v25 += v42;
  }

  while (v40);
  return result;
}

uint64_t sub_10062691C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Notice.Variant(0);
  v3[6] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v3[7] = swift_task_alloc();
  type metadata accessor for DragDropToLibrary.Origin(0);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for GenericMusicItem();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100626A74, 0, 0);
}

uint64_t sub_100626A74()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    v4 = v0[10];
    v3 = v0[11];
    v6 = v0[8];
    v5 = v0[9];
    v7 = *(type metadata accessor for DragDropToLibrary(0) - 8);
    sub_1006274F0(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, type metadata accessor for DragDropToLibrary.Origin);
    (*(v4 + 32))(v3, v6, v5);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_100626C98;
    v9 = v0[11];
    v10 = v0[7];

    return MusicLibrary.add(_:)(v10, v9);
  }

  else
  {
    v11 = v0[6];
    v12 = v0[2];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v11, v12);
    sub_100627558(v11, type metadata accessor for Notice.Variant);
    v13 = type metadata accessor for Notice(0);
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100626C98()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100627024;
  }

  else
  {
    sub_100627488(*(v2 + 56));
    v3 = sub_100626DB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100626DB4()
{
  v1 = v0[12];
  v2 = v0[13] + 1;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (v2 == v1)
  {
    v3 = v0[6];
    v4 = v0[2];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v4);
    sub_100627558(v3, type metadata accessor for Notice.Variant);
    v5 = type metadata accessor for Notice(0);
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13] + 1;
    v0[13] = v8;
    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[3];
    v14 = *(type metadata accessor for DragDropToLibrary(0) - 8);
    sub_1006274F0(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8, v12, type metadata accessor for DragDropToLibrary.Origin);
    (*(v10 + 32))(v9, v12, v11);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_100626C98;
    v16 = v0[11];
    v17 = v0[7];

    return MusicLibrary.add(_:)(v17, v16);
  }
}

uint64_t sub_100627024()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

void sub_1006270C8()
{
  v3[0] = *v0;
  type metadata accessor for MusicLibrary();
  sub_1006262D0(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  sub_10012B7A8((v0 + 1), v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10012BA6C(v3);
  if (Strong)
  {
    Hasher._combine(_:)(1u);
    v2 = Strong;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

id sub_1006271B0()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:2 intent:2];
}

uint64_t sub_1006271F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_10062691C(a1, a2);
}

Swift::Int sub_10062729C()
{
  Hasher.init(_seed:)();
  sub_1006270C8();
  return Hasher._finalize()();
}

Swift::Int sub_1006272E0()
{
  Hasher.init(_seed:)();
  sub_1006270C8();
  return Hasher._finalize()();
}

unint64_t sub_100627324()
{
  result = qword_1011999B0;
  if (!qword_1011999B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011999B0);
  }

  return result;
}

unint64_t sub_1006273C0(uint64_t a1)
{
  result = sub_1006273E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006273E8()
{
  result = qword_1011999F0;
  if (!qword_1011999F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011999F0);
  }

  return result;
}

uint64_t sub_100627488(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101189DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006274F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100627558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006275B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)())
  {
    sub_10012B7A8(a1 + 8, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10012BA6C(v9);
    sub_10012B7A8(a2 + 8, v8);
    v5 = swift_unknownObjectWeakLoadStrong();
    sub_10012BA6C(v8);
    if (Strong)
    {
      if (v5)
      {
        sub_10016F3C8();
        v6 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      if (!v5)
      {
        v6 = 1;
        return v6 & 1;
      }

      v6 = 0;
      Strong = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_1006276A8()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101219120 = result;
  return result;
}

id sub_1006276FC()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1062501089;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101219128 = result;
  return result;
}

id sub_100627750()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_101219130 = result;
  return result;
}

void sub_1006277A4()
{
  sub_100009F78(0, &qword_101183A00);
  v0 = UIFontTextStyleCaption1;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  qword_101219138 = v1;
}

id sub_10062781C()
{
  v1 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView;
  v2 = *&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView];
  }

  else
  {
    v4 = sub_100627880(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100627880(void *a1)
{
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [objc_allocWithZone(CAGradientLayer) init];
  v4 = [a1 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (v5 == 1)
  {
    v6 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  else
  {
    v6 = [objc_opt_self() whiteColor];
  }

  v7 = v6;
  sub_10010FC20(&qword_101181530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EC6C60;
  v9 = [v7 colorWithAlphaComponent:0.0];
  v10 = [v9 CGColor];

  type metadata accessor for CGColor(0);
  v12 = v11;
  *(v8 + 56) = v11;
  *(v8 + 32) = v10;
  v13 = [v7 CGColor];
  *(v8 + 88) = v12;
  *(v8 + 64) = v13;
  v14 = [v7 CGColor];
  *(v8 + 120) = v12;
  *(v8 + 96) = v14;
  v15 = [v7 CGColor];
  *(v8 + 152) = v12;
  *(v8 + 128) = v15;
  v16 = [v7 colorWithAlphaComponent:0.0];
  v17 = [v16 CGColor];

  *(v8 + 184) = v12;
  *(v8 + 160) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setColors:isa];

  sub_10010FC20(&qword_101183990);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EC3620;
  sub_100009F78(0, &qword_101189A20);
  *(v19 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v19 + 40) = NSNumber.init(floatLiteral:)(0.25);
  *(v19 + 48) = NSNumber.init(floatLiteral:)(0.5);
  *(v19 + 56) = NSNumber.init(floatLiteral:)(0.75);
  *(v19 + 64) = NSNumber.init(integerLiteral:)(1);
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setLocations:v20];

  [v3 setStartPoint:{0.0, 0.5}];
  [v3 setEndPoint:{1.0, 0.5}];
  v21 = [v2 layer];
  [v21 addSublayer:v3];

  v22 = [v2 layer];
  [v22 setOpacity:0.0];

  v23 = [v2 layer];
  [a1 bounds];
  [v23 setPosition:{-(CGRectGetWidth(v25) + 48.0 + -5.0), 0.0}];

  return v2;
}

uint64_t sub_100627C68()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100627D00, v3, v2);
}

uint64_t sub_100627D00()
{
  [*(v0 + 16) bounds];
  Width = CGRectGetWidth(v13);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];
  *(v0 + 48) = v3;

  v4 = v3;
  [v4 setDuration:1.3];
  if (qword_10117F970 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  [v4 setTimingFunction:qword_101219120];
  isa = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setFromValue:isa];

  v7 = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setToValue:v7];

  [v4 setRemovedOnCompletion:0];
  [v4 setFillMode:kCAFillModeForwards];

  v8 = sub_10062781C();
  v9 = [v8 layer];

  [v9 setPosition:{-(Width + 48.0 + -5.0), 0.0}];
  *(v0 + 56) = [*(v5 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView) layer];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_10035BB8C;

  return CALayer.addAsyncAnimation(_:forKey:)(v4, 0x6E6F697469736F70, 0xE800000000000000);
}

uint64_t sub_100627F84()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10062801C, v3, v2);
}

uint64_t sub_10062801C()
{
  [*(v0 + 16) bounds];
  Width = CGRectGetWidth(v13);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];
  *(v0 + 48) = v3;

  v4 = v3;
  [v4 setDuration:1.3];
  if (qword_10117F978 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  [v4 setTimingFunction:qword_101219128];
  isa = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setFromValue:isa];

  v7 = CGPoint._bridgeToObjectiveC()().super.isa;
  [v4 setToValue:v7];

  [v4 setBeginTime:CACurrentMediaTime()];
  v8 = sub_10062781C();
  v9 = [v8 layer];

  [v9 setPosition:{Width + 48.0 + -5.0, 0.0}];
  *(v0 + 56) = [*(v5 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView) layer];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_100628280;

  return CALayer.addAsyncAnimation(_:forKey:)(v4, 0x6E6F697469736F70, 0xE800000000000000);
}

uint64_t sub_100628280()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10062AB1C, v4, v3);
}

uint64_t sub_1006283C0(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_101194000);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  sub_100009F78(0, &qword_101181620);
  if (qword_10117F980 != -1)
  {
    swift_once();
  }

  v8 = qword_101219130;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  v12 = a2;
  static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v8, 0, sub_10062A96C, v9, sub_10062A98C, v11, 0.65, 0.0);
}

uint64_t sub_1006285BC()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_10062781C();
  v5 = [v4 layer];

  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];

  v7 = [v0 layer];
  [v7 removeAllAnimations];

  v8 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView;
  v9 = [*&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView] layer];
  [v9 removeAllAnimations];

  v10 = [*&v0[v8] layer];
  [v0 bounds];
  [v10 setPosition:{-(CGRectGetWidth(v17) + 48.0 + -5.0), 0.0}];

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v0;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  sub_1001F4CB8(0, 0, v3, &unk_100ED8530, v14);
}

uint64_t sub_1006287D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_1006288D8, v7, v6);
}

uint64_t sub_1006288D8()
{
  v1 = v0[2];
  v2 = static MainActor.shared.getter();
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1006289E0;

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001ALL, 0x8000000100E529F0, sub_10062A464, v3, &type metadata for () + 8);
}

uint64_t sub_1006289E0()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100628B40, v3, v2);
}

uint64_t sub_100628B40()
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return _swift_task_switch(sub_100628BC4, v2, v1);
}

uint64_t sub_100628BC4()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler;
    v0[16] = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle;
    v0[17] = v3;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_100628CB4;

    return sub_100627C68();
  }
}

uint64_t sub_100628CB4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_100628DF4;

  return sub_100627F84();
}

uint64_t sub_100628DF4()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100628F14, v3, v2);
}

uint64_t sub_100628F14()
{
  v1 = v0[16];
  v2 = v0[2];
  v3 = *(v2 + v1);
  *(v2 + v1) = 1;
  if (v3 != 1)
  {
    v4 = *(v0[2] + v0[17]);
    if (v4)
    {

      v4(v5);
      sub_100020438(v4);
    }
  }

  v6 = static Duration.seconds(_:)();
  v8 = v7;
  static Clock<>.continuous.getter();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_100629044;

  return sub_10062A46C(v6, v8, 0, 0, 1);
}

uint64_t sub_100629044()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[14];
    v9 = v3[15];
    v10 = sub_10062AB20;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[14];
    v9 = v3[15];
    v10 = sub_1006291DC;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1006291DC()
{
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_100628CB4;

    return sub_100627C68();
  }
}

char *sub_100629300(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  *&v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView] = 0;
  v5 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel;
  v6 = [objc_allocWithZone(UILabel) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_10117F988 != -1)
  {
    swift_once();
  }

  [v6 setFont:qword_101219138];
  [v6 setAdjustsFontForContentSizeCategory:1];
  *&v1[v5] = v6;
  v7 = &v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle] = 0;
  v8 = type metadata accessor for SmartTransitionIndicatorView();
  v20.receiver = v1;
  v20.super_class = v8;
  v9 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = sub_100025CE0();
  v11 = v9;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v10))
  {
    if (a1)
    {
      v12 = a1;
      sub_10034539C();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = *&v11[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
  }

  else
  {
    v13 = *&v11[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v14 = String._bridgeToObjectiveC()();

  [v13 setText:v14];

  v15 = *&v11[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
  v16 = v11;
  [v16 addSubview:v15];
  v17 = sub_10062781C();
  [v16 addSubview:v17];

  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor:qword_101219078];

  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  sub_10010FC20(&unk_101182D80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  *(v18 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v18 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

void sub_1006297F0()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for SmartTransitionIndicatorView();
  objc_msgSendSuper2(&v41, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel];
  [v1 bounds];
  CGRectGetWidth(v42);
  v2 = sub_10062781C();
  v3 = CGPoint.topLeft.unsafeMutableAddressor();
  swift_beginAccess();
  [v2 setAnchorPoint:{*v3, v3[1]}];

  v4 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView;
  v5 = *&v0[OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView];
  [v0 bounds];
  v6 = -(CGRectGetWidth(v43) + 48.0 + -5.0);
  [v0 bounds];
  v7 = CGRectGetWidth(v44) + 48.0 + -5.0;
  [v0 bounds];
  [v5 setFrame:{v6, 0.0, v7, CGRectGetHeight(v45)}];

  [*&v0[v4] setClipsToBounds:0];
  [v0 setClipsToBounds:0];
  v8 = [*&v0[v4] layer];
  v9 = [v8 sublayers];

  if (!v9)
  {
    goto LABEL_12;
  }

  sub_100009F78(0, &unk_101199A90);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_12:
    v20 = [v1 layer];
    [v20 setShadowOffset:{0.0, 0.0}];

    v21 = [v1 layer];
    LODWORD(v22) = 1058642330;
    [v21 setShadowOpacity:v22];

    v23 = [v1 layer];
    [v23 setShadowRadius:3.0];

    v24 = objc_opt_self();
    sub_10010FC20(&qword_101183990);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBDC10;
    v26 = [v0 leadingAnchor];
    v27 = [v1 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v25 + 32) = v28;
    v29 = [v0 trailingAnchor];
    v30 = [v1 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v25 + 40) = v31;
    v32 = [v0 topAnchor];
    v33 = [v1 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v25 + 48) = v34;
    v35 = [v0 bottomAnchor];
    v36 = [v1 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v25 + 56) = v37;
    sub_100009F78(0, &qword_1011838A0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 activateConstraints:isa];

    v39 = [v0 layer];
    v40 = [v1 layer];
    [v39 setMask:v40];

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_1007E9C3C(0, v10);
LABEL_7:
    v12 = v11;

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = *&v0[v4];
      v16 = v12;
      [v15 bounds];
      [v14 setFrame:?];

      [v0 bounds];
      v17 = 24.0 / (CGRectGetWidth(v46) + 48.0 + -5.0);
      sub_10010FC20(&qword_101183990);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100EC3620;
      *(v18 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
      *(v18 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v17];
      *(v18 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:0.5];
      *(v18 + 56) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v17];
      *(v18 + 64) = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
      sub_100009F78(0, &qword_101189A20);
      v19 = Array._bridgeToObjectiveC()().super.isa;

      [v14 setLocations:v19];
    }

    else
    {
    }

    goto LABEL_12;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100629ED8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 accessibilityContrast];
    v6 = v4;
    v7 = [v6 traitCollection];
    v8 = [v7 accessibilityContrast];

    if (v5 == v8)
    {

LABEL_19:
      return;
    }

    v9 = [v6 traitCollection];
    v10 = [v9 accessibilityContrast];

    v11 = [v6 layer];
    if (v10 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = kCAFilterPlusL;
    }

    [v11 setCompositingFilter:v12];

    swift_unknownObjectRelease();
    v13 = sub_10062781C();
    v14 = [v13 layer];

    v15 = [v14 sublayers];
    if (!v15)
    {
      goto LABEL_19;
    }

    sub_100009F78(0, &unk_101199A90);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_10;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_1007E9C3C(0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v17 = *(v16 + 32);
      }

      v18 = v17;

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        return;
      }

      v20 = v19;
      if (v10 == 1)
      {
        v21 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
      }

      else
      {
        v21 = [objc_opt_self() whiteColor];
      }

      v22 = v21;
      sub_10010FC20(&qword_101181530);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100EC6C60;
      v24 = [v22 colorWithAlphaComponent:0.0];
      v25 = [v24 CGColor];

      type metadata accessor for CGColor(0);
      v27 = v26;
      *(v23 + 56) = v26;
      *(v23 + 32) = v25;
      v28 = [v22 CGColor];
      *(v23 + 88) = v27;
      *(v23 + 64) = v28;
      v29 = [v22 CGColor];
      *(v23 + 120) = v27;
      *(v23 + 96) = v29;
      v30 = [v22 CGColor];
      *(v23 + 152) = v27;
      *(v23 + 128) = v30;
      v31 = [v22 colorWithAlphaComponent:0.0];
      v32 = [v31 CGColor];

      *(v23 + 184) = v27;
      *(v23 + 160) = v32;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 setColors:isa];

      goto LABEL_19;
    }
  }
}

id sub_10062A2F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartTransitionIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10062A3B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1006287D4(a1, v4, v5, v6);
}

uint64_t sub_10062A46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10062A56C, 0, 0);
}

uint64_t sub_10062A56C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10062A924(&qword_101199A80, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10062A924(&qword_101199A88, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10062A6FC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10062A6FC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10062A8B8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10062A8B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10062A924(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10062A9F8()
{
  *(v0 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView____lazy_storage___gradientView) = 0;
  v1 = OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_smartTransitionLabel;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_10117F988 != -1)
  {
    swift_once();
  }

  [v2 setFont:qword_101219138];
  [v2 setAdjustsFontForContentSizeCategory:1];
  *(v0 + v1) = v2;
  v3 = (v0 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_didCompleteOneCycleHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music28SmartTransitionIndicatorView_hasCompletedOneCycle) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10062AB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10062AB94(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10062AC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_10062AC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10062ACE0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = _s11ContentViewVMa(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&qword_101199E58);
  __chkstk_darwin(v6);
  v8 = &v40[-v7];
  v9 = sub_10010FC20(&qword_101199E60);
  __chkstk_darwin(v9);
  v11 = &v40[-v10];
  v12 = sub_10010FC20(&qword_101199E68);
  __chkstk_darwin(v12);
  v14 = &v40[-v13];
  v15 = *(v1 + *(_s10ImportViewVMa(0) + 20));
  sub_100633220(v1, v5, type metadata accessor for LibraryImport.ViewModel);
  v5[*(v3 + 28)] = v15;
  if ((v15 & 1) == 0)
  {
    if (qword_10117F990 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (qword_10117F998 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_5:
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10063305C(v5, v8, _s11ContentViewVMa);
  v16 = &v8[*(v6 + 36)];
  v17 = v47;
  v16[4] = v46;
  v16[5] = v17;
  v16[6] = v48;
  v18 = v43;
  *v16 = v42;
  v16[1] = v18;
  v19 = v45;
  v16[2] = v44;
  v16[3] = v19;
  v20 = static SafeAreaRegions.all.getter();
  if (v15)
  {
    v21 = static Edge.Set.all.getter();
  }

  else
  {
    v21 = Edge.Set.init(rawValue:)();
  }

  v22 = v21;
  sub_10003D17C(v8, v11, &qword_101199E58);
  v23 = &v11[*(v9 + 36)];
  *v23 = v20;
  v23[8] = v22;
  v24 = &v14[*(v12 + 36)];
  sub_10062B1B0();
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = &v24[*(sub_10010FC20(&qword_101199E70) + 36)];
  *v28 = v25;
  v28[1] = v27;
  sub_10003D17C(v11, v14, &qword_101199E60);
  if (v15)
  {
    v29 = EdgeInsets.zero.unsafeMutableAddressor();
    v30 = *v29;
    v31 = v29[1];
    v32 = v29 + 2;
    v33 = v29[3];
  }

  else
  {
    if (qword_10117F9B0 != -1)
    {
      swift_once();
    }

    v30 = qword_101199AC0;
    if (qword_10117F9B8 != -1)
    {
      swift_once();
    }

    v31 = 0;
    v33 = 0;
    v32 = &qword_101199AC8;
  }

  v34 = *v32;
  v35 = static Edge.Set.all.getter();
  v36 = v14;
  v37 = v41;
  sub_10003D17C(v36, v41, &qword_101199E68);
  result = sub_10010FC20(&qword_101199E78);
  v39 = v37 + *(result + 36);
  *v39 = v35;
  *(v39 + 8) = v30;
  *(v39 + 16) = v31;
  *(v39 + 24) = v34;
  *(v39 + 32) = v33;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_10062B1B0()
{
  v1 = sub_10010FC20(&qword_101199E80);
  __chkstk_darwin(v1);
  v3 = &v12 - v2;
  v4 = sub_10010FC20(&qword_101199E88);
  __chkstk_darwin(v4);
  v6 = (&v12 - v5);
  if (*(v0 + *(_s10ImportViewVMa(0) + 20)))
  {
    swift_storeEnumTagMultiPayload();
    sub_1006330C4();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if (qword_10117F9A8 != -1)
    {
      swift_once();
    }

    v8 = qword_101199AB8;
    v9 = *(type metadata accessor for RoundedRectangle() + 20);
    v10 = enum case for RoundedCornerStyle.continuous(_:);
    v11 = type metadata accessor for RoundedCornerStyle();
    (*(*(v11 - 8) + 104))(v6 + v9, v10, v11);
    *v6 = v8;
    v6[1] = v8;
    if (qword_10117F9A0 != -1)
    {
      swift_once();
    }

    *(v6 + *(v4 + 36)) = qword_101199AB0;
    sub_1000089F8(v6, v3, &qword_101199E88);
    swift_storeEnumTagMultiPayload();
    sub_1006330C4();

    _ConditionalContent<>.init(storage:)();
    return sub_1000095E8(v6, &qword_101199E88);
  }
}

uint64_t sub_10062B438@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = sub_10010FC20(&qword_10119A2F8);
  __chkstk_darwin(v44);
  v4 = &v41 - v3;
  v5 = _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin(v5 - 8);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10010FC20(&qword_10119A300);
  __chkstk_darwin(v46);
  v8 = &v41 - v7;
  v43 = sub_10010FC20(&qword_10119A308);
  __chkstk_darwin(v43);
  v10 = &v41 - v9;
  v47 = sub_10010FC20(&unk_10119A310);
  __chkstk_darwin(v47);
  v45 = &v41 - v11;
  v12 = type metadata accessor for OpacityTransition();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v19);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100633220(v2, v21, type metadata accessor for LibraryImport.ViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v42;
      sub_10063305C(v21, v42, _s16ActionButtonViewV5ModelVMa);
      v24 = *(v2 + *(_s11ContentViewVMa(0) + 20));
      sub_100633220(v23, v4, _s16ActionButtonViewV5ModelVMa);
      v4[*(_s16ActionButtonViewVMa(0) + 20)] = v24;
      OpacityTransition.init()();
      (*(v13 + 16))(v15, v18, v12);
      sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition);
      v25 = AnyTransition.init<A>(_:)();
      (*(v13 + 8))(v18, v12);
      *&v4[*(v44 + 36)] = v25;
      sub_1000089F8(v4, v10, &qword_10119A2F8);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&qword_10119A330);
      sub_1006345D4();
      sub_1006346E0();
      v26 = v45;
      _ConditionalContent<>.init(storage:)();
      sub_1000089F8(v26, v8, &unk_10119A310);
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&unk_10118A520);
      sub_100634548();
      sub_1002D8BFC();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v26, &unk_10119A310);
      sub_1000095E8(v4, &qword_10119A2F8);
      v27 = _s16ActionButtonViewV5ModelVMa;
      v28 = v23;
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v38 = v50;
      v39 = v51;
      v40 = v52;
      *v8 = v49;
      v8[8] = v38;
      *(v8 + 2) = v39;
      v8[24] = v40;
      *(v8 + 2) = v53;
      swift_storeEnumTagMultiPayload();
      sub_10010FC20(&unk_10118A520);
      sub_100634548();
      sub_1002D8BFC();
      _ConditionalContent<>.init(storage:)();
      v27 = type metadata accessor for LibraryImport.ViewModel;
      v28 = v21;
    }

    return sub_1006334B4(v28, v27);
  }

  else
  {
    v29 = *v21;
    v30 = v21[1];
    v31 = v21[3];
    v41 = v21[2];
    v42 = v29;
    v32 = v21[4];
    v33 = *(v2 + *(_s11ContentViewVMa(0) + 20));
    OpacityTransition.init()();
    (*(v13 + 16))(v15, v18, v12);
    sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition);
    v34 = AnyTransition.init<A>(_:)();
    (*(v13 + 8))(v18, v12);
    v35 = v41;
    *v10 = v42;
    *(v10 + 1) = v30;
    *(v10 + 2) = v35;
    *(v10 + 3) = v31;
    *(v10 + 4) = v32;
    v10[40] = v33;
    *(v10 + 6) = v34;
    swift_storeEnumTagMultiPayload();

    sub_10010FC20(&qword_10119A330);
    sub_1006345D4();
    sub_1006346E0();
    v36 = v45;
    _ConditionalContent<>.init(storage:)();
    sub_1000089F8(v36, v8, &unk_10119A310);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&unk_10118A520);
    sub_100634548();
    sub_1002D8BFC();
    _ConditionalContent<>.init(storage:)();

    return sub_1000095E8(v36, &unk_10119A310);
  }
}

void sub_10062BBDC()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

Swift::Int sub_10062BC84()
{
  Hasher.init(_seed:)();
  sub_10062BBDC();
  return Hasher._finalize()();
}

Swift::Int sub_10062BCC8()
{
  Hasher.init(_seed:)();
  sub_10062BBDC();
  return Hasher._finalize()();
}

BOOL sub_10062BD04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100631A70(v5, v7);
}

unint64_t sub_10062BD54()
{
  result = qword_101199CE8;
  if (!qword_101199CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199CE8);
  }

  return result;
}

uint64_t sub_10062BDA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101199EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&qword_101199EB8);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v10 = sub_10010FC20(&qword_101199EC0);
  sub_10062C094(v2, &v6[*(v10 + 44)]);
  if (*(v2 + 40))
  {
    v11 = EdgeInsets.zero.unsafeMutableAddressor();
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    v15 = *(v11 + 3);
  }

  else if (*(v2 + 24))
  {
    if (qword_10117F9E0 != -1)
    {
      swift_once();
    }

    v12 = *&qword_101199AF0;
    if (qword_10117F9C8 != -1)
    {
      swift_once();
    }

    v13 = qword_101199AD8;
    if (qword_10117F9E8 != -1)
    {
      swift_once();
    }

    v14 = qword_101199AF8;
    v15 = v13;
  }

  else
  {
    if (qword_10117F9C8 != -1)
    {
      swift_once();
    }

    v16 = *&qword_101199AD8;
    if (qword_10117F9C0 != -1)
    {
      v23 = qword_101199AD8;
      swift_once();
      v16 = *&v23;
    }

    v12 = EdgeInsets.init(horizontal:vertical:)(v16, *&qword_101199AD0);
    v13 = v17;
    v14 = v18;
    v15 = v19;
  }

  v20 = static Edge.Set.all.getter();
  sub_10003D17C(v6, v9, &qword_101199EB0);
  v21 = &v9[*(v7 + 36)];
  *v21 = v20;
  *(v21 + 1) = v12;
  *(v21 + 2) = v13;
  *(v21 + 3) = v14;
  *(v21 + 4) = v15;
  v21[40] = 0;
  sub_10003D17C(v9, a1, &qword_101199EB8);
  result = sub_10010FC20(&qword_101199EC8);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_10062C094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v76 = sub_10010FC20(&qword_101199ED0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v66 - v3;
  v81 = sub_10010FC20(&qword_101199ED8);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v66 - v4;
  v78 = sub_10010FC20(&qword_101199EE0);
  __chkstk_darwin(v78);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v77 = &v66 - v7;
  __chkstk_darwin(v8);
  v82 = &v66 - v9;
  v10 = type metadata accessor for OpacityTransition();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 24);
  v86 = *(a1 + 16);
  v66 = *(a1 + 32);
  v20 = sub_100479D70(&off_10109BED8);
  swift_bridgeObjectRetain_n();
  v93 = Text.init(optional:options:)(v18, v17, v20);
  v92 = v21;
  v91 = v22;
  v90 = v23;
  OpacityTransition.init()();
  v69 = *(v11 + 16);
  v69(v13, v16, v10);
  v68 = sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition);
  v89 = AnyTransition.init<A>(_:)();
  v24 = *(v11 + 8);
  v24(v16, v10);
  v98 = 0x203A656C746954;
  v99 = 0xE700000000000000;
  if (v17)
  {
    v25 = v18;
  }

  else
  {
    v25 = 7104878;
  }

  if (v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  v27 = v26;
  String.append(_:)(*&v25);

  v88 = v98;
  v87 = v99;
  v109 = *(a1 + 40);
  if (v109)
  {
    if (qword_10117FA00 != -1)
    {
      swift_once();
    }

    v28 = &dword_101199B0C;
  }

  else
  {
    if (qword_10117F9F8 != -1)
    {
      swift_once();
    }

    v28 = &dword_101199B08;
  }

  v29 = v19;
  v30 = 7104878;
  v31 = v86;
  LODWORD(v86) = *v28;
  if (v19)
  {
    swift_bridgeObjectRetain_n();
    static Font.Weight.semibold.getter();
    v33 = v32;
    v30 = v31;
  }

  else
  {
    v33 = 0;
    v19 = 0xE300000000000000;
  }

  v85 = v29 == 0;
  v108 = v29 == 0;
  v34 = sub_100479D70(&off_10109BF00);
  v73 = Text.init(optional:options:)(v31, v29, v34);
  v72 = v35;
  v71 = v36;
  v70 = v37;
  OpacityTransition.init()();
  v69(v13, v16, v10);
  v69 = AnyTransition.init<A>(_:)();
  v24(v16, v10);
  v98 = 0x656C746974627553;
  v99 = 0xEA0000000000203ALL;
  v38._countAndFlagsBits = v30;
  v38._object = v19;
  String.append(_:)(v38);

  v67 = v98;
  v68 = v99;
  v98 = v66;
  LOBYTE(v99) = 0;
  *&v94 = 0x3FF0000000000000;
  sub_100363C0C();
  v39 = v74;
  ProgressView.init<A>(value:total:)();
  if (v109)
  {
    v40 = v79;
    if (qword_10117FA08 != -1)
    {
      swift_once();
    }

    v41 = &qword_101199B10;
  }

  else
  {
    v40 = v79;
    if (qword_10117F9D8 != -1)
    {
      swift_once();
    }

    v41 = &qword_101199AE8;
  }

  v98 = *v41;
  sub_100020674(&qword_101180F58, &qword_101199ED0);
  sub_1006331AC();
  v42 = v76;
  View.progressViewStyle<A>(_:)();
  (*(v75 + 8))(v39, v42);
  v43 = static Edge.Set.top.getter();
  if (v29)
  {
    if (qword_10117F9F0 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (qword_10117F9D0 != -1)
  {
LABEL_29:
    swift_once();
  }

LABEL_28:
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v77;
  (*(v80 + 32))(v77, v40, v81);
  v53 = v52 + *(v78 + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  v54 = v82;
  sub_10003D17C(v52, v82, &qword_101199EE0);
  v55 = v83;
  sub_1000089F8(v54, v83, &qword_101199EE0);
  *&v94 = v93;
  *(&v94 + 1) = v92;
  *&v95 = v91;
  *(&v95 + 1) = v90;
  *&v96 = v89;
  *(&v96 + 1) = v88;
  *v97 = v87;
  *&v97[8] = v86;
  *&v97[16] = v33;
  v97[24] = v85;
  v56 = *v97;
  v57 = v84;
  *(v84 + 32) = v96;
  *(v57 + 48) = v56;
  *(v57 + 57) = *&v97[9];
  v58 = v95;
  *v57 = v94;
  *(v57 + 16) = v58;
  v59 = v73;
  v60 = v72;
  *(v57 + 80) = v73;
  *(v57 + 88) = v60;
  v61 = v71;
  v62 = v70;
  *(v57 + 96) = v71;
  *(v57 + 104) = v62;
  v63 = v67;
  *(v57 + 112) = v69;
  *(v57 + 120) = v63;
  *(v57 + 128) = v68;
  v64 = sub_10010FC20(&qword_101199EF8);
  sub_1000089F8(v55, v57 + *(v64 + 64), &qword_101199EE0);
  sub_1000089F8(&v94, &v98, &qword_101199F00);
  sub_10024EA48(v59, v60, v61, v62);

  sub_1000095E8(v54, &qword_101199EE0);
  sub_1000095E8(v55, &qword_101199EE0);
  sub_10024EA04(v59, v60, v61, v62);

  v98 = v93;
  v99 = v92;
  v100 = v91;
  v101 = v90;
  v102 = v89;
  v103 = v88;
  v104 = v87;
  v105 = v86;
  v106 = v33;
  v107 = v85;
  return sub_1000095E8(&v98, &qword_101199F00);
}

void sub_10062CB80(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(v1 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  Hasher._combine(_:)(0);
  if (*(v1 + 40))
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 56))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  Hasher._combine(_:)(0);
  if (*(v1 + 56))
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (!*(v1 + 128))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(0);
  if (!*(v1 + 128))
  {
    goto LABEL_15;
  }

LABEL_11:
  v3 = *(v1 + 104);
  v4 = *(v1 + 120);
  Hasher._combine(_:)(1u);
  if (!v3)
  {
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    goto LABEL_16;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_13:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_16:
  Hasher._combine(_:)(*(v1 + 144));
  _s16ActionButtonViewV5ModelVMa(0);
  sub_10063166C(a1);
  sub_10063166C(a1);
}

uint64_t sub_10062CD98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = sub_10010FC20(&qword_101199F08);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  v14 = sub_10010FC20(&qword_101199F10);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v49 = sub_10010FC20(&qword_101199F18);
  __chkstk_darwin(v49);
  v18 = &v48 - v17;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v19 = sub_10010FC20(&qword_101199F20);
  sub_10062D320(v2, &v13[*(v19 + 44)]);
  OpacityTransition.init()();
  (*(v4 + 16))(v6, v9, v3);
  sub_1006304AC(&qword_101199EE8, &type metadata accessor for OpacityTransition);
  v20 = AnyTransition.init<A>(_:)();
  v21 = v3;
  v22 = v2;
  (*(v4 + 8))(v9, v21);
  *&v13[*(v11 + 44)] = v20;
  v23 = *(v2 + *(_s16ActionButtonViewVMa(0) + 20));
  if (v23)
  {
    v24 = EdgeInsets.zero.unsafeMutableAddressor();
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = *(v24 + 2);
    v28 = *(v24 + 3);
  }

  else
  {
    if (qword_10117FA28 != -1)
    {
      swift_once();
    }

    v29 = *&qword_101199B30;
    if (qword_10117FA20 != -1)
    {
      v47 = qword_101199B30;
      swift_once();
      v29 = *&v47;
    }

    v25 = EdgeInsets.init(horizontal:vertical:)(v29, *&qword_101199B28);
    v26 = v30;
    v27 = v31;
    v28 = v32;
  }

  v33 = static Edge.Set.all.getter();
  sub_10003D17C(v13, v16, &qword_101199F08);
  v34 = &v16[*(v14 + 36)];
  *v34 = v33;
  *(v34 + 1) = v25;
  *(v34 + 2) = v26;
  *(v34 + 3) = v27;
  *(v34 + 4) = v28;
  v34[40] = 0;
  if (v23)
  {
    if (qword_10117F998 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (qword_10117F990 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_12:
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v16, v18, &qword_101199F10);
  v35 = &v18[*(v49 + 36)];
  v36 = v56;
  *(v35 + 4) = v55;
  *(v35 + 5) = v36;
  *(v35 + 6) = v57;
  v37 = v52;
  *v35 = v51;
  *(v35 + 1) = v37;
  v38 = v54;
  *(v35 + 2) = v53;
  *(v35 + 3) = v38;
  v39 = static Alignment.topTrailing.getter();
  v41 = v40;
  v42 = sub_10010FC20(&qword_101199F28);
  v43 = v50;
  v44 = v50 + *(v42 + 36);
  sub_10062E7B8(v22, v44);
  v45 = (v44 + *(sub_10010FC20(&qword_101199F30) + 36));
  *v45 = v39;
  v45[1] = v41;
  return sub_10003D17C(v18, v43, &qword_101199F18);
}

uint64_t sub_10062D320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s16ActionButtonViewVMa(0);
  v5 = v4 - 8;
  v96 = *(v4 - 8);
  __chkstk_darwin(v4);
  v97 = v6;
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10010FC20(&qword_101199F78);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v104 = &v94 - v7;
  v8 = sub_10010FC20(&qword_101199F80);
  __chkstk_darwin(v8);
  v103 = &v94 - v9;
  v106 = sub_10010FC20(&qword_101199F88);
  v119 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = &v94 - v12;
  v13 = sub_10010FC20(&qword_101199F90);
  __chkstk_darwin(v13 - 8);
  v122 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v121 = &v94 - v16;
  v17 = sub_10010FC20(&qword_101199F98);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v94 - v19;
  v21 = sub_10010FC20(&qword_101199FA0);
  __chkstk_darwin(v21 - 8);
  v120 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v94 - v24;
  v95 = *(a1 + *(v5 + 28));
  if (v95 == 1)
  {
    *v20 = static VerticalAlignment.center.getter();
    *(v20 + 1) = 0;
    v20[16] = 1;
    v26 = sub_10010FC20(&qword_101199FC8);
    sub_10062DDDC(a1, &v20[*(v26 + 44)]);
    sub_10003D17C(v20, v25, &qword_101199F98);
    (*(v18 + 56))(v25, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(&v94 - v24, 1, 1, v17);
  }

  v27 = *a1;
  v28 = a1[1];
  v29 = sub_100479D70(&off_10109BF28);
  swift_bridgeObjectRetain_n();
  v30 = Text.init(optional:options:)(v27, v28, v29);
  v117 = v31;
  v118 = v30;
  v115 = v33;
  v116 = v32;
  strcpy(v123, "Title: ");
  v123[1] = 0xE700000000000000;
  if (v28)
  {
    v34 = v27;
  }

  else
  {
    v34 = 7104878;
  }

  if (v28)
  {
    v35 = v28;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  v36 = v35;
  String.append(_:)(*&v34);

  v108 = v123[0];
  v114 = v123[1];
  v37 = a1[2];
  v38 = a1[3];
  v39 = sub_100479D70(&off_10109BF50);
  swift_bridgeObjectRetain_n();
  v40 = Text.init(optional:options:)(v37, v38, v39);
  v112 = v41;
  v113 = v40;
  v110 = v43;
  v111 = v42;
  strcpy(v123, "Subtitle: ");
  BYTE3(v123[1]) = 0;
  HIDWORD(v123[1]) = -369098752;
  if (v38)
  {
    v44 = v37;
  }

  else
  {
    v44 = 7104878;
  }

  if (v38)
  {
    v45 = v38;
  }

  else
  {
    v45 = 0xE300000000000000;
  }

  v46 = v45;
  String.append(_:)(*&v44);

  v107 = v123[0];
  v109 = v123[1];
  v47 = a1[8];
  if (!v47)
  {
    goto LABEL_21;
  }

  v48 = a1[9];
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  v50 = a1[5];
  if (!v50)
  {

LABEL_21:
    v60 = 1;
    v58 = v121;
    v59 = v106;
    goto LABEL_26;
  }

  v51 = v8;
  v94 = a2;
  v52 = a1[4];
  v53 = v98;
  sub_100633220(a1, v98, _s16ActionButtonViewVMa);
  v54 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = sub_10026A1C8;
  *(v55 + 24) = v49;
  v56 = sub_10063305C(v53, v55 + v54, _s16ActionButtonViewVMa);
  __chkstk_darwin(v56);
  v98 = v52;
  *(&v94 - 2) = v52;
  *(&v94 - 1) = v50;
  sub_100030444(v47);

  sub_10010FC20(&qword_101199FB0);
  sub_1006333B0();
  Button.init(action:label:)();
  v57 = static Edge.Set.top.getter();
  if (v95)
  {
    Int.seconds.getter(0);
    a2 = v94;
    v58 = v121;
    v59 = v106;
  }

  else
  {
    v58 = v121;
    v59 = v106;
    if (qword_10117FA38 != -1)
    {
      swift_once();
    }

    a2 = v94;
  }

  EdgeInsets.init(_all:)();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v103;
  (*(v99 + 32))(v103, v104, v100);
  v70 = v69 + *(v51 + 36);
  *v70 = v57;
  *(v70 + 8) = v62;
  *(v70 + 16) = v64;
  *(v70 + 24) = v66;
  *(v70 + 32) = v68;
  *(v70 + 40) = 0;
  v123[0] = 0;
  v123[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v123, "Action label: ");
  HIBYTE(v123[1]) = -18;
  v71._countAndFlagsBits = v98;
  v71._object = v50;
  String.append(_:)(v71);

  v72 = v123[0];
  v73 = v123[1];
  v74 = v101;
  sub_10003D17C(v69, v101, &qword_101199F80);
  v75 = (v74 + *(v59 + 52));
  *v75 = v72;
  v75[1] = v73;
  v76 = v74;
  v77 = v102;
  sub_10003D17C(v76, v102, &qword_101199F88);
  sub_10003D17C(v77, v58, &qword_101199F88);
  v60 = 0;
LABEL_26:
  (*(v119 + 56))(v58, v60, 1, v59);
  v105 = v25;
  v78 = v120;
  sub_1000089F8(v25, v120, &qword_101199FA0);
  sub_1000089F8(v58, v122, &qword_101199F90);
  sub_1000089F8(v78, a2, &qword_101199FA0);
  v79 = sub_10010FC20(&qword_101199FA8);
  v80 = (a2 + v79[12]);
  v81 = v117;
  v82 = v118;
  *v80 = v118;
  v80[1] = v81;
  v83 = a2;
  v84 = v115;
  v85 = v116;
  v80[2] = v116;
  v80[3] = v84;
  v86 = v109;
  v87 = v113;
  v88 = v114;
  v80[4] = v108;
  v80[5] = v88;
  v89 = (a2 + v79[16]);
  v91 = v111;
  v90 = v112;
  *v89 = v87;
  v89[1] = v90;
  v92 = v110;
  v89[2] = v91;
  v89[3] = v92;
  v89[4] = v107;
  v89[5] = v86;
  sub_1000089F8(v122, v83 + v79[20], &qword_101199F90);
  sub_10024EA48(v82, v81, v85, v84);

  sub_10024EA48(v87, v90, v91, v92);

  sub_1000095E8(v121, &qword_101199F90);
  sub_1000095E8(v105, &qword_101199FA0);
  sub_1000095E8(v122, &qword_101199F90);
  sub_10024EA04(v87, v90, v91, v92);

  sub_10024EA04(v82, v81, v85, v84);

  return sub_1000095E8(v120, &qword_101199FA0);
}

uint64_t sub_10062DDDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v32 = sub_10010FC20(&qword_101199F38);
  __chkstk_darwin(v32);
  v4 = &v32 - v3;
  v5 = _s11CloseButtonVMa(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_101199F40);
  __chkstk_darwin(v34);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&qword_101199F48);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = *(a1 + *(_s16ActionButtonViewVMa(0) + 20));
  sub_100633220(a1, v8, _s16ActionButtonViewV5ModelVMa);
  v8[*(v6 + 28)] = v18;
  *&v36 = Int.seconds.getter(30);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  v19 = *(v6 + 36);
  v35 = 0;
  sub_10010FC20(&unk_101199F50);
  State.init(wrappedValue:)();
  *&v8[v19] = v36;
  if ((v18 & 1) == 0)
  {
    if (qword_10117FA30 != -1)
    {
      swift_once();
    }

    v20 = &qword_101199B38;
    goto LABEL_7;
  }

  if (qword_10117FA40 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v20 = &qword_101199B48;
LABEL_7:
    v21 = v34;
    v22 = *v20;
    v23 = static Edge.Set.all.getter();
    sub_10063305C(v8, v10, _s11CloseButtonVMa);
    v24 = &v10[*(v21 + 36)];
    *v24 = v23;
    *(v24 + 1) = v22;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = v22;
    v24[40] = 0;
    v25 = enum case for DynamicTypeSize.accessibility1(_:);
    v26 = type metadata accessor for DynamicTypeSize();
    (*(*(v26 - 8) + 104))(v4, v25, v26);
    sub_1006304AC(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
    v8 = v26;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

  sub_100633288();
  sub_100020674(&qword_101199F70, &qword_101199F38);
  View.dynamicTypeSize<A>(_:)();
  sub_1000095E8(v4, &qword_101199F38);
  sub_1000095E8(v10, &qword_101199F40);
  v27 = *(v12 + 16);
  v27(v14, v17, v11);
  v28 = v33;
  *v33 = 0;
  *(v28 + 8) = 1;
  v29 = sub_10010FC20(&unk_101199FD0);
  v27(v28 + *(v29 + 48), v14, v11);
  v30 = *(v12 + 8);
  v30(v17, v11);
  return (v30)(v14, v11);
}

uint64_t sub_10062E2CC(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_101199B50);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  a1(v6);
  v9 = _s16ActionButtonViewV5ModelVMa(0);
  sub_1000089F8(a3 + *(v9 + 48), v8, &qword_101199B50);
  v10 = _s12ClickMetricsVMa(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    return sub_1000095E8(v8, &qword_101199B50);
  }

  sub_10062E408();
  return sub_1006334B4(v8, _s12ClickMetricsVMa);
}

uint64_t sub_10062E408()
{
  v1 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s12ClickMetricsVMa(0);
  v14 = v13[5];
  v15 = &v0[v13[6]];
  v16 = v15[1];
  v32 = *v15;
  v17 = v0[v13[8]];
  v18 = *v0;
  sub_1000089F8(&v0[v14], v9, &qword_101183A20);
  v19 = &v0[v13[7]];
  v21 = *v19;
  v20 = v19[1];

  sub_100633490(v21, v20);
  v22 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_100633220(v22, v6, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Page.metricsPageProperties.getter(v3);
  sub_1006334B4(v6, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v32, v16, v17, v18, v9, 0, v21, v20, v12, 0, 0, 0xFF00u, v3, 0);
  v23 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v24 = sub_10053771C();
  v26 = v25;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v27 = qword_101218AD0;
  v28 = GroupActivitiesManager.hasJoined.getter();
  v29 = GroupActivitiesManager.participantsCount.getter();
  v30 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v23) + 0xB8))(v12, v24, v26, v28 & 1, v29, *(v27 + v30));

  return sub_1006334B4(v12, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_10062E74C@<X0>(uint64_t a1@<X8>)
{
  sub_100009838();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10062E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101199F38);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = _s11CloseButtonVMa(0);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101199F40);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  v13 = sub_10010FC20(&qword_101199F48);
  v24[0] = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v24 - v14;
  if (*(a1 + *(_s16ActionButtonViewVMa(0) + 20)))
  {
    v16 = *(v24[0] + 56);

    return v16(a2, 1, 1, v13);
  }

  else
  {
    sub_100633220(a1, v9, _s16ActionButtonViewV5ModelVMa);
    v9[*(v7 + 20)] = 0;
    *&v25 = Int.seconds.getter(30);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:)();
    v18 = *(v7 + 28);
    v24[1] = 0;
    sub_10010FC20(&unk_101199F50);
    State.init(wrappedValue:)();
    *&v9[v18] = v25;
    if (qword_10117FA30 != -1)
    {
      swift_once();
    }

    v19 = qword_101199B38;
    v20 = static Edge.Set.all.getter();
    sub_10063305C(v9, v12, _s11CloseButtonVMa);
    v21 = &v12[*(v10 + 36)];
    *v21 = v20;
    *(v21 + 1) = v19;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    *(v21 + 4) = v19;
    v21[40] = 0;
    v22 = enum case for DynamicTypeSize.accessibility3(_:);
    v23 = type metadata accessor for DynamicTypeSize();
    (*(*(v23 - 8) + 104))(v6, v22, v23);
    sub_1006304AC(&qword_1011A1490, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100633288();
      sub_100020674(&qword_101199F70, &qword_101199F38);
      View.dynamicTypeSize<A>(_:)();
      sub_1000095E8(v6, &qword_101199F38);
      sub_1000095E8(v12, &qword_101199F40);
      (*(v24[0] + 32))(a2, v15, v13);
      return (*(v24[0] + 56))(a2, 0, 1, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10062EC4C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11CloseButtonVMa(0);
  v7 = *(v6 - 8);
  v50 = v6 - 8;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v44 = sub_10010FC20(&qword_10119A1D8);
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v40 - v9;
  v46 = sub_10010FC20(&qword_10119A1E0);
  v43 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v40 - v11;
  v13 = sub_10010FC20(&qword_10119A1E8);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v45 = sub_10010FC20(&qword_10119A1F0);
  __chkstk_darwin(v45);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v42 = &v40 - v19;
  v41 = v1;
  sub_100633220(v1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s11CloseButtonVMa);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_10063305C(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, _s11CloseButtonVMa);
  v52 = v1;
  sub_10010FC20(&qword_10119A1F8);
  sub_100633EE4();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100020674(&qword_10119A258, &qword_10119A1D8);
  sub_1006304AC(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
  v22 = v44;
  v23 = v48;
  View.buttonStyle<A>(_:)();
  (*(v49 + 8))(v5, v23);
  (*(v47 + 8))(v10, v22);
  v24 = v41;
  if (*(v41 + 144))
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  (*(v43 + 32))(v15, v12, v46);
  *&v15[*(v13 + 36)] = v25;
  sub_10063411C();
  View.accessibilityHidden(_:)();
  sub_1000095E8(v15, &qword_10119A1E8);
  LocalizedStringKey.init(stringLiteral:)();
  v26 = v42;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_1000095E8(v17, &qword_10119A1F0);
  v27 = static Alignment.center.getter();
  v29 = v28;
  v53 = *(v24 + *(v50 + 36));
  sub_10010FC20(&qword_10119A270);
  State.projectedValue.getter();
  UIScreen.Dimensions.size.getter(v30);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v51;
  sub_10003D17C(v26, v51, &qword_10119A1F0);
  result = sub_10010FC20(&qword_10119A278);
  v39 = (v37 + *(result + 36));
  *v39 = v32;
  v39[1] = v34;
  v39[2] = v36;
  v39[3] = v27;
  v39[4] = v29;
  return result;
}

uint64_t sub_10062F264(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101199B50);
  __chkstk_darwin(v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v9);
  v14 = v30 - v13;
  v15 = *(a1 + 128);
  if (v15)
  {
    v31 = v11;
    v32 = v10;
    v16 = *(a1 + 136);
    v17 = *(a1 + 120);
    v38 = *(a1 + 96);
    v33 = *(a1 + 104);
    v39 = v33;
    v40 = v17;
    v41 = v15;
    v42 = v16;
    v34 = *(a1 + *(_s11CloseButtonVMa(0) + 28));
    v18 = v33;

    sub_10010FC20(&qword_10119A270);
    State.wrappedValue.getter();
    v19 = v37;
    if (!v37)
    {
LABEL_10:

      goto LABEL_15;
    }

    *&v33 = v18;
    v20 = [v37 delegate];

    if (v20)
    {
      v37 = v20;
      sub_10010FC20(&unk_101184050);
      sub_10010FC20(&unk_101184EB0);
      if (swift_dynamicCast())
      {
        if (*(&v35 + 1))
        {
          v21 = *(*sub_10000954C(&v34, *(&v35 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v34);
          if (v21)
          {
            v30[1] = v21;
            v30[0] = sub_10062F784();
            *v14 = v30[0];
            v14[8] = 1;
            *(v14 + 2) = &_swiftEmptySetSingleton;
            swift_storeEnumTagMultiPayload();
            v22 = v32;
            sub_100633220(v14, v32, type metadata accessor for AppInterfaceContext.Activity);
            sub_100633220(v22, v7, type metadata accessor for AppInterfaceContext.Activity);
            v23 = (*(v31 + 80) + 32) & ~*(v31 + 80);
            v24 = swift_allocObject();
            *(v24 + 16) = 0;
            *(v24 + 24) = 0;
            sub_10063305C(v7, v24 + v23, type metadata accessor for AppInterfaceContext.Activity);
            v25 = v30[0];
            sub_100706900(v22, sub_100115C18, v24);

            sub_1006334B4(v22, type metadata accessor for AppInterfaceContext.Activity);
            sub_1006334B4(v14, type metadata accessor for AppInterfaceContext.Activity);

            goto LABEL_15;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }
    }

    else
    {

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }

    sub_1000095E8(&v34, &unk_101184EA0);
  }

  else
  {
    v26 = *(a1 + 80);
    if (v26)
    {
      v26(v12);
    }
  }

LABEL_15:
  v27 = _s16ActionButtonViewV5ModelVMa(0);
  sub_1000089F8(a1 + *(v27 + 52), v4, &qword_101199B50);
  v28 = _s12ClickMetricsVMa(0);
  if ((*(*(v28 - 8) + 48))(v4, 1, v28) == 1)
  {
    return sub_1000095E8(v4, &qword_101199B50);
  }

  sub_10062E408();
  return sub_1006334B4(v4, _s12ClickMetricsVMa);
}

id sub_10062F784()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v17 = *v0;
  if (*(&v17 + 1))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v16 = v0[1];
  if (*(&v16 + 1))
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v8];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = swift_allocObject();
  v10 = v0[1];
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = v0[2];
  sub_1000089F8(&v17, aBlock, &qword_1011815E0);
  sub_1000089F8(&v16, aBlock, &qword_1011815E0);

  v11 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100118E6C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010B8248;
  v12 = _Block_copy(aBlock);

  v13 = [v7 actionWithTitle:v11 style:2 handler:v12];
  _Block_release(v12);

  [v5 addAction:v13];
  return v5;
}

uint64_t sub_10062FAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_10010FC20(&qword_10119A280);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - v4;
  v28 = sub_10010FC20(&unk_10119A220);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v31 = sub_10010FC20(&qword_10119A210);
  __chkstk_darwin(v31);
  v9 = &v27 - v8;
  v10 = Image.init(systemName:)();
  v11 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  *&v35 = v10;
  *(&v35 + 1) = KeyPath;
  *&v36 = v11;
  v13 = *(_s11CloseButtonVMa(0) + 20);
  v32 = a1;
  v33 = v9;
  v14 = *(a1 + v13);
  if (v14)
  {
    static Font.Weight.semibold.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  if (v14)
  {
    v15 = static HierarchicalShapeStyle.tertiary.getter();
  }

  else
  {
    v15 = static HierarchicalShapeStyle.secondary.getter();
  }

  v16 = v15;
  (*(v29 + 32))(v7, v5, v30);
  *&v7[*(v28 + 36)] = v16;
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v33;
  sub_10003D17C(v7, v33, &unk_10119A220);
  v18 = (v17 + *(v31 + 36));
  v19 = v36;
  *v18 = v35;
  v18[1] = v19;
  v18[2] = v37;
  if (v14)
  {
    v20 = static Color.clear.getter();
  }

  else
  {
    v21 = [objc_opt_self() quaternarySystemFillColor];
    v20 = Color.init(_:)();
  }

  v22 = v20;
  v23 = v17;
  v24 = v34;
  sub_10003D17C(v23, v34, &qword_10119A210);
  result = sub_10010FC20(&qword_10119A1F8);
  v26 = v24 + *(result + 36);
  *v26 = v22;
  *(v26 + 8) = 256;
  return result;
}

void sub_10062FE88()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_10062FF40()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (!v1)
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10062FFE8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = *a1 == *a2 && v3 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  result = (v5 | v8) == 0;
  if (v5)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if (v4 == v7 && v5 == v8)
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

uint64_t sub_1006300B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  MetricsEvent.Click.ActionType.rawValue.getter(*v2);
  String.hash(into:)();

  v11 = _s12ClickMetricsVMa(0);
  sub_1000089F8(&v2[v11[5]], v10, &qword_101183A20);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_1006304AC(&qword_10118E048, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  String.hash(into:)();
  v12 = &v2[v11[7]];
  v13 = v12[1];
  if (v13 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v14 = *v12;
    Hasher._combine(_:)(1u);
    MetricsEvent.Click.ActionContext.hash(into:)(a1, v14, v13);
  }

  MetricsEvent.TargetType.rawValue.getter(v2[v11[8]]);
  String.hash(into:)();
}

Swift::Int sub_100630370(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1006303D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1006304AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006304F8()
{
  result = qword_101199D00;
  if (!qword_101199D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199D00);
  }

  return result;
}

uint64_t sub_100630710()
{
  result = static HierarchicalShapeStyle.primary.getter();
  dword_101199B08 = result;
  return result;
}

uint64_t sub_100630730()
{
  result = static HierarchicalShapeStyle.secondary.getter();
  dword_101199B0C = result;
  return result;
}

uint64_t sub_100630788(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_1006307D0()
{
  qword_101199B20 = *Color.MusicTint.normal.unsafeMutableAddressor();
}

uint64_t sub_100630804(uint64_t a1, int a2)
{
  v4 = sub_10010FC20(&qword_10119A388);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_10010FC20(&qword_10119A390);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  *&v6[*(sub_10010FC20(&qword_10119A398) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(sub_10010FC20(&qword_10119A3A0) + 36)];
  *v9 = KeyPath;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = swift_getKeyPath();
  v11 = &v6[*(sub_10010FC20(&qword_10119A3A8) + 36)];
  *v11 = v10;
  v11[8] = 1;
  *&v6[*(sub_10010FC20(&qword_10119A3B0) + 36)] = a2;
  v12 = static Font.subheadline.getter();
  v13 = swift_getKeyPath();
  v14 = &v6[*(v4 + 36)];
  *v14 = v13;
  v14[1] = v12;
  sub_1006347C8();
  View.fontWeight(_:)();
  return sub_1000095E8(v6, &qword_10119A388);
}

uint64_t sub_100630A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10119A358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  *(a2 + *(sub_10010FC20(&qword_10119A360) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(sub_10010FC20(&qword_10119A368) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = swift_getKeyPath();
  v8 = a2 + *(sub_10010FC20(&qword_10119A370) + 36);
  *v8 = v7;
  *(v8 + 8) = 1;
  LODWORD(v7) = static HierarchicalShapeStyle.secondary.getter();
  *(a2 + *(sub_10010FC20(&qword_10119A378) + 36)) = v7;
  v9 = static Font.subheadline.getter();
  v10 = swift_getKeyPath();
  result = sub_10010FC20(&qword_10119A380);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_100630C14(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119A418);
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_10119A420);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  *&v4[*(sub_10010FC20(&qword_10119A428) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(sub_10010FC20(&qword_10119A430) + 36)];
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = swift_getKeyPath();
  v9 = &v4[*(sub_10010FC20(&qword_10119A438) + 36)];
  *v9 = v8;
  v9[8] = 1;
  LODWORD(v8) = static HierarchicalShapeStyle.primary.getter();
  *&v4[*(sub_10010FC20(&qword_10119A440) + 36)] = v8;
  v10 = static Font.subheadline.getter();
  v11 = swift_getKeyPath();
  v12 = &v4[*(v2 + 36)];
  *v12 = v11;
  v12[1] = v10;
  static Font.Weight.semibold.getter();
  sub_100634B60();
  View.fontWeight(_:)();
  return sub_1000095E8(v4, &qword_10119A418);
}

uint64_t sub_100630E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10119A3E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  *(a2 + *(sub_10010FC20(&qword_10119A3F0) + 36)) = 256;
  KeyPath = swift_getKeyPath();
  v6 = a2 + *(sub_10010FC20(&qword_10119A3F8) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = swift_getKeyPath();
  v8 = a2 + *(sub_10010FC20(&qword_10119A400) + 36);
  *v8 = v7;
  *(v8 + 8) = 1;
  LODWORD(v7) = static HierarchicalShapeStyle.secondary.getter();
  *(a2 + *(sub_10010FC20(&qword_10119A408) + 36)) = v7;
  v9 = static Font.subheadline.getter();
  v10 = swift_getKeyPath();
  result = sub_10010FC20(&qword_10119A410);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t sub_100630F60(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119A288);
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_10119A290);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  *&v4[*(sub_10010FC20(&qword_10119A298) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(sub_10010FC20(&qword_10119A2A0) + 36)];
  *v7 = KeyPath;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = swift_getKeyPath();
  v9 = &v4[*(sub_10010FC20(&qword_10119A2A8) + 36)];
  *v9 = v8;
  v9[8] = 1;
  v10 = static Font.subheadline.getter();
  v11 = swift_getKeyPath();
  v12 = &v4[*(v2 + 36)];
  *v12 = v11;
  v12[1] = v10;
  static Font.Weight.semibold.getter();
  sub_100634268();
  View.fontWeight(_:)();
  return sub_1000095E8(v4, &qword_10119A288);
}

uint64_t sub_10063112C()
{
  v0 = static Alignment.leading.getter();
  v2 = v1;
  sub_100631308(&v30);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v29[8] = v38;
  v29[9] = v39;
  v29[10] = v40;
  v29[11] = v41;
  v29[4] = v34;
  v29[5] = v35;
  v29[6] = v36;
  v29[7] = v37;
  v29[0] = v30;
  v29[1] = v31;
  v29[2] = v32;
  v29[3] = v33;
  sub_1000089F8(&v17, &v4, &qword_10119A1B0);
  sub_1000095E8(v29, &qword_10119A1B0);
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  *&v4 = v0;
  *(&v4 + 1) = v2;
  sub_10010FC20(&qword_10119A1B8);
  sub_100020674(&qword_10119A1C0, &qword_10119A1B8);
  View.corner(_:)();
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v30 = v4;
  v31 = v5;
  return sub_1000095E8(&v30, &qword_10119A1B8);
}

uint64_t sub_100631308@<X0>(_OWORD *a1@<X8>)
{
  if (qword_10117FA10 != -1)
  {
    swift_once();
  }

  v2 = qword_101199B18;
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  if (qword_10117FA18 != -1)
  {
    swift_once();
  }

  v4 = qword_101199B20;
  v5 = swift_getKeyPath();

  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v19[0] = KeyPath;
  *(&v19[0] + 1) = v2;
  v19[1] = v12;
  v19[2] = v13;
  v19[5] = v16;
  v19[6] = v17;
  v19[7] = v18;
  v19[3] = v14;
  v19[4] = v15;
  v8 = v19[0];
  *&v20[0] = v5;
  *(&v20[0] + 1) = v4;
  v20[2] = v10;
  v20[3] = v11;
  v20[1] = v9;
  v6 = v20[0];
  a1[10] = v10;
  a1[11] = v11;
  a1[8] = v6;
  a1[9] = v9;
  a1[2] = v13;
  a1[3] = v14;
  *a1 = v8;
  a1[1] = v12;
  a1[6] = v17;
  a1[7] = v18;
  a1[4] = v15;
  a1[5] = v16;
  v21[0] = v5;
  v21[1] = v4;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  sub_1000089F8(v19, v25, &qword_10119A1C8);
  sub_1000089F8(v20, v25, &qword_10119A1D0);
  sub_1000095E8(v21, &qword_10119A1D0);
  v25[0] = KeyPath;
  v25[1] = v2;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  return sub_1000095E8(v25, &qword_10119A1C8);
}

double sub_100631594@<D0>(uint64_t a1@<X8>)
{
  v2 = COERCE_DOUBLE(ProgressViewStyleConfiguration.fractionCompleted.getter());
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = sub_100633E74;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  result = *&v11;
  *(a1 + 48) = v11;
  return result;
}

void sub_10063166C(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = _s12ClickMetricsVMa(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_101199B50);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  sub_1000089F8(v1, &v20 - v13, &qword_101199B50);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_10063305C(v14, v11, _s12ClickMetricsVMa);
    Hasher._combine(_:)(1u);
    MetricsEvent.Click.ActionType.rawValue.getter(*v11);
    String.hash(into:)();

    sub_1000089F8(&v11[v8[5]], v7, &qword_101183A20);
    v15 = v21;
    if ((*(v21 + 48))(v7, 1, v3) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v16 = v20;
      (*(v15 + 32))(v20, v7, v3);
      Hasher._combine(_:)(1u);
      sub_1006304AC(&qword_10118E048, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      (*(v15 + 8))(v16, v3);
    }

    String.hash(into:)();
    v17 = &v11[v8[7]];
    v18 = v17[1];
    if (v18 == 12)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v19 = *v17;
      Hasher._combine(_:)(1u);
      MetricsEvent.Click.ActionContext.hash(into:)(a1, v19, v18);
    }

    MetricsEvent.TargetType.rawValue.getter(v11[v8[8]]);
    String.hash(into:)();

    sub_1006334B4(v11, _s12ClickMetricsVMa);
  }
}

BOOL sub_100631A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (v10)
    {
      if (*(a1 + 16) == *(a2 + 16) && v9 == v10)
      {
        return *(a1 + 32) == *(a2 + 32);
      }

      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if (v14)
      {
        return *(a1 + 32) == *(a2 + 32);
      }
    }
  }

  else if (!v10)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

BOOL sub_100631B4C(uint64_t a1, uint64_t a2)
{
  v4 = _s12ClickMetricsVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v85[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10010FC20(&qword_101199B50);
  __chkstk_darwin(v8 - 8);
  v10 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v85[-v12];
  v14 = sub_10010FC20(&qword_101199D08);
  __chkstk_darwin(v14);
  v16 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v85[-v19];
  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*a1 != *a2 || v21 != v22)
    {
      v23 = v18;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = *(a1 + 24);
  v26 = *(a2 + 24);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v25 != v26)
    {
      v27 = v18;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v29 = *(a1 + 40);
  v30 = *(a2 + 40);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v29 != v30)
    {
      v31 = v18;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v33 = *(a1 + 56);
  v34 = *(a2 + 56);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v33 != v34)
    {
      v35 = v18;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_29:
    v37 = *(a1 + 96);
    v38 = *(a1 + 104);
    v39 = *(a1 + 112);
    v40 = *(a1 + 120);
    v42 = *(a1 + 128);
    v41 = *(a1 + 136);
    v44 = *(a2 + 96);
    v43 = *(a2 + 104);
    v45 = *(a2 + 112);
    v46 = *(a2 + 120);
    v48 = *(a2 + 128);
    v47 = *(a2 + 136);
    if (v42)
    {
      if (v48)
      {
        v96 = *(a1 + 136);
        v97 = v39;
        v98 = v40;
        if (v38)
        {
          if (!v43)
          {
            v51 = v38;
            v54 = v39;
            v52 = v42;
            v53 = v37;
            sub_10037292C(v44, 0, v45, v46, v48);
            v55 = v98;
            sub_10037292C(v53, v51, v54, v98, v52);

            goto LABEL_51;
          }

          if (v37 != v44 || v38 != v43)
          {
            v92 = v18;
            v95 = v38;
            v88 = v45;
            v91 = v43;
            v89 = v46;
            v93 = v37;
            v94 = v42;
            v90 = v47;
            v87 = v44;
            v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v44 = v87;
            v45 = v88;
            v46 = v89;
            v47 = v90;
            v43 = v91;
            v42 = v94;
            v38 = v95;
            v50 = v49;
            v18 = v92;
            v37 = v93;
            if ((v50 & 1) == 0)
            {
              v51 = v95;
              v52 = v94;
              v53 = v93;
              sub_10037292C(v87, v91, v88, v89, v48);
              v54 = v97;
              v55 = v98;
              sub_10037292C(v53, v51, v97, v98, v52);

LABEL_51:

              v66 = v53;
              v67 = v51;
              v68 = v54;
              v69 = v55;
              goto LABEL_52;
            }
          }
        }

        else if (v43)
        {
          v52 = v42;
          v63 = v37;
          sub_10037292C(v44, v43, v45, v46, v48);
          v64 = v97;
          v65 = v98;
          sub_10037292C(v63, 0, v97, v98, v52);

          v66 = v63;
          v67 = 0;
          v68 = v64;
          v69 = v65;
          goto LABEL_52;
        }

        if (v98)
        {
          if (!v46)
          {
            v51 = v38;
            v55 = v98;
            v52 = v42;
            v53 = v37;
            sub_10037292C(v44, v43, v45, 0, v48);
            v54 = v97;
            sub_10037292C(v53, v51, v97, v55, v52);

            goto LABEL_51;
          }

          v94 = v42;
          v95 = v38;
          v92 = v18;
          v93 = v37;
          v90 = v47;
          v91 = v43;
          v89 = v46;
          if (v97 != v45 || v98 != v46)
          {
            v88 = v45;
            v87 = v44;
            v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_10037292C(v87, v91, v88, v89, v48);
            sub_10037292C(v93, v95, v97, v98, v94);

            sub_10063265C(v93, v95, v97, v98, v94);
            v18 = v92;
            if ((v86 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_57;
          }

          sub_10037292C(v44, v43, v97, v98, v48);
          sub_10037292C(v93, v95, v97, v98, v94);

          goto LABEL_56;
        }

        v94 = v42;
        v95 = v38;
        v93 = v37;
        if (!v46)
        {
          v91 = v43;
          v92 = v18;
          v90 = v47;
          sub_10037292C(v44, v43, v45, 0, v48);
          sub_10037292C(v93, v95, v97, 0, v94);

          v98 = 0;
LABEL_56:

          sub_10063265C(v93, v95, v97, v98, v94);
          v18 = v92;
          goto LABEL_57;
        }

        sub_10037292C(v44, v43, v45, v46, v48);
        v70 = v93;
        v52 = v94;
        v71 = v95;
        v72 = v97;
        sub_10037292C(v93, v95, v97, 0, v94);

        v66 = v70;
        v67 = v71;
        v68 = v72;
        v69 = 0;
LABEL_52:
        sub_10063265C(v66, v67, v68, v69, v52);
        return 0;
      }
    }

    else if (!v48)
    {
LABEL_57:
      if (*(a1 + 144) != *(a2 + 144))
      {
        return 0;
      }

      v74 = v18;
      v75 = _s16ActionButtonViewV5ModelVMa(0);
      v76 = *(v75 + 48);
      v97 = v75;
      v98 = v76;
      v92 = v74;
      v77 = *(v74 + 48);
      sub_1000089F8(a1 + v76, v20, &qword_101199B50);
      v78 = a2 + v98;
      v98 = v77;
      sub_1000089F8(v78, &v20[v77], &qword_101199B50);
      v79 = *(v5 + 48);
      if (v79(v20, 1, v4) == 1)
      {
        if (v79(&v20[v98], 1, v4) == 1)
        {
          v96 = v79;
          sub_1000095E8(v20, &qword_101199B50);
LABEL_67:
          v80 = *(v97 + 52);
          v81 = a1 + v80;
          v82 = *(v92 + 48);
          sub_1000089F8(v81, v16, &qword_101199B50);
          sub_1000089F8(a2 + v80, &v16[v82], &qword_101199B50);
          v83 = v96;
          if (v96(v16, 1, v4) == 1)
          {
            if (v83(&v16[v82], 1, v4) == 1)
            {
              sub_1000095E8(v16, &qword_101199B50);
              return 1;
            }
          }

          else
          {
            sub_1000089F8(v16, v10, &qword_101199B50);
            if (v83(&v16[v82], 1, v4) != 1)
            {
              sub_10063305C(&v16[v82], v7, _s12ClickMetricsVMa);
              v84 = sub_1006326AC(v10, v7);
              sub_1006334B4(v7, _s12ClickMetricsVMa);
              sub_1006334B4(v10, _s12ClickMetricsVMa);
              sub_1000095E8(v16, &qword_101199B50);
              return (v84 & 1) != 0;
            }

            sub_1006334B4(v10, _s12ClickMetricsVMa);
          }

          v61 = &qword_101199D08;
          v62 = v16;
          goto LABEL_39;
        }
      }

      else
      {
        sub_1000089F8(v20, v13, &qword_101199B50);
        if (v79(&v20[v98], 1, v4) != 1)
        {
          v96 = v79;
          sub_10063305C(&v20[v98], v7, _s12ClickMetricsVMa);
          LODWORD(v98) = sub_1006326AC(v13, v7);
          sub_1006334B4(v7, _s12ClickMetricsVMa);
          sub_1006334B4(v13, _s12ClickMetricsVMa);
          sub_1000095E8(v20, &qword_101199B50);
          if ((v98 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_67;
        }

        sub_1006334B4(v13, _s12ClickMetricsVMa);
      }

      v61 = &qword_101199D08;
      v62 = v20;
LABEL_39:
      sub_1000095E8(v62, v61);
      return 0;
    }

    v99[0] = *(a1 + 96);
    v99[1] = v38;
    v99[2] = v39;
    v99[3] = v40;
    v99[4] = v42;
    v99[5] = v41;
    v99[6] = v44;
    v99[7] = v43;
    v99[8] = v45;
    v99[9] = v46;
    v99[10] = v48;
    v99[11] = v47;
    v56 = v38;
    v57 = v39;
    v58 = v40;
    v59 = v42;
    v60 = v37;
    sub_10037292C(v44, v43, v45, v46, v48);
    sub_10037292C(v60, v56, v57, v58, v59);
    v61 = &unk_101199D10;
    v62 = v99;
    goto LABEL_39;
  }

  if (!v34)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_10063265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1006326AC(char *a1, _BYTE *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_10010FC20(&qword_10118CA90);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v44 = a1;
  v14 = *a1;
  LOBYTE(a1) = *a2;
  v15 = MetricsEvent.Click.ActionType.rawValue.getter(v14);
  v17 = v16;
  if (v15 == MetricsEvent.Click.ActionType.rawValue.getter(a1) && v17 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = a2;
  v43 = _s12ClickMetricsVMa(0);
  v21 = *(v43 + 20);
  v22 = *(v11 + 48);
  sub_1000089F8(&v44[v21], v13, &qword_101183A20);
  v23 = &v20[v21];
  v24 = v20;
  sub_1000089F8(v23, &v13[v22], &qword_101183A20);
  v25 = *(v5 + 48);
  if (v25(v13, 1, v4) == 1)
  {
    if (v25(&v13[v22], 1, v4) == 1)
    {
      sub_1000095E8(v13, &qword_101183A20);
      goto LABEL_14;
    }

LABEL_10:
    sub_1000095E8(v13, &qword_10118CA90);
    goto LABEL_11;
  }

  sub_1000089F8(v13, v10, &qword_101183A20);
  if (v25(&v13[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v13[v22], v4);
  sub_1006304AC(&qword_101199D20, &type metadata accessor for URL);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v5 + 8);
  v29(v7, v4);
  v29(v10, v4);
  v24 = v20;
  sub_1000095E8(v13, &qword_101183A20);
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v30 = v43;
  v31 = *(v43 + 24);
  v32 = &v44[v31];
  v33 = *&v44[v31 + 8];
  v34 = &v24[v31];
  if ((*v32 != *v34 || v33 != v34[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = *(v30 + 28);
  v36 = *&v24[v35 + 8];
  if (*&v44[v35 + 8] == 12)
  {
    if (v36 == 12)
    {
      goto LABEL_22;
    }

LABEL_11:
    v26 = 0;
    return v26 & 1;
  }

  if (v36 == 12 || (static MetricsEvent.Click.ActionContext.__derived_enum_equals(_:_:)(*&v44[v35]) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v37 = *(v30 + 32);
  v38 = v24[v37];
  v39 = MetricsEvent.TargetType.rawValue.getter(v44[v37]);
  v41 = v40;
  if (v39 == MetricsEvent.TargetType.rawValue.getter(v38) && v41 == v42)
  {

    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v26 & 1;
}

Swift::Int sub_100632B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100632C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_100632CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100632D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 2)
    {
      return v11 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100632E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100632F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100632FB0()
{
  result = qword_101199E50;
  if (!qword_101199E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199E50);
  }

  return result;
}

uint64_t sub_10063305C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006330C4()
{
  result = qword_101199E90;
  if (!qword_101199E90)
  {
    sub_1001109D0(&qword_101199E88);
    sub_1006304AC(&qword_101196818, &type metadata accessor for RoundedRectangle);
    sub_100020674(&unk_101199EA0, &qword_1011879C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199E90);
  }

  return result;
}

unint64_t sub_1006331AC()
{
  result = qword_101199EF0;
  if (!qword_101199EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199EF0);
  }

  return result;
}

uint64_t sub_100633220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100633288()
{
  result = qword_101199F60;
  if (!qword_101199F60)
  {
    sub_1001109D0(&qword_101199F40);
    sub_1006304AC(&qword_101199F68, _s11CloseButtonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199F60);
  }

  return result;
}

uint64_t sub_100633344()
{
  v1 = *(_s16ActionButtonViewVMa(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10062E2CC(v2, v3, v4);
}

unint64_t sub_1006333B0()
{
  result = qword_101199FB8;
  if (!qword_101199FB8)
  {
    sub_1001109D0(&qword_101199FB0);
    sub_10063343C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199FB8);
  }

  return result;
}

unint64_t sub_10063343C()
{
  result = qword_101199FC0;
  if (!qword_101199FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101199FC0);
  }

  return result;
}

uint64_t sub_100633490(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_1006334A0(a1, a2);
  }

  return a1;
}

uint64_t sub_1006334A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_1006334B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for Specs.InProgressView.TitleModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Specs.InProgressView.TitleModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_100633640()
{
  _s16ActionButtonViewV5ModelVMa(319);
  if (v0 <= 0x3F)
  {
    sub_100402A50();
    if (v1 <= 0x3F)
    {
      sub_10003093C(319, &unk_10119A0E8, &unk_101199F50, &unk_100ED8A10, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100633710()
{
  result = qword_10119A120;
  if (!qword_10119A120)
  {
    sub_1001109D0(&qword_101199E78);
    sub_10063379C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A120);
  }

  return result;
}

unint64_t sub_10063379C()
{
  result = qword_10119A128;
  if (!qword_10119A128)
  {
    sub_1001109D0(&qword_101199E68);
    sub_100633854();
    sub_100020674(&qword_10119A148, &qword_101199E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A128);
  }

  return result;
}

unint64_t sub_100633854()
{
  result = qword_10119A130;
  if (!qword_10119A130)
  {
    sub_1001109D0(&qword_101199E60);
    sub_1006338E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A130);
  }

  return result;
}

unint64_t sub_1006338E0()
{
  result = qword_10119A138;
  if (!qword_10119A138)
  {
    sub_1001109D0(&qword_101199E58);
    sub_1006304AC(&qword_10119A140, _s11ContentViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A138);
  }

  return result;
}

unint64_t sub_10063399C()
{
  result = qword_10119A150;
  if (!qword_10119A150)
  {
    sub_1001109D0(&qword_101199EC8);
    sub_100633A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A150);
  }

  return result;
}

unint64_t sub_100633A28()
{
  result = qword_10119A158;
  if (!qword_10119A158)
  {
    sub_1001109D0(&qword_101199EB8);
    sub_100020674(&qword_10119A160, &qword_101199EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A158);
  }

  return result;
}

unint64_t sub_100633AE0()
{
  result = qword_10119A168;
  if (!qword_10119A168)
  {
    sub_1001109D0(&qword_101199F28);
    sub_100633B98();
    sub_100020674(&qword_10119A1A8, &qword_101199F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A168);
  }

  return result;
}

unint64_t sub_100633B98()
{
  result = qword_10119A170;
  if (!qword_10119A170)
  {
    sub_1001109D0(&qword_101199F18);
    sub_100633C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A170);
  }

  return result;
}

unint64_t sub_100633C24()
{
  result = qword_10119A178;
  if (!qword_10119A178)
  {
    sub_1001109D0(&qword_101199F10);
    sub_100633CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A178);
  }

  return result;
}

unint64_t sub_100633CB0()
{
  result = qword_10119A180;
  if (!qword_10119A180)
  {
    sub_1001109D0(&qword_101199F08);
    sub_100020674(&qword_10119A188, &unk_10119A190);
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A180);
  }

  return result;
}

uint64_t sub_100633E7C()
{
  v1 = *(_s11CloseButtonVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10062F264(v2);
}

unint64_t sub_100633EE4()
{
  result = qword_10119A200;
  if (!qword_10119A200)
  {
    sub_1001109D0(&qword_10119A1F8);
    sub_100633F9C();
    sub_100020674(&qword_10119A248, &qword_10119A250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A200);
  }

  return result;
}

unint64_t sub_100633F9C()
{
  result = qword_10119A208;
  if (!qword_10119A208)
  {
    sub_1001109D0(&qword_10119A210);
    sub_100634028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A208);
  }

  return result;
}

unint64_t sub_100634028()
{
  result = qword_10119A218;
  if (!qword_10119A218)
  {
    sub_1001109D0(&unk_10119A220);
    sub_1001109D0(&unk_1011A1100);
    sub_100238768();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A218);
  }

  return result;
}

unint64_t sub_10063411C()
{
  result = qword_10119A268;
  if (!qword_10119A268)
  {
    sub_1001109D0(&qword_10119A1E8);
    sub_1001109D0(&qword_10119A1D8);
    type metadata accessor for PlainButtonStyle();
    sub_100020674(&qword_10119A258, &qword_10119A1D8);
    sub_1006304AC(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A268);
  }

  return result;
}

unint64_t sub_100634268()
{
  result = qword_10119A2B0;
  if (!qword_10119A2B0)
  {
    sub_1001109D0(&qword_10119A288);
    sub_100634320();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2B0);
  }

  return result;
}

unint64_t sub_100634320()
{
  result = qword_10119A2B8;
  if (!qword_10119A2B8)
  {
    sub_1001109D0(&qword_10119A2A8);
    sub_1006343D8();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2B8);
  }

  return result;
}

unint64_t sub_1006343D8()
{
  result = qword_10119A2C0;
  if (!qword_10119A2C0)
  {
    sub_1001109D0(&qword_10119A2A0);
    sub_100634490();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2C0);
  }

  return result;
}

unint64_t sub_100634490()
{
  result = qword_10119A2C8;
  if (!qword_10119A2C8)
  {
    sub_1001109D0(&qword_10119A298);
    sub_100020674(&unk_10119A2D0, &qword_10119A290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A2C8);
  }

  return result;
}

unint64_t sub_100634548()
{
  result = qword_10119A320;
  if (!qword_10119A320)
  {
    sub_1001109D0(&unk_10119A310);
    sub_1006345D4();
    sub_1006346E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A320);
  }

  return result;
}

unint64_t sub_1006345D4()
{
  result = qword_10119A328;
  if (!qword_10119A328)
  {
    sub_1001109D0(&qword_10119A330);
    sub_10063468C();
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A328);
  }

  return result;
}

unint64_t sub_10063468C()
{
  result = qword_10119A338;
  if (!qword_10119A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A338);
  }

  return result;
}

unint64_t sub_1006346E0()
{
  result = qword_10119A340;
  if (!qword_10119A340)
  {
    sub_1001109D0(&qword_10119A2F8);
    sub_1006304AC(&qword_10119A348, _s16ActionButtonViewVMa);
    sub_100020674(&qword_101185858, &qword_10119A1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A340);
  }

  return result;
}

unint64_t sub_1006347C8()
{
  result = qword_10119A3B8;
  if (!qword_10119A3B8)
  {
    sub_1001109D0(&qword_10119A388);
    sub_100634880();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3B8);
  }

  return result;
}

unint64_t sub_100634880()
{
  result = qword_10119A3C0;
  if (!qword_10119A3C0)
  {
    sub_1001109D0(&qword_10119A3B0);
    sub_100634938();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3C0);
  }

  return result;
}

unint64_t sub_100634938()
{
  result = qword_10119A3C8;
  if (!qword_10119A3C8)
  {
    sub_1001109D0(&qword_10119A3A8);
    sub_1006349F0();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3C8);
  }

  return result;
}

unint64_t sub_1006349F0()
{
  result = qword_10119A3D0;
  if (!qword_10119A3D0)
  {
    sub_1001109D0(&qword_10119A3A0);
    sub_100634AA8();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3D0);
  }

  return result;
}

unint64_t sub_100634AA8()
{
  result = qword_10119A3D8;
  if (!qword_10119A3D8)
  {
    sub_1001109D0(&qword_10119A398);
    sub_100020674(&qword_10119A3E0, &qword_10119A390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A3D8);
  }

  return result;
}

unint64_t sub_100634B60()
{
  result = qword_10119A448;
  if (!qword_10119A448)
  {
    sub_1001109D0(&qword_10119A418);
    sub_100634C18();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A448);
  }

  return result;
}

unint64_t sub_100634C18()
{
  result = qword_10119A450;
  if (!qword_10119A450)
  {
    sub_1001109D0(&qword_10119A440);
    sub_100634CD0();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A450);
  }

  return result;
}

unint64_t sub_100634CD0()
{
  result = qword_10119A458;
  if (!qword_10119A458)
  {
    sub_1001109D0(&qword_10119A438);
    sub_100634D88();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A458);
  }

  return result;
}

unint64_t sub_100634D88()
{
  result = qword_10119A460;
  if (!qword_10119A460)
  {
    sub_1001109D0(&qword_10119A430);
    sub_100634E40();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A460);
  }

  return result;
}

unint64_t sub_100634E40()
{
  result = qword_10119A468;
  if (!qword_10119A468)
  {
    sub_1001109D0(&qword_10119A428);
    sub_100020674(&qword_10119A470, &qword_10119A420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A468);
  }

  return result;
}

unint64_t sub_100634EF8()
{
  result = qword_10119A478;
  if (!qword_10119A478)
  {
    sub_1001109D0(&qword_10119A480);
    sub_100020674(&qword_10119A488, &qword_10119A490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A478);
  }

  return result;
}

unint64_t sub_100634FB0()
{
  result = qword_10119A498;
  if (!qword_10119A498)
  {
    sub_1001109D0(&qword_10119A278);
    sub_100635068();
    sub_100020674(&qword_10119A4B0, &qword_10119A4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A498);
  }

  return result;
}

unint64_t sub_100635068()
{
  result = qword_10119A4A0;
  if (!qword_10119A4A0)
  {
    sub_1001109D0(&qword_10119A1F0);
    sub_10063411C();
    sub_1006304AC(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4A0);
  }

  return result;
}

unint64_t sub_100635124()
{
  result = qword_10119A4C0;
  if (!qword_10119A4C0)
  {
    sub_1001109D0(&qword_10119A4C8);
    sub_100634548();
    sub_1002D8BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4C0);
  }

  return result;
}

unint64_t sub_1006351B0()
{
  result = qword_10119A4D0;
  if (!qword_10119A4D0)
  {
    sub_1001109D0(&qword_10119A380);
    sub_100635268();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4D0);
  }

  return result;
}

unint64_t sub_100635268()
{
  result = qword_10119A4D8;
  if (!qword_10119A4D8)
  {
    sub_1001109D0(&qword_10119A378);
    sub_100635320();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4D8);
  }

  return result;
}

unint64_t sub_100635320()
{
  result = qword_10119A4E0;
  if (!qword_10119A4E0)
  {
    sub_1001109D0(&qword_10119A370);
    sub_1006353D8();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4E0);
  }

  return result;
}

unint64_t sub_1006353D8()
{
  result = qword_10119A4E8;
  if (!qword_10119A4E8)
  {
    sub_1001109D0(&qword_10119A368);
    sub_100635490();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4E8);
  }

  return result;
}

unint64_t sub_100635490()
{
  result = qword_10119A4F0;
  if (!qword_10119A4F0)
  {
    sub_1001109D0(&qword_10119A360);
    sub_100020674(&qword_10119A4F8, &qword_10119A358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A4F0);
  }

  return result;
}

uint64_t sub_100635548(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  sub_1001109D0(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1006355AC()
{
  result = qword_10119A500;
  if (!qword_10119A500)
  {
    sub_1001109D0(&qword_10119A410);
    sub_100635664();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A500);
  }

  return result;
}

unint64_t sub_100635664()
{
  result = qword_10119A508;
  if (!qword_10119A508)
  {
    sub_1001109D0(&qword_10119A408);
    sub_10063571C();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A508);
  }

  return result;
}

unint64_t sub_10063571C()
{
  result = qword_10119A510;
  if (!qword_10119A510)
  {
    sub_1001109D0(&qword_10119A400);
    sub_1006357D4();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A510);
  }

  return result;
}

unint64_t sub_1006357D4()
{
  result = qword_10119A518;
  if (!qword_10119A518)
  {
    sub_1001109D0(&qword_10119A3F8);
    sub_10063588C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A518);
  }

  return result;
}

unint64_t sub_10063588C()
{
  result = qword_10119A520;
  if (!qword_10119A520)
  {
    sub_1001109D0(&qword_10119A3F0);
    sub_100020674(&qword_10119A528, &qword_10119A3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119A520);
  }

  return result;
}

uint64_t sub_100635948@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Playlist.Entry.InternalItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for MusicMovie();
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v8 = &enum case for GenericMusicItem.musicMovie(_:);
  }

  else if (v6 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = type metadata accessor for MusicVideo();
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v8 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v6 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = type metadata accessor for Song();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v8 = &enum case for GenericMusicItem.song(_:);
  }

  else if (v6 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = type metadata accessor for TVEpisode();
    (*(*(v11 - 8) + 32))(a1, v5, v11);
    v8 = &enum case for GenericMusicItem.tvEpisode(_:);
  }

  else if (v6 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v3 + 96))(v5, v2);
    v12 = type metadata accessor for UploadedAudio();
    (*(*(v12 - 8) + 32))(a1, v5, v12);
    v8 = &enum case for GenericMusicItem.uploadedAudio(_:);
  }

  else
  {
    if (v6 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
    {
      v18 = type metadata accessor for GenericMusicItem();
      (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
      return (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 96))(v5, v2);
    v13 = type metadata accessor for UploadedVideo();
    (*(*(v13 - 8) + 32))(a1, v5, v13);
    v8 = &enum case for GenericMusicItem.uploadedVideo(_:);
  }

  v14 = *v8;
  v15 = type metadata accessor for GenericMusicItem();
  v16 = *(v15 - 8);
  (*(v16 + 104))(a1, v14, v15);
  return (*(v16 + 56))(a1, 0, 1, v15);
}

BOOL sub_100635DA0()
{
  v0 = sub_10010FC20(&qword_101190E70);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  Playlist.Entry.item.getter();
  v6 = type metadata accessor for Playlist.Entry.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    sub_1000089F8(v5, v2, &qword_101190E70);
    v8 = (*(v7 + 88))(v2, v6) == enum case for Playlist.Entry.Item.musicVideo(_:);
    (*(v7 + 8))(v2, v6);
  }

  sub_1000095E8(v5, &qword_101190E70);
  return v8;
}

uint64_t sub_100635F3C()
{
  v0 = Playlist.Entry.position.getter();
  v1 = __OFADD__(v0, 1);
  result = v0 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100635F7C()
{
  if (sub_10026A6F8())
  {
    v0 = &off_10109BF78;
  }

  else
  {
    v0 = &off_10109BFA0;
  }

  return sub_100110504(v0);
}

uint64_t sub_100635FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23[1] = a2;
  v26 = a1;
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10118C2B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13;
  v15 = type metadata accessor for Playlist.Entry();
  v24 = *(v15 - 8);
  v25 = v15;
  __chkstk_darwin(v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v12 + 16))(v14, v3 + v18, v11);
  IndexPath.row.getter();
  MusicItemCollection.subscript.getter();
  (*(v12 + 8))(v14, v11);
  v19 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v3 + v19, v6, &unk_1011814D0);
  v20 = *(v8 + 48);
  if (v20(v6, 1, v7) == 1)
  {
    (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v7);
    v21 = v20(v6, 1, v7);
    if (v21 != 1)
    {
      v21 = sub_1000095E8(v6, &unk_1011814D0);
    }
  }

  else
  {
    v21 = (*(v8 + 32))(v10, v6, v7);
  }

  __chkstk_darwin(v21);
  v23[-2] = v17;
  v23[-1] = v10;
  v27[3] = sub_10010FC20(&qword_10119A870);
  v27[4] = sub_100020674(&qword_10119A878, &qword_10119A870);
  sub_10001C8B8(v27);
  sub_10010FC20(&qword_10119A880);
  sub_100020674(&qword_10119A888, &qword_10119A880);
  UIHostingConfiguration<>.init(content:)();
  UITableViewCell.contentConfiguration.setter();
  (*(v8 + 8))(v10, v7);
  return (*(v24 + 8))(v17, v25);
}

uint64_t sub_100636450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Entry();
  v11 = __chkstk_darwin(v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return sub_10078A730(v13, v9, a3);
}

uint64_t sub_1006365C8(void (*a1)(char *, uint64_t, uint64_t), int a2, uint64_t a3)
{
  v4 = v3;
  v48 = a3;
  LODWORD(v38) = a2;
  v36 = a1;
  v5 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v5 - 8);
  v43 = &v36 - v6;
  v44 = sub_10010FC20(&qword_101199728);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - v7;
  v8 = sub_10010FC20(&qword_10119A800);
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v36 - v9;
  v10 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_10010FC20(&qword_10118C2B0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  v18 = type metadata accessor for Playlist();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v4 + v17, 1, 1, v18);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController) = 0;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = 0xF000000000000007;
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_observers) = &_swiftEmptySetSingleton;
  v20 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playActivityFeature) = 12;
  v39 = v19;
  v40 = v18;
  v21 = v36;
  (*(v19 + 16))(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v36, v18);
  *(v4 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_onlyDownloaded) = v38;
  v22 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  v23 = type metadata accessor for MusicPropertySource();
  v37 = *(v23 - 8);
  v38 = v23;
  (*(v37 + 16))(v4 + v22, v48);
  Playlist.entries.getter();
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    MusicItemCollection.init(arrayLiteral:)();
    if (v24(v12, 1, v13) != 1)
    {
      sub_1000095E8(v12, &qword_10119A808);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  swift_beginAccess();
  (*(v14 + 40))(v4 + v20, v16, v13);
  swift_endAccess();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v25 = v21;
  v26 = v40;
  v27 = Player.state<A>(for:)(v21);
  *(v4 + 16) = v27;
  v28 = v41;
  (*(*v27 + 280))();
  sub_100027010();
  v29 = static OS_dispatch_queue.main.getter();
  v49 = v29;
  v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = v43;
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  sub_100020674(&qword_101199730, &qword_101199728);
  sub_1006401FC(&qword_101184920, sub_100027010);
  v32 = v44;
  v33 = v45;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v31, &qword_101182140);

  (*(v42 + 8))(v28, v32);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_10119A810, &qword_10119A800);
  v34 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v33, v34);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1006377AC();
  (*(v37 + 8))(v48, v38);
  (*(v39 + 8))(v25, v26);
  return v4;
}

uint64_t sub_100636D7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2 = sub_10028434C();
      if (*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
      {
        v3 = *(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
        ObjectType = swift_getObjectType();
        v5 = (*(v3 + 112))(ObjectType, v3);
      }

      else
      {
        v5 = 1;
      }

      [v2 setHidden:v5 & 1];

      sub_100283D74();
      [*(Strong + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100636E80(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10028434C();
    if (*(v4 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v6 = *(v4 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 112))(ObjectType, v6);
    }

    else
    {
      v8 = 1;
    }

    [v5 setHidden:v8 & 1];

    sub_100283D74();
    [*(v4 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100636F90()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v2 - 8);
  v21 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v14, v6, &unk_1011814D0);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = *(v8 + 16);
    v16(v13, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v7);
    if (v15(v6, 1, v7) != 1)
    {
      sub_1000095E8(v6, &unk_1011814D0);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v16 = *(v8 + 16);
  }

  v17 = *(v1 + 16);
  v16(v10, v13, v7);
  (*(*v17 + 224))(v10);
  if (!*(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController))
  {
    v18 = v21;
    v16(v21, v13, v7);
    (*(v8 + 56))(v18, 0, 1, v7);
    type metadata accessor for PlaylistSortingController();
    swift_allocObject();
    v19 = PlaylistSortingController.init(_:)(v18);
    sub_1006374BC(v19);
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1006372A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    if ((v1 & 0x8000000000000000) == 0)
    {

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();
      sub_1004E6028(v1);
    }
  }

  return result;
}

uint64_t sub_100637330(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118A3B0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v10 - v7;
  (*(v5 + 8))(a1, v4, v6);
  type metadata accessor for Playlist();
  type metadata accessor for Playlist.Entry();
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
  if (*(a2 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController))
  {

    PlaylistSortingController.apply(to:)();
  }

  return (*(v5 + 32))(a1, v8, v4);
}

uint64_t sub_1006374BC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController;
  *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = (v4 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v7 = *v6;
    *v6 = sub_100640244;
    v6[1] = v5;

    sub_100020438(v7);
  }

  return result;
}

uint64_t sub_10063759C(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1006401FC(&qword_10119A868, &type metadata accessor for MusicPropertySource);
  LOBYTE(v11) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1006377AC();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

uint64_t sub_1006377AC()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v41 = sub_10010FC20(&qword_10119A820);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - v7;
  v8 = sub_10010FC20(&unk_1011A48E0);
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v42 = &v37 - v9;
  v10 = sub_10010FC20(&qword_10118A3B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for MusicPropertySource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  swift_beginAccess();
  (*(v18 + 16))(v20, v1 + v21, v17);
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == enum case for MusicPropertySource.catalog(_:))
  {
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v24;

    sub_1001F4CB8(0, 0, v4, &unk_100ED9258, v26);
  }

  else if (v22 == enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for Playlist();
    type metadata accessor for Playlist.Entry();
    MusicLibrarySectionedRequest.init()();
    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    if (*(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_sortingController))
    {

      PlaylistSortingController.apply(to:)();
    }

    (*(v11 + 32))(v16, v13, v10);
    sub_100020674(&qword_10119A828, &qword_10118A3B0);
    v28 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    (*(v11 + 8))(v16, v10);
    v29 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v28;

    sub_1004E6028(v29);
    v30 = v38;
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v31 = static OS_dispatch_queue.main.getter();
    v45 = v31;
    v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v33 = v40;
    (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
    sub_100020674(&unk_1011A48F0, &qword_10119A820);
    sub_1006401FC(&qword_101184920, sub_100027010);
    v34 = v41;
    v35 = v42;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v33, &qword_101182140);

    (*(v39 + 8))(v30, v34);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A830, &unk_1011A48E0);
    v36 = v44;
    Publisher<>.sink(receiveValue:)();

    (*(v43 + 8))(v35, v36);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_100637F7C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v2 - 8);
  v52 = &v49 - v3;
  v4 = sub_10010FC20(&qword_10118C2B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - v6;
  v8 = sub_10010FC20(&unk_101188900);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_10010FC20(&unk_1011A4900);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_10010FC20(&qword_10119A838);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_10010FC20(&unk_1011A4910);
  v54 = *(v17 - 8);
  __chkstk_darwin(v17);
  v53 = &v49 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v31 = swift_unknownObjectWeakLoadStrong();

      if (v31)
      {
        v32 = enum case for MusicPropertySource.library(_:);
        v33 = type metadata accessor for MusicPropertySource();
        (*(*(v33 - 8) + 104))(v10, v32, v33);
        v34 = _s14descr101094081C15DataSourceErrorOMa();
        (*(*(v34 - 8) + 56))(v10, 0, 1, v34);
        sub_10028555C(v10);
        swift_unknownObjectRelease();
        return sub_1000095E8(v10, &unk_101188900);
      }
    }

    return result;
  }

  v20 = Strong;
  v50 = v7;
  v51 = v5;
  v21 = v4;
  sub_1000089F8(a1, v13, &unk_1011A4900);
  v22 = sub_10010FC20(&qword_10119A840);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v13, 1, v22) == 1)
  {

    sub_1000095E8(v13, &unk_1011A4900);
    (*(v54 + 56))(v16, 1, 1, v17);
LABEL_9:
    sub_1000095E8(v16, &qword_10119A838);
    goto LABEL_10;
  }

  v24 = MusicLibrarySectionedResponse.sections.getter();
  (*(v23 + 8))(v13, v22);
  if (*(v24 + 16))
  {
    v25 = v54;
    (*(v54 + 16))(v16, v24 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v17);
    v26 = 0;
    v27 = v21;
  }

  else
  {
    v26 = 1;
    v27 = v21;
    v25 = v54;
  }

  (*(v25 + 56))(v16, v26, 1, v17);
  v28 = (*(v25 + 48))(v16, 1, v17);
  v29 = v51;
  if (v28 == 1)
  {

    goto LABEL_9;
  }

  v35 = v53;
  (*(v25 + 32))(v53, v16, v17);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v36 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
    sub_10028555C(v10);
    swift_unknownObjectRelease();
    sub_1000095E8(v10, &unk_101188900);
  }

  v37 = v50;
  MusicLibrarySection.items.getter();
  v38 = v52;
  MusicLibrarySection.item.getter();
  v39 = type metadata accessor for Playlist();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  v40 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v38, v20 + v40);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v38, &unk_1011814D0);
  v41 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v29 + 24))(v20 + v41, v37, v27);
  swift_endAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = sub_10028434C();
    if (*(v43 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v45 = *(v43 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v47 = (*(v45 + 112))(ObjectType, v45);
    }

    else
    {
      v47 = 1;
    }

    v48 = v54;
    [v44 setHidden:v47 & 1];

    sub_100283D74();
    [*(v43 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

    swift_unknownObjectRelease();
  }

  else
  {

    v48 = v54;
  }

  (*(v29 + 8))(v50, v27);
  return (*(v48 + 8))(v35, v17);
}

uint64_t sub_10063875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  sub_10010FC20(&qword_101182140);
  v4[20] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011A4920);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_10119A848);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_1011A4930);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  sub_10010FC20(&unk_101188900);
  v4[30] = swift_task_alloc();
  v8 = type metadata accessor for Playlist();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v4[35] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118C2B0);
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_101181BE8);
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v11 = sub_10010FC20(&unk_1011A4990);
  v4[43] = v11;
  v4[44] = *(v11 - 8);
  v4[45] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_101181BF0);
  v4[46] = v12;
  v4[47] = *(v12 - 8);
  v4[48] = swift_task_alloc();
  v13 = type metadata accessor for MusicPropertySource();
  v4[49] = v13;
  v4[50] = *(v13 - 8);
  v4[51] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[57] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[58] = v15;
  v4[59] = v14;

  return _swift_task_switch(sub_100638CAC, v15, v14);
}

uint64_t sub_100638CAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    *(v0 + 488) = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist;
    *(v0 + 496) = sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v0 + 504) = v4;
    *(v4 + 16) = xmmword_100EBC6C0;
    *(v0 + 512) = sub_10010FC20(&unk_10118C1C0);
    *(v4 + 32) = static PartialMusicProperty<A>.entries.getter();
    *(v0 + 584) = enum case for MusicPropertySource.catalog(_:);
    v5 = *(v3 + 104);
    *(v0 + 520) = v5;
    *(v0 + 528) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v5(v2);
    v6 = swift_task_alloc();
    *(v0 + 536) = v6;
    v7 = sub_1006401FC(&unk_1011A47F0, &type metadata accessor for Playlist);
    *(v0 + 544) = v7;
    *v6 = v0;
    v6[1] = sub_100638FB8;
    v8 = *(v0 + 448);
    v9 = *(v0 + 408);
    v10 = *(v0 + 248);

    return MusicItem<>.with(_:preferredSource:)(v8, v4, v9, v10, &protocol witness table for Playlist, &protocol witness table for Playlist, v7);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100638FB8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[51];
  v5 = v2[50];
  v6 = v2[49];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[58];
    v8 = v3[59];
    v9 = sub_10063A7F8;
  }

  else
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[58];
    v8 = v3[59];
    v9 = sub_100639178;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100639178()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v4 + 56);
  *(v0 + 552) = v5;
  v5(v2, 0, 1, v3);
  sub_1000089F8(v2, v1, &unk_1011814D0);
  v6 = *(v4 + 48);
  *(v0 + 560) = v6;
  *(v0 + 568) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v3) == 1)
  {
    sub_1000095E8(*(v0 + 440), &unk_1011814D0);
    swift_getKeyPath();
    *(v0 + 112) = Playlist.id.getter();
    *(v0 + 120) = v7;
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6C0;
    *(v8 + 32) = static PartialMusicProperty<A>.entries.getter();
    MusicCatalogResourceRequest.properties.setter();
    v9 = swift_task_alloc();
    *(v0 + 576) = v9;
    *v9 = v0;
    v9[1] = sub_100639CC8;
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);

    return MusicCatalogResourceRequest.response()(v10, v11);
  }

  v12 = *(v0 + 440);

  sub_1000095E8(v12, &unk_1011814D0);
  v13 = *(v0 + 560);
  v14 = *(v0 + 480);
  v15 = *(v0 + 448);
  v16 = *(v0 + 424);
  v17 = *(v0 + 248);
  sub_1000089F8(v15, v16, &unk_1011814D0);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v16, v14 + v18);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v16, &unk_1011814D0);
  if (v13(v15, 1, v17))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
    goto LABEL_8;
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);
  (*(v24 + 16))(v21, *(v0 + 448), v23);
  Playlist.entries.getter();
  (*(v24 + 8))(v21, v23);
  if ((*(v20 + 48))(v22, 1, v19) == 1)
  {
LABEL_8:
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 280);
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if ((*(v26 + 48))(v27, 1, v25) != 1)
    {
      sub_1000095E8(*(v0 + 280), &qword_10119A808);
    }

    goto LABEL_11;
  }

  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
LABEL_11:
  v28 = *(v0 + 480);
  v29 = *(v0 + 304);
  v30 = *(v0 + 312);
  v31 = *(v0 + 288);
  v32 = *(v0 + 296);
  v33 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v32 + 40))(v28 + v33, v30, v31);
  swift_endAccess();
  (*(v32 + 16))(v29, v28 + v33, v31);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v32 + 8))(v29, v31);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v0 + 240);
    (*(v0 + 520))(v34, *(v0 + 584), *(v0 + 392));
    v35 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_10028555C(v34);
    swift_unknownObjectRelease();
    sub_1000095E8(v34, &unk_101188900);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = sub_10028434C();
    if (*(v37 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v39 = *(v37 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v41 = (*(v39 + 112))(ObjectType, v39);
    }

    else
    {
      v41 = 1;
    }

    [v38 setHidden:v41 & 1];

    sub_100283D74();
    [*(v37 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v42 = *(v0 + 560);
  v43 = *(v0 + 416);
  v44 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v43, &unk_1011814D0);
  v45 = v42(v43, 1, v44);
  v46 = *(v0 + 480);
  v47 = *(v0 + 448);
  v48 = *(v0 + 416);
  if (v45 == 1)
  {

    sub_1000095E8(v48, &unk_1011814D0);
  }

  else
  {
    v49 = *(v0 + 256);
    v50 = *(v0 + 264);
    v51 = *(v0 + 248);
    v52 = *(v0 + 232);
    v66 = *(v0 + 216);
    v69 = *(v0 + 200);
    v70 = *(v0 + 224);
    v68 = *(v0 + 192);
    v53 = *(v0 + 184);
    v65 = *(v0 + 176);
    v63 = *(v0 + 168);
    v64 = *(v0 + 208);
    v62 = *(v0 + 160);
    (*(v49 + 32))(v50, v48, v51);
    sub_10010FC20(&qword_101191FC0);
    v71 = v47;
    v54 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100EBC6B0;
    v67 = v51;
    (*(v49 + 16))(v55 + v54, v50, v51);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930);
    v56 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v57 = *(v46 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v46 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v56 | 0x8000000000000000;

    sub_1004E6028(v57);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v58 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v58;
    v59 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v59 - 8) + 56))(v62, 1, 1, v59);
    sub_100020674(&unk_1011A4950, &unk_1011A4920);
    sub_1006401FC(&qword_101184920, sub_100027010);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v62, &qword_101182140);

    (*(v65 + 8))(v53, v63);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848);
    Publisher<>.sink(receiveValue:)();

    (*(v69 + 8))(v64, v68);
    swift_beginAccess();
    v47 = v71;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v70 + 8))(v52, v66);
    (*(v49 + 8))(v50, v67);
  }

  sub_1000095E8(v47, &unk_1011814D0);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_100639CC8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_10063B348;
  }

  else
  {
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_100639DEC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100639DEC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 376);
  v68 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);

  MusicCatalogResourceResponse.items.getter();
  (*(v6 + 8))(v3, v5);
  sub_10034DCDC(v1);
  (*(v7 + 8))(v8, v9);
  (*(v2 + 8))(v68, v4);
  sub_10049DCC0(*(v0 + 432), *(v0 + 448));
  v10 = *(v0 + 560);
  v11 = *(v0 + 480);
  v12 = *(v0 + 448);
  v13 = *(v0 + 424);
  v14 = *(v0 + 248);
  sub_1000089F8(v12, v13, &unk_1011814D0);
  v15 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v13, v11 + v15);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v13, &unk_1011814D0);
  if (v10(v12, 1, v14))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
  }

  else
  {
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v18 = *(v0 + 272);
    v19 = *(v0 + 280);
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    (*(v21 + 16))(v18, *(v0 + 448), v20);
    Playlist.entries.getter();
    (*(v21 + 8))(v18, v20);
    if ((*(v17 + 48))(v19, 1, v16) != 1)
    {
      (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
      goto LABEL_7;
    }
  }

  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  v24 = *(v0 + 280);
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  if ((*(v23 + 48))(v24, 1, v22) != 1)
  {
    sub_1000095E8(*(v0 + 280), &qword_10119A808);
  }

LABEL_7:
  v25 = *(v0 + 480);
  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  v28 = *(v0 + 288);
  v29 = *(v0 + 296);
  v30 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v29 + 40))(v25 + v30, v27, v28);
  swift_endAccess();
  (*(v29 + 16))(v26, v25 + v30, v28);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v29 + 8))(v26, v28);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v0 + 240);
    (*(v0 + 520))(v31, *(v0 + 584), *(v0 + 392));
    v32 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    sub_10028555C(v31);
    swift_unknownObjectRelease();
    sub_1000095E8(v31, &unk_101188900);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = sub_10028434C();
    if (*(v34 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v36 = *(v34 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v38 = (*(v36 + 112))(ObjectType, v36);
    }

    else
    {
      v38 = 1;
    }

    [v35 setHidden:v38 & 1];

    sub_100283D74();
    [*(v34 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v39 = *(v0 + 560);
  v40 = *(v0 + 416);
  v41 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v40, &unk_1011814D0);
  v42 = v39(v40, 1, v41);
  v43 = *(v0 + 480);
  v44 = *(v0 + 448);
  v45 = *(v0 + 416);
  if (v42 == 1)
  {

    sub_1000095E8(v45, &unk_1011814D0);
  }

  else
  {
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 248);
    v49 = *(v0 + 232);
    v63 = *(v0 + 216);
    v66 = *(v0 + 200);
    v67 = *(v0 + 224);
    v65 = *(v0 + 192);
    v50 = *(v0 + 184);
    v62 = *(v0 + 176);
    v60 = *(v0 + 168);
    v61 = *(v0 + 208);
    v59 = *(v0 + 160);
    (*(v46 + 32))(v47, v45, v48);
    sub_10010FC20(&qword_101191FC0);
    v69 = v44;
    v51 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100EBC6B0;
    v64 = v48;
    (*(v46 + 16))(v52 + v51, v47, v48);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930);
    v53 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v54 = *(v43 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v43 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v53 | 0x8000000000000000;

    sub_1004E6028(v54);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v55 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v55;
    v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v56 - 8) + 56))(v59, 1, 1, v56);
    sub_100020674(&unk_1011A4950, &unk_1011A4920);
    sub_1006401FC(&qword_101184920, sub_100027010);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v59, &qword_101182140);

    (*(v62 + 8))(v50, v60);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848);
    Publisher<>.sink(receiveValue:)();

    (*(v66 + 8))(v61, v65);
    swift_beginAccess();
    v44 = v69;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v67 + 8))(v49, v63);
    (*(v46 + 8))(v47, v64);
  }

  sub_1000095E8(v44, &unk_1011814D0);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_10063A7F8()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v4 + 56);
  *(v0 + 552) = v5;
  v5(v2, 1, 1, v3);
  sub_1000089F8(v2, v1, &unk_1011814D0);
  v6 = *(v4 + 48);
  *(v0 + 560) = v6;
  *(v0 + 568) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v3) == 1)
  {
    sub_1000095E8(*(v0 + 440), &unk_1011814D0);
    swift_getKeyPath();
    *(v0 + 112) = Playlist.id.getter();
    *(v0 + 120) = v7;
    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100EBC6C0;
    *(v8 + 32) = static PartialMusicProperty<A>.entries.getter();
    MusicCatalogResourceRequest.properties.setter();
    v9 = swift_task_alloc();
    *(v0 + 576) = v9;
    *v9 = v0;
    v9[1] = sub_100639CC8;
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);

    return MusicCatalogResourceRequest.response()(v10, v11);
  }

  v12 = *(v0 + 440);

  sub_1000095E8(v12, &unk_1011814D0);
  v13 = *(v0 + 560);
  v14 = *(v0 + 480);
  v15 = *(v0 + 448);
  v16 = *(v0 + 424);
  v17 = *(v0 + 248);
  sub_1000089F8(v15, v16, &unk_1011814D0);
  v18 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v16, v14 + v18);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v16, &unk_1011814D0);
  if (v13(v15, 1, v17))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
    goto LABEL_8;
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 272);
  v22 = *(v0 + 280);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);
  (*(v24 + 16))(v21, *(v0 + 448), v23);
  Playlist.entries.getter();
  (*(v24 + 8))(v21, v23);
  if ((*(v20 + 48))(v22, 1, v19) == 1)
  {
LABEL_8:
    v25 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 280);
    type metadata accessor for Playlist.Entry();
    MusicItemCollection.init(arrayLiteral:)();
    if ((*(v26 + 48))(v27, 1, v25) != 1)
    {
      sub_1000095E8(*(v0 + 280), &qword_10119A808);
    }

    goto LABEL_11;
  }

  (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
LABEL_11:
  v28 = *(v0 + 480);
  v29 = *(v0 + 304);
  v30 = *(v0 + 312);
  v31 = *(v0 + 288);
  v32 = *(v0 + 296);
  v33 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v32 + 40))(v28 + v33, v30, v31);
  swift_endAccess();
  (*(v32 + 16))(v29, v28 + v33, v31);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v32 + 8))(v29, v31);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v0 + 240);
    (*(v0 + 520))(v34, *(v0 + 584), *(v0 + 392));
    v35 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_10028555C(v34);
    swift_unknownObjectRelease();
    sub_1000095E8(v34, &unk_101188900);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = sub_10028434C();
    if (*(v37 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v39 = *(v37 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v41 = (*(v39 + 112))(ObjectType, v39);
    }

    else
    {
      v41 = 1;
    }

    [v38 setHidden:v41 & 1];

    sub_100283D74();
    [*(v37 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v42 = *(v0 + 560);
  v43 = *(v0 + 416);
  v44 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v43, &unk_1011814D0);
  v45 = v42(v43, 1, v44);
  v46 = *(v0 + 480);
  v47 = *(v0 + 448);
  v48 = *(v0 + 416);
  if (v45 == 1)
  {

    sub_1000095E8(v48, &unk_1011814D0);
  }

  else
  {
    v49 = *(v0 + 256);
    v50 = *(v0 + 264);
    v51 = *(v0 + 248);
    v52 = *(v0 + 232);
    v66 = *(v0 + 216);
    v69 = *(v0 + 200);
    v70 = *(v0 + 224);
    v68 = *(v0 + 192);
    v53 = *(v0 + 184);
    v65 = *(v0 + 176);
    v63 = *(v0 + 168);
    v64 = *(v0 + 208);
    v62 = *(v0 + 160);
    (*(v49 + 32))(v50, v48, v51);
    sub_10010FC20(&qword_101191FC0);
    v71 = v47;
    v54 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100EBC6B0;
    v67 = v51;
    (*(v49 + 16))(v55 + v54, v50, v51);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930);
    v56 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v57 = *(v46 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v46 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v56 | 0x8000000000000000;

    sub_1004E6028(v57);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v58 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v58;
    v59 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v59 - 8) + 56))(v62, 1, 1, v59);
    sub_100020674(&unk_1011A4950, &unk_1011A4920);
    sub_1006401FC(&qword_101184920, sub_100027010);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v62, &qword_101182140);

    (*(v65 + 8))(v53, v63);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848);
    Publisher<>.sink(receiveValue:)();

    (*(v69 + 8))(v64, v68);
    swift_beginAccess();
    v47 = v71;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v70 + 8))(v52, v66);
    (*(v49 + 8))(v50, v67);
  }

  sub_1000095E8(v47, &unk_1011814D0);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_10063B348()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 432);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 248);

  (*(v4 + 8))(v3, v5);
  v1(v2, 1, 1, v6);
  sub_10049DCC0(*(v0 + 432), *(v0 + 448));
  v7 = *(v0 + 560);
  v8 = *(v0 + 480);
  v9 = *(v0 + 448);
  v10 = *(v0 + 424);
  v11 = *(v0 + 248);
  sub_1000089F8(v9, v10, &unk_1011814D0);
  v12 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1003E12C8(v10, v8 + v12);
  swift_endAccess();
  sub_100636F90();
  sub_1000095E8(v10, &unk_1011814D0);
  if (v7(v9, 1, v11))
  {
    (*(*(v0 + 296) + 56))(*(v0 + 280), 1, 1, *(v0 + 288));
  }

  else
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);
    v15 = *(v0 + 272);
    v16 = *(v0 + 280);
    v17 = *(v0 + 248);
    v18 = *(v0 + 256);
    (*(v18 + 16))(v15, *(v0 + 448), v17);
    Playlist.entries.getter();
    (*(v18 + 8))(v15, v17);
    if ((*(v14 + 48))(v16, 1, v13) != 1)
    {
      (*(*(v0 + 296) + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
      goto LABEL_7;
    }
  }

  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v21 = *(v0 + 280);
  type metadata accessor for Playlist.Entry();
  MusicItemCollection.init(arrayLiteral:)();
  if ((*(v20 + 48))(v21, 1, v19) != 1)
  {
    sub_1000095E8(*(v0 + 280), &qword_10119A808);
  }

LABEL_7:
  v22 = *(v0 + 480);
  v23 = *(v0 + 304);
  v24 = *(v0 + 312);
  v25 = *(v0 + 288);
  v26 = *(v0 + 296);
  v27 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v26 + 40))(v22 + v27, v24, v25);
  swift_endAccess();
  (*(v26 + 16))(v23, v22 + v27, v25);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v26 + 8))(v23, v25);
  if (*(v0 + 128) == *(v0 + 136) && swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v0 + 240);
    (*(v0 + 520))(v28, *(v0 + 584), *(v0 + 392));
    v29 = _s14descr101094081C15DataSourceErrorOMa();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    sub_10028555C(v28);
    swift_unknownObjectRelease();
    sub_1000095E8(v28, &unk_101188900);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = sub_10028434C();
    if (*(v31 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
    {
      v33 = *(v31 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
      ObjectType = swift_getObjectType();
      v35 = (*(v33 + 112))(ObjectType, v33);
    }

    else
    {
      v35 = 1;
    }

    [v32 setHidden:v35 & 1];

    sub_100283D74();
    [*(v31 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];
    swift_unknownObjectRelease();
  }

  v36 = *(v0 + 560);
  v37 = *(v0 + 416);
  v38 = *(v0 + 248);
  sub_1000089F8(*(v0 + 448), v37, &unk_1011814D0);
  v39 = v36(v37, 1, v38);
  v40 = *(v0 + 480);
  v41 = *(v0 + 448);
  v42 = *(v0 + 416);
  if (v39 == 1)
  {

    sub_1000095E8(v42, &unk_1011814D0);
  }

  else
  {
    v43 = *(v0 + 256);
    v44 = *(v0 + 264);
    v45 = *(v0 + 248);
    v46 = *(v0 + 232);
    v60 = *(v0 + 216);
    v63 = *(v0 + 200);
    v64 = *(v0 + 224);
    v62 = *(v0 + 192);
    v47 = *(v0 + 184);
    v59 = *(v0 + 176);
    v57 = *(v0 + 168);
    v58 = *(v0 + 208);
    v56 = *(v0 + 160);
    (*(v43 + 32))(v44, v42, v45);
    sub_10010FC20(&qword_101191FC0);
    v65 = v41;
    v48 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100EBC6B0;
    v61 = v45;
    (*(v43 + 16))(v49 + v48, v44, v45);
    sub_1006401FC(&unk_1011A4940, &type metadata accessor for Playlist);
    MusicLibraryMapping.Request.init(mappingItems:)();
    sub_100020674(&qword_10119A850, &unk_1011A4930);
    v50 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
    v51 = *(v40 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
    *(v40 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse) = v50 | 0x8000000000000000;

    sub_1004E6028(v51);
    dispatch thunk of MusicAutoupdatingResponse.$response.getter();
    sub_100027010();
    v52 = static OS_dispatch_queue.main.getter();
    *(v0 + 144) = v52;
    v53 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v53 - 8) + 56))(v56, 1, 1, v53);
    sub_100020674(&unk_1011A4950, &unk_1011A4920);
    sub_1006401FC(&qword_101184920, sub_100027010);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v56, &qword_101182140);

    (*(v59 + 8))(v47, v57);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_10119A858, &qword_10119A848);
    Publisher<>.sink(receiveValue:)();

    (*(v63 + 8))(v58, v62);
    swift_beginAccess();
    v41 = v65;
    AnyCancellable.store(in:)();
    swift_endAccess();

    (*(v64 + 8))(v46, v60);
    (*(v43 + 8))(v44, v61);
  }

  sub_1000095E8(v41, &unk_1011814D0);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10063BD24(uint64_t a1)
{
  v2 = type metadata accessor for MusicPropertySource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicLibrary.AddStatus();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v57 - v8;
  v9 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v9 - 8);
  v61 = &v57 - v10;
  v11 = sub_10010FC20(&qword_10118C2B0);
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v62 = &v57 - v12;
  v13 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - v14;
  v16 = sub_10010FC20(&qword_10119A860);
  __chkstk_darwin(v16 - 8);
  v18 = &v57 - v17;
  v19 = sub_10010FC20(&unk_1011A4960);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v57 - v21;
  v65 = type metadata accessor for Playlist();
  v70 = *(v65 - 8);
  __chkstk_darwin(v65);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v71 = &v57 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    v58 = v3;
    v59 = v2;
    sub_1000089F8(a1, v18, &qword_10119A860);
    v29 = sub_10010FC20(&unk_1011A4970);
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v18, 1, v29) == 1)
    {

      return sub_1000095E8(v18, &qword_10119A860);
    }

    else
    {
      v31 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v30 + 8))(v18, v29);
      if (*(v31 + 16))
      {
        (*(v20 + 16))(v22, v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v20 + 8))(v22, v19);
        v32 = v70;
        v33 = v71;
        v34 = v65;
        (*(v70 + 32))(v71, v24, v65);
        (*(v32 + 16))(v15, v33, v34);
        (*(v32 + 56))(v15, 0, 1, v34);
        v35 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
        swift_beginAccess();
        sub_1003E12C8(v15, v28 + v35);
        swift_endAccess();
        sub_100636F90();
        sub_1000095E8(v15, &unk_1011814D0);
        v36 = v61;
        Playlist.entries.getter();
        v38 = v63;
        v37 = v64;
        v39 = *(v63 + 48);
        if (v39(v36, 1, v64) == 1)
        {
          type metadata accessor for Playlist.Entry();
          v40 = v62;
          MusicItemCollection.init(arrayLiteral:)();
          v41 = v39(v36, 1, v37);
          v43 = v58;
          v42 = v59;
          if (v41 != 1)
          {
            sub_1000095E8(v36, &qword_10119A808);
          }
        }

        else
        {
          v40 = v62;
          (*(v38 + 32))(v62, v36, v37);
          v43 = v58;
          v42 = v59;
        }

        v44 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
        swift_beginAccess();
        (*(v38 + 40))(v28 + v44, v40, v37);
        swift_endAccess();
        type metadata accessor for MusicLibrary();
        static MusicLibrary.shared.getter();
        MusicLibrary.state<A>(for:)();

        v45 = v66;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v47 = v67;
        v46 = v68;
        v48 = v69;
        (*(v68 + 104))(v67, enum case for MusicLibrary.AddStatus.added(_:), v69);
        LOBYTE(v44) = static MusicLibrary.AddStatus.== infix(_:_:)();
        v49 = *(v46 + 8);
        v49(v47, v48);
        v49(v45, v48);
        if (v44)
        {
          v50 = v60;
          (*(v43 + 104))(v60, enum case for MusicPropertySource.library(_:), v42);
          sub_10063759C(v50);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v52 = Strong;
          v53 = sub_10028434C();
          if (*(v52 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_canDisplayLoadingError) == 1)
          {
            v54 = *(v52 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_dataSource + 8);
            ObjectType = swift_getObjectType();
            v56 = (*(v54 + 112))(ObjectType, v54);
          }

          else
          {
            v56 = 1;
          }

          [v53 setHidden:v56 & 1];

          sub_100283D74();
          [*(v52 + OBJC_IVAR____TtC5Music27MCDItemDetailViewController_tableView) reloadData];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return (*(v70 + 8))(v71, v34);
      }

      else
      {
      }
    }
  }

  return result;
}

BOOL sub_10063C604()
{
  v1 = sub_10010FC20(&qword_10118C2B0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v2 + 8))(v4, v1);
  return v7[2] != v7[1];
}

uint64_t sub_10063C778@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118A3B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = *(v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
  if (v7 < 0)
  {
    v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {

    dispatch thunk of MusicAutoupdatingResponse.request.getter();
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    v15[3] = v3;
    v15[4] = sub_100020674(&qword_1011831B8, &qword_10118A3B0);
    v8 = sub_10001C8B8(v15);
    (*(v4 + 16))(v8, v6, v3);
    v14 = 0;
    memset(&v13[16], 0, 32);
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    (*(v4 + 8))(v6, v3);
    sub_1004E6028(v7);
    v11 = type metadata accessor for MusicPlaybackIntentDescriptor();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_10063CA10()
{
  v1 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v1 - 8);
  v83 = &v72 - v2;
  v3 = type metadata accessor for MusicFavoriteStatus();
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v80 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v72 - v6;
  v7 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v7);
  v78 = &v72 - v8;
  v77 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v9 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v72 - v12;
  v13 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v72 - v14;
  v84 = type metadata accessor for Playlist();
  v16 = *(v84 - 8);
  __chkstk_darwin(v84);
  v85 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel(0);
  v18 = swift_allocObject();
  if (qword_10117F408 != -1)
  {
    swift_once();
  }

  v19 = sub_1000060E4(v7, qword_101187268);
  sub_1000089F8(v19, v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artwork, &unk_101188920);
  if (qword_10117F410 != -1)
  {
    swift_once();
  }

  v20 = sub_10010FC20(&qword_101187768);
  v21 = sub_1000060E4(v20, qword_101187280);
  sub_1000089F8(v21, v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__artworkShape, &qword_101187768);
  v22 = (v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__title);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__titleAccessory);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__subtitle);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable;
  *(v18 + OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel__isPlayable) = 0;
  v76 = OBJC_IVAR____TtCC5Music44MusicCPUIMediaContainerTableHeaderFooterView9ViewModel___observationRegistrar;
  ObservationRegistrar.init()();
  v26 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v0 + v26, v15, &unk_1011814D0);
  v27 = *(v16 + 48);
  v28 = v84;
  v29 = v27(v15, 1, v84);
  v75 = v16;
  if (v29 == 1)
  {
    v30 = v0;
    (*(v16 + 16))(v85, v0 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v28);
    v31 = v27(v15, 1, v28);
    if (v31 != 1)
    {
      v31 = sub_1000095E8(v15, &unk_1011814D0);
    }
  }

  else
  {
    v30 = v0;
    v31 = (*(v16 + 32))(v85, v15, v28);
  }

  v32 = v73;
  (*(**(v30 + 16) + 256))(v31);
  v33 = v74;
  v34 = v77;
  (*(v9 + 104))(v74, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v77);
  v35 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)() & 1;
  v36 = *(v9 + 8);
  v36(v33, v34);
  v36(v32, v34);
  if (v35 == *(v18 + v25))
  {
    v77 = 0;
    *(v18 + v25) = v35;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v72 - 2) = v18;
    *(&v72 - 8) = v35;
    v90 = v18;
    sub_1006401FC(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v77 = 0;
  }

  v38 = v78;
  Playlist.artwork.getter();
  sub_100261718(v38);
  v39 = Playlist.name.getter();
  sub_100261EE0(v39, v40);
  v41 = v79;
  Playlist.favoriteStatus.getter();
  v43 = v80;
  v42 = v81;
  v44 = v82;
  (*(v81 + 104))(v80, enum case for MusicFavoriteStatus.favorited(_:), v82);
  v45 = static MusicFavoriteStatus.== infix(_:_:)();
  v46 = *(v42 + 8);
  v46(v43, v44);
  v46(v41, v44);
  if (v45)
  {
    v47 = 0x6C69662E72617473;
  }

  else
  {
    v47 = 0;
  }

  if (v45)
  {
    v48 = 0xE90000000000006CLL;
  }

  else
  {
    v48 = 0;
  }

  v49 = swift_getKeyPath();
  __chkstk_darwin(v49);
  *(&v72 - 4) = v18;
  *(&v72 - 3) = v47;
  *(&v72 - 2) = v48;
  v90 = v18;
  sub_1006401FC(&unk_10118F210, type metadata accessor for MusicCPUIMediaContainerTableHeaderFooterView.ViewModel);
  v50 = v77;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v82 = v50;

  v86 = Playlist.curatorName.getter();
  v87 = v51;
  v52 = v83;
  Playlist.lastModifiedDate.getter();
  v53 = type metadata accessor for Date();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_1000095E8(v52, &qword_101188C20);
    v88 = 0;
    v89 = 0;
  }

  else
  {
    v88 = Date.lastUpdatedDateString.getter();
    v89 = v55;
    (*(v54 + 8))(v52, v53);
  }

  v56 = 0;
  v57 = _swiftEmptyArrayStorage;
  v58 = v75;
LABEL_22:
  v59 = &v87 + 2 * v56;
  while (++v56 != 3)
  {
    v60 = v59 + 2;
    v61 = *v59;
    v59 += 2;
    if (v61)
    {
      v62 = *(v60 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_100498B7C(0, *(v57 + 2) + 1, 1, v57);
      }

      v64 = *(v57 + 2);
      v63 = *(v57 + 3);
      if (v64 >= v63 >> 1)
      {
        v57 = sub_100498B7C((v63 > 1), v64 + 1, 1, v57);
      }

      *(v57 + 2) = v64 + 1;
      v65 = &v57[16 * v64];
      *(v65 + 4) = v62;
      *(v65 + 5) = v61;
      goto LABEL_22;
    }
  }

  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  v90 = v57;
  sub_10010FC20(&qword_101183BC8);
  sub_100020674(&unk_101183BD0, &qword_101183BC8);
  v66 = BidirectionalCollection<>.joined(separator:)();
  v68 = v67;

  v69 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v69 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (!v69)
  {

    v66 = 0;
    v68 = 0;
  }

  v70 = v84;
  sub_100262364(v66, v68);
  (*(v58 + 8))(v85, v70);
  return v18;
}

uint64_t sub_10063D4E8(void (*a1)(uint64_t *, char *, uint64_t))
{
  v2 = v1;
  v193 = a1;
  v189 = type metadata accessor for Logger();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v163 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v194 = &v152 - v5;
  __chkstk_darwin(v6);
  v181 = &v152 - v7;
  v185 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v174 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v186 = &v152 - v10;
  v11 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v11 - 8);
  v169 = &v152 - v12;
  v164 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v164);
  v165 = &v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  v166 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v168 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = v15;
  __chkstk_darwin(v16);
  v170 = &v152 - v17;
  v161 = type metadata accessor for MusicPropertySource();
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v157 = &v152 - v20;
  v21 = sub_10010FC20(&unk_101188910);
  __chkstk_darwin(v21 - 8);
  v160 = &v152 - v22;
  v23 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v23 - 8);
  v155 = &v152 - v24;
  v173 = type metadata accessor for Playlist();
  v156 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_10010FC20(&qword_10118A3B0);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v152 - v26;
  v180 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v171 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v152 - v29;
  v190 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v191 = *(v190 - 8);
  __chkstk_darwin(v190);
  v183 = &v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v192 = &v152 - v32;
  v33 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v33 - 8);
  v35 = &v152 - v34;
  v36 = type metadata accessor for GenericMusicItem();
  v196 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10010FC20(&qword_10118C2B0);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v152 - v41;
  v43 = type metadata accessor for Playlist.Entry();
  v195 = *(v43 - 8);
  __chkstk_darwin(v43);
  v162 = &v152 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v182 = &v152 - v46;
  __chkstk_darwin(v47);
  v49 = &v152 - v48;
  v50 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  v51 = *(v40 + 16);
  v187 = v2;
  v51(v42, v2 + v50, v39);
  IndexPath.row.getter();
  MusicItemCollection.subscript.getter();
  (*(v40 + 8))(v42, v39);
  sub_100635948(v35);
  v52 = v196;
  if ((*(v196 + 48))(v35, 1, v36) == 1)
  {
    sub_1000095E8(v35, &unk_101189DA0);
    Logger.init(subsystem:category:)();
    v53 = v195;
    v54 = v182;
    (*(v195 + 16))(v182, v49, v43);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v57 = v43;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v154 = v49;
      v60 = v59;
      *&v203 = v59;
      *v58 = 136446210;
      sub_1006401FC(&qword_10119A818, &type metadata accessor for Playlist.Entry);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v64 = *(v53 + 8);
      v64(v54, v57);
      v65 = sub_1000105AC(v61, v63, &v203);

      *(v58 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "Couldn't get generic music item from item: %{public}s", v58, 0xCu);
      sub_10000959C(v60);

      (*(v188 + 8))(v194, v189);
      return (v64)(v154, v57);
    }

    else
    {

      v77 = *(v53 + 8);
      v77(v54, v43);
      (*(v188 + 8))(v194, v189);
      return (v77)(v49, v43);
    }
  }

  else
  {
    v67 = v43;
    (*(v52 + 32))(v38, v35, v36);
    v68 = v192;
    sub_100538C48(v38, v192);
    v69 = v191;
    v70 = v183;
    v71 = v190;
    (*(v191 + 16))(v183, v68, v190);
    v72 = (*(v69 + 88))(v70, v71);
    v73 = v38;
    if (v72 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
    {
      (*(v69 + 96))(v70, v71);
      v74 = v186;
      (*(v184 + 32))(v186, v70, v185);
      Strong = swift_unknownObjectWeakLoadStrong();
      v153 = v67;
      if (Strong)
      {
        v76 = [Strong traitCollection];
        v74 = v186;
        swift_unknownObjectRelease();
      }

      else
      {
        v76 = 0;
      }

      v88 = v195;
      sub_1005384B8(v76, &v197);

      v89 = v185;
      if (v201)
      {
        v203 = v197;
        v204 = v198;
        v205 = v199;
        v206 = v200;
        v207 = v201;
        v208 = v202;
        v90 = Alert.uiAlertController.getter();
        sub_1000095E8(&v197, &qword_10118BFD0);
        v91 = swift_unknownObjectWeakLoadStrong();
        if (v91)
        {
          [v91 presentViewController:v90 animated:1 completion:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v107 = v191;
        (*(v184 + 8))(v186, v89);
        (*(v107 + 8))(v192, v71);
        (*(v196 + 8))(v38, v36);
      }

      else
      {
        v194 = v38;
        Logger.init(subsystem:category:)();
        v92 = v184;
        v93 = v174;
        (*(v184 + 16))(v174, v74, v89);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v152 = v36;
          v97 = v96;
          v98 = swift_slowAlloc();
          *&v203 = v98;
          *v97 = 136446210;
          LODWORD(v193) = v95;
          v99 = MusicPlayer.PlayabilityStatus.UnplayableReason.debugDescription.getter();
          v100 = v92;
          v102 = v101;
          v154 = v49;
          v103 = *(v100 + 8);
          v104 = v93;
          v105 = v185;
          v103(v104, v185);
          v106 = sub_1000105AC(v99, v102, &v203);

          *(v97 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v94, v193, "Couldn't create alert controller for reason: %{public}s", v97, 0xCu);
          sub_10000959C(v98);

          (*(v188 + 8))(v181, v189);
          v103(v74, v105);
          (*(v191 + 8))(v192, v190);
          (*(v196 + 8))(v194, v152);
          return (*(v88 + 8))(v154, v153);
        }

        v117 = *(v92 + 8);
        v117(v93, v89);
        (*(v188 + 8))(v181, v189);
        v117(v74, v89);
        (*(v191 + 8))(v192, v71);
        (*(v196 + 8))(v194, v36);
      }

      return (*(v88 + 8))(v49, v153);
    }

    else if (v72 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      v78 = *(v187 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse);
      v152 = v36;
      v154 = v49;
      v153 = v67;
      if (v78 < 0)
      {
        v108 = v187;
        v194 = v38;
        v109 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
        swift_beginAccess();
        v110 = v155;
        sub_1000089F8(v108 + v109, v155, &unk_1011814D0);
        v111 = v156;
        v112 = *(v156 + 48);
        v113 = v173;
        if (v112(v110, 1, v173) == 1)
        {
          v114 = v172;
          (*(v111 + 16))(v172, v108 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v113);
          v115 = v112(v110, 1, v113);
          v116 = v195;
          if (v115 != 1)
          {
            sub_1000095E8(v110, &unk_1011814D0);
          }
        }

        else
        {
          v114 = v172;
          (*(v111 + 32))(v172, v110, v113);
          v116 = v195;
        }

        *(&v204 + 1) = v113;
        *&v205 = &protocol witness table for Playlist;
        v123 = sub_10001C8B8(&v203);
        (*(v111 + 16))(v123, v114, v113);
        *(&v198 + 1) = v67;
        *&v199 = &protocol witness table for Playlist.Entry;
        v124 = sub_10001C8B8(&v197);
        v125 = v67;
        v85 = v154;
        v193 = *(v116 + 16);
        v193(v124, v154, v125);
        v126 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
        v122 = v187;
        swift_beginAccess();
        v127 = v159;
        v128 = v157;
        v129 = v161;
        (*(v159 + 16))(v157, v122 + v126, v161);
        v130 = v158;
        (*(v127 + 104))(v158, enum case for MusicPropertySource.catalog(_:), v129);
        LOBYTE(v126) = static MusicPropertySource.== infix(_:_:)();
        v131 = *(v127 + 8);
        v131(v130, v129);
        v131(v128, v129);
        v132 = type metadata accessor for MusicPlaybackSource();
        v133 = *(v132 - 8);
        v134 = &enum case for MusicPlaybackSource.catalog(_:);
        if ((v126 & 1) == 0)
        {
          v134 = &enum case for MusicPlaybackSource.library(_:);
        }

        v135 = v160;
        (*(*(v132 - 8) + 104))(v160, *v134, v132);
        (*(v133 + 56))(v135, 0, 1, v132);
        v119 = v178;
        MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
        (*(v111 + 8))(v172, v173);
        v120 = v180;
        v118 = v179;
        v121 = v153;
      }

      else
      {

        v79 = v175;
        dispatch thunk of MusicAutoupdatingResponse.request.getter();
        v80 = v177;
        MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
        *(&v204 + 1) = v80;
        *&v205 = sub_100020674(&qword_1011831B8, &qword_10118A3B0);
        v81 = sub_10001C8B8(&v203);
        v82 = v176;
        (*(v176 + 16))(v81, v79, v80);
        v83 = v67;
        *(&v198 + 1) = v67;
        *&v199 = &protocol witness table for Playlist.Entry;
        v84 = sub_10001C8B8(&v197);
        v85 = v49;
        v193 = *(v195 + 16);
        v193(v84, v49, v83);
        v86 = v171;
        MusicPlaybackIntentDescriptor.init(request:startingAt:)();
        v194 = v73;
        (*(v82 + 8))(v79, v80);
        sub_1004E6028(v78);
        v118 = v179;
        v119 = v178;
        v120 = v180;
        (*(v179 + 32))(v178, v86, v180);
        v121 = v153;
        v122 = v187;
      }

      v136 = *(v118 + 16);
      v137 = v165;
      v136(v165, v119, v120);
      swift_storeEnumTagMultiPayload();
      *(&v204 + 1) = v121;
      *&v205 = &protocol witness table for Playlist.Entry;
      v138 = sub_10001C8B8(&v203);
      v193(v138, v85, v121);
      v139 = swift_unknownObjectWeakLoadStrong();
      *(&v198 + 1) = _s10DataSourceCMa_0();
      *&v199 = &off_1010B8358;
      *&v197 = v122;

      v140 = v170;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v137, &v203, 3, 1, 0, 1, 0, 1, v170, v139, &v197);
      v141 = type metadata accessor for TaskPriority();
      v142 = v169;
      (*(*(v141 - 8) + 56))(v169, 1, 1, v141);
      v143 = v168;
      sub_1001DFCE4(v140, v168);
      type metadata accessor for MainActor();
      v144 = static MainActor.shared.getter();
      v145 = (*(v166 + 80) + 32) & ~*(v166 + 80);
      v146 = swift_allocObject();
      *(v146 + 16) = v144;
      *(v146 + 24) = &protocol witness table for MainActor;
      sub_1001DFD58(v143, v146 + v145);
      sub_1001F4F78(0, 0, v142, &unk_100ED91E8, v146);

      v147 = swift_unknownObjectWeakLoadStrong();
      v148 = v196;
      v149 = v195;
      if (v147)
      {
        v150 = [v147 navigationController];
        if (v150)
        {
          v151 = v150;
          type metadata accessor for CarPlayRootNavigationController();
          if (swift_dynamicCastClass())
          {
            sub_1001D3268(0, 1);
          }

          swift_unknownObjectRelease();

          v148 = v196;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_100188CDC(v140);
      (*(v179 + 8))(v178, v180);
      (*(v191 + 8))(v192, v190);
      (*(v148 + 8))(v194, v152);
      return (*(v149 + 8))(v154, v121);
    }

    else
    {
      v87 = *(v69 + 8);
      v87(v68, v71);
      (*(v52 + 8))(v38, v36);
      (*(v195 + 8))(v49, v67);
      return (v87)(v70, v71);
    }
  }
}

uint64_t sub_10063F260()
{

  swift_unknownObjectWeakDestroy();
  sub_1000D8F2C(v0 + 32);
  v1 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist;
  v2 = type metadata accessor for Playlist();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000095E8(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist, &unk_1011814D0);

  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  v4 = type metadata accessor for MusicPropertySource();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1004E6028(*(v0 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_autoupdatingResponse));

  v5 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  v6 = sub_10010FC20(&qword_10118C2B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_10063F3B4()
{
  sub_10063F260();

  return swift_deallocClassInstance();
}

uint64_t _s10DataSourceCMa_0()
{
  result = qword_10119A5E8;
  if (!qword_10119A5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10063F460()
{
  type metadata accessor for Playlist();
  if (v0 <= 0x3F)
  {
    sub_100039144();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MusicPropertySource();
      if (v2 <= 0x3F)
      {
        sub_10063F5F8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10063F5F8()
{
  if (!qword_10119A5F8)
  {
    type metadata accessor for Playlist.Entry();
    v0 = type metadata accessor for MusicItemCollection();
    if (!v1)
    {
      atomic_store(v0, &qword_10119A5F8);
    }
  }
}

uint64_t sub_10063F658()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118C2B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_data;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v7 = dispatch thunk of Collection.distance(from:to:)();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10063F7E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_loadedPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_1011814D0);
  v7 = type metadata accessor for Playlist();
  a1[3] = v7;
  a1[4] = &off_10119A530;
  v8 = sub_10001C8B8(a1);
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v7) != 1)
  {
    return (*(v9 + 32))(v8, v5, v7);
  }

  (*(v9 + 16))(v8, v1 + OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_playlist, v7);
  result = (v10)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000095E8(v5, &unk_1011814D0);
  }

  return result;
}

uint64_t sub_10063F99C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE5MusicV8MusicKit8Playlist10DataSource_preferredSource;
  swift_beginAccess();
  v4 = type metadata accessor for MusicPropertySource();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10063FA2C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  sub_100636E80(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_10063FAA8(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_10063FAE8()
{
  v4 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 0x203A6D65746928;
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  type metadata accessor for Playlist();
  sub_1006401FC(&qword_101184200, &type metadata accessor for Playlist);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return v4;
}

id sub_10063FBE8(void *a1, int a2, int a3)
{
  v32 = a3;
  v34 = a2;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &ObjectType - v8;
  v10 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v10 - 8);
  v12 = &ObjectType - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  __chkstk_darwin(v20);
  v22 = &ObjectType - v21;
  v35 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1000095E8(v12, &unk_1011814D0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
    ObjectType = swift_getObjectType();
    v24 = *(v14 + 16);
    v24(v19, v22, v13);
    v25 = &enum case for MusicPropertySource.catalog(_:);
    if ((v32 & 1) == 0)
    {
      v25 = &enum case for MusicPropertySource.library(_:);
    }

    (*(v5 + 104))(v9, *v25, v4);
    v24(v16, v19, v13);
    v26 = v33;
    (*(v5 + 16))(v33, v9, v4);
    _s10DataSourceCMa_0();
    v27 = swift_allocObject();
    sub_1006365C8(v16, v34 & 1, v26);
    v28 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v29 = sub_10079349C(v27, v28);

    (*(v5 + 8))(v9, v4);
    v30 = *(v14 + 8);
    v30(v19, v13);
    v30(v22, v13);
    swift_deallocPartialClassInstance();
    return v29;
  }
}

uint64_t sub_100640048(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_100640138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10063875C(a1, v4, v5, v6);
}

uint64_t sub_1006401FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100640260@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of StationFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1006402A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for Artwork.ImageFormat();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for Artwork.CropStyle();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  sub_10010FC20(&unk_1011838C0);
  v4[27] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118C190);
  v4[28] = v9;
  v4[29] = *(v9 - 8);
  v4[30] = swift_task_alloc();
  v10 = type metadata accessor for Station();
  v4[31] = v10;
  v4[32] = *(v10 - 8);
  v4[33] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181BA8);
  v4[34] = v11;
  v4[35] = *(v11 - 8);
  v4[36] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_101181BB0);
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v4[40] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_101181BE8);
  v4[41] = v13;
  v4[42] = *(v13 - 8);
  v4[43] = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  v4[44] = v14;
  v4[45] = *(v14 - 8);
  v4[46] = swift_task_alloc();
  v15 = sub_10010FC20(&unk_1011A4990);
  v4[47] = v15;
  v4[48] = *(v15 - 8);
  v4[49] = swift_task_alloc();
  v16 = sub_10010FC20(&qword_101181BF0);
  v4[50] = v16;
  v4[51] = *(v16 - 8);
  v4[52] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v4[53] = swift_task_alloc();
  v17 = sub_10010FC20(&qword_10118D1A0);
  v4[54] = v17;
  v4[55] = *(v17 - 8);
  v4[56] = swift_task_alloc();
  v18 = type metadata accessor for Song();
  v4[57] = v18;
  v4[58] = *(v18 - 8);
  v4[59] = swift_task_alloc();
  v19 = sub_10010FC20(&unk_10118A320);
  v4[60] = v19;
  v4[61] = *(v19 - 8);
  v4[62] = swift_task_alloc();
  v20 = sub_10010FC20(&unk_10118A310);
  v4[63] = v20;
  v4[64] = *(v20 - 8);
  v4[65] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v4[66] = swift_task_alloc();
  v21 = sub_10010FC20(&qword_1011815C0);
  v4[67] = v21;
  v4[68] = *(v21 - 8);
  v4[69] = swift_task_alloc();
  v22 = type metadata accessor for Album();
  v4[70] = v22;
  v4[71] = *(v22 - 8);
  v4[72] = swift_task_alloc();
  v23 = sub_10010FC20(&qword_101181C50);
  v4[73] = v23;
  v4[74] = *(v23 - 8);
  v4[75] = swift_task_alloc();
  v24 = sub_10010FC20(&unk_101192970);
  v4[76] = v24;
  v4[77] = *(v24 - 8);
  v4[78] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v25 = type metadata accessor for Logger();
  v4[81] = v25;
  v4[82] = *(v25 - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = type metadata accessor for MainActor();
  v4[89] = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[90] = v27;
  v4[91] = v26;

  return _swift_task_switch(sub_100640CBC, v27, v26);
}

uint64_t sub_100640CBC()
{
  if ([*(v0 + 96) hasLoadedValuesForPropertySet:*(v0 + 112)])
  {
    v1 = *(v0 + 96);
    v2 = swift_task_alloc();
    *(v0 + 904) = v2;
    *v2 = v0;
    v2[1] = sub_1006440E8;
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);

    return GroupActivitiesManager.Activity.Metadata.init(modelObject:)(v3, v4);
  }

  v6 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v6, 1u);
  v7 = *(v0 + 96);
  if (v8)
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);

    v11 = [objc_allocWithZone(MPModelLibraryRequest) init];
    *(v0 + 736) = v11;
    sub_10010FC20(&qword_101183990);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBC6C0;
    *(v12 + 32) = [v7 identifiers];
    sub_1006470B8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAllowedItemIdentifiers:isa];

    v14 = v11;
    v15 = String._bridgeToObjectiveC()();
    [v14 setLabel:v15];

    [v14 setItemKind:v10];
    [v14 setItemProperties:v9];

    v16 = static MainActor.shared.getter();
    *(v0 + 744) = v16;
    v17 = swift_task_alloc();
    *(v0 + 752) = v17;
    *(v17 + 16) = v14;
    v18 = swift_task_alloc();
    *(v0 + 760) = v18;
    v19 = sub_10010FC20(&qword_10119A9C0);
    *v18 = v0;
    v18[1] = sub_100641748;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, v16, &protocol witness table for MainActor, 0xD000000000000026, 0x8000000100E52BD0, sub_100647104, v17, v19);
  }

  v20 = *(v0 + 696);
  v21 = *(v0 + 656);
  v22 = *(v0 + 648);
  v23 = Logger.groupActivities.unsafeMutableAddressor();
  *(v0 + 784) = v23;
  v24 = *(v21 + 16);
  *(v0 + 792) = v24;
  *(v0 + 800) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v20, v23, v22);
  v25 = v7;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 96);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v28;
    *v30 = v28;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetching metadata for modelObject=%{public}@", v29, 0xCu);
    sub_1000095E8(v30, &unk_101183D70);
  }

  v32 = *(v0 + 696);
  v33 = *(v0 + 656);
  v34 = *(v0 + 648);

  v35 = *(v33 + 8);
  *(v0 + 808) = v35;
  *(v0 + 816) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v32, v34);
  v36 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v36, 1u);
  if (v37)
  {
    v38 = MusicItemID.init(rawValue:)();
    v40 = v39;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 64) = v38;
      *(v0 + 72) = v40;
      sub_100647070(&qword_101192880, &type metadata accessor for Album);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v41 = swift_task_alloc();
      *(v0 + 824) = v41;
      *v41 = v0;
      v41[1] = sub_100641EF4;
      v42 = *(v0 + 608);
      v43 = *(v0 + 600);
LABEL_24:

      return MusicCatalogResourceRequest.response()(v43, v42);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 48) = v38;
      *(v0 + 56) = v40;
      sub_100647070(&unk_1011929D0, &type metadata accessor for Song);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v48 = swift_task_alloc();
      *(v0 + 840) = v48;
      *v48 = v0;
      v48[1] = sub_10064263C;
      v43 = *(v0 + 496);
      v42 = *(v0 + 504);
      goto LABEL_24;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 32) = v38;
      *(v0 + 40) = v40;
      sub_100647070(&unk_1011A47F0, &type metadata accessor for Playlist);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v49 = swift_task_alloc();
      *(v0 + 856) = v49;
      *v49 = v0;
      v49[1] = sub_100642D6C;
      v43 = *(v0 + 392);
      v42 = *(v0 + 400);
      goto LABEL_24;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_getKeyPath();
      *(v0 + 16) = v38;
      *(v0 + 24) = v40;
      sub_100647070(&qword_101181CD0, &type metadata accessor for Station);
      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v50 = swift_task_alloc();
      *(v0 + 872) = v50;
      *v50 = v0;
      v50[1] = sub_1006434B4;
      v43 = *(v0 + 288);
      v42 = *(v0 + 296);
      goto LABEL_24;
    }

    v51 = *(v0 + 192);
    v52 = *(v0 + 200);
    v53 = *(v0 + 88);

    (*(v52 + 56))(v53, 1, 1, v51);
  }

  else
  {
    v44 = *(v0 + 192);
    v45 = *(v0 + 200);
    v46 = *(v0 + 88);

    (*(v45 + 56))(v46, 1, 1, v44);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_100641748()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_1006418A8, v3, v2);
}

uint64_t sub_1006418A8()
{
  v1 = *(v0 + 80);
  *(v0 + 768) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 776) = v3;
    *v3 = v0;
    v3[1] = sub_100641B88;
    v4 = *(v0 + 88);

    return GroupActivitiesManager.Activity.Metadata.init(modelObject:)(v4, v2);
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 200);
    v8 = *(v0 + 88);

    (*(v7 + 56))(v8, 1, 1, v6);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100641B88()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_100641CA8, v3, v2);
}

uint64_t sub_100641CA8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 88);

  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100641EF4()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100644440;
  }

  else
  {
    v5 = sub_100642030;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100642030()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v1 + 48))(v6, 1, v2);
  v55 = v0[78];
  v8 = v0[77];
  v9 = v0[76];
  v10 = v0[75];
  v11 = v0[74];
  v12 = v0[73];
  if (v7 != 1)
  {
    v17 = v0[72];
    v18 = v0[71];
    v19 = v0[70];
    (*(v18 + 32))(v17, v0[66], v19);
    v20 = Album.title.getter();
    v51 = v21;
    v52 = v20;
    v22 = Album.artistName.getter();
    v53 = v23;
    v54 = v22;
    Album.artwork.getter();
    (*(v18 + 8))(v17, v19);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v55, v9);
    v24 = v0[80];
    v25 = v0[79];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v26);

    *v26 = v52;
    v26[1] = v51;

    v26[2] = v54;
    v26[3] = v53;
    sub_100646F40(v24, v25);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {
      v29 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920);

      sub_1000095E8(v29, &unk_101188920);
      v31 = v0[25];
      v30 = v0[26];
      v32 = v0[24];
      v33 = v0[11];
      sub_100646FB0(v30, v33);
      (*(v31 + 56))(v33, 0, 1, v32);
      sub_100647014(v30);
      goto LABEL_5;
    }

    v36 = v0[26];
    v37 = v0[24];
    v38 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v42 = (v36 + *(v37 + 32));
    v43 = *v42;
    if ((*v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {
        v44 = v42[1];
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -9.22337204e18)
          {
            if (v44 < 9.22337204e18)
            {
              v45 = v43;
              v47 = v0[16];
              v46 = v0[17];
              v48 = v0[15];
              v49 = v44;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v47 + 104))(v46, enum case for Artwork.ImageFormat.jpeg(_:), v48);
              v50 = swift_task_alloc();
              v0[111] = v50;
              *v50 = v0;
              v50[1] = sub_100643BFC;
              v40 = v0[20];
              v41 = v0[17];
              v38 = v45;
              v39 = v49;

              return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
            }

LABEL_22:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  v13 = v0[66];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v55, v9);
  sub_1000095E8(v13, &unk_101184730);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_5:

  v34 = v0[1];

  return v34();
}

uint64_t sub_10064263C()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_1006447B4;
  }

  else
  {
    v5 = sub_100642778;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100642778()
{
  v1 = v0[57];
  v2 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v2 + 48))(v6, 1, v1);
  v55 = v0[65];
  v8 = v0[63];
  v9 = v0[64];
  v11 = v0[61];
  v10 = v0[62];
  v12 = v0[60];
  if (v7 != 1)
  {
    v17 = v0[58];
    v18 = v0[59];
    v19 = v0[57];
    (*(v17 + 32))(v18, v0[53], v19);
    v20 = Song.title.getter();
    v51 = v21;
    v52 = v20;
    v22 = Song.artistName.getter();
    v53 = v23;
    v54 = v22;
    Song.artwork.getter();
    (*(v17 + 8))(v18, v19);
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v55, v8);
    v24 = v0[80];
    v25 = v0[79];
    v26 = v0[26];
    v27 = v0[21];
    v28 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v26);

    *v26 = v52;
    v26[1] = v51;

    v26[2] = v54;
    v26[3] = v53;
    sub_100646F40(v24, v25);
    if ((*(v28 + 48))(v25, 1, v27) == 1)
    {
      v29 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920);

      sub_1000095E8(v29, &unk_101188920);
      v31 = v0[25];
      v30 = v0[26];
      v32 = v0[24];
      v33 = v0[11];
      sub_100646FB0(v30, v33);
      (*(v31 + 56))(v33, 0, 1, v32);
      sub_100647014(v30);
      goto LABEL_5;
    }

    v36 = v0[26];
    v37 = v0[24];
    v38 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v42 = (v36 + *(v37 + 32));
    v43 = *v42;
    if ((*v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v43 > -9.22337204e18)
    {
      if (v43 < 9.22337204e18)
      {
        v44 = v42[1];
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 > -9.22337204e18)
          {
            if (v44 < 9.22337204e18)
            {
              v45 = v43;
              v47 = v0[16];
              v46 = v0[17];
              v48 = v0[15];
              v49 = v44;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v47 + 104))(v46, enum case for Artwork.ImageFormat.jpeg(_:), v48);
              v50 = swift_task_alloc();
              v0[111] = v50;
              *v50 = v0;
              v50[1] = sub_100643BFC;
              v40 = v0[20];
              v41 = v0[17];
              v38 = v45;
              v39 = v49;

              return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
            }

LABEL_22:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v38, v39, v40, v41);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  v13 = v0[53];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v55, v8);
  sub_1000095E8(v13, &unk_101183960);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_5:

  v34 = v0[1];

  return v34();
}

uint64_t sub_100642D6C()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100644B24;
  }

  else
  {
    v5 = sub_100642EA8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100642EA8()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v2 + 48))(v6, 1, v1);
  v8 = v0[51];
  v9 = v0[52];
  v10 = v0[49];
  v57 = v0[50];
  v12 = v0[47];
  v11 = v0[48];
  if (v7 != 1)
  {
    v18 = v0[45];
    v17 = v0[46];
    v19 = v0[44];
    (*(v18 + 32))(v17, v0[40], v19);
    v20 = Playlist.name.getter();
    v55 = v21;
    v56 = v20;
    v54 = Playlist.curatorName.getter();
    v22 = v9;
    v24 = v23;
    Playlist.artwork.getter();
    (*(v18 + 8))(v17, v19);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v22, v57);
    v25 = v0[80];
    v26 = v0[79];
    v27 = v0[26];
    v28 = v0[21];
    v29 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v27);

    if (v24)
    {
      v30 = v54;
    }

    else
    {
      v30 = 0;
    }

    *v27 = v56;
    v27[1] = v55;
    if (v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v27[2] = v30;
    v27[3] = v31;
    sub_100646F40(v25, v26);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      v32 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920);

      sub_1000095E8(v32, &unk_101188920);
      v34 = v0[25];
      v33 = v0[26];
      v35 = v0[24];
      v36 = v0[11];
      sub_100646FB0(v33, v36);
      (*(v34 + 56))(v36, 0, 1, v35);
      sub_100647014(v33);
      goto LABEL_11;
    }

    v39 = v0[26];
    v40 = v0[24];
    v41 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v45 = (v39 + *(v40 + 32));
    v46 = *v45;
    if ((*v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = v45[1];
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v47 > -9.22337204e18)
          {
            if (v47 < 9.22337204e18)
            {
              v48 = v46;
              v50 = v0[16];
              v49 = v0[17];
              v51 = v0[15];
              v52 = v47;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v50 + 104))(v49, enum case for Artwork.ImageFormat.jpeg(_:), v51);
              v53 = swift_task_alloc();
              v0[111] = v53;
              *v53 = v0;
              v53[1] = sub_100643BFC;
              v43 = v0[20];
              v44 = v0[17];
              v41 = v48;
              v42 = v52;

              return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
            }

LABEL_28:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
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

    __break(1u);
    goto LABEL_25;
  }

  v13 = v0[40];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v9, v57);
  sub_1000095E8(v13, &unk_1011814D0);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_11:

  v37 = v0[1];

  return v37();
}

uint64_t sub_1006434B4()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100644E94;
  }

  else
  {
    v5 = sub_1006435F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006435F0()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD9C(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v2 + 48))(v6, 1, v1);
  v8 = v0[38];
  v9 = v0[39];
  v10 = v0[36];
  v57 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  if (v7 != 1)
  {
    v18 = v0[32];
    v17 = v0[33];
    v19 = v0[31];
    (*(v18 + 32))(v17, v0[27], v19);
    v20 = Station.name.getter();
    v55 = v21;
    v56 = v20;
    v54 = Station.stationProviderName.getter();
    v22 = v9;
    v24 = v23;
    Station.artwork.getter();
    (*(v18 + 8))(v17, v19);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v22, v57);
    v25 = v0[80];
    v26 = v0[79];
    v27 = v0[26];
    v28 = v0[21];
    v29 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v27);

    if (v24)
    {
      v30 = v54;
    }

    else
    {
      v30 = 0;
    }

    *v27 = v56;
    v27[1] = v55;
    if (v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v27[2] = v30;
    v27[3] = v31;
    sub_100646F40(v25, v26);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      v32 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920);

      sub_1000095E8(v32, &unk_101188920);
      v34 = v0[25];
      v33 = v0[26];
      v35 = v0[24];
      v36 = v0[11];
      sub_100646FB0(v33, v36);
      (*(v34 + 56))(v36, 0, 1, v35);
      sub_100647014(v33);
      goto LABEL_11;
    }

    v39 = v0[26];
    v40 = v0[24];
    v41 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v45 = (v39 + *(v40 + 32));
    v46 = *v45;
    if ((*v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = v45[1];
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v47 > -9.22337204e18)
          {
            if (v47 < 9.22337204e18)
            {
              v48 = v46;
              v50 = v0[16];
              v49 = v0[17];
              v51 = v0[15];
              v52 = v47;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v50 + 104))(v49, enum case for Artwork.ImageFormat.jpeg(_:), v51);
              v53 = swift_task_alloc();
              v0[111] = v53;
              *v53 = v0;
              v53[1] = sub_100643BFC;
              v43 = v0[20];
              v44 = v0[17];
              v41 = v48;
              v42 = v52;

              return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
            }

LABEL_28:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
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

    __break(1u);
    goto LABEL_25;
  }

  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v9, v57);
  sub_1000095E8(v13, &unk_1011838C0);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_11:

  v37 = v0[1];

  return v37();
}

uint64_t sub_100643BFC(uint64_t a1)
{
  v4 = *v2;
  v3 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 128);

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  v9 = v3[20];
  v10 = v3[18];
  v11 = v3[17];
  v12 = v3[15];
  if (v1)
  {

    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = v4[91];
    v14 = v4[90];
    v15 = sub_100645204;
  }

  else
  {
    v4[112] = a1;
    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = v4[91];
    v14 = v4[90];
    v15 = sub_100643E28;
  }

  return _swift_task_switch(v15, v14, v13);
}

uint64_t sub_100643E28()
{
  v1 = v0[112];
  v2 = v0[80];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  v7 = [v1 CGImage];

  (*(v5 + 8))(v4, v6);
  sub_1000095E8(v2, &unk_101188920);

  *(v3 + 32) = v7;
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[11];
  sub_100646FB0(v8, v11);
  (*(v9 + 56))(v11, 0, 1, v10);
  sub_100647014(v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1006440E8()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_100644208, v3, v2);
}

uint64_t sub_100644208()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[11];

  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100644440()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[86];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for album=%{public}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70);
  }

  v13 = v0[101];
  v14 = v0[86];
  v15 = v0[81];
  v16 = v0[78];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v17 + 8))(v16, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}